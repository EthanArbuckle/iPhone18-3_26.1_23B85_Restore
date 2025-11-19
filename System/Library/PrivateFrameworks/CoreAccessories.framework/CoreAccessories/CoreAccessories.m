uint64_t acc_transportClient_copyPropertiesForEndpointWithUUID(uint64_t a1)
{
  v2 = +[ACCTransportClientBridge sharedBridge];
  v3 = [v2 transportClient];
  v4 = [v3 propertiesForEndpointWithUUID:a1];

  return v4;
}

void sub_221CB1748(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v4 - 80));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void init_logging()
{
  init_logging_modules(&_gLogObjects, 9, _kLoggingModuleEntries);

  init_logging_signposts();
}

void init_logging_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __init_logging_modules_block_invoke;
  block[3] = &__block_descriptor_tmp;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_modules_onceToken, block);
  }
}

void __init_logging_modules_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = &off_221CDD000;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + v3);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v14) = v4;
          _os_log_error_impl(&dword_221CB0000, v6, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
          v7 = *(a1 + 32);
          v8 = "<Undefined>";
        }
      }

      v9 = *(v7 + v3 + 8);
      if (!v9)
      {
        v9 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __init_logging_modules_block_invoke_cold_1(v17, v4, &v18);
          v9 = "<Undefined>";
        }
      }

      v10 = os_log_create(v8, v9);
      *(*(a1 + 40) + 8 * v4) = v10;
      if (v10)
      {
        ++v5;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v14 = v8;
          v15 = 2080;
          v16 = v9;
          _os_log_debug_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = v8;
        v15 = 2080;
        v16 = v9;
        _os_log_error_impl(&dword_221CB0000, v6, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v11 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v11);
    v2 = &off_221CDD000;
  }

  else
  {
    LODWORD(v11) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 255);
    LODWORD(v14) = v5;
    _os_log_impl(&dword_221CB0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v11) = *(a1 + 48);
  }

  gLogObjects = *(a1 + 40);
  gNumLogObjects = v11;
  v12 = *MEMORY[0x277D85DE8];
}

void init_logging_signpost_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __init_logging_signpost_modules_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_signpost_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_signpost_modules_onceToken, block);
  }
}

void __init_logging_signpost_modules_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = &off_221CDD000;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + v3);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v14) = v4;
          _os_log_error_impl(&dword_221CB0000, v6, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
          v7 = *(a1 + 32);
          v8 = "<Undefined>";
        }
      }

      v9 = *(v7 + v3 + 8);
      if (!v9)
      {
        v9 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __init_logging_signpost_modules_block_invoke_cold_1(v17, v4, &v18);
          v9 = "<Undefined>";
        }
      }

      v10 = os_log_create(v8, v9);
      *(*(a1 + 40) + 8 * v4) = v10;
      if (v10)
      {
        ++v5;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v14 = v8;
          v15 = 2080;
          v16 = v9;
          _os_log_debug_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = v8;
        v15 = 2080;
        v16 = v9;
        _os_log_error_impl(&dword_221CB0000, v6, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v11 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v11);
    v2 = &off_221CDD000;
  }

  else
  {
    LODWORD(v11) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 255);
    LODWORD(v14) = v5;
    _os_log_impl(&dword_221CB0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v11) = *(a1 + 48);
  }

  gLogSignpostObjects = *(a1 + 40);
  gNumLogSignpostObjects = v11;
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t accessoryServer_registerAvailabilityChangedHandlerForServiceEntry(uint64_t a1, const void *a2, unsigned int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = gLogObjects;
  v7 = gNumLogObjects;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v16 = 134218240;
      v17 = v6;
      v18 = 1024;
      v19 = v7;
      _os_log_error_impl(&dword_221CB0000, v9, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v16, 0x12u);
    }
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_3();
    _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "Register AvailabilityChangedHandler (%d, %s)", &v16, 0x12u);
  }

  result = 0;
  if (a2 && a1 && a3 <= 1)
  {
    pthread_rwlock_wrlock(&stru_280AEE6C8);
    v11 = &_MergedGlobals_2 + 8 * a3;
    *(v11 + 1) = a1;
    if (*(v11 + 3))
    {
      v12 = gLogObjects;
      v13 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v14 = *gLogObjects;
      }

      else
      {
        v14 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v16 = 134218240;
          v17 = v12;
          v18 = 1024;
          v19 = v13;
          _os_log_error_impl(&dword_221CB0000, v14, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v16, 0x12u);
        }
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *(&_MergedGlobals_2 + a3 + 1);
        OUTLINED_FUNCTION_0_3();
        _os_log_fault_impl(&dword_221CB0000, v14, OS_LOG_TYPE_FAULT, "AccessoryServerAvailabilityChangedHandler already set! (%d, %s)", &v16, 0x12u);
      }

      _Block_release(*(&_MergedGlobals_2 + a3 + 3));
    }

    *(&_MergedGlobals_2 + a3 + 3) = _Block_copy(a2);
    pthread_rwlock_unlock(&stru_280AEE6C8);
    result = _SetupAvailabilityChangedHandlerForServiceEntry(a3);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

