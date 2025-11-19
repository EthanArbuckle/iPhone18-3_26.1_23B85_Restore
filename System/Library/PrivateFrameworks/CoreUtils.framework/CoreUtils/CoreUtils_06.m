Class initFBSDisplayLayoutMonitor()
{
  if (FrontBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&FrontBoardServicesLibrary_sOnce, &__block_literal_global_1299);
  }

  result = objc_getClass("FBSDisplayLayoutMonitor");
  classFBSDisplayLayoutMonitor = result;
  getFBSDisplayLayoutMonitorClass[0] = FBSDisplayLayoutMonitorFunction;
  return result;
}

void *__FrontBoardServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
  FrontBoardServicesLibrary_sLib = result;
  return result;
}

Class initFBSDisplayLayoutMonitorConfiguration()
{
  if (FrontBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&FrontBoardServicesLibrary_sOnce, &__block_literal_global_1299);
  }

  result = objc_getClass("FBSDisplayLayoutMonitorConfiguration");
  classFBSDisplayLayoutMonitorConfiguration = result;
  getFBSDisplayLayoutMonitorConfigurationClass[0] = FBSDisplayLayoutMonitorConfigurationFunction;
  return result;
}

id initValSBSDisplayLayoutElementTodayViewIdentifier()
{
  if (softLinkOnceSBSDisplayLayoutElementTodayViewIdentifier != -1)
  {
    dispatch_once(&softLinkOnceSBSDisplayLayoutElementTodayViewIdentifier, &__block_literal_global_1361);
  }

  v1 = constantValSBSDisplayLayoutElementTodayViewIdentifier;

  return v1;
}

void __initValSBSDisplayLayoutElementTodayViewIdentifier_block_invoke()
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_1295);
  }

  v0 = dlsym(SpringBoardServicesLibrary_sLib, "SBSDisplayLayoutElementTodayViewIdentifier");
  if (v0)
  {
    objc_storeStrong(&constantValSBSDisplayLayoutElementTodayViewIdentifier, *v0);
  }

  getSBSDisplayLayoutElementTodayViewIdentifier = SBSDisplayLayoutElementTodayViewIdentifierFunction;
}

void *__SpringBoardServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices", 2);
  SpringBoardServicesLibrary_sLib = result;
  return result;
}

id initValSBSDisplayLayoutElementSpotlightIdentifier()
{
  if (softLinkOnceSBSDisplayLayoutElementSpotlightIdentifier != -1)
  {
    dispatch_once(&softLinkOnceSBSDisplayLayoutElementSpotlightIdentifier, &__block_literal_global_1358);
  }

  v1 = constantValSBSDisplayLayoutElementSpotlightIdentifier;

  return v1;
}

void __initValSBSDisplayLayoutElementSpotlightIdentifier_block_invoke()
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_1295);
  }

  v0 = dlsym(SpringBoardServicesLibrary_sLib, "SBSDisplayLayoutElementSpotlightIdentifier");
  if (v0)
  {
    objc_storeStrong(&constantValSBSDisplayLayoutElementSpotlightIdentifier, *v0);
  }

  getSBSDisplayLayoutElementSpotlightIdentifier = SBSDisplayLayoutElementSpotlightIdentifierFunction;
}

id initValSBSDisplayLayoutElementPasscodeIdentifier()
{
  if (softLinkOnceSBSDisplayLayoutElementPasscodeIdentifier != -1)
  {
    dispatch_once(&softLinkOnceSBSDisplayLayoutElementPasscodeIdentifier, &__block_literal_global_1355);
  }

  v1 = constantValSBSDisplayLayoutElementPasscodeIdentifier;

  return v1;
}

void __initValSBSDisplayLayoutElementPasscodeIdentifier_block_invoke()
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_1295);
  }

  v0 = dlsym(SpringBoardServicesLibrary_sLib, "SBSDisplayLayoutElementPasscodeIdentifier");
  if (v0)
  {
    objc_storeStrong(&constantValSBSDisplayLayoutElementPasscodeIdentifier, *v0);
  }

  getSBSDisplayLayoutElementPasscodeIdentifier = SBSDisplayLayoutElementPasscodeIdentifierFunction;
}

id initValSBSDisplayLayoutElementNowPlayingIdentifier()
{
  if (softLinkOnceSBSDisplayLayoutElementNowPlayingIdentifier != -1)
  {
    dispatch_once(&softLinkOnceSBSDisplayLayoutElementNowPlayingIdentifier, &__block_literal_global_1352);
  }

  v1 = constantValSBSDisplayLayoutElementNowPlayingIdentifier;

  return v1;
}

void __initValSBSDisplayLayoutElementNowPlayingIdentifier_block_invoke()
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_1295);
  }

  v0 = dlsym(SpringBoardServicesLibrary_sLib, "SBSDisplayLayoutElementNowPlayingIdentifier");
  if (v0)
  {
    objc_storeStrong(&constantValSBSDisplayLayoutElementNowPlayingIdentifier, *v0);
  }

  getSBSDisplayLayoutElementNowPlayingIdentifier = SBSDisplayLayoutElementNowPlayingIdentifierFunction;
}

id initValSBSDisplayLayoutElementLoginIdentifier()
{
  if (softLinkOnceSBSDisplayLayoutElementLoginIdentifier != -1)
  {
    dispatch_once(&softLinkOnceSBSDisplayLayoutElementLoginIdentifier, &__block_literal_global_1349);
  }

  v1 = constantValSBSDisplayLayoutElementLoginIdentifier;

  return v1;
}

void __initValSBSDisplayLayoutElementLoginIdentifier_block_invoke()
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_1295);
  }

  v0 = dlsym(SpringBoardServicesLibrary_sLib, "SBSDisplayLayoutElementLoginIdentifier");
  if (v0)
  {
    objc_storeStrong(&constantValSBSDisplayLayoutElementLoginIdentifier, *v0);
  }

  getSBSDisplayLayoutElementLoginIdentifier = SBSDisplayLayoutElementLoginIdentifierFunction;
}

id initValSBSDisplayLayoutElementLockScreenNavigationIdentifier()
{
  if (softLinkOnceSBSDisplayLayoutElementLockScreenNavigationIdentifier != -1)
  {
    dispatch_once(&softLinkOnceSBSDisplayLayoutElementLockScreenNavigationIdentifier, &__block_literal_global_1346);
  }

  v1 = constantValSBSDisplayLayoutElementLockScreenNavigationIdentifier;

  return v1;
}

void __initValSBSDisplayLayoutElementLockScreenNavigationIdentifier_block_invoke()
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_1295);
  }

  v0 = dlsym(SpringBoardServicesLibrary_sLib, "SBSDisplayLayoutElementLockScreenNavigationIdentifier");
  if (v0)
  {
    objc_storeStrong(&constantValSBSDisplayLayoutElementLockScreenNavigationIdentifier, *v0);
  }

  getSBSDisplayLayoutElementLockScreenNavigationIdentifier = SBSDisplayLayoutElementLockScreenNavigationIdentifierFunction;
}

id initValSBSDisplayLayoutElementHomeScreenIdentifier()
{
  if (softLinkOnceSBSDisplayLayoutElementHomeScreenIdentifier != -1)
  {
    dispatch_once(&softLinkOnceSBSDisplayLayoutElementHomeScreenIdentifier, &__block_literal_global_1343);
  }

  v1 = constantValSBSDisplayLayoutElementHomeScreenIdentifier;

  return v1;
}

void __initValSBSDisplayLayoutElementHomeScreenIdentifier_block_invoke()
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_1295);
  }

  v0 = dlsym(SpringBoardServicesLibrary_sLib, "SBSDisplayLayoutElementHomeScreenIdentifier");
  if (v0)
  {
    objc_storeStrong(&constantValSBSDisplayLayoutElementHomeScreenIdentifier, *v0);
  }

  getSBSDisplayLayoutElementHomeScreenIdentifier = SBSDisplayLayoutElementHomeScreenIdentifierFunction;
}

id initValSBSDisplayLayoutElementCarPlayOEMIdentifier()
{
  if (softLinkOnceSBSDisplayLayoutElementCarPlayOEMIdentifier != -1)
  {
    dispatch_once(&softLinkOnceSBSDisplayLayoutElementCarPlayOEMIdentifier, &__block_literal_global_1340);
  }

  v1 = constantValSBSDisplayLayoutElementCarPlayOEMIdentifier;

  return v1;
}

void __initValSBSDisplayLayoutElementCarPlayOEMIdentifier_block_invoke()
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_1295);
  }

  v0 = dlsym(SpringBoardServicesLibrary_sLib, "SBSDisplayLayoutElementCarPlayOEMIdentifier");
  if (v0)
  {
    objc_storeStrong(&constantValSBSDisplayLayoutElementCarPlayOEMIdentifier, *v0);
  }

  getSBSDisplayLayoutElementCarPlayOEMIdentifier = SBSDisplayLayoutElementCarPlayOEMIdentifierFunction;
}

id initValSBSDisplayLayoutElementAppSwitcherIdentifier()
{
  if (softLinkOnceSBSDisplayLayoutElementAppSwitcherIdentifier != -1)
  {
    dispatch_once(&softLinkOnceSBSDisplayLayoutElementAppSwitcherIdentifier, &__block_literal_global_1337);
  }

  v1 = constantValSBSDisplayLayoutElementAppSwitcherIdentifier;

  return v1;
}

void __initValSBSDisplayLayoutElementAppSwitcherIdentifier_block_invoke()
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_1295);
  }

  v0 = dlsym(SpringBoardServicesLibrary_sLib, "SBSDisplayLayoutElementAppSwitcherIdentifier");
  if (v0)
  {
    objc_storeStrong(&constantValSBSDisplayLayoutElementAppSwitcherIdentifier, *v0);
  }

  getSBSDisplayLayoutElementAppSwitcherIdentifier = SBSDisplayLayoutElementAppSwitcherIdentifierFunction;
}

id initValFBSDisplayLayoutElementSiriIdentifier()
{
  if (softLinkOnceFBSDisplayLayoutElementSiriIdentifier != -1)
  {
    dispatch_once(&softLinkOnceFBSDisplayLayoutElementSiriIdentifier, &__block_literal_global_1334);
  }

  v1 = constantValFBSDisplayLayoutElementSiriIdentifier;

  return v1;
}

void __initValFBSDisplayLayoutElementSiriIdentifier_block_invoke()
{
  if (FrontBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&FrontBoardServicesLibrary_sOnce, &__block_literal_global_1299);
  }

  v0 = dlsym(FrontBoardServicesLibrary_sLib, "FBSDisplayLayoutElementSiriIdentifier");
  if (v0)
  {
    objc_storeStrong(&constantValFBSDisplayLayoutElementSiriIdentifier, *v0);
  }

  getFBSDisplayLayoutElementSiriIdentifier = FBSDisplayLayoutElementSiriIdentifierFunction;
}

id initValFBSDisplayLayoutElementNotificationCenterIdentifier()
{
  if (softLinkOnceFBSDisplayLayoutElementNotificationCenterIdentifier != -1)
  {
    dispatch_once(&softLinkOnceFBSDisplayLayoutElementNotificationCenterIdentifier, &__block_literal_global_1331);
  }

  v1 = constantValFBSDisplayLayoutElementNotificationCenterIdentifier;

  return v1;
}

void __initValFBSDisplayLayoutElementNotificationCenterIdentifier_block_invoke()
{
  if (FrontBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&FrontBoardServicesLibrary_sOnce, &__block_literal_global_1299);
  }

  v0 = dlsym(FrontBoardServicesLibrary_sLib, "FBSDisplayLayoutElementNotificationCenterIdentifier");
  if (v0)
  {
    objc_storeStrong(&constantValFBSDisplayLayoutElementNotificationCenterIdentifier, *v0);
  }

  getFBSDisplayLayoutElementNotificationCenterIdentifier = FBSDisplayLayoutElementNotificationCenterIdentifierFunction;
}

id initValFBSDisplayLayoutElementLockScreenIdentifier()
{
  if (softLinkOnceFBSDisplayLayoutElementLockScreenIdentifier != -1)
  {
    dispatch_once(&softLinkOnceFBSDisplayLayoutElementLockScreenIdentifier, &__block_literal_global_1328);
  }

  v1 = constantValFBSDisplayLayoutElementLockScreenIdentifier;

  return v1;
}

void __initValFBSDisplayLayoutElementLockScreenIdentifier_block_invoke()
{
  if (FrontBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&FrontBoardServicesLibrary_sOnce, &__block_literal_global_1299);
  }

  v0 = dlsym(FrontBoardServicesLibrary_sLib, "FBSDisplayLayoutElementLockScreenIdentifier");
  if (v0)
  {
    objc_storeStrong(&constantValFBSDisplayLayoutElementLockScreenIdentifier, *v0);
  }

  getFBSDisplayLayoutElementLockScreenIdentifier = FBSDisplayLayoutElementLockScreenIdentifierFunction;
}

id initValFBSDisplayLayoutElementControlCenterIdentifier()
{
  if (softLinkOnceFBSDisplayLayoutElementControlCenterIdentifier != -1)
  {
    dispatch_once(&softLinkOnceFBSDisplayLayoutElementControlCenterIdentifier, &__block_literal_global_1325);
  }

  v1 = constantValFBSDisplayLayoutElementControlCenterIdentifier;

  return v1;
}

void __initValFBSDisplayLayoutElementControlCenterIdentifier_block_invoke()
{
  if (FrontBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&FrontBoardServicesLibrary_sOnce, &__block_literal_global_1299);
  }

  v0 = dlsym(FrontBoardServicesLibrary_sLib, "FBSDisplayLayoutElementControlCenterIdentifier");
  if (v0)
  {
    objc_storeStrong(&constantValFBSDisplayLayoutElementControlCenterIdentifier, *v0);
  }

  getFBSDisplayLayoutElementControlCenterIdentifier = FBSDisplayLayoutElementControlCenterIdentifierFunction;
}

uint64_t _systemConfigChanged(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[68])
  {
    return [a3 _systemConfigChanged:a2 initial:0];
  }

  return result;
}

uint64_t initSBSGetScreenLockStatus(uint64_t a1)
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_1295);
  }

  v2 = dlsym(SpringBoardServicesLibrary_sLib, "SBSGetScreenLockStatus");
  softLinkSBSGetScreenLockStatus = v2;

  return (v2)(a1);
}

uint64_t initValkCTCellMonitorMCC()
{
  if (CoreCDPLibrary_sOnce != -1)
  {
    dispatch_once(&CoreCDPLibrary_sOnce, &__block_literal_global_1236);
  }

  v0 = dlsym(CoreCDPLibrary_sLib, "kCTCellMonitorMCC");
  if (v0)
  {
    result = *v0;
    constantValkCTCellMonitorMCC = result;
  }

  else
  {
    result = constantValkCTCellMonitorMCC;
  }

  getkCTCellMonitorMCC[0] = kCTCellMonitorMCCFunction;
  return result;
}

void *__CoreCDPLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreCDP.framework/CoreCDP", 2);
  CoreCDPLibrary_sLib = result;
  return result;
}

uint64_t init_CTServerConnectionCopyISOForMCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (CoreTelephonyLibrary_sOnce != -1)
  {
    dispatch_once(&CoreTelephonyLibrary_sOnce, &__block_literal_global_1285);
  }

  v6 = dlsym(CoreTelephonyLibrary_sLib, "_CTServerConnectionCopyISOForMCC");
  softLink_CTServerConnectionCopyISOForMCC[0] = v6;

  return (v6)(a1, a2, a3);
}

void *__CoreTelephonyLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony", 2);
  CoreTelephonyLibrary_sLib = result;
  return result;
}

uint64_t init_CTServerConnectionCreateOnTargetQueue(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = CoreTelephonyLibrary_sOnce;
  v8 = a4;
  v9 = a3;
  if (v7 != -1)
  {
    dispatch_once(&CoreTelephonyLibrary_sOnce, &__block_literal_global_1285);
  }

  softLink_CTServerConnectionCreateOnTargetQueue[0] = dlsym(CoreTelephonyLibrary_sLib, "_CTServerConnectionCreateOnTargetQueue");
  v10 = (softLink_CTServerConnectionCreateOnTargetQueue[0])(a1, a2, v9, v8);

  return v10;
}

Class initRTRoutineManager()
{
  if (CoreRoutineLibrary_sOnce != -1)
  {
    dispatch_once(&CoreRoutineLibrary_sOnce, &__block_literal_global_1289);
  }

  result = objc_getClass("RTRoutineManager");
  classRTRoutineManager = result;
  getRTRoutineManagerClass[0] = RTRoutineManagerFunction;
  return result;
}

void *__CoreRoutineLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreRoutine.framework/CoreRoutine", 2);
  CoreRoutineLibrary_sLib = result;
  return result;
}

Class initCoreTelephonyClient()
{
  if (CoreTelephonyLibrary_sOnce != -1)
  {
    dispatch_once(&CoreTelephonyLibrary_sOnce, &__block_literal_global_1285);
  }

  result = objc_getClass("CoreTelephonyClient");
  classCoreTelephonyClient = result;
  getCoreTelephonyClientClass[0] = CoreTelephonyClientFunction;
  return result;
}

id logger_8205()
{
  if (sCUOSLogCreateOnce_logger_8224 != -1)
  {
    dispatch_once(&sCUOSLogCreateOnce_logger_8224, &__block_literal_global_1271);
  }

  v1 = sCUOSLogHandle_logger_8225;

  return v1;
}

Class initAKAccountManager_8216()
{
  if (AuthKitLibrary_sOnce_8217 != -1)
  {
    dispatch_once(&AuthKitLibrary_sOnce_8217, &__block_literal_global_1281);
  }

  result = objc_getClass("AKAccountManager");
  classAKAccountManager_8218 = result;
  getAKAccountManagerClass_8208[0] = AKAccountManagerFunction_8220;
  return result;
}

void *__AuthKitLibrary_block_invoke_8222()
{
  result = dlopen("/System/Library/PrivateFrameworks/AuthKit.framework/AuthKit", 2);
  AuthKitLibrary_sLib_8223 = result;
  return result;
}

uint64_t __logger_block_invoke_8227()
{
  v0 = os_log_create("com.apple.CoreUtils", "CUSystemMonitor");
  v1 = sCUOSLogHandle_logger_8225;
  sCUOSLogHandle_logger_8225 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

Class initACAccountStore_8231()
{
  if (AccountsLibrary_sOnce_8232 != -1)
  {
    dispatch_once(&AccountsLibrary_sOnce_8232, &__block_literal_global_1277);
  }

  result = objc_getClass("ACAccountStore");
  classACAccountStore_8233 = result;
  getACAccountStoreClass_8229[0] = ACAccountStoreFunction_8235;
  return result;
}

void *__AccountsLibrary_block_invoke_8237()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 2);
  AccountsLibrary_sLib_8238 = result;
  return result;
}

void *__AppleAccountLibrary_block_invoke_8240()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleAccount.framework/AppleAccount", 2);
  AppleAccountLibrary_sLib_8241 = result;
  return result;
}

Class initCMDeviceOrientationManager()
{
  if (CoreMotionLibrary_sOnce != -1)
  {
    dispatch_once(&CoreMotionLibrary_sOnce, &__block_literal_global_1258);
  }

  result = objc_getClass("CMDeviceOrientationManager");
  classCMDeviceOrientationManager = result;
  getCMDeviceOrientationManagerClass[0] = CMDeviceOrientationManagerFunction;
  return result;
}

void *__CoreMotionLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreMotion.framework/CoreMotion", 2);
  CoreMotionLibrary_sLib = result;
  return result;
}

Class initCMMotionActivityManager()
{
  if (CoreMotionLibrary_sOnce != -1)
  {
    dispatch_once(&CoreMotionLibrary_sOnce, &__block_literal_global_1258);
  }

  result = objc_getClass("CMMotionActivityManager");
  classCMMotionActivityManager = result;
  getCMMotionActivityManagerClass[0] = CMMotionActivityManagerFunction;
  return result;
}

Class initFMFSession()
{
  if (FMFLibrary_sOnce != -1)
  {
    dispatch_once(&FMFLibrary_sOnce, &__block_literal_global_1250);
  }

  result = objc_getClass("FMFSession");
  classFMFSession = result;
  getFMFSessionClass[0] = FMFSessionFunction;
  return result;
}

void *__FMFLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FMF.framework/FMF", 2);
  FMFLibrary_sLib = result;
  return result;
}

id initValFMFDevicesChangedNotification()
{
  if (softLinkOnceFMFDevicesChangedNotification != -1)
  {
    dispatch_once(&softLinkOnceFMFDevicesChangedNotification, &__block_literal_global_1253);
  }

  v1 = constantValFMFDevicesChangedNotification;

  return v1;
}

void __initValFMFDevicesChangedNotification_block_invoke()
{
  if (FMFLibrary_sOnce != -1)
  {
    dispatch_once(&FMFLibrary_sOnce, &__block_literal_global_1250);
  }

  v0 = dlsym(FMFLibrary_sLib, "FMFDevicesChangedNotification");
  if (v0)
  {
    objc_storeStrong(&constantValFMFDevicesChangedNotification, *v0);
  }

  getFMFDevicesChangedNotification = FMFDevicesChangedNotificationFunction;
}

id initValFMFMeDeviceChangedNotification()
{
  if (softLinkOnceFMFMeDeviceChangedNotification != -1)
  {
    dispatch_once(&softLinkOnceFMFMeDeviceChangedNotification, &__block_literal_global_1247);
  }

  v1 = constantValFMFMeDeviceChangedNotification;

  return v1;
}

void __initValFMFMeDeviceChangedNotification_block_invoke()
{
  if (FMFLibrary_sOnce != -1)
  {
    dispatch_once(&FMFLibrary_sOnce, &__block_literal_global_1250);
  }

  v0 = dlsym(FMFLibrary_sLib, "FMFMeDeviceChangedNotification");
  if (v0)
  {
    objc_storeStrong(&constantValFMFMeDeviceChangedNotification, *v0);
  }

  getFMFMeDeviceChangedNotification = FMFMeDeviceChangedNotificationFunction;
}

Class initCUFindMyLocateMeDeviceMonitor()
{
  if (CoreUtilsUILibrary_sOnce != -1)
  {
    dispatch_once(&CoreUtilsUILibrary_sOnce, &__block_literal_global_1244);
  }

  result = objc_getClass("CUFindMyLocateMeDeviceMonitor");
  classCUFindMyLocateMeDeviceMonitor = result;
  getCUFindMyLocateMeDeviceMonitorClass[0] = CUFindMyLocateMeDeviceMonitorFunction;
  return result;
}

void *__CoreUtilsUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreUtilsUI.framework/CoreUtilsUI", 2);
  CoreUtilsUILibrary_sLib = result;
  return result;
}

Class initCDPContext()
{
  if (CoreCDPLibrary_sOnce != -1)
  {
    dispatch_once(&CoreCDPLibrary_sOnce, &__block_literal_global_1236);
  }

  result = objc_getClass("CDPContext");
  classCDPContext = result;
  getCDPContextClass[0] = CDPContextFunction;
  return result;
}

Class initCDPStateController()
{
  if (CoreCDPLibrary_sOnce != -1)
  {
    dispatch_once(&CoreCDPLibrary_sOnce, &__block_literal_global_1236);
  }

  result = objc_getClass("CDPStateController");
  classCDPStateController = result;
  getCDPStateControllerClass[0] = CDPStateControllerFunction;
  return result;
}

uint64_t initValCDPManateeAvailabilityNotification()
{
  if (CoreCDPLibrary_sOnce != -1)
  {
    dispatch_once(&CoreCDPLibrary_sOnce, &__block_literal_global_1236);
  }

  v0 = dlsym(CoreCDPLibrary_sLib, "CDPManateeAvailabilityNotification");
  if (v0)
  {
    result = *v0;
    constantValCDPManateeAvailabilityNotification = result;
  }

  else
  {
    result = constantValCDPManateeAvailabilityNotification;
  }

  getCDPManateeAvailabilityNotification[0] = CDPManateeAvailabilityNotificationFunction;
  return result;
}

Class initCLLocationManager()
{
  if (CoreLocationLibrary_sOnce != -1)
  {
    dispatch_once(&CoreLocationLibrary_sOnce, &__block_literal_global_1225);
  }

  result = objc_getClass("CLLocationManager");
  classCLLocationManager = result;
  getCLLocationManagerClass[0] = CLLocationManagerFunction;
  return result;
}

void *__CoreLocationLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreLocation.framework/CoreLocation", 2);
  CoreLocationLibrary_sLib = result;
  return result;
}

uint64_t *initValkCLLocationAccuracyHundredMeters()
{
  if (CoreLocationLibrary_sOnce != -1)
  {
    dispatch_once(&CoreLocationLibrary_sOnce, &__block_literal_global_1225);
  }

  result = dlsym(CoreLocationLibrary_sLib, "kCLLocationAccuracyHundredMeters");
  if (result)
  {
    constantValkCLLocationAccuracyHundredMeters = *result;
  }

  getkCLLocationAccuracyHundredMeters[0] = kCLLocationAccuracyHundredMetersFunction;
  return result;
}

Class initFAFamilyMember()
{
  if (FamilyCircleLibrary_sOnce != -1)
  {
    dispatch_once(&FamilyCircleLibrary_sOnce, &__block_literal_global_1220);
  }

  result = objc_getClass("FAFamilyMember");
  classFAFamilyMember = result;
  getFAFamilyMemberClass[0] = FAFamilyMemberFunction;
  return result;
}

void *__FamilyCircleLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FamilyCircle.framework/FamilyCircle", 2);
  FamilyCircleLibrary_sLib = result;
  return result;
}

Class initFAFetchFamilyCircleRequest()
{
  if (FamilyCircleLibrary_sOnce != -1)
  {
    dispatch_once(&FamilyCircleLibrary_sOnce, &__block_literal_global_1220);
  }

  result = objc_getClass("FAFetchFamilyCircleRequest");
  classFAFetchFamilyCircleRequest = result;
  getFAFetchFamilyCircleRequestClass[0] = FAFetchFamilyCircleRequestFunction;
  return result;
}

uint64_t initBYSetupAssistantNeedsToRun()
{
  if (SetupAssistantLibrary_sOnce != -1)
  {
    dispatch_once(&SetupAssistantLibrary_sOnce, &__block_literal_global_1216);
  }

  v0 = dlsym(SetupAssistantLibrary_sLib, "BYSetupAssistantNeedsToRun");
  softLinkBYSetupAssistantNeedsToRun[0] = v0;

  return v0();
}

void *__SetupAssistantLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SetupAssistant.framework/SetupAssistant", 2);
  SetupAssistantLibrary_sLib = result;
  return result;
}

