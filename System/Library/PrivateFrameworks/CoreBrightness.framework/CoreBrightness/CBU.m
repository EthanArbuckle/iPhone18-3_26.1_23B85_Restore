@interface CBU
@end

@implementation CBU

void __CBU_PlatformNativelySupportsALS_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/arm-io/aop/iop-aop-nub/als");
  if (v3)
  {
    CBU_PlatformNativelySupportsALS_supported = 1;
    IOObjectRelease(v3);
  }

  if (_COREBRIGHTNESS_LOG_DEFAULT || init_default_corebrightness_log())
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v1 = inited;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v0 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v0 = init_default_corebrightness_log();
    }

    v1 = v0;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v4, CBU_PlatformNativelySupportsALS_supported & 1);
    _os_log_impl(&dword_1DE8E5000, v1, OS_LOG_TYPE_DEFAULT, "Platform natively supports ALS: %d", v4, 8u);
  }

  *MEMORY[0x1E69E9840];
}

void __CBU_PlatformNativelySupportsColorALS_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v13 = a1;
  v12 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/arm-io/aop/iop-aop-nub");
  if (v12)
  {
    v11 = 0;
    v10 = MEMORY[0x1E12C3D20](v12, "IODeviceTree", 0, &v11);
    v9 = 0;
    v8 = 0;
    if (!v10 && v11)
    {
      v7 = 0;
      while (1)
      {
        v7 = IOIteratorNext(v11);
        if (!v7)
        {
          break;
        }

        v6 = 0;
        if (load_BOOL_from_edt(v7, @"als-supports-color", &v6))
        {
          v9 = 1;
          v5 = 1;
          if (!v8)
          {
            v5 = v6;
          }

          v8 = v5;
        }
      }

      if (v9)
      {
        v4 = v8;
      }

      else
      {
        v4 = CBU_PlatformNativelySupportsColorALS_supported & 1;
      }

      CBU_PlatformNativelySupportsColorALS_supported = v4 != 0;
    }

    IOObjectRelease(v11);
    IOObjectRelease(v12);
  }

  if (_COREBRIGHTNESS_LOG_DEFAULT || init_default_corebrightness_log())
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v2 = inited;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v1 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v1 = init_default_corebrightness_log();
    }

    v2 = v1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v15, CBU_PlatformNativelySupportsColorALS_supported & 1);
    _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEFAULT, "Platform natively supports color ALS: %d", v15, 8u);
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __CBU_ForceUpdateFrequencyAndFrameSkip_block_invoke()
{
  v1 = *MEMORY[0x1E69E9840];
  result = MGIsDeviceOneOfType();
  CBU_ForceUpdateFrequencyAndFrameSkip_force = result;
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CBU_ForceFrameAfterBrightnessUpdate_block_invoke()
{
  v1 = *MEMORY[0x1E69E9840];
  CBU_ForceFrameAfterBrightnessUpdate_force = (CBU_ForceFrameAfterBrightnessUpdate_force & 1 | MGIsDeviceOneOfType()) != 0;
  CBU_ForceFrameAfterBrightnessUpdate_force = (CBU_ForceFrameAfterBrightnessUpdate_force & 1 | MGIsDeviceOneOfType()) != 0;
  CBU_ForceFrameAfterBrightnessUpdate_force = (CBU_ForceFrameAfterBrightnessUpdate_force & 1 | MGIsDeviceOneOfType()) != 0;
  CBU_ForceFrameAfterBrightnessUpdate_force = (CBU_ForceFrameAfterBrightnessUpdate_force & 1 | MGIsDeviceOneOfType()) != 0;
  CBU_ForceFrameAfterBrightnessUpdate_force = (CBU_ForceFrameAfterBrightnessUpdate_force & 1 | MGIsDeviceOneOfType()) != 0;
  CBU_ForceFrameAfterBrightnessUpdate_force = (CBU_ForceFrameAfterBrightnessUpdate_force & 1 | MGIsDeviceOneOfType()) != 0;
  CBU_ForceFrameAfterBrightnessUpdate_force = (CBU_ForceFrameAfterBrightnessUpdate_force & 1 | MGIsDeviceOneOfType()) != 0;
  result = MGIsDeviceOneOfType();
  CBU_ForceFrameAfterBrightnessUpdate_force = (CBU_ForceFrameAfterBrightnessUpdate_force & 1 | result) != 0;
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CBU_PassContrastEnhancerStrengthThroughSyncDBV_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  if (CBU_PassContrastEnhancerStrengthThroughSyncDBV_pass)
  {
    result = MGIsDeviceOneOfType();
    v4 = result ^ 1;
  }

  CBU_PassContrastEnhancerStrengthThroughSyncDBV_pass = v4 & 1;
  v3 = 0;
  if (v4)
  {
    result = MGIsDeviceOneOfType();
    v3 = result ^ 1;
  }

  CBU_PassContrastEnhancerStrengthThroughSyncDBV_pass = v3 & 1;
  v2 = 0;
  if (v3)
  {
    result = MGIsDeviceOneOfType();
    v2 = result ^ 1;
  }

  CBU_PassContrastEnhancerStrengthThroughSyncDBV_pass = v2 & 1;
  v1 = 0;
  if (v2)
  {
    result = MGIsDeviceOneOfType();
    v1 = result ^ 1;
  }

  CBU_PassContrastEnhancerStrengthThroughSyncDBV_pass = v1 & 1;
  *MEMORY[0x1E69E9840];
  return result;
}

void __CBU_IsSecureIndicatorSupported_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  BacklightNode = CBU_GetBacklightNode();
  if (BacklightNode)
  {
    load_BOOL_from_edt(BacklightNode, @"sil-enabled", &CBU_IsSecureIndicatorSupported_supported);
    IOObjectRelease(BacklightNode);
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v2, CBU_IsSecureIndicatorSupported_supported & 1);
      _os_log_impl(&dword_1DE8E5000, inited, OS_LOG_TYPE_DEFAULT, "[CBU_IsIndicatorSupported] supported=%d", v2, 8u);
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __CBU_RampLumaBoostFactorInAOD_block_invoke()
{
  v1 = *MEMORY[0x1E69E9840];
  result = MGIsDeviceOneOfType();
  CBU_RampLumaBoostFactorInAOD_result = result;
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CBU_IsPad_block_invoke()
{
  result = MGGetSInt32Answer();
  if (result == 3)
  {
    CBU_IsPad_result = 1;
  }

  return result;
}

void __CBU_IsR2RSupported_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  if (get_int_from_bootarg("als_R2R_supported", &CBU_IsR2RSupported_bootArgsR2ROverride))
  {
    CBU_IsR2RSupported_result = CBU_IsR2RSupported_bootArgsR2ROverride != 0;
    if (_COREBRIGHTNESS_LOG_DEFAULT || init_default_corebrightness_log())
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v2 = inited;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v1 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v1 = init_default_corebrightness_log();
      }

      v2 = v1;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      if (CBU_IsR2RSupported_result)
      {
        v0 = "enabled";
      }

      else
      {
        v0 = "disabled";
      }

      __os_log_helper_16_2_3_8_32_8_32_4_0(v4, v0, "als_R2R_supported", CBU_IsR2RSupported_bootArgsR2ROverride);
      _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEFAULT, "R2R support is %s by %s = %d", v4, 0x1Cu);
    }
  }

  *MEMORY[0x1E69E9840];
}

