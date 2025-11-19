id BRKLocalizedUserNotificationString(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [a3 localizedStringForKey:v6 value:&stru_285413D38 table:0];
  v8 = UNFormatLocalizedString();
  v9 = [MEMORY[0x277CE1F40] localizedStringForKey:v6 arguments:v5 value:v8];

  return v9;
}

void sub_241EE7E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id BRKLoggingObjectForDomain(uint64_t a1)
{
  if (BRKLoggingObjectForDomain_onceToken != -1)
  {
    BRKLoggingObjectForDomain_cold_1();
  }

  v2 = BRKLoggingObjectForDomain_LogObjects;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void __BRKLoggingObjectForDomain_block_invoke()
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  for (i = 0; i != 15; ++i)
  {
    v1 = os_log_create("Brook", off_278D28A08[i]);
    if (v1)
    {
      v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      [v5 setObject:v1 forKeyedSubscript:v2];
    }
  }

  v3 = [v5 copy];
  v4 = BRKLoggingObjectForDomain_LogObjects;
  BRKLoggingObjectForDomain_LogObjects = v3;
}

uint64_t BRKIsInternalBuild()
{
  if (BRKIsInternalBuild_onceToken != -1)
  {
    BRKIsInternalBuild_cold_1();
  }

  return BRKIsInternalBuild_isInternalBuild;
}

uint64_t __BRKIsInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  BRKIsInternalBuild_isInternalBuild = result;
  return result;
}

uint64_t BRKIsInternalCarryEnabled()
{
  if (BRKIsInternalBuild_onceToken != -1)
  {
    BRKIsInternalBuild_cold_1();
  }

  if (BRKIsInternalBuild_isInternalBuild != 1)
  {
    return 0;
  }

  v0 = CFPreferencesCopyAppValue(@"ExperimentGroup", @"com.apple.da");
  v1 = [v0 isEqualToString:@"walkabout"];

  return v1;
}

id BRKBuildVersion()
{
  if (BRKBuildVersion_onceToken != -1)
  {
    BRKBuildVersion_cold_1();
  }

  v1 = BRKBuildVersion_Build;

  return v1;
}

uint64_t __BRKBuildVersion_block_invoke()
{
  BRKBuildVersion_Build = MGGetStringAnswer();

  return MEMORY[0x2821F96F8]();
}

__CFString *BRKDetectorVersion()
{
  v0 = [NSClassFromString(&cfstr_Brkassetsmanag.isa) sharedInstance];
  v1 = [v0 installedAssetVersion];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = &stru_285413D38;
  }

  v4 = v3;

  return v3;
}

id BRKHardwareVersion()
{
  if (BRKHardwareVersion_onceToken != -1)
  {
    BRKHardwareVersion_cold_1();
  }

  v1 = BRKHardwareVersion_HWVersion;

  return v1;
}

uint64_t __BRKHardwareVersion_block_invoke()
{
  BRKHardwareVersion_HWVersion = MGGetStringAnswer();

  return MEMORY[0x2821F96F8]();
}

uint64_t BRKCurrentDeviceVariant()
{
  if (BRKCurrentDeviceVariant_onceToken != -1)
  {
    BRKCurrentDeviceVariant_cold_1();
  }

  return BRKCurrentDeviceVariant_Device;
}

