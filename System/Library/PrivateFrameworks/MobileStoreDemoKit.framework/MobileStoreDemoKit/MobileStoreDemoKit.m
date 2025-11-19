id defaultLogHandle()
{
  if (defaultLogHandle_once != -1)
  {
    defaultLogHandle_cold_1();
  }

  v1 = defaultLogHandle_defaultLogObj;

  return v1;
}

uint64_t __defaultLogHandle_block_invoke()
{
  defaultLogHandle_defaultLogObj = os_log_create("com.apple.MobileStoreDemo", "Default");

  return MEMORY[0x2821F96F8]();
}

void sub_259B7E9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_259B7ED98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *safeAssignError(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = [MEMORY[0x277CCA9B8] errorDomainMSDWithCode:a2 message:a3];
    *v3 = result;
  }

  return result;
}

void *safeAssignErrorWithReason(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    result = [MEMORY[0x277CCA9B8] errorDomainMSDWithCode:a2 message:a3 reason:a4];
    *v4 = result;
  }

  return result;
}

uint64_t safeAssignErrorNoOverwrite(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1 && !*a1)
  {
    v8 = v5;
    v5 = [MEMORY[0x277CCA9B8] errorDomainMSDWithCode:a2 message:v5];
    v6 = v8;
    *a1 = v5;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id contentRootList()
{
  if (contentRootList_onceToken != -1)
  {
    contentRootList_cold_1();
  }

  v1 = contentRootList_shared;

  return v1;
}

void __contentRootList_block_invoke()
{
  v0 = +[MSDPlatform sharedInstance];
  v1 = [v0 watchOS];

  if (v1)
  {
    [MEMORY[0x277CBEA60] arrayWithObjects:{@"/var/mobile/Demo.mov", @"/var/mobile/Demo.plist", @"/var/mobile/Media", @"/var/mobile/Library/AddressBook", @"/var/mobile/Library/Alarms", @"/var/mobile/Library/Calendar", @"/var/mobile/Library/CallHistoryDB", @"/var/mobile/Library/Carousel", @"/var/mobile/Library/Health", @"/var/mobile/Library/Maps", @"/var/mobile/Library/MapsHistory.plist", @"/var/mobile/Library/NanoMailKit", @"/var/mobile/Library/NanoMusicSync", @"/var/mobile/Library/NanoNotes/DemoBackup/NotesLocalDemoData", @"/var/mobile/Library/NanoPasses", @"/var/mobile/Library/NanoPodcasts", @"/var/mobile/Library/NanoPhotos", @"/var/mobile/Library/NanoWeatherDemo", @"/var/mobile/Library/News", @"/var/mobile/Library/RetailDemo", @"/var/mobile/Library/Reminders", @"/var/mobile/Library/SMS", @"/var/mobile/Library/UserConfigurationProfiles", @"/var/mobile/Library/Preferences/.GlobalPreferences.plist", @"/var/mobile/Library/Preferences/.GlobalPreferences_m.plist", @"/var/mobile/Library/Preferences/com.apple.Accessibility.plist", @"/var/mobile/Library/Preferences/com.apple.ActivitySharing.plist", @"/var/mobile/Library/Preferences/com.apple.AppleMediaServices.plist", @"/var/mobile/Library/Preferences/com.apple.assistant.backedup.plist", @"/var/mobile/Library/Preferences/com.apple.assistant.nano.plist", @"/var/mobile/Library/Preferences/com.apple.assistant.support.plist", @"/var/mobile/Library/Preferences/com.apple.backboardd.plist", @"/var/mobile/Library/Preferences/com.apple.Carousel.plist", @"/var/mobile/Library/Preferences/com.apple.coremedia.plist", @"/var/mobile/Library/Preferences/com.apple.ControlCenter.plist", @"/var/mobile/Library/Preferences/com.apple.DeepBreathing.plist", @"/var/mobile/Library/Preferences/com.apple.demo-settings.plist", @"/var/mobile/Library/Preferences/com.apple.findmy.plist", @"/var/mobile/Library/Preferences/com.apple.healthd.plist", @"/var/mobile/Library/Preferences/com.apple.ids.plist", @"/var/mobile/Library/Preferences/com.apple.locationd.plist", @"/var/mobile/Library/Preferences/com.apple.mobileme.fmf1.plist", @"/var/mobile/Library/Preferences/com.apple.mobilephone.plist", @"/var/mobile/Library/Preferences/com.apple.mobilephone.speeddial.plist", @"/var/mobile/Library/Preferences/com.apple.mobiletimer.plist", @"/var/mobile/Library/Preferences/com.apple.nanobuddy.plist", @"/var/mobile/Library/Preferences/com.apple.nanolifestyle.plist", @"/var/mobile/Library/Preferences/com.apple.nanolifestyle.privacy.plist", @"/var/mobile/Library/Preferences/com.apple.NanoMediaUI.plist", @"/var/mobile/Library/Preferences/com.apple.NanoMusicSync.plist", @"/var/mobile/Library/Preferences/com.apple.NanoNotes.plist", @"/var/mobile/Library/Preferences/com.apple.nanopassbook.plist", @"/var/mobile/Library/Preferences/com.apple.nanophotos.plist", @"/var/mobile/Library/Preferences/com.apple.nanonews.sync.plist", @"/var/mobile/Library/Preferences/com.apple.Noise.plist", @"/var/mobile/Library/Preferences/com.apple.podcasts.plist", @"/var/mobile/Library/Preferences/com.apple.SessionTrackerApp.plist", @"/var/mobile/Library/Preferences/com.apple.stockholm.plist", @"/var/mobile/Library/Preferences/com.apple.system.prefs.plist", @"/var/mobile/Library/Preferences/com.apple.timed.plist", @"/var/mobile/Library/Preferences/com.apple.voicememod.plist"}];
  }

  else
  {
    v2 = +[MSDPlatform sharedInstance];
    v3 = [v2 tvOS];

    if (!v3)
    {
      return;
    }

    [MEMORY[0x277CBEA60] arrayWithObjects:{@"/var/mobile/Media/DCIM", @"/var/mobile/Media/PhotoData", @"/var/mobile/Library/Preferences/com.apple.demo-settings.plist", @"/var/MobileDevice/ProvisioningProfiles", @"/var/mobile/Library/com.apple.HeadBoard/HBDemoModeAppOrder", @"/var/mobile/Library/com.apple.HeadBoard/AppOrder.plist", @"/var/mobile/Library/Preferences/.GlobalPreferences.plist", @"/var/mobile/Library/Preferences/.GlobalPreferences_m.plist", @"/var/mobile/Library/DemoLoop", 0, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54}];
  }
  contentRootList_shared = ;

  MEMORY[0x2821F96F8]();
}

id doNotExtractList()
{
  if (doNotExtractList_onceToken != -1)
  {
    doNotExtractList_cold_1();
  }

  v1 = doNotExtractList_shared;

  return v1;
}

void __doNotExtractList_block_invoke()
{
  v0 = +[MSDPlatform sharedInstance];
  v1 = [v0 watchOS];

  if (v1)
  {
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"/var/mobile/Library/Caches/sharedCaches/com.apple.WatchListKit.NSURLCache", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/VaryState.db-shm", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/VaryState.db-wal", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/VaryState.db", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/Cache.db", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/Cache.db-wal", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/Cache.db-shm", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/fsCachedData", 0}];
  }

  else
  {
    v3 = +[MSDPlatform sharedInstance];
    v4 = [v3 tvOS];

    if (!v4)
    {
      return;
    }

    v2 = [MEMORY[0x277CBEA60] array];
  }

  doNotExtractList_shared = v2;

  MEMORY[0x2821F96F8]();
}

id systemContainerShouldRestoreList()
{
  if (systemContainerShouldRestoreList_onceToken != -1)
  {
    systemContainerShouldRestoreList_cold_1();
  }

  v1 = systemContainerShouldRestoreList_shared;

  return v1;
}

void __systemContainerShouldRestoreList_block_invoke()
{
  v0 = +[MSDPlatform sharedInstance];
  v1 = [v0 watchOS];

  if (v1)
  {
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"systemgroup.com.apple.configurationprofiles", 0}];
  }

  else
  {
    v3 = +[MSDPlatform sharedInstance];
    v4 = [v3 tvOS];

    if (!v4)
    {
      return;
    }

    v2 = [MEMORY[0x277CBEA60] array];
  }

  systemContainerShouldRestoreList_shared = v2;

  MEMORY[0x2821F96F8]();
}

