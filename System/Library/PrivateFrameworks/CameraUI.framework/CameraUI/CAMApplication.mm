@interface CAMApplication
+ (BOOL)isAppOrPlugInSuspended;
+ (int64_t)appOrPlugInInterfaceOrientation;
+ (int64_t)appOrPlugInState;
- (BOOL)runLibrarySelectionWithTestPlan:(id)a3 options:(id)a4;
- (BOOL)runNewPPTUICaptureTestWithTestPlan:(id)a3 options:(id)a4;
- (BOOL)runPresentCameraRollWithTestPlan:(id)a3 options:(id)a4;
- (BOOL)runSwitchCamerasTestWithTestPlan:(id)a3 options:(id)a4;
- (BOOL)runSwitchModesWithTestPlan:(id)a3 options:(id)a4 userPreferencesOverrides:(id)a5;
- (BOOL)runSwitchToPortraitFrontWithTestPlan:(id)a3 options:(id)a4;
- (BOOL)runTakePictureFrontCameraWithTestPlan:(id)a3 options:(id)a4 prototype:(id)a5 forCaptureMode:(int64_t)a6;
- (BOOL)runTakePictureFrontPortraitWithTestPlan:(id)a3 options:(id)a4 prototype:(id)a5;
- (BOOL)runTakePicturePortraitWithTestPlan:(id)a3 options:(id)a4 prototype:(id)a5;
- (BOOL)runTakePictureTestWithTestPlan:(id)a3 options:(id)a4 prototype:(id)a5 forCaptureMode:(int64_t)a6;
- (BOOL)runTakeVideoTestWithTestPlan:(id)a3 options:(id)a4 userPreferencesOverrides:(id)a5;
- (BOOL)runTest:(id)a3 options:(id)a4;
- (void)_configureExtendedLaunchTestIfNeeded;
- (void)_registerPreviewStartBlock:(id)a3;
- (void)didChangeToMode:(int64_t)a3 device:(int64_t)a4;
- (void)didCloseViewfinderForReason:(int64_t)a3;
- (void)didOpenViewfinderForReason:(int64_t)a3;
- (void)prepareForDefaultImageSnapshotForScreen:(id)a3;
- (void)willCloseViewfinderForReason:(int64_t)a3;
- (void)willOpenViewfinderForReason:(int64_t)a3;
@end

@implementation CAMApplication

- (void)_configureExtendedLaunchTestIfNeeded
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __63__CAMApplication_Testing___configureExtendedLaunchTestIfNeeded__block_invoke;
  v2[3] = &unk_1E76F77B0;
  v2[4] = self;
  [(CAMApplication *)self _registerPreviewStartBlock:v2];
}

void __63__CAMApplication_Testing___configureExtendedLaunchTestIfNeeded__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _launchTestName];
  [v1 finishedTest:v2 extraResults:0];
}

- (void)_registerPreviewStartBlock:(id)a3
{
  v3 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3042000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = [MEMORY[0x1E696ADC8] mainQueue];
  v6 = *MEMORY[0x1E6986B70];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__CAMApplication_Testing___registerPreviewStartBlock___block_invoke;
  v9[3] = &unk_1E76F7AB8;
  v7 = v3;
  v10 = v7;
  v11 = &v12;
  v8 = [v4 addObserverForName:v6 object:0 queue:v5 usingBlock:v9];
  objc_storeWeak(v13 + 5, v8);

  _Block_object_dispose(&v12, 8);
  objc_destroyWeak(&v17);
}

void __54__CAMApplication_Testing___registerPreviewStartBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  [v3 removeObserver:WeakRetained name:*MEMORY[0x1E6986B70] object:0];
}

- (void)willCloseViewfinderForReason:(int64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [(CAMApplication *)self currentTestPlan];
  [v5 startSubtestWithName:@"closingViewfinder" withMetrics:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = @"reason";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v6 postNotificationName:@"CAMPerformanceWillCloseViewfinderNotification" object:self userInfo:v8];
}

- (void)didCloseViewfinderForReason:(int64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [(CAMApplication *)self currentTestPlan];
  [v5 startSubtestWithName:@"closingViewfinder" withMetrics:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = @"reason";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v6 postNotificationName:@"CAMPerformanceDidCloseViewfinderNotification" object:self userInfo:v8];
}

- (void)willOpenViewfinderForReason:(int64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [(CAMApplication *)self currentTestPlan];
  [v5 startSubtestWithName:@"openingViewfinder" withMetrics:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = @"reason";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v6 postNotificationName:@"CAMPerformanceWillOpenViewfinderNotification" object:self userInfo:v8];
}

- (void)didOpenViewfinderForReason:(int64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [(CAMApplication *)self currentTestPlan];
  [v5 stopSubtestWithName:@"openingViewfinder"];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = @"reason";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v6 postNotificationName:@"CAMPerformanceDidOpenViewfinderNotification" object:self userInfo:v8];
}

- (void)didChangeToMode:(int64_t)a3 device:(int64_t)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v11[0] = @"mode";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v11[1] = @"device";
  v12[0] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v7 postNotificationName:@"CAMPerformanceDidChangeToModeNotification" object:self userInfo:v10];
}