CFComparisonResult OUTLINED_FUNCTION_0_0(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

uint64_t _SetupAvailabilityChangedHandlerForServiceEntry(unsigned int a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = gNumLogObjects;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v6 = MEMORY[0x277D86220];
    if (OUTLINED_FUNCTION_3_2())
    {
      OUTLINED_FUNCTION_1_1();
      v29 = v2;
      OUTLINED_FUNCTION_2_2(&dword_221CB0000, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "_SetupAvailabilityChangedHandlerForServiceEntry";
    v28 = 1024;
    v29 = a1;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "%s (%d)", buf, 0x12u);
  }

  if (a1 > 1)
  {
    v16 = 0;
    goto LABEL_40;
  }

  pthread_rwlock_wrlock(&stru_280AEE6C8);
  v7 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v8 = *gLogObjects;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    if (OUTLINED_FUNCTION_3_2())
    {
      OUTLINED_FUNCTION_1_1();
      v29 = v7;
      OUTLINED_FUNCTION_2_2(&dword_221CB0000, v21, v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(&_MergedGlobals_2 + a1 + 1);
    v10 = a1;
    *buf = 136315650;
    *&buf[4] = "_SetupAvailabilityChangedHandlerForServiceEntry";
    if (!v9)
    {
      v9 = "null";
    }

    v28 = 1024;
    v29 = a1;
    v30 = 2080;
    v31 = v9;
    _os_log_impl(&dword_221CB0000, v8, OS_LOG_TYPE_INFO, "%s (%d, %s)", buf, 0x1Cu);
  }

  else
  {
    v10 = a1;
  }

  v11 = &_MergedGlobals_2 + 8 * v10;
  v12 = *(v11 + 1);
  if (v12 && *(v11 + 3))
  {
    v13 = (&_MergedGlobals + 4 * v10);
    if (*v13 == -1 || (notify_cancel(*v13), *(&_MergedGlobals + v10) = -1, pthread_rwlock_unlock(&stru_280AEE6C8), usleep(0x186A0u), pthread_rwlock_wrlock(&stru_280AEE6C8), (v12 = *(v11 + 1)) != 0) && *v13 == -1)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = ___SetupAvailabilityChangedHandlerForServiceEntry_block_invoke;
      handler[3] = &__block_descriptor_tmp_1;
      v26 = a1;
      if (notify_register_dispatch(v12, &_MergedGlobals + v10, MEMORY[0x277D85CD0], handler))
      {
        _Block_release(*(v11 + 3));
        v16 = 0;
        *(v11 + 3) = 0;
        *(v11 + 1) = 0;
      }

      else
      {
        *buf = 0xAAAAAAAAAAAAAAAALL;
        notify_get_state(*(&_MergedGlobals + v10), buf);
        *(&_MergedGlobals_2 + v10) = *buf != 0;
        v16 = 1;
      }

      goto LABEL_39;
    }

    v14 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v15 = *gLogObjects;
    }

    else
    {
      v15 = MEMORY[0x277D86220];
      if (OUTLINED_FUNCTION_3_2())
      {
        OUTLINED_FUNCTION_1_1();
        v29 = v14;
        OUTLINED_FUNCTION_2_2(&dword_221CB0000, v23, v24, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = *(v11 + 1);
      if (!v17)
      {
        v17 = "null";
      }

      v18 = *(&_MergedGlobals + v10) != -1;
      *buf = 136315906;
      *&buf[4] = "_SetupAvailabilityChangedHandlerForServiceEntry";
      v28 = 1024;
      v29 = a1;
      v30 = 2080;
      v31 = v17;
      v32 = 1024;
      v33 = v18;
      _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_INFO, "%s did not register for notification (%d, %s), token (%d)", buf, 0x22u);
    }
  }

  v16 = 0;
LABEL_39:
  pthread_rwlock_unlock(&stru_280AEE6C8);
LABEL_40:
  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

id acc_strings_bundle()
{
  v0 = acc_strings_bundle_bundle;
  if (!acc_strings_bundle_bundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreAccessories"];
    v2 = acc_strings_bundle_bundle;
    acc_strings_bundle_bundle = v1;

    v0 = acc_strings_bundle_bundle;
  }

  return v0;
}

id acc_strings_placeholder_Unknown()
{
  v0 = acc_strings_bundle();
  v1 = [v0 localizedStringForKey:@"Unknown" value:&stru_28352B6E0 table:0];

  return v1;
}

CFBundleRef acc_strings_bundleCF()
{
  result = acc_strings_bundleCF_bundle;
  if (!acc_strings_bundleCF_bundle)
  {
    result = CFBundleGetBundleWithIdentifier(@"com.apple.CoreAccessories");
    acc_strings_bundleCF_bundle = result;
  }

  return result;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t acc_policies_shouldHideAccessoryWithModelNumber(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 BOOLForKey:@"ShowHiddenAccessories"];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    if (acc_policies_shouldHideAccessoryWithModelNumber_onceToken != -1)
    {
      acc_policies_shouldHideAccessoryWithModelNumber_cold_1();
    }

    v4 = [acc_policies_shouldHideAccessoryWithModelNumber_hiddenModelNumbers containsObject:a1];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = "NO";
    if (v4)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (v3)
    {
      v5 = "YES";
    }

    v9 = 136315394;
    v10 = v6;
    v11 = 2080;
    v12 = v5;
    _os_log_impl(&dword_221CB0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "shouldHideAccessory: %s, showHiddenAccessories: %s", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

void __acc_policies_shouldHideAccessoryWithModelNumber_block_invoke()
{
  v0 = acc_policies_shouldHideAccessoryWithModelNumber_hiddenModelNumbers;
  acc_policies_shouldHideAccessoryWithModelNumber_hiddenModelNumbers = &unk_283531348;
}

uint64_t acc_policies_shouldOverrideNameOnAccessoryWithModelNumber(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_onceToken != -1)
  {
    acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_cold_1();
  }

  v2 = [acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_hiddenModelNumbers containsObject:a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = "NO";
    if (v2)
    {
      v3 = "YES";
    }

    v6 = 136315138;
    v7 = v3;
    _os_log_impl(&dword_221CB0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "shouldOverrideName: %s", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

void __acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_block_invoke()
{
  v0 = acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_hiddenModelNumbers;
  acc_policies_shouldOverrideNameOnAccessoryWithModelNumber_hiddenModelNumbers = &unk_283531360;
}

uint64_t acc_policies_shouldResetLightningBusWhenTransportIsNoLongerRestricted(unsigned int a1, int a2)
{
  if ((a2 - 3) < 0xFFFFFFFE)
  {
    return (a1 < 9) & (0x1C3u >> a1);
  }

  else
  {
    return 0;
  }
}

BOOL acc_policies_endpointRequiresChargingCurrentLimit(uint64_t a1, int a2, int a3, unsigned int a4, unsigned int a5, _WORD *a6)
{
  v90[6] = *MEMORY[0x277D85DE8];
  v88[0] = @"nameMatch";
  v88[1] = @"modelContain";
  v89[0] = @"IntelliLink";
  v89[1] = @"1.0";
  v88[2] = @"overrideCurrentLimit";
  v89[2] = &unk_283531378;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:3];
  v90[0] = v6;
  v86[0] = @"nameMatch";
  v86[1] = @"modelContain";
  v87[0] = @"MyLink";
  v87[1] = @"1.0";
  v86[2] = @"overrideCurrentLimit";
  v87[2] = &unk_283531378;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:3];
  v90[1] = v7;
  v84[0] = @"nameMatch";
  v84[1] = @"manufacturerMatch";
  v85[0] = @"iPL24Z";
  v85[1] = @"SDI Technologies";
  v84[2] = @"overrideCurrentLimit";
  v85[2] = &unk_283531378;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
  v90[2] = v8;
  v82[0] = @"modelMatch";
  v82[1] = @"manufacturerMatch";
  v83[0] = @"MIB2";
  v83[1] = @"HARMAN";
  v82[2] = @"overrideCurrentLimit";
  v83[2] = &unk_283531390;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:3];
  v90[3] = v9;
  v80[0] = @"modelMatch";
  v80[1] = @"manufacturerMatch";
  v81[0] = @"Range Rover Velar";
  v81[1] = @"Land Rover";
  v80[2] = @"overrideCurrentLimit";
  v81[2] = &unk_283531378;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:3];
  v90[4] = v10;
  v78[0] = @"modelMatch";
  v78[1] = @"manufacturerMatch";
  v79[0] = @"Jaguar I-PACE";
  v79[1] = @"Jaguar";
  v78[2] = @"overrideCurrentLimit";
  v79[2] = &unk_283531378;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:3];
  v90[5] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:6];

  v13 = acc_userDefaultsIapd_copyIntegerForKey(@"ChargingPowerOverride");
  v14 = acc_userDefaultsIapd_copyIntegerForKey(@"ChargingPowerBehavior");
  v15 = acc_userDefaultsIapd_copyIntegerForKey(@"ChargingPowerBehavior");
  if (v15 <= 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = v15;
  }

  if ((v14 - 3) < 6)
  {
    v17 = 10 * v14 - 5;
    v18 = a4;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v17 = 45;
  v18 = a4;
  if (v14 != 1)
  {
    goto LABEL_7;
  }

  v19 = 0;
LABEL_8:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67110656;
    v65 = a2;
    v66 = 1024;
    v67 = a3;
    v68 = 1024;
    v69 = v19;
    v70 = 1024;
    v71 = v13;
    v72 = 1024;
    v73 = v18;
    v74 = 1024;
    v75 = v14;
    v76 = 1024;
    v77 = v17;
    _os_log_impl(&dword_221CB0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "RequiresChargingCurrentLimit: isApple=%d deviceType=%d checkChargingCurrentLimit=%d chargingCurrentLimit=%d inLimit=%d behavior=%d batteryThreshold=%d", buf, 0x2Cu);
  }

  if (!v19)
  {
    goto LABEL_65;
  }

  v58 = 0;
  v20 = v13;
  v21 = v13 < v18 && v13 != 0;
  if (a1 && !v21)
  {
    v22 = *(a1 + 64);
    if (v22)
    {
      if (*v22)
      {
        v58 = CFRetain(*v22);
      }

      else
      {
        v58 = 0;
      }

      v23 = *(*(a1 + 64) + 16);
      if (v23)
      {
        v57 = CFRetain(v23);
      }

      else
      {
        v57 = 0;
      }

      v24 = *(*(a1 + 64) + 8);
      if (v24)
      {
        v56 = CFRetain(v24);
      }

      else
      {
        v56 = 0;
      }

      if (v58 && v57)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        obj = v12;
        v25 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
        if (v25)
        {
          v26 = v25;
          v45 = v13;
          v46 = v17;
          v47 = v16;
          v48 = v12;
          v27 = *v60;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v60 != v27)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v59 + 1) + 8 * i);
              v30 = [v29 objectForKey:@"nameMatch"];
              v31 = [v29 objectForKey:@"nameContain"];
              v32 = _matchOrContainString(v58, v30, v31);

              v33 = [v29 objectForKey:@"modelMatch"];
              v34 = [v29 objectForKey:@"modelContain"];
              v35 = _matchOrContainString(v57, v33, v34);

              v36 = [v29 objectForKey:@"manufacturerMatch"];
              v37 = [v29 objectForKey:@"manufacturerContain"];
              v38 = _matchOrContainString(v56, v36, v37);

              if (v32 && v35 && v38)
              {
                v39 = [v29 objectForKey:@"overrideCurrentLimit"];
                v20 = [v39 intValue];

                v18 = a4;
                v12 = v48;
                v17 = v46;
                v16 = v47;
                goto LABEL_40;
              }
            }

            v26 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }

          v18 = a4;
          v12 = v48;
          v17 = v46;
          v16 = v47;
          v20 = v45;
        }

LABEL_40:

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *buf = 67110400;
          v65 = a2;
          v66 = 1024;
          v67 = a3;
          v68 = 1024;
          v69 = v20;
          v70 = 1024;
          v71 = v18;
          v72 = 1024;
          v73 = v16;
          v74 = 1024;
          v75 = v17;
          _os_log_debug_impl(&dword_221CB0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "RequiresChargingCurrentLimit: isApple=%d deviceType=%d chargingCurrentLimit=%d inLimit=%d battery=%d threshold=%d", buf, 0x26u);
        }

        if (a3 != 3 && v16 >= v17 && (a2 & 1) == 0 && (v18 > 0x5DC || v20 >= 0x5DD) && v20 - 1501 < 0xFFFFFA24)
        {
          v20 = 1500;
        }

        if (v20)
        {
          v40 = v20 >= v18;
        }

        else
        {
          v40 = 1;
        }

        v21 = !v40;
        goto LABEL_55;
      }

LABEL_66:
      v21 = 0;
      v41 = a6 != 0;
      goto LABEL_58;
    }

LABEL_65:
    v57 = 0;
    v58 = 0;
    v56 = 0;
    goto LABEL_66;
  }

  v56 = 0;
  v57 = 0;
LABEL_55:
  v41 = a6 != 0;
  if (a6 && v21)
  {
    *a6 = v20;
    v41 = 1;
    v21 = 1;
  }

LABEL_58:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    if (v41)
    {
      v42 = *a6;
    }

    else
    {
      v42 = -1;
    }

    *buf = 67110656;
    v65 = a2;
    v66 = 1024;
    v67 = a3;
    v68 = 1024;
    v69 = a5;
    v70 = 1024;
    v71 = v16;
    v72 = 1024;
    v73 = v18;
    v74 = 1024;
    v75 = v42;
    v76 = 1024;
    v77 = v21;
    _os_log_impl(&dword_221CB0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "RequiresChargingCurrentLimit: isApple=%d, deviceType=%d, batt=%d(%d), %d->%d, return %d", buf, 0x2Cu);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v21;
}

BOOL _matchOrContainString(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v9 = (v6 | v7) == 0;
  if (v5)
  {
    if (v6)
    {
      v10 = [v5 isEqualToString:v6];
LABEL_6:
      v9 = v10;
      goto LABEL_7;
    }

    if (v7)
    {
      v10 = [v5 containsString:v7];
      goto LABEL_6;
    }
  }

LABEL_7:

  return v9;
}

uint64_t acc_policies_allowACCAuthProtocolOnAllTransport()
{
  v0 = +[ACCUserDefaults sharedDefaults];
  v1 = [v0 BOOLForKey:@"AllowACCAuthProtocolOnAllTransport"];

  return v1;
}