id appContainerDoNotExtractList()
{
  if (appContainerDoNotExtractList_onceToken != -1)
  {
    appContainerDoNotExtractList_cold_1();
  }

  v1 = appContainerDoNotExtractList_shared;

  return v1;
}

uint64_t __appContainerDoNotExtractList_block_invoke()
{
  appContainerDoNotExtractList_shared = [MEMORY[0x277CBEA60] arrayWithObjects:{@"/.com.apple.mobile_container_manager.metadata.plist", @"/Library/Caches", @"/Library/SyncedPreferences", @"/Library/Saved Application State", @"/SystemData/com.apple.AuthenticationServices", 0}];

  return MEMORY[0x2821F96F8]();
}

id systemContainerDoNotExtractList()
{
  if (systemContainerDoNotExtractList_onceToken != -1)
  {
    systemContainerDoNotExtractList_cold_1();
  }

  v1 = systemContainerDoNotExtractList_shared;

  return v1;
}

uint64_t __systemContainerDoNotExtractList_block_invoke()
{
  systemContainerDoNotExtractList_shared = [MEMORY[0x277CBEA60] arrayWithObjects:{@"/.com.apple.mobile_container_manager.metadata.plist", @"/Library/Caches", @"/Library/SyncedPreferences", @"/Library/Saved Application State", @"/SystemData/com.apple.AuthenticationServices", 0}];

  return MEMORY[0x2821F96F8]();
}

