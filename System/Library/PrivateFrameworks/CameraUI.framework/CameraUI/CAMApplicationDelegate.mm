@interface CAMApplicationDelegate
- (BOOL)_isNotificationTooOld:(id)old;
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)cameraIsRecording;
- (BOOL)isShowingCameraRoll;
- (BOOL)shouldEnableCaptureMenuCommand;
- (BOOL)shouldEnableFlashMenuCommand;
- (BOOL)shouldEnableFlipCameraMenuCommand;
- (BOOL)shouldEnableLivePhotoMenuCommand;
- (BOOL)shouldEnableTimerMenuCommand;
- (id)_internalInstall_prepareCheckedBundleVersions;
- (id)_userInfoForMode:(int64_t)mode devicePosition:(int64_t)position;
- (id)availableCaptureModes;
- (int64_t)currentCaptureMode;
- (int64_t)currentFlashMode;
- (int64_t)currentLivePhotoMode;
- (int64_t)currentTimerDuration;
- (void)_checkInternalInstallBundlesAndAlertIfIncompatible;
- (void)_internalInstall_presentBundleAlertForBundleInfo:(id)info;
- (void)application:(id)application performActionForShortcutItem:(id)item completionHandler:(id)handler;
- (void)applicationDidEnterBackground:(id)background;
- (void)buildMenuWithBuilder:(id)builder;
- (void)handleCameraRollMenuAction:(id)action;
- (void)handleCameraSettingsMenuAction:(id)action;
- (void)handleCaptureMenuAction:(id)action;
- (void)handleCaptureModeMenuAction:(id)action;
- (void)handleFlashMenuAction:(id)action;
- (void)handleFlipCameraMenuAction:(id)action;
- (void)handleLivePhotoModeMenuAction:(id)action;
- (void)handleTimerMenuAction:(id)action;
- (void)prepareForDefaultImageSnapshotForScreen:(id)screen;
- (void)updateShortcutItemsForApplication:(id)application;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation CAMApplicationDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v54 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  optionsCopy = options;
  CAMSignpostWithIDAndArgs(2, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  PLDebugEnableCoreDataMultithreadedAsserts();
  v8 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Camera launched.", buf, 2u);
  }

  mEMORY[0x1E69C4598] = [MEMORY[0x1E69C4598] sharedScheduler];
  [mEMORY[0x1E69C4598] setWaitForExtendedLaunch:1];

  v10 = applicationCopy;
  [v10 _configureExtendedLaunchTestIfNeeded];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  connectedScenes = [v10 connectedScenes];
  v13 = [connectedScenes countByEnumeratingWithState:&v48 objects:v53 count:16];
  v44 = v10;
  if (v13)
  {
    v14 = v13;
    v15 = *v49;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v49 != v15)
        {
          objc_enumerationMutation(connectedScenes);
        }

        v17 = *(*(&v48 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
          sizeRestrictions = [v18 sizeRestrictions];
          [sizeRestrictions setMinimumSize:{750.0, 750.0}];

          screen = [v18 screen];

          mainScreen = screen;
          goto LABEL_13;
        }
      }

      v14 = [connectedScenes countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v21 = [CAMSecureWindow alloc];
  v43 = mainScreen;
  [mainScreen bounds];
  v22 = [(CAMSecureWindow *)v21 initWithFrame:?];
  [(CAMApplicationDelegate *)self setWindow:v22];
  v23 = [[CAMSubsystems alloc] initWithLaunchOptions:optionsCopy];
  [(CAMApplicationDelegate *)self setSubsystems:v23];
  captureController = [(CAMApplicationDelegate *)self captureController];
  videoPreviewLayer = [captureController videoPreviewLayer];

  Current = CFAbsoluteTimeGetCurrent();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v28 = *MEMORY[0x1E6986B70];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __68__CAMApplicationDelegate_application_didFinishLaunchingWithOptions___block_invoke;
  v47[3] = &__block_descriptor_40_e24_v16__0__NSNotification_8l;
  *&v47[4] = Current;
  v30 = [defaultCenter addObserverForName:v28 object:videoPreviewLayer queue:mainQueue usingBlock:v47];

  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  window = [(CAMApplicationDelegate *)self window];
  [window setRootViewController:viewfinderViewController];

  [CAMAppIntentsCache setCurrentViewfinder:viewfinderViewController];
  [(CAMSecureWindow *)v22 makeKeyAndVisible];
  v33 = +[CAMCaptureCapabilities capabilities];
  if ([v33 shouldEnableUserNotifications])
  {
    launchedToTest = [*MEMORY[0x1E69DDA98] launchedToTest];

    if (launchedToTest)
    {
      goto LABEL_17;
    }

    currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
    [currentNotificationCenter setDelegate:self];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __68__CAMApplicationDelegate_application_didFinishLaunchingWithOptions___block_invoke_347;
    v45[3] = &unk_1E76FE990;
    v45[4] = self;
    v46 = currentNotificationCenter;
    v33 = currentNotificationCenter;
    [v33 getNotificationSettingsWithCompletionHandler:v45];
  }

LABEL_17:
  v36 = optionsCopy;
  v37 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69DDB28]];
  configurationRequest = [v37 configurationRequest];
  viewfinderViewController2 = [(CAMApplicationDelegate *)self viewfinderViewController];
  v40 = viewfinderViewController2;
  if (configurationRequest)
  {
    [viewfinderViewController2 generateOrUpdateAnalyticsSessionEventIfNeededWithCaptureMode:objc_msgSend(configurationRequest captureDevice:{"requestedCaptureMode"), objc_msgSend(configurationRequest, "requestedCaptureDevice")}];
  }

  else
  {
    [viewfinderViewController2 generateAnalyticsSessionEventIfNeeded];
  }

  [(CAMApplicationDelegate *)self _checkInternalInstallBundlesAndAlertIfIncompatible];
  CAMSignpostWithIDAndArgs(3, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  isConfiguredFromLaunchOptions = [(CAMSubsystems *)self->_subsystems isConfiguredFromLaunchOptions];

  return !isConfiguredFromLaunchOptions;
}

