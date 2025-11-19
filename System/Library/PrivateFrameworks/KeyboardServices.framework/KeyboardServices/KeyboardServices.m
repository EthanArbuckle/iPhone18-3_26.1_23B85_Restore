id KSCategory()
{
  if (KSCategory_onceToken != -1)
  {
    KSCategory_cold_1();
  }

  v1 = KSCategory_logFacility;

  return v1;
}

void sub_2557E3A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2557E4724(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_2557E4994(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_2557E73E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2557EBBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2 == 1)
  {
    v25 = objc_begin_catch(exception_object);
    v26 = KSCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [v25 reason];
      [v25 userInfo];
      objc_claimAutoreleasedReturnValue();
      [_KSCloudKitManager copyFieldsFromRecord:toRecord:];
    }

    objc_end_catch();
    JUMPOUT(0x2557EBBB0);
  }

  _Unwind_Resume(exception_object);
}

id initCloudSettingsManager()
{
  if (CloudSettingsLibrary_frameworkLibrary || (CloudSettingsLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/CloudSettings.framework/CloudSettings", 2)) != 0 || (NSLog(&cfstr_FailedToOpenFr.isa), CloudSettingsLibrary_frameworkLibrary))
  {
    classCloudSettingsManager = objc_getClass("CloudSettingsManager");
    getCloudSettingsManagerClass = CloudSettingsManagerFunction;
    v0 = classCloudSettingsManager;
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 4) = v3;
  *(a3 + 12) = 2112;
  *(a3 + 14) = result;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x20u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void _handleKeyBagNotification(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 handleKeyBagLockNotification];
  }
}

void *initMKBDeviceUnlockedSinceBoot()
{
  result = MobileKeyBagLibrary();
  if (result)
  {
    v1 = MobileKeyBagLibrary();
    v2 = dlsym(v1, "MKBDeviceUnlockedSinceBoot");
    softLinkMKBDeviceUnlockedSinceBoot = v2;
    if (!v2)
    {
      NSLog(&cfstr_FailedToSoftli.isa);
      v2 = softLinkMKBDeviceUnlockedSinceBoot;
    }

    return v2();
  }

  return result;
}

void *MobileKeyBagLibrary()
{
  result = MobileKeyBagLibrary_frameworkLibrary;
  if (!MobileKeyBagLibrary_frameworkLibrary)
  {
    result = dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 2);
    MobileKeyBagLibrary_frameworkLibrary = result;
    if (!result)
    {
      NSLog(&cfstr_FailedToOpenFr_0.isa);
      return MobileKeyBagLibrary_frameworkLibrary;
    }
  }

  return result;
}

uint64_t initMGCopyAnswer(uint64_t a1, uint64_t a2)
{
  if (MobileGestaltLibrary_sOnce != -1)
  {
    initMGCopyAnswer_cold_1();
  }

  if (!MobileGestaltLibrary_sLib)
  {
    return 0;
  }

  v4 = dlsym(MobileGestaltLibrary_sLib, "MGCopyAnswer");
  softLinkMGCopyAnswer = v4;
  if (!v4)
  {
    NSLog(&cfstr_FailedToSoftli_0.isa);
    v4 = softLinkMGCopyAnswer;
  }

  return (v4)(a1, a2);
}

void __MobileGestaltLibrary_block_invoke()
{
  MobileGestaltLibrary_sLib = dlopen("/usr/lib//libMobileGestalt.dylib", 2);
  if (!MobileGestaltLibrary_sLib)
  {
    NSLog(&cfstr_FailedToSoftli_1.isa);
  }
}

uint64_t initMGGetBoolAnswer(uint64_t a1)
{
  if (MobileGestaltLibrary_sOnce != -1)
  {
    initMGCopyAnswer_cold_1();
  }

  if (!MobileGestaltLibrary_sLib)
  {
    return 0;
  }

  v2 = dlsym(MobileGestaltLibrary_sLib, "MGGetBoolAnswer");
  softLinkMGGetBoolAnswer = v2;
  if (!v2)
  {
    NSLog(&cfstr_FailedToSoftli_2.isa);
    v2 = softLinkMGGetBoolAnswer;
  }

  return (v2)(a1);
}

void __KSCategory_block_invoke()
{
  v0 = os_log_create("com.apple.KeyboardServices", "KeyboardServices");
  v1 = KSCategory_logFacility;
  KSCategory_logFacility = v0;
}