uint64_t initValBYSetupAssistantFinishedDarwinNotification()
{
  if (SetupAssistantLibrary_sOnce != -1)
  {
    dispatch_once(&SetupAssistantLibrary_sOnce, &__block_literal_global_1216);
  }

  v0 = dlsym(SetupAssistantLibrary_sLib, "BYSetupAssistantFinishedDarwinNotification");
  if (v0)
  {
    result = *v0;
    constantValBYSetupAssistantFinishedDarwinNotification = result;
  }

  else
  {
    result = constantValBYSetupAssistantFinishedDarwinNotification;
  }

  getBYSetupAssistantFinishedDarwinNotification[0] = BYSetupAssistantFinishedDarwinNotificationFunction;
  return result;
}

id initValTUCallCenterVideoCallStatusChangedNotification()
{
  if (softLinkOnceTUCallCenterVideoCallStatusChangedNotification != -1)
  {
    dispatch_once(&softLinkOnceTUCallCenterVideoCallStatusChangedNotification, &__block_literal_global_1212);
  }

  v1 = constantValTUCallCenterVideoCallStatusChangedNotification;

  return v1;
}

void __initValTUCallCenterVideoCallStatusChangedNotification_block_invoke()
{
  if (TelephonyUtilitiesLibrary_sOnce != -1)
  {
    dispatch_once(&TelephonyUtilitiesLibrary_sOnce, &__block_literal_global_1203);
  }

  v0 = dlsym(TelephonyUtilitiesLibrary_sLib, "TUCallCenterVideoCallStatusChangedNotification");
  if (v0)
  {
    objc_storeStrong(&constantValTUCallCenterVideoCallStatusChangedNotification, *v0);
  }

  getTUCallCenterVideoCallStatusChangedNotification = TUCallCenterVideoCallStatusChangedNotificationFunction;
}

void *__TelephonyUtilitiesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/TelephonyUtilities.framework/TelephonyUtilities", 2);
  TelephonyUtilitiesLibrary_sLib = result;
  return result;
}

id initValTUCallCenterCallConnectedNotification()
{
  if (softLinkOnceTUCallCenterCallConnectedNotification != -1)
  {
    dispatch_once(&softLinkOnceTUCallCenterCallConnectedNotification, &__block_literal_global_1209);
  }

  v1 = constantValTUCallCenterCallConnectedNotification;

  return v1;
}

void __initValTUCallCenterCallConnectedNotification_block_invoke()
{
  if (TelephonyUtilitiesLibrary_sOnce != -1)
  {
    dispatch_once(&TelephonyUtilitiesLibrary_sOnce, &__block_literal_global_1203);
  }

  v0 = dlsym(TelephonyUtilitiesLibrary_sLib, "TUCallCenterCallConnectedNotification");
  if (v0)
  {
    objc_storeStrong(&constantValTUCallCenterCallConnectedNotification, *v0);
  }

  getTUCallCenterCallConnectedNotification = TUCallCenterCallConnectedNotificationFunction;
}

id initValTUCallCenterCallStatusChangedNotification()
{
  if (softLinkOnceTUCallCenterCallStatusChangedNotification != -1)
  {
    dispatch_once(&softLinkOnceTUCallCenterCallStatusChangedNotification, &__block_literal_global_1206);
  }

  v1 = constantValTUCallCenterCallStatusChangedNotification;

  return v1;
}

void __initValTUCallCenterCallStatusChangedNotification_block_invoke()
{
  if (TelephonyUtilitiesLibrary_sOnce != -1)
  {
    dispatch_once(&TelephonyUtilitiesLibrary_sOnce, &__block_literal_global_1203);
  }

  v0 = dlsym(TelephonyUtilitiesLibrary_sLib, "TUCallCenterCallStatusChangedNotification");
  if (v0)
  {
    objc_storeStrong(&constantValTUCallCenterCallStatusChangedNotification, *v0);
  }

  getTUCallCenterCallStatusChangedNotification = TUCallCenterCallStatusChangedNotificationFunction;
}

Class initTUCallCenter()
{
  if (TelephonyUtilitiesLibrary_sOnce != -1)
  {
    dispatch_once(&TelephonyUtilitiesLibrary_sOnce, &__block_literal_global_1203);
  }

  result = objc_getClass("TUCallCenter");
  classTUCallCenter = result;
  getTUCallCenterClass[0] = TUCallCenterFunction;
  return result;
}

void initAnalyticsSendEvent_8687(void *a1, void *a2)
{
  v3 = CoreAnalyticsLibrary_sOnce_8668;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    dispatch_once(&CoreAnalyticsLibrary_sOnce_8668, &__block_literal_global_8669);
  }

  softLinkAnalyticsSendEvent_8682[0] = dlsym(CoreAnalyticsLibrary_sLib_8670, "AnalyticsSendEvent");
  (softLinkAnalyticsSendEvent_8682[0])(v5, v4);
}

void *__CoreAnalyticsLibrary_block_invoke_8705()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 2);
  CoreAnalyticsLibrary_sLib_8670 = result;
  return result;
}

void _connectHandler(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a3 + 112) & 1) == 0)
  {
    v11 = *(a3 + 8);
    if (!v11)
    {
      goto LABEL_5;
    }

    dispatch_async_f(v11[14], v11, _AsyncConnection_UserRelease);
  }

  *(a3 + 8) = 0;
LABEL_5:
  if (!a2)
  {
    if (*(a3 + 112) == 1)
    {
      v12 = NSErrorWithOSStatusF(4294960573, "Invalidated (C)", a3, a4, a5, a6, a7, a8, v26);
    }

    else
    {
      *(a3 + 304) = a1;
      v29 = 0;
      [a3 _setupIOAndReturnError:&v29];
      v12 = v29;
      a1 = -1;
    }

    goto LABEL_8;
  }

  v12 = NSErrorWithOSStatusF(a2, "Connect failed", a3, a4, a5, a6, a7, a8, v26);
  if ((*(a3 + 112) & 1) == 0 && *(a3 + 328))
  {
    v19 = *(a3 + 216);
    if (*v19 <= 30)
    {
      if (*v19 == -1)
      {
        if (!_LogCategory_Initialize(v19, 0x1Eu))
        {
          goto LABEL_26;
        }

        v19 = *(a3 + 216);
      }

      LogPrintF(v19, "void _connectHandler(SocketRef, OSStatus, void * _Nonnull)", 0x1Eu, "Connect failed. Reconfirming with Bonjour\n", v15, v16, v17, v18, v27);
    }

LABEL_26:
    v20 = CUBonjourDeviceReconfirm(*(a3 + 328));
    if (v20)
    {
      v28 = v20;
      v25 = *(a3 + 216);
      if (*v25 <= 60)
      {
        if (*v25 == -1)
        {
          if (!_LogCategory_Initialize(v25, 0x3Cu))
          {
            goto LABEL_8;
          }

          v25 = *(a3 + 216);
        }

        LogPrintF(v25, "void _connectHandler(SocketRef, OSStatus, void * _Nonnull)", 0x3Cu, "### Reconfirming with Bonjour failed: %#m\n", v21, v22, v23, v24, v28);
      }
    }
  }

LABEL_8:
  v13 = *(a3 + 88);
  if (v13)
  {
    (*(v13 + 16))(v13, v12);
    v14 = *(a3 + 88);
    *(a3 + 88) = 0;
  }

  if (!v12)
  {
    [a3 _processReads:0];
    [a3 _processWrites:0];
  }

  if (*(a3 + 112) == 1)
  {
    [a3 _invalidated];
  }

  if ((a1 & 0x80000000) == 0 && close(a1) && *__error())
  {
    __error();
  }
}

void _connectCompletion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 16);
  if (*(v9 + 112))
  {
    *(v9 + 8) = 0;
    v10 = *(a1 + 12);
    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_20:
    v18 = "Connect failed";
    goto LABEL_24;
  }

  v11 = *(v9 + 8);
  if (!v11)
  {
    v13 = (a1 + 12);
    v10 = *(a1 + 12);
    if (!v10)
    {
      goto LABEL_25;
    }

LABEL_9:
    if (!*(v9 + 328))
    {
      goto LABEL_19;
    }

    v14 = *(v9 + 216);
    if (*v14 <= 30)
    {
      if (*v14 != -1)
      {
LABEL_12:
        LogPrintF(v14, "void _connectCompletion(AsyncConnectionCompletionInfo * _Nonnull)", 0x1Eu, "Connect failed. Reconfirming with Bonjour: %#m\n", a5, a6, a7, a8, v10);
        goto LABEL_14;
      }

      if (_LogCategory_Initialize(*(v9 + 216), 0x1Eu))
      {
        v14 = *(v9 + 216);
        v10 = *v13;
        goto LABEL_12;
      }
    }

LABEL_14:
    v15 = CUBonjourDeviceReconfirm(*(v9 + 328));
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = v15;
    v17 = *(v9 + 216);
    if (*v17 > 60)
    {
      goto LABEL_19;
    }

    if (*v17 == -1)
    {
      if (!_LogCategory_Initialize(v17, 0x3Cu))
      {
        goto LABEL_19;
      }

      v17 = *(v9 + 216);
    }

    LogPrintF(v17, "void _connectCompletion(AsyncConnectionCompletionInfo * _Nonnull)", 0x3Cu, "### Reconfirming with Bonjour failed: %#m\n", a5, a6, a7, a8, v16);
LABEL_19:
    v10 = *v13;
    if (v10)
    {
      goto LABEL_20;
    }

    v12 = *(v9 + 112);
    goto LABEL_22;
  }

  dispatch_async_f(v11[14], v11, _AsyncConnection_UserRelease);
  *(v9 + 8) = 0;
  v12 = *(v9 + 112);
  v13 = (a1 + 12);
  v10 = *(a1 + 12);
  if (v10)
  {
    if (*(v9 + 112))
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

LABEL_22:
  if (v12)
  {
LABEL_23:
    v18 = "Invalidated (C)";
    v10 = 4294960573;
LABEL_24:
    v19 = NSErrorWithOSStatusF(v10, v18, a3, a4, a5, a6, a7, a8, v23);
    if (v19)
    {
      goto LABEL_27;
    }
  }

LABEL_25:
  *(v9 + 304) = *(a1 + 8);
  *(a1 + 8) = -1;
  objc_storeStrong((v9 + 392), *(a1 + 24));
  *(a1 + 24) = 0;
  v24 = 0;
  [v9 _setupIOAndReturnError:&v24];
  v19 = v24;
  if (!v19)
  {
    [v9 _processReads:0];
    [v9 _processWrites:0];
  }

LABEL_27:
  v20 = *(v9 + 88);
  if (v20)
  {
    (*(v20 + 16))(v20, v19);
    v21 = *(v9 + 88);
    *(v9 + 88) = 0;
  }

  if (*(v9 + 112) == 1)
  {
    [v9 _invalidated];
  }

  v22 = *(a1 + 8);
  if ((v22 & 0x80000000) == 0)
  {
    if (close(v22) && *__error())
    {
      __error();
    }

    *(a1 + 8) = -1;
  }
}

void sub_191F6F194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9014(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _responseCallback(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gCUUserAlertMutex);
  v4 = gCUUserAlertMap;
  v5 = [MEMORY[0x1E696AD98] numberWithLong:a1];
  v6 = [v4 objectForKeyedSubscript:v5];

  pthread_mutex_unlock(&gCUUserAlertMutex);
  [v6 _responseCallback:a1 responseFlags:a2];
}

id initValUNNotificationDismissActionIdentifier()
{
  if (softLinkOnceUNNotificationDismissActionIdentifier != -1)
  {
    dispatch_once(&softLinkOnceUNNotificationDismissActionIdentifier, &__block_literal_global_339);
  }

  v1 = constantValUNNotificationDismissActionIdentifier;

  return v1;
}

void __initValUNNotificationDismissActionIdentifier_block_invoke()
{
  if (UserNotificationsLibrary_sOnce != -1)
  {
    dispatch_once(&UserNotificationsLibrary_sOnce, &__block_literal_global_9279);
  }

  v0 = dlsym(UserNotificationsLibrary_sLib, "UNNotificationDismissActionIdentifier");
  if (v0)
  {
    objc_storeStrong(&constantValUNNotificationDismissActionIdentifier, *v0);
  }

  getUNNotificationDismissActionIdentifier = UNNotificationDismissActionIdentifierFunction;
}

void *__UserNotificationsLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/UserNotifications.framework/UserNotifications", 2);
  UserNotificationsLibrary_sLib = result;
  return result;
}

id initValUNNotificationDefaultActionIdentifier()
{
  if (softLinkOnceUNNotificationDefaultActionIdentifier != -1)
  {
    dispatch_once(&softLinkOnceUNNotificationDefaultActionIdentifier, &__block_literal_global_336);
  }

  v1 = constantValUNNotificationDefaultActionIdentifier;

  return v1;
}

void __initValUNNotificationDefaultActionIdentifier_block_invoke()
{
  if (UserNotificationsLibrary_sOnce != -1)
  {
    dispatch_once(&UserNotificationsLibrary_sOnce, &__block_literal_global_9279);
  }

  v0 = dlsym(UserNotificationsLibrary_sLib, "UNNotificationDefaultActionIdentifier");
  if (v0)
  {
    objc_storeStrong(&constantValUNNotificationDefaultActionIdentifier, *v0);
  }

  getUNNotificationDefaultActionIdentifier = UNNotificationDefaultActionIdentifierFunction;
}

Class initUNNotificationRequest()
{
  if (UserNotificationsLibrary_sOnce != -1)
  {
    dispatch_once(&UserNotificationsLibrary_sOnce, &__block_literal_global_9279);
  }

  result = objc_getClass("UNNotificationRequest");
  classUNNotificationRequest = result;
  getUNNotificationRequestClass[0] = UNNotificationRequestFunction;
  return result;
}

Class initUNNotificationSound()
{
  if (UserNotificationsLibrary_sOnce != -1)
  {
    dispatch_once(&UserNotificationsLibrary_sOnce, &__block_literal_global_9279);
  }

  result = objc_getClass("UNNotificationSound");
  classUNNotificationSound = result;
  getUNNotificationSoundClass[0] = UNNotificationSoundFunction;
  return result;
}

Class initUNNotificationIcon()
{
  if (UserNotificationsLibrary_sOnce != -1)
  {
    dispatch_once(&UserNotificationsLibrary_sOnce, &__block_literal_global_9279);
  }

  result = objc_getClass("UNNotificationIcon");
  classUNNotificationIcon = result;
  getUNNotificationIconClass[0] = UNNotificationIconFunction;
  return result;
}

Class initUNMutableNotificationContent()
{
  if (UserNotificationsLibrary_sOnce != -1)
  {
    dispatch_once(&UserNotificationsLibrary_sOnce, &__block_literal_global_9279);
  }

  result = objc_getClass("UNMutableNotificationContent");
  classUNMutableNotificationContent = result;
  getUNMutableNotificationContentClass[0] = UNMutableNotificationContentFunction;
  return result;
}

Class initUNUserNotificationCenter()
{
  if (UserNotificationsLibrary_sOnce != -1)
  {
    dispatch_once(&UserNotificationsLibrary_sOnce, &__block_literal_global_9279);
  }

  result = objc_getClass("UNUserNotificationCenter");
  classUNUserNotificationCenter = result;
  getUNUserNotificationCenterClass[0] = UNUserNotificationCenterFunction;
  return result;
}

Class initUNNotificationCategory()
{
  if (UserNotificationsLibrary_sOnce != -1)
  {
    dispatch_once(&UserNotificationsLibrary_sOnce, &__block_literal_global_9279);
  }

  result = objc_getClass("UNNotificationCategory");
  classUNNotificationCategory = result;
  getUNNotificationCategoryClass[0] = UNNotificationCategoryFunction;
  return result;
}

Class initUNNotificationAction()
{
  if (UserNotificationsLibrary_sOnce != -1)
  {
    dispatch_once(&UserNotificationsLibrary_sOnce, &__block_literal_global_9279);
  }

  result = objc_getClass("UNNotificationAction");
  classUNNotificationAction = result;
  getUNNotificationActionClass[0] = UNNotificationActionFunction;
  return result;
}

Class initAVAudioSession_9492()
{
  if (AVFoundationLibrary_sOnce_9493 != -1)
  {
    dispatch_once(&AVFoundationLibrary_sOnce_9493, &__block_literal_global_137);
  }

  result = objc_getClass("AVAudioSession");
  classAVAudioSession_9495 = result;
  getAVAudioSessionClass_9481[0] = AVAudioSessionFunction_9497;
  return result;
}

void *__AVFoundationLibrary_block_invoke_9499()
{
  result = dlopen("/System/Library/PrivateFrameworks/AVFoundation.framework/AVFoundation", 2);
  AVFoundationLibrary_sLib_9501 = result;
  return result;
}

Class initSiriTTSSpeechRequest()
{
  if (SiriTTSServiceLibrary_sOnce != -1)
  {
    dispatch_once(&SiriTTSServiceLibrary_sOnce, &__block_literal_global_9513);
  }

  result = objc_getClass("SiriTTSSpeechRequest");
  classSiriTTSSpeechRequest = result;
  getSiriTTSSpeechRequestClass[0] = SiriTTSSpeechRequestFunction;
  return result;
}

void *__SiriTTSServiceLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SiriTTSService.framework/SiriTTSService", 2);
  SiriTTSServiceLibrary_sLib = result;
  return result;
}

Class initSiriTTSSynthesisVoice()
{
  if (SiriTTSServiceLibrary_sOnce != -1)
  {
    dispatch_once(&SiriTTSServiceLibrary_sOnce, &__block_literal_global_9513);
  }

  result = objc_getClass("SiriTTSSynthesisVoice");
  classSiriTTSSynthesisVoice = result;
  getSiriTTSSynthesisVoiceClass[0] = SiriTTSSynthesisVoiceFunction;
  return result;
}

Class initAFPreferences()
{
  if (AssistantServicesLibrary_sOnce != -1)
  {
    dispatch_once(&AssistantServicesLibrary_sOnce, &__block_literal_global_131);
  }

  result = objc_getClass("AFPreferences");
  classAFPreferences = result;
  getAFPreferencesClass[0] = AFPreferencesFunction;
  return result;
}

void *__AssistantServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices", 2);
  AssistantServicesLibrary_sLib = result;
  return result;
}

uint64_t initVSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences()
{
  if (VoiceServicesLibrary_sOnce != -1)
  {
    dispatch_once(&VoiceServicesLibrary_sOnce, &__block_literal_global_127);
  }

  v0 = dlsym(VoiceServicesLibrary_sLib, "VSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences");
  softLinkVSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences[0] = v0;

  return v0();
}

void *__VoiceServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/VoiceServices.framework/VoiceServices", 2);
  VoiceServicesLibrary_sLib = result;
  return result;
}

Class initSiriTTSDaemonSession()
{
  if (SiriTTSServiceLibrary_sOnce != -1)
  {
    dispatch_once(&SiriTTSServiceLibrary_sOnce, &__block_literal_global_9513);
  }

  result = objc_getClass("SiriTTSDaemonSession");
  classSiriTTSDaemonSession = result;
  getSiriTTSDaemonSessionClass[0] = SiriTTSDaemonSessionFunction;
  return result;
}

id initValEasyConfigKey_ReasonError()
{
  if (softLinkOnceEasyConfigKey_ReasonError != -1)
  {
    dispatch_once(&softLinkOnceEasyConfigKey_ReasonError, &__block_literal_global_181);
  }

  v1 = constantValEasyConfigKey_ReasonError;

  return v1;
}

void *__EasyConfigLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/EasyConfig.framework/EasyConfig", 2);
  EasyConfigLibrary_sLib = result;
  return result;
}

Class initEasyConfigDevice()
{
  if (EasyConfigLibrary_sOnce != -1)
  {
    dispatch_once(&EasyConfigLibrary_sOnce, &__block_literal_global_174);
  }

  result = objc_getClass("EasyConfigDevice");
  classEasyConfigDevice = result;
  getEasyConfigDeviceClass[0] = EasyConfigDeviceFunction;
  return result;
}

id initValEasyConfigKey_Flags()
{
  if (softLinkOnceEasyConfigKey_Flags != -1)
  {
    dispatch_once(&softLinkOnceEasyConfigKey_Flags, &__block_literal_global_177);
  }

  v1 = constantValEasyConfigKey_Flags;

  return v1;
}

id initValEasyConfigKey_DeviceID()
{
  if (softLinkOnceEasyConfigKey_DeviceID != -1)
  {
    dispatch_once(&softLinkOnceEasyConfigKey_DeviceID, &__block_literal_global_9682);
  }

  v1 = constantValEasyConfigKey_DeviceID;

  return v1;
}

id logger_9879()
{
  if (sCUOSLogCreateOnce_logger_9881 != -1)
  {
    dispatch_once(&sCUOSLogCreateOnce_logger_9881, &__block_literal_global_326_9882);
  }

  v1 = sCUOSLogHandle_logger_9883;

  return v1;
}

uint64_t __logger_block_invoke_9886()
{
  v0 = os_log_create("com.apple.CoreUtils", "CUWiFiManager");
  v1 = sCUOSLogHandle_logger_9883;
  sCUOSLogHandle_logger_9883 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_191F77F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initCWFInterface()
{
  if (CoreWiFiLibrary_sOnce != -1)
  {
    dispatch_once(&CoreWiFiLibrary_sOnce, &__block_literal_global_308);
  }

  result = objc_getClass("CWFInterface");
  classCWFInterface = result;
  getCWFInterfaceClass[0] = CWFInterfaceFunction;
  return result;
}

void *__CoreWiFiLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreWiFi.framework/CoreWiFi", 2);
  CoreWiFiLibrary_sLib = result;
  return result;
}

void _wifiPowerCallback(uint64_t a1, void *a2)
{
  Power = WiFiDeviceClientGetPower();
  v4 = a2[20];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___wifiPowerCallback_block_invoke;
  v6[3] = &unk_1E73A42C8;
  v6[4] = a2;
  v7 = Power;
  v5 = a2;
  dispatch_async(v4, v6);
}

uint64_t ___wifiPowerCallback_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(result + 32);
  if (*(v9 + 10))
  {
    return result;
  }

  v10 = result;
  v11 = *(v9 + 16);
  if (*v11 <= 30)
  {
    if (*v11 != -1)
    {
LABEL_4:
      if (*(v10 + 40))
      {
        v12 = "yes";
      }

      else
      {
        v12 = "no";
      }

      LogPrintF(v11, "void _wifiPowerCallback(WiFiDeviceClientRef, void *)_block_invoke", 0x1Eu, "WiFi power changed: %s", a5, a6, a7, a8, v12);
      v9 = *(v10 + 32);
      goto LABEL_9;
    }

    v13 = _LogCategory_Initialize(v11, 0x1Eu);
    v9 = *(v10 + 32);
    if (v13)
    {
      v11 = *(v9 + 16);
      goto LABEL_4;
    }
  }

LABEL_9:

  return [v9 _update];
}

void _wifiHostAPStateChangedCallback(uint64_t a1, void *a2, void *a3)
{
  v4 = a3[20];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___wifiHostAPStateChangedCallback_block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = a3;
  v7[5] = a2;
  v5 = a2;
  v6 = a3;
  dispatch_async(v4, v7);
}

uint64_t ___wifiHostAPStateChangedCallback_block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 56))
  {
    return result;
  }

  v1 = result;
  Int64 = CFDictionaryGetInt64(*(result + 40), @"HostApEnabled", 0);
  v7 = *(v1 + 32);
  v8 = v7[2];
  if (*v8 <= 30)
  {
    if (*v8 != -1)
    {
LABEL_4:
      v9 = "yes";
      if (!Int64)
      {
        v9 = "no";
      }

      LogPrintF(v8, "void _wifiHostAPStateChangedCallback(WiFiDeviceClientRef, CFDictionaryRef, void *)_block_invoke", 0x1Eu, "WiFi HostAP state changed: HostAP %s\n", v2, v3, v4, v5, v9);
      v7 = *(v1 + 32);
      goto LABEL_9;
    }

    v10 = _LogCategory_Initialize(v8, 0x1Eu);
    v7 = *(v1 + 32);
    if (v10)
    {
      v8 = v7[2];
      goto LABEL_4;
    }
  }

LABEL_9:

  return [v7 _update];
}

void _wifiBSSIDChangeNotification(uint64_t a1, const void *a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    CFRetain(a2);
  }

  v5 = v4[20];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___wifiBSSIDChangeNotification_block_invoke;
  v7[3] = &unk_1E73A4340;
  v8 = v4;
  v9 = a2;
  v6 = v4;
  dispatch_async(v5, v7);
}

void ___wifiBSSIDChangeNotification_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[10] & 1) == 0)
  {
    [v2 _wifiJoinNotification:*(a1 + 40) status:0 reason:@"BSSID"];
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void _wifiUserJoinNotification(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = v5[20];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___wifiUserJoinNotification_block_invoke;
  v10[3] = &unk_1E73A49F0;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void ___wifiUserJoinNotification_block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 10) & 1) == 0)
  {
    v3 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69B2088]];

    v4 = *(a1 + 40);
    v5 = *MEMORY[0x1E69B2098];
    TypeID = CFStringGetTypeID();
    v7 = CFDictionaryGetTypedValue(v4, v5, TypeID, 0);
    [*(a1 + 32) _wifiJoinNotification:v3 status:v7 reason:@"UserJoin"];
  }
}

void _wifiAutoJoinNotification(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = v4[20];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___wifiAutoJoinNotification_block_invoke;
  v9[3] = &unk_1E73A49F0;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, v9);
}

void ___wifiAutoJoinNotification_block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 10) & 1) == 0)
  {
    v3 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69B2010]];

    v4 = *(a1 + 40);
    v5 = *MEMORY[0x1E69B2030];
    TypeID = CFStringGetTypeID();
    v7 = CFDictionaryGetTypedValue(v4, v5, TypeID, 0);
    [*(a1 + 32) _wifiJoinNotification:v3 status:v7 reason:@"AutoJoin"];
  }
}

void _wifiDeviceDetached(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2[20];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___wifiDeviceDetached_block_invoke;
  block[3] = &unk_1E73A4F68;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

uint64_t ___wifiDeviceDetached_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(result + 32);
  if (*(v10 + 10))
  {
    return result;
  }

  v11 = result;
  v12 = *(v10 + 16);
  if (*v12 <= 30)
  {
    if (*v12 == -1)
    {
      v13 = _LogCategory_Initialize(v12, 0x1Eu);
      v10 = *(v11 + 32);
      if (!v13)
      {
        goto LABEL_6;
      }

      v12 = *(v10 + 16);
    }

    LogPrintF(v12, "void _wifiDeviceDetached(WiFiDeviceClientRef, void *)_block_invoke", 0x1Eu, "WiFi Device Detached\n", a5, a6, a7, a8, v8);
    v10 = *(v11 + 32);
  }

LABEL_6:
  *(v10 + 104) = 0;
  *(*(v11 + 32) + 80) = 0;
  *(*(v11 + 32) + 72) = 0;
  v14 = *(v11 + 32);

  return [v14 _update];
}

