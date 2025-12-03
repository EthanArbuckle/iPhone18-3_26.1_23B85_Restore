@interface MCLazyInitializationUtilities
+ (void)initCoreGraphics;
+ (void)initCoreText;
+ (void)initDAEAS;
+ (void)initExchangeSyncExpress;
+ (void)initImageIO;
+ (void)initLoggingSupport;
+ (void)initMessage;
+ (void)initMobileActivation;
+ (void)initPowerlogControl;
+ (void)initSetupAssistant;
+ (void)initSpringBoardServices;
+ (void)loadBundleAtURL:(id)l completionBlock:(id)block;
+ (void)loadNSBundleAtURL:(id)l completionBlock:(id)block;
@end

@implementation MCLazyInitializationUtilities

+ (void)loadBundleAtURL:(id)l completionBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  v8 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v16 = lastPathComponent;
    _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_INFO, "Lazy loading %{public}@", buf, 0xCu);
  }

  v9 = CFBundleCreate(0, lCopy);

  if (v9)
  {
    error = 0;
    v10 = CFBundleLoadExecutableAndReturnError(v9, &error);
    v11 = _MCLogObjects;
    if (v10)
    {
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v16 = lastPathComponent;
        _os_log_impl(&dword_1A795B000, v11, OS_LOG_TYPE_DEFAULT, "Loaded %{public}@", buf, 0xCu);
      }

      if (blockCopy)
      {
        blockCopy[2](blockCopy, 1, v9);
      }
    }

    else
    {
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v16 = lastPathComponent;
        v17 = 2114;
        v18 = error;
        _os_log_impl(&dword_1A795B000, v11, OS_LOG_TYPE_ERROR, "Could not load %{public}@: %{public}@", buf, 0x16u);
      }

      if (blockCopy)
      {
        blockCopy[2](blockCopy, 0, 0);
      }
    }

    CFRelease(v9);
    if (error)
    {
      CFRelease(error);
    }
  }

  else
  {
    v12 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = lastPathComponent;
      _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_ERROR, "Could not load %{public}@", buf, 0xCu);
    }

    if (blockCopy)
    {
      blockCopy[2](blockCopy, 0, 0);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (void)loadNSBundleAtURL:(id)l completionBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  v8 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v20 = lastPathComponent;
    _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_INFO, "Lazy loading NSBundle %{public}@", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E696AAE8] bundleWithURL:lCopy];

  v18 = 0;
  v10 = [v9 loadAndReturnError:&v18];
  v11 = v18;
  v12 = _MCLogObjects;
  if (v10)
  {
    if (!os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 138543362;
    v20 = lastPathComponent;
    v13 = "Loaded %{public}@";
    v14 = v12;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 12;
  }

  else
  {
    if (!os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 138543618;
    v20 = lastPathComponent;
    v21 = 2114;
    v22 = v11;
    v13 = "Could not load %{public}@: %{public}@";
    v14 = v12;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 22;
  }

  _os_log_impl(&dword_1A795B000, v14, v15, v13, buf, v16);
LABEL_9:
  if (blockCopy)
  {
    blockCopy[2](blockCopy, v10, v9);
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)initPowerlogControl
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MCLazyInitializationUtilities_initPowerlogControl__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initPowerlogControl_onceToken != -1)
  {
    dispatch_once(&initPowerlogControl_onceToken, block);
  }
}

void __52__MCLazyInitializationUtilities_initPowerlogControl__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/PowerlogControl.framework");
  [v1 loadBundleAtURL:v2 completionBlock:&__block_literal_global_14];
}

void __52__MCLazyInitializationUtilities_initPowerlogControl__block_invoke_2(int a1, int a2, CFBundleRef bundle)
{
  if (a2)
  {
    _PowerlogControlSwitchMode = CFBundleGetFunctionPointerForName(bundle, @"PowerlogControlSwitchMode");
    _PowerlogControlReadMode = CFBundleGetFunctionPointerForName(bundle, @"PowerlogControlReadMode");
  }
}

+ (void)initCoreGraphics
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__MCLazyInitializationUtilities_initCoreGraphics__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initCoreGraphics_onceToken != -1)
  {
    dispatch_once(&initCoreGraphics_onceToken, block);
  }
}

void __49__MCLazyInitializationUtilities_initCoreGraphics__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = URLForCanonicalFilePath(@"/System/Library/Frameworks/CoreGraphics.framework");
  [v1 loadBundleAtURL:v2 completionBlock:&__block_literal_global_64];
}

void __49__MCLazyInitializationUtilities_initCoreGraphics__block_invoke_2(int a1, int a2, CFBundleRef bundle)
{
  if (a2)
  {
    _CGDataProviderCreateWithURL = CFBundleGetFunctionPointerForName(bundle, @"CGDataProviderCreateWithURL");
    _CGFontCopyFullName = CFBundleGetFunctionPointerForName(bundle, @"CGFontCopyFullName");
    _CGFontCopyPostScriptName = CFBundleGetFunctionPointerForName(bundle, @"CGFontCopyPostScriptName");
    _CGFontCreateWithDataProvider = CFBundleGetFunctionPointerForName(bundle, @"CGFontCreateWithDataProvider");
  }
}