- (BOOL)runTakeVideoTestWithTestPlan:(id)a3 options:(id)a4 userPreferencesOverrides:(id)a5
{
  v91 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CAMApplication *)self delegate];
  v12 = [v11 viewfinderViewController];
  v13 = [v9 objectForKeyedSubscript:@"videoDurationInSeconds"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v9 objectForKeyedSubscript:@"captureMode"];
  v17 = [v16 integerValue];

  v18 = 0;
  v19 = 0;
  v79 = v11;
  v80 = v10;
  if (v17 <= 2)
  {
    switch(v17)
    {
      case 0:
LABEL_16:
        v18 = 0;
        v19 = 1;
        goto LABEL_111;
      case 1:
        v35 = [v10 videoConfiguration];

        if (!v35)
        {
          goto LABEL_4;
        }

        v36 = [v10 videoConfiguration];
        v18 = [v36 integerValue];

        v27 = os_log_create("com.apple.camera", "Camera");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_110;
        }

        v37 = [v8 testName];
        v29 = v37;
        v38 = 0;
        if (v18 > 9999)
        {
          if (v18 > 10002)
          {
            switch(v18)
            {
              case 10003:
                v38 = @"ImagePickerVGA";
                break;
              case 10004:
                v38 = @"ImagePickeriFrame720p";
                break;
              case 10005:
                v38 = @"ImagePickeriFrame540p";
                break;
            }
          }

          else if (v18 == 10000)
          {
            v38 = @"ImagePickerHigh";
          }

          else if (v18 == 10001)
          {
            v38 = @"ImagePickerMedium";
          }

          else
          {
            v38 = @"ImagePickerLow";
          }
        }

        else
        {
          switch(v18)
          {
            case 0:
              v38 = @"Auto";
              break;
            case 1:
              v38 = @"1080p60";
              break;
            case 2:
              v38 = @"720p120";
              break;
            case 3:
              v38 = @"720p240";
              break;
            case 4:
              v38 = @"1080p120";
              break;
            case 5:
              v38 = @"4k30";
              break;
            case 6:
              v38 = @"720p30";
              break;
            case 7:
              v38 = @"1080p30";
              break;
            case 8:
              v38 = @"1080p240";
              break;
            case 9:
              v38 = @"4k60";
              break;
            case 10:
              v38 = @"4k24";
              break;
            case 11:
              v38 = @"1080p25";
              break;
            case 12:
              v38 = @"4k25";
              break;
            case 13:
              v38 = @"4k120";
              break;
            case 14:
              v38 = @"4k100";
              break;
            default:
              break;
          }
        }

        *buf = 138543618;
        v88 = v37;
        v89 = 2114;
        v90 = v38;
        v39 = "%{public}@ will override Video format to %{public}@";
        break;
      case 2:
        v25 = [v10 slomoConfiguration];

        if (!v25)
        {
          goto LABEL_4;
        }

        v26 = [v10 slomoConfiguration];
        v18 = [v26 integerValue];

        v27 = os_log_create("com.apple.camera", "Camera");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_110;
        }

        v28 = [v8 testName];
        v29 = v28;
        v30 = 0;
        if (v18 > 9999)
        {
          if (v18 > 10002)
          {
            switch(v18)
            {
              case 10003:
                v30 = @"ImagePickerVGA";
                break;
              case 10004:
                v30 = @"ImagePickeriFrame720p";
                break;
              case 10005:
                v30 = @"ImagePickeriFrame540p";
                break;
            }
          }

          else if (v18 == 10000)
          {
            v30 = @"ImagePickerHigh";
          }

          else if (v18 == 10001)
          {
            v30 = @"ImagePickerMedium";
          }

          else
          {
            v30 = @"ImagePickerLow";
          }
        }

        else
        {
          switch(v18)
          {
            case 0:
              v30 = @"Auto";
              break;
            case 1:
              v30 = @"1080p60";
              break;
            case 2:
              v30 = @"720p120";
              break;
            case 3:
              v30 = @"720p240";
              break;
            case 4:
              v30 = @"1080p120";
              break;
            case 5:
              v30 = @"4k30";
              break;
            case 6:
              v30 = @"720p30";
              break;
            case 7:
              v30 = @"1080p30";
              break;
            case 8:
              v30 = @"1080p240";
              break;
            case 9:
              v30 = @"4k60";
              break;
            case 10:
              v30 = @"4k24";
              break;
            case 11:
              v30 = @"1080p25";
              break;
            case 12:
              v30 = @"4k25";
              break;
            case 13:
              v30 = @"4k120";
              break;
            case 14:
              v30 = @"4k100";
              break;
            default:
              break;
          }
        }

        *buf = 138543618;
        v88 = v28;
        v89 = 2114;
        v90 = v30;
        v39 = "%{public}@ will override SloMo format to %{public}@";
        break;
      default:
        goto LABEL_111;
    }

LABEL_109:
    _os_log_impl(&dword_1A3640000, v27, OS_LOG_TYPE_DEFAULT, v39, buf, 0x16u);

LABEL_110:
    v19 = 0;
    goto LABEL_111;
  }

  if (v17 < 7)
  {
    v20 = [v8 testName];
    v21 = MEMORY[0x1E696AEC0];
    v22 = off_1E76F7AD8[v17 - 3];
    v23 = [v8 testName];
    v76 = v22;
    v10 = v80;
    v24 = [v21 stringWithFormat:@"%@ is not a supported mode for %@", v76, v23];
    [(CAMApplication *)self failedTest:v20 withFailure:v24];

LABEL_4:
    v19 = 0;
    v18 = 0;
    goto LABEL_111;
  }

  if (v17 == 7)
  {
    v31 = [v10 cinematicConfiguration];

    if (!v31)
    {
      goto LABEL_4;
    }

    v32 = [v10 cinematicConfiguration];
    v18 = [v32 integerValue];

    v27 = os_log_create("com.apple.camera", "Camera");
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_110;
    }

    v33 = [v8 testName];
    v29 = v33;
    v34 = 0;
    if (v18 > 9999)
    {
      if (v18 > 10002)
      {
        switch(v18)
        {
          case 10003:
            v34 = @"ImagePickerVGA";
            break;
          case 10004:
            v34 = @"ImagePickeriFrame720p";
            break;
          case 10005:
            v34 = @"ImagePickeriFrame540p";
            break;
        }
      }

      else if (v18 == 10000)
      {
        v34 = @"ImagePickerHigh";
      }

      else if (v18 == 10001)
      {
        v34 = @"ImagePickerMedium";
      }

      else
      {
        v34 = @"ImagePickerLow";
      }
    }

    else
    {
      switch(v18)
      {
        case 0:
          v34 = @"Auto";
          break;
        case 1:
          v34 = @"1080p60";
          break;
        case 2:
          v34 = @"720p120";
          break;
        case 3:
          v34 = @"720p240";
          break;
        case 4:
          v34 = @"1080p120";
          break;
        case 5:
          v34 = @"4k30";
          break;
        case 6:
          v34 = @"720p30";
          break;
        case 7:
          v34 = @"1080p30";
          break;
        case 8:
          v34 = @"1080p240";
          break;
        case 9:
          v34 = @"4k60";
          break;
        case 10:
          v34 = @"4k24";
          break;
        case 11:
          v34 = @"1080p25";
          break;
        case 12:
          v34 = @"4k25";
          break;
        case 13:
          v34 = @"4k120";
          break;
        case 14:
          v34 = @"4k100";
          break;
        default:
          break;
      }
    }

    *buf = 138543618;
    v88 = v33;
    v89 = 2114;
    v90 = v34;
    v39 = "%{public}@ will override Cinematic format to %{public}@";
    goto LABEL_109;
  }

  if (v17 != 8)
  {
    if (v17 != 9)
    {
      goto LABEL_111;
    }

    goto LABEL_16;
  }

  v19 = 0;
  v18 = 7;