void _wifiRestartedCallback(uint64_t a1, void *a2)
{
  v2 = a2[20];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___wifiRestartedCallback_block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = a2;
  v3 = a2;
  dispatch_async(v2, block);
}

uint64_t ___wifiRestartedCallback_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(a1 + 32);
  if (!*(result + 56))
  {
    return result;
  }

  v10 = *(result + 16);
  if (*v10 <= 60)
  {
    if (*v10 == -1)
    {
      v11 = _LogCategory_Initialize(*(result + 16), 0x3Cu);
      result = *(a1 + 32);
      if (!v11)
      {
        goto LABEL_6;
      }

      v10 = *(result + 16);
    }

    LogPrintF(v10, "void _wifiRestartedCallback(WiFiManagerClientRef, void *)_block_invoke", 0x3Cu, "### WiFi crashed...retrying\n", a5, a6, a7, a8, v14);
    result = *(a1 + 32);
  }

LABEL_6:
  if (*(result + 136) == 1)
  {
    *(result + 133) = 1;
    result = *(a1 + 32);
  }

  if (*(result + 138) == 1)
  {
    *(result + 135) = 1;
    result = *(a1 + 32);
  }

  if (*(result + 192))
  {
    v12 = *(result + 40);
    *(result + 40) = 0;

    *(*(a1 + 32) + 134) = 1;
    result = *(a1 + 32);
  }

  [result _update];
  result = *(*(a1 + 32) + 168);
  if (result)
  {
    v13 = *(result + 16);

    return v13();
  }

  return result;
}

void _wifiDeviceAttached(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = v3[20];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___wifiDeviceAttached_block_invoke;
  block[3] = &unk_1E73A4F68;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t ___wifiDeviceAttached_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(a1 + 32);
  if (*(result + 10))
  {
    return result;
  }

  v10 = *(result + 16);
  if (*v10 <= 30)
  {
    if (*v10 == -1)
    {
      v11 = _LogCategory_Initialize(*(result + 16), 0x1Eu);
      result = *(a1 + 32);
      if (!v11)
      {
        goto LABEL_6;
      }

      v10 = *(result + 16);
    }

    LogPrintF(v10, "void _wifiDeviceAttached(WiFiManagerClientRef, WiFiDeviceClientRef, void *)_block_invoke", 0x1Eu, "WiFi Device Attached\n", a5, a6, a7, a8, v12);
    result = *(a1 + 32);
  }

LABEL_6:

  return [result _update];
}

void _wifiCriticalCallback(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = v4[20];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___wifiCriticalCallback_block_invoke;
  v7[3] = &unk_1E73A42C8;
  v8 = v4;
  v9 = a2;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t ___wifiCriticalCallback_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(result + 32);
  if (*(v9 + 10))
  {
    return result;
  }

  v10 = result;
  v11 = *(v9 + 16);
  if (*v11 <= 30)
  {
    if (*v11 != -1)
    {
LABEL_4:
      if (*(v9 + 50))
      {
        v12 = "yes";
      }

      else
      {
        v12 = "no";
      }

      LogPrintF(v11, "void _wifiCriticalCallback(WiFiDeviceClientRef, _Bool, void *)_block_invoke", 0x1Eu, "WiFi critical changed: %s -> %s\n", a5, a6, a7, a8, v12);
      v9 = *(v10 + 32);
      goto LABEL_9;
    }

    v13 = _LogCategory_Initialize(v11, 0x1Eu);
    v9 = *(v10 + 32);
    if (v13)
    {
      v11 = *(v9 + 16);
      goto LABEL_4;
    }
  }

LABEL_9:
  *(v9 + 50) = *(v10 + 40);
  v14 = *(v10 + 32);

  return [v14 _update];
}

id initValAWDLTrafficRegistrationServiceMacVirtualDisplay()
{
  if (softLinkOnceAWDLTrafficRegistrationServiceMacVirtualDisplay != -1)
  {
    dispatch_once(&softLinkOnceAWDLTrafficRegistrationServiceMacVirtualDisplay, &__block_literal_global_303);
  }

  v1 = constantValAWDLTrafficRegistrationServiceMacVirtualDisplay;

  return v1;
}

void __initValAWDLTrafficRegistrationServiceMacVirtualDisplay_block_invoke()
{
  if (WiFiPeerToPeerLibrary_sOnce_9926 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_9926, &__block_literal_global_279);
  }

  v0 = dlsym(WiFiPeerToPeerLibrary_sLib_9927, "AWDLTrafficRegistrationServiceMacVirtualDisplay");
  if (v0)
  {
    objc_storeStrong(&constantValAWDLTrafficRegistrationServiceMacVirtualDisplay, *v0);
  }

  getAWDLTrafficRegistrationServiceMacVirtualDisplay = AWDLTrafficRegistrationServiceMacVirtualDisplayFunction;
}

void *__WiFiPeerToPeerLibrary_block_invoke_9930()
{
  result = dlopen("/System/Library/PrivateFrameworks/WiFiPeerToPeer.framework/WiFiPeerToPeer", 2);
  WiFiPeerToPeerLibrary_sLib_9927 = result;
  return result;
}

id initValAWDLTrafficRegistrationServiceRemoteScreen()
{
  if (softLinkOnceAWDLTrafficRegistrationServiceRemoteScreen != -1)
  {
    dispatch_once(&softLinkOnceAWDLTrafficRegistrationServiceRemoteScreen, &__block_literal_global_300_9932);
  }

  v1 = constantValAWDLTrafficRegistrationServiceRemoteScreen;

  return v1;
}

void __initValAWDLTrafficRegistrationServiceRemoteScreen_block_invoke()
{
  if (WiFiPeerToPeerLibrary_sOnce_9926 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_9926, &__block_literal_global_279);
  }

  v0 = dlsym(WiFiPeerToPeerLibrary_sLib_9927, "AWDLTrafficRegistrationServiceRemoteScreen");
  if (v0)
  {
    objc_storeStrong(&constantValAWDLTrafficRegistrationServiceRemoteScreen, *v0);
  }

  getAWDLTrafficRegistrationServiceRemoteScreen = AWDLTrafficRegistrationServiceRemoteScreenFunction;
}

id initValAWDLTrafficRegistrationServiceTVRemoteCamera()
{
  if (softLinkOnceAWDLTrafficRegistrationServiceTVRemoteCamera != -1)
  {
    dispatch_once(&softLinkOnceAWDLTrafficRegistrationServiceTVRemoteCamera, &__block_literal_global_297);
  }

  v1 = constantValAWDLTrafficRegistrationServiceTVRemoteCamera;

  return v1;
}

void __initValAWDLTrafficRegistrationServiceTVRemoteCamera_block_invoke()
{
  if (WiFiPeerToPeerLibrary_sOnce_9926 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_9926, &__block_literal_global_279);
  }

  v0 = dlsym(WiFiPeerToPeerLibrary_sLib_9927, "AWDLTrafficRegistrationServiceTVRemoteCamera");
  if (v0)
  {
    objc_storeStrong(&constantValAWDLTrafficRegistrationServiceTVRemoteCamera, *v0);
  }

  getAWDLTrafficRegistrationServiceTVRemoteCamera = AWDLTrafficRegistrationServiceTVRemoteCameraFunction;
}

id initValAWDLTrafficRegistrationServiceRemoteCamera()
{
  if (softLinkOnceAWDLTrafficRegistrationServiceRemoteCamera != -1)
  {
    dispatch_once(&softLinkOnceAWDLTrafficRegistrationServiceRemoteCamera, &__block_literal_global_294_9936);
  }

  v1 = constantValAWDLTrafficRegistrationServiceRemoteCamera;

  return v1;
}

void __initValAWDLTrafficRegistrationServiceRemoteCamera_block_invoke()
{
  if (WiFiPeerToPeerLibrary_sOnce_9926 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_9926, &__block_literal_global_279);
  }

  v0 = dlsym(WiFiPeerToPeerLibrary_sLib_9927, "AWDLTrafficRegistrationServiceRemoteCamera");
  if (v0)
  {
    objc_storeStrong(&constantValAWDLTrafficRegistrationServiceRemoteCamera, *v0);
  }

  getAWDLTrafficRegistrationServiceRemoteCamera = AWDLTrafficRegistrationServiceRemoteCameraFunction;
}

id initValAWDLTrafficRegistrationServiceMPRemoteCamera()
{
  if (softLinkOnceAWDLTrafficRegistrationServiceMPRemoteCamera != -1)
  {
    dispatch_once(&softLinkOnceAWDLTrafficRegistrationServiceMPRemoteCamera, &__block_literal_global_291);
  }

  v1 = constantValAWDLTrafficRegistrationServiceMPRemoteCamera;

  return v1;
}

void __initValAWDLTrafficRegistrationServiceMPRemoteCamera_block_invoke()
{
  if (WiFiPeerToPeerLibrary_sOnce_9926 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_9926, &__block_literal_global_279);
  }

  v0 = dlsym(WiFiPeerToPeerLibrary_sLib_9927, "AWDLTrafficRegistrationServiceMPRemoteCamera");
  if (v0)
  {
    objc_storeStrong(&constantValAWDLTrafficRegistrationServiceMPRemoteCamera, *v0);
  }

  getAWDLTrafficRegistrationServiceMPRemoteCamera = AWDLTrafficRegistrationServiceMPRemoteCameraFunction;
}

id initValAWDLTrafficRegistrationServiceUniversalControl()
{
  if (softLinkOnceAWDLTrafficRegistrationServiceUniversalControl != -1)
  {
    dispatch_once(&softLinkOnceAWDLTrafficRegistrationServiceUniversalControl, &__block_literal_global_288_9940);
  }

  v1 = constantValAWDLTrafficRegistrationServiceUniversalControl;

  return v1;
}

void __initValAWDLTrafficRegistrationServiceUniversalControl_block_invoke()
{
  if (WiFiPeerToPeerLibrary_sOnce_9926 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_9926, &__block_literal_global_279);
  }

  v0 = dlsym(WiFiPeerToPeerLibrary_sLib_9927, "AWDLTrafficRegistrationServiceUniversalControl");
  if (v0)
  {
    objc_storeStrong(&constantValAWDLTrafficRegistrationServiceUniversalControl, *v0);
  }

  getAWDLTrafficRegistrationServiceUniversalControl = AWDLTrafficRegistrationServiceUniversalControlFunction;
}

id initValAWDLTrafficRegistrationServiceDeviceToDeviceMigration()
{
  if (softLinkOnceAWDLTrafficRegistrationServiceDeviceToDeviceMigration != -1)
  {
    dispatch_once(&softLinkOnceAWDLTrafficRegistrationServiceDeviceToDeviceMigration, &__block_literal_global_285);
  }

  v1 = constantValAWDLTrafficRegistrationServiceDeviceToDeviceMigration;

  return v1;
}

void __initValAWDLTrafficRegistrationServiceDeviceToDeviceMigration_block_invoke()
{
  if (WiFiPeerToPeerLibrary_sOnce_9926 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_9926, &__block_literal_global_279);
  }

  v0 = dlsym(WiFiPeerToPeerLibrary_sLib_9927, "AWDLTrafficRegistrationServiceDeviceToDeviceMigration");
  if (v0)
  {
    objc_storeStrong(&constantValAWDLTrafficRegistrationServiceDeviceToDeviceMigration, *v0);
  }

  getAWDLTrafficRegistrationServiceDeviceToDeviceMigration = AWDLTrafficRegistrationServiceDeviceToDeviceMigrationFunction;
}

id initValAWDLTrafficRegistrationServiceSidecar()
{
  if (softLinkOnceAWDLTrafficRegistrationServiceSidecar != -1)
  {
    dispatch_once(&softLinkOnceAWDLTrafficRegistrationServiceSidecar, &__block_literal_global_282_9944);
  }

  v1 = constantValAWDLTrafficRegistrationServiceSidecar;

  return v1;
}

void __initValAWDLTrafficRegistrationServiceSidecar_block_invoke()
{
  if (WiFiPeerToPeerLibrary_sOnce_9926 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_9926, &__block_literal_global_279);
  }

  v0 = dlsym(WiFiPeerToPeerLibrary_sLib_9927, "AWDLTrafficRegistrationServiceSidecar");
  if (v0)
  {
    objc_storeStrong(&constantValAWDLTrafficRegistrationServiceSidecar, *v0);
  }

  getAWDLTrafficRegistrationServiceSidecar = AWDLTrafficRegistrationServiceSidecarFunction;
}

id initValAWDLTrafficRegistrationServiceAirPlay()
{
  if (softLinkOnceAWDLTrafficRegistrationServiceAirPlay != -1)
  {
    dispatch_once(&softLinkOnceAWDLTrafficRegistrationServiceAirPlay, &__block_literal_global_9947);
  }

  v1 = constantValAWDLTrafficRegistrationServiceAirPlay;

  return v1;
}

void __initValAWDLTrafficRegistrationServiceAirPlay_block_invoke()
{
  if (WiFiPeerToPeerLibrary_sOnce_9926 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_9926, &__block_literal_global_279);
  }

  v0 = dlsym(WiFiPeerToPeerLibrary_sLib_9927, "AWDLTrafficRegistrationServiceAirPlay");
  if (v0)
  {
    objc_storeStrong(&constantValAWDLTrafficRegistrationServiceAirPlay, *v0);
  }

  getAWDLTrafficRegistrationServiceAirPlay = AWDLTrafficRegistrationServiceAirPlayFunction;
}

void sub_191F7A29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initWiFiP2PAWDLStateMonitor()
{
  if (WiFiPeerToPeerLibrary_sOnce_9926 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_9926, &__block_literal_global_279);
  }

  result = objc_getClass("WiFiP2PAWDLStateMonitor");
  classWiFiP2PAWDLStateMonitor = result;
  getWiFiP2PAWDLStateMonitorClass[0] = WiFiP2PAWDLStateMonitorFunction;
  return result;
}

uint64_t CUXPCDecodeDouble(void *a1, const char *a2, double *a3)
{
  v5 = a1;
  *a3 = xpc_dictionary_get_double(v5, a2);

  return 1;
}

uint64_t CUXPCDecodeSInt64RangedEx(void *a1, const char *a2, int64_t a3, int64_t a4, int64_t *a5, void *a6)
{
  v11 = xpc_dictionary_get_value(a1, a2);
  v12 = v11;
  if (!v11)
  {
    v19 = 2;
    goto LABEL_14;
  }

  v13 = MEMORY[0x193B07A70](v11);
  if (v13 == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(v12);
    goto LABEL_11;
  }

  if (v13 == MEMORY[0x1E69E9F18])
  {
    value = xpc_uint64_get_value(v12);
LABEL_11:
    if (value >= a3 && value <= a4)
    {
      *a5 = value;
      v19 = 6;
      goto LABEL_14;
    }

    if (!a6)
    {
      goto LABEL_7;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960586, "XPC out-of-range: '%s', %lld vs min %lld, max %lld", v21, v22, v23, v24, v25, a2);
    goto LABEL_6;
  }

  if (a6)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC non-int64 type: '%s'", v14, v15, v16, v17, v18, a2);
    *a6 = LABEL_6:;
  }

LABEL_7:
  v19 = 5;
LABEL_14:

  return v19;
}

uint64_t __Block_byref_object_copy__10482(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CUXPCDecodeNSArrayOfNSData(void *a1, const char *a2, uint64_t a3, uint64_t a4, id *a5, void *a6)
{
  v11 = a1;
  v12 = xpc_dictionary_get_value(v11, a2);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  if (MEMORY[0x193B07A70](v12) == MEMORY[0x1E69E9E50])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__10482;
    v29 = __Block_byref_object_dispose__10483;
    v30 = 0;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __CUXPCDecodeNSArrayOfNSData_block_invoke;
    applier[3] = &unk_1E73A43D8;
    applier[6] = a2;
    applier[7] = a3;
    applier[8] = a4;
    applier[4] = v20;
    applier[5] = &v25;
    xpc_array_apply(v13, applier);
    v21 = v26[5];
    if (v21)
    {
      if (a6)
      {
        v23 = v21;
        *a6 = v21;
      }
    }

    else
    {
      objc_storeStrong(a5, v20);
    }

    _Block_object_dispose(&v25, 8);
    if (v21)
    {
      goto LABEL_8;
    }

LABEL_9:
    v19 = 1;
    goto LABEL_10;
  }

  if (!a6)
  {
LABEL_8:
    v19 = 0;
    goto LABEL_10;
  }

  NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC non-array type: '%s'", v14, v15, v16, v17, v18, a2);
  *a6 = v19 = 0;
LABEL_10:

  return v19;
}

void sub_191F7EE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CUXPCDecodeNSArrayOfNSData_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x193B07A70]() != MEMORY[0x1E69E9E70])
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC array non-data value: '%s'", v5, v6, v7, v8, v9, *(a1 + 48));
    v19 = LABEL_8:;
    v17 = 0;
    v20 = *(*(a1 + 40) + 8);
    v16 = *(v20 + 40);
    *(v20 + 40) = v19;
    goto LABEL_5;
  }

  length = xpc_data_get_length(v4);
  if (length < *(a1 + 56) || length > *(a1 + 64))
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960553, "XPC array bad data length: '%s', %zu bytes", v11, v12, v13, v14, v15, *(a1 + 48));
    goto LABEL_8;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:xpc_data_get_bytes_ptr(v4) length:length];
  [*(a1 + 32) addObject:v16];
  v17 = 1;
LABEL_5:

  return v17;
}

uint64_t CUXPCDecodeNSArrayOfNSString(void *a1, const char *a2, id *a3, void *a4)
{
  v7 = a1;
  v8 = xpc_dictionary_get_value(v7, a2);
  v9 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  if (MEMORY[0x193B07A70](v8) == MEMORY[0x1E69E9E50])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__10482;
    v25 = __Block_byref_object_dispose__10483;
    v26 = 0;
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __CUXPCDecodeNSArrayOfNSString_block_invoke;
    applier[3] = &unk_1E73A4400;
    applier[5] = &v21;
    applier[6] = a2;
    applier[4] = v16;
    xpc_array_apply(v9, applier);
    v17 = v22[5];
    if (v17)
    {
      if (a4)
      {
        v19 = v17;
        *a4 = v17;
      }
    }

    else
    {
      objc_storeStrong(a3, v16);
    }

    _Block_object_dispose(&v21, 8);
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

  if (!a4)
  {
LABEL_8:
    v15 = 0;
    goto LABEL_10;
  }

  NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC non-array type: '%s'", v10, v11, v12, v13, v14, a2);
  *a4 = v15 = 0;
LABEL_10:

  return v15;
}

void sub_191F7F14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CUXPCDecodeNSArrayOfNSString_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x193B07A70]() != MEMORY[0x1E69E9F10])
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC array non-string value: '%s'", v5, v6, v7, v8, v9, *(a1 + 48));
    v24 = LABEL_8:;
    v22 = 0;
    v25 = *(*(a1 + 40) + 8);
    v21 = *(v25 + 40);
    *(v25 + 40) = v24;
    goto LABEL_5;
  }

  string_ptr = xpc_string_get_string_ptr(v4);
  if (!string_ptr)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC array null string value: '%s'", v11, v12, v13, v14, v15, *(a1 + 48));
    goto LABEL_8;
  }

  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string_ptr];
  if (v21)
  {
    [*(a1 + 32) addObject:v21];
    v22 = 1;
  }

  else
  {
    v26 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC array bad string value: '%s'", v16, v17, v18, v19, v20, *(a1 + 48));
    v27 = *(*(a1 + 40) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    v22 = 0;
  }

LABEL_5:

  return v22;
}

uint64_t CUXPCDecodeNSArrayOfInteger(void *a1, const char *a2, uint64_t a3, uint64_t a4, id *a5, void *a6)
{
  v11 = a1;
  v12 = xpc_dictionary_get_value(v11, a2);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  if (MEMORY[0x193B07A70](v12) == MEMORY[0x1E69E9E50])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__10482;
    v29 = __Block_byref_object_dispose__10483;
    v30 = 0;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __CUXPCDecodeNSArrayOfInteger_block_invoke;
    applier[3] = &unk_1E73A43D8;
    applier[6] = a2;
    applier[7] = a3;
    applier[8] = a4;
    applier[4] = v20;
    applier[5] = &v25;
    xpc_array_apply(v13, applier);
    v21 = v26[5];
    if (v21)
    {
      if (a6)
      {
        v23 = v21;
        *a6 = v21;
      }
    }

    else
    {
      objc_storeStrong(a5, v20);
    }

    _Block_object_dispose(&v25, 8);
    if (v21)
    {
      goto LABEL_8;
    }

LABEL_9:
    v19 = 1;
    goto LABEL_10;
  }

  if (!a6)
  {
LABEL_8:
    v19 = 0;
    goto LABEL_10;
  }

  NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC non-array type: '%s'", v14, v15, v16, v17, v18, a2);
  *a6 = v19 = 0;
LABEL_10:

  return v19;
}

void sub_191F7F468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CUXPCDecodeNSArrayOfInteger_block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x193B07A70]();
  if (v5 == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(v4);
  }

  else
  {
    if (v5 != MEMORY[0x1E69E9F18])
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC array non-int value: '%s'", v6, v7, v8, v9, v10, a1[6]);
      goto LABEL_4;
    }

    value = xpc_uint64_get_value(v4);
  }

  if (value >= a1[7] && value <= a1[8])
  {
    v22 = a1[4];
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:value];
    [v22 addObject:v14];
    v12 = 1;
    goto LABEL_13;
  }

  NSErrorF_safe(*MEMORY[0x1E696A768], 4294960586, "XPC array int out-of-range: '%s', %lld, min %lld, max %lld", v16, v17, v18, v19, v20, a1[6]);
  v11 = LABEL_4:;
  v12 = 0;
  v13 = *(a1[5] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v11;
LABEL_13:

  return v12;
}

uint64_t CUXPCDecodeNSUUID(void *a1, const char *a2, void **a3, void *a4)
{
  v7 = a1;
  uuid = xpc_dictionary_get_uuid(v7, a2);
  if (uuid)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
    v10 = *a3;
    *a3 = v9;
LABEL_5:
    v17 = 1;
    goto LABEL_6;
  }

  v11 = xpc_dictionary_get_value(v7, a2);
  v10 = v11;
  if (!v11 || MEMORY[0x193B07A70](v11) == MEMORY[0x1E69E9F20])
  {
    goto LABEL_5;
  }

  if (a4)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC non-UUID type: '%s'", v12, v13, v14, v15, v16, a2);
    *a4 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_6:

  return v17;
}

void CUXPCEncodeNSArrayOfNSData(void *a1, const char *a2, void *a3, size_t a4, size_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  if (v10)
  {
    v21 = a2;
    v22 = v9;
    v11 = xpc_array_create(0, 0);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          v18 = [v17 length];
          if (v18 >= a4 && v18 <= a5)
          {
            v20 = xpc_data_create([v17 bytes], v18);
            xpc_array_append_value(v11, v20);
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    v9 = v22;
    xpc_dictionary_set_value(v22, v21, v11);
  }
}

void CUXPCEncodeNSArrayOfNSNumber(void *a1, const char *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v6)
  {
    v7 = xpc_array_create(0, 0);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if (CFNumberIsFloatType(v13))
          {
            [v13 doubleValue];
            xpc_array_set_double(v7, 0xFFFFFFFFFFFFFFFFLL, v14);
          }

          else
          {
            xpc_array_set_int64(v7, 0xFFFFFFFFFFFFFFFFLL, [v13 longLongValue]);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    xpc_dictionary_set_value(v5, a2, v7);
  }
}

void CUXPCEncodeNSArrayOfNSString(void *a1, const char *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v6)
  {
    v7 = xpc_array_create(0, 0);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          xpc_array_set_string(v7, 0xFFFFFFFFFFFFFFFFLL, [v13 UTF8String]);
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    xpc_dictionary_set_value(v5, a2, v7);
  }
}

BOOL CUXPCDictionaryExpectsReply(void *a1)
{
  v1 = a1;
  if (xpc_dictionary_expects_reply())
  {
    v2 = 1;
  }

  else
  {
    v3 = objc_getAssociatedObject(v1, &sCUXPCResponseHandlerKey);
    v2 = v3 != 0;
  }

  return v2;
}

BOOL __CUXPCCreateCFObjectFromXPCObject_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CUXPCCreateCFObjectFromXPCObject(a3);
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 24);
    *(v6 + 24) = v7 + 1;
    *(v5 + 8 * v7) = v4;
  }

  return v4 != 0;
}

uint8_t *CUXPCObjectGetUUID(void *a1, const char *a2)
{
  uuid = xpc_dictionary_get_uuid(a1, a2);
  if (uuid)
  {
    uuid = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
  }

  return uuid;
}

void CUXPCObjectSetUUID(void *a1, const char *a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = a1;
  [a3 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v5, a2, uuid);
}

uint64_t DACPServer_Create(void *a1, void *a2)
{
  v17 = 0;
  if (!*a2)
  {
    return 4294960591;
  }

  v15 = 0;
  v16 = 0;
  *v13 = 0;
  *&v13[12] = 0u;
  v12 = 0u;
  v14 = -524288;
  *&v8 = 344;
  *(&v8 + 1) = 279296;
  v9 = __DACPServer_ServerFree;
  v10 = __DACPServer_ServerStart;
  v11 = __DACPServer_ServerStop;
  *&v13[8] = __DACPServer_ProcessRequest;
  v4 = HTTPServer_Create(&v17, &v8);
  v5 = v17;
  if (v4)
  {
    v6 = v4;
    if (!v17)
    {
      return v6;
    }
  }

  else
  {
    *(v17 + 224) = *a2;
    RandomBytes((v5 + 240), 8uLL);
    *(v5 + 320) = 0;
    *(v5 + 328) = 0;
    v6 = pthread_mutex_init((v5 + 248), 0);
    if (!v6)
    {
      *(v5 + 312) = v5 + 248;
      *a1 = v5;
      return v6;
    }
  }

  HTTPServer_Delete(v5);
  return v6;
}