void __68__CAMApplicationDelegate_application_didFinishLaunchingWithOptions___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CFAbsoluteTimeGetCurrent() - *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "Preview started %f seconds after launch", &v4, 0xCu);
  }
}

void __68__CAMApplicationDelegate_application_didFinishLaunchingWithOptions___block_invoke_347(uint64_t a1, void *a2)
{
  if (![a2 authorizationStatus])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __68__CAMApplicationDelegate_application_didFinishLaunchingWithOptions___block_invoke_2;
    v4[3] = &unk_1E76F7960;
    v3 = *(a1 + 40);
    v4[4] = *(a1 + 32);
    v5 = v3;
    cam_perform_on_main_asap(v4);
  }
}

void __68__CAMApplicationDelegate_application_didFinishLaunchingWithOptions___block_invoke_2(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"INTERNAL: Please Allow Notifications" message:@"Camera will notify you when it detects errors and prompt you to file radars." preferredStyle:1];
    v3 = MEMORY[0x1E69DC648];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __68__CAMApplicationDelegate_application_didFinishLaunchingWithOptions___block_invoke_3;
    v12 = &unk_1E76F96B0;
    v4 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14 = v4;
    v5 = [v3 actionWithTitle:@"OK" style:0 handler:&v9];
    [v2 addAction:{v5, v9, v10, v11, v12, v13}];

    v6 = [*(a1 + 32) viewfinderViewController];
    [v6 presentViewController:v2 animated:1 completion:0];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);

    [v7 _requestAuthorizationForNotificationCenter:v8];
  }
}

void __69__CAMApplicationDelegate__requestAuthorizationForNotificationCenter___block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  if (v4 && a2)
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __69__CAMApplicationDelegate__requestAuthorizationForNotificationCenter___block_invoke_cold_1(v4, v5);
    }
  }
}