id _homeDirectory()
{
  if (_homeDirectory_once_token != -1)
  {
    _homeDirectory_cold_1();
  }

  v1 = _homeDirectory_directory;

  return v1;
}

void ___homeDirectory_block_invoke()
{
  v0 = softLinkCPSharedResourcesDirectory();
  v1 = _homeDirectory_directory;
  _homeDirectory_directory = v0;
}

void *initCPSharedResourcesDirectory()
{
  result = AppSupportLibrary();
  if (result)
  {
    v1 = AppSupportLibrary();
    v2 = dlsym(v1, "CPSharedResourcesDirectory");
    softLinkCPSharedResourcesDirectory = v2;
    if (!v2)
    {
      NSLog(&cfstr_FailedToSoftli_3.isa);
      v2 = softLinkCPSharedResourcesDirectory;
    }

    return v2();
  }

  return result;
}

void *AppSupportLibrary()
{
  result = AppSupportLibrary_frameworkLibrary;
  if (!AppSupportLibrary_frameworkLibrary)
  {
    result = dlopen("/System/Library/PrivateFrameworks/AppSupport.framework/AppSupport", 2);
    AppSupportLibrary_frameworkLibrary = result;
    if (!result)
    {
      NSLog(&cfstr_FailedToOpenFr_1.isa);
      return AppSupportLibrary_frameworkLibrary;
    }
  }

  return result;
}

void sub_2557EFD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2557F1CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2557F2310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2557F24C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2557F33DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *_KSGetSetting(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  +[_KSTextReplacementHelper fetchConfigurationPlistIfNeeded];
  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  v6 = +[_KSUtilities userDefaultsSuiteName];
  v7 = [v5 initWithSuiteName:v6];
  v8 = [v7 objectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = v3;
  }

  v10 = v9;

  return v9;
}

ssize_t WritePadding(ssize_t __fd, uint64_t a2)
{
  __buf[2] = *MEMORY[0x277D85DE8];
  v2 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = v2 - a2;
  if (v2 != a2)
  {
    v4 = __fd;
    __buf[0] = 0;
    __buf[1] = 0;
    do
    {
      if (v3 >= 0x10)
      {
        v5 = 16;
      }

      else
      {
        v5 = v3;
      }

      __fd = write(v4, __buf, v5);
      v3 -= v5;
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
  return __fd;
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_2557F6C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2557F6E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak((v10 + 56));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v11 - 40));
  _Unwind_Resume(a1);
}

void sub_2557F78D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2557F7CFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2557F7FDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2557F83A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 40));
  _Unwind_Resume(a1);
}

void sub_2557F892C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_2557F8E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2557F909C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_2557F966C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2557F9EAC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    v5 = KSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_KSUserWordsInfo *)v2 filesForLanguage:v4, v5];
    }

    objc_end_catch();
    JUMPOUT(0x2557F9E5CLL);
  }

  _Unwind_Resume(exception_object);
}

id FindEntry(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 name];
  v6 = [v5 hasSuffix:v4];

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __FindEntry_block_invoke;
      v9[3] = &unk_2797F72D0;
      v10 = v4;
      v7 = [v3 findEntryWithComparison:v9 recursively:0];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

id _KSTextReplacementServerInterface()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2867A0E60];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v2 = [MEMORY[0x277CBEB98] setWithArray:v1];
  [v0 setClasses:v2 forSelector:sel_addEntries_removeEntries_withReply_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v2 forSelector:sel_addEntries_removeEntries_withReply_ argumentIndex:1 ofReply:0];
  [v0 setClasses:v2 forSelector:sel_addEntries_removeEntries_withReply_ argumentIndex:1 ofReply:1];
  [v0 setClasses:v2 forSelector:sel_cancelPendingUpdatesWithReply_ argumentIndex:1 ofReply:1];
  [v0 setClasses:v2 forSelector:sel_queryTextReplacementEntriesWithReply_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v2 forSelector:sel_queryTextReplacementsWithPredicate_reply_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v2 forSelector:sel_queryTextReplacementsWithPredicate_reply_ argumentIndex:0 ofReply:1];

  v3 = *MEMORY[0x277D85DE8];

  return v0;
}

void sub_2557FB328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2557FC718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2557FD4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2557FE2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2557FE658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2557FF7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2557FFA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_255800368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  objc_destroyWeak((v31 + 64));
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v32 - 240), 8);
  _Block_object_dispose((v32 - 192), 8);
  objc_destroyWeak((v32 - 144));
  _Unwind_Resume(a1);
}