uint64_t acc_policies_allowACCAuthProtocolOnTransport(int a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 BOOLForKey:@"EnableACCAuthProtocolOnNFC"];

  v4 = +[ACCUserDefaults sharedDefaults];
  v5 = [v4 BOOLForKey:@"DisableACCAuthProtocolOnInductive"];

  v6 = +[ACCUserDefaults sharedDefaults];
  v7 = [v6 BOOLForKey:@"AllowACCAuthProtocolOnAllTransport"];

  if (a1 == 13 && (v3 & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = (a1 == 12) & (v5 ^ 1) | v7;
  }

  return v8 & 1;
}

void acc_policies_deviceDidPreArmDeviceIdentity()
{
  v0 = +[ACCUserDefaults sharedDefaults];
  [v0 setBool:1 forKey:@"DidPreArmDeviceIdentity"];
}

uint64_t acc_policies_supportInductivePowerTX(int a1, unsigned int a2)
{
  if (a1 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a1 == 3)
  {
    v2 = a2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

unint64_t systemInfo_getCurrentUnixTime()
{
  v0 = [MEMORY[0x277CBEAA8] date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = vcvtad_u64_f64(v2);
  if (v2 <= 0.0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

unint64_t systemInfo_getCurrentUnixTimeMS()
{
  v0 = [MEMORY[0x277CBEAA8] date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = vcvtad_u64_f64(v2 * 1000.0);
  if (v2 <= 0.0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t systemInfo_isInternalBuild()
{
  if (systemInfo_isInternalBuild_onceToken != -1)
  {
    systemInfo_isInternalBuild_cold_1();
  }

  return systemInfo_isInternalBuild_internalBuild;
}

uint64_t __systemInfo_isInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  systemInfo_isInternalBuild_internalBuild = result;
  return result;
}

uint64_t systemInfo_isDeveloperBuild()
{
  if (systemInfo_isDeveloperBuild_onceToken != -1)
  {
    systemInfo_isDeveloperBuild_cold_1();
  }

  return systemInfo_isDeveloperBuild_developerBuild;
}

void __systemInfo_isDeveloperBuild_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    systemInfo_isDeveloperBuild_developerBuild = CFEqual(v0, @"Beta") != 0;

    CFRelease(v1);
  }

  else
  {
    systemInfo_isDeveloperBuild_developerBuild = 0;
  }
}

uint64_t systemInfo_systemSupportsPearl()
{
  if (systemInfo_systemSupportsPearl_onceToken != -1)
  {
    systemInfo_systemSupportsPearl_cold_1();
  }

  return systemInfo_systemSupportsPearl_supportsPearl;
}

uint64_t __systemInfo_systemSupportsPearl_block_invoke()
{
  result = MGGetBoolAnswer();
  systemInfo_systemSupportsPearl_supportsPearl = result;
  return result;
}

uint64_t systemInfo_systemSupportsWAPI()
{
  if (systemInfo_systemSupportsWAPI_onceToken != -1)
  {
    systemInfo_systemSupportsWAPI_cold_1();
  }

  return systemInfo_systemSupportsWAPI_supportsWAPI;
}

uint64_t __systemInfo_systemSupportsWAPI_block_invoke()
{
  result = MGGetBoolAnswer();
  systemInfo_systemSupportsWAPI_supportsWAPI = result;
  return result;
}

uint64_t systemInfo_isHomePod()
{
  v0 = MGCopyAnswer();
  v1 = [v0 isEqualToString:@"AudioAccessory"];

  return v1;
}

uint64_t systemInfo_copyRegionCode()
{
  if (systemInfo_copyRegionCode_onceToken != -1)
  {
    systemInfo_copyRegionCode_cold_1();
  }

  if (systemInfo_copyRegionCode_regionCode)
  {
    v0 = CFGetTypeID(systemInfo_copyRegionCode_regionCode);
    if (v0 == CFStringGetTypeID())
    {
      return systemInfo_copyRegionCode_regionCode;
    }
  }

  result = 0;
  systemInfo_copyRegionCode_regionCode = 0;
  return result;
}

uint64_t __systemInfo_copyRegionCode_block_invoke()
{
  result = MGCopyAnswer();
  systemInfo_copyRegionCode_regionCode = result;
  return result;
}

void sub_221CB6B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221CB7260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CB8BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v21);
  _Unwind_Resume(a1);
}

void sub_221CBAE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CBB05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CBBA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CBBFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CBC518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CBC758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CBCC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CC1208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221CC1A8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 128));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_221CC62A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t acc_userDefaults_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyStringForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 stringForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyArrayForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 arrayForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyDictionaryForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 dictionaryForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyIntegerForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 integerForKey:a1];

  return v3;
}

double acc_userDefaults_copyDoubleForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  [v2 doubleForKey:a1];
  v4 = v3;

  return v4;
}

void acc_userDefaults_setArrayForKey(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setObject:a2 forKey:a1];
}

void acc_userDefaults_setIntegerForKey(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setInteger:a2 forKey:a1];
}

void acc_userDefaults_setDoubleForKey(uint64_t a1, double a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setDouble:a1 forKey:a2];
}

uint64_t acc_userDefaultsIapd_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyStringForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 stringForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyArrayForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 arrayForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyDictionaryForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 dictionaryForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyIntegerForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 integerForKey:a1];

  return v3;
}

double acc_userDefaultsIapd_copyDoubleForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  [v2 doubleForKey:a1];
  v4 = v3;

  return v4;
}

uint64_t acc_userDefaultsLogging_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsLogging];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

unint64_t TLVParseSInt64(int *a1, uint64_t a2, char a3, int *a4)
{
  result = 0;
  v6 = -6743;
  if ((a3 & 1) == 0)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        v6 = 0;
        result = *a1;
      }

      else if (a2 == 8)
      {
        v6 = 0;
        result = *a1;
        if (!a4)
        {
          return result;
        }

        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v6 = 0;
        result = (*(a1 + 1) << 8) | *a1;
        if (!a4)
        {
          return result;
        }

        goto LABEL_23;
      }

LABEL_22:
      if (!a4)
      {
        return result;
      }

      goto LABEL_23;
    }

LABEL_19:
    v6 = 0;
    result = *a1;
    if (!a4)
    {
      return result;
    }

    goto LABEL_23;
  }

  if (a2 > 3)
  {
    if (a2 != 4)
    {
      if (a2 == 8)
      {
        v6 = 0;
        result = bswap64(*a1);
        if (!a4)
        {
          return result;
        }

        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v6 = 0;
    v8 = (*a1 << 24) | (*(a1 + 1) << 16) | (*(a1 + 2) << 8);
    v7 = *(a1 + 3);
  }

  else
  {
    if (a2 == 1)
    {
      goto LABEL_19;
    }

    if (a2 != 2)
    {
      goto LABEL_22;
    }

    v6 = 0;
    LOWORD(v8) = *a1 << 8;
    v7 = *(a1 + 1);
    v8 = v8;
  }

  result = v8 | v7;
  if (!a4)
  {
    return result;
  }

LABEL_23:
  *a4 = v6;
  return result;
}

unint64_t TLVParseUInt64(unint64_t *a1, uint64_t a2, char a3, int *a4)
{
  result = 0;
  v6 = -6743;
  if ((a3 & 1) == 0)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        v6 = 0;
        result = *a1;
      }

      else if (a2 == 8)
      {
        v6 = 0;
        result = *a1;
        if (!a4)
        {
          return result;
        }

        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v6 = 0;
        result = *a1;
        if (!a4)
        {
          return result;
        }

        goto LABEL_24;
      }

LABEL_23:
      if (!a4)
      {
        return result;
      }

      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (a2 <= 3)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v6 = 0;
        result = __rev16(*a1);
        if (!a4)
        {
          return result;
        }

        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_20:
    v6 = 0;
    result = *a1;
    if (!a4)
    {
      return result;
    }

    goto LABEL_24;
  }

  if (a2 != 4)
  {
    if (a2 == 8)
    {
      v6 = 0;
      result = bswap64(*a1);
      if (!a4)
      {
        return result;
      }

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v6 = 0;
  result = bswap32(*a1);
  if (!a4)
  {
    return result;
  }

LABEL_24:
  *a4 = v6;
  return result;
}

void *TLV8BufferInit(void *result, uint64_t a2)
{
  *result = result + 4;
  result[1] = 0;
  result[2] = a2;
  result[3] = 0;
  return result;
}

void TLV8BufferFree(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }
}

unint64_t TLV8MaxPayloadBytesForTotalBytes(unint64_t a1)
{
  if (a1 < 2)
  {
    return 0;
  }

  v2 = a1 - 2 * (a1 / 0x101);
  if (a1 % 0x101 < 2)
  {
    return v2 - a1 % 0x101;
  }

  else
  {
    return v2 - 2;
  }
}

uint64_t TLV16Get(unsigned __int8 *a1, unsigned __int8 *a2, int a3, int a4, void *a5, unint64_t *a6, void *a7)
{
  v18 = a1;
  v17 = -21846;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  while (1)
  {
    result = TLV16GetNext(v18, a2, a3, &v17, &v16, &v15, &v18);
    if (result)
    {
      break;
    }

    if (v17 == a4)
    {
      v14 = v15;
      *a5 = v16;
      *a6 = v14;
      break;
    }
  }

  if (a7)
  {
    *a7 = v18;
  }

  return result;
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_4_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t acc_transportClient_createConnection(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCTransportClientBridge sharedBridge];
  v5 = [v4 transportClient];
  v6 = [v5 createConnectionWithType:a1 andIdentifier:a2];

  return v6;
}

uint64_t acc_transportClient_setPropertiesForConnectionWithUUID(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCTransportClientBridge sharedBridge];
  v5 = [v4 transportClient];
  v6 = [v5 setProperties:a1 forConnectionWithUUID:a2];

  return v6;
}

