#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from r11q device
$(call inherit-product, device/samsung/r11q/device.mk)

PRODUCT_DEVICE := r11q
PRODUCT_NAME := omni_r11q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S7110
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r11qzhx-user 12 SP1A.210812.016 S7110ZHS5CXF8 release-keys"

BUILD_FINGERPRINT := samsung/r11qzhx/r11q:12/SP1A.210812.016/S7110ZHS5CXF8:user/release-keys