- (void)updateShortcutItemsForApplication:(id)application
{
  applicationCopy = application;
  CAMSignpostWithIDAndArgs(53, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = +[CAMCaptureCapabilities capabilities];
  isBackPortraitModeSupported = [v5 isBackPortraitModeSupported];
  isFrontPortraitModeSupported = [v5 isFrontPortraitModeSupported];
  isBackSlomoSupported = [v5 isBackSlomoSupported];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = mainBundle;
  v10 = isBackPortraitModeSupported == 0;
  if (isBackPortraitModeSupported)
  {
    v11 = @"Take Portrait";
  }

  else
  {
    v11 = @"Take Photo";
  }

  if (isBackPortraitModeSupported)
  {
    v12 = 6;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = @"camera";
  }

  else
  {
    v13 = @"f.cursive.circle";
  }

  if (v10)
  {
    v14 = @"com.apple.camera.shortcuts.photo";
  }

  else
  {
    v14 = @"com.apple.camera.shortcuts.portrait";
  }

  v15 = [mainBundle localizedStringForKey:v11 value:&stru_1F1660A30 table:@"InfoPlist"];
  v16 = [(CAMApplicationDelegate *)self _userInfoForMode:v12 devicePosition:0];
  v17 = [MEMORY[0x1E69DC6A8] iconWithSystemImageName:v13];
  v18 = [objc_alloc(MEMORY[0x1E69DC6B0]) initWithType:v14 localizedTitle:v15 localizedSubtitle:0 icon:v17 userInfo:v16];
  [v4 addObject:v18];

  if (isFrontPortraitModeSupported)
  {
    v19 = [v9 localizedStringForKey:@"Take Portrait Selfie" value:&stru_1F1660A30 table:@"InfoPlist"];
    v20 = [(CAMApplicationDelegate *)self _userInfoForMode:6 devicePosition:1];
    v21 = [MEMORY[0x1E69DC6A8] iconWithSystemImageName:@"f.cursive.circle"];
    v22 = objc_alloc(MEMORY[0x1E69DC6B0]);
    v23 = @"com.apple.camera.shortcuts.portraitselfie";
  }

  else
  {
    if (!isBackSlomoSupported)
    {
      goto LABEL_18;
    }

    v19 = [v9 localizedStringForKey:@"Record Slo-mo" value:&stru_1F1660A30 table:@"InfoPlist"];
    v20 = [(CAMApplicationDelegate *)self _userInfoForMode:2 devicePosition:0];
    v21 = [MEMORY[0x1E69DC6A8] iconWithSystemImageName:@"slowmo"];
    v22 = objc_alloc(MEMORY[0x1E69DC6B0]);
    v23 = @"com.apple.camera.shortcuts.slomo";
  }

  v24 = [v22 initWithType:v23 localizedTitle:v19 localizedSubtitle:0 icon:v21 userInfo:v20];
  [v4 addObject:v24];

LABEL_18:
  [applicationCopy setShortcutItems:v4];
  CAMSignpostWithIDAndArgs(54, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
}

- (void)application:(id)application performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  isRecording = [viewfinderViewController isRecording];

  if (isRecording)
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring launching with a URL request since we're currently recording", &v23, 2u);
    }
  }

  else
  {
    v9 = +[CAMUserPreferences preferences];
    v10 = [[CAMUserPreferenceOverrides alloc] initWithShortcutItem:itemCopy];
    captureMode = [(CAMUserPreferenceOverrides *)v10 captureMode];
    integerValue = [captureMode integerValue];
    if (integerValue > 9)
    {
      v13 = 0;
    }

    else
    {
      v13 = off_1E76FE9F8[integerValue];
    }

    captureDevice = [(CAMUserPreferenceOverrides *)v10 captureDevice];
    integerValue2 = [captureDevice integerValue];
    if (integerValue2 > 0xB)
    {
      v16 = 0;
    }

    else
    {
      v16 = off_1E76FEA48[integerValue2];
    }

    v17 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543618;
      v24 = v13;
      v25 = 2114;
      v26 = v16;
      _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, "Launched with a shortcut request for mode:%{public}@ device:%{public}@", &v23, 0x16u);
    }

    wantsQRCodes = [(CAMUserPreferenceOverrides *)v10 wantsQRCodes];
    bOOLValue = [wantsQRCodes BOOLValue];

    if (bOOLValue)
    {
      [v9 setForceEnableQRBanners:1];
      v20 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_1A3640000, v20, OS_LOG_TYPE_DEFAULT, "Launched with a URL request to force enable QR scanning", &v23, 2u);
      }
    }

    viewfinderViewController2 = [(CAMApplicationDelegate *)self viewfinderViewController];
    [viewfinderViewController2 readUserPreferencesAndHandleChangesWithOverrides:v10];

    viewfinderViewController3 = [(CAMApplicationDelegate *)self viewfinderViewController];
    [viewfinderViewController3 generateAnalyticsSessionEventIfNeeded];
  }
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  lCopy = l;
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  v8 = [viewfinderViewController handleURLIfNeeded:lCopy];

  return v8;
}