LABEL_111:
  v78 = self;
  v40 = [v9 objectForKeyedSubscript:@"devicePosition"];
  v41 = [v40 integerValue];

  v42 = v41 == 1;
  v43 = +[CAMCaptureCapabilities capabilities];
  if (v17 > 9)
  {
    v44 = 0;
  }

  else
  {
    v44 = off_1E76F7AF8[v17];
  }

  v45 = 0;
  v46 = @"BackAuto";
  if (v41 == 1)
  {
    v46 = @"FrontAuto";
  }

  if (v18 > 9999)
  {
    if (v18 > 10002)
    {
      switch(v18)
      {
        case 10003:
          v45 = @"ImagePickerVGA";
          break;
        case 10004:
          v45 = @"ImagePickeriFrame720p";
          break;
        case 10005:
          v45 = @"ImagePickeriFrame540p";
          break;
      }
    }

    else if (v18 == 10000)
    {
      v45 = @"ImagePickerHigh";
    }

    else if (v18 == 10001)
    {
      v45 = @"ImagePickerMedium";
    }

    else
    {
      v45 = @"ImagePickerLow";
    }
  }

  else
  {
    switch(v18)
    {
      case 0:
        v45 = @"Auto";
        break;
      case 1:
        v45 = @"1080p60";
        break;
      case 2:
        v45 = @"720p120";
        break;
      case 3:
        v45 = @"720p240";
        break;
      case 4:
        v45 = @"1080p120";
        break;
      case 5:
        v45 = @"4k30";
        break;
      case 6:
        v45 = @"720p30";
        break;
      case 7:
        v45 = @"1080p30";
        break;
      case 8:
        v45 = @"1080p240";
        break;
      case 9:
        v45 = @"4k60";
        break;
      case 10:
        v45 = @"4k24";
        break;
      case 11:
        v45 = @"1080p25";
        break;
      case 12:
        v45 = @"4k25";
        break;
      case 13:
        v45 = @"4k120";
        break;
      case 14:
        v45 = @"4k100";
        break;
      default:
        break;
    }
  }

  v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mode: %@ device: %@ format: %@", v44, v46, v45];
  if (!v19)
  {
    if ([v43 isSupportedVideoConfiguration:v18 forMode:v17 device:v42])
    {
      goto LABEL_152;
    }

    v48 = @"%@ is not supported";
    goto LABEL_151;
  }

  if (([v43 isCTMVideoCaptureSupportedForMode:v17] & 1) == 0 && (objc_msgSend(v43, "isTrueVideoSupportedForMode:", v17) & 1) == 0)
  {
    v48 = @"%@ ctmVideo is not supported";
LABEL_151:
    v49 = [v8 testName];
    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:v48, v47];
    [(CAMApplication *)v78 failedTest:v49 withFailure:v50];

    v10 = v80;
  }

LABEL_152:
  v51 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v52 = [v8 testName];
    *buf = 138543618;
    v88 = v52;
    v89 = 2114;
    v90 = v47;
    _os_log_impl(&dword_1A3640000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ configured with %{public}@", buf, 0x16u);

    v10 = v80;
  }

  if ([v10 hasOverrides])
  {
    [v12 readUserPreferencesAndHandleChangesWithOverrides:v10];
  }

  [v12 changeToMode:v17 device:v42];
  [v12 setTorchMode:0];
  v53 = [v9 objectForKeyedSubscript:@"initialDelayInSeconds"];
  [v53 doubleValue];
  v55 = v54;

  v56 = [CAMViewfinderVideoCaptureTestHarness alloc];
  v57 = [v8 testName];
  v58 = [(CAMViewfinderVideoCaptureTestHarness *)v56 initWithTestName:v57 viewfinderViewController:v12 videoDurationInSeconds:v19 initialDelayInSeconds:v15 captureCTMVideo:v55];

  [v12 setVideoCaptureTestDelegate:v58];
  [v8 queueHarness:v58];
  v59 = [v9 objectForKeyedSubscript:@"captureStillsDuringVideo"];
  LODWORD(v57) = [v59 BOOLValue];

  if (v57)
  {
    v60 = [v9 valueForKey:@"pictureCount"];
    v61 = [v60 integerValue];

    v62 = [v9 objectForKeyedSubscript:@"delayBetweenCaptures"];
    [v62 doubleValue];
    v64 = v63;

    v65 = [v9 objectForKeyedSubscript:@"initialDelayInSeconds"];
    [v65 doubleValue];

    v66 = [CAMViewfinderStillImageCaptureTestHarness alloc];
    v67 = [v8 testName];
    LOBYTE(v77) = 0;
    v68 = [(CAMViewfinderStillImageCaptureTestHarness *)v66 initWithTestName:v67 maxStillImageCount:v61 expectedNumberOfCapturesPerRequest:1 viewfinderViewController:v12 performingWarmupCapture:0 forCaptureMode:v17 delayBetweenCaptures:v64 capturesOnTouchDown:v77];

    v69 = [CAMViewfinderActionIntervalometer alloc];
    v70 = [v9 valueForKey:@"repeatDelayInSeconds"];
    [v70 doubleValue];
    v71 = [CAMViewfinderActionIntervalometer initWithDelegate:v69 interval:"initWithDelegate:interval:delay:maximumCount:viewfinderViewController:" delay:v68 maximumCount:v61 viewfinderViewController:v12];

    [(CAMViewfinderStillImageCaptureTestHarness *)v68 setStillDuringVideo:1];
    [(CAMViewfinderStillImageCaptureTestHarness *)v68 setTestIntervalometer:v71];
    [v12 setStillImageCaptureTestDelegate:v68];
    [v8 queueHarness:v68];
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __89__CAMApplication_Testing__runTakeVideoTestWithTestPlan_options_userPreferencesOverrides___block_invoke;
    v84[3] = &unk_1E76F7960;
    v85 = v8;
    v72 = v68;
    v86 = v72;
    [(CAMViewfinderVideoCaptureTestHarness *)v58 setStartVideoHandler:v84];
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __89__CAMApplication_Testing__runTakeVideoTestWithTestPlan_options_userPreferencesOverrides___block_invoke_2;
    v81[3] = &unk_1E76F7960;
    v82 = v72;
    v83 = v71;
    v73 = v71;
    v74 = v72;
    [(CAMViewfinderVideoCaptureTestHarness *)v58 setEndVideoHandler:v81];
  }

  [v8 runWithSecondsDelay:2];

  return 1;
}

uint64_t __89__CAMApplication_Testing__runTakeVideoTestWithTestPlan_options_userPreferencesOverrides___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isRunningTest];
  if (result)
  {
    [*(a1 + 40) stopAttemptingActions];
    v3 = *(a1 + 32);

    return [v3 cancelTesting];
  }

  return result;
}