uint64_t __DACPServer_ProcessRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  if (HTTPServer_GetNextURLSegment(a1, &v30, &v29, &v31, a5, a6, a7, a8))
  {
    v11 = v29;
    v10 = v30;
    if (strnicmpx(v30, v29, "ctrl-int"))
    {
      if (!strnicmpx(v10, v11, "server-info"))
      {
LABEL_15:
        v23 = 404;
        return HTTPServer_SendStatusResponse(a1, v23, v16, v17, v18, v19, v20, v21);
      }

LABEL_7:
      if (gLogCategory_DACPServer <= 60 && (gLogCategory_DACPServer != -1 || _LogCategory_Initialize(&gLogCategory_DACPServer, 0x3Cu)))
      {
        LogPrintF(&gLogCategory_DACPServer, "OSStatus __DACPServer_ProcessRequest(HTTPServerConnectionRef)", 0x3Cu, "### Bad URL: '%.*s'\n", v18, v19, v20, v21, *(a1 + 8408));
      }

      goto LABEL_15;
    }

    if (HTTPServer_GetNextURLSegment(a1, &v30, &v29, &v31, v12, v13, v14, v15))
    {
      if (strnicmpx(v30, v29, "1"))
      {
        goto LABEL_7;
      }

      v31 = HTTPGetHeaderField((a1 + 160), *(a1 + 8352), "Active-Remote", 0, 0, &v30, &v29, 0);
      if (v31)
      {
        if (gLogCategory_DACPServer > 60 || gLogCategory_DACPServer == -1 && !_LogCategory_Initialize(&gLogCategory_DACPServer, 0x3Cu))
        {
          goto LABEL_40;
        }

        v22 = "### No Active-Remote in headers\n";
      }

      else
      {
        if (SNScanF(v30, v29, "%u", v17, v18, v19, v20, v21, &v28) == 1)
        {
          pthread_mutex_lock(*(v9 + 312));
          v25 = *(v9 + 328);
          if (v25)
          {
            v26 = 0;
            while (*(*(v9 + 320) + 4 * v26) != v28)
            {
              if (v25 == ++v26)
              {
                v26 = *(v9 + 328);
                break;
              }
            }
          }

          else
          {
            v26 = 0;
          }

          pthread_mutex_unlock(*(v9 + 312));
          if (v26 >= *(v9 + 328))
          {
            if (gLogCategory_DACPServer <= 50 && (gLogCategory_DACPServer != -1 || _LogCategory_Initialize(&gLogCategory_DACPServer, 0x32u)))
            {
              LogPrintF(&gLogCategory_DACPServer, "OSStatus __DACPServer_ProcessRequest(HTTPServerConnectionRef)", 0x32u, "### Remote ID %u not authorized\n", v18, v19, v20, v21, v28);
            }

            v23 = 403;
          }

          else
          {
            if (!HTTPServer_GetNextURLSegment(a1, &v30, &v29, &v31, v18, v19, v20, v21))
            {
              return v31;
            }

            v29 = *(a1 + 8400) - v30 + *(a1 + 8408);
            if ((*(v9 + 224))(v9))
            {
              v23 = 400;
            }

            else
            {
              v23 = 200;
            }
          }

          return HTTPServer_SendStatusResponse(a1, v23, v16, v17, v18, v19, v20, v21);
        }

        if (gLogCategory_DACPServer > 60 || gLogCategory_DACPServer == -1 && !_LogCategory_Initialize(&gLogCategory_DACPServer, 0x3Cu))
        {
          goto LABEL_40;
        }

        v27 = v29;
        v22 = "### Bad Active-Remote '%.*s\n";
      }

      LogPrintF(&gLogCategory_DACPServer, "OSStatus __DACPServer_ProcessRequest(HTTPServerConnectionRef)", 0x3Cu, v22, v18, v19, v20, v21, v27);
LABEL_40:
      v23 = 400;
      return HTTPServer_SendStatusResponse(a1, v23, v16, v17, v18, v19, v20, v21);
    }
  }

  return v31;
}

void __DACPServer_ServerStop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + 336);
  if (v10)
  {
    DNSServiceRefDeallocate(v10);
    *(a1 + 336) = 0;
  }

  if (gLogCategory_DACPServer <= 40 && (gLogCategory_DACPServer != -1 || _LogCategory_Initialize(&gLogCategory_DACPServer, 0x28u)))
  {

    LogPrintF(&gLogCategory_DACPServer, "void __DACPServer_ServerStop(HTTPServerOldRef)", 0x28u, "Stopped\n", a5, a6, a7, a8, a9);
  }
}

uint64_t __DACPServer_ServerStart(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x40uLL, "%s%016llX", "iTunes_Ctrl_", *(a1 + 240));
  v6 = DNSServiceRegister((a1 + 336), 0, 0, __str, "_dacp._tcp", "local.", 0, bswap32(*(a1 + 128)) >> 16, 0, 0, 0, 0);
  if (!v6 && gLogCategory_DACPServer <= 40 && (gLogCategory_DACPServer != -1 || _LogCategory_Initialize(&gLogCategory_DACPServer, 0x28u)))
  {
    LogPrintF(&gLogCategory_DACPServer, "OSStatus __DACPServer_ServerStart(HTTPServerOldRef)", 0x28u, "Registered %s.%s port %d\n", v2, v3, v4, v5, __str);
  }

  return v6;
}

uint64_t __DACPServer_ServerFree(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1[42];
  if (v10)
  {
    DNSServiceRefDeallocate(v10);
    a1[42] = 0;
  }

  v11 = a1[40];
  if (v11)
  {
    free(v11);
    a1[40] = 0;
  }

  a1[41] = 0;
  result = a1[39];
  if (result)
  {
    result = pthread_mutex_destroy(result);
    a1[39] = 0;
  }

  if (gLogCategory_DACPServer <= 40)
  {
    if (gLogCategory_DACPServer != -1 || (result = _LogCategory_Initialize(&gLogCategory_DACPServer, 0x28u), result))
    {

      return LogPrintF(&gLogCategory_DACPServer, "void __DACPServer_ServerFree(HTTPServerOldRef)", 0x28u, "Deleted\n", a5, a6, a7, a8, a9);
    }
  }

  return result;
}

uint64_t DACPServer_AddRemote(uint64_t a1, int a2, unsigned int *a3)
{
  pthread_mutex_lock(*(a1 + 312));
  if (a2)
  {
    v6 = *(a1 + 320);
    if (v6)
    {
      free(v6);
      *(a1 + 320) = 0;
    }

    *(a1 + 328) = 0;
  }

  bytes = 0;
  while (1)
  {
    RandomBytes(&bytes, 4uLL);
    v7 = *(a1 + 328);
    if (!v7)
    {
      break;
    }

    v8 = *(a1 + 320);
    while (1)
    {
      v9 = *v8++;
      if (v9 == bytes)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_10:
  appended = SimpleArrayAppendItem((a1 + 320), (a1 + 328), 4uLL, &bytes);
  if (!appended)
  {
    if (gLogCategory_DACPServer <= 40 && (gLogCategory_DACPServer != -1 || _LogCategory_Initialize(&gLogCategory_DACPServer, 0x28u)))
    {
      LogPrintF(&gLogCategory_DACPServer, "OSStatus DACPServer_AddRemote(DACPServerRef, Boolean, uint32_t *)", 0x28u, "Added remote %u\n", v10, v11, v12, v13, bytes);
    }

    appended = 0;
    *a3 = bytes;
  }

  pthread_mutex_unlock(*(a1 + 312));
  return appended;
}

uint64_t DACPServer_RemoveRemote(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(*(a1 + 312));
  v8 = *(a1 + 328);
  if (v8)
  {
    v9 = 0;
    v10 = *(a1 + 320);
    while (*(v10 + 4 * v9) != a2)
    {
      if (v8 == ++v9)
      {
        goto LABEL_5;
      }
    }

    if (v8 > v9)
    {
      v12 = v8 - 1;
      if (v8 - 1 > v9)
      {
        memcpy((v10 + 4 * v9), (v10 + 4 * (v9 + 1)), 4 * (v8 - (v9 + 1)));
      }

      *(a1 + 328) = v12;
    }

    if (gLogCategory_DACPServer <= 40 && (gLogCategory_DACPServer != -1 || _LogCategory_Initialize(&gLogCategory_DACPServer, 0x28u)))
    {
      LogPrintF(&gLogCategory_DACPServer, "OSStatus DACPServer_RemoveRemote(DACPServerRef, uint32_t)", 0x28u, "Removed remote %u\n", v4, v5, v6, v7, a2);
    }

    v11 = 0;
  }

  else
  {
LABEL_5:
    v11 = 4294960569;
  }

  pthread_mutex_unlock(*(a1 + 312));
  return v11;
}

uint64_t DataBuffer_Commit(uint64_t a1, void *a2, void *a3)
{
  result = *(a1 + 52);
  if (!result)
  {
    *(a1 + 52) = -6721;
    if (a2)
    {
      *a2 = *(a1 + 24);
    }

    if (a3)
    {
      *a3 = *(a1 + 32);
    }
  }

  return result;
}

uint64_t DataBuffer_AppendANSIFile(uint64_t a1, FILE *a2)
{
  v4 = malloc_type_malloc(0x8000uLL, 0x100004077774924uLL);
  if (!v4)
  {
    return 4294960568;
  }

  v5 = v4;
  while (1)
  {
    v6 = fread(v5, 1uLL, 0x8000uLL, a2);
    if (!v6)
    {
      break;
    }

    v7 = DataBuffer_Append(a1, v5, v6);
    if (v7)
    {
      v8 = v7;
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_7:
  free(v5);
  return v8;
}

uint64_t DataBuffer_AppendFile(uint64_t a1, char *__filename)
{
  v3 = fopen(__filename, "rb");
  if (v3)
  {
    v4 = a1;
    v5 = v3;
LABEL_6:
    appended = DataBuffer_AppendANSIFile(v4, v5);
    fclose(v3);
    return appended;
  }

  if (!*__error())
  {
    return 4294960596;
  }

  appended = *__error();
  if (!appended)
  {
    v4 = a1;
    v5 = 0;
    goto LABEL_6;
  }

  return appended;
}

uint64_t DataBuffer_RunProcessAndAppendOutput(uint64_t a1, char *a2)
{
  v3 = popen(a2, "r");
  if (v3)
  {
    v4 = v3;
    appended = DataBuffer_AppendANSIFile(a1, v3);
    pclose(v4);
    return appended;
  }

  else if (*__error())
  {
    result = *__error();
    if (!result)
    {

      return DataBuffer_AppendANSIFile(a1, 0);
    }
  }

  else
  {
    return 4294960596;
  }

  return result;
}

uint64_t IPCAgent_Create(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A0040688857C7uLL);
  if (v2)
  {
    v3 = v2;
    *(v2 + 8) = -1;
    RandomBytes(v2 + 16, 0x10uLL);
    v3[22] = v3[22] & 0xF | 0x40;
    v3[24] = v3[24] & 0x3F | 0x80;
    v4 = dispatch_queue_create("IPCAgent", 0);
    *v3 = v4;
    if (v4)
    {
      dispatch_set_context(v4, v3);
      dispatch_set_finalizer_f(*v3, _IPCAgent_Finalize);
      result = 0;
      *a1 = v3;
      return result;
    }

    _IPCAgent_Finalize(v3);
  }

  return 4294960568;
}

void _IPCAgent_Finalize(void *a1)
{
  *a1 = 0;
  v2 = a1[1];
  if (v2)
  {
    dispatch_semaphore_signal(v2);
  }

  free(a1);
}

void _IPCAgent_Delete(uint64_t a1)
{
  *(a1 + 96) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 40));
  }

  else
  {
    v3 = *(a1 + 32);
    if ((v3 & 0x80000000) == 0)
    {
      if (close(v3) && *__error())
      {
        __error();
      }

      *(a1 + 32) = -1;
    }
  }

  while (1)
  {
    v4 = *(a1 + 56);
    if (!v4)
    {
      break;
    }

    *(a1 + 56) = *v4;
    _IPCAgent_FreeMessage(v4);
  }

  v5 = *a1;

  dispatch_release(v5);
}

void _IPCAgent_FreeMessage(void *a1)
{
  for (i = a1[2]; i; i = a1[2])
  {
    a1[2] = *i;
    free(i);
  }

  free(a1);
}

void IPCAgent_DeleteSync(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  *(a1 + 8) = v2;
  dispatch_async_f(*a1, a1, _IPCAgent_Delete);
  if (v2)
  {
    dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);

    dispatch_release(v2);
  }
}

void _IPCAgent_Start(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = -1;
  v2 = ServerSocketOpenEx2(2, 2, 17, 0, 0, 3721, 0, -1, 0, &v8);
  v3 = v8;
  if (!v2)
  {
    *__dst = 1;
    if (!setsockopt(v8, 0, 20, __dst, 4u) || *__error() && !*__error())
    {
      v9 = 0;
      if (!getifaddrs(&v9))
      {
        if (v9)
        {
          v4 = v9;
          while (1)
          {
            ifa_name = v4->ifa_name;
            if (ifa_name)
            {
              if ((v4->ifa_flags & 8) != 0)
              {
                break;
              }
            }

            v4 = v4->ifa_next;
            if (!v4)
            {
              goto LABEL_16;
            }
          }

          strlcpy(__dst, ifa_name, 0x11uLL);
          *(a1 + 48) = if_nametoindex(v4->ifa_name);
          MEMORY[0x193B06880](v9);
          if (!SocketSetMulticastInterface(v3, __dst, *(a1 + 48)) && !SocketSetMulticastLoop(v3))
          {
            *(a1 + 68) = 0x490F05E8890E0210;
            *(a1 + 76) = 0;
            if (!_SocketJoinOrLeaveMulticast(v3, a1 + 68, __dst, *(a1 + 48), 1))
            {
              v6 = dispatch_source_create(MEMORY[0x1E69E96F8], v3, 0, *a1);
              if (v6)
              {
                v7 = v6;
                dispatch_set_context(v6, a1);
                dispatch_source_set_event_handler_f(v7, _IPCAgent_ReadHandler);
                dispatch_source_set_cancel_handler_f(v7, _IPCAgent_CancelHandler);
                dispatch_resume(v7);
                *(a1 + 32) = v3;
                *(a1 + 40) = v7;
                return;
              }
            }
          }
        }

        else
        {
LABEL_16:
          MEMORY[0x193B06880]();
        }
      }
    }
  }

  if ((v3 & 0x80000000) == 0 && close(v3))
  {
    if (*__error())
    {
      __error();
    }
  }
}

int *_IPCAgent_CancelHandler(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    if (result)
    {
      result = __error();
      if (*result)
      {
        result = __error();
      }
    }

    *(a1 + 32) = -1;
  }

  *(a1 + 40) = 0;
  return result;
}

void _IPCAgent_ReadHandler(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  v48 = 0;
  v49 = 0;
  memset(&v47, 0, sizeof(v47));
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  v4 = (a1 + 56);
  v3 = *(a1 + 56);
  if (v3)
  {
    v5 = 5 * UpTicksPerSecond_sTicksPerSecond;
    v6 = (a1 + 56);
    do
    {
      v7 = v6;
      v6 = v3;
      while (v2 - v6[1] > v5)
      {
        --*(a1 + 64);
        *v7 = *v6;
        _IPCAgent_FreeMessage(v6);
        v6 = *v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      v3 = *v6;
    }

    while (*v6);
  }

LABEL_10:
  v8 = malloc_type_malloc(0x5D0uLL, 0x1020040D6206B1BuLL);
  if (v8)
  {
    v9 = v8;
    v10 = v8 + 2;
    v48 = (v8 + 2);
    v49 = 1472;
    v47.msg_name = v45;
    v47.msg_namelen = 28;
    v47.msg_iov = &v48;
    v47.msg_iovlen = 1;
    v47.msg_control = &v52;
    *&v47.msg_controllen = 256;
    while (1)
    {
      v11 = recvmsg(*(a1 + 32), &v47, 0);
      if ((v11 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (!*__error())
      {
        goto LABEL_16;
      }

      v12 = *__error();
      if (v12 != 4)
      {
        if (v12)
        {
LABEL_16:
          v13 = *(a1 + 32);
          v50 = 4;
          v51 = 0;
          if (getsockopt(v13, 0xFFFF, 4353, &v51, &v50) && *__error())
          {
            __error();
          }

          if (v51)
          {
            v14 = *(a1 + 40);
            if (v14)
            {
              dispatch_source_cancel(v14);
              dispatch_release(*(a1 + 40));
            }

            else
            {
              v18 = *(a1 + 32);
              if ((v18 & 0x80000000) == 0)
              {
                if (close(v18))
                {
                  if (*__error())
                  {
                    __error();
                  }
                }

                *(a1 + 32) = -1;
              }
            }
          }
        }

        goto LABEL_53;
      }
    }

    v15 = v11 - 38;
    if (v11 >= 0x26 && v47.msg_controllen >= 0xC)
    {
      msg_control = v47.msg_control;
      if (v47.msg_control)
      {
        while (msg_control[1] || msg_control[2] != 20)
        {
          msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
          if ((msg_control + 3) > v47.msg_control + v47.msg_controllen)
          {
            LODWORD(msg_control) = 0;
            goto LABEL_38;
          }
        }

        LODWORD(msg_control) = *(msg_control + 7);
      }

LABEL_38:
      if (msg_control == *(a1 + 48) && *v10 == 828600425)
      {
        v19 = v9[44];
        v20 = v9[45];
        if (v19 < v20 && v20 != 255)
        {
          *(v9 + 185) = v15;
          if (*(v9 + 28) != *(a1 + 16) || *(v9 + 36) != *(a1 + 24))
          {
            if (v20 == 1)
            {
              v22 = CFDataCreate(0, v9 + 46, v15);
              if (v22)
              {
                v23 = v22;
                v24 = CFPropertyListCreateWithData(0, v22, 0, 0, 0);
                CFRelease(v23);
                if (v24)
                {
                  v25 = CFGetTypeID(v24);
                  if (v25 == CFDictionaryGetTypeID())
                  {
                    v26 = *(a1 + 96);
                    if (v26)
                    {
                      v26(v24, *(a1 + 104));
                    }
                  }

                  CFRelease(v24);
                }
              }

              goto LABEL_53;
            }

            while (1)
            {
              v27 = v4;
              v4 = *v4;
              if (!v4)
              {
                goto LABEL_64;
              }

              v28 = v4[2];
              v29 = bswap64(*(v28 + 12));
              v30 = bswap64(*(v9 + 12));
              if (v29 == v30)
              {
                v29 = bswap64(*(v28 + 20));
                v30 = bswap64(*(v9 + 20));
                if (v29 == v30)
                {
                  break;
                }
              }

              if (v29 < v30)
              {
                v31 = -1;
              }

              else
              {
                v31 = 1;
              }

              if ((v31 & 0x80000000) == 0)
              {
                goto LABEL_63;
              }
            }

            v31 = 0;
LABEL_63:
            if (!v31)
            {
              if (v20 != *(v28 + 45))
              {
                goto LABEL_53;
              }

              v35 = (v4 + 2);
              v36 = *(v28 + 44);
              if (v36 >= v19)
              {
                v37 = v4 + 2;
LABEL_73:
                if (v36 == v19)
                {
                  goto LABEL_53;
                }
              }

              else
              {
                while (1)
                {
                  v37 = v28;
                  v28 = *v28;
                  if (!v28)
                  {
                    break;
                  }

                  v36 = *(v28 + 44);
                  if (v36 >= v19)
                  {
                    goto LABEL_73;
                  }
                }
              }

              *v9 = v28;
              *v37 = v9;
              v38 = *(v4 + 6) + 1;
              *(v4 + 6) = v38;
              if (v38 == v20)
              {
                --*(a1 + 64);
                *v27 = *v4;
                Mutable = CFDataCreateMutable(0, 0);
                if (Mutable)
                {
                  v40 = Mutable;
                  for (i = *v35; i; i = *i)
                  {
                    CFDataAppendBytes(v40, i + 46, *(i + 185));
                  }

                  v42 = CFPropertyListCreateWithData(0, v40, 0, 0, 0);
                  CFRelease(v40);
                  if (v42)
                  {
                    v43 = CFGetTypeID(v42);
                    if (v43 == CFDictionaryGetTypeID())
                    {
                      v44 = *(a1 + 96);
                      if (v44)
                      {
                        v44(v42, *(a1 + 104));
                      }
                    }

                    CFRelease(v42);
                  }
                }

                _IPCAgent_FreeMessage(v4);
              }

              return;
            }

LABEL_64:
            if (*(a1 + 64) <= 19)
            {
              v32 = malloc_type_malloc(0x20uLL, 0x10200402CFBC8ADuLL);
              if (v32)
              {
                v33 = v32;
                *v9 = 0;
                v34 = mach_absolute_time();
                v33[2] = v9;
                *(v33 + 6) = 1;
                *v33 = *v27;
                v33[1] = v34;
                *v27 = v33;
                ++*(a1 + 64);
                return;
              }
            }
          }
        }
      }
    }

LABEL_53:
    free(v9);
  }
}

uint64_t IPCAgent_SendMessage(dispatch_queue_t *a1, const void *a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0x60040FAFB2B2FuLL);
  if (!v4)
  {
    return 4294960568;
  }

  v5 = v4;
  *v4 = a1;
  v4[1] = a2;
  CFRetain(a2);
  dispatch_async_f(*a1, v5, _IPCAgent_SendMessage);
  return 0;
}

void _IPCAgent_SendMessage(CFPropertyListRef *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, 512);
  v2 = *a1;
  Data = CFPropertyListCreateData(0, a1[1], kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (Data)
  {
    v4 = Data;
    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(v4);
    LODWORD(v8[0]) = 828600425;
    RandomBytes(v8 + 4, 0x10uLL);
    BYTE10(v8[0]) = BYTE10(v8[0]) & 0xF | 0x40;
    BYTE12(v8[0]) = BYTE12(v8[0]) & 0x3F | 0x80;
    *(&v8[1] + 4) = *(v2 + 1);
    BYTE4(v8[2]) = 0;
    BYTE5(v8[2]) = (Length + 1433) / 0x59A;
    do
    {
      if (Length >= 0x59A)
      {
        v7 = 1434;
      }

      else
      {
        v7 = Length;
      }

      __memcpy_chk();
      if (sendto(*(v2 + 8), v8, v7 + 38, 0, (v2 + 68), 0x10u) != v7 + 38 && (!*__error() || *__error()))
      {
        break;
      }

      BytePtr += v7;
      Length -= v7;
      ++BYTE4(v8[2]);
    }

    while (BYTE5(v8[2]) > BYTE4(v8[2]));
    CFRelease(v4);
  }

  CFRelease(a1[1]);
  free(a1);
}

intptr_t _IPCAgent_PerformHandler(const void *a1, uint64_t a2)
{
  dispatch_semaphore_wait(*(a2 + 8), 0xFFFFFFFFFFFFFFFFLL);
  Count = CFArrayGetCount(*(a2 + 24));
  CFArrayAppendValue(*(a2 + 24), a1);
  result = dispatch_semaphore_signal(*(a2 + 8));
  if (!Count)
  {
    v6 = *(a2 + 16);

    return dispatch_semaphore_signal(v6);
  }

  return result;
}

uint64_t DebugIPC_EnsureInitialized(uint64_t (*a1)(void, void, void), uint64_t a2)
{
  gDebugIPCHandlerFunc = a1;
  gDebugIPCHandlerContext = a2;
  if (gDebugIPCAgent)
  {
    return 0;
  }

  result = IPCAgent_Create(&gDebugIPCAgent);
  if (!result)
  {
    v3 = gDebugIPCAgent;
    *(gDebugIPCAgent + 96) = _DebugIPC_MessageHandler;
    *(v3 + 104) = v3;
    dispatch_async_f(*v3, v3, _IPCAgent_Start);
    return 0;
  }

  return result;
}

void _DebugIPC_MessageHandler(CFDictionaryRef theDict, dispatch_queue_t *a2)
{
  v17 = 0;
  theDicta = 0;
  cf = 0;
  if (!gDebugIPCHandlerFunc)
  {
    goto LABEL_4;
  }

  v4 = gDebugIPCHandlerFunc(theDict, &cf, gDebugIPCHandlerContext);
  if (!v4)
  {
LABEL_7:
    if (!cf)
    {
      return;
    }

    IPCAgent_SendMessage(a2, cf);
    goto LABEL_9;
  }

  if (v4 == -6714)
  {
LABEL_4:
    Value = CFDictionaryGetValue(theDict, @"command");
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFStringGetTypeID())
      {
        if (CFStringCompare(v6, @"logging", 0))
        {
          goto LABEL_7;
        }

        v8 = CFDictionaryGetValue(theDict, @"value");
        if (!v8 || (v9 = v8, v10 = CFGetTypeID(v8), v10 == CFStringGetTypeID()) && !LogControlCF(v9))
        {
          v17 = 0;
          if (!LogShow(&v17))
          {
            Formatted = CFPropertyListCreateFormatted(0, &theDicta, "{%kO=%s}", v11, v12, v13, v14, v15, @"value");
            free(v17);
            if (!Formatted)
            {
              cf = theDicta;
              if (!theDicta)
              {
                return;
              }

              CFDictionarySetValue(theDicta, @"responseType", v6);
              goto LABEL_7;
            }
          }
        }
      }
    }
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }
}

void DebugIPC_EnsureFinalized()
{
  if (gDebugIPCAgent)
  {
    IPCAgent_DeleteSync(gDebugIPCAgent);
    gDebugIPCAgent = 0;
  }
}

uint64_t DebugIPC_PerformF(uint64_t (*a1)(const __CFDictionary *a1), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  cf = 0;
  v11 = CFPropertyListBuildFormatted(0, 0, &cf, a3, &a9, a6, a7, a8);
  if (!v11)
  {
    if (a1)
    {
      v12 = a1;
    }

    else
    {
      v12 = _DebugIPC_ShowHandler;
    }

    v13 = cf;
    *context = 0u;
    *object = 0u;
    context[1] = dispatch_semaphore_create(1);
    if (context[1] && (object[0] = dispatch_semaphore_create(0)) != 0)
    {
      object[1] = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (object[1])
      {
        v14 = IPCAgent_Create(context);
        if (v14 || (v15 = context[0], *(context[0] + 12) = _IPCAgent_PerformHandler, v15[13] = context, dispatch_async_f(*v15, v15, _IPCAgent_Start), v14 = IPCAgent_SendMessage(context[0], v13), v14))
        {
          v11 = v14;
        }

        else
        {
          while (1)
          {
            v18 = object[0];
            v19 = dispatch_time(0, 300000000);
            if (dispatch_semaphore_wait(v18, v19))
            {
              break;
            }

            while (1)
            {
              dispatch_semaphore_wait(context[1], 0xFFFFFFFFFFFFFFFFLL);
              if (!CFArrayGetCount(object[1]))
              {
                break;
              }

              ValueAtIndex = CFArrayGetValueAtIndex(object[1], 0);
              CFRetain(ValueAtIndex);
              CFArrayRemoveValueAtIndex(object[1], 0);
              dispatch_semaphore_signal(context[1]);
              (v12)(ValueAtIndex, a2);
              CFRelease(ValueAtIndex);
            }

            dispatch_semaphore_signal(context[1]);
          }

          v11 = 0;
        }
      }

      else
      {
        v11 = 4294960568;
      }
    }

    else
    {
      v11 = 4294960596;
    }

    if (context[0])
    {
      IPCAgent_DeleteSync(context[0]);
    }

    if (context[1])
    {
      dispatch_release(context[1]);
    }

    if (object[0])
    {
      dispatch_release(object[0]);
    }

    if (object[1])
    {
      CFRelease(object[1]);
    }

    CFRelease(cf);
  }

  return v11;
}