- (void)applicationDidEnterBackground:(id)background
{
  v9 = +[CAMUserPreferences preferences];
  forceEnableQRBanners = [v9 forceEnableQRBanners];
  [v9 setForceEnableQRBanners:0];
  if (forceEnableQRBanners && ([v9 QRBannersEnabledInSettings] & 1) == 0)
  {
    viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
    viewfinderViewController2 = [(CAMApplicationDelegate *)self viewfinderViewController];
    currentCaptureMode = [viewfinderViewController2 currentCaptureMode];
    viewfinderViewController3 = [(CAMApplicationDelegate *)self viewfinderViewController];
    [viewfinderViewController changeToMode:currentCaptureMode device:{objc_msgSend(viewfinderViewController3, "currentCaptureDevice")}];
  }
}

- (id)_userInfoForMode:(int64_t)mode devicePosition:(int64_t)position
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"CAMCaptureMode";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v12[1] = @"CAMCaptureDevice";
  v13[0] = v6;
  v7 = MEMORY[0x1E696AD98];
  v8 = +[CAMUserPreferences preferences];
  v9 = [v7 numberWithInteger:{objc_msgSend(v8, "defaultDeviceForModeChange:devicePosition:", mode, position)}];
  v13[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

- (void)prepareForDefaultImageSnapshotForScreen:(id)screen
{
  screenCopy = screen;
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  [viewfinderViewController prepareForDefaultImageSnapshotForScreen:screenCopy];
}

- (BOOL)_isNotificationTooOld:(id)old
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF00];
  oldCopy = old;
  date = [v3 date];
  notification = [oldCopy notification];

  date2 = [notification date];
  [date timeIntervalSinceDate:date2];
  v9 = v8;

  if (v9 > 1800.0)
  {
    error = 0;
    v17 = *MEMORY[0x1E695EE58];
    v18[0] = @"The issue that suggested a TTR occurred more than 30 minutes ago, so a sysdiagnose log is not likely to be useful.\nIf you continue to experience a problem, please file a radar via the Tap-to-Radar app.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v11 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 120.0, 0, &error, v10);
    if (v11)
    {
      v12 = v11;
      v13 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48__CAMApplicationDelegate__isNotificationTooOld___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v12;
      dispatch_async(v13, block);
    }
  }

  return v9 > 1800.0;
}

void __48__CAMApplicationDelegate__isNotificationTooOld___block_invoke(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(a1 + 32), 0.0, &responseFlags);
  CFRelease(*(a1 + 32));
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  centerCopy = center;
  responseCopy = response;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__CAMApplicationDelegate_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
  v11[3] = &unk_1E76FE9B8;
  v12 = responseCopy;
  v13 = centerCopy;
  selfCopy = self;
  v9 = centerCopy;
  v10 = responseCopy;
  [v9 getDeliveredNotificationsWithCompletionHandler:v11];
}