- (BOOL)runNewPPTUICaptureTestWithTestPlan:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v54 = self;
  v56 = [(CAMApplication *)self delegate];
  v8 = [v56 viewfinderViewController];
  v9 = +[CAMCaptureCapabilities capabilities];
  v10 = [v6 testName];
  v57 = v9;
  v11 = [v9 captureOnTouchDown];
  if ([v10 rangeOfString:@"Portrait"] != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_4:
    [v7 setValue:&unk_1F16C7118 forKey:@"expectedNumberOfCapturesPerRequest"];
    v15 = +[CAMUserPreferences preferences];
    [v8 setPortraitModeLightingEffectType:{objc_msgSend(v15, "ppt_readPortraitLightingType")}];

    v11 = 1;
    v14 = 6;
    goto LABEL_6;
  }

  v12 = [v7 objectForKeyedSubscript:@"captureMode"];

  if (v12)
  {
    v13 = [v7 objectForKeyedSubscript:@"captureMode"];
    v14 = [v13 integerValue];

    if (v14 != 6)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v14 = 0;
LABEL_6:
  if ([v10 rangeOfString:@"Front"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [v7 objectForKeyedSubscript:@"devicePosition"];

    if (v16)
    {
      v17 = [v7 objectForKeyedSubscript:@"devicePosition"];
      v18 = [v17 integerValue];

      v19 = v18 == 1;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 1;
  }

  [v8 setHDRMode:0];
  v20 = [v7 objectForKeyedSubscript:@"flashMode"];

  if (v20)
  {
    v21 = [v7 objectForKeyedSubscript:@"flashMode"];
    v20 = [v21 integerValue];
  }

  v55 = v11;
  v22 = [v7 objectForKeyedSubscript:@"livePhotoMode"];

  if (v22)
  {
    v23 = [v7 objectForKeyedSubscript:@"livePhotoMode"];
    v24 = [v23 integerValue];
  }

  else
  {
    v24 = 1;
  }

  [v8 handleChangedToFlashMode:v20 allowFlashOrTorchUnavailableAlert:0];
  [v8 setLivePhotoMode:v24];
  v25 = [v7 objectForKeyedSubscript:@"rawMode"];

  if (v25)
  {
    v26 = [v7 objectForKeyedSubscript:@"rawMode"];
    v25 = [v26 integerValue];
  }

  if ([v10 rangeOfString:@"RAW"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = +[CAMUserPreferences preferences];
    if ([v27 rawControlEnabled])
    {
      v28 = [v57 isLinearDNGSupported];

      if (v28)
      {
        v25 = 1;
        goto LABEL_24;
      }
    }

    else
    {
    }

    [(CAMApplication *)v54 failedTest:v10 withFailure:@"RAW Control must be enabled for RAW PPT tests!"];
  }

LABEL_24:
  v29 = [v7 objectForKeyedSubscript:@"photoResolution"];

  if (v29)
  {
    v30 = [v7 objectForKeyedSubscript:@"photoResolution"];
    v29 = [v30 integerValue];
  }

  [v8 setPhotoResolution:v29];
  [v8 setRawMode:v25];
  [v8 changeToMode:v14 device:v19 animated:1];
  sleep(2u);
  v31 = [v10 rangeOfString:@"Warm"] != 0x7FFFFFFFFFFFFFFFLL;
  v32 = [v7 objectForKeyedSubscript:@"expectedNumberOfCapturesPerRequest"];
  v33 = [v32 unsignedIntegerValue];

  v34 = [v7 valueForKey:@"pictureCount"];
  v35 = [v34 integerValue];

  v36 = [v7 objectForKeyedSubscript:@"delayBetweenCaptures"];
  [v36 doubleValue];
  v38 = v37;

  v39 = [v7 objectForKeyedSubscript:@"initialDelayInSeconds"];
  [v39 doubleValue];

  LOBYTE(v53) = v55;
  v40 = [[CAMViewfinderStillImageCaptureTestHarness alloc] initWithTestName:v10 maxStillImageCount:v35 expectedNumberOfCapturesPerRequest:v33 viewfinderViewController:v8 performingWarmupCapture:v31 forCaptureMode:v14 delayBetweenCaptures:v38 capturesOnTouchDown:v53];
  v41 = [CAMViewfinderActionIntervalometer alloc];
  v42 = [v7 valueForKey:@"repeatDelayInSeconds"];
  [v42 doubleValue];
  v43 = [CAMViewfinderActionIntervalometer initWithDelegate:v41 interval:"initWithDelegate:interval:delay:maximumCount:viewfinderViewController:" delay:v40 maximumCount:v35 viewfinderViewController:v8];

  [(CAMViewfinderStillImageCaptureTestHarness *)v40 setTestIntervalometer:v43];
  [v8 setStillImageCaptureTestDelegate:v40];
  [v6 queueHarness:v40];
  [v6 setSettlingDelaySeconds:5];
  v44 = [v7 objectForKeyedSubscript:@"presentCameraRoll"];
  LODWORD(v41) = [v44 BOOLValue];

  v45 = [v7 objectForKeyedSubscript:@"presentCameraRollDelay"];
  [v45 doubleValue];
  v47 = v46;

  if (v41)
  {
    v48 = [CAMCameraRollTestHarness alloc];
    v49 = 0.5;
    if (v47 > 0.0)
    {
      v49 = v47;
    }

    v50 = [(CAMCameraRollTestHarness *)v48 initWithTestName:v10 viewfinderViewController:v8 testingAnimation:1 testingWarmPresentation:0 awaitPreload:0 settlingDelay:v49];
    [v6 queueHarness:v50];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __70__CAMApplication_Testing__runNewPPTUICaptureTestWithTestPlan_options___block_invoke;
    v58[3] = &unk_1E76F7960;
    v59 = v6;
    v60 = v50;
    v51 = v50;
    [(CAMViewfinderStillImageCaptureTestHarness *)v40 setDidUpdateFinalThumbnailHandler:v58];
  }

  [v6 run];

  return 1;
}

- (BOOL)runTakePictureTestWithTestPlan:(id)a3 options:(id)a4 prototype:(id)a5 forCaptureMode:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(CAMApplication *)self delegate];
  v14 = [v12 testName];
  v15 = [v14 rangeOfString:@"Warm"] != 0x7FFFFFFFFFFFFFFFLL;
  v16 = [v11 objectForKeyedSubscript:@"expectedNumberOfCapturesPerRequest"];
  v17 = [v16 unsignedIntegerValue];

  v18 = [v11 objectForKeyedSubscript:@"delayBetweenCaptures"];
  [v18 doubleValue];
  v20 = v19;

  v21 = [v11 objectForKeyedSubscript:@"initialDelayInSeconds"];
  [v21 doubleValue];
  v23 = v22;

  v24 = [v13 captureController];
  v25 = [[CAMIntervalometerTestHarness alloc] initWithTestName:v14 expectedNumberOfCapturesPerRequest:v17 captureController:v24 performingWarmupCapture:v15 forCaptureMode:a6 delayBetweenCaptures:v20];
  [v10 setDelegate:v25];
  v26 = [CAMCaptureRequestIntervalometer alloc];
  v27 = [v11 valueForKey:@"repeatDelayInSeconds"];
  [v27 doubleValue];
  v29 = v28;
  v30 = [v11 valueForKey:@"pictureCount"];

  v31 = -[CAMCaptureRequestIntervalometer initWithDelegate:interval:delay:maximumCount:](v26, "initWithDelegate:interval:delay:maximumCount:", v25, [v30 integerValue], v29, v23);
  [(CAMCaptureRequestIntervalometer *)v31 setPrototypeRequest:v10];

  [(CAMIntervalometerTestHarness *)v25 setTestIntervalometer:v31];
  [v12 queueHarness:v25];
  [v12 setSettlingDelaySeconds:5];
  [v12 run];

  return 1;
}

- (BOOL)runTakePictureFrontCameraWithTestPlan:(id)a3 options:(id)a4 prototype:(id)a5 forCaptureMode:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(CAMApplication *)self delegate];
  v14 = [v13 viewfinderViewController];
  v15 = [CAMDeviceAndModeTestHarness alloc];
  v16 = [v12 testName];
  v17 = [(CAMDeviceAndModeTestHarness *)v15 initWithTestName:v16 devicePosition:1 captureMode:0 viewFinderViewControl:v14];

  [(CAMPerformanceTestHarness *)v17 setIsSetupHarness:1];
  [v12 queueHarness:v17];
  v18 = [CAMDelayTestHarness alloc];
  v19 = [v12 testName];
  v20 = [(CAMDelayTestHarness *)v18 initWithTestName:v19 secondsDelay:2];

  [(CAMPerformanceTestHarness *)v20 setIsSetupHarness:1];
  [v12 queueHarness:v20];
  LOBYTE(a6) = [(CAMApplication *)self runTakePictureTestWithTestPlan:v12 options:v11 prototype:v10 forCaptureMode:a6];

  return a6;
}

