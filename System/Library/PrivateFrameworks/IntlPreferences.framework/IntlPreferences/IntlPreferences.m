id Logger()
{
  if (Logger___onceToken != -1)
  {
    Logger_cold_1();
  }

  v1 = Logger___migrationLogger;

  return v1;
}

uint64_t __Logger_block_invoke()
{
  Logger___migrationLogger = os_log_create("com.apple.InternationalSupport", "IPWatchLocaleController");

  return MEMORY[0x2821F96F8]();
}

id MigrationLogger()
{
  if (MigrationLogger___onceToken != -1)
  {
    MigrationLogger_cold_1();
  }

  v1 = MigrationLogger___migrationLogger;

  return v1;
}

uint64_t __MigrationLogger_block_invoke()
{
  MigrationLogger___migrationLogger = os_log_create("com.apple.InternationalSupport", "InternationalSupportMigrator");

  return MEMORY[0x2821F96F8]();
}

id getUMUserManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUMUserManagerClass_softClass;
  v7 = getUMUserManagerClass_softClass;
  if (!getUMUserManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUMUserManagerClass_block_invoke;
    v3[3] = &unk_2787A8FA0;
    v3[4] = &v4;
    __getUMUserManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_22DFBD664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DFBD8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUMUserManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!UserManagementLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __UserManagementLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2787A8FC0;
    v7 = 0;
    UserManagementLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (UserManagementLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UMUserManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUMUserManagerClass_block_invoke_cold_1();
  }

  getUMUserManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UserManagementLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UserManagementLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getAKAppleIDAuthenticationControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AuthKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2787A8FF8;
    v7 = 0;
    AuthKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AuthKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AKAppleIDAuthenticationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAKAppleIDAuthenticationControllerClass_block_invoke_cold_1();
  }

  getAKAppleIDAuthenticationControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AuthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22DFBE9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void IPLoadUIKitFramework()
{
  if (IPLoadUIKitFramework_onceToken != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }
}

void *__IPLoadUIKitFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 1);
  uiKitFramework = result;
  return result;
}

Class IPUIKeyboardInputModeController()
{
  if (IPLoadUIKitFramework_onceToken != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }

  return NSClassFromString(&cfstr_Uikeyboardinpu.isa);
}

Class IPUIKeyboardPreferencesController()
{
  if (IPLoadUIKitFramework_onceToken != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }

  return NSClassFromString(&cfstr_Uikeyboardpref.isa);
}

id IPUIKeyboardInputModeGetIdentifierWithKeyboardLayouts(void *a1)
{
  v1 = IPLoadUIKitFramework_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }

  v3 = dlsym(uiKitFramework, "UIKeyboardInputModeGetIdentifierWithKeyboardLayouts");
  v4 = v3(v2);

  return v4;
}

id IPUIKeyboardInputModeGetBaseLanguage(void *a1)
{
  v1 = IPLoadUIKitFramework_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }

  v3 = dlsym(uiKitFramework, "UIKeyboardInputModeGetBaseLanguage");
  v4 = v3(v2);

  return v4;
}

id IPUIKeyboardCanonicalInputModeName(void *a1)
{
  v1 = IPLoadUIKitFramework_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }

  v3 = dlsym(uiKitFramework, "UIKeyboardCanonicalInputModeName");
  v4 = v3(v2);

  return v4;
}

id IPUIKeyboardInputModeGetLanguageWithRegion(void *a1)
{
  v1 = IPLoadUIKitFramework_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }

  v3 = dlsym(uiKitFramework, "UIKeyboardInputModeGetLanguageWithRegion");
  v4 = v3(v2);

  return v4;
}

id IPUIKeyboardInputModeGetNormalizedIdentifier(void *a1)
{
  v1 = IPLoadUIKitFramework_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }

  v3 = dlsym(uiKitFramework, "UIKeyboardInputModeGetNormalizedIdentifier");
  v4 = v3(v2);

  return v4;
}

void *IPUIKeyboardInputMode_Intl()
{
  if (IPLoadUIKitFramework_onceToken != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }

  v1 = uiKitFramework;

  return dlsym(v1, "UIKeyboardInputMode_intl");
}