void __102__CAMApplicationDelegate_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke(id *a1, void *a2)
{
  v100 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v91 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [a1[4] notification];
  v5 = [v4 request];
  v6 = [v5 content];
  v7 = [v6 userInfo];
  v92 = [v7 objectForKeyedSubscript:?];

  v8 = [a1[4] notification];
  v9 = [v8 request];
  v10 = [v9 content];
  v11 = [v10 userInfo];
  v84 = [v11 objectForKeyedSubscript:@"keywordIDs"];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [a1[4] notification];
  v14 = [v13 request];
  v15 = [v14 content];
  v16 = [v15 userInfo];
  v17 = [v16 objectForKeyedSubscript:?];
  v18 = [v12 stringWithFormat:@"%@\n", v17];

  v19 = [a1[4] notification];
  v20 = [v19 request];
  v21 = [v20 content];
  v22 = [v21 userInfo];
  v89 = [v22 objectForKeyedSubscript:?];

  v23 = [a1[4] notification];
  v24 = [v23 request];
  v25 = [v24 content];
  v26 = [v25 userInfo];
  v83 = [v26 objectForKeyedSubscript:@"componentID"];

  v27 = [a1[4] notification];
  v28 = [v27 request];
  v29 = [v28 content];
  v30 = [v29 userInfo];
  v81 = [v30 objectForKeyedSubscript:@"componentName"];

  v31 = [a1[4] notification];
  v32 = [v31 request];
  v33 = [v32 content];
  v34 = [v33 userInfo];
  v88 = [v34 objectForKeyedSubscript:@"componentVersion"];

  v35 = [a1[4] notification];
  v36 = [v35 request];
  v37 = [v36 content];
  v38 = [v37 userInfo];
  v86 = [v38 objectForKeyedSubscript:@"description"];

  v39 = [a1[4] notification];
  v40 = [v39 request];
  v41 = [v40 content];
  v42 = [v41 userInfo];
  v87 = [v42 objectForKeyedSubscript:@"classification"];

  v82 = a1;
  v43 = [a1[4] notification];
  v44 = [v43 request];
  v45 = [v44 content];
  v46 = [v45 userInfo];
  v85 = [v46 objectForKeyedSubscript:@"reproducibility"];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v3;
  v47 = [obj countByEnumeratingWithState:&v93 objects:v99 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v94;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v94 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v51 = *(*(&v93 + 1) + 8 * i);
        v52 = [v51 request];
        v53 = [v52 content];
        v54 = [v53 userInfo];
        v55 = [v54 objectForKeyedSubscript:@"error"];
        v56 = [v92 isEqualToString:v55];

        v57 = [v51 request];
        v58 = [v57 content];
        v59 = [v58 userInfo];
        v60 = v59;
        if (v56)
        {
          v61 = [v59 objectForKeyedSubscript:@"captureID"];
          v62 = [v18 stringByAppendingFormat:@"%@\n", v61];

          v18 = v62;
        }

        else
        {
          v63 = [v59 objectForKeyedSubscript:@"prewarmReason"];
          v64 = [v89 isEqualToString:v63];

          if (!v64)
          {
            continue;
          }
        }

        v65 = [v51 request];
        v66 = [v65 identifier];
        [v91 addObject:v66];
      }

      v48 = [obj countByEnumeratingWithState:&v93 objects:v99 count:16];
    }

    while (v48);
  }

  [v82[5] removeDeliveredNotificationsWithIdentifiers:v91];
  v67 = [v82[4] notification];
  v68 = [v67 request];
  v69 = [v68 content];

  v70 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v70 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v71 = [v82[4] notification];
  v72 = [v71 date];
  v73 = [v70 stringFromDate:v72];

  if ([v82[6] _isNotificationTooOld:v82[4]])
  {
    v74 = os_log_create("com.apple.camera", "Camera");
    v76 = v83;
    v75 = v84;
    v77 = v89;
    v78 = v81;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v98 = v73;
      _os_log_impl(&dword_1A3640000, v74, OS_LOG_TYPE_DEFAULT, "Skipping TTR from %@ because sysdiagnose would likely be too old to be useful", buf, 0xCu);
    }

    v79 = v86;
    goto LABEL_22;
  }

  v76 = v83;
  v75 = v84;
  v78 = v81;
  if (v92)
  {
    v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"A capture error occurred on %@ while I was ...\n\nError occurred for captureIDs:\n%@", v73, v18];

    v74 = [v69 title];
    BYTE2(v80) = 0;
    LOWORD(v80) = 1;
    [CAMTapToRadarUtilities fileRadarWithTitle:"fileRadarWithTitle:description:classification:reproducibility:componentID:componentName:componentVersion:keywordIdsString:attachmentURLs:includeSysDiagnose:includePhotosDiagnose:includeHIDContinuousRecordings:" description:v74 classification:v79 reproducibility:@"Other Bug" componentID:@"Not Applicable" componentName:@"1576982" componentVersion:@"CameraCapture (New Bugs)" keywordIdsString:@"iOS" attachmentURLs:v84 includeSysDiagnose:MEMORY[0x1E695E0F0] includePhotosDiagnose:v80 includeHIDContinuousRecordings:?];
    v77 = v89;
LABEL_22:

    goto LABEL_23;
  }

  v77 = v89;
  if (v89)
  {
    v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Accidental Camera launch with prewarm reason %@", v89];
    v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Camera accidentally launched on %@ while I was ...", v73];

    BYTE2(v80) = 1;
    LOWORD(v80) = 1;
    [CAMTapToRadarUtilities fileRadarWithTitle:"fileRadarWithTitle:description:classification:reproducibility:componentID:componentName:componentVersion:keywordIdsString:attachmentURLs:includeSysDiagnose:includePhotosDiagnose:includeHIDContinuousRecordings:" description:v74 classification:v79 reproducibility:@"Other Bug" componentID:@"Not Applicable" componentName:v83 componentVersion:v81 keywordIdsString:v88 attachmentURLs:v84 includeSysDiagnose:MEMORY[0x1E695E0F0] includePhotosDiagnose:v80 includeHIDContinuousRecordings:?];
    goto LABEL_22;
  }

  if (v86)
  {
    v74 = [v69 title];
    BYTE2(v80) = 0;
    LOWORD(v80) = 1;
    v79 = v86;
    [CAMTapToRadarUtilities fileRadarWithTitle:"fileRadarWithTitle:description:classification:reproducibility:componentID:componentName:componentVersion:keywordIdsString:attachmentURLs:includeSysDiagnose:includePhotosDiagnose:includeHIDContinuousRecordings:" description:v74 classification:v86 reproducibility:v87 componentID:v85 componentName:v83 componentVersion:v81 keywordIdsString:v88 attachmentURLs:v84 includeSysDiagnose:MEMORY[0x1E695E0F0] includePhotosDiagnose:v80 includeHIDContinuousRecordings:?];
    goto LABEL_22;
  }