uint64_t acc_transportClient_setPropertyForConnectionWithUUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = +[ACCTransportClientBridge sharedBridge];
  v7 = [v6 transportClient];
  v12 = a1;
  v13[0] = a2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v7 setProperties:v8 forConnectionWithUUID:a3];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t acc_transportClient_appendToArrayPropertyForConnectionWithUUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[ACCTransportClientBridge sharedBridge];
  v7 = [v6 transportClient];
  v8 = [v7 appendToArrayProperty:a1 values:a2 forConnectionWithUUID:a3];

  return v8;
}

uint64_t acc_transportClient_addToDictionaryPropertyForConnectionWithUUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[ACCTransportClientBridge sharedBridge];
  v7 = [v6 transportClient];
  v8 = [v7 addToDictionaryProperty:a1 values:a2 forConnectionWithUUID:a3];

  return v8;
}

uint64_t acc_transportClient_removePropertyForConnectionWithUUID(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCTransportClientBridge sharedBridge];
  v5 = [v4 transportClient];
  v6 = [v5 removeProperty:a1 forConnectionWithUUID:a2];

  return v6;
}

id acc_transportClient_createEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __acc_transportClient_createEndpoint_block_invoke;
  aBlock[3] = &unk_278486DF8;
  v20 = v11;
  v12 = v11;
  v13 = _Block_copy(aBlock);
  v14 = +[ACCTransportClientBridge sharedBridge];
  v15 = [v14 transportClient];
  v16 = [v15 createEndpointWithTransportType:a2 andProtocol:a3 andIdentifier:a4 andDataOutHandler:v13 forConnectionWithUUID:a1 publishConnection:a6];

  v17 = v16;
  return v17;
}

uint64_t __acc_transportClient_createEndpoint_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t acc_transportClient_setAccessoryInfo(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCTransportClientBridge sharedBridge];
  v5 = [v4 transportClient];
  v6 = [v5 setAccessoryInfo:a2 forEndpointWithUUID:a1];

  return v6;
}

uint64_t acc_transportClient_setPropertiesForEndpointWithUUID(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCTransportClientBridge sharedBridge];
  v5 = [v4 transportClient];
  v6 = [v5 setProperties:a1 forEndpointWithUUID:a2];

  return v6;
}

uint64_t acc_transportClient_setPropertyForEndpointWithUUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = +[ACCTransportClientBridge sharedBridge];
  v7 = [v6 transportClient];
  v12 = a1;
  v13[0] = a2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v7 setProperties:v8 forEndpointWithUUID:a3];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t acc_transportClient_appendToArrayPropertyForEndpointWithUUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[ACCTransportClientBridge sharedBridge];
  v7 = [v6 transportClient];
  v8 = [v7 appendToArrayProperty:a1 values:a2 forEndpointWithUUID:a3];

  return v8;
}

uint64_t acc_transportClient_addToDictionaryPropertyForEndpointWithUUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[ACCTransportClientBridge sharedBridge];
  v7 = [v6 transportClient];
  v8 = [v7 addToDictionaryProperty:a1 values:a2 forEndpointWithUUID:a3];

  return v8;
}

uint64_t acc_transportClient_removePropertyForEndpointWithUUID(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCTransportClientBridge sharedBridge];
  v5 = [v4 transportClient];
  v6 = [v5 removeProperty:a1 forEndpointWithUUID:a2];

  return v6;
}

uint64_t acc_transportClient_publishConnection(uint64_t a1)
{
  v2 = +[ACCTransportClientBridge sharedBridge];
  v3 = [v2 transportClient];
  v4 = [v3 publishConnectionWithUUID:a1];

  return v4;
}

uint64_t acc_transportClient_destroyEndpoint(uint64_t a1)
{
  v2 = +[ACCTransportClientBridge sharedBridge];
  v3 = [v2 transportClient];
  v4 = [v3 destroyEndpointWithUUID:a1];

  return v4;
}

uint64_t acc_transportClient_destroyConnection(uint64_t a1)
{
  v2 = +[ACCTransportClientBridge sharedBridge];
  v3 = [v2 transportClient];
  v4 = [v3 destroyConnectionWithUUID:a1];

  return v4;
}

uint64_t acc_transportClient_copyConnectionUUIDForEndpointUUID(uint64_t a1)
{
  v2 = +[ACCTransportClientBridge sharedBridge];
  v3 = [v2 transportClient];
  v4 = [v3 connectionUUIDForEndpointWithUUID:a1];

  return v4;
}

uint64_t acc_transportClient_copyEndpointUUIDsForConnectionUUID(uint64_t a1)
{
  v2 = +[ACCTransportClientBridge sharedBridge];
  v3 = [v2 transportClient];
  v4 = [v3 endpointUUIDsForConnectionWithUUID:a1];

  return v4;
}

uint64_t acc_transportClient_getAuthStateForConnectionUUID(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCTransportClientBridge sharedBridge];
  v5 = [v4 transportClient];
  v6 = [v5 authStateForConnectionWithUUID:a1 authType:a2];

  return v6;
}

uint64_t acc_transportClient_isConnectionAuthenticated(uint64_t a1)
{
  v2 = +[ACCTransportClientBridge sharedBridge];
  v3 = [v2 transportClient];
  v4 = [v3 isConnectionAuthenticated:a1];

  return v4;
}

uint64_t acc_transportClient_copyAccessoryInfoForConnectionWithUUID(uint64_t a1)
{
  v2 = +[ACCTransportClientBridge sharedBridge];
  v3 = [v2 transportClient];
  v4 = [v3 accessoryInfoForConnectionWithUUID:a1];

  return v4;
}

uint64_t acc_transportClient_copyAccessoryInfoForEndpointWithUUID(uint64_t a1)
{
  v2 = +[ACCTransportClientBridge sharedBridge];
  v3 = [v2 transportClient];
  v4 = [v3 accessoryInfoForEndpointWithUUID:a1];

  return v4;
}

uint64_t acc_transportClient_copyPropertiesForConnectionWithUUID(uint64_t a1)
{
  v2 = +[ACCTransportClientBridge sharedBridge];
  v3 = [v2 transportClient];
  v4 = [v3 propertiesForConnectionWithUUID:a1];

  return v4;
}

uint64_t acc_transportClient_copyIdentifierForConnectionWithUUID(uint64_t a1)
{
  v2 = +[ACCTransportClientBridge sharedBridge];
  v3 = [v2 transportClient];
  v4 = [v3 identifierForConnectionWithUUID:a1];

  return v4;
}

uint64_t acc_transportClient_copyIdentifierForEndpointWithUUID(uint64_t a1)
{
  v2 = +[ACCTransportClientBridge sharedBridge];
  v3 = [v2 transportClient];
  v4 = [v3 identifierForEndpointWithUUID:a1];

  return v4;
}

uint64_t acc_transportClient_processIncomingData(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCTransportClientBridge sharedBridge];
  v5 = [v4 transportClient];
  v6 = [v5 processIncomingData:a1 forEndpointWithUUID:a2];

  return v6;
}

void acc_transportClient_setConnectionAuthStatusDidChangeHandler(void *a1)
{
  v1 = a1;
  v2 = +[ACCTransportClientBridge sharedBridge];
  [v2 setConnectionAuthStatusChangedHandler:v1];
}

void acc_transportClient_setConnectionPropertiesDidChangeHandler(void *a1)
{
  v1 = a1;
  v2 = +[ACCTransportClientBridge sharedBridge];
  [v2 setConnectionPropertiesChangedHandler:v1];
}

void acc_transportClient_setConnectionPropertyDidChangeHandler(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = +[ACCTransportClientBridge sharedBridge];
    v5 = [v4 transportClient];
    v6 = v5;
    if (v3)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __acc_transportClient_setConnectionPropertyDidChangeHandler_block_invoke;
      v7[3] = &unk_278486E20;
      v8 = v3;
      [v6 setHandler:v7 forConnectionProperty:a2];
    }

    else
    {
      [v5 setHandler:0 forConnectionProperty:a2];
    }
  }
}

void acc_transportClient_setEndpointPropertiesDidChangeHandler(void *a1)
{
  v1 = a1;
  v2 = +[ACCTransportClientBridge sharedBridge];
  [v2 setEndpointPropertiesChangedHandler:v1];
}

void acc_transportClient_setEndpointPropertyDidChangeHandler(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = +[ACCTransportClientBridge sharedBridge];
    v5 = [v4 transportClient];
    v6 = v5;
    if (v3)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __acc_transportClient_setEndpointPropertyDidChangeHandler_block_invoke;
      v7[3] = &unk_278486E48;
      v8 = v3;
      [v6 setHandler:v7 forEndpointProperty:a2];
    }

    else
    {
      [v5 setHandler:0 forEndpointProperty:a2];
    }
  }
}

void acc_transportClient_serverDisconnectedHandler(void *a1)
{
  v1 = a1;
  v2 = +[ACCTransportClientBridge sharedBridge];
  [v2 setServerDisconnectedHandler:v1];
}

void acc_transportClient_setEndpointSecureTunnelDataReceiveHandler(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[ACCTransportClientBridge sharedBridge];
    v5 = [v4 transportClient];
    v6 = v5;
    if (v3)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __acc_transportClient_setEndpointSecureTunnelDataReceiveHandler_block_invoke;
      v7[3] = &unk_278486E70;
      v8 = v3;
      [v6 setSecureTunnelDataReceiveHandler:v7 forEndpoint:a1];
    }

    else
    {
      [v5 setSecureTunnelDataReceiveHandler:0 forEndpoint:a1];
    }
  }
}

void acc_transportClient_endpointSecureTunnelDataSend(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = +[ACCTransportClientBridge sharedBridge];
  v6 = [v7 transportClient];
  [v6 processOutgoingSecureTunnelData:a3 forEndpoint:a1 forType:a2];
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

BOOL OUTLINED_FUNCTION_3_2()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

id convertNSDataToNSString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v3 bytes];
    v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if ([v3 length])
    {
      v7 = 0;
      do
      {
        [v6 appendFormat:v4, *(v5 + v7++)];
      }

      while (v7 < [v3 length]);
    }

    v8 = [MEMORY[0x277CCACA8] stringWithString:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id trimBidirectionalUnicodeCharacters(void *a1)
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 characterSetWithCharactersInString:@"\u202A\u202B\u202C\u202D"];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