- (BOOL)runTakePicturePortraitWithTestPlan:(id)a3 options:(id)a4 prototype:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CAMApplication *)self delegate];
  v12 = [v11 viewfinderViewController];
  v13 = [CAMDeviceAndModeTestHarness alloc];
  v14 = [v10 testName];
  v15 = [(CAMDeviceAndModeTestHarness *)v13 initWithTestName:v14 devicePosition:0 captureMode:6 viewFinderViewControl:v12];

  [v10 queueHarness:v15];
  v16 = [CAMDelayTestHarness alloc];
  v17 = [v10 testName];
  v18 = [(CAMDelayTestHarness *)v16 initWithTestName:v17 secondsDelay:2];

  [(CAMPerformanceTestHarness *)v18 setIsSetupHarness:1];
  [v10 queueHarness:v18];
  LOBYTE(self) = [(CAMApplication *)self runTakePictureTestWithTestPlan:v10 options:v9 prototype:v8 forCaptureMode:6];

  return self;
}

- (BOOL)runTakePictureFrontPortraitWithTestPlan:(id)a3 options:(id)a4 prototype:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CAMApplication *)self delegate];
  v12 = [v11 viewfinderViewController];
  v13 = [CAMDeviceAndModeTestHarness alloc];
  v14 = [v10 testName];
  v15 = [(CAMDeviceAndModeTestHarness *)v13 initWithTestName:v14 devicePosition:1 captureMode:6 viewFinderViewControl:v12];

  [v10 queueHarness:v15];
  v16 = [CAMDelayTestHarness alloc];
  v17 = [v10 testName];
  v18 = [(CAMDelayTestHarness *)v16 initWithTestName:v17 secondsDelay:2];

  [(CAMPerformanceTestHarness *)v18 setIsSetupHarness:1];
  [v10 queueHarness:v18];
  LOBYTE(self) = [(CAMApplication *)self runTakePictureTestWithTestPlan:v10 options:v9 prototype:v8 forCaptureMode:6];

  return self;
}

- (BOOL)runSwitchToPortraitFrontWithTestPlan:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAMApplication *)self delegate];
  v9 = [v6 testName];
  v10 = [v8 viewfinderViewController];
  v11 = [v9 rangeOfString:@"Animation"];
  v12 = +[CAMCaptureCapabilities capabilities];
  v13 = [v7 objectForKeyedSubscript:@"testExtensionSeconds"];

  [v13 doubleValue];
  v15 = v14;

  if ([v12 isPortraitModeSupportedForDevicePosition:1] && objc_msgSend(v12, "isPortraitModeSupportedForDevicePosition:", 0))
  {
    v16 = [[CAMDeviceSwitchTestHarness alloc] initWithTestName:v9 viewfinderViewController:v10 devicePosition:1 testingAnimation:v11 != 0x7FFFFFFFFFFFFFFFLL startingCaptureMode:6 testExtensionSeconds:v15];
  }

  else
  {
    v16 = [[CAMModeSwitchTestHarness alloc] initWithTestName:v9 viewfinderViewController:v10 mode:6 testingAnimation:v11 != 0x7FFFFFFFFFFFFFFFLL testExtensionSeconds:v15];
  }

  v17 = v16;
  [v6 queueHarness:v16];
  [v6 run];

  return 1;
}

- (BOOL)runSwitchCamerasTestWithTestPlan:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 testName];
  v9 = [(CAMApplication *)self delegate];
  v10 = [v9 viewfinderViewController];
  v11 = [v8 rangeOfString:@"Front"] != 0x7FFFFFFFFFFFFFFFLL;
  v12 = [v8 rangeOfString:@"Animation"] != 0x7FFFFFFFFFFFFFFFLL;
  v13 = [v6 objectForKeyedSubscript:@"testExtensionSeconds"];

  [v13 doubleValue];
  v15 = v14;

  v16 = [[CAMDeviceSwitchTestHarness alloc] initWithTestName:v8 viewfinderViewController:v10 devicePosition:v11 testingAnimation:v12 startingCaptureMode:0 testExtensionSeconds:v15];
  [v7 queueHarness:v16];
  [v7 run];

  return 1;
}