id generateCustomDomainsPlistForSecurityRulesCheck()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"ContentRootDomain";
  v0 = contentRootList();
  v5[1] = @"SystemContainerDomain";
  v6[0] = v0;
  v1 = systemContainerShouldRestoreList();
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

BOOL OUTLINED_FUNCTION_4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_5(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

id screenSaverLogHandle()
{
  if (screenSaverLogHandle_once != -1)
  {
    screenSaverLogHandle_cold_1();
  }

  v1 = screenSaverLogHandle_currentLogObj;

  return v1;
}

uint64_t __screenSaverLogHandle_block_invoke()
{
  screenSaverLogHandle_currentLogObj = os_log_create("com.apple.MobileStoreDemo", "ScreenSaver");

  return MEMORY[0x2821F96F8]();
}

id messageLogHandle()
{
  if (messageLogHandle_once != -1)
  {
    messageLogHandle_cold_1();
  }

  v1 = messageLogHandle_messageLogObj;

  return v1;
}

uint64_t __messageLogHandle_block_invoke()
{
  messageLogHandle_messageLogObj = os_log_create("com.apple.MobileStoreDemo", "Message");

  return MEMORY[0x2821F96F8]();
}

id signpostLogHandle()
{
  if (signpostLogHandle_once != -1)
  {
    signpostLogHandle_cold_1();
  }

  v1 = signpostLogHandle_signpostLogObj;

  return v1;
}

void __signpostLogHandle_block_invoke()
{
  if (os_variant_has_internal_content())
  {
    v0 = os_log_create("com.apple.MobileStoreDemo", "Signpost");
  }

  else
  {
    v0 = MEMORY[0x277D86228];
    v1 = MEMORY[0x277D86228];
  }

  v2 = signpostLogHandle_signpostLogObj;
  signpostLogHandle_signpostLogObj = v0;
}

void MSDLogToFile(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = +[MSDLogModel sharedInstance];
  [v10 logWithFormat:v9 andArgs:&a9];
}

void sub_259B86F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259B8781C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x259CB0780](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259B87BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_259B87F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_259B8A558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259B8AD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

BOOL OUTLINED_FUNCTION_12(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_14(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_259B9350C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

BOOL OUTLINED_FUNCTION_4_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_259B99920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259B9E27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_3_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void *OUTLINED_FUNCTION_4_3(void *a1, uint64_t a2, uint64_t a3)
{

  return safeAssignError(a1, 3727741186, a3);
}

id OUTLINED_FUNCTION_9_0()
{
  v3 = *v1;
  *v0 = *v1;

  return v3;
}

void OUTLINED_FUNCTION_10_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void *OUTLINED_FUNCTION_11(uint64_t a1)
{

  return safeAssignError(v1, 3727744515, a1);
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

CFStringRef _hashToCFString(unsigned __int8 *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x64uLL, "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], a1[14], a1[15], a1[16], a1[17], a1[18], a1[19]);
  result = CFStringCreateWithCString(*MEMORY[0x277CBECE8], __str, 0x8000100u);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *_MobileAssetHashAssetData(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v4 = _hashCFType(a2);
  v5 = v4;
  if (v4)
  {
    v4 = _hashCFType(a3);
    if (v4)
    {
      for (i = 0; i != 20; ++i)
      {
        v5[i] ^= v4[i];
      }
    }
  }

  free(v4);
  return v5;
}

unsigned __int8 *_hashCFType(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CFBooleanGetTypeID())
  {
    v3 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
    data = CFBooleanGetValue(a1);
    p_data = &data;
    Length = 1;
LABEL_4:
    CC_SHA1(p_data, Length, v3);
    return v3;
  }

  if (v2 == CFStringGetTypeID())
  {
    v3 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
    v6 = CFStringGetLength(a1) + 1;
    v7 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
    CFStringGetCString(a1, v7, v6, 0x8000100u);
    CC_SHA1(v7, v6, v3);
    free(v7);
    return v3;
  }

  if (v2 == CFDateGetTypeID())
  {
    v3 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
    v11 = MEMORY[0x259CB00C0](a1);
    p_data = &v11;
    Length = 8;
    goto LABEL_4;
  }

  if (v2 == CFDataGetTypeID())
  {
    v3 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    p_data = BytePtr;
    goto LABEL_4;
  }

  if (v2 == CFArrayGetTypeID())
  {

    return _hashCFArray(a1);
  }

  if (v2 == CFDictionaryGetTypeID())
  {

    return _hashCFDictionary(a1);
  }

  if (v2 != CFNumberGetTypeID())
  {
    return 0;
  }

  return _hashCFNumber(a1);
}

CFDataRef _MobileAssetCopyFileHash(const __CFAllocator *a1, const __CFString *a2, CFStringRef theString1, uint64_t a4, void (*a5)(uint64_t, double, float), uint64_t a6)
{
  v33 = *MEMORY[0x277D85DE8];
  memset(&c, 0, sizeof(c));
  if (CFStringCompare(theString1, @"SHA-1", 0) == kCFCompareEqualTo)
  {
    v13 = CFURLCreateWithFileSystemPath(a1, a2, kCFURLPOSIXPathStyle, 0);
    if (!v13)
    {
      v11 = defaultLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        _MobileAssetCopyFileHash_cold_7();
      }

      goto LABEL_4;
    }

    v14 = v13;
    v15 = CFReadStreamCreateWithFile(a1, v13);
    if (!v15)
    {
      v25 = defaultLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        _MobileAssetCopyFileHash_cold_6();
      }

      v12 = 0;
      goto LABEL_40;
    }

    v16 = v15;
    if (CFReadStreamOpen(v15))
    {
      if (a5)
      {
        a5(a6, 0.0, -1.0);
      }

      CC_SHA1_Init(&c);
      v17 = malloc_type_calloc(1uLL, 0x10000uLL, 0x100004077774924uLL);
      if (v17)
      {
        v18 = v17;
        v30.tv_sec = 0;
        *&v30.tv_usec = 0;
        gettimeofday(&v30, 0);
        v19 = CFReadStreamRead(v16, v18, 0x10000);
        if (v19 < 1)
        {
LABEL_18:
          CC_SHA1_Final(md, &c);
          v23 = CFDataCreate(a1, md, 20);
          if (v23)
          {
            v12 = v23;
            v24 = _hashToCFString(md);
            if (v24)
            {
              CFRelease(v24);
            }

            if (a5)
            {
              a5(a6, 1.0, -1.0);
            }

            goto LABEL_38;
          }

          v27 = defaultLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            _MobileAssetCopyFileHash_cold_3();
          }
        }

        else
        {
          v20 = v19;
          v21 = 0;
          while (1)
          {
            CC_SHA1_Update(&c, v18, v20);
            v21 += v20;
            v22.n128_u32[0] = -1.0;
            if (a4)
            {
              v22.n128_f32[0] = v21 / a4;
            }

            if (a5 && (a5)(a6, v22, -1.0))
            {
              break;
            }

            v20 = CFReadStreamRead(v16, v18, 0x10000);
            if (v20 <= 0)
            {
              goto LABEL_18;
            }
          }

          v27 = defaultLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            _MobileAssetCopyFileHash_cold_2();
          }
        }

        v12 = 0;
LABEL_38:
        free(v18);
        goto LABEL_39;
      }

      v26 = defaultLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        _MobileAssetCopyFileHash_cold_4();
      }
    }

    else
    {
      v26 = defaultLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        _MobileAssetCopyFileHash_cold_5();
      }
    }

    v12 = 0;