void __CBU_IsTestModeEnabled_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  if (get_int_from_bootarg("cb_enable_test_mode", &CBU_IsTestModeEnabled_testModeEnabled))
  {
    CBU_IsTestModeEnabled_result = CBU_IsTestModeEnabled_testModeEnabled != 0;
    if (_COREBRIGHTNESS_LOG_DEFAULT || init_default_corebrightness_log())
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v2 = inited;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v1 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v1 = init_default_corebrightness_log();
      }

      v2 = v1;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      if (CBU_IsTestModeEnabled_result)
      {
        v0 = "enabled";
      }

      else
      {
        v0 = "disabled";
      }

      __os_log_helper_16_2_3_8_32_8_32_4_0(v4, v0, "cb_enable_test_mode", CBU_IsTestModeEnabled_testModeEnabled);
      _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEFAULT, "CoreBrightness Test Mode is %s by %s = %d", v4, 0x1Cu);
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __CBU_ShouldNotHandleExistingInternalDisplayAttachment_block_invoke()
{
  v1 = *MEMORY[0x1E69E9840];
  result = MGIsDeviceOneOfType();
  CBU_ShouldNotHandleExistingInternalDisplayAttachment_result = result;
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CBU_ImplicitUserInteractedWithUI_block_invoke()
{
  result = MGIsDeviceOneOfType();
  CBU_ImplicitUserInteractedWithUI_result = result;
  return result;
}

@end