+ (void)initImageIO
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MCLazyInitializationUtilities_initImageIO__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initImageIO_onceToken != -1)
  {
    dispatch_once(&initImageIO_onceToken, block);
  }
}

void __44__MCLazyInitializationUtilities_initImageIO__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = URLForCanonicalFilePath(@"/System/Library/Frameworks/ImageIO.framework");
  [v1 loadBundleAtURL:v2 completionBlock:&__block_literal_global_78_0];
}

void __44__MCLazyInitializationUtilities_initImageIO__block_invoke_2(int a1, int a2, CFBundleRef bundle)
{
  if (a2)
  {
    _CGImageSourceCreateImageAtIndex = CFBundleGetFunctionPointerForName(bundle, @"CGImageSourceCreateImageAtIndex");
    _CGImageSourceCreateWithData = CFBundleGetFunctionPointerForName(bundle, @"CGImageSourceCreateWithData");
    _CGImageSourceGetCount = CFBundleGetFunctionPointerForName(bundle, @"CGImageSourceGetCount");
  }
}

+ (void)initCoreText
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MCLazyInitializationUtilities_initCoreText__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initCoreText_onceToken != -1)
  {
    dispatch_once(&initCoreText_onceToken, block);
  }
}

void __45__MCLazyInitializationUtilities_initCoreText__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = URLForCanonicalFilePath(@"/System/Library/Frameworks/CoreText.framework");
  [v1 loadBundleAtURL:v2 completionBlock:&__block_literal_global_89];
}

void __45__MCLazyInitializationUtilities_initCoreText__block_invoke_2(int a1, int a2, CFBundleRef bundle)
{
  if (a2)
  {
    _CTFontManagerCreateFontDescriptorsFromURL = CFBundleGetFunctionPointerForName(bundle, @"CTFontManagerCreateFontDescriptorsFromURL");
  }
}

+ (void)initMessage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MCLazyInitializationUtilities_initMessage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initMessage_onceToken != -1)
  {
    dispatch_once(&initMessage_onceToken, block);
  }
}

void __44__MCLazyInitializationUtilities_initMessage__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/Message.framework");
  [v1 loadBundleAtURL:v2 completionBlock:&__block_literal_global_94];
}

void __44__MCLazyInitializationUtilities_initMessage__block_invoke_2(int a1, int a2, CFBundleRef bundle)
{
  if (a2)
  {
    v3 = *CFBundleGetDataPointerForName(bundle, @"MailAccountManagedTag");

    objc_storeStrong(&_MailAccountManagedTag, v3);
  }
}

+ (void)initExchangeSyncExpress
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MCLazyInitializationUtilities_initExchangeSyncExpress__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initExchangeSyncExpress_onceToken != -1)
  {
    dispatch_once(&initExchangeSyncExpress_onceToken, block);
  }
}

void __56__MCLazyInitializationUtilities_initExchangeSyncExpress__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/ExchangeSyncExpress.framework");
  [v1 loadBundleAtURL:v2 completionBlock:&__block_literal_global_99];
}

void __56__MCLazyInitializationUtilities_initExchangeSyncExpress__block_invoke_2(int a1, int a2, CFBundleRef bundle)
{
  if (a2)
  {
    DataPointerForName = CFBundleGetDataPointerForName(bundle, @"kESExchangeAccountWipeOnly");
    if (DataPointerForName)
    {
      DataPointerForName = *DataPointerForName;
    }

    v5 = _kESExchangeAccountWipeOnly;
    _kESExchangeAccountWipeOnly = DataPointerForName;

    v6 = CFBundleGetDataPointerForName(bundle, @"kESExchangeDeviceID");
    if (v6)
    {
      v6 = *v6;
    }

    v7 = _kESExchangeDeviceID;
    _kESExchangeDeviceID = v6;

    v8 = CFBundleGetDataPointerForName(bundle, @"kESExchangeUserEnrollmentMode");
    if (v8)
    {
      v8 = *v8;
    }

    _kESExchangeUserEnrollmentMode = v8;

    MEMORY[0x1EEE66BB8]();
  }
}

+ (void)initDAEAS
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MCLazyInitializationUtilities_initDAEAS__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initDAEAS_onceToken != -1)
  {
    dispatch_once(&initDAEAS_onceToken, block);
  }
}

void __42__MCLazyInitializationUtilities_initDAEAS__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/ExchangeSync.framework/Frameworks/DAEAS.framework");
  [v1 loadBundleAtURL:v2 completionBlock:&__block_literal_global_110];
}

void __42__MCLazyInitializationUtilities_initDAEAS__block_invoke_2(int a1, int a2, CFBundleRef bundle)
{
  if (a2)
  {
    DataPointerForName = CFBundleGetDataPointerForName(bundle, @"kASSyncDefaultFoldersOnly");
    objc_storeStrong(&_kASSyncDefaultFoldersOnly, *DataPointerForName);
    _overSimplifiedStatusForError = CFBundleGetFunctionPointerForName(bundle, @"overSimplifiedStatusForError");
  }
}