void __BRKCurrentDeviceVariant_block_invoke()
{
  v0 = MGGetSInt32Answer();
  v1 = v0;
  if (v0 <= 12)
  {
    if (v0 == -1)
    {
      v3 = BRKLoggingObjectForDomain(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __BRKCurrentDeviceVariant_block_invoke_cold_1(v3);
      }

      goto LABEL_16;
    }

    if (v0 == 12)
    {
      v2 = 1;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (v0 == 17)
  {
    v2 = 3;
    goto LABEL_17;
  }

  if (v0 == 16)
  {
LABEL_16:
    v2 = 2;
    goto LABEL_17;
  }

  if (v0 != 13)
  {
LABEL_13:
    v4 = BRKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __BRKCurrentDeviceVariant_block_invoke_cold_2(v1, v4);
    }

    goto LABEL_16;
  }

  v2 = 0;
LABEL_17:
  BRKCurrentDeviceVariant_Device = v2;
}

id _BRKSharedUtilityQueue()
{
  if (_BRKSharedUtilityQueue_onceToken != -1)
  {
    _BRKSharedUtilityQueue_cold_1();
  }

  v1 = _BRKSharedUtilityQueue_Queue;

  return v1;
}

id _BRKSharedBackgroundQueue()
{
  if (_BRKSharedBackgroundQueue_onceToken != -1)
  {
    _BRKSharedBackgroundQueue_cold_1();
  }

  v1 = _BRKSharedBackgroundQueue_Queue;

  return v1;
}

dispatch_queue_t BRKCreateDispatchQueue(const char *a1, dispatch_qos_class_t a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, a2, 0);

  if (a2 == QOS_CLASS_UTILITY)
  {
    v6 = _BRKSharedUtilityQueue();
    goto LABEL_5;
  }

  if (a2 == QOS_CLASS_BACKGROUND)
  {
    v6 = _BRKSharedBackgroundQueue();
LABEL_5:
    v7 = v6;
    v8 = dispatch_queue_create_with_target_V2(a1, v5, v6);

    goto LABEL_7;
  }

  v8 = dispatch_queue_create(a1, v5);
LABEL_7:

  return v8;
}

id BRKDeviceLocale()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [v0 localeIdentifier];

  return v1;
}

id BRKDeviceRegion()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [v0 countryCode];

  return v1;
}

id BRKDeviceTimezone()
{
  v0 = [MEMORY[0x277CBEBB0] systemTimeZone];
  v1 = [v0 abbreviation];

  return v1;
}

uint64_t BRKDeviceTimezoneOffset()
{
  v0 = [MEMORY[0x277CBEBB0] systemTimeZone];
  v1 = [v0 secondsFromGMT];

  return v1;
}

id _BRKLocalesRequiringTallScript()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"th"];
  v7[0] = v0;
  v1 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"vi"];
  v7[1] = v1;
  v2 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"hi"];
  v7[2] = v2;
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"ar"];
  v7[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t BRKCurrentLanguageRequiresTallScript()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = _BRKLocalesRequiringTallScript();
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = *v11;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = [*(*(&v10 + 1) + 8 * i) languageCode];
        v6 = [v0 languageCode];
        v7 = [v5 isEqualToString:v6];

        if (v7)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

void _BRKRegisterForLockedStatusChange()
{
  if (_BRKRegisterForLockedStatusChange_onceToken != -1)
  {
    _BRKRegisterForLockedStatusChange_cold_1();
  }
}

__CFString *BRKDeviceLockStateChangedNotification()
{
  if (_BRKRegisterForLockedStatusChange_onceToken != -1)
  {
    _BRKRegisterForLockedStatusChange_cold_1();
  }

  return @"BRKDeviceLockStateChangedNotification";
}

BOOL BRKDeviceIsLocked()
{
  if (_BRKRegisterForLockedStatusChange_onceToken != -1)
  {
    _BRKRegisterForLockedStatusChange_cold_1();
  }

  v0 = MKBGetDeviceLockState();
  if (v0)
  {
    v1 = v0 == 3;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

BOOL BRKDeviceUnlockedSinceBoot()
{
  if (_BRKRegisterForLockedStatusChange_onceToken != -1)
  {
    _BRKRegisterForLockedStatusChange_cold_1();
  }

  return MKBGetDeviceLockState() == 3 || MKBDeviceUnlockedSinceBoot() == 1;
}

uint64_t BRKWristOrientationIsRight()
{
  v0 = +[_BRKDeviceOrientationNotificationProxy sharedInstance];
  v1 = [v0 wristOrientationIsRight];

  return v1;
}

uint64_t BRKCrownOrientationIsRight()
{
  v0 = +[_BRKDeviceOrientationNotificationProxy sharedInstance];
  v1 = [v0 crownOrientationIsRight];

  return v1;
}

void BRKMarkFilePurgeable(void *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isFileURL])
  {
    v31 = 0;
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = [v1 path];
    v4 = [v2 fileExistsAtPath:v3 isDirectory:&v31];

    if (v4)
    {
      if (v31 == 1)
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v5 = [MEMORY[0x277CCAA00] defaultManager];
        v6 = [v5 enumeratorAtURL:v1 includingPropertiesForKeys:0 options:3 errorHandler:0];

        v7 = [v6 countByEnumeratingWithState:&v27 objects:v38 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v28;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v28 != v9)
              {
                objc_enumerationMutation(v6);
              }

              BRKMarkFilePurgeable(*(*(&v27 + 1) + 8 * i));
            }

            v8 = [v6 countByEnumeratingWithState:&v27 objects:v38 count:16];
          }

          while (v8);
        }
      }

      else
      {
        v26 = 66053;
        v11 = [v1 absoluteURL];
        v6 = [v11 path];

        v12 = open([v6 UTF8String], 0);
        if (v12 < 0)
        {
          v20 = BRKLoggingObjectForDomain(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            BRKMarkFilePurgeable_cold_1(v6, v20);
          }
        }

        else
        {
          v13 = v12;
          v14 = ffsctl(v12, 0xC0084A44uLL, &v26, 0);
          v15 = BRKLoggingObjectForDomain(0);
          v16 = v15;
          if (v14)
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v17 = [v6 UTF8String];
              v18 = __error();
              v19 = strerror(*v18);
              *buf = 136315906;
              v33 = v17;
              v34 = 1024;
              *v35 = v14;
              *&v35[4] = 2080;
              *&v35[6] = v19;
              v36 = 2048;
              v37 = v26;
              _os_log_error_impl(&dword_241EE4000, v16, OS_LOG_TYPE_ERROR, "Failed to mark %s as purgeable %d (%s) (flags 0x%llx)", buf, 0x26u);
            }
          }

          else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v21 = [v6 UTF8String];
            v22 = v26;
            v23 = __error();
            v24 = strerror(*v23);
            *buf = 136315906;
            v33 = v21;
            v34 = 2048;
            *v35 = v22;
            *&v35[8] = 1024;
            *&v35[10] = 0;
            v36 = 2080;
            v37 = v24;
            _os_log_impl(&dword_241EE4000, v16, OS_LOG_TYPE_INFO, "Marked %s purgeable with flags 0x%llx returned %d (%s)", buf, 0x26u);
          }

          close(v13);
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