LABEL_23:
}

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  userInfo = [activityCopy userInfo];

  if (userInfo)
  {
    v9 = [userInfo objectForKeyedSubscript:@"userAction"];
    v10 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = v9;
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Continuing user activity:%{public}@", &v18, 0xCu);
    }

    if ([v9 isEqual:@"documentScanning"])
    {
      [viewfinderViewController presentDocumentScanningViewControllerAnimated:1];
      goto LABEL_23;
    }

    if (![v9 isEqual:@"cameraRoll"])
    {
      goto LABEL_23;
    }

    v11 = [userInfo objectForKeyedSubscript:@"cameraRollActionType"];
    v12 = v11;
    if (v11)
    {
      if ([v11 isEqual:&stru_1F1660A30])
      {
        v13 = 0;
LABEL_17:
        v14 = [userInfo objectForKeyedSubscript:@"cameraRollIndex"];
LABEL_18:
        +[CAMViewfinderLockScreenExtensionHelper beginDelayingAppearance];
        if (v14)
        {
          unsignedIntValue = [v14 unsignedIntValue];
        }

        else
        {
          unsignedIntValue = 0;
        }

        [viewfinderViewController presentCameraRollViewControllerAnimated:0 withAction:v13 selectedAssetIndexFromEnd:unsignedIntValue];
        +[CAMViewfinderLockScreenExtensionHelper endDelayingAppearance];
        goto LABEL_22;
      }

      if ([v12 isEqual:@"edit"])
      {
        v13 = 1;
        goto LABEL_17;
      }

      if ([v12 isEqual:@"menu"])
      {
        v13 = 2;
        goto LABEL_17;
      }

      v17 = [v12 isEqual:@"share"];
      v14 = [userInfo objectForKeyedSubscript:@"cameraRollIndex"];
      if (v17)
      {
        v13 = 3;
        goto LABEL_18;
      }
    }

    else
    {
      v14 = [userInfo objectForKeyedSubscript:@"cameraRollIndex"];
    }

LABEL_22:

    goto LABEL_23;
  }

  v9 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Skipping continue user activity, no userInfo", &v18, 2u);
  }

LABEL_23:

  return userInfo != 0;
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  system = [builderCopy system];
  mainSystem = [MEMORY[0x1E69DCC88] mainSystem];

  if (system == mainSystem)
  {
    systemMenuController = self->_systemMenuController;
    if (!systemMenuController)
    {
      v7 = objc_alloc_init(CAMSystemMenuController);
      v8 = self->_systemMenuController;
      self->_systemMenuController = v7;

      [(CAMSystemMenuController *)self->_systemMenuController setMenuControllerDelegate:self];
      systemMenuController = self->_systemMenuController;
    }

    [(CAMSystemMenuController *)systemMenuController installCameraMenuCommandsWithBuilder:builderCopy];
    if (objc_opt_respondsToSelector())
    {
      [MEMORY[0x1E69C3698] insertImageMenuWithBuilder:builderCopy afterMenuForIdentifier:*MEMORY[0x1E69DE0F8] options:15];
    }
  }
}

- (id)availableCaptureModes
{
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  availableCaptureModes = [viewfinderViewController availableCaptureModes];

  return availableCaptureModes;
}

- (int64_t)currentCaptureMode
{
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  currentCaptureMode = [viewfinderViewController currentCaptureMode];

  return currentCaptureMode;
}

- (int64_t)currentFlashMode
{
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  flashMode = [viewfinderViewController flashMode];

  return flashMode;
}

- (int64_t)currentLivePhotoMode
{
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  livePhotoMode = [viewfinderViewController livePhotoMode];

  return livePhotoMode;
}

- (int64_t)currentTimerDuration
{
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  timerDuration = [viewfinderViewController timerDuration];

  return timerDuration;
}

