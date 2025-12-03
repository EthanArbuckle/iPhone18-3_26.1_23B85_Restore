@interface CAMApplication
+ (BOOL)isAppOrPlugInSuspended;
+ (int64_t)appOrPlugInInterfaceOrientation;
+ (int64_t)appOrPlugInState;
- (BOOL)runLibrarySelectionWithTestPlan:(id)plan options:(id)options;
- (BOOL)runNewPPTUICaptureTestWithTestPlan:(id)plan options:(id)options;
- (BOOL)runPresentCameraRollWithTestPlan:(id)plan options:(id)options;
- (BOOL)runSwitchCamerasTestWithTestPlan:(id)plan options:(id)options;
- (BOOL)runSwitchModesWithTestPlan:(id)plan options:(id)options userPreferencesOverrides:(id)overrides;
- (BOOL)runSwitchToPortraitFrontWithTestPlan:(id)plan options:(id)options;
- (BOOL)runTakePictureFrontCameraWithTestPlan:(id)plan options:(id)options prototype:(id)prototype forCaptureMode:(int64_t)mode;
- (BOOL)runTakePictureFrontPortraitWithTestPlan:(id)plan options:(id)options prototype:(id)prototype;
- (BOOL)runTakePicturePortraitWithTestPlan:(id)plan options:(id)options prototype:(id)prototype;
- (BOOL)runTakePictureTestWithTestPlan:(id)plan options:(id)options prototype:(id)prototype forCaptureMode:(int64_t)mode;
- (BOOL)runTakeVideoTestWithTestPlan:(id)plan options:(id)options userPreferencesOverrides:(id)overrides;
- (BOOL)runTest:(id)test options:(id)options;
- (void)_configureExtendedLaunchTestIfNeeded;
- (void)_registerPreviewStartBlock:(id)block;
- (void)didChangeToMode:(int64_t)mode device:(int64_t)device;
- (void)didCloseViewfinderForReason:(int64_t)reason;
- (void)didOpenViewfinderForReason:(int64_t)reason;
- (void)prepareForDefaultImageSnapshotForScreen:(id)screen;
- (void)willCloseViewfinderForReason:(int64_t)reason;
- (void)willOpenViewfinderForReason:(int64_t)reason;
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

- (void)_registerPreviewStartBlock:(id)block
{
  blockCopy = block;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3042000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v6 = *MEMORY[0x1E6986B70];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__CAMApplication_Testing___registerPreviewStartBlock___block_invoke;
  v9[3] = &unk_1E76F7AB8;
  v7 = blockCopy;
  v10 = v7;
  v11 = &v12;
  v8 = [defaultCenter addObserverForName:v6 object:0 queue:mainQueue usingBlock:v9];
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

- (void)willCloseViewfinderForReason:(int64_t)reason
{
  v10[1] = *MEMORY[0x1E69E9840];
  currentTestPlan = [(CAMApplication *)self currentTestPlan];
  [currentTestPlan startSubtestWithName:@"closingViewfinder" withMetrics:0];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = @"reason";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [defaultCenter postNotificationName:@"CAMPerformanceWillCloseViewfinderNotification" object:self userInfo:v8];
}

- (void)didCloseViewfinderForReason:(int64_t)reason
{
  v10[1] = *MEMORY[0x1E69E9840];
  currentTestPlan = [(CAMApplication *)self currentTestPlan];
  [currentTestPlan startSubtestWithName:@"closingViewfinder" withMetrics:0];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = @"reason";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [defaultCenter postNotificationName:@"CAMPerformanceDidCloseViewfinderNotification" object:self userInfo:v8];
}

- (void)willOpenViewfinderForReason:(int64_t)reason
{
  v10[1] = *MEMORY[0x1E69E9840];
  currentTestPlan = [(CAMApplication *)self currentTestPlan];
  [currentTestPlan startSubtestWithName:@"openingViewfinder" withMetrics:0];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = @"reason";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [defaultCenter postNotificationName:@"CAMPerformanceWillOpenViewfinderNotification" object:self userInfo:v8];
}

- (void)didOpenViewfinderForReason:(int64_t)reason
{
  v10[1] = *MEMORY[0x1E69E9840];
  currentTestPlan = [(CAMApplication *)self currentTestPlan];
  [currentTestPlan stopSubtestWithName:@"openingViewfinder"];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = @"reason";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [defaultCenter postNotificationName:@"CAMPerformanceDidOpenViewfinderNotification" object:self userInfo:v8];
}

- (void)didChangeToMode:(int64_t)mode device:(int64_t)device
{
  v12[2] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v11[0] = @"mode";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  v11[1] = @"device";
  v12[0] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:device];
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [defaultCenter postNotificationName:@"CAMPerformanceDidChangeToModeNotification" object:self userInfo:v10];
}