- (BOOL)runSwitchModesWithTestPlan:(id)a3 options:(id)a4 userPreferencesOverrides:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 testName];
  if ([v11 rangeOfString:@"SwitchToPano"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 3;
    goto LABEL_18;
  }

  if ([v11 rangeOfString:@"SwitchToStill"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0;
    goto LABEL_18;
  }

  if ([v11 rangeOfString:@"SwitchToVideo"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 1;
    goto LABEL_18;
  }

  if ([v11 rangeOfString:@"SwitchToTimeLapse"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 5;
    goto LABEL_18;
  }

  if ([v11 rangeOfString:@"SwitchToSquare"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 4;
    goto LABEL_18;
  }

  if ([v11 rangeOfString:@"SwitchToSloMo"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 2;
    goto LABEL_18;
  }

  if ([v11 rangeOfString:@"SwitchToPortrait"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 6;
    goto LABEL_18;
  }

  if ([v11 rangeOfString:@"SwitchToMode"] == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_99:
    v40 = 0;
    goto LABEL_97;
  }

  v12 = [v9 objectForKeyedSubscript:@"captureMode"];
  if (!v12)
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing defaults write for %@", @"PPTMode"];
    [(CAMApplication *)self failedTest:v11 withFailure:v42];

    goto LABEL_99;
  }

  v13 = v12;
  v14 = [v12 integerValue];

LABEL_18:
  v15 = [(CAMApplication *)self delegate];
  v16 = [v15 viewfinderViewController];
  v17 = [v11 rangeOfString:@"Animation"];
  if (v14 == 7 || v14 == 1)
  {
    v44 = v17;
    v18 = [v10 videoConfiguration];

    v43 = self;
    if (v14 == 1 && v18)
    {
      v19 = [v10 videoConfiguration];
    }

    else
    {
      v20 = [v10 cinematicConfiguration];

      v21 = 0;
      if (v14 != 7 || !v20)
      {
LABEL_58:
        v45 = v9;
        v25 = [v9 objectForKeyedSubscript:@"devicePosition"];
        v26 = [v25 integerValue];

        v27 = +[CAMCaptureCapabilities capabilities];
        v28 = 0;
        v29 = v26 == 1;
        v30 = v26 == 1;
        v31 = @"BackAuto";
        if (v29)
        {
          v31 = @"FrontAuto";
        }

        if (v21 > 9999)
        {
          if (v21 > 10002)
          {
            switch(v21)
            {
              case 10003:
                v28 = @"ImagePickerVGA";
                break;
              case 10004:
                v28 = @"ImagePickeriFrame720p";
                break;
              case 10005:
                v28 = @"ImagePickeriFrame540p";
                break;
            }
          }

          else if (v21 == 10000)
          {
            v28 = @"ImagePickerHigh";
          }

          else if (v21 == 10001)
          {
            v28 = @"ImagePickerMedium";
          }

          else
          {
            v28 = @"ImagePickerLow";
          }
        }

        else
        {
          switch(v21)
          {
            case 0:
              v28 = @"Auto";
              break;
            case 1:
              v28 = @"1080p60";
              break;
            case 2:
              v28 = @"720p120";
              break;
            case 3:
              v28 = @"720p240";
              break;
            case 4:
              v28 = @"1080p120";
              break;
            case 5:
              v28 = @"4k30";
              break;
            case 6:
              v28 = @"720p30";
              break;
            case 7:
              v28 = @"1080p30";
              break;
            case 8:
              v28 = @"1080p240";
              break;
            case 9:
              v28 = @"4k60";
              break;
            case 10:
              v28 = @"4k24";
              break;
            case 11:
              v28 = @"1080p25";
              break;
            case 12:
              v28 = @"4k25";
              break;
            case 13:
              v28 = @"4k120";
              break;
            case 14:
              v28 = @"4k100";
              break;
            default:
              break;
          }
        }

        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mode: %@ device: %@ format: %@", off_1E76F7B48[v14 - 1], v31, v28];
        if (([v27 isSupportedVideoConfiguration:v21 forMode:v14 device:v30] & 1) == 0)
        {
          v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not supported", v32];
          [(CAMApplication *)v43 failedTest:v11 withFailure:v33];
        }

        v34 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v47 = v11;
          v48 = 2114;
          v49 = v32;
          _os_log_impl(&dword_1A3640000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ configured with %{public}@", buf, 0x16u);
        }

        if ([v10 hasOverrides])
        {
          [v16 readUserPreferencesAndHandleChangesWithOverrides:v10];
        }

        v17 = v44;
        v9 = v45;
        goto LABEL_96;
      }

      v19 = [v10 cinematicConfiguration];
    }

    v22 = v19;
    v21 = [v19 integerValue];

    v23 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 0;
      if (v21 > 9999)
      {
        if (v21 > 10002)
        {
          switch(v21)
          {
            case 10003:
              v24 = @"ImagePickerVGA";
              break;
            case 10004:
              v24 = @"ImagePickeriFrame720p";
              break;
            case 10005:
              v24 = @"ImagePickeriFrame540p";
              break;
          }
        }

        else if (v21 == 10000)
        {
          v24 = @"ImagePickerHigh";
        }

        else if (v21 == 10001)
        {
          v24 = @"ImagePickerMedium";
        }

        else
        {
          v24 = @"ImagePickerLow";
        }
      }

      else
      {
        switch(v21)
        {
          case 0:
            v24 = @"Auto";
            break;
          case 1:
            v24 = @"1080p60";
            break;
          case 2:
            v24 = @"720p120";
            break;
          case 3:
            v24 = @"720p240";
            break;
          case 4:
            v24 = @"1080p120";
            break;
          case 5:
            v24 = @"4k30";
            break;
          case 6:
            v24 = @"720p30";
            break;
          case 7:
            v24 = @"1080p30";
            break;
          case 8:
            v24 = @"1080p240";
            break;
          case 9:
            v24 = @"4k60";
            break;
          case 10:
            v24 = @"4k24";
            break;
          case 11:
            v24 = @"1080p25";
            break;
          case 12:
            v24 = @"4k25";
            break;
          case 13:
            v24 = @"4k120";
            break;
          case 14:
            v24 = @"4k100";
            break;
          default:
            break;
        }
      }

      *buf = 138543618;
      v47 = v11;
      v48 = 2114;
      v49 = v24;
      _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ will override Video format to %{public}@", buf, 0x16u);
    }

    goto LABEL_58;
  }

LABEL_96:
  v35 = v17 != 0x7FFFFFFFFFFFFFFFLL;
  v36 = [v9 objectForKeyedSubscript:@"testExtensionSeconds"];
  [v36 doubleValue];
  v38 = v37;

  v39 = [[CAMModeSwitchTestHarness alloc] initWithTestName:v11 viewfinderViewController:v16 mode:v14 testingAnimation:v35 testExtensionSeconds:v38];
  [v8 queueHarness:v39];
  [v8 run];

  v40 = 1;
LABEL_97:

  return v40;
}

- (BOOL)runPresentCameraRollWithTestPlan:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 testName];
  v9 = [v6 objectForKeyedSubscript:@"presentCameraRollDelay"];

  [v9 doubleValue];
  v11 = v10;

  v12 = [v8 rangeOfString:@"AfterDelay"];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v8 rangeOfString:@"SecondTime"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
      v14 = [v8 rangeOfString:@"Animation"] != 0x7FFFFFFFFFFFFFFFLL;
      v11 = 0.0;
    }

    else
    {
      v14 = 0;
      v11 = 3.0;
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    if (v11 <= 0.0)
    {
      v11 = 6.0;
    }
  }

  v15 = [(CAMApplication *)self delegate];
  v16 = [v15 viewfinderViewController];
  v17 = [[CAMCameraRollTestHarness alloc] initWithTestName:v8 viewfinderViewController:v16 testingAnimation:v14 testingWarmPresentation:v13 awaitPreload:v12 != 0x7FFFFFFFFFFFFFFFLL settlingDelay:v11];
  [v7 queueHarness:v17];
  [v7 run];

  return 1;
}

- (BOOL)runLibrarySelectionWithTestPlan:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = [(CAMApplication *)self delegate];
  v7 = [v6 viewfinderViewController];

  v8 = [v7 _librarySelectionController];
  v9 = [CAMLibrarySelectionTestHarness alloc];
  v10 = [v5 testName];
  v11 = [(CAMLibrarySelectionTestHarness *)v9 initWithTestName:v10 librarySelectionController:v8];

  [v5 queueHarness:v11];
  [v5 run];

  return 1;
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v90 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E695DF90];
  v8 = a4;
  v9 = [[v7 alloc] initWithDictionary:v8];

  v10 = objc_alloc_init(CAMUserPreferenceOverrides);
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"PPTDelayBetweenCapturesMilliseconds", @"com.apple.camera", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:AppIntegerValue / 1000.0];
    [v9 setObject:v12 forKeyedSubscript:@"delayBetweenCaptures"];
  }

  v84 = 0;
  v13 = CFPreferencesGetAppIntegerValue(@"PPTInitialDelayMilliseconds", @"com.apple.camera", &v84);
  if (v84)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v13 / 1000.0];
    [v9 setObject:v14 forKeyedSubscript:@"initialDelayInSeconds"];
  }

  v83 = 0;
  v15 = CFPreferencesGetAppIntegerValue(@"PPTPhotoCount", @"com.apple.camera", &v83);
  if (v83)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithLong:v15];
    [v9 setObject:v16 forKeyedSubscript:@"pictureCount"];
  }

  v82 = 0;
  v17 = CFPreferencesGetAppIntegerValue(@"PPTPresentCameraRoll", @"com.apple.camera", &v82);
  if (v82)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithLong:v17];
    [v9 setObject:v18 forKeyedSubscript:@"presentCameraRoll"];
  }

  v81 = 0;
  v19 = CFPreferencesGetAppIntegerValue(@"PPTCaptureStillsDuringVideo", @"com.apple.camera", &v81);
  if (v81)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithLong:v19];
    [v9 setObject:v20 forKeyedSubscript:@"captureStillsDuringVideo"];
  }

  v80 = 0;
  v21 = CFPreferencesGetAppIntegerValue(@"PPTVideoRecordDurationInSeconds", @"com.apple.camera", &v80);
  if (v80)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithLong:v21];
    [v9 setObject:v22 forKeyedSubscript:@"videoDurationInSeconds"];
  }

  v79 = 0;
  v23 = CFPreferencesGetAppIntegerValue(@"PPTMode", @"com.apple.camera", &v79);
  if (v79)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithLong:v23];
    [v9 setObject:v24 forKeyedSubscript:@"captureMode"];
  }

  v78 = 0;
  v25 = CFPreferencesGetAppIntegerValue(@"PPTDevicePosition", @"com.apple.camera", &v78);
  if (v78)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithLong:v25];
    [v9 setObject:v26 forKeyedSubscript:@"devicePosition"];
  }

  v77 = 0;
  v27 = CFPreferencesGetAppIntegerValue(@"PPTVideoConfiguration", @"com.apple.camera", &v77);
  if (v77)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithLong:v27];
    [(CAMUserPreferenceOverrides *)v10 setVideoConfiguration:v28];
  }

  v76 = 0;
  v29 = CFPreferencesGetAppIntegerValue(@"PPTSloMoConfiguration", @"com.apple.camera", &v76);
  if (v76)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithLong:v29];
    [(CAMUserPreferenceOverrides *)v10 setSlomoConfiguration:v30];
  }

  v75 = 0;
  v31 = CFPreferencesGetAppIntegerValue(@"PPTCinematicConfiguration", @"com.apple.camera", &v75);
  if (v75)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithLong:v31];
    [(CAMUserPreferenceOverrides *)v10 setCinematicConfiguration:v32];
  }

  v74 = 0;
  [CAMPreferencesUtilities doubleForKey:@"PPTTestExtensionSeconds" applicationID:@"com.apple.camera" keyIsValidAndExists:&v74];
  if (v74 == 1)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v9 setObject:v33 forKeyedSubscript:@"testExtensionSeconds"];
  }

  v73 = 0;
  v34 = CFPreferencesGetAppIntegerValue(@"PPTFlashMode", @"com.apple.camera", &v73);
  if (v73)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithLong:v34];
    [v9 setObject:v35 forKeyedSubscript:@"flashMode"];
  }

  v72 = 0;
  v36 = CFPreferencesGetAppIntegerValue(@"PPTLivePhotoMode", @"com.apple.camera", &v72);
  if (v72)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithLong:v36];
    [v9 setObject:v37 forKeyedSubscript:@"livePhotoMode"];
  }

  v71 = 0;
  v38 = CFPreferencesGetAppIntegerValue(@"PPTPhotoResolution", @"com.apple.camera", &v71);
  if (v71)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithLong:v38];
    [v9 setObject:v39 forKeyedSubscript:@"photoResolution"];
  }

  v70 = 0;
  v40 = CFPreferencesGetAppIntegerValue(@"PPTRAWMode", @"com.apple.camera", &v70);
  if (v70)
  {
    v41 = [MEMORY[0x1E696AD98] numberWithLong:v40];
    [v9 setObject:v41 forKeyedSubscript:@"rawMode"];
  }

  v69 = 0;
  v42 = CFPreferencesGetAppIntegerValue(@"PPTPresentCameraRollDelayMilliseconds", @"com.apple.camera", &v69);
  if (v69)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithDouble:v42 / 1000.0];
    [v9 setObject:v43 forKeyedSubscript:@"presentCameraRollDelay"];
  }

  v44 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v87 = v6;
    v88 = 2114;
    v89 = v9;
    _os_log_impl(&dword_1A3640000, v44, OS_LOG_TYPE_DEFAULT, "Running PPT test %{public}@ with options %{public}@", buf, 0x16u);
  }

  v45 = [[CAMPerformanceTestPlan alloc] initWithTestName:v6];
  [(CAMApplication *)self setCurrentTestPlan:v45];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __43__CAMApplication_Testing__runTest_options___block_invoke;
  v68[3] = &unk_1E76F77B0;
  v68[4] = self;
  [(CAMPerformanceTestPlan *)v45 setCompletionHandler:v68];
  if ([v6 rangeOfString:@"UI"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v6 rangeOfString:@"Video"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v46 = [(CAMApplication *)self runNewPPTUICaptureTestWithTestPlan:v45 options:v9];
    }

    else
    {
      v46 = [(CAMApplication *)self runTakeVideoTestWithTestPlan:v45 options:v9 userPreferencesOverrides:v10];
    }

LABEL_50:
    v49 = v46;
    goto LABEL_87;
  }

  [v9 setValue:&unk_1F16C7130 forKey:@"expectedNumberOfCapturesPerRequest"];
  if ([v6 rangeOfString:@"TakePicture"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v6 rangeOfString:@"PresentCameraRoll"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v6 rangeOfString:@"SwitchTo"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v6 rangeOfString:@"LibrarySelection"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v67.receiver = self;
          v67.super_class = CAMApplication;
          v46 = [(CAMApplication *)&v67 runTest:v6 options:v9];
        }

        else
        {
          v46 = [(CAMApplication *)self runLibrarySelectionWithTestPlan:v45 options:v9];
        }
      }

      else if ([v6 rangeOfString:@"FrontPortrait"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v6 rangeOfString:@"FrontCamera"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "rangeOfString:", @"RearCamera") == 0x7FFFFFFFFFFFFFFFLL)
        {
          v46 = [(CAMApplication *)self runSwitchModesWithTestPlan:v45 options:v9 userPreferencesOverrides:v10];
        }

        else
        {
          v46 = [(CAMApplication *)self runSwitchCamerasTestWithTestPlan:v45 options:v9];
        }
      }

      else
      {
        v46 = [(CAMApplication *)self runSwitchToPortraitFrontWithTestPlan:v45 options:v9];
      }
    }

    else
    {
      v46 = [(CAMApplication *)self runPresentCameraRollWithTestPlan:v45 options:v9];
    }

    goto LABEL_50;
  }

  v47 = objc_alloc_init(CAMMutableStillImageCaptureRequest);
  v48 = +[CAMUserPreferences preferences];
  if ([v6 rangeOfString:@"Default"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v6 rangeOfString:@"HDR"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(CAMMutableStillImageCaptureRequest *)v47 setHdrMode:0];
    }

    else
    {
      [(CAMMutableStillImageCaptureRequest *)v47 setHdrMode:1];
      if ([v48 shouldCaptureHDREV0])
      {
        v50 = &unk_1F16C7118;
      }

      else
      {
        v50 = &unk_1F16C7130;
      }

      [v9 setValue:v50 forKey:@"expectedNumberOfCapturesPerRequest"];
    }
  }

  else
  {
    [(CAMMutableStillImageCaptureRequest *)v47 setHdrMode:0];
    if ([v48 shouldCaptureHDREV0])
    {
      [(CAMApplication *)self failedTest:v6 withFailure:@"Keep Normal Photo should be off for default photo capture tests"];
    }

    -[CAMMutableStillImageCaptureRequest setWantsSemanticSceneFilter:](v47, "setWantsSemanticSceneFilter:", [v48 semanticDevelopmentEnabled]);
  }

  v51 = [v6 rangeOfString:@"Iris"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v6, "rangeOfString:", @"Default") != 0x7FFFFFFFFFFFFFFFLL;
  [(CAMMutableStillImageCaptureRequest *)v47 setIrisMode:v51];
  if ([v6 rangeOfString:@"Stabilization"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "rangeOfString:", @"Default") == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(CAMMutableStillImageCaptureRequest *)v47 setPhotoQualityPrioritization:0];
  }

  else
  {
    v66 = v48;
    v52 = v10;
    v53 = [(CAMApplication *)self delegate];
    v54 = [v53 viewfinderViewController];
    v55 = [v54 currentCaptureMode];
    v56 = +[CAMCaptureCapabilities capabilities];
    v57 = [v54 currentCaptureDevice] - 1;
    if (v57 > 0xA)
    {
      v58 = 0;
    }

    else
    {
      v58 = qword_1A3A64B90[v57];
    }

    -[CAMMutableStillImageCaptureRequest setPhotoQualityPrioritization:](v47, "setPhotoQualityPrioritization:", [v56 maxSupportedPhotoQualityPrioritizationForMode:v55 devicePosition:v58]);

    v10 = v52;
    v48 = v66;
  }

  if ([v6 rangeOfString:@"Portrait"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(CAMMutableStillImageCaptureRequest *)v47 setWantsDepthData:0];
  }

  else
  {
    [(CAMMutableStillImageCaptureRequest *)v47 setWantsDepthData:1];
    [(CAMMutableStillImageCaptureRequest *)v47 setHdrMode:1];
    v59 = [v48 ppt_readPortraitLightingType];
    [(CAMMutableStillImageCaptureRequest *)v47 setLightingEffectType:v59];
    v60 = [CAMEffectFilterManager filtersForFilterType:16 lightingType:v59 applyDepthEffect:1];
    [(CAMMutableStillImageCaptureRequest *)v47 setAdjustmentFilters:v60];
    [v9 setValue:&unk_1F16C7118 forKey:@"expectedNumberOfCapturesPerRequest"];
  }

  [(CAMMutableStillImageCaptureRequest *)v47 setFlashMode:0];
  [(CAMMutableStillImageCaptureRequest *)v47 setWantsAudioForCapture:1];
  v61 = [v48 photoEncodingBehavior];
  v62 = [v48 captureConfiguration];
  v63 = [v48 videoEncodingBehaviorForConfiguration:0 mode:0 desiredProResVideoMode:objc_msgSend(v62 outputToExternalStorage:"proResVideoMode") frontRearSimultaneousVideoEnabled:{0, 0}];

  [(CAMMutableStillImageCaptureRequest *)v47 setPhotoEncodingBehavior:v61];
  [(CAMMutableStillImageCaptureRequest *)v47 setVideoEncodingBehavior:v63];
  if ([v6 rangeOfString:@"Front"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v6 rangeOfString:@"Portrait"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v6 rangeOfString:@"Flash"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(CAMMutableStillImageCaptureRequest *)v47 setFlashMode:1];
      }

      v64 = [(CAMApplication *)self runTakePictureTestWithTestPlan:v45 options:v9 prototype:v47 forCaptureMode:0];
    }

    else
    {
      v64 = [(CAMApplication *)self runTakePicturePortraitWithTestPlan:v45 options:v9 prototype:v47];
    }
  }

  else if ([v6 rangeOfString:@"FrontPortrait"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v64 = [(CAMApplication *)self runTakePictureFrontCameraWithTestPlan:v45 options:v9 prototype:v47 forCaptureMode:0];
  }

  else
  {
    v64 = [(CAMApplication *)self runTakePictureFrontPortraitWithTestPlan:v45 options:v9 prototype:v47];
  }

  v49 = v64;

LABEL_87:
  return v49;
}