uint64_t _DebugIPC_ShowHandler(const __CFDictionary *a1)
{
  v1 = *MEMORY[0x1E69E9858];
  Value = CFDictionaryGetValue(a1, @"value");
  return FPrintF(v1, "%@\n", v3, v4, v5, v6, v7, v8, Value);
}

uint64_t DebugPrintAssert(uint64_t result, int a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_DebugServicesAssert > 70)
  {
    return result;
  }

  v10 = result;
  if (gLogCategory_DebugServicesAssert == -1)
  {
    result = _LogCategory_Initialize(&gLogCategory_DebugServicesAssert, 0x46u);
    if (!result)
    {
      return result;
    }
  }

  if (a4)
  {
    for (i = a4 + 1; ; ++i)
    {
      v12 = *(i - 1);
      if (v12 == 47 || v12 == 92)
      {
        a4 = i;
      }

      else if (!*(i - 1))
      {
        break;
      }
    }
  }

  if (!a4)
  {
    a4 = "";
  }

  if (a2)
  {
    if (gLogCategory_DebugServicesLogging <= 70)
    {
      if (gLogCategory_DebugServicesLogging != -1 || (result = _LogCategory_Initialize(&gLogCategory_DebugServicesLogging, 0x46u), result))
      {
        result = LogPrintF(&gLogCategory_DebugServicesLogging, "void DebugPrintAssert(DebugAssertFlags, OSStatus, const char *, const char *, long, const char *, const char *, ...)", 0x46u, "### [ASSERT] %s:%ld %###s, %#m %V\n%s", a5, a6, a7, a8, a4);
      }
    }
  }

  else if (gLogCategory_DebugServicesLogging <= 70)
  {
    if (gLogCategory_DebugServicesLogging != -1 || (result = _LogCategory_Initialize(&gLogCategory_DebugServicesLogging, 0x46u), result))
    {
      result = LogPrintF(&gLogCategory_DebugServicesLogging, "void DebugPrintAssert(DebugAssertFlags, OSStatus, const char *, const char *, long, const char *, const char *, ...)", 0x46u, "### [ASSERT] %s:%ld %###s, %s %V\n%s", a5, a6, a7, a8, a4);
    }
  }

  if (v10)
  {
    if (!DebugIsDebuggerPresent())
    {
        ;
      }
    }

LABEL_33:
    __debugbreak();
    JUMPOUT(0x191F81AC4);
  }

  if (gLogCategory_DebugServicesBreak <= 70)
  {
    if (gLogCategory_DebugServicesBreak != -1 || (result = _LogCategory_Initialize(&gLogCategory_DebugServicesBreak, 0x46u), result))
    {
      result = DebugIsDebuggerPresent();
      if (result)
      {
        result = getenv("USERBREAK");
        if (result)
        {
          if (*result == 49)
          {
            goto LABEL_33;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DebugIsDebuggerPresent()
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  memset(v2, 0, sizeof(v2));
  *v33 = 0xE00000001;
  v34 = 1;
  v35 = getpid();
  v1 = 648;
  LODWORD(v3) = 0;
  sysctl(v33, 4u, v2, &v1, 0, 0);
  return (v3 >> 11) & 1;
}

BOOL DebugIsCurrentDispatchQueue(void *a1)
{
  v2 = dispatch_get_current_queue();
  v3 = v2 == a1;

  return v3;
}

void CUFatalErrorV(int *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v14 = 0;
  VASPrintF(&v14, a2, a3, a4, a5, a6, a7, a8);
  if (v14)
  {
    v8 = v14;
  }

  if (*a1 <= 90 && (*a1 != -1 || _LogCategory_Initialize(a1, 0x5Au)))
  {
    LogPrintF(a1, "void CUFatalErrorV(LogCategory *, const char *, va_list)", 0x5Au, "### Fatal Error: %s", v10, v11, v12, v13, v8);
  }

  _os_crash();
  __break(1u);
}

void FatalErrorV(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = 0;
  VASPrintF(&v9, a1, a2, a4, a5, a6, a7, a8);
  if (v9)
  {
    v8 = v9;
  }

  syslog(3, "### Fatal error: %s", v8);
  fprintf(*MEMORY[0x1E69E9848], "### Fatal error: %s\n", v8);
  _os_crash();
  __break(1u);
}

void *__ReportCriticalError_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 5);
  ReportCriticalError_sCrashReporterLib = result;
  if (result)
  {
    ReportCriticalError_sSimulateCrash_f = dlsym(result, "SimulateCrash");
    result = dlsym(ReportCriticalError_sCrashReporterLib, "WriteStackshotReportWithPID");
    ReportCriticalError_sWriteStackShot_f = result;
  }

  return result;
}

uint64_t DMAPContentBlock_Init(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 176) = 0;
  return result;
}

void DMAPContentBlock_Free(uint64_t a1)
{
  if (*(a1 + 40))
  {
    free(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  *(a1 + 16) = *a1;
  *(a1 + 24) = v2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 176) = 0;
}

uint64_t DMAPContentBlock_Commit(uint64_t a1, void *a2, void *a3)
{
  result = *(a1 + 180);
  if (!result)
  {
    if (*(a1 + 176))
    {
      return 4294960587;
    }

    else
    {
      result = 0;
      *(a1 + 180) = -6721;
      *a2 = *(a1 + 16);
      *a3 = *(a1 + 32);
    }
  }

  return result;
}

uint64_t DMAPContentBlock_OpenContainer(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 176) > 0xFu)
  {
    return 4294960567;
  }

  v6[0] = HIBYTE(a2);
  v6[1] = BYTE2(a2);
  v6[2] = BYTE1(a2);
  v6[3] = a2;
  v7 = 0;
  result = DMAPContentBlock_AddData(a1, v6, 8uLL);
  if (!result)
  {
    v4 = *(a1 + 32) - 4;
    v5 = *(a1 + 176);
    *(a1 + 176) = v5 + 1;
    *(a1 + 8 * v5 + 48) = v4;
  }

  return result;
}

uint64_t DMAPContentBlock_AddData(uint64_t a1, void *__src, size_t __n)
{
  result = *(a1 + 180);
  if (result)
  {
    return result;
  }

  v7 = *(a1 + 32);
  v8 = v7 + __n;
  if (v7 + __n <= *(a1 + 24))
  {
    goto LABEL_12;
  }

  if (v8 >= 0x800)
  {
    v9 = 2 * v8;
  }

  else
  {
    v9 = 4096;
  }

  v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
  if (v10)
  {
    v11 = v10;
    v12 = *(a1 + 32);
    if (v12)
    {
      memcpy(v10, *(a1 + 16), v12);
    }

    if (*(a1 + 40))
    {
      free(*(a1 + 16));
    }

    *(a1 + 16) = v11;
    *(a1 + 24) = v9;
    *(a1 + 40) = 1;
    v7 = *(a1 + 32);
LABEL_12:
    if (__src)
    {
      memcpy((*(a1 + 16) + v7), __src, __n);
      v7 = *(a1 + 32);
    }

    result = 0;
    *(a1 + 32) = v7 + __n;
    return result;
  }

  result = 4294960568;
  if (!*(a1 + 180))
  {
    *(a1 + 180) = -6728;
  }

  return result;
}

uint64_t DMAPContentBlock_CloseContainer(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (!v1)
  {
    return 4294960576;
  }

  v3 = v1 - 1;
  *(a1 + 176) = v3;
  v4 = *(a1 + 8 * v3 + 48);
  v5 = *(a1 + 32);
  if (v5 < v4 + 4)
  {
    return 4294960534;
  }

  result = 0;
  *(*(a1 + 16) + v4) = bswap32(v5 - (v4 + 4));
  return result;
}

uint64_t DMAPContentBlock_AddInt8(uint64_t a1, int a2, char a3)
{
  v7 = *MEMORY[0x1E69E9840];
  __src[0] = HIBYTE(a2);
  __src[1] = BYTE2(a2);
  __src[2] = BYTE1(a2);
  __src[3] = a2;
  v5 = 0x1000000;
  v6 = a3;
  return DMAPContentBlock_AddData(a1, __src, 9uLL);
}

uint64_t DMAPContentBlock_AddInt32(uint64_t a1, int a2, int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  __src[0] = HIBYTE(a2);
  __src[1] = BYTE2(a2);
  __src[2] = BYTE1(a2);
  __src[3] = a2;
  v5 = 0x4000000;
  v6 = HIBYTE(a3);
  v7 = BYTE2(a3);
  v8 = BYTE1(a3);
  v9 = a3;
  return DMAPContentBlock_AddData(a1, __src, 0xCuLL);
}

uint64_t DMAPContentBlock_AddCFObjectByKey(uint64_t a1, unsigned int a2, int a3, CFDictionaryRef theDict, void *key)
{
  v36 = *MEMORY[0x1E69E9840];
  result = CFDictionaryGetValue(theDict, key);
  if (!result)
  {
    return result;
  }

  v9 = result;
  if (!a3)
  {
    v10 = "hsac";
    v11 = 1667330920;
    while (v11 != a2)
    {
      v12 = *(v10 + 6);
      v10 += 24;
      v11 = v12;
      if (!v12)
      {
        return 4294960540;
      }
    }

    a3 = *(v10 + 16);
  }

  v25 = 0;
  result = 4294960561;
  if (a3 <= 6)
  {
    if ((a3 - 1) < 2)
    {
      v21 = CFGetInt64(v9, &v25);
      result = v25;
      if (v25)
      {
        return result;
      }

      LOBYTE(__src) = HIBYTE(a2);
      BYTE1(__src) = BYTE2(a2);
      BYTE2(__src) = BYTE1(a2);
      HIBYTE(__src) = a2;
      v27 = 0x1000000;
      v28 = v21;
      v18 = a1;
      v19 = 9;
    }

    else
    {
      if ((a3 - 3) >= 2)
      {
        if ((a3 - 5) < 2)
        {
          v13 = CFGetInt64(v9, &v25);
          result = v25;
          if (!v25)
          {
            return DMAPContentBlock_AddInt32(a1, a2, v13);
          }
        }

        return result;
      }

      v20 = CFGetInt64(v9, &v25);
      result = v25;
      if (v25)
      {
        return result;
      }

      LOBYTE(__src) = HIBYTE(a2);
      BYTE1(__src) = BYTE2(a2);
      BYTE2(__src) = BYTE1(a2);
      HIBYTE(__src) = a2;
      v27 = 0x2000000;
      v28 = HIBYTE(v20);
      v29 = v20;
      v18 = a1;
      v19 = 10;
    }

    return DMAPContentBlock_AddData(v18, &__src, v19);
  }

  if ((a3 - 7) < 2)
  {
    v17 = CFGetInt64(v9, &v25);
    result = v25;
    if (v25)
    {
      return result;
    }

    LOBYTE(__src) = HIBYTE(a2);
    BYTE1(__src) = BYTE2(a2);
    BYTE2(__src) = BYTE1(a2);
    HIBYTE(__src) = a2;
    v27 = 0x8000000;
    v28 = HIBYTE(v17);
    v29 = BYTE6(v17);
    v30 = BYTE5(v17);
    v31 = BYTE4(v17);
    v32 = BYTE3(v17);
    v33 = BYTE2(v17);
    v34 = BYTE1(v17);
    v35 = v17;
    v18 = a1;
    v19 = 16;
    return DMAPContentBlock_AddData(v18, &__src, v19);
  }

  if (a3 == 9)
  {
    v22 = CFCopyCString(v9, &v25);
    result = v25;
    if (!v25)
    {
      __src = bswap32(a2);
      v23 = strlen(v22);
      v27 = bswap32(v23);
      v24 = DMAPContentBlock_AddData(a1, &__src, 8uLL);
      if (!v24)
      {
        v24 = DMAPContentBlock_AddData(a1, v22, v23);
      }

      v25 = v24;
      free(v22);
      return v25;
    }
  }

  else if (a3 == 10)
  {
    v14 = CFGetTypeID(v9);
    if (v14 == CFDateGetTypeID())
    {
      MEMORY[0x193B04FE0](v9);
      v16 = (*MEMORY[0x1E695E468] + v15);

      return DMAPContentBlock_AddInt32(a1, a2, v16);
    }

    else
    {
      return 4294960540;
    }
  }

  return result;
}

uint64_t DMAPContentBlock_GetNextChunk(unsigned int *a1, unint64_t a2, _DWORD *a3, unint64_t *a4, unsigned int **a5, void *a6)
{
  if (a1 >= a2)
  {
    return 4294960569;
  }

  if ((a2 - a1) < 8)
  {
    return 4294960546;
  }

  v6 = bswap32(a1[1]);
  v7 = a1 + 2;
  if (a2 - (a1 + 2) < v6)
  {
    return 4294960546;
  }

  *a3 = bswap32(*a1);
  *a4 = v6;
  *a5 = v7;
  result = 0;
  if (a6)
  {
    *a6 = v7 + v6;
  }

  return result;
}

id CUAddSuffixForCurrentDeviceClass(void *a1)
{
  v1 = a1;
  if (GestaltGetDeviceClass_sOnce != -1)
  {
    dispatch_once(&GestaltGetDeviceClass_sOnce, &__block_literal_global_13571);
  }

  v2 = CUAddSuffixForDeviceClass(v1, GestaltGetDeviceClass_deviceClass);

  return v2;
}

id CUAddSuffixForDeviceClass(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
LABEL_13:
      v5 = @"_IPHONE";
      goto LABEL_17;
    }

    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v5 = @"_IPAD";
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    v5 = @"_IPOD";
  }

  else if (a2 > 6)
  {
    if (a2 != 100)
    {
      if (a2 == 7)
      {
        v5 = @"_HOMEPOD";
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    v5 = @"_MAC";
  }

  else
  {
    if (a2 != 4)
    {
      if (a2 == 6)
      {
        v5 = @"_WATCH";
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    v5 = @"_APPLETV";
  }

LABEL_17:
  v6 = [v3 stringByAppendingString:v5];

  return v6;
}

CoreUtilsNSSubrangeData *CFDataCreateSubdataWithRangeNoCopy(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v5 = [[CoreUtilsNSSubrangeData alloc] initWithData:a1 range:a2, a3];
  v6 = v5;
  if (!v5)
  {
    v8 = -6728;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = v5;
  v8 = 0;
  if (a4)
  {
LABEL_3:
    *a4 = v8;
  }

LABEL_4:

  return v6;
}

void CUEncodeNSErrorDictionary(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v31 = a2;
  v12 = a3;
  v29 = a4;
  v30 = a5;
  v13 = a6;
  if (v11)
  {
    v14 = *MEMORY[0x1E696A768];
    v15 = *MEMORY[0x1E696AA08];
    for (i = 3; ; --i)
    {
      v17 = MEMORY[0x1E696AD98];
      v18 = [v11 code];
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = -6700;
      }

      v20 = [v17 numberWithInteger:v19];
      [v31 setObject:v20 forKeyedSubscript:v12];

      v21 = [v11 domain];
      v22 = v21;
      if (v21 && ([v21 isEqual:v14] & 1) == 0)
      {
        [v31 setObject:v22 forKeyedSubscript:v29];
      }

      v23 = [v11 userInfo];
      TypeID = CFStringGetTypeID();
      v25 = CFDictionaryGetTypedValue(v23, @"cuErrorMsg", TypeID, 0);
      if ([v25 length])
      {
        [v31 setObject:v25 forKeyedSubscript:v30];
      }

      if (!i)
      {
        break;
      }

      v26 = CFErrorGetTypeID();
      v27 = CFDictionaryGetTypedValue(v23, v15, v26, 0);

      if (!v27)
      {
        v11 = 0;
        break;
      }

      v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v31 setObject:v28 forKeyedSubscript:v13];

      v31 = v28;
      v11 = v27;
    }
  }
}

id CUDecodeNSErrorDictionary(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v62[1] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v47 = a3;
  v46 = a4;
  v11 = a5;
  v51 = 0;
  v41 = v9;
  key = v10;
  CFDictionaryGetInt64Ranged(v9, v10, 0xFFFFFFFF80000000, 0x7FFFFFFFLL, &v51);
  if (v51)
  {
    v12 = 0;
  }

  else
  {
    v40 = v11;
    v60 = 0;
    v61 = 0;
    v62[0] = 0;
    v59 = v9;
    v13 = v59;
    if (v59)
    {
      TypeID = CFDictionaryGetTypeID();
      TypedValue = CFDictionaryGetTypedValue(v13, v40, TypeID, 0);
    }

    else
    {
      TypedValue = 0;
    }

    objc_storeStrong(&v60, TypedValue);
    v16 = v60;
    if (v60)
    {
      v17 = CFDictionaryGetTypeID();
      v18 = CFDictionaryGetTypedValue(v16, v40, v17, 0);
    }

    else
    {
      v18 = 0;
    }

    objc_storeStrong(&v61, v18);
    v19 = v61;
    if (v61)
    {
      v20 = CFDictionaryGetTypeID();
      v21 = CFDictionaryGetTypedValue(v19, v40, v20, 0);
    }

    else
    {
      v21 = 0;
    }

    objc_storeStrong(v62, v21);
    v12 = 0;
    v45 = *MEMORY[0x1E696A768];
    v42 = *MEMORY[0x1E696AA08];
    for (i = 24; i != -8; i -= 8)
    {
      v23 = *(&v59 + i);
      v24 = v23;
      if (v23)
      {
        v50 = v12;
        Value = CFDictionaryGetValue(v23, key);
        if (Value)
        {
          v52 = 0;
          v26 = CFGetInt64(Value, &v52);
        }

        else
        {
          v26 = 0;
        }

        v27 = CFStringGetTypeID();
        v28 = CFDictionaryGetTypedValue(v24, v47, v27, 0);
        v29 = CFStringGetTypeID();
        v30 = CFDictionaryGetTypedValue(v24, v46, v29, 0);
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        if (v28)
        {
          v32 = v28;
        }

        else
        {
          v32 = v45;
        }

        if (v12)
        {
          if ([v30 length])
          {
            v57[0] = v42;
            v57[1] = @"cuErrorMsg";
            v58[0] = v12;
            v58[1] = v30;
            v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
            v33 = 0;
            v34 = 0;
            v35 = 1;
            v36 = v49;
          }

          else
          {
            v55 = v42;
            v56 = v12;
            v33 = 1;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
            v35 = 0;
            v43 = v34 = 0;
            v36 = v43;
          }
        }

        else if ([v30 length])
        {
          v53 = @"cuErrorMsg";
          v54 = v30;
          v34 = 1;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          v35 = 0;
          v33 = 0;
          v36 = v44;
        }

        else
        {
          v35 = 0;
          v33 = 0;
          v34 = 0;
          v36 = 0;
        }

        v37 = [v31 initWithDomain:v32 code:v26 userInfo:{v36, v40}];

        if (v34)
        {
        }

        if (v33)
        {
        }

        if (v35)
        {
        }

        v12 = v37;
      }
    }

    for (j = 24; j != -8; j -= 8)
    {
    }

    v11 = v40;
  }

  return v12;
}

id CULocalizedString(void *a1)
{
  v1 = a1;
  if (CULocalizedString_sOnce != -1)
  {
    dispatch_once(&CULocalizedString_sOnce, &__block_literal_global_10929);
  }

  if (CULocalizedString_bundle)
  {
    v2 = [CULocalizedString_bundle localizations];
    v3 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x1E695E890], @"mobile", *MEMORY[0x1E695E898]);
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [MEMORY[0x1E695DF58] preferredLanguages];
    }

    v6 = v5;

    v7 = &unk_1EADEB000;
    if (v2)
    {
      if (v6)
      {
        v8 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:v2 forPreferences:v6];
        v9 = [v8 firstObject];

        v7 = &unk_1EADEB000;
        if (v9)
        {
          v10 = [CULocalizedString_bundle pathForResource:@"Localizable" ofType:@"strings" inDirectory:@"." forLocalization:v9];
          if (v10)
          {
            v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v10];
            if (CUIsGreenTeaDevice_sOnce != -1)
            {
              dispatch_once(&CUIsGreenTeaDevice_sOnce, &__block_literal_global_82);
            }

            if (CUIsGreenTeaDevice_sResult != 1 || ([v1 stringByAppendingString:@"_GT"], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKeyedSubscript:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
            {
              v13 = [v11 objectForKeyedSubscript:v1];
            }

            v7 = &unk_1EADEB000;
            if (v13)
            {
              goto LABEL_26;
            }
          }

          else
          {

            v7 = &unk_1EADEB000;
          }
        }
      }
    }

    if (CUIsGreenTeaDevice_sOnce != -1)
    {
      dispatch_once(&CUIsGreenTeaDevice_sOnce, &__block_literal_global_82);
    }

    if (v7[2316] == 1)
    {
      v14 = [v1 stringByAppendingString:@"_GT"];
      v13 = [CULocalizedString_bundle localizedStringForKey:v14 value:@"_GT" table:@"Localizable"];
      if ([v13 isEqual:@"_GT"])
      {
      }

      else
      {

        if (v13)
        {
LABEL_26:

          goto LABEL_27;
        }
      }
    }

    v13 = [CULocalizedString_bundle localizedStringForKey:v1 value:&stru_1F068B090 table:@"Localizable"];
    goto LABEL_26;
  }

  v13 = v1;
LABEL_27:

  return v13;
}

uint64_t __CULocalizedString_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreUtils"];
  v1 = CULocalizedString_bundle;
  CULocalizedString_bundle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void *CULocalizedStringEx(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (CUIsGreenTeaDevice_sOnce != -1)
  {
    dispatch_once(&CUIsGreenTeaDevice_sOnce, &__block_literal_global_82);
  }

  if (CUIsGreenTeaDevice_sResult != 1)
  {
    goto LABEL_6;
  }

  v8 = [v7 stringByAppendingString:@"_GT"];
  v9 = [v5 localizedStringForKey:v8 value:@"_GT" table:v6];

  if ([v9 isEqual:@"_GT"])
  {

LABEL_6:
    v10 = 0;
    goto LABEL_8;
  }

  v10 = v9;
LABEL_8:
  if (![v10 length])
  {
    v11 = [v5 localizedStringForKey:v7 value:&stru_1F068B090 table:v6];

    v10 = v11;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12;

  return v12;
}

id CUNormalizeEmailAddress(void *a1, int a2)
{
  v3 = [a1 lowercaseString];
  v4 = v3;
  if (a2 && (([v3 hasSuffix:@"@me.com"] & 1) != 0 || objc_msgSend(v4, "hasSuffix:", @"@mac.com")))
  {
    v5 = [v4 componentsSeparatedByString:@"@"];
    if ([v5 count])
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = [v5 objectAtIndexedSubscript:0];
      v8 = [v6 stringWithFormat:@"%@@icloud.com", v7];
    }

    else
    {
      v8 = v4;
    }
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

void *CUNormalizePhoneNumber(void *a1)
{
  v1 = a1;
  v2 = softLinkCPPhoneNumberCopyActiveCountryCode[0]();
  v3 = (softLinkPNCopyBestGuessNormalizedNumberForCountry[0])(v1, v2);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  v5 = (softLinkCFPhoneNumberCreate[0])(0, v4, v2);
  free(v3);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = (softLinkCFPhoneNumberCreateString[0])(0, v5, 2);
  CFRelease(v5);
  if (v6)
  {
    v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"+"];
    v5 = [v6 stringByTrimmingCharactersInSet:v7];
  }

  else
  {
LABEL_9:
    v5 = 0;
  }

LABEL_5:
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v1;
  }

  v9 = v8;

  return v8;
}

uint64_t initCFPhoneNumberCreateString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (CorePhoneNumbersLibrary_sOnce != -1)
  {
    dispatch_once(&CorePhoneNumbersLibrary_sOnce, &__block_literal_global_264);
  }

  v6 = dlsym(CorePhoneNumbersLibrary_sLib, "CFPhoneNumberCreateString");
  softLinkCFPhoneNumberCreateString[0] = v6;

  return (v6)(a1, a2, a3);
}

void *__CorePhoneNumbersLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CorePhoneNumbers.framework/CorePhoneNumbers", 2);
  CorePhoneNumbersLibrary_sLib = result;
  return result;
}

uint64_t initCFPhoneNumberCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (CorePhoneNumbersLibrary_sOnce != -1)
  {
    dispatch_once(&CorePhoneNumbersLibrary_sOnce, &__block_literal_global_264);
  }

  v6 = dlsym(CorePhoneNumbersLibrary_sLib, "CFPhoneNumberCreate");
  softLinkCFPhoneNumberCreate[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initPNCopyBestGuessNormalizedNumberForCountry(uint64_t a1, uint64_t a2)
{
  if (CorePhoneNumbersLibrary_sOnce != -1)
  {
    dispatch_once(&CorePhoneNumbersLibrary_sOnce, &__block_literal_global_264);
  }

  v4 = dlsym(CorePhoneNumbersLibrary_sLib, "PNCopyBestGuessNormalizedNumberForCountry");
  softLinkPNCopyBestGuessNormalizedNumberForCountry[0] = v4;

  return (v4)(a1, a2);
}

uint64_t initCPPhoneNumberCopyActiveCountryCode()
{
  if (AppSupportLibrary_sOnce != -1)
  {
    dispatch_once(&AppSupportLibrary_sOnce, &__block_literal_global_260_10958);
  }

  v0 = dlsym(AppSupportLibrary_sLib, "CPPhoneNumberCopyActiveCountryCode");
  softLinkCPPhoneNumberCopyActiveCountryCode[0] = v0;

  return v0();
}

void *__AppSupportLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppSupport.framework/AppSupport", 2);
  AppSupportLibrary_sLib = result;
  return result;
}

id CUNumericSuffixRemoved(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"(.*)\\s+\\(\\d+\\)$" options:0 error:0];
  v3 = [v2 firstMatchInString:v1 options:0 range:{0, objc_msgSend(v1, "length")}];
  if ([v3 numberOfRanges] == 2 && (v5 = objc_msgSend(v3, "rangeAtIndex:", 1), v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = [v1 substringWithRange:{v5, v4}];
  }

  else
  {
    v6 = v1;
  }

  v7 = v6;

  return v7;
}

id CURandomString()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v7 - ((v1 + 16) & 0xFFFFFFFFFFFFFFF0);
  *v2 = 0;
  RandomString(v0, v3, v4, v1, v2);
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v2];

  return v5;
}