- (BOOL)runTakeVideoTestWithTestPlan:(id)plan options:(id)options userPreferencesOverrides:(id)overrides
{
  v91 = *MEMORY[0x1E69E9840];
  planCopy = plan;
  optionsCopy = options;
  overridesCopy = overrides;
  delegate = [(CAMApplication *)self delegate];
  viewfinderViewController = [delegate viewfinderViewController];
  v13 = [optionsCopy objectForKeyedSubscript:@"videoDurationInSeconds"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [optionsCopy objectForKeyedSubscript:@"captureMode"];
  integerValue = [v16 integerValue];

  integerValue2 = 0;
  v19 = 0;
  v79 = delegate;
  v80 = overridesCopy;
  if (integerValue <= 2)
  {
    switch(integerValue)
    {
      case 0:
LABEL_16:
        integerValue2 = 0;
        v19 = 1;
        goto LABEL_111;
      case 1:
        videoConfiguration = [overridesCopy videoConfiguration];

        if (!videoConfiguration)
        {
          goto LABEL_4;
        }

        videoConfiguration2 = [overridesCopy videoConfiguration];
        integerValue2 = [videoConfiguration2 integerValue];

        v27 = os_log_create("com.apple.camera", "Camera");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_110;
        }

        testName = [planCopy testName];
        v29 = testName;
        v38 = 0;
        if (integerValue2 > 9999)
        {
          if (integerValue2 > 10002)
          {
            switch(integerValue2)
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

          else if (integerValue2 == 10000)
          {
            v38 = @"ImagePickerHigh";
          }

          else if (integerValue2 == 10001)
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
          switch(integerValue2)
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
        v88 = testName;
        v89 = 2114;
        v90 = v38;
        v39 = "%{public}@ will override Video format to %{public}@";
        break;
      case 2:
        slomoConfiguration = [overridesCopy slomoConfiguration];

        if (!slomoConfiguration)
        {
          goto LABEL_4;
        }

        slomoConfiguration2 = [overridesCopy slomoConfiguration];
        integerValue2 = [slomoConfiguration2 integerValue];

        v27 = os_log_create("com.apple.camera", "Camera");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_110;
        }

        testName2 = [planCopy testName];
        v29 = testName2;
        v30 = 0;
        if (integerValue2 > 9999)
        {
          if (integerValue2 > 10002)
          {
            switch(integerValue2)
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

          else if (integerValue2 == 10000)
          {
            v30 = @"ImagePickerHigh";
          }

          else if (integerValue2 == 10001)
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
          switch(integerValue2)
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
        v88 = testName2;
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

  if (integerValue < 7)
  {
    testName3 = [planCopy testName];
    v21 = MEMORY[0x1E696AEC0];
    v22 = off_1E76F7AD8[integerValue - 3];
    testName4 = [planCopy testName];
    v76 = v22;
    overridesCopy = v80;
    v24 = [v21 stringWithFormat:@"%@ is not a supported mode for %@", v76, testName4];
    [(CAMApplication *)self failedTest:testName3 withFailure:v24];

LABEL_4:
    v19 = 0;
    integerValue2 = 0;
    goto LABEL_111;
  }

  if (integerValue == 7)
  {
    cinematicConfiguration = [overridesCopy cinematicConfiguration];

    if (!cinematicConfiguration)
    {
      goto LABEL_4;
    }

    cinematicConfiguration2 = [overridesCopy cinematicConfiguration];
    integerValue2 = [cinematicConfiguration2 integerValue];

    v27 = os_log_create("com.apple.camera", "Camera");
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_110;
    }

    testName5 = [planCopy testName];
    v29 = testName5;
    v34 = 0;
    if (integerValue2 > 9999)
    {
      if (integerValue2 > 10002)
      {
        switch(integerValue2)
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

      else if (integerValue2 == 10000)
      {
        v34 = @"ImagePickerHigh";
      }

      else if (integerValue2 == 10001)
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
      switch(integerValue2)
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
    v88 = testName5;
    v89 = 2114;
    v90 = v34;
    v39 = "%{public}@ will override Cinematic format to %{public}@";
    goto LABEL_109;
  }

  if (integerValue != 8)
  {
    if (integerValue != 9)
    {
      goto LABEL_111;
    }

    goto LABEL_16;
  }

  v19 = 0;
  integerValue2 = 7;
LABEL_111:
  selfCopy = self;
  v40 = [optionsCopy objectForKeyedSubscript:@"devicePosition"];
  integerValue3 = [v40 integerValue];

  v42 = integerValue3 == 1;
  v43 = +[CAMCaptureCapabilities capabilities];
  if (integerValue > 9)
  {
    v44 = 0;
  }

  else
  {
    v44 = off_1E76F7AF8[integerValue];
  }

  v45 = 0;
  v46 = @"BackAuto";
  if (integerValue3 == 1)
  {
    v46 = @"FrontAuto";
  }

  if (integerValue2 > 9999)
  {
    if (integerValue2 > 10002)
    {
      switch(integerValue2)
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

    else if (integerValue2 == 10000)
    {
      v45 = @"ImagePickerHigh";
    }

    else if (integerValue2 == 10001)
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
    switch(integerValue2)
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
    if ([v43 isSupportedVideoConfiguration:integerValue2 forMode:integerValue device:v42])
    {
      goto LABEL_152;
    }

    v48 = @"%@ is not supported";
    goto LABEL_151;
  }

  if (([v43 isCTMVideoCaptureSupportedForMode:integerValue] & 1) == 0 && (objc_msgSend(v43, "isTrueVideoSupportedForMode:", integerValue) & 1) == 0)
  {
    v48 = @"%@ ctmVideo is not supported";
LABEL_151:
    testName6 = [planCopy testName];
    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:v48, v47];
    [(CAMApplication *)selfCopy failedTest:testName6 withFailure:v50];

    overridesCopy = v80;
  }

LABEL_152:
  v51 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    testName7 = [planCopy testName];
    *buf = 138543618;
    v88 = testName7;
    v89 = 2114;
    v90 = v47;
    _os_log_impl(&dword_1A3640000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ configured with %{public}@", buf, 0x16u);

    overridesCopy = v80;
  }

  if ([overridesCopy hasOverrides])
  {
    [viewfinderViewController readUserPreferencesAndHandleChangesWithOverrides:overridesCopy];
  }

  [viewfinderViewController changeToMode:integerValue device:v42];
  [viewfinderViewController setTorchMode:0];
  v53 = [optionsCopy objectForKeyedSubscript:@"initialDelayInSeconds"];
  [v53 doubleValue];
  v55 = v54;

  v56 = [CAMViewfinderVideoCaptureTestHarness alloc];
  testName8 = [planCopy testName];
  v58 = [(CAMViewfinderVideoCaptureTestHarness *)v56 initWithTestName:testName8 viewfinderViewController:viewfinderViewController videoDurationInSeconds:v19 initialDelayInSeconds:v15 captureCTMVideo:v55];

  [viewfinderViewController setVideoCaptureTestDelegate:v58];
  [planCopy queueHarness:v58];
  v59 = [optionsCopy objectForKeyedSubscript:@"captureStillsDuringVideo"];
  LODWORD(testName8) = [v59 BOOLValue];

  if (testName8)
  {
    v60 = [optionsCopy valueForKey:@"pictureCount"];
    integerValue4 = [v60 integerValue];

    v62 = [optionsCopy objectForKeyedSubscript:@"delayBetweenCaptures"];
    [v62 doubleValue];
    v64 = v63;

    v65 = [optionsCopy objectForKeyedSubscript:@"initialDelayInSeconds"];
    [v65 doubleValue];

    v66 = [CAMViewfinderStillImageCaptureTestHarness alloc];
    testName9 = [planCopy testName];
    LOBYTE(v77) = 0;
    v68 = [(CAMViewfinderStillImageCaptureTestHarness *)v66 initWithTestName:testName9 maxStillImageCount:integerValue4 expectedNumberOfCapturesPerRequest:1 viewfinderViewController:viewfinderViewController performingWarmupCapture:0 forCaptureMode:integerValue delayBetweenCaptures:v64 capturesOnTouchDown:v77];

    v69 = [CAMViewfinderActionIntervalometer alloc];
    v70 = [optionsCopy valueForKey:@"repeatDelayInSeconds"];
    [v70 doubleValue];
    v71 = [CAMViewfinderActionIntervalometer initWithDelegate:v69 interval:"initWithDelegate:interval:delay:maximumCount:viewfinderViewController:" delay:v68 maximumCount:integerValue4 viewfinderViewController:viewfinderViewController];

    [(CAMViewfinderStillImageCaptureTestHarness *)v68 setStillDuringVideo:1];
    [(CAMViewfinderStillImageCaptureTestHarness *)v68 setTestIntervalometer:v71];
    [viewfinderViewController setStillImageCaptureTestDelegate:v68];
    [planCopy queueHarness:v68];
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __89__CAMApplication_Testing__runTakeVideoTestWithTestPlan_options_userPreferencesOverrides___block_invoke;
    v84[3] = &unk_1E76F7960;
    v85 = planCopy;
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

  [planCopy runWithSecondsDelay:2];

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

- (BOOL)runNewPPTUICaptureTestWithTestPlan:(id)plan options:(id)options
{
  planCopy = plan;
  optionsCopy = options;
  selfCopy = self;
  delegate = [(CAMApplication *)self delegate];
  viewfinderViewController = [delegate viewfinderViewController];
  v9 = +[CAMCaptureCapabilities capabilities];
  testName = [planCopy testName];
  v57 = v9;
  captureOnTouchDown = [v9 captureOnTouchDown];
  if ([testName rangeOfString:@"Portrait"] != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_4:
    [optionsCopy setValue:&unk_1F16C7118 forKey:@"expectedNumberOfCapturesPerRequest"];
    v15 = +[CAMUserPreferences preferences];
    [viewfinderViewController setPortraitModeLightingEffectType:{objc_msgSend(v15, "ppt_readPortraitLightingType")}];

    captureOnTouchDown = 1;
    integerValue = 6;
    goto LABEL_6;
  }

  v12 = [optionsCopy objectForKeyedSubscript:@"captureMode"];

  if (v12)
  {
    v13 = [optionsCopy objectForKeyedSubscript:@"captureMode"];
    integerValue = [v13 integerValue];

    if (integerValue != 6)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  integerValue = 0;
LABEL_6:
  if ([testName rangeOfString:@"Front"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [optionsCopy objectForKeyedSubscript:@"devicePosition"];

    if (v16)
    {
      v17 = [optionsCopy objectForKeyedSubscript:@"devicePosition"];
      integerValue2 = [v17 integerValue];

      v19 = integerValue2 == 1;
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

  [viewfinderViewController setHDRMode:0];
  integerValue3 = [optionsCopy objectForKeyedSubscript:@"flashMode"];

  if (integerValue3)
  {
    v21 = [optionsCopy objectForKeyedSubscript:@"flashMode"];
    integerValue3 = [v21 integerValue];
  }

  v55 = captureOnTouchDown;
  v22 = [optionsCopy objectForKeyedSubscript:@"livePhotoMode"];

  if (v22)
  {
    v23 = [optionsCopy objectForKeyedSubscript:@"livePhotoMode"];
    integerValue4 = [v23 integerValue];
  }

  else
  {
    integerValue4 = 1;
  }

  [viewfinderViewController handleChangedToFlashMode:integerValue3 allowFlashOrTorchUnavailableAlert:0];
  [viewfinderViewController setLivePhotoMode:integerValue4];
  integerValue5 = [optionsCopy objectForKeyedSubscript:@"rawMode"];

  if (integerValue5)
  {
    v26 = [optionsCopy objectForKeyedSubscript:@"rawMode"];
    integerValue5 = [v26 integerValue];
  }

  if ([testName rangeOfString:@"RAW"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = +[CAMUserPreferences preferences];
    if ([v27 rawControlEnabled])
    {
      isLinearDNGSupported = [v57 isLinearDNGSupported];

      if (isLinearDNGSupported)
      {
        integerValue5 = 1;
        goto LABEL_24;
      }
    }

    else
    {
    }

    [(CAMApplication *)selfCopy failedTest:testName withFailure:@"RAW Control must be enabled for RAW PPT tests!"];
  }

LABEL_24:
  integerValue6 = [optionsCopy objectForKeyedSubscript:@"photoResolution"];

  if (integerValue6)
  {
    v30 = [optionsCopy objectForKeyedSubscript:@"photoResolution"];
    integerValue6 = [v30 integerValue];
  }

  [viewfinderViewController setPhotoResolution:integerValue6];
  [viewfinderViewController setRawMode:integerValue5];
  [viewfinderViewController changeToMode:integerValue device:v19 animated:1];
  sleep(2u);
  v31 = [testName rangeOfString:@"Warm"] != 0x7FFFFFFFFFFFFFFFLL;
  v32 = [optionsCopy objectForKeyedSubscript:@"expectedNumberOfCapturesPerRequest"];
  unsignedIntegerValue = [v32 unsignedIntegerValue];

  v34 = [optionsCopy valueForKey:@"pictureCount"];
  integerValue7 = [v34 integerValue];

  v36 = [optionsCopy objectForKeyedSubscript:@"delayBetweenCaptures"];
  [v36 doubleValue];
  v38 = v37;

  v39 = [optionsCopy objectForKeyedSubscript:@"initialDelayInSeconds"];
  [v39 doubleValue];

  LOBYTE(v53) = v55;
  v40 = [[CAMViewfinderStillImageCaptureTestHarness alloc] initWithTestName:testName maxStillImageCount:integerValue7 expectedNumberOfCapturesPerRequest:unsignedIntegerValue viewfinderViewController:viewfinderViewController performingWarmupCapture:v31 forCaptureMode:integerValue delayBetweenCaptures:v38 capturesOnTouchDown:v53];
  v41 = [CAMViewfinderActionIntervalometer alloc];
  v42 = [optionsCopy valueForKey:@"repeatDelayInSeconds"];
  [v42 doubleValue];
  v43 = [CAMViewfinderActionIntervalometer initWithDelegate:v41 interval:"initWithDelegate:interval:delay:maximumCount:viewfinderViewController:" delay:v40 maximumCount:integerValue7 viewfinderViewController:viewfinderViewController];

  [(CAMViewfinderStillImageCaptureTestHarness *)v40 setTestIntervalometer:v43];
  [viewfinderViewController setStillImageCaptureTestDelegate:v40];
  [planCopy queueHarness:v40];
  [planCopy setSettlingDelaySeconds:5];
  v44 = [optionsCopy objectForKeyedSubscript:@"presentCameraRoll"];
  LODWORD(v41) = [v44 BOOLValue];

  v45 = [optionsCopy objectForKeyedSubscript:@"presentCameraRollDelay"];
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

    v50 = [(CAMCameraRollTestHarness *)v48 initWithTestName:testName viewfinderViewController:viewfinderViewController testingAnimation:1 testingWarmPresentation:0 awaitPreload:0 settlingDelay:v49];
    [planCopy queueHarness:v50];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __70__CAMApplication_Testing__runNewPPTUICaptureTestWithTestPlan_options___block_invoke;
    v58[3] = &unk_1E76F7960;
    v59 = planCopy;
    v60 = v50;
    v51 = v50;
    [(CAMViewfinderStillImageCaptureTestHarness *)v40 setDidUpdateFinalThumbnailHandler:v58];
  }

  [planCopy run];

  return 1;
}

- (BOOL)runTakePictureTestWithTestPlan:(id)plan options:(id)options prototype:(id)prototype forCaptureMode:(int64_t)mode
{
  prototypeCopy = prototype;
  optionsCopy = options;
  planCopy = plan;
  delegate = [(CAMApplication *)self delegate];
  testName = [planCopy testName];
  v15 = [testName rangeOfString:@"Warm"] != 0x7FFFFFFFFFFFFFFFLL;
  v16 = [optionsCopy objectForKeyedSubscript:@"expectedNumberOfCapturesPerRequest"];
  unsignedIntegerValue = [v16 unsignedIntegerValue];

  v18 = [optionsCopy objectForKeyedSubscript:@"delayBetweenCaptures"];
  [v18 doubleValue];
  v20 = v19;

  v21 = [optionsCopy objectForKeyedSubscript:@"initialDelayInSeconds"];
  [v21 doubleValue];
  v23 = v22;

  captureController = [delegate captureController];
  v25 = [[CAMIntervalometerTestHarness alloc] initWithTestName:testName expectedNumberOfCapturesPerRequest:unsignedIntegerValue captureController:captureController performingWarmupCapture:v15 forCaptureMode:mode delayBetweenCaptures:v20];
  [prototypeCopy setDelegate:v25];
  v26 = [CAMCaptureRequestIntervalometer alloc];
  v27 = [optionsCopy valueForKey:@"repeatDelayInSeconds"];
  [v27 doubleValue];
  v29 = v28;
  v30 = [optionsCopy valueForKey:@"pictureCount"];

  v31 = -[CAMCaptureRequestIntervalometer initWithDelegate:interval:delay:maximumCount:](v26, "initWithDelegate:interval:delay:maximumCount:", v25, [v30 integerValue], v29, v23);
  [(CAMCaptureRequestIntervalometer *)v31 setPrototypeRequest:prototypeCopy];

  [(CAMIntervalometerTestHarness *)v25 setTestIntervalometer:v31];
  [planCopy queueHarness:v25];
  [planCopy setSettlingDelaySeconds:5];
  [planCopy run];

  return 1;
}

- (BOOL)runTakePictureFrontCameraWithTestPlan:(id)plan options:(id)options prototype:(id)prototype forCaptureMode:(int64_t)mode
{
  prototypeCopy = prototype;
  optionsCopy = options;
  planCopy = plan;
  delegate = [(CAMApplication *)self delegate];
  viewfinderViewController = [delegate viewfinderViewController];
  v15 = [CAMDeviceAndModeTestHarness alloc];
  testName = [planCopy testName];
  v17 = [(CAMDeviceAndModeTestHarness *)v15 initWithTestName:testName devicePosition:1 captureMode:0 viewFinderViewControl:viewfinderViewController];

  [(CAMPerformanceTestHarness *)v17 setIsSetupHarness:1];
  [planCopy queueHarness:v17];
  v18 = [CAMDelayTestHarness alloc];
  testName2 = [planCopy testName];
  v20 = [(CAMDelayTestHarness *)v18 initWithTestName:testName2 secondsDelay:2];

  [(CAMPerformanceTestHarness *)v20 setIsSetupHarness:1];
  [planCopy queueHarness:v20];
  LOBYTE(mode) = [(CAMApplication *)self runTakePictureTestWithTestPlan:planCopy options:optionsCopy prototype:prototypeCopy forCaptureMode:mode];

  return mode;
}

- (BOOL)runTakePicturePortraitWithTestPlan:(id)plan options:(id)options prototype:(id)prototype
{
  prototypeCopy = prototype;
  optionsCopy = options;
  planCopy = plan;
  delegate = [(CAMApplication *)self delegate];
  viewfinderViewController = [delegate viewfinderViewController];
  v13 = [CAMDeviceAndModeTestHarness alloc];
  testName = [planCopy testName];
  v15 = [(CAMDeviceAndModeTestHarness *)v13 initWithTestName:testName devicePosition:0 captureMode:6 viewFinderViewControl:viewfinderViewController];

  [planCopy queueHarness:v15];
  v16 = [CAMDelayTestHarness alloc];
  testName2 = [planCopy testName];
  v18 = [(CAMDelayTestHarness *)v16 initWithTestName:testName2 secondsDelay:2];

  [(CAMPerformanceTestHarness *)v18 setIsSetupHarness:1];
  [planCopy queueHarness:v18];
  LOBYTE(self) = [(CAMApplication *)self runTakePictureTestWithTestPlan:planCopy options:optionsCopy prototype:prototypeCopy forCaptureMode:6];

  return self;
}

- (BOOL)runTakePictureFrontPortraitWithTestPlan:(id)plan options:(id)options prototype:(id)prototype
{
  prototypeCopy = prototype;
  optionsCopy = options;
  planCopy = plan;
  delegate = [(CAMApplication *)self delegate];
  viewfinderViewController = [delegate viewfinderViewController];
  v13 = [CAMDeviceAndModeTestHarness alloc];
  testName = [planCopy testName];
  v15 = [(CAMDeviceAndModeTestHarness *)v13 initWithTestName:testName devicePosition:1 captureMode:6 viewFinderViewControl:viewfinderViewController];

  [planCopy queueHarness:v15];
  v16 = [CAMDelayTestHarness alloc];
  testName2 = [planCopy testName];
  v18 = [(CAMDelayTestHarness *)v16 initWithTestName:testName2 secondsDelay:2];

  [(CAMPerformanceTestHarness *)v18 setIsSetupHarness:1];
  [planCopy queueHarness:v18];
  LOBYTE(self) = [(CAMApplication *)self runTakePictureTestWithTestPlan:planCopy options:optionsCopy prototype:prototypeCopy forCaptureMode:6];

  return self;
}

- (BOOL)runSwitchToPortraitFrontWithTestPlan:(id)plan options:(id)options
{
  planCopy = plan;
  optionsCopy = options;
  delegate = [(CAMApplication *)self delegate];
  testName = [planCopy testName];
  viewfinderViewController = [delegate viewfinderViewController];
  v11 = [testName rangeOfString:@"Animation"];
  v12 = +[CAMCaptureCapabilities capabilities];
  v13 = [optionsCopy objectForKeyedSubscript:@"testExtensionSeconds"];

  [v13 doubleValue];
  v15 = v14;

  if ([v12 isPortraitModeSupportedForDevicePosition:1] && objc_msgSend(v12, "isPortraitModeSupportedForDevicePosition:", 0))
  {
    v16 = [[CAMDeviceSwitchTestHarness alloc] initWithTestName:testName viewfinderViewController:viewfinderViewController devicePosition:1 testingAnimation:v11 != 0x7FFFFFFFFFFFFFFFLL startingCaptureMode:6 testExtensionSeconds:v15];
  }

  else
  {
    v16 = [[CAMModeSwitchTestHarness alloc] initWithTestName:testName viewfinderViewController:viewfinderViewController mode:6 testingAnimation:v11 != 0x7FFFFFFFFFFFFFFFLL testExtensionSeconds:v15];
  }

  v17 = v16;
  [planCopy queueHarness:v16];
  [planCopy run];

  return 1;
}

- (BOOL)runSwitchCamerasTestWithTestPlan:(id)plan options:(id)options
{
  optionsCopy = options;
  planCopy = plan;
  testName = [planCopy testName];
  delegate = [(CAMApplication *)self delegate];
  viewfinderViewController = [delegate viewfinderViewController];
  v11 = [testName rangeOfString:@"Front"] != 0x7FFFFFFFFFFFFFFFLL;
  v12 = [testName rangeOfString:@"Animation"] != 0x7FFFFFFFFFFFFFFFLL;
  v13 = [optionsCopy objectForKeyedSubscript:@"testExtensionSeconds"];

  [v13 doubleValue];
  v15 = v14;

  v16 = [[CAMDeviceSwitchTestHarness alloc] initWithTestName:testName viewfinderViewController:viewfinderViewController devicePosition:v11 testingAnimation:v12 startingCaptureMode:0 testExtensionSeconds:v15];
  [planCopy queueHarness:v16];
  [planCopy run];

  return 1;
}

- (BOOL)runSwitchModesWithTestPlan:(id)plan options:(id)options userPreferencesOverrides:(id)overrides
{
  v50 = *MEMORY[0x1E69E9840];
  planCopy = plan;
  optionsCopy = options;
  overridesCopy = overrides;
  testName = [planCopy testName];
  if ([testName rangeOfString:@"SwitchToPano"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    integerValue = 3;
    goto LABEL_18;
  }

  if ([testName rangeOfString:@"SwitchToStill"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    integerValue = 0;
    goto LABEL_18;
  }

  if ([testName rangeOfString:@"SwitchToVideo"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    integerValue = 1;
    goto LABEL_18;
  }

  if ([testName rangeOfString:@"SwitchToTimeLapse"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    integerValue = 5;
    goto LABEL_18;
  }

  if ([testName rangeOfString:@"SwitchToSquare"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    integerValue = 4;
    goto LABEL_18;
  }

  if ([testName rangeOfString:@"SwitchToSloMo"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    integerValue = 2;
    goto LABEL_18;
  }

  if ([testName rangeOfString:@"SwitchToPortrait"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    integerValue = 6;
    goto LABEL_18;
  }

  if ([testName rangeOfString:@"SwitchToMode"] == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_99:
    v40 = 0;
    goto LABEL_97;
  }

  v12 = [optionsCopy objectForKeyedSubscript:@"captureMode"];
  if (!v12)
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing defaults write for %@", @"PPTMode"];
    [(CAMApplication *)self failedTest:testName withFailure:v42];

    goto LABEL_99;
  }

  v13 = v12;
  integerValue = [v12 integerValue];

LABEL_18:
  delegate = [(CAMApplication *)self delegate];
  viewfinderViewController = [delegate viewfinderViewController];
  v17 = [testName rangeOfString:@"Animation"];
  if (integerValue == 7 || integerValue == 1)
  {
    v44 = v17;
    videoConfiguration = [overridesCopy videoConfiguration];

    selfCopy = self;
    if (integerValue == 1 && videoConfiguration)
    {
      videoConfiguration2 = [overridesCopy videoConfiguration];
    }

    else
    {
      cinematicConfiguration = [overridesCopy cinematicConfiguration];

      integerValue3 = 0;
      if (integerValue != 7 || !cinematicConfiguration)
      {
LABEL_58:
        v45 = optionsCopy;
        v25 = [optionsCopy objectForKeyedSubscript:@"devicePosition"];
        integerValue2 = [v25 integerValue];

        v27 = +[CAMCaptureCapabilities capabilities];
        v28 = 0;
        v29 = integerValue2 == 1;
        v30 = integerValue2 == 1;
        v31 = @"BackAuto";
        if (v29)
        {
          v31 = @"FrontAuto";
        }

        if (integerValue3 > 9999)
        {
          if (integerValue3 > 10002)
          {
            switch(integerValue3)
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

          else if (integerValue3 == 10000)
          {
            v28 = @"ImagePickerHigh";
          }

          else if (integerValue3 == 10001)
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
          switch(integerValue3)
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

        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mode: %@ device: %@ format: %@", off_1E76F7B48[integerValue - 1], v31, v28];
        if (([v27 isSupportedVideoConfiguration:integerValue3 forMode:integerValue device:v30] & 1) == 0)
        {
          v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not supported", v32];
          [(CAMApplication *)selfCopy failedTest:testName withFailure:v33];
        }

        v34 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v47 = testName;
          v48 = 2114;
          v49 = v32;
          _os_log_impl(&dword_1A3640000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ configured with %{public}@", buf, 0x16u);
        }

        if ([overridesCopy hasOverrides])
        {
          [viewfinderViewController readUserPreferencesAndHandleChangesWithOverrides:overridesCopy];
        }

        v17 = v44;
        optionsCopy = v45;
        goto LABEL_96;
      }

      videoConfiguration2 = [overridesCopy cinematicConfiguration];
    }

    v22 = videoConfiguration2;
    integerValue3 = [videoConfiguration2 integerValue];

    v23 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 0;
      if (integerValue3 > 9999)
      {
        if (integerValue3 > 10002)
        {
          switch(integerValue3)
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

        else if (integerValue3 == 10000)
        {
          v24 = @"ImagePickerHigh";
        }

        else if (integerValue3 == 10001)
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
        switch(integerValue3)
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
      v47 = testName;
      v48 = 2114;
      v49 = v24;
      _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ will override Video format to %{public}@", buf, 0x16u);
    }

    goto LABEL_58;
  }

LABEL_96:
  v35 = v17 != 0x7FFFFFFFFFFFFFFFLL;
  v36 = [optionsCopy objectForKeyedSubscript:@"testExtensionSeconds"];
  [v36 doubleValue];
  v38 = v37;

  v39 = [[CAMModeSwitchTestHarness alloc] initWithTestName:testName viewfinderViewController:viewfinderViewController mode:integerValue testingAnimation:v35 testExtensionSeconds:v38];
  [planCopy queueHarness:v39];
  [planCopy run];

  v40 = 1;
LABEL_97:

  return v40;
}

- (BOOL)runPresentCameraRollWithTestPlan:(id)plan options:(id)options
{
  optionsCopy = options;
  planCopy = plan;
  testName = [planCopy testName];
  v9 = [optionsCopy objectForKeyedSubscript:@"presentCameraRollDelay"];

  [v9 doubleValue];
  v11 = v10;

  v12 = [testName rangeOfString:@"AfterDelay"];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([testName rangeOfString:@"SecondTime"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
      v14 = [testName rangeOfString:@"Animation"] != 0x7FFFFFFFFFFFFFFFLL;
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

  delegate = [(CAMApplication *)self delegate];
  viewfinderViewController = [delegate viewfinderViewController];
  v17 = [[CAMCameraRollTestHarness alloc] initWithTestName:testName viewfinderViewController:viewfinderViewController testingAnimation:v14 testingWarmPresentation:v13 awaitPreload:v12 != 0x7FFFFFFFFFFFFFFFLL settlingDelay:v11];
  [planCopy queueHarness:v17];
  [planCopy run];

  return 1;
}

- (BOOL)runLibrarySelectionWithTestPlan:(id)plan options:(id)options
{
  planCopy = plan;
  delegate = [(CAMApplication *)self delegate];
  viewfinderViewController = [delegate viewfinderViewController];

  _librarySelectionController = [viewfinderViewController _librarySelectionController];
  v9 = [CAMLibrarySelectionTestHarness alloc];
  testName = [planCopy testName];
  v11 = [(CAMLibrarySelectionTestHarness *)v9 initWithTestName:testName librarySelectionController:_librarySelectionController];

  [planCopy queueHarness:v11];
  [planCopy run];

  return 1;
}

- (BOOL)runTest:(id)test options:(id)options
{
  v90 = *MEMORY[0x1E69E9840];
  testCopy = test;
  v7 = MEMORY[0x1E695DF90];
  optionsCopy = options;
  v9 = [[v7 alloc] initWithDictionary:optionsCopy];

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
    v87 = testCopy;
    v88 = 2114;
    v89 = v9;
    _os_log_impl(&dword_1A3640000, v44, OS_LOG_TYPE_DEFAULT, "Running PPT test %{public}@ with options %{public}@", buf, 0x16u);
  }

  v45 = [[CAMPerformanceTestPlan alloc] initWithTestName:testCopy];
  [(CAMApplication *)self setCurrentTestPlan:v45];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __43__CAMApplication_Testing__runTest_options___block_invoke;
  v68[3] = &unk_1E76F77B0;
  v68[4] = self;
  [(CAMPerformanceTestPlan *)v45 setCompletionHandler:v68];
  if ([testCopy rangeOfString:@"UI"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([testCopy rangeOfString:@"Video"] == 0x7FFFFFFFFFFFFFFFLL)
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
  if ([testCopy rangeOfString:@"TakePicture"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([testCopy rangeOfString:@"PresentCameraRoll"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([testCopy rangeOfString:@"SwitchTo"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([testCopy rangeOfString:@"LibrarySelection"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v67.receiver = self;
          v67.super_class = CAMApplication;
          v46 = [(CAMApplication *)&v67 runTest:testCopy options:v9];
        }

        else
        {
          v46 = [(CAMApplication *)self runLibrarySelectionWithTestPlan:v45 options:v9];
        }
      }

      else if ([testCopy rangeOfString:@"FrontPortrait"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([testCopy rangeOfString:@"FrontCamera"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(testCopy, "rangeOfString:", @"RearCamera") == 0x7FFFFFFFFFFFFFFFLL)
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
  if ([testCopy rangeOfString:@"Default"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([testCopy rangeOfString:@"HDR"] == 0x7FFFFFFFFFFFFFFFLL)
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
      [(CAMApplication *)self failedTest:testCopy withFailure:@"Keep Normal Photo should be off for default photo capture tests"];
    }

    -[CAMMutableStillImageCaptureRequest setWantsSemanticSceneFilter:](v47, "setWantsSemanticSceneFilter:", [v48 semanticDevelopmentEnabled]);
  }

  v51 = [testCopy rangeOfString:@"Iris"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(testCopy, "rangeOfString:", @"Default") != 0x7FFFFFFFFFFFFFFFLL;
  [(CAMMutableStillImageCaptureRequest *)v47 setIrisMode:v51];
  if ([testCopy rangeOfString:@"Stabilization"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(testCopy, "rangeOfString:", @"Default") == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(CAMMutableStillImageCaptureRequest *)v47 setPhotoQualityPrioritization:0];
  }

  else
  {
    v66 = v48;
    v52 = v10;
    delegate = [(CAMApplication *)self delegate];
    viewfinderViewController = [delegate viewfinderViewController];
    currentCaptureMode = [viewfinderViewController currentCaptureMode];
    v56 = +[CAMCaptureCapabilities capabilities];
    v57 = [viewfinderViewController currentCaptureDevice] - 1;
    if (v57 > 0xA)
    {
      v58 = 0;
    }

    else
    {
      v58 = qword_1A3A64B90[v57];
    }

    -[CAMMutableStillImageCaptureRequest setPhotoQualityPrioritization:](v47, "setPhotoQualityPrioritization:", [v56 maxSupportedPhotoQualityPrioritizationForMode:currentCaptureMode devicePosition:v58]);

    v10 = v52;
    v48 = v66;
  }

  if ([testCopy rangeOfString:@"Portrait"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(CAMMutableStillImageCaptureRequest *)v47 setWantsDepthData:0];
  }

  else
  {
    [(CAMMutableStillImageCaptureRequest *)v47 setWantsDepthData:1];
    [(CAMMutableStillImageCaptureRequest *)v47 setHdrMode:1];
    ppt_readPortraitLightingType = [v48 ppt_readPortraitLightingType];
    [(CAMMutableStillImageCaptureRequest *)v47 setLightingEffectType:ppt_readPortraitLightingType];
    v60 = [CAMEffectFilterManager filtersForFilterType:16 lightingType:ppt_readPortraitLightingType applyDepthEffect:1];
    [(CAMMutableStillImageCaptureRequest *)v47 setAdjustmentFilters:v60];
    [v9 setValue:&unk_1F16C7118 forKey:@"expectedNumberOfCapturesPerRequest"];
  }

  [(CAMMutableStillImageCaptureRequest *)v47 setFlashMode:0];
  [(CAMMutableStillImageCaptureRequest *)v47 setWantsAudioForCapture:1];
  photoEncodingBehavior = [v48 photoEncodingBehavior];
  captureConfiguration = [v48 captureConfiguration];
  v63 = [v48 videoEncodingBehaviorForConfiguration:0 mode:0 desiredProResVideoMode:objc_msgSend(captureConfiguration outputToExternalStorage:"proResVideoMode") frontRearSimultaneousVideoEnabled:{0, 0}];

  [(CAMMutableStillImageCaptureRequest *)v47 setPhotoEncodingBehavior:photoEncodingBehavior];
  [(CAMMutableStillImageCaptureRequest *)v47 setVideoEncodingBehavior:v63];
  if ([testCopy rangeOfString:@"Front"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([testCopy rangeOfString:@"Portrait"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([testCopy rangeOfString:@"Flash"] != 0x7FFFFFFFFFFFFFFFLL)
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

  else if ([testCopy rangeOfString:@"FrontPortrait"] == 0x7FFFFFFFFFFFFFFFLL)
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

- (void)prepareForDefaultImageSnapshotForScreen:(id)screen
{
  screenCopy = screen;
  delegate = [(CAMApplication *)self delegate];
  [delegate prepareForDefaultImageSnapshotForScreen:screenCopy];
}

+ (int64_t)appOrPlugInInterfaceOrientation
{
  v2 = +[CAMCaptureCapabilities capabilities];
  v3 = MEMORY[0x1E69DDA98];
  statusBarOrientation = [*MEMORY[0x1E69DDA98] statusBarOrientation];
  hostProcess = [v2 hostProcess];
  if (hostProcess > 5)
  {
    statusBarOrientation = 0;
  }

  else if (((1 << hostProcess) & 0x1B) == 0)
  {
    if (hostProcess != 2 || ([MEMORY[0x1E69DC938] currentDevice], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, v7 == 1))
    {
      statusBarOrientation = [*v3 activeInterfaceOrientation];
    }
  }

  return statusBarOrientation;
}

+ (BOOL)isAppOrPlugInSuspended
{
  isSuspended = [*MEMORY[0x1E69DDA98] isSuspended];
  v3 = +[CAMCaptureCapabilities capabilities];
  hostProcess = [v3 hostProcess];

  if (hostProcess == 4 || hostProcess == 2)
  {
    return 0;
  }

  else
  {
    return isSuspended;
  }
}

+ (int64_t)appOrPlugInState
{
  applicationState = [*MEMORY[0x1E69DDA98] applicationState];
  v3 = +[CAMCaptureCapabilities capabilities];
  hostProcess = [v3 hostProcess];

  if (hostProcess == 4 || hostProcess == 2)
  {
    return 0;
  }

  else
  {
    return applicationState;
  }
}

@end