id _BRKFileAttributes(void *a1)
{
  v1 = a1;
  if ([v1 isFileURL])
  {
    v2 = [v1 absoluteURL];
    v3 = [v2 path];

    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = 0;
    v5 = [v4 attributesOfItemAtPath:v3 error:&v10];
    v6 = v10;

    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = BRKLoggingObjectForDomain(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        _BRKFileAttributes_cold_1();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id BRKFileModifiedDate(void *a1)
{
  v1 = _BRKFileAttributes(a1);
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCA150]];

  return v2;
}

uint64_t BRKFileSize(void *a1)
{
  v1 = _BRKFileAttributes(a1);
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
  v3 = [v2 integerValue];

  return v3;
}

uint64_t BRKCreateDirectory(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:v1];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    v4 = [v5 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v14];
    v6 = v14;

    v7 = BRKLoggingObjectForDomain(0);
    v8 = v7;
    if (v4)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [MEMORY[0x277CCAA00] defaultManager];
        v10 = [MEMORY[0x277CCAA00] defaultManager];
        v11 = [v10 delegate];
        *buf = 138412802;
        v16 = v1;
        v17 = 2112;
        v18 = v9;
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&dword_241EE4000, v8, OS_LOG_TYPE_DEFAULT, "Created directory at path %@ %@ %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      BRKCreateDirectory_cold_1();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL BRKNumberIfFloatingPoint(void *a1)
{
  v1 = a1;
  v2 = [v1 objCType];
  if (*v2 == 102 && !v2[1])
  {
    v4 = 1;
  }

  else
  {
    v3 = [v1 objCType];
    v4 = *v3 == 100 && v3[1] == 0;
  }

  return v4;
}

id BRKDescriptionStringFromDictionary(void *a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = a1;
  v3 = [v1 arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __BRKDescriptionStringFromDictionary_block_invoke;
  v7[3] = &unk_278D28AA8;
  v8 = v3;
  v4 = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v7];

  [v4 sortUsingComparator:&__block_literal_global_120];
  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

void __BRKDescriptionStringFromDictionary_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", a2, a3];
  [v3 addObject:v4];
}

uint64_t BRKIsRunningInCarousel()
{
  if (BRKIsRunningInCarousel_onceToken != -1)
  {
    BRKIsRunningInCarousel_cold_1();
  }

  return BRKIsRunningInCarousel_RunningInCarousel;
}

void __BRKIsRunningInCarousel_block_invoke()
{
  v1 = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  v0 = [v1 bundleIdentifier];
  BRKIsRunningInCarousel_RunningInCarousel = [v0 isEqualToString:@"com.apple.Carousel"];
}

id BRKBundle()
{
  if (BRKBundle_onceToken != -1)
  {
    BRKBundle_cold_1();
  }

  v1 = BRKBundle_Bundle;

  return v1;
}

void __BRKBundle_block_invoke()
{
  v0 = MEMORY[0x277CCA8D8];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/PrivateFrameworks/BrookDetector.framework/"];
  v1 = [v0 bundleWithURL:v3];
  v2 = BRKBundle_Bundle;
  BRKBundle_Bundle = v1;
}

id BRKPrimaryColor()
{
  v0 = [MEMORY[0x277D75348] systemBlueColor];
  v1 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v2 = [v0 resolvedColorWithTraitCollection:v1];

  return v2;
}

uint64_t BRKDeviceIsAltAccount(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getNRDevicePropertyIsAltAccountSymbolLoc_ptr;
  v11 = getNRDevicePropertyIsAltAccountSymbolLoc_ptr;
  if (!getNRDevicePropertyIsAltAccountSymbolLoc_ptr)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getNRDevicePropertyIsAltAccountSymbolLoc_block_invoke;
    v7[3] = &unk_278D28AF0;
    v7[4] = &v8;
    __getNRDevicePropertyIsAltAccountSymbolLoc_block_invoke(v7);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    IsAltAccount_cold_1 = BRKDeviceIsAltAccount_cold_1();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(IsAltAccount_cold_1);
  }

  v3 = [v1 valueForProperty:*v2];
  v4 = [v3 BOOLValue];

  return v4;
}

void *__getNRDevicePropertyIsAltAccountSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __NanoRegistryLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278D28B10;
    v8 = 0;
    NanoRegistryLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = NanoRegistryLibraryCore_frameworkLibrary;
    if (NanoRegistryLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = NanoRegistryLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "NRDevicePropertyIsAltAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyIsAltAccountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __NanoRegistryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_241EEB604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241EEBD40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_241EEC7A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t BRKIDSMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v29) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
          goto LABEL_28;
        }

        *(a1 + 40) |= 1u;
        v29 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v24 = v29;
        v25 = 8;
LABEL_40:
        *(a1 + v25) = v24;
        goto LABEL_41;
      }

      v19 = PBReaderReadString();
      v20 = *(a1 + 32);
      *(a1 + 32) = v19;

LABEL_41:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      *(a1 + 40) |= 2u;
      v29 = 0;
      v21 = [a2 position] + 8;
      if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v24 = v29;
      v25 = 16;
    }

    else
    {
      if (v13 != 4)
      {
LABEL_28:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_41;
      }

      *(a1 + 40) |= 4u;
      v29 = 0;
      v16 = [a2 position] + 8;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v24 = v29;
      v25 = 24;
    }

    goto LABEL_40;
  }

  return [a2 hasError] ^ 1;
}

void _BRKHandleNPSNotification(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___BRKHandleNPSNotification_block_invoke;
  block[3] = &unk_278D28838;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_241EEE4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __BRKCurrentDeviceVariant_block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_241EE4000, a2, OS_LOG_TYPE_ERROR, "Unknown screen class %@. Defaulting to 394h variant", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void BRKMarkFilePurgeable_cold_1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 UTF8String];
  v4 = __error();
  v5 = strerror(*v4);
  v7 = 136315394;
  v8 = v3;
  v9 = 2080;
  v10 = v5;
  _os_log_error_impl(&dword_241EE4000, a2, OS_LOG_TYPE_ERROR, "Can't open %s to mark purgeable: %s", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void _BRKFileAttributes_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_241EE4000, v0, v1, "Unable to get attributes for file %@ %@");
  v2 = *MEMORY[0x277D85DE8];
}

void BRKCreateDirectory_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_241EE4000, v0, v1, "Unable to create directory at path %@ %@");
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t BRKDeviceIsAltAccount_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [(BRKRemindersSettingsHelper *)v0 _handwashingLocationManager];
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}