CFMutableStringRef CUStateDumpWithObject(uint64_t a1, void *a2, int *a3)
{
  v11 = a2;
  if (a3 && *a3 <= 50 && (*a3 != -1 || _LogCategory_Initialize(a3, 0x32u)))
  {
    LogPrintF(a3, "struct os_state_data_s *CUStateDumpWithObject(const char *, __strong id, LogCategory *)", 0x32u, "State dump: %s\n", v7, v8, v9, v10, a1);
  }

  v52 = 0;
  NSAppendPrintF(&v52, "\n", v5, v6, v7, v8, v9, v10, v47);
  v12 = v52;
  v13 = CUDescriptionWithLevel(v11, 0);
  v20 = v13;
  if (v13)
  {
    v51 = v12;
    NSAppendPrintF(&v51, "%@\n", v14, v15, v16, v17, v18, v19, v13);
    v21 = v51;

    if (!v21)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v21 = v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  v28 = [(__CFString *)v21 length];
  if (v28 >= 0x7449)
  {
    if (a3 && *a3 <= 90 && (*a3 != -1 || _LogCategory_Initialize(a3, 0x5Au)))
    {
      LogPrintF(a3, "struct os_state_data_s *CUStateDumpWithObject(const char *, __strong id, LogCategory *)", 0x5Au, "### Statedump truncate: %s, %zu -> %zu\n", v24, v25, v26, v27, a1);
    }

    v53.length = v28 - 29768;
    v53.location = 29768;
    CFStringDelete(v21, v53);
    v50 = v21;
    NSAppendPrintF(&v50, "\n...\n", v29, v30, v31, v32, v33, v34, v48);
    v35 = v50;

    v21 = v35;
  }

  v49 = v21;
  NSAppendPrintF(&v49, "%s State End\n", v22, v23, v24, v25, v26, v27, a1);
  v36 = v49;

  v37 = [MEMORY[0x1E696AE40] dataWithPropertyList:v36 format:100 options:0 error:0];
  v38 = v37;
  if (v37)
  {
    v39 = [v37 length];
    v40 = malloc_type_calloc(1uLL, v39 + 200, 0x1000040BEF03554uLL);
    v21 = v40;
    if (v40)
    {
      LODWORD(v40->isa) = 1;
      HIDWORD(v40->isa) = v39;
      SNPrintF(&v40[4].info, 64, "%s State", v41, v42, v43, v44, v45, a1);
      memcpy(&v21[6].info, [v38 bytes], v39);
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_21:
  return v21;
}

uint64_t CUTXTDataCreateWithDictionary(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__10976;
  v14 = __Block_byref_object_dispose__10977;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CUTXTDataCreateWithDictionary_block_invoke;
  v9[3] = &unk_1E73A4700;
  v9[4] = v5;
  v9[5] = &v10;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v11[5];
  if (a3 && v6)
  {
    *a3 = v6;
    v6 = v11[5];
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 copy];
  }

  _Block_object_dispose(&v10, 8);

  return v7;
}

void sub_191F85194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10976(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __CUTXTDataCreateWithDictionary_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 8);
  v13 = *(v10 + 40);
  v11 = (v10 + 40);
  v12 = v13;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v61 = 0;
  [v16 appendBytes:&v61 length:1];
  v23 = [v16 length];
  if (!v23)
  {
    v58 = NSErrorWithOSStatusF(4294960568, "Append TXT item header failed", v17, v18, v19, v20, v21, v22, v60);
LABEL_19:
    v12 = v58;
    v59 = v58;
    goto LABEL_12;
  }

  v24 = [v14 UTF8String];
  v25 = strlen(v24);
  v32 = v25;
  if (v25 > (v61 ^ 0xFFuLL))
  {
    v58 = NSErrorWithOSStatusF(4294960553, "Append TXT key exceeds max len: (%d - %u) < %zu", v26, v27, v28, v29, v30, v31, 255);
    goto LABEL_19;
  }

  [v16 appendBytes:v24 length:v25];
  v61 += v32;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v61 == 255)
    {
      v58 = NSErrorWithOSStatusF(4294960553, "Append TXT value '=' exceeds max len: (%d - %u) < 1", v33, v34, v35, v36, v37, v38, 255);
    }

    else
    {
      [v16 appendBytes:"=" length:1];
      ++v61;
      v39 = [v15 UTF8String];
      v40 = strlen(v39);
      v47 = v40;
      if (v40 <= (v61 ^ 0xFFuLL))
      {
        [v16 appendBytes:v39 length:v40];
        v48 = v61 + v47;
        v61 = v48;
LABEL_10:
        *([v16 mutableBytes] + v23 - 1) = v48;
        goto LABEL_12;
      }

      v58 = NSErrorWithOSStatusF(4294960553, "Append TXT value exceeds max len: (%d - %u) < %zu", v41, v42, v43, v44, v45, v46, 255);
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 BOOLValue])
  {
    v48 = v61;
    goto LABEL_10;
  }

  v49 = objc_opt_class();
  v50 = NSStringFromClass(v49);
  v12 = NSErrorWithOSStatusF(4294960540, "Append TXT value with unsupported type (%@)", v51, v52, v53, v54, v55, v56, v50);
  v57 = v12;

LABEL_12:
  objc_storeStrong(v11, v12);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

uint64_t CUTXTDictionaryCreateWithTXTData(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = [v4 bytes];
  v6 = [v4 length];
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v6)
  {
    v14 = &v5[v6];
    v15 = MEMORY[0x1E695E118];
    while (1)
    {
      v17 = v5 + 1;
      v16 = *v5;
      if (v14 - (v5 + 1) < v16)
      {
        break;
      }

      v18 = &v5[v16 + 1];
      if (*v5)
      {
        ++v5;
        while (1)
        {
          v19 = *v5;
          v20 = v19 != 61;
          if (v19 == 61)
          {
            break;
          }

          ++v5;
          if (!--v16)
          {
            v20 = 1;
            v5 = v18;
            break;
          }
        }
      }

      else
      {
        v20 = 1;
        ++v5;
      }

      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v17 length:v5 - v17 encoding:4];
      if (!v27)
      {
        if (a3)
        {
          v37 = NSErrorWithOSStatusF(4294960554, "Invalid UTF-8 TXT key", v21, v22, v23, v24, v25, v26, v38);
          v27 = 0;
          goto LABEL_24;
        }

        v27 = 0;
LABEL_26:

        goto LABEL_27;
      }

      if (v20)
      {
        [v13 setObject:v15 forKeyedSubscript:v27];
      }

      else
      {
        v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v5 + 1 length:v18 - (v5 + 1) encoding:4];
        if (!v34)
        {
          if (a3)
          {
            v37 = NSErrorWithOSStatusF(4294960554, "Invalid UTF-8 TXT value", v28, v29, v30, v31, v32, v33, v38);
LABEL_24:
            *a3 = v37;
          }

          goto LABEL_26;
        }

        [v13 setObject:v34 forKeyedSubscript:v27];

        v5 = v18;
      }

      if (v5 == v14)
      {
        goto LABEL_16;
      }
    }

    if (a3)
    {
      NSErrorWithOSStatusF(4294960546, "TXT item truncated", v7, v8, v9, v10, v11, v12, v38);
      *a3 = v35 = 0;
      goto LABEL_17;
    }

LABEL_27:
    v35 = 0;
  }

  else
  {
LABEL_16:
    v35 = [v13 copy];
  }

LABEL_17:

  return v35;
}

id NSArrayGetNSUUIDAtIndex(void *a1, uint64_t a2, int *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:a2];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v7;
        v8 = 0;
        v9 = v7;
      }

      else
      {
        v10 = CFGetTypeID(v7);
        if (v10 == CFUUIDGetTypeID())
        {
          v12 = CFUUIDGetUUIDBytes(v7);
          v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v12];
          v8 = 0;
        }

        else
        {
          v9 = 0;
          v8 = -6756;
        }
      }
    }

    else
    {
      v9 = 0;
      v8 = -6727;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v8 = -6705;
  }

  if (a3)
  {
    *a3 = v8;
  }

  return v9;
}

id NSArrayGetValueAtIndexOfClass(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = a1;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectAtIndexedSubscript:a2];
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v8;
        v9 = 0;
        v10 = v8;
      }

      else
      {
        v10 = 0;
        v9 = -6756;
      }
    }

    else
    {
      v10 = 0;
      v9 = -6727;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v9 = -6705;
  }

  if (a4)
  {
    *a4 = v9;
  }

  return v10;
}

uint64_t NSArrayValidateClasses(void *a1, int a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v25 = a3;
  v8 = a4;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v24 = a2;
    v11 = *v31;
    while (1)
    {
      v12 = 0;
LABEL_4:
      if (*v31 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (!v14)
      {
        break;
      }

      v15 = *v27;
LABEL_8:
      v16 = 0;
      while (1)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v13);
        }

        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v14)
          {
            goto LABEL_8;
          }

          goto LABEL_18;
        }
      }

      if (++v12 != v10)
      {
        goto LABEL_4;
      }

      v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
      v17 = 1;
      if (!v10)
      {
        goto LABEL_22;
      }
    }

LABEL_18:

    if (v24)
    {
      v18 = MEMORY[0x1E695DF30];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v13 allObjects];
      v22 = [v21 componentsJoinedByString:{@", "}];
      [v18 raise:*MEMORY[0x1E695D940] format:{@"'%@' array contained unexpected type %@, allowed types: %@", v25, v20, v22}];
    }

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

LABEL_22:

  return v17;
}

id NSDataCompress(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = [v5 length];
  v7 = v6;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:0x4000];
    memset(&v27.avail_in, 0, 104);
    v27.avail_in = v7;
    v27.avail_out = v7;
    v27.next_in = [v5 bytes];
    v27.next_out = [v8 mutableBytes];
    if ((a2 & 2) != 0)
    {
      v9 = 9;
    }

    else
    {
      v9 = -1;
    }

    if (a2)
    {
      v10 = 15;
    }

    else
    {
      v10 = 31;
    }

    v11 = deflateInit2_(&v27, v9, 8, v10, 8, 0, "1.2.12", 112);
    if (v11)
    {
      v25 = NSErrorWithOSStatusF(v11, "deflateInit2 failed", v12, v13, v14, v15, v16, v17, v27.next_in);
      v22 = v25;
      v21 = 0;
      if (a3 && v25)
      {
        v26 = v25;
        v21 = 0;
        *a3 = v22;
      }
    }

    else
    {
      do
      {
        total_out = v27.total_out;
        if (total_out >= [v8 length])
        {
          [v8 increaseLengthBy:0x4000];
        }

        v19 = [v8 mutableBytes];
        v27.next_out = (v19 + v27.total_out);
        v20 = [v8 length];
        v27.avail_out = v20 - LODWORD(v27.total_out);
        deflate(&v27, 4);
      }

      while (!v27.avail_out);
      deflateEnd(&v27);
      [v8 setLength:v27.total_out];
      v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:v8];
      v22 = 0;
    }

    v23 = v8;
  }

  else
  {
    v23 = 0;
    v21 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    v22 = 0;
  }

  return v21;
}

id NSDataDecompress(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = [v4 length];
  if (v5)
  {
    if (v5 >= 0x8000)
    {
      v6 = 0x4000;
    }

    else
    {
      v6 = v5 >> 1;
    }

    v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v5];
    memset(&v24.avail_in, 0, 104);
    v24.next_in = [v4 bytes];
    v24.avail_in = [v4 length];
    v8 = inflateInit2_(&v24, 47, "1.2.12", 112);
    if (v8)
    {
      v18 = "inflateInit2 failed";
    }

    else
    {
      while (1)
      {
        total_out = v24.total_out;
        if (total_out >= [v7 length])
        {
          [v7 increaseLengthBy:v6];
        }

        v16 = [v7 mutableBytes];
        v24.next_out = (v16 + v24.total_out);
        v17 = [v7 length];
        v24.avail_out = v17 - LODWORD(v24.total_out);
        v8 = inflate(&v24, 2);
        if (v8 == 1)
        {
          break;
        }

        if (v8)
        {
          v18 = "inflate failed";
          goto LABEL_19;
        }
      }

      v8 = inflateEnd(&v24);
      if (!v8)
      {
        [v7 setLength:v24.total_out];
        v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:v7];
        v20 = 0;
        goto LABEL_14;
      }

      v18 = "inflateEnd failed";
    }

LABEL_19:
    v22 = NSErrorWithOSStatusF(v8, v18, v9, v10, v11, v12, v13, v14, v24.next_in);
    v20 = v22;
    v19 = 0;
    if (a3 && v22)
    {
      v23 = v22;
      v19 = 0;
      *a3 = v20;
    }
  }

  else
  {
    v7 = 0;
    v19 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    v20 = 0;
  }

LABEL_14:

  return v19;
}

id NSDataWithHex(char *a1, int64_t a2, char a3, char **a4, int *a5)
{
  v11 = 0;
  v12 = 0;
  v6 = HexToDataCopy(a1, a2, a3, &v12, &v11, a4);
  if (v6)
  {
    v9 = v6;
    v7 = v12;
  }

  else
  {
    v7 = v12;
    v8 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v12 length:v11];
    if (v8)
    {
      v9 = 0;
      if (!a5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v9 = -6728;
  }

  if (v7)
  {
    free(v7);
  }

  v8 = 0;
  if (a5)
  {
LABEL_4:
    *a5 = v9;
  }

LABEL_5:

  return v8;
}

void NSDecodeNSSetOfClassIfPresent(void *a1, void *a2, uint64_t a3, void **a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v25 = v6;
  if ([v6 containsValueForKey:v7])
  {
    v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), a3, 0}];
    v9 = [v25 decodeObjectOfClasses:v8 forKey:v7];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v23 = v8;
    v11 = MEMORY[0x1E695D940];
    if ((isKindOfClass & 1) == 0)
    {
      v12 = MEMORY[0x1E695DF30];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [v12 raise:*v11 format:{@"bad set type for key %@, %@", v7, v14}];
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = *v27;
      v18 = *v11;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MEMORY[0x1E695DF30] raise:v18 format:{@"bad set element type for key %@ : %@", v7, v20}];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    v21 = *a4;
    *a4 = v15;
    v22 = v15;
  }
}

id NSDictionaryGetNSUUID(void *a1, void *a2, int *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:v6];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v7;
        v8 = 0;
        v9 = v7;
      }

      else
      {
        v10 = CFGetTypeID(v7);
        if (v10 == CFUUIDGetTypeID())
        {
          v12 = CFUUIDGetUUIDBytes(v7);
          v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v12];
          v8 = 0;
        }

        else
        {
          v9 = 0;
          v8 = -6756;
        }
      }
    }

    else
    {
      v9 = 0;
      v8 = -6727;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v8 = -6705;
  }

  if (a3)
  {
    *a3 = v8;
  }

  return v9;
}

id NSDictionaryGetValueOfClass(void *a1, void *a2, uint64_t a3, int *a4)
{
  v6 = a1;
  v7 = a2;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:v7];
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v8;
        v9 = 0;
        v10 = v8;
      }

      else
      {
        v10 = 0;
        v9 = -6756;
      }
    }

    else
    {
      v10 = 0;
      v9 = -6727;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v9 = -6705;
  }

  if (a4)
  {
    *a4 = v9;
  }

  return v10;
}

uint64_t NSDictionaryValidateClasses(void *a1, int a2, void *a3, void *a4, void *a5)
{
  v52 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v35 = a3;
  v10 = a4;
  v36 = a5;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (!v12)
  {
    v25 = 1;
    goto LABEL_35;
  }

  v34 = a2;
  v13 = *v46;
  while (2)
  {
    v14 = 0;
    while (2)
    {
      if (*v46 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v45 + 1) + 8 * v14);
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v16 = v10;
      v17 = [v16 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (!v17)
      {
LABEL_28:

        if (!v34)
        {
          v20 = 0;
          goto LABEL_34;
        }

        v26 = MEMORY[0x1E695DF30];
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = [v16 allObjects];
        v30 = [v29 componentsJoinedByString:{@", "}];
        [v26 raise:*MEMORY[0x1E695D940] format:{@"'%@' dictionary contained unexpected key type %@, allowed types: %@", v35, v28, v30}];
        v20 = 0;
LABEL_32:

LABEL_34:
        v25 = 0;
        goto LABEL_35;
      }

      v18 = *v42;
LABEL_8:
      v19 = 0;
      while (1)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v16);
        }

        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v16 countByEnumeratingWithState:&v41 objects:v50 count:16];
          if (v17)
          {
            goto LABEL_8;
          }

          goto LABEL_28;
        }
      }

      v20 = [v11 objectForKeyedSubscript:v15];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v21 = v36;
      v22 = [v21 countByEnumeratingWithState:&v37 objects:v49 count:16];
      if (!v22)
      {
LABEL_30:

        if (!v34)
        {
          goto LABEL_34;
        }

        v31 = MEMORY[0x1E695DF30];
        v32 = objc_opt_class();
        v28 = NSStringFromClass(v32);
        v29 = [v21 allObjects];
        v30 = [v29 componentsJoinedByString:{@", "}];
        [v31 raise:*MEMORY[0x1E695D940] format:{@"'%@' dictionary contained unexpected value type %@, allowed types: %@", v35, v28, v30}];
        goto LABEL_32;
      }

      v23 = *v38;
LABEL_17:
      v24 = 0;
      while (1)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v21);
        }

        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [v21 countByEnumeratingWithState:&v37 objects:v49 count:16];
          if (v22)
          {
            goto LABEL_17;
          }

          goto LABEL_30;
        }
      }

      if (++v14 != v12)
      {
        continue;
      }

      break;
    }

    v12 = [v11 countByEnumeratingWithState:&v45 objects:v51 count:16];
    v25 = 1;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_35:

  return v25;
}

id NSErrorF(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a1;
  v12 = v11;
  if (a2)
  {
    v13 = NSErrorV(v11, a2, a3, &a9);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id NSErrorF_safe(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a1;
  v12 = v11;
  if (a2)
  {
    v13 = NSErrorV(v11, a2, a3, &a9);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id NSErrorV_safe(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = NSErrorV(a1, a2, a3, a4);

  return v4;
}

id NSErrorNestedF(void *a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a1;
  v13 = a3;
  if (a2)
  {
    v14 = NSErrorNestedV(v12, a2, v13, a4, &a9);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id NSErrorNestedV(void *a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5)
{
  v38[4] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  if (a2)
  {
    ErrorString = DebugGetErrorStringEx(v9, a2, 0, 0);
    v25 = NSPrintV(a4, a5, v12, v13, v14, v15, v16, v17);
    if (*ErrorString)
    {
      NSPrintF("%s (%@)", v18, v19, v20, v21, v22, v23, v24, ErrorString);
    }

    else
    {
      NSPrintF("%d (%@)", v18, v19, v20, v21, v22, v23, v24, a2);
    }
    v27 = ;
    v28 = objc_alloc(MEMORY[0x1E696ABC0]);
    if (v9)
    {
      v29 = v9;
    }

    else
    {
      v29 = *MEMORY[0x1E696A768];
    }

    v30 = &stru_1F068B090;
    if (v25)
    {
      v30 = v25;
    }

    if (v10)
    {
      v37[0] = @"cuErrorDesc";
      v37[1] = @"cuErrorMsg";
      v38[0] = v27;
      v38[1] = v30;
      v31 = *MEMORY[0x1E696AA08];
      v37[2] = *MEMORY[0x1E696A578];
      v37[3] = v31;
      v38[2] = v27;
      v38[3] = v10;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:4];
    }

    else
    {
      v35[0] = @"cuErrorDesc";
      v35[1] = @"cuErrorMsg";
      v36[0] = v27;
      v36[1] = v30;
      v35[2] = *MEMORY[0x1E696A578];
      v36[2] = v27;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
    }

    v33 = v32;
    v26 = [v28 initWithDomain:v29 code:a2 userInfo:v32];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

id NSErrorNestedF_safe(void *a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a1;
  v13 = a3;
  if (a2)
  {
    v14 = NSErrorNestedV(v12, a2, v13, a4, &a9);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id NSErrorNestedV_safe(void *a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = NSErrorNestedV(a1, a2, a3, a4, a5);

  return v5;
}

uint64_t NSPredicateMatches(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = [v5 evaluateWithObject:v6 substitutionVariables:v7];
  }

  else
  {
    v8 = [v5 evaluateWithObject:v6];
  }

  v9 = v8;

  return v9;
}

id NSRandomData(size_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v22 = "Requested 0 random bytes";
LABEL_10:
    v20 = NSErrorWithOSStatusF(4294960553, v22, a3, a4, a5, a6, a7, a8, v24);
    goto LABEL_12;
  }

  v10 = malloc_type_malloc(a1, 0x344A7978uLL);
  if (!v10)
  {
    v24 = a1;
    v22 = "malloc %zu bytes failed";
    goto LABEL_10;
  }

  v11 = v10;
  RandomBytes(v10, a1);
  v12 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytesNoCopy:v11 length:a1 deallocator:*MEMORY[0x1E696A260]];
  if (v12)
  {
    v19 = v12;
    v20 = 0;
    goto LABEL_5;
  }

  v20 = NSErrorWithOSStatusF(4294960553, "Alloc NSData %zu bytes failed", v13, v14, v15, v16, v17, v18, a1);
  free(v11);
LABEL_12:
  v19 = 0;
  if (a2 && v20)
  {
    v23 = v20;
    v19 = 0;
    *a2 = v20;
  }

LABEL_5:

  return v19;
}

id NSStringWithMACAddress(uint64_t a1)
{
  v1 = 0;
  v10 = *MEMORY[0x1E69E9840];
  v2 = v9;
  do
  {
    if (v2 == v9)
    {
      v3 = v9;
    }

    else
    {
      *v2 = 58;
      v3 = v2 + 1;
    }

    v4 = *(a1 + v1);
    v5 = v1 + 1;
    *v3 = a0123456789abcd_0[v4 >> 4];
    v6 = a0123456789abcd_0[v4 & 0xF];
    v2 = v3 + 2;
    v3[1] = v6;
    v1 = v5;
  }

  while (v5 != 6);
  *v2 = 0;
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v9 encoding:1];

  return v7;
}

uint64_t _HIDBrowserGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gHIDBrowserTypeID = result;
  return result;
}

void _HIDBrowserFinalize(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    pthread_mutex_destroy(v2);
    *(a1 + 96) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 16) = 0;
  }
}

uint64_t HIDBrowserCreate(uint64_t *a1)
{
  if (gHIDBrowserInitOnce != -1)
  {
    dispatch_once_f(&gHIDBrowserInitOnce, 0, _HIDBrowserGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v3 = Instance;
  *(Instance + 136) = 0;
  *(Instance + 120) = 0u;
  *(Instance + 104) = 0u;
  *(Instance + 88) = 0u;
  *(Instance + 72) = 0u;
  *(Instance + 56) = 0u;
  *(Instance + 40) = 0u;
  *(Instance + 24) = 0u;
  v4 = MEMORY[0x1E69E96A0];
  *(v3 + 16) = MEMORY[0x1E69E96A0];
  dispatch_retain(v4);
  v5 = pthread_mutex_init((v3 + 32), 0);
  if (v5)
  {
    CFRelease(v3);
  }

  else
  {
    *(v3 + 96) = v3 + 32;
    *(v3 + 104) = 1;
    *a1 = v3;
  }

  return v5;
}

uint64_t HIDBrowserSetEventHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 128) = a2;
  *(result + 136) = a3;
  return result;
}

uint64_t HIDBrowserStart(dispatch_queue_t *a1)
{
  CFRetain(a1);
  dispatch_async_f(a1[2], a1, _HIDBrowserStart);
  return 0;
}

void _HIDBrowserStart(uint64_t a1)
{
  if (*(a1 + 104))
  {
    v2 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
    *(a1 + 112) = v2;
    if (!v2)
    {
      v9 = 4294960596;
      goto LABEL_4;
    }

    IONotificationPortSetDispatchQueue(v2, *(a1 + 16));
    v7 = *(a1 + 112);
    v8 = IOServiceMatching("IOHIDDevice");
    v9 = IOServiceAddMatchingNotification(v7, "IOServiceFirstMatch", v8, _HIDBrowserAttachHandler, a1, (a1 + 120));
    if (v9)
    {
      goto LABEL_4;
    }
  }

  pthread_mutex_lock(*(a1 + 96));
  v10 = *(a1 + 24);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 24) = 0;
  }

  *(a1 + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  pthread_mutex_unlock(*(a1 + 96));
  if (!*(a1 + 24))
  {
    v9 = 4294960568;
LABEL_4:
    if (gLogCategory_HIDUtils <= 50 && (gLogCategory_HIDUtils != -1 || _LogCategory_Initialize(&gLogCategory_HIDUtils, 0x32u)))
    {
      LogPrintF(&gLogCategory_HIDUtils, "void _HIDBrowserStart(void *)", 0x32u, "### HID browser start failed: %#m\n", v3, v4, v5, v6, v9);
    }

    _HIDBrowserStop(a1);
    return;
  }

  pthread_mutex_lock(&gVirtualHIDLock);
  pthread_mutex_unlock(&gVirtualHIDLock);
  if (*(a1 + 128))
  {
    Count = CFArrayGetCount(*(a1 + 24));
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
        (*(a1 + 128))(2, ValueAtIndex, *(a1 + 136));
      }
    }
  }

  v15 = *(a1 + 120);
  if (v15)
  {
    _HIDBrowserAttachHandler(a1, v15);
  }

  v16 = *(a1 + 128);
  if (v16)
  {
    v16(4, 0, *(a1 + 136));
  }

  CFRelease(a1);
}

