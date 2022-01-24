#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加软件源 kenzok8/small-package
echo 'src-git kenzok8 https://github.com/kenzok8/small-package' >>feeds.conf.default

# 拉取插件 luci-app-arpbind
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-arpbind package/lean/luci-app-arpbind

# 拉取 packages
svn co https://github.com/SGPublic/k2p-lede/trunk/package package/sgpublic
# cp -r /mnt/e/Documents/Github/k2p-lede/package package/sgpublic