id removeBidirectionalUnicodeCharacters(void *a1)
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 characterSetWithCharactersInString:@"\u202A\u202B\u202C\u202D"];
  v4 = [v2 componentsSeparatedByCharactersInSet:v3];

  v5 = [v4 componentsJoinedByString:&stru_28352B6E0];

  return v5;
}

id convertNSStringToNSData(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x277CCA900] hexadecimalCharacterSet];
    v3 = [v2 invertedSet];
    v4 = [v1 componentsSeparatedByCharactersInSet:v3];
    v5 = [v4 componentsJoinedByString:&stru_28352B6E0];

    v6 = [v5 UTF8String];
    v7 = strlen(v6) >> 1;
    v8 = malloc_type_malloc(v7, 0x5E84AA4CuLL);
    if (v6 && [v5 length] >= 2)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = 0;
        v23 = -86;
        v22 = -86;
        v12 = &v23;
        v13 = 1;
        do
        {
          v14 = v13;
          v15 = v6[2 * v10 + v11];
          v16 = v15 - 48;
          v17 = v15 - 65;
          if ((v15 - 97) >= 6)
          {
            v18 = 0;
          }

          else
          {
            v18 = v15 - 87;
          }

          v19 = v15 - 55;
          if (v17 > 5)
          {
            v19 = v18;
          }

          if (v16 < 0xA)
          {
            v19 = v16;
          }

          *v12 = v19;
          v12 = &v22;
          v11 = 1;
          v13 = 0;
        }

        while ((v14 & 1) != 0);
        v8[v9] = v22 | (16 * v23);
        v9 = (v10 + 1);
        v20 = [v5 length];
        v10 = v9;
      }

      while (v9 < v20 >> 1);
    }

    v1 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:v7];
    if (v8)
    {
      free(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v1;
}

uint64_t classImplementsMethodsInProtocol(void *a1, void *a2, BOOL a3, BOOL a4, void *a5)
{
  v9 = a2;
  v10 = [MEMORY[0x277CBEB58] set];
  outCount = 0;
  v11 = protocol_copyMethodDescriptionList(v9, a3, a4, &outCount);
  v12 = v11;
  if (outCount)
  {
    v13 = 0;
    p_name = &v11->name;
    do
    {
      if (([a1 instancesRespondToSelector:*p_name] & 1) == 0)
      {
        v15 = NSStringFromSelector(*p_name);
        [v10 addObject:v15];
      }

      ++v13;
      p_name += 2;
    }

    while (v13 < outCount);
  }

  free(v12);
  if (outCount && [v10 count])
  {
    v16 = 0;
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v16 = 1;
  if (a5)
  {
LABEL_11:
    *a5 = [MEMORY[0x277CBEB98] setWithSet:v10];
  }

LABEL_12:

  return v16;
}

uint64_t isNSObjectNull(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = MEMORY[0x277CBEB68];
  v2 = a1;
  v3 = [v1 null];
  v4 = [v2 isEqual:v3];

  return v4;
}

id NSObjectIfNotNull(void *a1)
{
  v1 = a1;
  if (isNSObjectNull(v1))
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

uint64_t isNSObjectEqual(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return 1;
  }
}

id castNSObjectToType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id readJSONFile(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:a1];
    if (v1)
    {
      v5 = 0;
      v2 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v1 options:0 error:&v5];
      v3 = v2;
      if (!v5)
      {
LABEL_6:

        goto LABEL_8;
      }
    }

    v3 = 0;
    goto LABEL_6;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

uint64_t writeJSONFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (!v3)
  {
    v3 = MEMORY[0x277CBEC10];
  }

  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v3])
  {
    v9 = 0;
    v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:1 error:&v9];
    v6 = v5;
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      v7 = [v5 writeToFile:v4 atomically:1];
    }
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

  return v7;
}

id base64EncodeArray(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) base64EncodedStringWithOptions:{0, v11}];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

id base64DecodeArray(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = objc_alloc(MEMORY[0x277CBEA90]);
        v10 = [v9 initWithBase64EncodedString:v8 options:{0, v13}];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_221CCD514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CCDB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CCE5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CCEF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CCF55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CCFA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_221CCFDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD0408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD0E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD17A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD1DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD219C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD259C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_221CD2A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD2D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD2FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD31C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD3394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD37BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD39D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD3BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD3DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD400C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD4220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD4ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221CD4D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ACCConnectionInfoCopyLocalizedAccessoryName(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (isNSObjectNull(v1) & 1) == 0)
  {
    v4 = +[ACCConnectionInfo sharedInstance];
    v3 = [v4 copyLocalizedAccessoryNameFromDaemon:v2];

    if (v3)
    {
      NSLog(&cfstr_LocalizeName.isa, v2, v3);
    }

    else
    {
      NSLog(&cfstr_FailedLocalize.isa, v2, 0);
      v3 = [v2 copy];
    }
  }

  else
  {
    NSLog(&cfstr_InvalidAccesso.isa, v2, 0);
    v3 = 0;
  }

  return v3;
}

id ACCConnectionInfoCopyLocalizedAccessoryNamePrivate(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (isNSObjectNull(v1) & 1) == 0)
  {
    v4 = acc_strings_bundle();
    v5 = [&unk_2835313A8 objectForKeyedSubscript:v2];
    v3 = [v4 localizedStringForKey:v2 value:&stru_28352B6E0 table:v5];

    if (v3)
    {
      NSLog(&cfstr_LocalizeName.isa, v2, v3);
    }

    else
    {
      NSLog(&cfstr_FailedLocalize.isa, v2, 0);
      v3 = [v2 copy];
    }
  }

  else
  {
    NSLog(&cfstr_InvalidAccesso.isa, v2, 0);
    v3 = 0;
  }

  return v3;
}

void signVeridianChallenge(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  init_logging();
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = a1;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "challenging Veridian using data %@", buf, 0xCu);
  }

  v7 = +[ACCHWComponentAuth sharedManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __signVeridianChallenge_block_invoke;
  v10[3] = &unk_2784877F0;
  v11 = v3;
  v8 = v3;
  [v7 signVeridianChallenge:a1 completionHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __signVeridianChallenge_block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 4;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 1024;
    v18 = a4;
    _os_log_impl(&dword_221CB0000, v11, OS_LOG_TYPE_DEFAULT, "received response. signature=%@, deviceNonce=%@, authError=%d", &v13, 0x1Cu);
  }

  (*(*(a1 + 32) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

void verifyBatteryMatch(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  init_logging();
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = a1;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "verifying battery match using cert %@", buf, 0xCu);
  }

  v7 = +[ACCHWComponentAuth sharedManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __verifyBatteryMatch_block_invoke;
  v10[3] = &unk_278487818;
  v11 = v3;
  v8 = v3;
  [v7 verifyBatteryMatch:a1 completionHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __verifyBatteryMatch_block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "received response. authError=%d", v9, 8u);
  }

  result = (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void CoreAccessoriesInitForHID()
{
  init_logging();
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 4;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v2 = MEMORY[0x277D86220];
    v1 = MEMORY[0x277D86220];
  }

  else
  {
    v2 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_221CB0000, v2, OS_LOG_TYPE_DEFAULT, "CoreAccessoriesInitForHID", v4, 2u);
  }

  v3 = +[ACCHWComponentAuth sharedManager];
  [v3 authenticateTouchControllerWithChallenge:0 completionHandler:&__block_literal_global_6 updateRegistry:1];
}

void reauthenticateBattery()
{
  v8 = *MEMORY[0x277D85DE8];
  init_logging();
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 4;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v2 = MEMORY[0x277D86220];
    v1 = MEMORY[0x277D86220];
  }

  else
  {
    v2 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&dword_221CB0000, v2, OS_LOG_TYPE_DEFAULT, "reauthenticateBattery", v7, 2u);
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v3;
  v7[1] = v3;
  arc4random_buf(v7, 0x20uLL);
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:32];
  v5 = +[ACCHWComponentAuth sharedManager];
  [v5 authenticateVeridianWithChallenge:v4 completionHandler:&__block_literal_global_54 updateRegistry:1 updateUIProperty:0 logToAnalytics:1];

  v6 = *MEMORY[0x277D85DE8];
}

BOOL acc_policies_shouldFailAuthOnOOBPairingFailure(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) == 9;
  }

  return result;
}

uint64_t acc_policies_productTypeNeedsPreArmDeviceIdentity(const void *a1)
{
  if (a1)
  {
    v1 = CFGetTypeID(a1);
    TypeID = CFStringGetTypeID();
    if (v1 == TypeID)
    {
      v3 = OUTLINED_FUNCTION_0_0(TypeID, @"iPhone13,1");
      v6 = v3 == kCFCompareEqualTo || (v4 = OUTLINED_FUNCTION_0_0(v3, @"iPhone13,2")) == kCFCompareEqualTo || (v5 = OUTLINED_FUNCTION_0_0(v4, @"iPhone13,3")) == kCFCompareEqualTo || OUTLINED_FUNCTION_0_0(v5, @"iPhone13,4") == kCFCompareEqualTo;
      acc_policies_productTypeNeedsPreArmDeviceIdentity_modelNeedsPreArm = v6;
    }
  }

  return acc_policies_productTypeNeedsPreArmDeviceIdentity_modelNeedsPreArm;
}