- (BOOL)cameraIsRecording
{
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  isRecording = [viewfinderViewController isRecording];

  return isRecording;
}

- (BOOL)isShowingCameraRoll
{
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  isInCameraRollView = [viewfinderViewController isInCameraRollView];

  return isInCameraRollView;
}

- (BOOL)shouldEnableCaptureMenuCommand
{
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  shouldEnableCaptureMenuCommand = [viewfinderViewController shouldEnableCaptureMenuCommand];

  return shouldEnableCaptureMenuCommand;
}

- (BOOL)shouldEnableFlipCameraMenuCommand
{
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  shouldEnableFlipCameraMenuCommand = [viewfinderViewController shouldEnableFlipCameraMenuCommand];

  return shouldEnableFlipCameraMenuCommand;
}

- (BOOL)shouldEnableFlashMenuCommand
{
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  shouldEnableFlashMenuCommand = [viewfinderViewController shouldEnableFlashMenuCommand];

  return shouldEnableFlashMenuCommand;
}

- (BOOL)shouldEnableLivePhotoMenuCommand
{
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  shouldEnableLivePhotoMenuCommand = [viewfinderViewController shouldEnableLivePhotoMenuCommand];

  return shouldEnableLivePhotoMenuCommand;
}

- (BOOL)shouldEnableTimerMenuCommand
{
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  shouldEnableTimerMenuCommand = [viewfinderViewController shouldEnableTimerMenuCommand];

  return shouldEnableTimerMenuCommand;
}

- (void)handleCameraRollMenuAction:(id)action
{
  isShowingCameraRoll = [(CAMApplicationDelegate *)self isShowingCameraRoll];
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  v6 = viewfinderViewController;
  if (isShowingCameraRoll)
  {
    [viewfinderViewController dismissCameraRoll];
  }

  else
  {
    [viewfinderViewController simulateImageWellTap];
  }
}

- (void)handleCameraSettingsMenuAction:(id)action
{
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"settings-navigation://com.apple.Settings.Camera"];
  CAMOpenSensitiveURLWithUnlockRequest(v3, 0);
}

- (void)handleCaptureMenuAction:(id)action
{
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  [viewfinderViewController simulateShutterButtonPressForCaptureMenuItem];
}

- (void)handleCaptureModeMenuAction:(id)action
{
  v4 = [(CAMSystemMenuController *)self->_systemMenuController valueForCommand:action];
  integerValue = [v4 integerValue];

  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  currentCaptureDevice = [viewfinderViewController currentCaptureDevice];

  viewfinderViewController2 = [(CAMApplicationDelegate *)self viewfinderViewController];
  [viewfinderViewController2 changeToMode:integerValue device:currentCaptureDevice animated:1];
}

- (void)handleFlashMenuAction:(id)action
{
  v4 = [(CAMSystemMenuController *)self->_systemMenuController valueForCommand:action];
  integerValue = [v4 integerValue];

  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  [viewfinderViewController setFlashMode:integerValue];
}

- (void)handleFlipCameraMenuAction:(id)action
{
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  [viewfinderViewController handleFlipButtonReleased];
}

- (void)handleLivePhotoModeMenuAction:(id)action
{
  v4 = [(CAMSystemMenuController *)self->_systemMenuController valueForCommand:action];
  integerValue = [v4 integerValue];

  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  [viewfinderViewController setLivePhotoMode:integerValue];
}

- (void)handleTimerMenuAction:(id)action
{
  v4 = [(CAMSystemMenuController *)self->_systemMenuController valueForCommand:action];
  integerValue = [v4 integerValue];

  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  [viewfinderViewController setTimerDuration:integerValue];
}

- (void)_checkInternalInstallBundlesAndAlertIfIncompatible
{
  v3 = +[CAMCaptureCapabilities capabilities];
  isInternalInstall = [v3 isInternalInstall];

  if (isInternalInstall)
  {
    _internalInstall_prepareCheckedBundleVersions = [(CAMApplicationDelegate *)self _internalInstall_prepareCheckedBundleVersions];
    v5 = [_internalInstall_prepareCheckedBundleVersions objectForKeyedSubscript:@"isMismatched"];
    bOOLValue = [v5 BOOLValue];

    if (bOOLValue)
    {
      [(CAMApplicationDelegate *)self _internalInstall_presentBundleAlertForBundleInfo:_internalInstall_prepareCheckedBundleVersions];
    }
  }
}