void sub_22DFC0250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DFC28C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNRPairedDeviceRegistryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNRPairedDeviceRegistryClass_softClass;
  v7 = getNRPairedDeviceRegistryClass_softClass;
  if (!getNRPairedDeviceRegistryClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getNRPairedDeviceRegistryClass_block_invoke;
    v3[3] = &unk_2787A8FA0;
    v3[4] = &v4;
    __getNRPairedDeviceRegistryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_22DFC29AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNPSManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNPSManagerClass_softClass;
  v7 = getNPSManagerClass_softClass;
  if (!getNPSManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getNPSManagerClass_block_invoke;
    v3[3] = &unk_2787A8FA0;
    v3[4] = &v4;
    __getNPSManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_22DFC2A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DFC2BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNRPairedDeviceRegistryClass_block_invoke(uint64_t a1)
{
  NanoRegistryLibrary();
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNRPairedDeviceRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1();
    return NanoRegistryLibrary();
  }

  return result;
}

uint64_t NanoRegistryLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __NanoRegistryLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2787A9150;
    v6 = 0;
    NanoRegistryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
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

void *__getNRWatchOSVersionForRemoteDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRWatchOSVersionForRemoteDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getNPSManagerClass_block_invoke(uint64_t a1)
{
  NanoPreferencesSyncLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NPSManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNPSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNPSManagerClass_block_invoke_cold_1();
    NanoPreferencesSyncLibrary();
  }
}

void NanoPreferencesSyncLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __NanoPreferencesSyncLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2787A9168;
    v4 = 0;
    NanoPreferencesSyncLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __NanoPreferencesSyncLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoPreferencesSyncLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getPSIsNanoMirroringDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!PreferencesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __PreferencesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2787A9180;
    v8 = 0;
    PreferencesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = PreferencesLibraryCore_frameworkLibrary;
    if (PreferencesLibraryCore_frameworkLibrary)
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

  v2 = PreferencesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "PSIsNanoMirroringDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPSIsNanoMirroringDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PreferencesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PreferencesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getNPSDomainAccessorClass_block_invoke(uint64_t a1)
{
  NanoPreferencesSyncLibrary();
  result = objc_getClass("NPSDomainAccessor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNPSDomainAccessorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNPSDomainAccessorClass_block_invoke_cold_1();
    return __32__IntlUtility_sharedIntlUtility__block_invoke();
  }

  return result;
}

void sub_22DFC44B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DFC4798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _isChineseLanguageCode(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"zh"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"yue"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"wuu"];
  }

  return v2;
}

void sub_22DFC775C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DFC7FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNRPairedDeviceRegistryClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __NanoRegistryLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2787A93B0;
    v7 = 0;
    NanoRegistryLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (NanoRegistryLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1();
  }

  getNRPairedDeviceRegistryClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __NanoRegistryLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void IP_hashKeyValue(CC_SHA1_CTX *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  IP_hashString(a1, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 allKeys];
    v8 = [v7 sortedArrayUsingSelector:sel_compare_];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          IP_hashString(a1, v14);
          v15 = MEMORY[0x277CCAAB0];
          v16 = [v6 objectForKeyedSubscript:{v14, v23}];
          v17 = [v15 archivedDataWithRootObject:v16 requiringSecureCoding:0 error:0];

          CC_SHA1_Update(a1, [v17 bytes], objc_msgSend(v17, "length"));
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:0 error:0];
    CC_SHA1_Update(a1, [v6 bytes], objc_msgSend(v6, "length"));
LABEL_13:

    goto LABEL_14;
  }

  v18 = v5;
  v19 = v5;
  v20 = [v19 bytes];
  v21 = [v19 length];

  CC_SHA1_Update(a1, v20, v21);
LABEL_14:

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t IP_hashString(CC_SHA1_CTX *a1, id a2)
{
  v4 = a2;
  v5 = [a2 UTF8String];
  v6 = strlen(v5);

  return CC_SHA1_Update(a1, v5, v6);
}