uint64_t acc_policies_deviceNeedsPreArmDeviceIdentity()
{
  v25 = *MEMORY[0x277D85DE8];
  if (_MergedGlobals_0)
  {
    v17 = 0;
    v19 = 0;
  }

  else
  {
    v0 = +[ACCUserDefaults sharedDefaults];
    v1 = [v0 stringForKey:@"DeviceIdentityPreArmDateOverride"];

    if (v1)
    {
      v2 = v1;
      v3 = [MEMORY[0x277CBEA80] currentCalendar];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_221CB0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "acc_policies_deviceNeedsPreArmDeviceIdentity: _parseDate", &v23, 2u);
      }

      v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v5 = [v2 stringByTrimmingCharactersInSet:v4];

      v6 = [MEMORY[0x277CCA900] punctuationCharacterSet];
      v7 = [v5 componentsSeparatedByCharactersInSet:v6];

      v8 = [v7 count];
      v9 = v8 > 2;
      if (v8 < 3)
      {
        v14 = 0;
      }

      else
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        v11 = [v7 objectAtIndexedSubscript:2];
        [v10 setDay:{objc_msgSend(v11, "integerValue")}];

        v12 = [v7 objectAtIndexedSubscript:1];
        [v10 setMonth:{objc_msgSend(v12, "integerValue")}];

        v13 = [v7 objectAtIndexedSubscript:0];
        [v10 setYear:{objc_msgSend(v13, "integerValue")}];

        v14 = [v3 dateFromComponents:v10];
        v15 = v14;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138412290;
          v24 = v14;
          _os_log_impl(&dword_221CB0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "acc_policies_deviceNeedsPreArmDeviceIdentity: _parseDate: %@", &v23, 0xCu);
        }
      }
    }

    else
    {
      v14 = 0;
      v9 = 0;
    }

    v16 = v14;
    v17 = v16;
    if (v9 && v16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_221CB0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "acc_policies_deviceNeedsPreArmDeviceIdentity: override", &v23, 2u);
      }

      objc_storeStrong(&qword_280AEE858, v14);
      v18 = +[ACCUserDefaults sharedDefaults];
      [v18 setObject:qword_280AEE858 forKey:@"PreArmDeviceIdentityDate"];
    }

    v19 = qword_280AEE858;
    if (qword_280AEE858)
    {
      goto LABEL_19;
    }

    if (qword_280AEE860 != -1)
    {
      dispatch_once(&qword_280AEE860, &__block_literal_global_156);
    }

    v19 = qword_280AEE858;
    if (qword_280AEE858)
    {
LABEL_19:
      v20 = [MEMORY[0x277CBEAA8] date];
      v19 = [v19 compare:v20] == -1;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

void __acc_policies_deviceNeedsPreArmDeviceIdentity_block_invoke()
{
  v0 = +[ACCUserDefaults sharedDefaults];
  _MergedGlobals_0 = [v0 BOOLForKey:@"DidPreArmDeviceIdentity"];

  if ((_MergedGlobals_0 & 1) == 0)
  {
    v1 = +[ACCUserDefaults sharedDefaults];
    v2 = [v1 objectForKey:@"PreArmDeviceIdentityDate"];
    v3 = qword_280AEE858;
    qword_280AEE858 = v2;

    if (!qword_280AEE858)
    {
      v13 = [MEMORY[0x277CBEA80] currentCalendar];
      v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v4 setDay:1];
      [v4 setMonth:3];
      [v4 setYear:2021];
      v5 = [v13 dateFromComponents:v4];
      v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v6 setDay:1];
      [v6 setMonth:9];
      [v6 setYear:2021];
      v7 = [v13 dateFromComponents:v6];
      v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v7];
      [v8 duration];
      v10 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v5 sinceDate:(arc4random() % v9)];
      v11 = qword_280AEE858;
      qword_280AEE858 = v10;

      v12 = +[ACCUserDefaults sharedDefaults];
      [v12 setObject:qword_280AEE858 forKey:@"PreArmDeviceIdentityDate"];
    }
  }
}

const __CFData *acc_policies_nfcTagUseKeys(const __CFData *result)
{
  if (result)
  {
    v1 = result;
    result = CFDataGetLength(result);
    if (result)
    {
      return (*CFDataGetBytePtr(v1) - 87 < 2);
    }
  }

  return result;
}