uint64_t _HIDBrowserAttachHandler(uint64_t a1, io_iterator_t iterator)
{
  runLoopMode = *MEMORY[0x1E695E8D0];
  v4 = MEMORY[0x1E69E96A0];
  while (1)
  {
    result = IOIteratorNext(iterator);
    if (!result)
    {
      return result;
    }

    v6 = result;
    if (gHIDDeviceInitOnce != -1)
    {
      dispatch_once_f(&gHIDDeviceInitOnce, 0, _HIDDeviceGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    v12 = Instance;
    if (!Instance)
    {
LABEL_33:
      v14 = 4294960568;
      goto LABEL_10;
    }

    *(Instance + 152) = 0;
    *(Instance + 136) = 0u;
    *(Instance + 120) = 0u;
    *(Instance + 104) = 0u;
    *(Instance + 88) = 0u;
    *(Instance + 72) = 0u;
    *(Instance + 56) = 0u;
    *(Instance + 40) = 0u;
    *(Instance + 24) = 0u;
    *(Instance + 16) = v4;
    dispatch_retain(v4);
    if (a1)
    {
      CFRetain(a1);
    }

    *(v12 + 24) = a1;
    v13 = IOHIDDeviceCreate(0, v6);
    *(v12 + 32) = v13;
    if (!v13)
    {
      v14 = 4294960596;
      goto LABEL_10;
    }

    v14 = IOHIDDeviceOpen(v13, 0);
    if (v14)
    {
LABEL_10:
      if (gLogCategory_HIDUtils <= 50 && (gLogCategory_HIDUtils != -1 || _LogCategory_Initialize(&gLogCategory_HIDUtils, 0x32u)))
      {
        LogPrintF(&gLogCategory_HIDUtils, "OSStatus _HIDDeviceCreateWithService(HIDDeviceRef *, HIDBrowserRef, io_object_t)", 0x32u, "### Add HID device failed: %#m\n", v8, v9, v10, v11, v14);
      }

      CFRelease(v12);
      IOObjectRelease(v6);
    }

    else
    {
      *(v12 + 40) = 1;
      Property = IOHIDDeviceGetProperty(*(v12 + 32), @"Product");
      if (!Property)
      {
        Property = @"?";
      }

      *(v12 + 104) = Property;
      CFRetain(Property);
      v16 = IOHIDDeviceGetProperty(*(v12 + 32), @"MaxInputReportSize");
      if (v16)
      {
        v17 = CFGetInt64(v16, 0);
        *(v12 + 56) = v17;
      }

      else
      {
        v17 = *(v12 + 56);
      }

      if (v17 <= 0)
      {
        *(v12 + 56) = 32;
        v17 = 32;
      }

      v18 = malloc_type_malloc(v17, 0x100004077774924uLL);
      *(v12 + 48) = v18;
      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = IOHIDDeviceGetProperty(*(v12 + 32), @"ReportDescriptor");
      if (!v19)
      {
        v14 = 4294960551;
        goto LABEL_10;
      }

      v20 = v19;
      CFRetain(v19);
      *(v12 + 120) = v20;
      RandomBytes((v12 + 136), 0x10uLL);
      *(v12 + 142) = *(v12 + 142) & 0xF | 0x40;
      *(v12 + 144) = *(v12 + 144) & 0x3F | 0x80;
      v21 = *(v12 + 32);
      Main = CFRunLoopGetMain();
      IOHIDDeviceScheduleWithRunLoop(v21, Main, runLoopMode);
      if (a1)
      {
        IOHIDDeviceRegisterRemovalCallback(*(v12 + 32), _HIDBrowserDetachHandler, v12);
      }

      IOObjectRelease(v6);
      if (gLogCategory_HIDUtils <= 30 && (gLogCategory_HIDUtils != -1 || _LogCategory_Initialize(&gLogCategory_HIDUtils, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_HIDUtils, "void _HIDBrowserAttachHandler(void *, io_iterator_t)", 0x1Eu, "Attached HID device %#U (%-3d byte reports): %@\n", v23, v24, v25, v26, v12 + 136);
      }

      pthread_mutex_lock(*(a1 + 96));
      CFArrayAppendValue(*(a1 + 24), v12);
      pthread_mutex_unlock(*(a1 + 96));
      v27 = *(a1 + 128);
      if (v27)
      {
        v27(2, v12, *(a1 + 136));
      }

      CFRelease(v12);
    }
  }
}

void _HIDBrowserStop(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    IOObjectRelease(v2);
    *(a1 + 120) = 0;
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    IONotificationPortDestroy(v3);
    *(a1 + 112) = 0;
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    v4(1, 0, *(a1 + 136));
  }

  pthread_mutex_lock(*(a1 + 96));
  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  pthread_mutex_unlock(*(a1 + 96));

  CFRelease(a1);
}

CFIndex _HIDBrowserDetachHandler(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[3];
  if (gLogCategory_HIDUtils <= 30 && (gLogCategory_HIDUtils != -1 || _LogCategory_Initialize(&gLogCategory_HIDUtils, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_HIDUtils, "void _HIDBrowserDetachHandler(void *, IOReturn, void *)", 0x1Eu, "Detached HID device %#U: %@\n", a5, a6, a7, a8, (a1 + 17));
  }

  v10 = *(v9 + 128);
  if (v10)
  {
    v10(3, a1, *(v9 + 136));
  }

  v11 = *(v9 + 24);
  v16.length = CFArrayGetCount(v11);
  v16.location = 0;
  result = CFArrayGetFirstIndexOfValue(v11, v16, a1);
  if ((result & 0x8000000000000000) == 0)
  {
    v13 = result;
    pthread_mutex_lock(*(v9 + 96));
    CFArrayRemoveValueAtIndex(*(v9 + 24), v13);
    v14 = *(v9 + 96);

    return pthread_mutex_unlock(v14);
  }

  return result;
}

uint64_t _HIDDeviceGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gHIDDeviceTypeID = result;
  return result;
}

void _HIDDeviceFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    Main = CFRunLoopGetMain();
    IOHIDDeviceUnscheduleFromRunLoop(v3, Main, *MEMORY[0x1E695E8D0]);
    IOHIDDeviceRegisterRemovalCallback(*(a1 + 32), 0, a1);
    IOHIDDeviceClose(*(a1 + 32), 0);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 32) = 0;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    free(v6);
    *(a1 + 48) = 0;
  }

  *(a1 + 56) = 0;
  v7 = *(a1 + 88);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 88) = 0;
  }

  v8 = *(a1 + 96);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 96) = 0;
  }

  v9 = *(a1 + 104);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 104) = 0;
  }

  v10 = *(a1 + 112);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 112) = 0;
  }

  v11 = *(a1 + 120);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 120) = 0;
  }

  v12 = *(a1 + 128);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 128) = 0;
  }

  v13 = *(a1 + 152);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 152) = 0;
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    dispatch_release(v14);
    *(a1 + 16) = 0;
  }
}

void HIDBrowserStop(void *a1)
{
  CFRetain(a1);
  v2 = a1[2];

  dispatch_async_f(v2, a1, _HIDBrowserStop);
}

void HIDBrowserStopDevices(void *a1)
{
  CFRetain(a1);
  v2 = a1[2];

  dispatch_async_f(v2, a1, _HIDBrowserStopDevices);
}

void _HIDBrowserStopDevices(CFTypeRef cf)
{
  v2 = *(cf + 3);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(cf + 3), i);
        CFRetain(ValueAtIndex);
        dispatch_async_f(ValueAtIndex[2], ValueAtIndex, _HIDDeviceStop);
      }
    }
  }

  CFRelease(cf);
}

void _HIDDeviceStop(void *context)
{
  if (*(context + 64))
  {
    *(context + 64) = 0;
    v2 = *(context + 4);
    if (v2)
    {
      IOHIDDeviceRegisterInputReportCallback(v2, *(context + 6), *(context + 7), 0, context);
    }

    v3 = *(context + 9);
    if (v3)
    {
      v3(0, 1, 0, 0, 0, *(context + 10));
    }

    CFRelease(context);
  }

  CFRelease(context);
}

uint64_t HIDDeviceSetEventHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 72) = a2;
  *(result + 80) = a3;
  return result;
}

CFStringRef HIDDeviceCopyProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3, int *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (CFEqual(cf1, @"countryCode"))
  {
    v7 = *(a1 + 88);
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (CFEqual(cf1, @"displayUUID"))
  {
    v7 = *(a1 + 96);
    if (!v7)
    {
      goto LABEL_30;
    }

    goto LABEL_9;
  }

  if (CFEqual(cf1, @"name"))
  {
    v7 = *(a1 + 104);
    goto LABEL_9;
  }

  if (CFEqual(cf1, @"productID"))
  {
    v7 = *(a1 + 112);
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (CFEqual(cf1, @"hidDescriptor"))
  {
    v7 = *(a1 + 120);
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (CFEqual(cf1, @"sampleRate"))
  {
    v7 = *(a1 + 128);
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!CFEqual(cf1, @"uuid"))
  {
    if (!CFEqual(cf1, @"vendorID"))
    {
      v7 = 0;
LABEL_30:
      v8 = -6727;
      goto LABEL_11;
    }

    v7 = *(a1 + 152);
    if (!v7)
    {
      goto LABEL_10;
    }

LABEL_9:
    CFRetain(v7);
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  UUIDtoCStringFlags((a1 + 136), 16, 0, 0, cStr, 0);
  v7 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v7)
  {
    goto LABEL_10;
  }

  v8 = -6728;
LABEL_11:
  if (a4)
  {
    *a4 = v8;
  }

  return v7;
}

uint64_t HIDDeviceStart(dispatch_queue_t *a1)
{
  CFRetain(a1);
  dispatch_async_f(a1[2], a1, _HIDDeviceStart);
  return 0;
}

void _HIDDeviceStart(void *context)
{
  if (*(context + 40))
  {
    IOHIDDeviceRegisterInputReportCallback(*(context + 4), *(context + 6), *(context + 7), _HIDDeviceHandleReport, context);
  }

  *(context + 64) = 1;
}

uint64_t _HIDDeviceHandleReport(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = result;
  if (gLogCategory_HIDUtils <= 9)
  {
    if (gLogCategory_HIDUtils != -1 || (result = _LogCategory_Initialize(&gLogCategory_HIDUtils, 9u), result))
    {
      result = LogPrintF(&gLogCategory_HIDUtils, "void _HIDDeviceHandleReport(void *, IOReturn, void *, IOHIDReportType, uint32_t, uint8_t *, CFIndex)", 9u, "HID report for %#U: %.3H\n", a5, a6, a7, a8, v11 + 136);
    }
  }

  v12 = *(v11 + 72);
  if (v12)
  {
    v13 = *(v11 + 80);

    return v12(v11, 2, a2, a6, a7, v13);
  }

  return result;
}

void HIDDeviceStop(void *a1)
{
  CFRetain(a1);
  v2 = a1[2];

  dispatch_async_f(v2, a1, _HIDDeviceStop);
}

uint64_t _HTTPClientGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gHTTPClientTypeID = result;
  return result;
}

uint64_t HTTPClientCreateWithSocket(uint64_t *a1, int a2)
{
  v6 = 0;
  result = HTTPClientCreate(&v6);
  if (!result)
  {
    v5 = v6;
    *(v6 + 200) = a2;
    *a1 = v5;
  }

  return result;
}

void HTTPClientSetClientContext(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 160) = cf;
}

uint64_t HTTPClientGetPeerAddress(uint64_t a1, sockaddr *a2, socklen_t a3, void *a4)
{
  v6 = a3;
  if (getpeername(*(a1 + 200), a2, &v6))
  {
    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result)
    {
      return result;
    }
  }

  result = 0;
  if (a4)
  {
    *a4 = v6;
  }

  return result;
}

uint64_t HTTPClientSetConnectionProgressHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 184) = a2;
  *(result + 192) = a3;
  return result;
}

__n128 HTTPClientSetDebugDelegate(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 472) = a2[1].n128_u64[0];
  *(a1 + 456) = result;
  return result;
}

__n128 HTTPClientSetDelegate(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 64) = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

_DWORD *HTTPClientSetKeepAlive(_DWORD *result, int a2, int a3)
{
  result[28] = a2;
  result[29] = a2;
  result[30] = a3;
  return result;
}

_DWORD *HTTPClientSetKeepAliveEx(_DWORD *result, int a2, int a3, int a4)
{
  result[28] = a2;
  result[29] = a3;
  result[30] = a4;
  return result;
}

uint64_t _HTTPClientSetProperty(uint64_t a1, CFTypeRef cf1, const __CFString *a3)
{
  if (CFEqual(cf1, @"allowedAuthSchemes"))
  {
    v6 = CFGetInt64(a3, 0);
    result = 0;
    *(a1 + 24) = v6;
    return result;
  }

  if (CFEqual(cf1, @"ipv6DelayNanos"))
  {
    v8 = CFGetInt64(a3, 0);
    result = 0;
    *(a1 + 88) = v8;
    return result;
  }

  if (CFEqual(cf1, @"password"))
  {
    if (!a3)
    {
      v14 = 0;
LABEL_14:
      v11 = *(a1 + 128);
      if (v11)
      {
        free(v11);
      }

      result = 0;
      *(a1 + 128) = v14;
      return result;
    }

    v9 = CFGetTypeID(a3);
    if (v9 == CFStringGetTypeID())
    {
      v14 = 0;
      if (CFStringGetLength(a3) >= 1)
      {
        result = CFStringCopyUTF8CString(a3, &v14);
        if (result)
        {
          return result;
        }
      }

      goto LABEL_14;
    }

    return 4294960540;
  }

  if (CFEqual(cf1, @"rfc2617DigestAuth"))
  {
    v10 = CFGetInt64(a3, 0);
    result = 0;
    *(a1 + 136) = v10 != 0;
    return result;
  }

  if (!CFEqual(cf1, @"username"))
  {
    return 4294960582;
  }

  if (a3)
  {
    v12 = CFGetTypeID(a3);
    if (v12 != CFStringGetTypeID())
    {
      return 4294960540;
    }

    v14 = 0;
    if (CFStringGetLength(a3) >= 1)
    {
      result = CFStringCopyUTF8CString(a3, &v14);
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v13 = *(a1 + 152);
  if (v13)
  {
    free(v13);
  }

  result = 0;
  *(a1 + 152) = v14;
  return result;
}

uint64_t HTTPClientSetTimeout(uint64_t a1, uint64_t a2)
{
  *(a1 + 144) = a2;
  result = *(a1 + 200);
  if ((result & 0x80000000) == 0)
  {
    result = SocketSetTCPTimeout(result, a2);
    if (result)
    {
      result = *(a1 + 96);
      if (*result <= 60)
      {
        if (*result != -1)
        {
          return LogPrintF(result, "void HTTPClientSetTimeout(HTTPClientRef, int)", 0x3Cu, "### Set TCP timeout to %d seconds failed: %#m\n", v5, v6, v7, v8, a2);
        }

        result = _LogCategory_Initialize(result, 0x3Cu);
        if (result)
        {
          result = *(a1 + 96);
          return LogPrintF(result, "void HTTPClientSetTimeout(HTTPClientRef, int)", 0x3Cu, "### Set TCP timeout to %d seconds failed: %#m\n", v5, v6, v7, v8, a2);
        }
      }
    }
  }

  return result;
}

uint64_t HTTPClientSetTransportDelegate(uint64_t a1, __int128 *a2)
{
  v4 = a1 + 480;
  v5 = *(a1 + 496);
  if (v5)
  {
    v5(*v4);
  }

  v6 = *a2;
  v7 = a2[1];
  *(v4 + 32) = *(a2 + 4);
  *v4 = v6;
  *(v4 + 16) = v7;
  *(a1 + 520) = 1;
  ++*(a1 + 524);
  result = *(a1 + 200);
  if ((result & 0x80000000) == 0)
  {
    v9 = *(a1 + 488);
    if (v9)
    {

      return v9();
    }
  }

  return result;
}

uint64_t HTTPClientDetach(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[66])
  {
    return 4294960575;
  }

  a1[66] = a2;
  a1[67] = a3;
  a1[68] = a4;
  a1[69] = a5;
  v9 = a1[12];
  if (*v9 > 30)
  {
    return 0;
  }

  if (*v9 != -1)
  {
LABEL_4:
    LogPrintF(v9, "OSStatus HTTPClientDetach(HTTPClientRef, HTTPClientDetachHandler_f, void *, void *, void *)", 0x1Eu, "Detaching client for %s\n", a5, a6, a7, a8, a1[9]);
    return 0;
  }

  result = _LogCategory_Initialize(v9, 0x1Eu);
  if (result)
  {
    v9 = a1[12];
    goto LABEL_4;
  }

  return result;
}

uint64_t HTTPClientSendBinaryBytes(uint64_t a1, char a2, char a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  if (a5 >= 0x10000)
  {
    v25 = *(a1 + 96);
    if (*v25 <= 90)
    {
      if (*v25 == -1)
      {
        if (!_LogCategory_Initialize(v25, 0x5Au))
        {
          return 4294960553;
        }

        v25 = *(a1 + 96);
      }

      LogPrintF_safe(v25, "OSStatus HTTPClientSendBinaryBytes(HTTPClientRef, HTTPMessageFlags, uint8_t, const void *, size_t, HTTPMessageBinaryCompletion_f, void *)", 0x5Au, "### Bad binary length: %zu", a5, a6, a7, a8, a5);
    }

    return 4294960553;
  }

  v15 = HTTPMessageCreate(&cf);
  v22 = cf;
  if (v15)
  {
    goto LABEL_3;
  }

  if (a2)
  {
    *(cf + 1065) = a4;
    *(v22 + 1066) = a5;
  }

  else
  {
    v15 = HTTPMessageSetBodyLength(cf, a5);
    if (v15)
    {
LABEL_3:
      v23 = v15;
      if (!v22)
      {
        return v23;
      }

      goto LABEL_13;
    }

    if (a5)
    {
      memmove(*(v22 + 1065), a4, a5);
    }
  }

  *(v22 + 24) = 36;
  *(v22 + 25) = a3;
  *(v22 + 26) = BYTE1(a5);
  *(v22 + 27) = a5;
  *(v22 + 1027) = 4;
  if (a6)
  {
    *(v22 + 1213) = a6;
    *(v22 + 1209) = a7;
    *(v22 + 1214) = _HTTPClientSendBinaryCompletion;
  }

  v23 = HTTPClientSendMessage(a1, v22, v16, v17, v18, v19, v20, v21);
LABEL_13:
  CFRelease(v22);
  return v23;
}

uint64_t _HTTPClientSocketEventsHandler(void *a1)
{
  result = a1[30];
  if (!result)
  {
    return result;
  }

  data = dispatch_source_get_data(result);
  result = a1[12];
  if (*result <= 50)
  {
    if (*result == -1)
    {
      result = _LogCategory_Initialize(result, 0x32u);
      if (!result)
      {
        goto LABEL_6;
      }

      result = a1[12];
    }

    result = LogPrintF(result, "void _HTTPClientSocketEventsHandler(void *)", 0x32u, "Socket events: raw 0x%llX, flags %#{flags}", v3, v4, v5, v6, data);
  }

LABEL_6:
  if ((data >> 4) & 0x800 | (((data >> 8) & 1) << 10))
  {
    v8 = a1[8];
    if (v8)
    {
      v9 = a1[4];

      return v8((data >> 4) & 0x800 | (((data >> 8) & 1) << 10), v9);
    }
  }

  return result;
}

uint64_t _HTTPClientWriteHandler(uint64_t a1)
{
  dispatch_suspend(*(a1 + 224));
  *(a1 + 232) = 1;
  v2 = *(a1 + 560);
  if (v2)
  {
    v3 = *(v2 + 9644);
    if (v3 >= 1)
    {
      v4 = *(a1 + 248);
      if (v4)
      {
        v5 = dispatch_time(0, 1000000000 * v3);
        dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      }
    }
  }

  return _HTTPClientRunStateMachine(a1);
}

uint64_t HTTPClientSendMessageSync(dispatch_queue_t *a1, uint64_t a2)
{
  v4 = dispatch_semaphore_create(0);
  if (!v4)
  {
    return 4294960568;
  }

  v11 = v4;
  *(a2 + 9664) = v4;
  *(a2 + 9712) = _HTTPClientSendMessageSyncCompletion;
  v12 = HTTPClientSendMessage(a1, a2, v5, v6, v7, v8, v9, v10);
  if (!v12)
  {
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    v12 = *(a2 + 9648);
    if (!v12)
    {
      v13 = *(a2 + 8456);
      v14 = v13 - 200;
      v15 = v13 + 200000;
      if (v14 >= 0x64)
      {
        v12 = v15;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  dispatch_release(v11);
  return v12;
}

uint64_t _HTTPMessageGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gHTTPMessageTypeID = result;
  return result;
}

uint64_t HTTPMessageSetBodyFileDescriptor(uint64_t a1, int a2, unint64_t a3, uint64_t a4, char a5)
{
  memset(&v24, 0, sizeof(v24));
  if (fstat(a2, &v24))
  {
    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result)
    {
      return result;
    }
  }

  if (a3 || (v24.st_mode & 0xF000) == 0x8000)
  {
    v16 = lseek(a2, a3, (a3 >> 62) & 2);
    if (v16 == -1)
    {
      if (!*__error())
      {
        return 4294960596;
      }

      result = *__error();
      if (result)
      {
        return result;
      }

      v16 = -1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (a4 >= 0)
  {
    v17 = a4;
  }

  else
  {
    v17 = v24.st_size - v16;
  }

  HTTPHeader_SetField((a1 + 24), "Content-Length", "%lld", v10, v11, v12, v13, v14, v17);
  if (v17 >= 0x100000)
  {
    v18 = 0x100000;
  }

  else
  {
    v18 = v17;
  }

  if (v18 > 0x3E8)
  {
    v20 = malloc_type_realloc(*(a1 + 9552), v18, 0x100004077774924uLL);
    if (!v20)
    {
      return 4294960568;
    }

    v19 = v20;
    *(a1 + 9552) = v20;
  }

  else
  {
    v19 = (a1 + 8552);
  }

  *(a1 + 8520) = v19;
  *(a1 + 8536) = v18;
  if (v17)
  {
    v21 = read(a2, v19, v18);
    if (v21 > 0)
    {
LABEL_25:
      *(a1 + 8528) = v21;
      v22 = v17 - v21;
      goto LABEL_28;
    }

    if (*__error())
    {
      result = *__error();
      if (result)
      {
        return result;
      }

      goto LABEL_25;
    }

    return 4294960596;
  }

  v22 = 0;
  *(a1 + 8528) = 0;
LABEL_28:
  if (*(a1 + 9732))
  {
    v23 = *(a1 + 9728);
    if ((v23 & 0x80000000) == 0)
    {
      if (close(v23))
      {
        if (*__error())
        {
          __error();
        }
      }
    }
  }

  result = 0;
  *(a1 + 9728) = a2;
  *(a1 + 9732) = a5;
  *(a1 + 9736) = v22;
  return result;
}

uint64_t HTTPMessageSetBodyFilePath(uint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{
  do
  {
    v8 = open(a2, 0);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = HTTPMessageSetBodyFileDescriptor(a1, v8, a3, a4, 1);
      if (v9 && close(v8) && *__error())
      {
        __error();
      }

      return v9;
    }

    if (!*__error())
    {
      return 4294960596;
    }

    v9 = *__error();
  }

  while (v9 == 4);
  if (v9)
  {
    return v9;
  }

  return HTTPMessageSetBodyFileDescriptor(a1, v8, a3, a4, 1);
}

void HTTPMessageSetCompletionBlock(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 9720);
  if (v5)
  {
    _Block_release(v5);
  }

  *(a1 + 9720) = v4;
  if (aBlock)
  {
    v6 = _HTTPMessageCompletionHandler;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 9712) = v6;
}

uint64_t HTTPMessageSetReceiveFilePath(uint64_t a1, char *__s1)
{
  v3 = strdup(__s1);
  if (!v3)
  {
    return 4294960568;
  }

  v4 = v3;
  v5 = *(a1 + 9744);
  if (v5)
  {
    free(v5);
  }

  *(a1 + 9744) = v4;
  v6 = *(a1 + 9752);
  if (v6 < 0)
  {
    return 0;
  }

  if (close(v6))
  {
    if (*__error())
    {
      __error();
    }
  }

  result = 0;
  *(a1 + 9752) = -1;
  return result;
}

CFMutableDictionaryRef HTTPMessageCreateDictionary(uint64_t a1, char a2, int *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    if ((a2 & 2) != 0)
    {
      v15 = 0;
      v16 = 0;
      v13 = 0;
      v14 = 0;
      v9 = (a1 + 24);
      v17 = (a1 + 24);
      v10 = a1 + 24 + *(a1 + 8216);
      while (!HTTPGetHeaderField(v9, v10 - v9, 0, &v16, &v15, &v14, &v13, &v17))
      {
        v11 = CFStringCreateWithBytes(0, v16, v15, 0x8000100u, 0);
        if (!v11)
        {
          CFRelease(Mutable);
          Mutable = 0;
          v7 = -6742;
          goto LABEL_4;
        }

        v12 = v11;
        CFDictionarySetCString(Mutable, v11, v14, v13);
        CFRelease(v12);
        v9 = v17;
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = -6728;
  }

LABEL_4:
  if (a3)
  {
    *a3 = v7;
  }

  return Mutable;
}

uint64_t HTTPMessageGetOrCopyFormVariable(uint64_t a1, unsigned __int8 *a2, void *a3, void *a4, char **a5)
{
  result = URLGetOrCopyVariable(*(a1 + 8360), (*(a1 + 8360) + *(a1 + 8368)), a2, a3, a4, a5, 0);
  if (result)
  {
    v11 = *(a1 + 8520);
    v12 = &v11[*(a1 + 8528)];

    return URLGetOrCopyVariable(v11, v12, a2, a3, a4, a5, 0);
  }

  return result;
}

uint64_t _HTTPServerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gHTTPServerTypeID = result;
  return result;
}

void _HTTPServerFinalize(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    v2(a1, a1[15]);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
    a1[2] = 0;
  }

  v4 = a1[10];
  if (v4)
  {
    free(v4);
    a1[10] = 0;
  }

  v5 = a1[11];
  if (v5)
  {
    free(v5);
    a1[11] = 0;
  }
}

uint64_t HTTPServerCreate(void *a1, _OWORD *a2)
{
  if (gHTTPServerInitOnce != -1)
  {
    dispatch_once_f(&gHTTPServerInitOnce, 0, _HTTPServerGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v5 = Instance;
  Instance[14] = 0u;
  Instance[15] = 0u;
  Instance[12] = 0u;
  Instance[13] = 0u;
  Instance[10] = 0u;
  Instance[11] = 0u;
  Instance[8] = 0u;
  Instance[9] = 0u;
  Instance[6] = 0u;
  Instance[7] = 0u;
  Instance[4] = 0u;
  Instance[5] = 0u;
  Instance[2] = 0u;
  Instance[3] = 0u;
  Instance[1] = 0u;
  HTTPServerSetDispatchQueue(Instance, 0);
  *(v5 + 3) = &gLogCategory_HTTPServerCore;
  v7 = a2[1];
  v6 = a2[2];
  *(v5 + 120) = *a2;
  *(v5 + 152) = v6;
  *(v5 + 136) = v7;
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  *(v5 + 216) = a2[6];
  *(v5 + 200) = v10;
  *(v5 + 184) = v9;
  *(v5 + 168) = v8;
  v11 = *(v5 + 16);
  if (v11 && (v12 = v11(v5, *(v5 + 15)), v12))
  {
    v13 = v12;
    CFRelease(v5);
  }

  else
  {
    v13 = 0;
    *a1 = v5;
  }

  return v13;
}

void HTTPServerSetDispatchQueue(uint64_t a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
  }

  dispatch_retain(v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(a1 + 16) = v3;
}

uint64_t _HTTPServerControl(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5)
{
  if (CFEqual(cf1, @"startServer"))
  {
    *(&v32 + 4) = -1;
    if (*(a1 + 240))
    {
      LODWORD(v32) = 16777343;
      v10 = ServerSocketOpenEx2(2, 1, 6, &v32, 0, *(a1 + 236), (a1 + 48), -1, 0, &v32 + 2);
      if (!v10)
      {
LABEL_8:
        v12 = DWORD2(v32);
        if ((DWORD2(v32) & 0x80000000) == 0)
        {
          if (*(a1 + 232))
          {
            SocketSetP2P(SDWORD2(v32), 1);
          }

          v13 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004093CA8EA1uLL);
          if (!v13)
          {
            goto LABEL_47;
          }

          v14 = v13;
          v15 = dispatch_source_create(MEMORY[0x1E69E96F8], v12, 0, *(a1 + 16));
          if (!v15)
          {
            v31 = v14;
            goto LABEL_44;
          }

          v16 = v15;
          CFRetain(a1);
          *v14 = v16;
          *(v14 + 2) = v12;
          v14[2] = a1;
          *(a1 + 32) = v14;
          dispatch_set_context(v16, v14);
          dispatch_source_set_event_handler_f(v16, _HTTPServerAcceptConnection);
          dispatch_source_set_cancel_handler_f(v16, _HTTPServerListenerCanceled);
          dispatch_resume(v16);
          DWORD2(v32) = -1;
        }

        v17 = DWORD1(v32);
        if ((DWORD1(v32) & 0x80000000) != 0)
        {
LABEL_20:
          v22 = *(a1 + 144);
          if (v22)
          {
            v10 = v22(a1, 0, @"startServer", 0, 0, *(a1 + 120));
            if (v10)
            {
              goto LABEL_22;
            }
          }

          CFRetain(a1);
          *(a1 + 64) = 1;
          v30 = *(a1 + 24);
          if (*v30 > 40)
          {
            goto LABEL_46;
          }

          if (*v30 == -1)
          {
            if (!_LogCategory_Initialize(v30, 0x28u))
            {
              goto LABEL_46;
            }

            v30 = *(a1 + 24);
          }

          LogPrintF(v30, "OSStatus _HTTPServerStart(HTTPServerRef)", 0x28u, "Listening on port %d\n", v26, v27, v28, v29, *(a1 + 48));
LABEL_46:
          v11 = 0;
          goto LABEL_23;
        }

        if (*(a1 + 232))
        {
          SocketSetP2P(SDWORD1(v32), 1);
        }

        v18 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004093CA8EA1uLL);
        if (v18)
        {
          v19 = v18;
          v20 = dispatch_source_create(MEMORY[0x1E69E96F8], v17, 0, *(a1 + 16));
          if (v20)
          {
            v21 = v20;
            CFRetain(a1);
            *v19 = v21;
            v19[2] = v17;
            *(v19 + 2) = a1;
            *(a1 + 40) = v19;
            dispatch_set_context(v21, v19);
            dispatch_source_set_event_handler_f(v21, _HTTPServerAcceptConnection);
            dispatch_source_set_cancel_handler_f(v21, _HTTPServerListenerCanceled);
            dispatch_resume(v21);
            DWORD1(v32) = -1;
            goto LABEL_20;
          }

          v31 = v19;
LABEL_44:
          free(v31);
          v11 = 4294960596;
          goto LABEL_23;
        }

LABEL_47:
        v11 = 4294960568;
LABEL_23:
        if ((DWORD2(v32) & 0x80000000) == 0 && close(SDWORD2(v32)) && *__error())
        {
          __error();
        }

        if ((DWORD1(v32) & 0x80000000) == 0 && close(SDWORD1(v32)) && *__error())
        {
          __error();
        }

        if (v11)
        {
          _HTTPServerStop(a1);
        }

        return v11;
      }
    }

    else
    {
      v10 = ServerSocketPairOpen(1, 6, *(a1 + 236), (a1 + 48), -1, &v32 + 2, &v32 + 1);
      if (!v10)
      {
        goto LABEL_8;
      }
    }

LABEL_22:
    v11 = v10;
    goto LABEL_23;
  }

  if (CFEqual(cf1, @"stopServer"))
  {
    _HTTPServerStop(a1);
    return 0;
  }

  v24 = *(a1 + 144);
  if (!v24)
  {
    return 4294960582;
  }

  v25 = *(a1 + 120);

  return v24(a1, a2, cf1, a4, a5, v25);
}

void _HTTPServerStop(CFTypeRef cf)
{
  v2 = *(cf + 9);
  if (v2)
  {
    dispatch_source_cancel(*(cf + 9));
    dispatch_release(v2);
    *(cf + 9) = 0;
  }

  v3 = *(cf + 4);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      dispatch_source_cancel(*v3);
      dispatch_release(v4);
      **(cf + 4) = 0;
    }

    *(cf + 4) = 0;
  }

  v5 = *(cf + 5);
  if (v5)
  {
    v6 = *v5;
    if (*v5)
    {
      dispatch_source_cancel(*v5);
      dispatch_release(v6);
      **(cf + 5) = 0;
    }

    *(cf + 5) = 0;
  }

  while (1)
  {
    v7 = *(cf + 7);
    if (!v7)
    {
      break;
    }

    _HTTPServerCloseConnection(v7);
  }

  if (*(cf + 64))
  {
    v8 = *(cf + 18);
    if (v8)
    {
      v8(cf, 0, @"stopServer", 0, 0, *(cf + 15));
    }

    *(cf + 64) = 0;

    CFRelease(cf);
  }
}