LABEL_39:
    CFReadStreamClose(v16);
    CFRelease(v16);
LABEL_40:
    CFRelease(v14);
    goto LABEL_41;
  }

  v11 = defaultLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    _MobileAssetCopyFileHash_cold_1();
  }

LABEL_4:

  v12 = 0;
LABEL_41:
  v28 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t _hashCFArray(const __CFArray *a1)
{
  if (!CFArrayGetCount(a1))
  {
    return 0;
  }

  memset(&c, 0, sizeof(c));
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v3 = Count;
    v4 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      v16.location = 0;
      v16.length = v3;
      if (CFArrayGetCountOfValue(a1, v16, ValueAtIndex) >= 2)
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_6;
      }
    }

    v12 = defaultLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_259B7D000, v12, OS_LOG_TYPE_DEFAULT, "Failing to hash due to duplicate array entries", v14, 2u);
    }

    return 0;
  }

LABEL_6:
  v6 = _hashCFType(@"array");
  CC_SHA1_Init(&c);
  if (CFArrayGetCount(a1) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = CFArrayGetValueAtIndex(a1, v7);
      v9 = _hashCFType(v8);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      CC_SHA1_Update(&c, v9, 0x14u);
      CC_SHA1_Final(v10, &c);
      if (v6)
      {
        for (i = 0; i != 20; ++i)
        {
          *(v6 + i) ^= v10[i];
        }
      }

      free(v10);
      ++v7;
    }

    while (CFArrayGetCount(a1) > v7);
  }

  return v6;
}