const void *systemInfo_copyProductType()
{
  result = MGCopyAnswer();
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *systemInfo_copyProductVersion()
{
  result = MGCopyAnswer();
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TLV8Get(unsigned __int8 *a1, unsigned __int8 *a2, int a3, unsigned __int8 **a4, void *a5, unsigned __int8 **a6)
{
  do
  {
    if (a1 == a2)
    {
      return OUTLINED_FUNCTION_5_0();
    }

    if (a1 >= a2)
    {
      return OUTLINED_FUNCTION_6_0();
    }

    if ((a2 - a1) < 2)
    {
      return OUTLINED_FUNCTION_5_0();
    }

    v6 = a1 + 2;
    v7 = a1[1];
    v8 = &a1[v7 + 2];
    if (v8 > a2)
    {
      return OUTLINED_FUNCTION_4_1();
    }

    v9 = *a1;
    a1 += v7 + 2;
  }

  while (v9 != a3);
  if (a4)
  {
    *a4 = v6;
  }

  if (a5)
  {
    *a5 = v7;
  }

  result = 0;
  if (a6)
  {
    *a6 = v8;
  }

  return result;
}

uint64_t TLV8GetNext(_BYTE *a1, _BYTE *a2, _BYTE *a3, void *a4, void *a5, void *a6)
{
  if (a1 == a2)
  {
    return OUTLINED_FUNCTION_5_0();
  }

  if (a1 >= a2)
  {
    return OUTLINED_FUNCTION_6_0();
  }

  if ((a2 - a1) < 2)
  {
    return OUTLINED_FUNCTION_5_0();
  }

  v6 = a1[1];
  v7 = &a1[v6 + 2];
  if (v7 > a2)
  {
    return OUTLINED_FUNCTION_4_1();
  }

  *a3 = *a1;
  *a4 = a1 + 2;
  *a5 = v6;
  result = 0;
  if (a6)
  {
    *a6 = v7;
  }

  return result;
}

uint64_t TLV8GetBytes(unsigned __int8 *a1, unsigned __int8 *a2, int a3, unint64_t a4, size_t a5, char *__dst, void *a7, unsigned __int8 **a8)
{
  do
  {
    if (a1 == a2)
    {
      return 4294960569;
    }

    if (a1 >= a2)
    {
      return 4294960591;
    }

    if ((a2 - a1) < 2)
    {
      return 4294960569;
    }

    v14 = a1 + 2;
    v15 = a1[1];
    v16 = &a1[v15 + 2];
    if (v16 > a2)
    {
      return 4294960546;
    }

    v17 = *a1;
    a1 += v15 + 2;
  }

  while (v17 != a3);
  if (v15 > a5)
  {
    return 4294960545;
  }

  v18 = &__dst[a5];
  memcpy(__dst, v14, v15);
  v19 = &__dst[v15];
LABEL_8:
  v20 = v16;
  while (a2 > v20 && (a2 - v20) >= 2)
  {
    v22 = v20 + 2;
    v23 = v20[1];
    v16 = &v20[v23 + 2];
    if (v16 > a2 || *v20 != a3)
    {
      break;
    }

    v20 += v23 + 2;
    if (v23)
    {
      if (v18 - v19 < v23)
      {
        return 4294960545;
      }

      memcpy(v19, v22, v23);
      v19 += v23;
      goto LABEL_8;
    }
  }

  if (v19 - __dst < a4)
  {
    return 4294960546;
  }

  if (a7)
  {
    *a7 = v19 - __dst;
  }

  result = 0;
  if (a8)
  {
    *a8 = v20;
  }

  return result;
}

unint64_t TLV8GetSInt64(unsigned __int8 *a1, unsigned __int8 *a2, int a3, int *a4, unsigned __int8 **a5)
{
  do
  {
    if (a1 == a2)
    {
LABEL_16:
      result = 0;
      v9 = -6727;
      goto LABEL_13;
    }

    v5 = a1;
    if (a1 >= a2)
    {
      result = 0;
      v9 = -6705;
      goto LABEL_13;
    }

    if ((a2 - a1) < 2)
    {
      goto LABEL_16;
    }

    v6 = (a1 + 2);
    v7 = a1[1];
    a1 += v7 + 2;
    if (a1 > a2)
    {
      result = 0;
      v9 = -6750;
      goto LABEL_13;
    }
  }

  while (*v5 != a3);
  if (a5)
  {
    *a5 = a1;
  }

  result = 0;
  v9 = -6743;
  switch(v7)
  {
    case 1:
      v9 = 0;
      result = *v6;
      break;
    case 2:
      v9 = 0;
      result = (v5[3] << 8) | v5[2];
      break;
    case 4:
      v9 = 0;
      result = *v6;
      break;
    case 8:
      v9 = 0;
      result = *v6;
      break;
    default:
      break;
  }

LABEL_13:
  if (a4)
  {
    *a4 = v9;
  }

  return result;
}

uint64_t TLV8GetUInt64(unsigned __int8 *a1, unsigned __int8 *a2, int a3, int *a4, unsigned __int8 **a5)
{
  do
  {
    if (a1 == a2)
    {
LABEL_16:
      result = 0;
      v9 = -6727;
      goto LABEL_13;
    }

    v5 = a1;
    if (a1 >= a2)
    {
      result = 0;
      v9 = -6705;
      goto LABEL_13;
    }

    if ((a2 - a1) < 2)
    {
      goto LABEL_16;
    }

    v6 = a1 + 2;
    v7 = a1[1];
    a1 += v7 + 2;
    if (a1 > a2)
    {
      result = 0;
      v9 = -6750;
      goto LABEL_13;
    }
  }

  while (*v5 != a3);
  if (a5)
  {
    *a5 = a1;
  }

  result = 0;
  v9 = -6743;
  switch(v7)
  {
    case 1:
      v9 = 0;
      result = *v6;
      break;
    case 2:
      v9 = 0;
      result = *(v5 + 1);
      break;
    case 4:
      v9 = 0;
      result = *v6;
      break;
    case 8:
      v9 = 0;
      result = *v6;
      break;
    default:
      break;
  }

LABEL_13:
  if (a4)
  {
    *a4 = v9;
  }

  return result;
}

void *TLV8CopyCoalesced(unsigned __int8 *a1, unsigned __int8 *a2, int a3, void *a4, unsigned __int8 **a5, int *a6)
{
  memset(v16, 170, sizeof(v16));
  v10 = TLV8GetOrCopyCoalesced(a1, a2, a3);
  if (v10)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v11 = v16[0];
  if (!v16[0])
  {
    OUTLINED_FUNCTION_0_1();
    v14 = malloc_type_malloc(v12, v13);
    v11 = v14;
    if (!v14)
    {
      v10 = -6728;
      goto LABEL_7;
    }

    memcpy(v14, v16[2], v16[1]);
  }

  *a4 = v16[1];
  v10 = 0;
  if (a5)
  {
    *a5 = a1;
  }

LABEL_7:
  if (a6)
  {
    *a6 = v10;
  }

  return v11;
}

uint64_t TLV8GetOrCopyCoalesced(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  do
  {
    if (a1 == a2)
    {
      return 4294960569;
    }

    if (a1 >= a2)
    {
      return 4294960591;
    }

    if ((a2 - a1) < 2)
    {
      return 4294960569;
    }

    v5 = a1 + 2;
    v6 = a1[1];
    v7 = &a1[v6 + 2];
    if (v7 > a2)
    {
      return 4294960546;
    }

    v8 = *a1;
    a1 += v6 + 2;
  }

  while (v8 != a3);
  v9 = 0;
  OUTLINED_FUNCTION_0_1();
  while (1)
  {
    v15 = v9;
    v16 = v6;
    while (2)
    {
      v17 = v16;
      v18 = v5;
      v19 = v7;
      do
      {
        v20 = a2 > v19 && (a2 - v19) >= 2;
        if (!v20 || (v5 = v19 + 2, v16 = v19[1], v7 = &v19[v16 + 2], v7 > a2) || *v19 != a3)
        {
          *v11 = v18;
          *v12 = v17;
          *v13 = v9;
          result = 0;
          if (v14)
          {
            *v14 = v19;
          }

          return result;
        }

        v19 += v16 + 2;
      }

      while (!v16);
      if (!v17)
      {
        continue;
      }

      break;
    }

    v23 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    v6 = v17 + v16;
    v21 = malloc_type_malloc(v17 + v16, v10);
    if (!v21)
    {
      break;
    }

    v9 = v21;
    memcpy(v21, v18, v17);
    memcpy(&v9[v17], v5, v16);
    v5 = v9;
    OUTLINED_FUNCTION_0_1();
    if (v15)
    {
      free(v15);
      OUTLINED_FUNCTION_0_1();
      v11 = v23;
      v12 = v24;
      v13 = v25;
      v14 = v26;
      v5 = v9;
    }
  }

  if (v9)
  {
    free(v9);
  }

  return 4294960568;
}

uint64_t TLV8BufferAppend(uint64_t a1, char a2, char *__s, size_t a4)
{
  v4 = a4;
  v5 = __s;
  if (a4 == -1)
  {
    v4 = strlen(__s);
  }

  if (v4 > 0xFF)
  {
    v9 = v4 / 0xFF;
    if (v4 % 0xFF)
    {
      ++v9;
    }

    v8 = v4 + 2 * v9;
  }

  else
  {
    v8 = v4 + 2;
  }

  v10 = *(a1 + 8);
  v11 = v10 + v8;
  if (v10 + v8 > *(a1 + 16))
  {
    return 4294960553;
  }

  if (v11 < v10)
  {
    return 4294960545;
  }

  if (v11 > 0x12C)
  {
    OUTLINED_FUNCTION_0_1();
    v15 = malloc_type_malloc(v13, v14);
    if (!v15)
    {
      return 4294960568;
    }

    v16 = v15;
    v17 = *(a1 + 24);
    v18 = *(a1 + 8);
    if (v17)
    {
      memcpy(v15, v17, v18);
      free(*(a1 + 24));
    }

    else if (v18)
    {
      memcpy(v15, (a1 + 32), v18);
    }

    *a1 = v16;
    *(a1 + 24) = v16;
    v12 = &v16[*(a1 + 8)];
  }

  else
  {
    v12 = (a1 + v10 + 32);
  }

  v19 = &v5[v4];
  do
  {
    if ((v19 - v5) >= 0xFF)
    {
      v20 = 255;
    }

    else
    {
      v20 = v19 - v5;
    }

    *v12 = a2;
    v12[1] = v20;
    if (v19 != v5)
    {
      memcpy(v12 + 2, v5, v20);
    }

    v5 += v20;
    v12 += v20 + 2;
  }

  while (v5 != v19);
  result = 0;
  *(a1 + 8) = &v12[-*a1];
  return result;
}

uint64_t TLV8BufferAppendSInt64()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  if (v3 == v3)
  {
    v7[0] = v3;
    v4 = 1;
  }

  else
  {
    *v7 = v3;
    OUTLINED_FUNCTION_2_0();
  }

  result = TLV8BufferAppend(v1, v2, v7, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TLV8BufferAppendUInt64()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  if (v3 > 0xFF)
  {
    if (v3 >> 16)
    {
      *v7 = v3;
      if (HIDWORD(v3))
      {
        OUTLINED_FUNCTION_2_0();
      }

      else
      {
        v4 = 4;
      }
    }

    else
    {
      *v7 = v3;
      v4 = 2;
    }
  }

  else
  {
    v7[0] = v3;
    v4 = 1;
  }

  result = TLV8BufferAppend(v1, v2, v7, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TLV8BufferDetach(uint64_t a1, void *a2, size_t *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  if (v7)
  {
    goto LABEL_7;
  }

  if (v6 > 1)
  {
    v8 = *(a1 + 8);
  }

  OUTLINED_FUNCTION_0_1();
  v11 = malloc_type_malloc(v9, v10);
  if (v11)
  {
    v7 = v11;
    if (v6)
    {
      memcpy(v11, *a1, v6);
    }

LABEL_7:
    result = 0;
    *a1 = a1 + 32;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *a2 = v7;
    *a3 = v6;
    return result;
  }

  return 4294960568;
}

uint64_t TLV8x16Get(unsigned __int8 *a1, unsigned __int8 *a2, char a3, int a4, unsigned __int8 **a5, unint64_t *a6, unsigned __int8 **a7)
{
  while (a1 != a2)
  {
    if (a2 - a1 < 1 || (v7 = *a1, a2 - (a1 + 1) < 2) || ((v8 = a1[1], (a3 & 1) != 0) ? (v9 = a1[2] | (v8 << 8)) : (v9 = v8 | (a1[2] << 8)), v10 = a1 + 3, a2 - (a1 + 3) < v9))
    {
      v11 = 4294960546;
      goto LABEL_10;
    }

    a1 = &v10[v9];
    if (v7 == a4)
    {
      v11 = 0;
      *a5 = v10;
      *a6 = v9;
      goto LABEL_10;
    }
  }

  v11 = 4294960569;
LABEL_10:
  if (a7)
  {
    *a7 = a1;
  }

  return v11;
}

uint64_t TLV8x16GetNext(unsigned __int8 *a1, unsigned __int8 *a2, char a3, _WORD *a4, unsigned __int8 **a5, unint64_t *a6, void *a7)
{
  if (a1 == a2)
  {
    return OUTLINED_FUNCTION_5_0();
  }

  if (a2 - a1 < 1 || a2 - (a1 + 1) < 2)
  {
    return OUTLINED_FUNCTION_4_1();
  }

  v7 = a1[1];
  v8 = (a3 & 1) != 0 ? a1[2] | (v7 << 8) : v7 | (a1[2] << 8);
  v9 = a1 + 3;
  if (a2 - (a1 + 3) < v8)
  {
    return OUTLINED_FUNCTION_4_1();
  }

  *a4 = *a1;
  *a5 = v9;
  *a6 = v8;
  result = 0;
  if (a7)
  {
    *a7 = &v9[v8];
  }

  return result;
}

unint64_t TLV8x16GetSInt64(unsigned __int8 *a1, unsigned __int8 *a2, char a3, int a4, _DWORD *a5, unsigned __int8 **a6)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v11 = TLV8x16Get(a1, a2, a3, a4, &v10, &v9, a6);
  if (v11)
  {
    result = 0;
    if (!a5)
    {
      return result;
    }
  }

  else
  {
    result = TLVParseSInt64(v10, v9, a3, &v11);
    if (!a5)
    {
      return result;
    }
  }

  *a5 = v11;
  return result;
}

unint64_t TLV8x16GetUInt64(unsigned __int8 *a1, unsigned __int8 *a2, char a3, int a4, _DWORD *a5, unsigned __int8 **a6)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v11 = TLV8x16Get(a1, a2, a3, a4, &v10, &v9, a6);
  if (v11)
  {
    result = 0;
    if (!a5)
    {
      return result;
    }
  }

  else
  {
    result = TLVParseUInt64(v10, v9, a3, &v11);
    if (!a5)
    {
      return result;
    }
  }

  *a5 = v11;
  return result;
}

uint64_t TLV8x16Append(CFMutableDataRef theData, char a2, UInt8 a3, char *__s, size_t a5)
{
  v5 = a5;
  if (a5 == -1)
  {
    v5 = strlen(__s);
  }

  if (v5 >> 16)
  {
    return 4294960553;
  }

  bytes[0] = a3;
  v10 = v5 >> 8;
  if (a2)
  {
    v11 = v5 >> 8;
  }

  else
  {
    LOBYTE(v11) = v5;
  }

  if (a2)
  {
    LOBYTE(v10) = v5;
  }

  bytes[1] = v11;
  bytes[2] = v10;
  CFDataAppendBytes(theData, bytes, 3);
  CFDataAppendBytes(theData, __s, v5);
  return 0;
}

uint64_t TLV8x16AppendSInt64()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  if (v4 == v4)
  {
    v8[0] = v4;
    v5 = 1;
  }

  else
  {
    *v8 = v4;
    OUTLINED_FUNCTION_3_1();
  }

  result = TLV8x16Append(v1, v2, v3, v8, v5);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TLV8x16AppendUInt64()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  if (v4 > 0xFF)
  {
    if (v4 >> 16)
    {
      *v8 = v4;
      if (HIDWORD(v4))
      {
        OUTLINED_FUNCTION_3_1();
      }

      else
      {
        v5 = 4;
      }
    }

    else
    {
      *v8 = v4;
      v5 = 2;
    }
  }

  else
  {
    v8[0] = v4;
    v5 = 1;
  }

  result = TLV8x16Append(v1, v2, v3, v8, v5);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TLV16GetNext(unsigned __int8 *a1, unsigned __int8 *a2, int a3, unsigned __int16 *a4, unsigned __int8 **a5, unint64_t *a6, void *a7)
{
  if (a1 == a2)
  {
    return OUTLINED_FUNCTION_5_0();
  }

  if (a1 >= a2)
  {
    return OUTLINED_FUNCTION_6_0();
  }

  if ((a2 - a1) < 4)
  {
    return OUTLINED_FUNCTION_4_1();
  }

  v7 = a1[2];
  if (a3)
  {
    v8 = _byteswap_ushort(*a1);
    v9 = a1[3] | (v7 << 8);
  }

  else
  {
    v8 = *a1 | (a1[1] << 8);
    v9 = v7 | (a1[3] << 8);
  }

  v10 = a1 + 4;
  if (a2 - (a1 + 4) < v9)
  {
    return OUTLINED_FUNCTION_4_1();
  }

  *a4 = v8;
  *a5 = v10;
  *a6 = v9;
  result = 0;
  if (a7)
  {
    *a7 = &v10[v9];
  }

  return result;
}

const __CFData *copyCertificateForFDRData(const __CFData *Copy)
{
  v77 = *MEMORY[0x277D85DE8];
  init_logging();
  if (Copy)
  {
    Length = CFDataGetLength(Copy);
    if (gLogObjects)
    {
      v3 = gNumLogObjects <= 3;
    }

    else
    {
      v3 = 1;
    }

    v4 = !v3;
    if (Length < 611)
    {
      if (v4)
      {
        v7 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_3(&dword_221CB0000, MEMORY[0x277D86220], v58, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v59, v60, v61, v62, v73);
        }

        v7 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_2_1(&dword_221CB0000, v13, v14, "dataLength matches Roswell data length, return copy of fdr data", v15, v16, v17, v18, 0);
      }

      Copy = CFDataCreateCopy(*MEMORY[0x277CBECE8], Copy);
    }

    else
    {
      v5 = Length;
      if (v4)
      {
        v6 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_3(&dword_221CB0000, MEMORY[0x277D86220], v53, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v54, v55, v56, v57, v73);
        }

        v6 = MEMORY[0x277D86220];
        v8 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v73) = 0;
        _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "Have a custom Roswell data structure", &v73, 2u);
      }

      if (gLogObjects)
      {
        v9 = gNumLogObjects <= 3;
      }

      else
      {
        v9 = 1;
      }

      v10 = !v9;
      if (v5 == 704)
      {
        if (v10)
        {
          v11 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_0_2();
            OUTLINED_FUNCTION_3(&dword_221CB0000, MEMORY[0x277D86220], v63, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v64, v65, v66, v67, v73);
          }

          v11 = MEMORY[0x277D86220];
          v20 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_2_1(&dword_221CB0000, v21, v22, "Have a match for (t_bpFDRData_v1)", v23, v24, v25, v26, 0);
        }

        v27 = malloc_type_calloc(1uLL, 0x2C0uLL, 0x100004033510130uLL);
        BytePtr = CFDataGetBytePtr(Copy);
        memcpy(v27, BytePtr, 0x2C0uLL);
        v29 = HIDWORD(gLogObjects);
        v30 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v31 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            HIDWORD(v74) = v29;
            v75 = 1024;
            LODWORD(v76) = v30;
            OUTLINED_FUNCTION_3(&dword_221CB0000, MEMORY[0x277D86220], v32, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v33, v34, v35, v36, 0);
          }

          v31 = MEMORY[0x277D86220];
          v37 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v38 = *(v27 + 30);
          v73 = 67109120;
          LODWORD(v74) = v38;
          _os_log_impl(&dword_221CB0000, v31, OS_LOG_TYPE_DEFAULT, "pRoswellDataStructure->roswell_cert_len = %d", &v73, 8u);
        }

        Copy = CFDataCreate(*MEMORY[0x277CBECE8], v27 + 62, *(v27 + 30));
        free(v27);
      }

      else
      {
        if (v10)
        {
          v19 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_0_2();
            OUTLINED_FUNCTION_3(&dword_221CB0000, MEMORY[0x277D86220], v68, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v69, v70, v71, v72, v73);
          }

          v19 = MEMORY[0x277D86220];
          v39 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v73 = 134218240;
          v74 = v5;
          v75 = 2048;
          v76 = 704;
          _os_log_error_impl(&dword_221CB0000, v19, OS_LOG_TYPE_ERROR, "auth length = %ld, sizeof(t_bpFDRData_v1) = %lu, does not match", &v73, 0x16u);
        }

        Copy = 0;
      }
    }
  }

  v40 = HIDWORD(gLogObjects);
  v41 = gNumLogObjects;
  if (gLogObjects)
  {
    v42 = gNumLogObjects < 4;
  }

  else
  {
    v42 = 1;
  }

  if (v42)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v74) = v40;
      v75 = 1024;
      LODWORD(v76) = v41;
      OUTLINED_FUNCTION_3(&dword_221CB0000, MEMORY[0x277D86220], v43, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v44, v45, v46, v47, 0);
    }

    v49 = MEMORY[0x277D86220];
    v48 = MEMORY[0x277D86220];
  }

  else
  {
    v49 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    if (Copy)
    {
      v50 = CFDataGetLength(Copy);
    }

    else
    {
      v50 = 0;
    }

    v73 = 134217984;
    v74 = v50;
    _os_log_impl(&dword_221CB0000, v49, OS_LOG_TYPE_INFO, "Returning Roswell data of length %ld", &v73, 0xCu);
  }

  v51 = *MEMORY[0x277D85DE8];
  return Copy;
}