void _HTTPServerCloseConnection(uint64_t a1)
{
  v2 = *(a1 + 24);
  v4 = (v2 + 56);
  v3 = *(v2 + 56);
  if (v3)
  {
    if (v3 == a1)
    {
LABEL_6:
      *v4 = *(v3 + 16);
    }

    else
    {
      while (1)
      {
        v5 = v3;
        v3 = *(v3 + 16);
        if (!v3)
        {
          break;
        }

        if (v3 == a1)
        {
          v4 = (v5 + 16);
          goto LABEL_6;
        }
      }
    }
  }

  HTTPConnectionStop(a1);
  if (*(a1 + 229))
  {
    if (!*(a1 + 376))
    {
      v10 = *(v2 + 24);
      if (*v10 <= 30)
      {
        if (*v10 != -1)
        {
LABEL_11:
          LogPrintF(v10, "void _HTTPServerCloseConnection(HTTPConnectionRef, void *)", 0x1Eu, "Closing  connection from %##a to %##a\n", v6, v7, v8, v9, a1 + 256);
          goto LABEL_13;
        }

        if (_LogCategory_Initialize(v10, 0x1Eu))
        {
          v10 = *(v2 + 24);
          goto LABEL_11;
        }
      }
    }
  }

LABEL_13:
  _HTTPServerUpdateTimeoutTimer(v2);

  CFRelease(a1);
}

void HTTPConnectionStop(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    v3 = *(a1 + 216) == 0;
  }

  else
  {
    v3 = 1;
  }

  if ((*(a1 + 136) & 0x80000000) == 0 && !*(a1 + 376))
  {
    shutdown(*(a1 + 136), 1);
    v2 = *(a1 + 200);
  }

  if (v2)
  {
    dispatch_source_cancel(v2);
    if (*(a1 + 208))
    {
      dispatch_resume(*(a1 + 200));
      *(a1 + 208) = 0;
    }

    dispatch_release(*(a1 + 200));
    *(a1 + 200) = 0;
  }

  v4 = *(a1 + 216);
  if (v4)
  {
    dispatch_source_cancel(v4);
    if (*(a1 + 224))
    {
      dispatch_resume(*(a1 + 216));
      *(a1 + 224) = 0;
    }

    dispatch_release(*(a1 + 216));
    *(a1 + 216) = 0;
  }

  if (!v3)
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      v6 = *(a1 + 40);

      v5(a1, v6);
    }
  }
}

void _HTTPServerUpdateTimeoutTimer(uint64_t a1)
{
  if (*(a1 + 244) && *(a1 + 56))
  {
    if (!*(a1 + 72))
    {
      v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 16));
      *(a1 + 72) = v2;
      if (v2)
      {
        CFRetain(a1);
        dispatch_set_context(*(a1 + 72), a1);
        dispatch_source_set_event_handler_f(*(a1 + 72), _HTTPServerTimeoutHandler);
        dispatch_source_set_cancel_handler_f(*(a1 + 72), _HTTPServerTimeoutCanceled);
        v3 = *(a1 + 244);
        v4 = *(a1 + 72);
        v5 = dispatch_time(0, 1000000000 * v3);
        dispatch_source_set_timer(v4, v5, 1000000000 * v3, 250000000 * v3);
        v6 = *(a1 + 72);

        dispatch_resume(v6);
      }
    }
  }

  else
  {
    v7 = *(a1 + 72);
    if (v7)
    {
      dispatch_source_cancel(*(a1 + 72));
      dispatch_release(v7);
      *(a1 + 72) = 0;
    }
  }
}

uint64_t _HTTPServerTimeoutHandler(void *a1)
{
  result = mach_absolute_time();
  v7 = a1[7];
  if (v7)
  {
    v8 = result;
    while (1)
    {
      v9 = *(v7 + 16);
      if (v8 - *(v7 + 408) >= a1[31])
      {
        break;
      }

LABEL_9:
      v7 = v9;
      if (!v9)
      {
        return result;
      }
    }

    v10 = a1[3];
    if (*v10 <= 50)
    {
      if (*v10 == -1)
      {
        if (!_LogCategory_Initialize(v10, 0x32u))
        {
          goto LABEL_8;
        }

        v10 = a1[3];
      }

      LogPrintF(v10, "void _HTTPServerTimeoutHandler(void *)", 0x32u, "Timing out connection %##a -> %##a\n", v3, v4, v5, v6, v7 + 256);
    }

LABEL_8:
    result = _HTTPServerCloseConnection(v7);
    goto LABEL_9;
  }

  return result;
}

void _HTTPServerListenerCanceled(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 0x80000000) == 0)
  {
    if (close(v2) && *__error())
    {
      __error();
    }

    *(a1 + 8) = -1;
  }

  CFRelease(*(a1 + 16));

  free(a1);
}

void _HTTPServerAcceptConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 16);
  v22 = 0;
  v10 = *(v9 + 24);
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "void _HTTPServerAcceptConnection(void *)", 0x1Eu, "Accepting connection: socket=%d", a5, a6, a7, a8, *(a1 + 8));
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(v10, 0x1Eu))
    {
      v10 = *(v9 + 24);
      goto LABEL_3;
    }
  }

LABEL_5:
  v11 = accept(*(a1 + 8), 0, 0);
  if (v11 < 0)
  {
    if (!*__error())
    {
      v18 = 4294960596;
      goto LABEL_19;
    }

    v18 = *__error();
    if (v18)
    {
      goto LABEL_19;
    }
  }

  *&v26[16] = 0u;
  *v26 = 0u;
  v12 = *(v9 + 120);
  v23[0] = *(v9 + 176);
  v23[1] = v12;
  v24 = *(v9 + 184);
  v25 = *(v9 + 200);
  *&v26[8] = *(v9 + 208);
  *&v26[24] = *(v9 + 224);
  v27 = 0;
  v13 = HTTPConnectionCreate(&v22, v23, v11, v9);
  if (!v13)
  {
    v19 = v22;
    *(v22 + 112) = _HTTPServerCloseConnection;
    HTTPConnectionSetDispatchQueue(v19, *(v9 + 16));
    *(v19 + 16) = *(v9 + 56);
    *(v9 + 56) = v19;
    v18 = HTTPConnectionStart(v19);
    if (v18)
    {
      goto LABEL_19;
    }

    v20 = *(v9 + 24);
    if (*v20 <= 30)
    {
      if (*v20 == -1)
      {
        if (!_LogCategory_Initialize(v20, 0x1Eu))
        {
          goto LABEL_27;
        }

        v20 = *(v9 + 24);
      }

      LogPrintF(v20, "void _HTTPServerAcceptConnection(void *)", 0x1Eu, "Accepted connection from %##a to %##a\n", v14, v15, v16, v17, v19 + 256);
    }

LABEL_27:

    _HTTPServerUpdateTimeoutTimer(v9);
    return;
  }

  v18 = v13;
  if ((v11 & 0x80000000) == 0 && close(v11) && *__error())
  {
    __error();
  }

LABEL_19:
  if (v22)
  {
    _HTTPServerCloseConnection(v22);
  }

  v21 = *(v9 + 24);
  if (*v21 <= 60)
  {
    if (*v21 != -1)
    {
LABEL_23:
      LogPrintF(v21, "void _HTTPServerAcceptConnection(void *)", 0x3Cu, "### Accept connection failed: %#m\n", v14, v15, v16, v17, v18);
      return;
    }

    if (_LogCategory_Initialize(v21, 0x3Cu))
    {
      v21 = *(v9 + 24);
      goto LABEL_23;
    }
  }
}

uint64_t HTTPConnectionCreate(uint64_t *a1, uint64_t *a2, int a3, void *a4)
{
  v8 = *a2;
  if (gHTTPConnectionInitOnce != -1)
  {
    dispatch_once_f(&gHTTPConnectionInitOnce, 0, _HTTPConnectionGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v10 = Instance;
  bzero((Instance + 16), v8 + 400);
  v11 = *(a2 + 3);
  v12 = *(a2 + 4);
  v13 = *(a2 + 2);
  *(v10 + 48) = *(a2 + 1);
  *(v10 + 32) = *a2;
  *(v10 + 80) = v11;
  *(v10 + 96) = v12;
  *(v10 + 64) = v13;
  if (!*(v10 + 48))
  {
    *(v10 + 48) = "HTTP/1.1";
  }

  *(v10 + 408) = mach_absolute_time();
  if (a4)
  {
    v14 = a4[3];
    *(v10 + 136) = -1;
    v15 = (v10 + 136);
    *(v10 + 128) = v14;
    *(v10 + 352) = SocketTransportRead;
    *(v10 + 360) = SocketTransportWriteV;
    CFRetain(a4);
    v16 = 24;
    v17 = a4;
  }

  else
  {
    *(v10 + 136) = -1;
    v15 = (v10 + 136);
    *(v10 + 128) = &gLogCategory_HTTPServerCore;
    *(v10 + 352) = SocketTransportRead;
    v17 = SocketTransportWriteV;
    v16 = 360;
  }

  *(v10 + v16) = v17;
  v18 = HTTPMessageCreate((v10 + 296));
  if (v18 || (v18 = HTTPMessageCreate((v10 + 304)), v18))
  {
    v19 = v18;
  }

  else
  {
    *(v10 + 320) = v10 + 312;
    *(v10 + 136) = a3;
    if (a4)
    {
      v21 = a4[21];
      if (v21)
      {
        if (*(v10 + 32))
        {
          v22 = v10 + 416;
        }

        else
        {
          v22 = 0;
        }

        v21(a4, v10, v22, a4[15]);
      }
    }

    v23 = *(v10 + 56);
    if (!v23 || (v24 = v23(v10, *(v10 + 40)), !v24))
    {
      v19 = 0;
      *a1 = v10;
      return v19;
    }

    v19 = v24;
    *v15 = -1;
  }

  CFRelease(v10);
  return v19;
}

void HTTPConnectionSetDispatchQueue(uint64_t a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
  }

  dispatch_retain(v3);
  v4 = *(a1 + 120);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(a1 + 120) = v3;
}

uint64_t HTTPConnectionStart(uint64_t a1)
{
  if (!*(a1 + 120))
  {
    HTTPConnectionSetDispatchQueue(a1, MEMORY[0x1E69E96A0]);
  }

  v2 = *(a1 + 136);
  v15 = 1;
  v16 = 0;
  setsockopt(v2, 0xFFFF, 4130, &v15, 4u);
  SocketSetNonBlocking(*(a1 + 136), 1);
  v17 = 28;
  if (getsockname(*(a1 + 136), (a1 + 228), &v17) && *__error())
  {
    __error();
  }

  v17 = 28;
  if (getpeername(*(a1 + 136), (a1 + 256), &v17) && *__error())
  {
    __error();
  }

  SocketGetInterfaceInfo(*(a1 + 136), 0, (a1 + 140), (a1 + 160), a1 + 164, (a1 + 172), (a1 + 176), (a1 + 184), 0, a1 + 192);
  v3 = *(a1 + 192);
  if (v3 != 4 && v3 != 64 && v3 != 128)
  {
    SocketSetP2P(*(a1 + 136), 0);
  }

  v16 = 1;
  if (setsockopt(*(a1 + 136), 6, 1, &v16, 4u))
  {
    if (*__error())
    {
      v4 = *__error();
    }

    else
    {
      v4 = 4294960596;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 336);
  if (v5)
  {
    v4 = v5(*(a1 + 136), *(a1 + 328));
    if (v4)
    {
      goto LABEL_26;
    }

    v10 = *(a1 + 136);
  }

  else
  {
    v10 = *(a1 + 136);
    if (!*(a1 + 368))
    {
      *(a1 + 328) = v10;
    }
  }

  v11 = dispatch_source_create(MEMORY[0x1E69E96F8], v10, 0, *(a1 + 120));
  *(a1 + 200) = v11;
  if (!v11 || (CFRetain(a1), dispatch_set_context(*(a1 + 200), a1), dispatch_source_set_event_handler_f(*(a1 + 200), _HTTPConnectionReadHandler), dispatch_source_set_cancel_handler_f(*(a1 + 200), _HTTPConnectionCancelHandler), dispatch_resume(*(a1 + 200)), v12 = dispatch_source_create(MEMORY[0x1E69E9730], *(a1 + 136), 0, *(a1 + 120)), (*(a1 + 216) = v12) == 0))
  {
    v4 = 4294960596;
    goto LABEL_26;
  }

  CFRetain(a1);
  dispatch_set_context(*(a1 + 216), a1);
  dispatch_source_set_event_handler_f(*(a1 + 216), _HTTPConnectionWriteHandler);
  dispatch_source_set_cancel_handler_f(*(a1 + 216), _HTTPConnectionCancelHandler);
  *(a1 + 224) = 1;
  if (v4)
  {
LABEL_26:
    v13 = *(a1 + 128);
    if (!v13 || *v13 > 90)
    {
      goto LABEL_31;
    }

    if (*v13 == -1)
    {
      if (!_LogCategory_Initialize(v13, 0x5Au))
      {
        goto LABEL_31;
      }

      v13 = *(a1 + 128);
    }

    LogPrintF(v13, "OSStatus HTTPConnectionStart(HTTPConnectionRef)", 0x5Au, "### HTTP connection start failed: %#m\n", v6, v7, v8, v9, v4);
LABEL_31:
    HTTPConnectionStop(a1);
  }

  return v4;
}

void _HTTPConnectionWriteHandler(uint64_t a1)
{
  dispatch_suspend(*(a1 + 216));
  *(a1 + 224) = 1;

  _HTTPConnectionRunStateMachine(a1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t _HTTPConnectionGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gHTTPConnectionTypeID = result;
  return result;
}

int *_HTTPConnectionFinalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v2(a1, *(a1 + 40));
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 120) = 0;
  }

  v5 = *(a1 + 296);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 296) = 0;
  }

  v6 = *(a1 + 304);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 304) = 0;
  }

  while (1)
  {
    v7 = *(a1 + 312);
    if (!v7)
    {
      break;
    }

    *(a1 + 312) = v7[2];
    CFRelease(v7);
  }

  v8 = *(a1 + 344);
  if (v8)
  {
    v8(*(a1 + 328));
  }

  v9 = *(a1 + 376);
  result = *(a1 + 136);
  if (v9)
  {
    result = v9(result, *(a1 + 384), *(a1 + 392), *(a1 + 400));
LABEL_17:
    *(a1 + 136) = -1;
    return result;
  }

  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    if (result)
    {
      result = __error();
      if (*result)
      {
        result = __error();
      }
    }

    goto LABEL_17;
  }

  return result;
}

uint64_t _HTTPServerSetProperty(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, const __CFString *a5)
{
  if (CFEqual(cf1, @"loopbackOnly"))
  {
    v10 = CFGetInt64(a5, 0);
    result = 0;
    *(a1 + 240) = v10 != 0;
    return result;
  }

  if (CFEqual(cf1, @"p2p"))
  {
    v12 = CFGetInt64(a5, 0) != 0;
    *(a1 + 232) = v12;
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = *(v13 + 8);
      if ((v14 & 0x80000000) == 0)
      {
        SocketSetP2P(v14, v12);
      }
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      v16 = *(v15 + 8);
      if ((v16 & 0x80000000) == 0)
      {
        SocketSetP2P(v16, *(a1 + 232));
      }
    }

    return 0;
  }

  if (CFEqual(cf1, @"password"))
  {
    if (!a5)
    {
      v25 = 0;
LABEL_24:
      v19 = *(a1 + 80);
      if (v19)
      {
        free(v19);
      }

      result = 0;
      *(a1 + 80) = v25;
      return result;
    }

    v17 = CFGetTypeID(a5);
    if (v17 == CFStringGetTypeID())
    {
      v25 = 0;
      if (CFStringGetLength(a5) >= 1)
      {
        result = CFStringCopyUTF8CString(a5, &v25);
        if (result)
        {
          return result;
        }
      }

      goto LABEL_24;
    }

    return 4294960540;
  }

  if (CFEqual(cf1, @"realm"))
  {
    if (a5)
    {
      v18 = CFGetTypeID(a5);
      if (v18 != CFStringGetTypeID())
      {
        return 4294960540;
      }

      v25 = 0;
      if (CFStringGetLength(a5) >= 1)
      {
        result = CFStringCopyUTF8CString(a5, &v25);
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
      v25 = 0;
    }

    v22 = *(a1 + 88);
    if (v22)
    {
      free(v22);
    }

    result = 0;
    *(a1 + 88) = v25;
  }

  else if (CFEqual(cf1, @"timeoutSecs"))
  {
    v26 = 0;
    v20 = CFGetInt64(a5, &v26);
    *(a1 + 244) = v20;
    v21 = v20;
    if (SecondsToUpTicks_sOnce != -1)
    {
      dispatch_once_f(&SecondsToUpTicks_sOnce, &SecondsToUpTicks_sMultiplier, _SecondsToUpTicksInit);
    }

    result = 0;
    *(a1 + 248) = SecondsToUpTicks_sMultiplier * v21;
  }

  else
  {
    v23 = *(a1 + 160);
    if (v23)
    {
      v24 = *(a1 + 120);

      return v23(a1, a2, cf1, a4, a5, v24);
    }

    else
    {
      return 4294960582;
    }
  }

  return result;
}

_OWORD *HTTPConnectionSetDelegate(_OWORD *result, _OWORD *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  v4 = a2[2];
  result[3] = a2[1];
  result[2] = *a2;
  result[5] = v2;
  result[6] = v3;
  result[4] = v4;
  if (!*(result + 6))
  {
    *(result + 6) = "HTTP/1.1";
  }

  return result;
}

uint64_t HTTPConnectionSetTimeout(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 136);
  if ((result & 0x80000000) == 0)
  {
    result = SocketSetTCPTimeout(result, a2);
    if (result)
    {
      result = *(a1 + 128);
      if (*result <= 60)
      {
        if (*result != -1)
        {
          return LogPrintF(result, "void HTTPConnectionSetTimeout(HTTPConnectionRef, int)", 0x3Cu, "### Set TCP timeout to %d seconds failed: %#m\n", v5, v6, v7, v8, a2);
        }

        result = _LogCategory_Initialize(result, 0x3Cu);
        if (result)
        {
          result = *(a1 + 128);
          return LogPrintF(result, "void HTTPConnectionSetTimeout(HTTPConnectionRef, int)", 0x3Cu, "### Set TCP timeout to %d seconds failed: %#m\n", v5, v6, v7, v8, a2);
        }
      }
    }
  }

  return result;
}

void HTTPConnectionStopAsync(void *a1)
{
  CFRetain(a1);
  v2 = a1[15];

  dispatch_async_f(v2, a1, _HTTPConnectionStopAsync);
}

void _HTTPConnectionStopAsync(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[16];
  if (v9 && *v9 <= 30)
  {
    if (*v9 != -1)
    {
LABEL_4:
      LogPrintF(v9, "void _HTTPConnectionStopAsync(void *)", 0x1Eu, "HTTP connection stop async\n", a5, a6, a7, a8, v10);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize(v9, 0x1Eu))
    {
      v9 = a1[16];
      goto LABEL_4;
    }
  }

LABEL_6:
  HTTPConnectionStop(a1);

  CFRelease(a1);
}

uint64_t HTTPConnectionDetach(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[47])
  {
    return 4294960575;
  }

  a1[47] = a2;
  a1[48] = a3;
  a1[49] = a4;
  a1[50] = a5;
  v9 = *(a1[3] + 24);
  if (*v9 > 30)
  {
    return 0;
  }

  if (*v9 != -1)
  {
LABEL_4:
    LogPrintF(v9, "OSStatus HTTPConnectionDetach(HTTPConnectionRef, HTTPConnectionDetachHandler_f, void *, void *, void *)", 0x1Eu, "Detaching connection %##a -> %##a\n", a5, a6, a7, a8, (a1 + 32));
    return 0;
  }

  result = _LogCategory_Initialize(v9, 0x1Eu);
  if (result)
  {
    v9 = *(a1[3] + 24);
    goto LABEL_4;
  }

  return result;
}

uint64_t HTTPConnectionSetTransportDelegate(uint64_t a1, __int128 *a2)
{
  v4 = a1 + 328;
  v5 = *(a1 + 344);
  if (v5)
  {
    v5(*v4);
  }

  v6 = *a2;
  v7 = a2[1];
  *(v4 + 32) = *(a2 + 4);
  *v4 = v6;
  *(v4 + 16) = v7;
  *(a1 + 368) = 1;
  result = *(a1 + 136);
  if ((result & 0x80000000) == 0)
  {
    v9 = *(a1 + 336);
    if (v9)
    {

      return v9();
    }
  }

  return result;
}

uint64_t HTTPConnectionGetNextURLSegmentEx(uint64_t a1, uint64_t *a2, int a3, unsigned __int8 **a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v11 = a2[1049];
  v12 = a2[1050];
  if (v11 < v12 && *v11 != 47)
  {
    v15 = v11 + 1;
    while (v15 != v12)
    {
      v16 = v15;
      v17 = *v15++;
      if (v17 == 47)
      {
        v18 = v16 < v12;
        v12 = v16;
        goto LABEL_14;
      }
    }

    if (v12 == v11)
    {
      goto LABEL_3;
    }

    v18 = 0;
LABEL_14:
    *a4 = v11;
    *a5 = v12 - v11;
    a2[1049] = &v12[v18];
    v13 = 1;
    goto LABEL_17;
  }

LABEL_3:
  if (a3)
  {
    v13 = 0;
LABEL_17:
    v19 = 0;
    v20 = v13;
    goto LABEL_18;
  }

  v14 = *(a1 + 128);
  if (*v14 <= 60)
  {
    if (*v14 != -1)
    {
LABEL_7:
      LogPrintF(v14, "Boolean HTTPConnectionGetNextURLSegmentEx(HTTPConnectionRef, HTTPMessageRef, Boolean, const char **, size_t *, OSStatus *)", 0x3Cu, "### Bad URL segment: '%.*s'\n", a5, a6, a7, a8, a2[1034]);
      goto LABEL_16;
    }

    if (_LogCategory_Initialize(v14, 0x3Cu))
    {
      v14 = *(a1 + 128);
      goto LABEL_7;
    }
  }

LABEL_16:
  v19 = HTTPConnectionSendSimpleResponseEx2(a1, 400, 4294960592, 0, 0, 0, a7, a8);
  v13 = 0;
  v20 = 0;
  if (!v19)
  {
    goto LABEL_17;
  }

LABEL_18:
  *a6 = v19;
  return v20;
}