uint64_t _hashCFDictionary(const __CFDictionary *a1)
{
  if (!CFDictionaryGetCount(a1))
  {
    return 0;
  }

  memset(&v12, 0, sizeof(v12));
  v2 = _hashCFType(@"dictionary");
  Count = CFDictionaryGetCount(a1);
  v4 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  CFDictionaryGetKeysAndValues(a1, v4, 0);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v6 = _hashCFType(v4[i]);
      Value = CFDictionaryGetValue(a1, v4[i]);
      v8 = _hashCFType(Value);
      CC_SHA1_Init(&v12);
      v9 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
      if (v6)
      {
        CC_SHA1_Update(&v12, v6, 0x14u);
        free(v6);
      }

      if (v8)
      {
        CC_SHA1_Update(&v12, v8, 0x14u);
        free(v8);
      }

      CC_SHA1_Final(v9, &v12);
      if (v2 && v9)
      {
        for (j = 0; j != 20; ++j)
        {
          *(v2 + j) ^= v9[j];
        }
      }

      free(v9);
    }
  }

  free(v4);
  return v2;
}

unsigned __int8 *_hashCFNumber(const __CFNumber *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
  if ((valuePtr + 1) >= 0xE)
  {
    v3 = 8;
  }

  else
  {
    v3 = 4;
  }

  if ((valuePtr + 1) < 0xE)
  {
    v4 = kCFNumberSInt32Type;
  }

  else
  {
    v4 = kCFNumberSInt64Type;
  }

  v5 = malloc_type_calloc(1uLL, v3, 0x100004077774924uLL);
  CFNumberGetValue(a1, v4, v5);
  CC_SHA1(v5, v3, v2);
  free(v5);
  return v2;
}

void OUTLINED_FUNCTION_2_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void _MobileAssetCopyFileHash_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void _MobileAssetCopyFileHash_cold_5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_3(&dword_259B7D000, v0, v1, "Can't open read stream %{public}@ *** %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void _MobileAssetCopyFileHash_cold_6()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_3(&dword_259B7D000, v0, v1, "Can't create read stream, %{public}@ %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void _MobileAssetCopyFileHash_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}