void __init_logging_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_221CB0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
}

void __init_logging_signpost_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_221CB0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
}

uint64_t accessoryServer_unregisterAvailabilityChangedHandlerForServiceEntry(uint64_t result)
{
  v16 = *MEMORY[0x277D85DE8];
  if (result <= 1)
  {
    v1 = result;
    pthread_rwlock_wrlock(&stru_280AEE6C8);
    v2 = gLogObjects;
    v3 = gNumLogObjects;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      v7 = MEMORY[0x277D86220];
      if (OUTLINED_FUNCTION_3_2())
      {
        v12 = 134218240;
        v13 = v2;
        v14 = 1024;
        v15 = v3;
        OUTLINED_FUNCTION_2_2(&dword_221CB0000, v5, v6, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v12);
      }
    }

    else
    {
      v7 = *gLogObjects;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      _MergedGlobals_2[v1 + 1];
      OUTLINED_FUNCTION_0_3();
      _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "Unregister AvailabilityChangedHandler (%d, %s)", &v12, 0x12u);
    }

    v8 = _MergedGlobals[v1];
    if (v8 != -1)
    {
      notify_cancel(v8);
      _MergedGlobals[v1] = -1;
    }

    v9 = &_MergedGlobals_2[v1];
    v10 = *(v9 + 3);
    if (v10)
    {
      _Block_release(v10);
      *(v9 + 3) = 0;
    }

    *(v9 + 1) = 0;
    result = pthread_rwlock_unlock(&stru_280AEE6C8);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t accessoryServer_isServerAvailableForServiceEntry(unsigned int a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1 > 1)
  {
    v2 = 0;
  }

  else
  {
    pthread_rwlock_rdlock(&stru_280AEE6C8);
    if (_MergedGlobals[a1] == -1)
    {
      v3 = &_MergedGlobals_2[a1];
      v4 = v3[1];
      if (v4)
      {
        out_token = -1431655766;
        *state64 = 0xAAAAAAAAAAAAAAAALL;
        notify_register_check(v4, &out_token);
        notify_get_state(out_token, state64);
        notify_cancel(out_token);
        v2 = *state64 != 0;
      }

      else
      {
        v5 = gLogObjects;
        v6 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v7 = *gLogObjects;
        }

        else
        {
          v7 = MEMORY[0x277D86220];
          if (OUTLINED_FUNCTION_3_2())
          {
            *state64 = 134218240;
            *&state64[4] = v5;
            v15 = 1024;
            v16 = v6;
            OUTLINED_FUNCTION_2_2(&dword_221CB0000, v8, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", state64);
          }
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v10 = v3[1];
          if (!v10)
          {
            v10 = "null";
          }

          *state64 = 136315650;
          *&state64[4] = "accessoryServer_isServerAvailableForServiceEntry";
          v15 = 1024;
          v16 = a1;
          v17 = 2080;
          v18 = v10;
          _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_INFO, "%s cannot get server state (%d, %s)", state64, 0x1Cu);
        }

        v2 = 0;
      }
    }

    else
    {
      v2 = *(_MergedGlobals_2 + a1);
    }

    pthread_rwlock_unlock(&stru_280AEE6C8);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2 & 1;
}

uint64_t accessoryServer_serverIsUnreachableForServiceEntry(uint64_t a1)
{
  if (a1 <= 1)
  {
    return _SetupAvailabilityChangedHandlerForServiceEntry(a1);
  }

  return a1;
}