- (void)prepareForDefaultImageSnapshotForScreen:(id)a3
{
  v4 = a3;
  v5 = [(CAMApplication *)self delegate];
  [v5 prepareForDefaultImageSnapshotForScreen:v4];
}

+ (int64_t)appOrPlugInInterfaceOrientation
{
  v2 = +[CAMCaptureCapabilities capabilities];
  v3 = MEMORY[0x1E69DDA98];
  v4 = [*MEMORY[0x1E69DDA98] statusBarOrientation];
  v5 = [v2 hostProcess];
  if (v5 > 5)
  {
    v4 = 0;
  }

  else if (((1 << v5) & 0x1B) == 0)
  {
    if (v5 != 2 || ([MEMORY[0x1E69DC938] currentDevice], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, v7 == 1))
    {
      v4 = [*v3 activeInterfaceOrientation];
    }
  }

  return v4;
}

+ (BOOL)isAppOrPlugInSuspended
{
  v2 = [*MEMORY[0x1E69DDA98] isSuspended];
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 hostProcess];

  if (v4 == 4 || v4 == 2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

+ (int64_t)appOrPlugInState
{
  v2 = [*MEMORY[0x1E69DDA98] applicationState];
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 hostProcess];

  if (v4 == 4 || v4 == 2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

@end