void sub_2558023C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_destroyWeak((v33 + 80));
  _Block_object_dispose(&a20, 8);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Unwind_Resume(a1);
}

void *initBRDaemonConnectionInvalidate()
{
  result = CloudDocsLibrary();
  if (result)
  {
    v1 = CloudDocsLibrary();
    v2 = dlsym(v1, "BRDaemonConnectionInvalidate");
    softLinkBRDaemonConnectionInvalidate = v2;
    if (!v2)
    {
      NSLog(&cfstr_FailedToSoftli_4.isa);
      v2 = softLinkBRDaemonConnectionInvalidate;
    }

    return v2();
  }

  return result;
}

void *CloudDocsLibrary()
{
  result = CloudDocsLibrary_frameworkLibrary;
  if (!CloudDocsLibrary_frameworkLibrary)
  {
    result = dlopen("/System/Library/PrivateFrameworks/CloudDocs.framework/CloudDocs", 2);
    CloudDocsLibrary_frameworkLibrary = result;
    if (!result)
    {
      NSLog(&cfstr_FailedToOpenFr_2.isa);
      return CloudDocsLibrary_frameworkLibrary;
    }
  }

  return result;
}

void bySetupAssistantExited(__CFNotificationCenter *a1, void *a2, const __CFString *a3)
{
  v5 = a2;
  CFNotificationCenterRemoveObserver(a1, v5, a3, 0);
  [v5 buddySetupDidFinish];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"_KSTIBuddySetupDidFinishNotification_Private" object:0];
}

void sub_255806468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_255806E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2558070E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id initBYSetupAssistantExitedDarwinNotification()
{
  v0 = SetupAssistantLibrary();
  if (v0)
  {
    v1 = SetupAssistantLibrary();
    v2 = dlsym(v1, "BYSetupAssistantExitedDarwinNotification");
    objc_storeStrong(&constantBYSetupAssistantExitedDarwinNotification, *v2);
    getBYSetupAssistantExitedDarwinNotification = BYSetupAssistantExitedDarwinNotificationFunction;
    v0 = constantBYSetupAssistantExitedDarwinNotification;
  }

  return v0;
}

void *SetupAssistantLibrary()
{
  result = SetupAssistantLibrary_frameworkLibrary;
  if (!SetupAssistantLibrary_frameworkLibrary)
  {
    result = dlopen("/System/Library/PrivateFrameworks/SetupAssistant.framework/SetupAssistant", 2);
    SetupAssistantLibrary_frameworkLibrary = result;
    if (!result)
    {
      NSLog(&cfstr_FailedToOpenFr_3.isa);
      return SetupAssistantLibrary_frameworkLibrary;
    }
  }

  return result;
}

void *initBYSetupAssistantNeedsToRun()
{
  result = SetupAssistantLibrary();
  if (result)
  {
    v1 = SetupAssistantLibrary();
    v2 = dlsym(v1, "BYSetupAssistantNeedsToRun");
    softLinkBYSetupAssistantNeedsToRun = v2;
    if (!v2)
    {
      NSLog(&cfstr_FailedToSoftli_5.isa);
      v2 = softLinkBYSetupAssistantNeedsToRun;
    }

    return v2();
  }

  return result;
}

uint64_t _IsEnabled()
{
  v0 = _KSGetSetting(ksDefaultEnabled, MEMORY[0x277CBEC38]);
  v1 = [v0 BOOLValue];

  return v1;
}

void sub_25580B0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t initMGCopyAnswer_0(uint64_t a1, uint64_t a2)
{
  if (MobileGestaltLibrary_sOnce_0 != -1)
  {
    initMGCopyAnswer_cold_1_0();
  }

  if (!MobileGestaltLibrary_sLib_0)
  {
    return 0;
  }

  v4 = dlsym(MobileGestaltLibrary_sLib_0, "MGCopyAnswer");
  softLinkMGCopyAnswer_0 = v4;
  if (!v4)
  {
    NSLog(&cfstr_FailedToSoftli_0.isa);
    v4 = softLinkMGCopyAnswer_0;
  }

  return (v4)(a1, a2);
}

void __MobileGestaltLibrary_block_invoke_0()
{
  MobileGestaltLibrary_sLib_0 = dlopen("/usr/lib//libMobileGestalt.dylib", 2);
  if (!MobileGestaltLibrary_sLib_0)
  {
    NSLog(&cfstr_FailedToSoftli_1.isa);
  }
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}