- (id)_internalInstall_prepareCheckedBundleVersions
{
  v25[3] = *MEMORY[0x1E69E9840];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [mainBundle objectForInfoDictionaryKey:@"CFBundleVersion"];

  v4 = CAMCameraUIFrameworkBundleVersion();
  if (v4 && v3)
  {
    v5 = [&unk_1F16C9D58 containsObject:v3];
    v6 = [&unk_1F16C9D58 containsObject:v4];
    v7 = +[CAMCaptureCapabilities capabilities];
    shouldShowAlertForBundleMismatch = [v7 shouldShowAlertForBundleMismatch];

    v9 = v5 ^ v6;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"App:%@", v3];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CameraUI:%@", v4];
    v24[0] = @"isMismatched";
    if ((v9 & shouldShowAlertForBundleMismatch) != 0)
    {
      v12 = @"Mismatched versions! ";
    }

    else
    {
      v12 = &stru_1F1660A30;
    }

    v13 = [MEMORY[0x1E696AD98] numberWithBool:v9 & shouldShowAlertForBundleMismatch];
    v25[0] = v13;
    v25[1] = v10;
    v24[1] = @"appVersion";
    v24[2] = @"cameraUIVersion";
    v25[2] = v11;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

    v15 = v12;
    v16 = os_log_create("com.apple.camera", "BundleCheck");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v19 = v15;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, "%@%@ - %@", buf, 0x20u);
    }
  }

  else
  {
    v10 = os_log_create("com.apple.camera", "BundleCheck");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CAMApplicationDelegate *)v10 _internalInstall_prepareCheckedBundleVersions];
    }

    v14 = &unk_1F16C9088;
  }

  return v14;
}

- (void)_internalInstall_presentBundleAlertForBundleInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKeyedSubscript:@"appVersion"];
  v5 = [infoCopy objectForKeyedSubscript:@"cameraUIVersion"];

  if (!v4 || !v5)
  {
    v6 = os_log_create("com.apple.camera", "BundleCheck");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CAMApplicationDelegate _internalInstall_presentBundleAlertForBundleInfo:v6];
    }
  }

  v7 = CAMLocalizedString(@"CAM_BUNDLE_MISMATCHED", @"CameraUI-Internal");
  v8 = CAMLocalizedString(@"CAM_BUNDLE_ALERT_TITLE", @"CameraUI-Internal");
  v9 = CAMLocalizedString(@"CAM_BUNDLE_ACKNOWLEDGE", @"CameraUI-Internal");
  v10 = CAMLocalizedString(@"CAM_BUNDLE_LEARN_MORE", @"CameraUI-Internal");
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n%@\n%@", v7, v4, v5];
  v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v8 message:v11 preferredStyle:1];
  v16 = v5;
  v13 = [MEMORY[0x1E69DC648] actionWithTitle:v9 style:0 handler:&__block_literal_global_537];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__CAMApplicationDelegate__internalInstall_presentBundleAlertForBundleInfo___block_invoke_538;
  v18[3] = &unk_1E76F89F0;
  v19 = @"CameraUI-Internal";
  v14 = [MEMORY[0x1E69DC648] actionWithTitle:v10 style:0 handler:v18];
  [v12 addAction:v13];
  [v12 addAction:v14];
  viewfinderViewController = [(CAMApplicationDelegate *)self viewfinderViewController];
  [viewfinderViewController presentViewController:v12 animated:1 completion:0];
}

void __75__CAMApplicationDelegate__internalInstall_presentBundleAlertForBundleInfo___block_invoke()
{
  v0 = os_log_create("com.apple.camera", "BundleCheck");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A3640000, v0, OS_LOG_TYPE_DEFAULT, "Acknowledged bundle mismatch warning.", v1, 2u);
  }
}

void __75__CAMApplicationDelegate__internalInstall_presentBundleAlertForBundleInfo___block_invoke_538(uint64_t a1)
{
  v2 = os_log_create("com.apple.camera", "BundleCheck");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "Information presented", v5, 2u);
  }

  v3 = CAMLocalizedString(@"CAM_BUNDLE_INFO_URL", *(a1 + 32));
  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  CAMOpenSensitiveURLWithUnlockRequest(v4, 1);
}

void __69__CAMApplicationDelegate__requestAuthorizationForNotificationCenter___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [a1 code];
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Error requesting authorization for UNNotificationRequest. Received: %ld", &v3, 0xCu);
}

@end