+ (void)initMobileActivation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MCLazyInitializationUtilities_initMobileActivation__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initMobileActivation_onceToken != -1)
  {
    dispatch_once(&initMobileActivation_onceToken, block);
  }
}

void __53__MCLazyInitializationUtilities_initMobileActivation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/MobileActivation.framework");
  [v1 loadBundleAtURL:v2 completionBlock:&__block_literal_global_118];
}

void __53__MCLazyInitializationUtilities_initMobileActivation__block_invoke_2(int a1, int a2, CFBundleRef bundle)
{
  if (a2)
  {
    DataPointerForName = CFBundleGetDataPointerForName(bundle, @"kMAActivationStateActivated");
    objc_storeStrong(&_kMAActivationStateActivated, *DataPointerForName);
    v5 = CFBundleGetDataPointerForName(bundle, @"kNotificationActivationStateChanged");
    objc_storeStrong(&_kNotificationActivationStateChanged, *v5);
    _MAEGetActivationStateWithError = CFBundleGetFunctionPointerForName(bundle, @"MAEGetActivationStateWithError");
    _MAECopyActivationRecordWithError = CFBundleGetFunctionPointerForName(bundle, @"MAECopyActivationRecordWithError");
  }
}

+ (void)initLoggingSupport
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MCLazyInitializationUtilities_initLoggingSupport__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initLoggingSupport_onceToken != -1)
  {
    dispatch_once(&initLoggingSupport_onceToken, block);
  }
}

void __51__MCLazyInitializationUtilities_initLoggingSupport__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/LoggingSupport.framework");
  [v1 loadBundleAtURL:v2 completionBlock:&__block_literal_global_132_0];
}

void __51__MCLazyInitializationUtilities_initLoggingSupport__block_invoke_2(int a1, int a2, CFBundleRef bundle)
{
  if (a2)
  {
    _OSLogValidateProfilePayload = CFBundleGetFunctionPointerForName(bundle, @"OSLogValidateProfilePayload");
    _OSLogInstallProfilePayload = CFBundleGetFunctionPointerForName(bundle, @"OSLogInstallProfilePayload");
    _OSLogRemoveProfilePayload = CFBundleGetFunctionPointerForName(bundle, @"OSLogRemoveProfilePayload");
  }
}

+ (void)initSetupAssistant
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MCLazyInitializationUtilities_initSetupAssistant__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initSetupAssistant_onceToken != -1)
  {
    dispatch_once(&initSetupAssistant_onceToken, block);
  }
}

void __51__MCLazyInitializationUtilities_initSetupAssistant__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/SetupAssistant.framework");
  [v1 loadBundleAtURL:v2 completionBlock:&__block_literal_global_143];
}

void __51__MCLazyInitializationUtilities_initSetupAssistant__block_invoke_2(int a1, int a2, CFBundleRef bundle)
{
  if (a2)
  {
    _BYSetupAssistantNeedsToRun = CFBundleGetFunctionPointerForName(bundle, @"BYSetupAssistantNeedsToRun");
  }
}

+ (void)initSpringBoardServices
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MCLazyInitializationUtilities_initSpringBoardServices__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initSpringBoardServices_onceToken != -1)
  {
    dispatch_once(&initSpringBoardServices_onceToken, block);
  }
}

void __56__MCLazyInitializationUtilities_initSpringBoardServices__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/SpringBoardServices.framework");
  [v1 loadBundleAtURL:v2 completionBlock:&__block_literal_global_148];
}

void __56__MCLazyInitializationUtilities_initSpringBoardServices__block_invoke_2(int a1, int a2, CFBundleRef bundle)
{
  if (a2)
  {
    _SBUserNotificationDontDismissOnUnlock = *CFBundleGetDataPointerForName(bundle, @"SBUserNotificationDontDismissOnUnlock");
    _SBUserNotificationDismissOnLock = *CFBundleGetDataPointerForName(bundle, @"SBUserNotificationDismissOnLock");
    _SBSApplicationLaunchFromURLOptionUnlockDeviceKey = *CFBundleGetDataPointerForName(bundle, @"SBSApplicationLaunchFromURLOptionUnlockDeviceKey");
    _SBSCopyFrontmostApplicationDisplayIdentifier = CFBundleGetFunctionPointerForName(bundle, @"SBSCopyFrontmostApplicationDisplayIdentifier");
    _SBSSuspendFrontmostApplication = CFBundleGetFunctionPointerForName(bundle, @"SBSSuspendFrontmostApplication");
    _SBSSpringBoardServerPort = CFBundleGetFunctionPointerForName(bundle, @"SBSSpringBoardServerPort");
    _SBAddWebClipToHomeScreen = CFBundleGetFunctionPointerForName(bundle, @"SBAddWebClipToHomeScreen");
    _SBGetScreenLockStatus = CFBundleGetFunctionPointerForName(bundle, @"SBGetScreenLockStatus");
    _SBRemoveWebClipFromHomeScreen = CFBundleGetFunctionPointerForName(bundle, @"SBRemoveWebClipFromHomeScreen");
  }
}

@end