uint64_t sub_22DFCF64C()
{
  v0 = sub_22DFD28F4();
  v2 = v1;
  v3 = sub_22DFD28F4();
  _sSo8NSLocaleC15IntlPreferencesE17_sameLocalizationySbSS_SStFZ_0(v0, v2, v3, v4);
  LOBYTE(v0) = v5;

  return v0 & 1;
}

uint64_t sub_22DFCF6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v171 = a4;
  v165 = sub_22DFD27B4();
  v177 = *(v165 - 8);
  v7 = *(v177 + 64);
  (MEMORY[0x28223BE20])();
  v139 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CC8, &qword_22DFD44C8);
  v9 = (*(*(v164 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v170 = &v138 - v10;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CE0, &qword_22DFD44D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v161 = &v138 - v12;
  v155 = sub_22DFD2894();
  v154 = *(v155 - 8);
  v13 = *(v154 + 64);
  (MEMORY[0x28223BE20])();
  v152 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_22DFD28A4();
  v180 = *(v176 - 8);
  v15 = *(v180 + 64);
  (MEMORY[0x28223BE20])();
  v175 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CD0, &qword_22DFD44D0) - 8) + 64);
  v18 = (MEMORY[0x28223BE20])();
  v141 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v168 = &v138 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v169 = &v138 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v159 = &v138 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v166 = &v138 - v27;
  MEMORY[0x28223BE20](v26);
  v174 = &v138 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CC0, &qword_22DFD44C0);
  v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29 - 8);
  v149 = &v138 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CE8, &qword_22DFD44E0);
  v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32 - 8);
  v142 = &v138 - v34;
  v145 = sub_22DFD2764();
  v144 = *(v145 - 8);
  v35 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v138 = &v138 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CF0, &qword_22DFD44E8);
  v38 = v37 - 8;
  v39 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v41 = &v138 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CF8, &qword_22DFD44F0);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v151 = &v138 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v140 = &v138 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v167 = (&v138 - v49);
  MEMORY[0x28223BE20](v48);
  v143 = &v138 - v50;
  v51 = sub_22DFD2864();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  v54 = MEMORY[0x28223BE20](v51);
  v153 = &v138 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v150 = &v138 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v146 = &v138 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v173 = &v138 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v64 = &v138 - v63;
  MEMORY[0x28223BE20](v62);
  v66 = &v138 - v65;
  v163 = sub_22DFD2724();
  v162 = *(v163 - 8);
  v67 = *(v162 + 64);
  v68 = MEMORY[0x28223BE20](v163);
  v160 = &v138 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v71 = &v138 - v70;

  v156 = a1;
  v157 = a2;
  sub_22DFD26D4();
  v72 = objc_opt_self();
  v158 = a3;
  v73 = sub_22DFD28E4();
  v74 = [v72 normalizedLanguageIDFromString_];

  sub_22DFD28F4();
  sub_22DFD27F4();
  v147 = v71;
  v75 = v143;
  sub_22DFD26C4();
  sub_22DFD2804();
  v148 = v52;
  v76 = v52;
  v77 = v167;
  v78 = *(v76 + 8);
  v181 = v51;
  v79 = v51;
  v80 = v144;
  v178 = v78;
  v179 = v76 + 8;
  v78(v64, v79);
  v172 = v66;
  v81 = v145;
  sub_22DFD2804();
  v82 = *(v38 + 56);
  sub_22DFD1FB0(v75, v41, &qword_27DA50CF8, &qword_22DFD44F0);
  sub_22DFD1FB0(v77, &v41[v82], &qword_27DA50CF8, &qword_22DFD44F0);
  v83 = *(v80 + 48);
  if (v83(v41, 1, v81) == 1)
  {
    sub_22DFD2018(v77, &qword_27DA50CF8, &qword_22DFD44F0);
    sub_22DFD2018(v75, &qword_27DA50CF8, &qword_22DFD44F0);
    v84 = v83(&v41[v82], 1, v81);
    v85 = v172;
    v86 = v147;
    if (v84 == 1)
    {
      sub_22DFD2018(v41, &qword_27DA50CF8, &qword_22DFD44F0);
      v87 = v176;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v88 = v140;
  sub_22DFD1FB0(v41, v140, &qword_27DA50CF8, &qword_22DFD44F0);
  if (v83(&v41[v82], 1, v81) == 1)
  {
    sub_22DFD2018(v167, &qword_27DA50CF8, &qword_22DFD44F0);
    sub_22DFD2018(v75, &qword_27DA50CF8, &qword_22DFD44F0);
    (*(v80 + 8))(v88, v81);
    v85 = v172;
    v86 = v147;
LABEL_6:
    sub_22DFD2018(v41, &qword_27DA50CF0, &qword_22DFD44E8);
    v87 = v176;
LABEL_7:
    v89 = sub_22DFD2774();
    (*(*(v89 - 8) + 56))(v142, 1, 1, v89);
    sub_22DFD26E4();
    goto LABEL_8;
  }

  v120 = &v41[v82];
  v121 = v138;
  (*(v80 + 32))(v138, v120, v81);
  sub_22DFD2078(&qword_27DA50D00, MEMORY[0x277CC9640]);
  v122 = sub_22DFD28D4();
  v123 = *(v80 + 8);
  v123(v121, v81);
  sub_22DFD2018(v167, &qword_27DA50CF8, &qword_22DFD44F0);
  sub_22DFD2018(v75, &qword_27DA50CF8, &qword_22DFD44F0);
  v123(v88, v81);
  sub_22DFD2018(v41, &qword_27DA50CF8, &qword_22DFD44F0);
  v87 = v176;
  v85 = v172;
  v86 = v147;
  if ((v122 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v90 = sub_22DFD27E4();
  (*(*(v90 - 8) + 56))(v149, 1, 1, v90);
  sub_22DFD2714();

  v91 = v175;
  sub_22DFD2744();
  v92 = v174;
  sub_22DFD27D4();
  v93 = *(v180 + 8);
  v180 += 8;
  v167 = v93;
  (v93)(v91, v87);
  v94 = *(v148 + 16);
  v95 = v173;
  v96 = v181;
  v94(v173, v85, v181);
  v97 = v166;
  sub_22DFD1FB0(v92, v166, &qword_27DA50CD0, &qword_22DFD44D0);
  sub_22DFD2834();
  v94(v146, v95, v96);
  v98 = v152;
  sub_22DFD2874();
  sub_22DFD2884();
  (*(v154 + 8))(v98, v155);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v100 = sub_22DFD28E4();
  v101 = sub_22DFD28E4();

  LOBYTE(v94) = [ObjCClassFromMetadata _language_usesSameLocalizationAs_];

  sub_22DFD1FB0(v92, v97, &qword_27DA50CD0, &qword_22DFD44D0);
  if ((v94 & 1) == 0)
  {
    sub_22DFD2704();
    sub_22DFD2824();
  }

  v102 = sub_22DFD26B4();
  sub_22DFD2834();
  v102(v182, 0);
  v103 = v165;
  v104 = v169;
  sub_22DFD2804();
  v105 = sub_22DFD26B4();
  sub_22DFD2814();
  v105(v182, 0);
  sub_22DFD2844();
  v106 = sub_22DFD26B4();
  sub_22DFD2854();
  v106(v182, 0);
  v107 = v150;
  sub_22DFD26C4();
  v108 = v159;
  sub_22DFD2824();
  v178(v107, v181);
  v109 = *(v177 + 48);
  LODWORD(v107) = v109(v108, 1, v103);
  sub_22DFD2018(v108, &qword_27DA50CD0, &qword_22DFD44D0);
  if (v107 == 1)
  {
    sub_22DFD27A4();
    (*(v177 + 56))(v97, 0, 1, v103);
    v110 = sub_22DFD26B4();
    sub_22DFD2834();
    v110(v182, 0);
  }

  sub_22DFD26F4();
  v111 = v153;
  sub_22DFD26C4();
  v112 = v168;
  sub_22DFD2824();
  v178(v111, v181);
  v113 = *(v164 + 48);
  v114 = v170;
  sub_22DFD1FB0(v104, v170, &qword_27DA50CD0, &qword_22DFD44D0);
  sub_22DFD1FB0(v112, v114 + v113, &qword_27DA50CD0, &qword_22DFD44D0);
  if (v109(v114, 1, v103) == 1)
  {
    sub_22DFD2018(v112, &qword_27DA50CD0, &qword_22DFD44D0);
    v115 = v170;
    sub_22DFD2018(v104, &qword_27DA50CD0, &qword_22DFD44D0);
    v116 = v109(v115 + v113, 1, v103);
    v117 = v172;
    if (v116 == 1)
    {
      sub_22DFD2018(v115, &qword_27DA50CD0, &qword_22DFD44D0);
      v118 = v177;
LABEL_21:
      (*(v118 + 56))(v166, 1, 1, v103);
      sub_22DFD2704();
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v119 = v141;
  sub_22DFD1FB0(v114, v141, &qword_27DA50CD0, &qword_22DFD44D0);
  if (v109(v114 + v113, 1, v103) == 1)
  {
    sub_22DFD2018(v168, &qword_27DA50CD0, &qword_22DFD44D0);
    v115 = v170;
    sub_22DFD2018(v169, &qword_27DA50CD0, &qword_22DFD44D0);
    (*(v177 + 8))(v119, v103);
    v117 = v172;
LABEL_17:
    sub_22DFD2018(v115, &qword_27DA50CC8, &qword_22DFD44C8);
    goto LABEL_22;
  }

  v118 = v177;
  v124 = v139;
  (*(v177 + 32))(v139, v114 + v113, v103);
  sub_22DFD2078(&qword_27DA50CD8, MEMORY[0x277CC9698]);
  v125 = v114;
  v126 = sub_22DFD28D4();
  v127 = *(v118 + 8);
  v127(v124, v103);
  sub_22DFD2018(v168, &qword_27DA50CD0, &qword_22DFD44D0);
  sub_22DFD2018(v169, &qword_27DA50CD0, &qword_22DFD44D0);
  v127(v119, v103);
  sub_22DFD2018(v125, &qword_27DA50CD0, &qword_22DFD44D0);
  v117 = v172;
  if (v126)
  {
    goto LABEL_21;
  }

LABEL_22:
  v128 = objc_opt_self();
  v129 = v162;
  v130 = v163;
  (*(v162 + 16))(v160, v86, v163);
  v131 = v175;
  sub_22DFD2734();
  sub_22DFD2754();
  (v167)(v131, v176);
  v132 = sub_22DFD28E4();

  v133 = [v128 canonicalLocaleIdentifierFromString_];

  v134 = sub_22DFD28F4();
  v135 = v181;
  v136 = v178;
  v178(v173, v181);
  sub_22DFD2018(v174, &qword_27DA50CD0, &qword_22DFD44D0);
  v136(v117, v135);
  (*(v129 + 8))(v86, v130);
  return v134;
}

id sub_22DFD0A34()
{
  v0 = sub_22DFD28F4();
  v2 = v1;
  v3 = sub_22DFD28F4();
  v5 = v4;
  swift_getObjCClassMetadata();
  sub_22DFCF6BC(v0, v2, v3, v5);

  v6 = sub_22DFD28E4();

  return v6;
}

uint64_t static NSLocale._localeIdentifierForRegionChange(from:to:)(uint64_t a1, char *a2, void *a3)
{
  v99 = a3;
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CC0, &qword_22DFD44C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v90 = &v85 - v5;
  v6 = sub_22DFD28A4();
  v104 = *(v6 - 8);
  v105 = v6;
  v7 = *(v104 + 64);
  MEMORY[0x28223BE20](v6);
  v102 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CC8, &qword_22DFD44C8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v91 = &v85 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CD0, &qword_22DFD44D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v89 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v87 = &v85 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v85 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v85 - v22;
  v24 = sub_22DFD27B4();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v86 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v85 - v29;
  v103 = sub_22DFD2724();
  v101 = *(v103 - 8);
  v31 = *(v101 + 64);
  v32 = MEMORY[0x28223BE20](v103);
  v100 = &v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v98 = &v85 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v85 - v36;
  v38 = sub_22DFD2754();
  v40 = v39;
  v41 = objc_opt_self();
  v88 = v38;
  v92 = v40;
  v42 = sub_22DFD28E4();
  v93 = v41;
  v43 = [v41 addLikelySubtagsForLocaleIdentifier_];

  sub_22DFD28F4();
  sub_22DFD26D4();

  sub_22DFD27C4();
  v44 = v25[2];
  v106 = v30;
  v95 = v44;
  v96 = v25 + 2;
  v44(v23, v30, v24);
  v45 = (v25 + 7);
  v97 = v25[7];
  v97(v23, 0, 1, v24);
  v94 = v37;
  v46 = v24;
  v47 = v91;
  sub_22DFD26F4();
  v48 = *(v10 + 56);
  sub_22DFD1FB0(v23, v47, &qword_27DA50CD0, &qword_22DFD44D0);
  sub_22DFD1FB0(v21, v47 + v48, &qword_27DA50CD0, &qword_22DFD44D0);
  v99 = v25;
  v49 = v25[6];
  if (v49(v47, 1, v46) == 1)
  {
    sub_22DFD2018(v21, &qword_27DA50CD0, &qword_22DFD44D0);
    sub_22DFD2018(v23, &qword_27DA50CD0, &qword_22DFD44D0);
    v50 = v49(v47 + v48, 1, v46);
    v51 = v104;
    if (v50 == 1)
    {
      sub_22DFD2018(v47, &qword_27DA50CD0, &qword_22DFD44D0);
      v52 = v103;
LABEL_11:
      v66 = v46;

      v70 = v101;
      v67 = v94;
      (*(v101 + 16))(v100, v94, v52);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v85 = v23;
  v53 = v47;
  v54 = v47;
  v55 = v87;
  sub_22DFD1FB0(v53, v87, &qword_27DA50CD0, &qword_22DFD44D0);
  if (v49(v54 + v48, 1, v46) == 1)
  {
    sub_22DFD2018(v21, &qword_27DA50CD0, &qword_22DFD44D0);
    sub_22DFD2018(v85, &qword_27DA50CD0, &qword_22DFD44D0);
    (v99[1])(v55, v46);
    v51 = v104;
    v47 = v54;
LABEL_6:
    sub_22DFD2018(v47, &qword_27DA50CC8, &qword_22DFD44C8);
    v52 = v103;
    goto LABEL_7;
  }

  v71 = v99;
  v72 = v86;
  (v99[4])(v86, v54 + v48, v46);
  sub_22DFD2078(&qword_27DA50CD8, MEMORY[0x277CC9698]);
  v73 = sub_22DFD28D4();
  v74 = v71[1];
  v74(v72, v46);
  sub_22DFD2018(v21, &qword_27DA50CD0, &qword_22DFD44D0);
  sub_22DFD2018(v85, &qword_27DA50CD0, &qword_22DFD44D0);
  v74(v55, v46);
  sub_22DFD2018(v54, &qword_27DA50CD0, &qword_22DFD44D0);
  v52 = v103;
  v51 = v104;
  if (v73)
  {
    goto LABEL_11;
  }

LABEL_7:

  v56 = v98;
  sub_22DFD26D4();
  v57 = v89;
  v91 = v45;
  v95(v89, v106, v46);
  v97(v57, 0, 1, v46);
  v58 = sub_22DFD26B4();
  sub_22DFD2834();
  v58(v107, 0);
  v87 = *(v101 + 16);
  (v87)(v100, v56, v52);
  v59 = v102;
  sub_22DFD2734();
  sub_22DFD2754();
  (*(v51 + 8))(v59, v105);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v61 = sub_22DFD28E4();

  v62 = sub_22DFD28E4();

  LODWORD(v58) = [ObjCClassFromMetadata _language_usesSameLocalizationAs_];

  v63 = v57;
  v64 = v97;
  v95(v57, v106, v46);
  v65 = v57;
  v66 = v46;
  v64(v65, 0, 1, v46);
  v67 = v94;
  if (v58)
  {
    v68 = sub_22DFD26B4();
    sub_22DFD2834();
    v68(v107, 0);
    v64(v63, 1, 1, v66);
  }

  sub_22DFD2704();
  v69 = sub_22DFD27E4();
  (*(*(v69 - 8) + 56))(v90, 1, 1, v69);
  sub_22DFD2714();
  v70 = v101;
  v52 = v103;
  (*(v101 + 8))(v98, v103);
  v51 = v104;
  (v87)(v100, v67, v52);
LABEL_12:
  v75 = v67;
  v76 = v102;
  sub_22DFD2734();
  sub_22DFD2754();
  (*(v51 + 8))(v76, v105);
  v77 = sub_22DFD28E4();

  v78 = v93;
  v79 = [v93 componentsFromLocaleIdentifier_];

  v80 = sub_22DFD28C4();
  sub_22DFD1630(v80);

  v81 = sub_22DFD28B4();

  v82 = [v78 canonicalLocaleIdentifierWithValidCalendarForComponents_];

  v83 = sub_22DFD28F4();
  (v99[1])(v106, v66);
  (*(v70 + 8))(v75, v52);
  return v83;
}

uint64_t sub_22DFD1630(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50D08, &qword_22DFD44F8);
    v2 = sub_22DFD2934();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_22DFD20C0(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_22DFD20C0(v34, v35);
    v19 = *(v2 + 40);
    result = sub_22DFD2924();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_22DFD20C0(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_22DFD18F8()
{
  v0 = sub_22DFD28A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DFD2794();
  v5 = sub_22DFD28F4();
  v7 = v6;
  swift_getObjCClassMetadata();
  static NSLocale._localeIdentifierForRegionChange(from:to:)(v4, v5, v7);

  (*(v1 + 8))(v4, v0);
  v8 = sub_22DFD28E4();

  return v8;
}

id sub_22DFD1A40()
{
  v0 = sub_22DFD28A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() preferredLocale];
  if (result)
  {
    v6 = result;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_22DFD2794();

    v8 = sub_22DFD2784();
    (*(v1 + 8))(v4, v0);
    v9 = sub_22DFD28E4();
    v10 = [ObjCClassFromMetadata _localeIdentifierForRegionChangeFrom_to_];

    v11 = sub_22DFD28F4();
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_22DFD1BBC()
{
  sub_22DFD28F4();
  swift_getObjCClassMetadata();
  sub_22DFD1A40();

  v0 = sub_22DFD28E4();

  return v0;
}

void _sSo8NSLocaleC15IntlPreferencesE17_sameLocalizationySbSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22DFD28E4();
  v9 = objc_opt_self();
  v10 = [v9 bundleWithIdentifier_];

  if (!v10)
  {
    __break(1u);
    return;
  }

  v11 = [v10 localizations];

  v12 = v11;
  v13 = v11;
  if (!v11)
  {
    sub_22DFD2914();
    v13 = sub_22DFD2904();

    sub_22DFD2914();
    v12 = sub_22DFD2904();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50D10, &qword_22DFD4500);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22DFD44B0;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v15 = v11;

  v16 = sub_22DFD2904();

  v17 = [v9 preferredLocalizationsFromArray:v13 forPreferences:v16];

  v18 = sub_22DFD2914();
  if (v18[2])
  {
    v20 = v18[4];
    v19 = v18[5];
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22DFD44B0;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;

  v22 = sub_22DFD2904();

  v23 = [v9 preferredLocalizationsFromArray:v12 forPreferences:v22];

  v24 = sub_22DFD2914();
  if (!v24[2])
  {

    if (!v19)
    {
      return;
    }

LABEL_18:

    return;
  }

  v26 = v24[4];
  v25 = v24[5];

  if (v19)
  {
    if (v25)
    {
      if (v20 == v26 && v19 == v25)
      {
      }

      else
      {
        sub_22DFD2944();
      }
    }

    goto LABEL_18;
  }

  if (v25)
  {
    goto LABEL_18;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22DFD1FB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22DFD2018(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22DFD2078(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_22DFD20C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}