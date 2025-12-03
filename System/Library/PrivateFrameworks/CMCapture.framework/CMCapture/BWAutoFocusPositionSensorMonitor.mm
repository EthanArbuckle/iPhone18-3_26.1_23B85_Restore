@interface BWAutoFocusPositionSensorMonitor
+ (id)sharedInstance;
+ (void)clientHasBeenBackgrounded;
+ (void)logStillImageAPSStatistics:(id)statistics;
+ (void)logVideoRecordingAPSStatistics:(BWAPSStatistics *)statistics;
+ (void)processAPSOffsetEstimatorInfo:(id)info portType:(id)type;
- (BWAutoFocusPositionSensorMonitor)init;
- (uint64_t)_appendApsMotionData:(void *)data sphereMotionData:(void *)motionData toDataString:;
- (uint64_t)_highMagneticFieldCountOfOtherCameras:(void *)cameras portType:;
- (uint64_t)_reportStillImageAPSStatisticsToAggd:(uint64_t)result;
- (uint64_t)_reportVideoRecordingAPSStatisticsToAggd:(uint64_t)result;
- (void)_getLogFileHandle;
- (void)_logAPSOffsetEstimatorInfo:(void *)info portType:;
- (void)_logStillImageAPSStatistics:(uint64_t)statistics;
- (void)_logVideoRecordingAPSStatistics:(uint64_t)statistics;
- (void)_postMagneticDetectionUserNotification;
- (void)_processAPSOffsetEstimatorInfo:(void *)info portType:;
- (void)_reportAPSOffsetEstimatorInfoToAggdAndCoreAnalytics:(void *)analytics portType:;
- (void)clientHasBeenBackgrounded;
- (void)dealloc;
- (void)logStillImageAPSStatistics:(uint64_t)statistics;
- (void)logVideoRecordingAPSStatistics:(uint64_t)statistics;
- (void)processAPSOffsetEstimatorInfo:(uint64_t)info portType:;
@end

@implementation BWAutoFocusPositionSensorMonitor

+ (id)sharedInstance
{
  if (sharedInstance_initSharedAutoFocusPositionSensorMonitor != -1)
  {
    +[BWAutoFocusPositionSensorMonitor sharedInstance];
  }

  return sharedInstance_sharedAutoFocusPositionSensorMonitor;
}

BWAutoFocusPositionSensorMonitor *__50__BWAutoFocusPositionSensorMonitor_sharedInstance__block_invoke()
{
  result = objc_alloc_init(BWAutoFocusPositionSensorMonitor);
  sharedInstance_sharedAutoFocusPositionSensorMonitor = result;
  return result;
}

+ (void)processAPSOffsetEstimatorInfo:(id)info portType:(id)type
{
  v4 = +[BWAutoFocusPositionSensorMonitor sharedInstance];

  [BWAutoFocusPositionSensorMonitor processAPSOffsetEstimatorInfo:v4 portType:?];
}

+ (void)logStillImageAPSStatistics:(id)statistics
{
  v4 = [statistics objectForKeyedSubscript:*off_1E798B188];
  v5 = [statistics objectForKeyedSubscript:*off_1E798B6A8];
  v6 = [statistics objectForKeyedSubscript:*off_1E798B230];
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && v6 != 0)
  {
    v9 = +[BWAutoFocusPositionSensorMonitor sharedInstance];

    [BWAutoFocusPositionSensorMonitor logStillImageAPSStatistics:v9];
  }
}

+ (void)logVideoRecordingAPSStatistics:(BWAPSStatistics *)statistics
{
  v3 = +[BWAutoFocusPositionSensorMonitor sharedInstance];

  [BWAutoFocusPositionSensorMonitor logVideoRecordingAPSStatistics:v3];
}

+ (void)clientHasBeenBackgrounded
{
  if (sShouldPostNotification == 1)
  {
    v4 = +[BWAutoFocusPositionSensorMonitor sharedInstance];

    [(BWAutoFocusPositionSensorMonitor *)v4 clientHasBeenBackgrounded];
  }
}

- (BWAutoFocusPositionSensorMonitor)init
{
  v4.receiver = self;
  v4.super_class = BWAutoFocusPositionSensorMonitor;
  v2 = [(BWAutoFocusPositionSensorMonitor *)&v4 init];
  if (v2)
  {
    v2->_apsMonitorQueue = FigDispatchQueueCreateWithPriority();
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWAutoFocusPositionSensorMonitor;
  [(BWAutoFocusPositionSensorMonitor *)&v3 dealloc];
}

void __63__BWAutoFocusPositionSensorMonitor_logStillImageAPSStatistics___block_invoke(uint64_t a1)
{
  [(BWAutoFocusPositionSensorMonitor *)*(a1 + 32) _reportStillImageAPSStatisticsToAggd:?];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  [(BWAutoFocusPositionSensorMonitor *)v2 _logStillImageAPSStatistics:v3];
}

void __67__BWAutoFocusPositionSensorMonitor_logVideoRecordingAPSStatistics___block_invoke(uint64_t a1)
{
  [(BWAutoFocusPositionSensorMonitor *)*(a1 + 32) _reportVideoRecordingAPSStatisticsToAggd:?];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  [(BWAutoFocusPositionSensorMonitor *)v2 _logVideoRecordingAPSStatistics:v3];
}

void __61__BWAutoFocusPositionSensorMonitor_clientHasBeenBackgrounded__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16))
  {
    *(*(a1 + 32) + 16) = +[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor];
  }

  v2 = dispatch_time(0, 500000000);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__BWAutoFocusPositionSensorMonitor_clientHasBeenBackgrounded__block_invoke_2;
  block[3] = &unk_1E798F870;
  block[4] = v3;
  dispatch_after(v2, v4, block);
}

void __61__BWAutoFocusPositionSensorMonitor_clientHasBeenBackgrounded__block_invoke_2(uint64_t a1)
{
  if (sShouldPostNotification == 1 && [*(*(a1 + 32) + 16) isOnHomeScreen])
  {
    sShouldPostNotification = 0;
    v2 = *(a1 + 32);

    [(BWAutoFocusPositionSensorMonitor *)v2 _postMagneticDetectionUserNotification];
  }
}

void __74__BWAutoFocusPositionSensorMonitor__postMagneticDetectionUserNotification__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(a1 + 32), 0.0, &responseFlags);
  if (responseFlags == 1)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/HT208747"];
    [objc_msgSend(MEMORY[0x1E6963608] "defaultWorkspace")];
  }

  CFRelease(*(a1 + 32));
  objc_autoreleasePoolPop(v2);
}

- (void)processAPSOffsetEstimatorInfo:(uint64_t)info portType:
{
  if (info)
  {
    OUTLINED_FUNCTION_3_80();
    v6 = 3221225472;
    v7 = __75__BWAutoFocusPositionSensorMonitor_processAPSOffsetEstimatorInfo_portType___block_invoke;
    v8 = &unk_1E798FD58;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    dispatch_async(v4, block);
  }
}

- (void)logStillImageAPSStatistics:(uint64_t)statistics
{
  if (statistics)
  {
    OUTLINED_FUNCTION_2_91();
    OUTLINED_FUNCTION_10_42(v1, v2, v3, v4, 3221225472, v5, v6, v7, v8);
  }
}

- (void)logVideoRecordingAPSStatistics:(uint64_t)statistics
{
  if (statistics)
  {
    OUTLINED_FUNCTION_2_91();
    OUTLINED_FUNCTION_10_42(v1, v2, v3, v4, 3221225472, v5, v6, v7, v8);
  }
}

- (void)clientHasBeenBackgrounded
{
  if (self)
  {
    OUTLINED_FUNCTION_3_80();
    v4 = 3221225472;
    v5 = __61__BWAutoFocusPositionSensorMonitor_clientHasBeenBackgrounded__block_invoke;
    v6 = &unk_1E798F870;
    v7 = v1;
    dispatch_async(v2, block);
  }
}

- (void)_processAPSOffsetEstimatorInfo:(void *)info portType:
{
  if (!self)
  {
    return;
  }

  if ([info isEqualToString:*off_1E798A0C0])
  {
    v7 = @"BackHighMagneticFieldCount";
    v8 = @"BackLowMagneticFieldCount";
    v9 = @"BackFirstLowMagneticFieldTime";
    goto LABEL_12;
  }

  if ([info isEqualToString:*off_1E798A0D8])
  {
    v7 = @"BackTelephotoHighMagneticFieldCount";
    v8 = @"BackTelephotoLowMagneticFieldCount";
    v9 = @"BackTelephotoFirstLowMagneticFieldTime";
    goto LABEL_12;
  }

  if ([info isEqualToString:*off_1E798A0D0])
  {
    v7 = @"BackSuperWideHighMagneticFieldCount";
    v8 = @"BackSuperWideLowMagneticFieldCount";
    v9 = @"BackSuperWideFirstLowMagneticFieldTime";
LABEL_12:
    v10 = *MEMORY[0x1E695E8B8];
    v11 = *MEMORY[0x1E695E898];
    v6 = CFPreferencesCopyValue(@"AutoFocusPositionSensorMonitorInfo", @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v69 = v8;
    if (v6)
    {
      v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v6];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    value = v12;
    v13 = [objc_msgSend(v6 objectForKeyedSubscript:{@"NumPostedNotifications", v9), "intValue"}];
    v14 = [objc_msgSend(v6 objectForKeyedSubscript:{@"LastNotificationTime", "intValue"}];
    v66 = v7;
    v15 = [objc_msgSend(v6 objectForKeyedSubscript:{v7), "intValue"}];
    [objc_msgSend(MEMORY[0x1E695DF00] "date")];
    v17 = v16;
    if (([objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB80), "intValue"}] & 2) != 0)
    {
      if (v15 >= 9 && v17 - v14 > ((powf(5.0, v13) * 1209600.0) / 5.0))
      {
        sShouldPostNotification = 1;
      }

      v55 = [MEMORY[0x1E696AD98] numberWithInt:(v15 + 1)];
      [OUTLINED_FUNCTION_8_47(v55 v56];
      v54 = v72;
    }

    else
    {
      if (v13 <= 0 && v15 < 1)
      {
        goto LABEL_32;
      }

      v19 = [objc_msgSend(v6 objectForKeyedSubscript:{v69), "intValue"}];
      v20 = v63;
      if (!v19)
      {
        v21 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
        [OUTLINED_FUNCTION_8_47(v21 v22];
      }

      v29 = [objc_msgSend(v6 objectForKeyedSubscript:{v20), "intValue"}];
      v30 = [MEMORY[0x1E696AD98] numberWithInt:(v19 + 1)];
      v38 = [OUTLINED_FUNCTION_8_47(v30 v31];
      if (v19 < 9 || v17 - v29 <= 86400.0 || (v46 = [OUTLINED_FUNCTION_9_48(v38 v39], objc_msgSend(OUTLINED_FUNCTION_9_48(v46, v47, v48, v49, v50, v51, v52, v53, v65, v68, v71, valuea), "setObject:forKeyedSubscript:"), -[BWAutoFocusPositionSensorMonitor _highMagneticFieldCountOfOtherCameras:portType:](self, v6, info)))
      {
LABEL_31:
        CFPreferencesSetValue(@"AutoFocusPositionSensorMonitorInfo", value, @"com.apple.cameracapture.volatile", v10, v11);
        CFPreferencesSynchronize(@"com.apple.cameracapture.volatile", v10, v11);
LABEL_32:
        [(BWAutoFocusPositionSensorMonitor *)self _reportAPSOffsetEstimatorInfoToAggdAndCoreAnalytics:a2 portType:info];
        [(BWAutoFocusPositionSensorMonitor *)self _logAPSOffsetEstimatorInfo:a2 portType:info];
        goto LABEL_6;
      }

      [value setObject:&unk_1F2245B80 forKeyedSubscript:@"NumPostedNotifications"];
      v54 = @"LastNotificationTime";
    }

    [value setObject:&unk_1F2245B80 forKeyedSubscript:v54];
    goto LABEL_31;
  }

  value = 0;
  v6 = 0;
LABEL_6:
}

- (uint64_t)_reportStillImageAPSStatisticsToAggd:(uint64_t)result
{
  if (result)
  {
    v3 = [a2 objectForKeyedSubscript:*off_1E798B188];
    v4 = [a2 objectForKeyedSubscript:*off_1E798B6A8];
    v5 = [a2 objectForKeyedSubscript:*off_1E798B230];
    if (v3 && v4 && (v6 = v5) != 0)
    {
      [a2 objectForKeyedSubscript:*off_1E798B540];
      [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798AB20), "floatValue"}];
      [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798C460), "floatValue"}];
      [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798AD18), "floatValue"}];
      [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798AD20), "floatValue"}];
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B4A8), "intValue"}];
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B2F0), "floatValue"}];
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B4B8), "intValue"}];
      +[BWAggdDataReporter sharedInstance];
      *&v8 = OUTLINED_FUNCTION_4_71();

      return [v7 reportStillImageAPSStatisticsForPortType:v8 logicalFocusPosition:? apsMotion:? sphereMotion:? accelMotion:? gyroMotion:? subjectDistance:? luxLevel:?];
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      return FigDebugAssert3();
    }
  }

  return result;
}

- (void)_logStillImageAPSStatistics:(uint64_t)statistics
{
  if (statistics && MGGetBoolAnswer())
  {
    v3 = *off_1E798B188;
    v4 = [a2 objectForKeyedSubscript:*off_1E798B188];
    v5 = *off_1E798B6A8;
    v6 = [a2 objectForKeyedSubscript:*off_1E798B6A8];
    v7 = [a2 objectForKeyedSubscript:*off_1E798B230];
    if (v4 && v6 && (v8 = v7) != 0)
    {
      LogFile = [(BWAutoFocusPositionSensorMonitor *)statistics _getLogFileHandle];
      if (LogFile)
      {
        v31 = LogFile;
        v10 = [a2 objectForKeyedSubscript:*off_1E798B540];
        v11 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v11 setDateFormat:@"HH:mm:ss"];
        [MEMORY[0x1E695DF00] date];
        v12 = [OUTLINED_FUNCTION_17() stringFromDate:?];

        v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
        [v13 appendFormat:@"%@ ", v12];
        [v13 appendFormat:@"Photo, "];
        v32 = v10;
        [v13 appendFormat:@"%@, ", v10];
        [v13 appendFormat:@"<FocusPos>%d</FocusPos>, ", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798B4A8), "intValue")];
        [v13 appendFormat:@"<Lux>%d</Lux>, ", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798B4B8), "intValue")];
        [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B2F0), "floatValue"}];
        [v13 appendFormat:@"<SubjectDistance>%f</SubjectDistance>, ", OUTLINED_FUNCTION_0_93(v14)];
        [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798AD18), "floatValue"}];
        [v13 appendFormat:@"<AccelStd>%f</AccelStd>, ", OUTLINED_FUNCTION_0_93(v15)];
        [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798ACF8), "floatValue"}];
        [v13 appendFormat:@"<AccelMax>%f</AccelMax>, ", OUTLINED_FUNCTION_0_93(v16)];
        [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798AD08), "floatValue"}];
        [v13 appendFormat:@"<AccelMin>%f</AccelMin>, ", OUTLINED_FUNCTION_0_93(v17)];
        [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798AD20), "floatValue"}];
        [v13 appendFormat:@"<GyroStd>%f</GyroStd>, ", OUTLINED_FUNCTION_0_93(v18)];
        [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798AD00), "floatValue"}];
        [v13 appendFormat:@"<GyroMax>%f</GyroMax>, ", OUTLINED_FUNCTION_0_93(v19)];
        [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798AD10), "floatValue"}];
        [v13 appendFormat:@"<GyroMin>%f</GyroMin>, ", OUTLINED_FUNCTION_0_93(v20)];
        [(BWAutoFocusPositionSensorMonitor *)statistics _appendApsMotionData:v4 sphereMotionData:v6 toDataString:v13];
        v21 = [a2 objectForKeyedSubscript:*off_1E798B730];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        allKeys = [v21 allKeys];
        v23 = [allKeys countByEnumeratingWithState:&v35 objects:v34 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v36;
          do
          {
            v26 = 0;
            do
            {
              if (*v36 != v25)
              {
                objc_enumerationMutation(allKeys);
              }

              v27 = [v21 objectForKeyedSubscript:*(*(&v35 + 1) + 8 * v26)];
              v28 = [v27 objectForKeyedSubscript:v3];
              v29 = [v27 objectForKeyedSubscript:v5];
              if (v28)
              {
                v30 = v29;
                if (v29)
                {
                  [v13 appendFormat:@"SlaveCamera (%@), ", v32];
                  [(BWAutoFocusPositionSensorMonitor *)statistics _appendApsMotionData:v28 sphereMotionData:v30 toDataString:v13];
                }
              }

              ++v26;
            }

            while (v24 != v26);
            v24 = [allKeys countByEnumeratingWithState:&v35 objects:v34 count:16];
          }

          while (v24);
        }

        [v13 appendString:@"\n"];
        [v31 writeData:{objc_msgSend(v13, "dataUsingEncoding:", 4)}];
        [v31 closeFile];
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }
  }
}

- (uint64_t)_reportVideoRecordingAPSStatisticsToAggd:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v3 = +[BWAggdDataReporter sharedInstance];
      LODWORD(v4) = *a2;
      LODWORD(v5) = *(a2 + 4);
      LODWORD(v6) = *(a2 + 24);
      LODWORD(v7) = *(a2 + 28);
      LODWORD(v8) = *(a2 + 12);
      LODWORD(v9) = *(a2 + 36);
      LODWORD(v10) = *(a2 + 48);
      LODWORD(v11) = *(a2 + 60);
      LODWORD(v14) = *(a2 + 20);
      HIDWORD(v14) = *(a2 + 44);
      LODWORD(v13) = *(a2 + 16);
      HIDWORD(v13) = *(a2 + 40);
      LODWORD(v12) = *(a2 + 8);
      HIDWORD(v12) = *(a2 + 32);
      return [BWAggdDataReporter reportVideoRecordingAPSStatistics:v3 stdDataFromAPSForTele:"reportVideoRecordingAPSStatistics:stdDataFromAPSForTele:stdDataFromSphereForWide:stdDataFromSphereForTele:stdDataFromAccel:stdDataFromGyro:maxDataFromAPSForWide:maxDataFromAPSForTele:minDataFromAPSForWide:minDataFromAPSForTele:maxDataFromSphereForWide:maxDataFromSphereForTele:minDataFromSphereForWide:minDataFromSphereForTele:maxDataFromAccel:minDataFromAccel:maxDataFromGyro:minDataFromGyro:" stdDataFromSphereForWide:v4 stdDataFromSphereForTele:v6 stdDataFromAccel:v8 stdDataFromGyro:v9 maxDataFromAPSForWide:v10 maxDataFromAPSForTele:v11 minDataFromAPSForWide:v5 minDataFromAPSForTele:v7 maxDataFromSphereForWide:v12 maxDataFromSphereForTele:v13 minDataFromSphereForWide:v14 minDataFromSphereForTele:*(a2 + 52) maxDataFromAccel:*(a2 + 64) minDataFromAccel:? maxDataFromGyro:? minDataFromGyro:?];
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      return FigDebugAssert3();
    }
  }

  return result;
}

- (void)_logVideoRecordingAPSStatistics:(uint64_t)statistics
{
  if (statistics && MGGetBoolAnswer())
  {
    if (a2)
    {
      LogFile = [(BWAutoFocusPositionSensorMonitor *)statistics _getLogFileHandle];
      if (LogFile)
      {
        v5 = LogFile;
        v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v6 setDateFormat:@"HH:mm:ss"];
        v7 = [v6 stringFromDate:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];

        v29 = objc_alloc_init(MEMORY[0x1E696AD60]);
        [v29 appendFormat:@"%@ "];
        [v29 appendFormat:@"Video, "];
        [v29 appendFormat:@"<AccelStd>%f</AccelStd>, ", OUTLINED_FUNCTION_0_93(a2[12])];
        [v29 appendFormat:@"<AccelMax>%f</AccelMax>, ", OUTLINED_FUNCTION_0_93(a2[13])];
        [v29 appendFormat:@"<AccelMin>%f</AccelMin>, ", OUTLINED_FUNCTION_0_93(a2[14])];
        [v29 appendFormat:@"<GyroStd>%f</GyroStd>, ", OUTLINED_FUNCTION_0_93(a2[15])];
        [v29 appendFormat:@"<GyroMax>%f</GyroMax>, ", OUTLINED_FUNCTION_0_93(a2[16])];
        [v29 appendFormat:@"<GyroMin>%f</GyroMin>, ", OUTLINED_FUNCTION_0_93(a2[17])];
        [v29 appendFormat:@"PortTypeBack, "];
        [v29 appendFormat:@"<AFStd>%f</AFStd>, ", OUTLINED_FUNCTION_0_93(*a2)];
        [v29 appendFormat:@"<AFMax>%f</AFMax>, ", OUTLINED_FUNCTION_0_93(a2[1])];
        [v29 appendFormat:@"<AFMin>%f</AFMin>, ", OUTLINED_FUNCTION_0_93(a2[2])];
        [v29 appendFormat:@"<OISStd>%f</OISStd>, ", OUTLINED_FUNCTION_0_93(a2[3])];
        [v29 appendFormat:@"<OISMax>%f</OISMax>, ", OUTLINED_FUNCTION_0_93(a2[4])];
        OUTLINED_FUNCTION_0_93(a2[5]);
        [OUTLINED_FUNCTION_9_48(v8 v9];
        [v30 appendFormat:@"PortTypeBackTele, "];
        [v30 appendFormat:@"<AFStd>%f</AFStd>, ", OUTLINED_FUNCTION_0_93(a2[6])];
        [v30 appendFormat:@"<AFMax>%f</AFMax>, ", OUTLINED_FUNCTION_0_93(a2[7])];
        [v30 appendFormat:@"<AFMin>%f</AFMin>, ", OUTLINED_FUNCTION_0_93(a2[8])];
        [v30 appendFormat:@"<OISStd>%f</OISStd>, ", OUTLINED_FUNCTION_0_93(a2[9])];
        [v30 appendFormat:@"<OISMax>%f</OISMax>, ", OUTLINED_FUNCTION_0_93(a2[10])];
        OUTLINED_FUNCTION_0_93(a2[11]);
        [OUTLINED_FUNCTION_9_48(v16 v17];
        [v31 appendString:@"\n"];
        [v31 dataUsingEncoding:4];
        [OUTLINED_FUNCTION_17() writeData:?];
        [v5 closeFile];
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }
  }
}

- (void)_postMagneticDetectionUserNotification
{
  if (self)
  {
    v1 = *MEMORY[0x1E695E8B8];
    v2 = *MEMORY[0x1E695E898];
    v3 = CFPreferencesCopyValue(@"AutoFocusPositionSensorMonitorInfo", @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v3];
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v5 = v4;
    v6 = [objc_msgSend(v3 objectForKeyedSubscript:{@"NumPostedNotifications", "intValue"}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", (v6 + 1)), @"NumPostedNotifications"}];
    [objc_msgSend(MEMORY[0x1E695DF00] "date")];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:"), @"LastNotificationTime"}];
    OUTLINED_FUNCTION_6_62();
    OUTLINED_FUNCTION_6_62();
    OUTLINED_FUNCTION_6_62();
    OUTLINED_FUNCTION_6_62();
    OUTLINED_FUNCTION_6_62();
    OUTLINED_FUNCTION_6_62();
    OUTLINED_FUNCTION_7_56();
    CFPreferencesSetValue(v7, v8, v9, v10, v11);
    CFPreferencesSynchronize(@"com.apple.cameracapture.volatile", v1, v2);
    [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.Celestial"];
    OUTLINED_FUNCTION_7_56();
    v13 = [v12 localizedStringForKey:? value:? table:?];
    OUTLINED_FUNCTION_7_56();
    v15 = [v14 localizedStringForKey:? value:? table:?];
    OUTLINED_FUNCTION_7_56();
    v17 = [v16 localizedStringForKey:? value:? table:?];
    v18 = *MEMORY[0x1E695EE70];
    v24[0] = *MEMORY[0x1E695EE78];
    v24[1] = v18;
    v25[0] = v13;
    v25[1] = v15;
    v24[2] = *MEMORY[0x1E695EE60];
    v25[2] = v17;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v20 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, 0, v19);
    if (v20)
    {
      v21 = v20;
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__BWAutoFocusPositionSensorMonitor__postMagneticDetectionUserNotification__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v21;
      dispatch_async(global_queue, block);
    }
  }
}

- (uint64_t)_highMagneticFieldCountOfOtherCameras:(void *)cameras portType:
{
  if (result)
  {
    if ([cameras isEqualToString:*off_1E798A0C0])
    {
      v5 = @"BackSuperWideHighMagneticFieldCount";
      v6 = @"BackTelephotoHighMagneticFieldCount";
    }

    else
    {
      if ([cameras isEqualToString:*off_1E798A0D8])
      {
        v5 = @"BackSuperWideHighMagneticFieldCount";
      }

      else
      {
        result = [cameras isEqualToString:*off_1E798A0D0];
        if (!result)
        {
          return result;
        }

        v5 = @"BackTelephotoHighMagneticFieldCount";
      }

      v6 = @"BackHighMagneticFieldCount";
    }

    v7 = [objc_msgSend(a2 objectForKeyedSubscript:{v6), "intValue"}];
    return [objc_msgSend(a2 objectForKeyedSubscript:{v5), "intValue"}] + v7;
  }

  return result;
}

- (void)_reportAPSOffsetEstimatorInfoToAggdAndCoreAnalytics:(void *)analytics portType:
{
  if (self)
  {
    if (a2)
    {
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB88), "floatValue"}];
      v6 = v5;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB90), "floatValue"}];
      v8 = v7;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB40), "floatValue"}];
      v10 = v9;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB50), "floatValue"}];
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB58), "floatValue"}];
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB48), "floatValue"}];
      v11 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB80), "intValue"}];
      v35 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB98), "intValue"}];
      v12 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB28), "intValue"}];
      v37 = CFPreferencesCopyValue(@"AutoFocusPositionSensorMonitorInfo", @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      analyticsCopy = analytics;
      if ([analytics isEqualToString:*off_1E798A0C0])
      {
        v13 = @"BackLastSessionOffset";
      }

      else if ([analytics isEqualToString:*off_1E798A0D0])
      {
        v13 = @"BackSuperWideLastSessionOffset";
      }

      else
      {
        v13 = @"BackTelephotoLastSessionOffset";
      }

      v36 = (v11 >> 1) & 1;
      v33 = v12 == 6;
      v34 = v12 == 1;
      v14 = (v11 >> 3) & 1;
      v32 = v11 == 0;
      v15 = (v11 >> 2) & 1;
      v30 = (v11 >> 9) & 1;
      [objc_msgSend(v37 objectForKeyedSubscript:{v13), "floatValue"}];
      v17 = v16;
      +[BWAggdDataReporter sharedInstance];
      BYTE1(v29) = v12 == 1;
      LOBYTE(v29) = v12 == 6;
      HIDWORD(v28) = v35;
      BYTE3(v28) = v11 == 0;
      BYTE2(v28) = (v11 & 0x80) != 0;
      BYTE1(v28) = (v11 & 2) != 0;
      LOBYTE(v28) = (v11 & 0x40) != 0;
      *&v18 = OUTLINED_FUNCTION_4_71();
      v20 = (v11 >> 4) & 1;
      v19 = (v11 >> 5) & 1;
      [v21 reportAPSOffsetEstimatorForPortType:v18 accelMotion:v28 gyroMotion:v29 inSessionOffset:? deltaOffsetFC:? deltaOffsetMI:? deltaOffsetFATP:? deltaOffsetLastSession:? errorHeadroomViolated:? errorConvergenceFailed:? errorMotionTooLarge:? errorConfidenceTooLow:? errorOffsetTooLarge:? errorDeltaTooLarge:? errorSaturated:? errorCouldNotRun:? successRun:? startAPSVoltage:? modeGCOL:? modeOL:?];
      v22 = objc_alloc_init(BWStartupCalibrationAnalyticsPayload);
      [(BWStartupCalibrationAnalyticsPayload *)v22 setPortType:analyticsCopy];
      LODWORD(v23) = v6;
      [(BWStartupCalibrationAnalyticsPayload *)v22 setAccelStandardDeviation:v23];
      LODWORD(v24) = v8;
      [(BWStartupCalibrationAnalyticsPayload *)v22 setGyroStandardDeviation:v24];
      *&v25 = v10;
      [(BWStartupCalibrationAnalyticsPayload *)v22 setSessionOffset:v25];
      *&v26 = v10 - v17;
      [(BWStartupCalibrationAnalyticsPayload *)v22 setDeltaOffset:v26];
      [(BWStartupCalibrationAnalyticsPayload *)v22 setApsVoltage:v35];
      [(BWStartupCalibrationAnalyticsPayload *)v22 setHeadroomErrorOccurred:v30];
      [(BWStartupCalibrationAnalyticsPayload *)v22 setConvergeErrorOccurred:v15];
      [(BWStartupCalibrationAnalyticsPayload *)v22 setMotionErrorOccurred:v14];
      [(BWStartupCalibrationAnalyticsPayload *)v22 setConfidenceErrorOccurred:v20];
      [(BWStartupCalibrationAnalyticsPayload *)v22 setLargeOffsetErrorOccurred:v19];
      [(BWStartupCalibrationAnalyticsPayload *)v22 setSaturationErrorOccurred:v36];
      [(BWStartupCalibrationAnalyticsPayload *)v22 setSuccess:v32];
      [(BWStartupCalibrationAnalyticsPayload *)v22 setGcolEntry:v33];
      [(BWStartupCalibrationAnalyticsPayload *)v22 setClosedLoopEntry:v34];
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB78), "floatValue"}];
      [(BWStartupCalibrationAnalyticsPayload *)v22 setMaxAcceleration:?];
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB38), "floatValue"}];
      [(BWStartupCalibrationAnalyticsPayload *)v22 setDeltaAcceleration:?];
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB60), "floatValue"}];
      [(BWStartupCalibrationAnalyticsPayload *)v22 setGravityX:?];
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB68), "floatValue"}];
      [(BWStartupCalibrationAnalyticsPayload *)v22 setGravityY:?];
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB70), "floatValue"}];
      [(BWStartupCalibrationAnalyticsPayload *)v22 setGravityZ:?];
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB30), "floatValue"}];
      [(BWStartupCalibrationAnalyticsPayload *)v22 setCompletionTime:?];
      [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", v22];
      v27 = v37;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      v27 = 0;
    }
  }
}

- (void)_logAPSOffsetEstimatorInfo:(void *)info portType:
{
  if (!self)
  {
    return;
  }

  if (MGGetBoolAnswer())
  {
    if (a2)
    {
      LogFile = [(BWAutoFocusPositionSensorMonitor *)self _getLogFileHandle];
      if (LogFile)
      {
        v7 = LogFile;
        v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v8 setDateFormat:@"HH:mm:ss"];
        v9 = [v8 stringFromDate:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];

        v10 = objc_alloc_init(MEMORY[0x1E696AD60]);
        [v10 appendFormat:@"%@, ", v9];
        [v10 appendFormat:@"OffsetEstimatorInfo, "];
        infoCopy = info;
        [v10 appendFormat:@"%@, "];
        [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB40), "floatValue"}];
        v12 = v11;
        [v10 appendFormat:@"<InSessionOffset>%f</InSessionOffset>, ", OUTLINED_FUNCTION_0_93(v11)];
        [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB50), "floatValue"}];
        [v10 appendFormat:@"<DeltaOffsetFC>%f</DeltaOffsetFC>, ", OUTLINED_FUNCTION_0_93(v13)];
        [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB58), "floatValue"}];
        [v10 appendFormat:@"<DeltaOffsetMI>%f</DeltaOffsetMI>, ", OUTLINED_FUNCTION_0_93(v14)];
        [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB48), "floatValue"}];
        [v10 appendFormat:@"<DeltaOffsetFATP>%f</DeltaOffsetFATP>, ", OUTLINED_FUNCTION_0_93(v15)];
        v16 = *MEMORY[0x1E695E8B8];
        v17 = *MEMORY[0x1E695E898];
        v18 = CFPreferencesCopyValue(@"AutoFocusPositionSensorMonitorInfo", @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
        if ([info isEqualToString:*off_1E798A0C0])
        {
          v19 = @"BackLastSessionOffset";
        }

        else if ([info isEqualToString:*off_1E798A0D0])
        {
          v19 = @"BackSuperWideLastSessionOffset";
        }

        else
        {
          v19 = @"BackTelephotoLastSessionOffset";
        }

        [objc_msgSend(v18 objectForKeyedSubscript:{v19), "floatValue"}];
        [v10 appendFormat:@"<DeltaOffsetLastSession>%f</DeltaOffsetLastSession>, ", OUTLINED_FUNCTION_0_93(v12 - v20)];
        v21 = *off_1E798AB80;
        if ([objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB80), "intValue"}])
        {
          value = 0;
        }

        else
        {
          if (v18)
          {
            v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v18];
          }

          else
          {
            v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          valuea = v22;
          *&v23 = v12;
          v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
          [OUTLINED_FUNCTION_8_47(v24 v25];
          CFPreferencesSetValue(@"AutoFocusPositionSensorMonitorInfo", value, @"com.apple.cameracapture.volatile", v16, v17);
          CFPreferencesSynchronize(@"com.apple.cameracapture.volatile", v16, v17);
        }

        [v10 appendFormat:@"<InSessionStatus>%d</InSessionStatus>, ", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", v21), "intValue")];
        [v10 appendFormat:@"<StartupAPSVoltage>%d</StartupAPSVoltage>, ", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798AB98), "intValue")];
        [v10 appendFormat:@"<AFMode>%d</AFMode>", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798AB28), "intValue")];
        [v10 appendString:@"\n"];
        [v10 dataUsingEncoding:4];
        [OUTLINED_FUNCTION_17() writeData:?];
        [v7 closeFile];

        goto LABEL_17;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }
  }

  value = 0;
  v18 = 0;
LABEL_17:
}

- (void)_getLogFileHandle
{
  if (!self)
  {
    return 0;
  }

  v10 = 0;
  v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [MEMORY[0x1E695DFE8] localTimeZone];
  [OUTLINED_FUNCTION_17() setTimeZone:?];
  [v1 setDateFormat:@"yyyy-MM-dd"];
  [MEMORY[0x1E695DF00] date];
  v2 = [OUTLINED_FUNCTION_17() stringFromDate:?];
  if (FigCaptureCameracapturedEnabled())
  {
    v3 = @"cameracaptured";
  }

  else
  {
    v3 = @"mediaserverd";
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-capture-NOT-A-CRASH.afdebug-%@.txt", v3, v2];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/private/var/mobile/Library/Logs/CrashReporter/%@", v3];
  [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v5, v4];
  if (!v10)
  {
    v7 = v6;
    if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
    {
      [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    }

    v8 = [MEMORY[0x1E696AC00] fileHandleForUpdatingAtPath:v7];
    if ([v8 seekToEndOfFile] < 200001)
    {
      goto LABEL_11;
    }

    [v8 closeFile];
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (uint64_t)_appendApsMotionData:(void *)data sphereMotionData:(void *)motionData toDataString:
{
  if (result)
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB20), "floatValue"}];
    [motionData appendFormat:@"<AFStd>%f</AFStd>, ", OUTLINED_FUNCTION_0_93(v7)];
    [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB10), "floatValue"}];
    [motionData appendFormat:@"<AFMax>%f</AFMax>, ", OUTLINED_FUNCTION_0_93(v8)];
    [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798AB18), "floatValue"}];
    [motionData appendFormat:@"<AFMin>%f</AFMin>, ", OUTLINED_FUNCTION_0_93(v9)];
    [objc_msgSend(data objectForKeyedSubscript:{*off_1E798C460), "floatValue"}];
    [motionData appendFormat:@"<OISStd>%f</OISStd>, ", OUTLINED_FUNCTION_0_93(v10)];
    [objc_msgSend(data objectForKeyedSubscript:{*off_1E798C450), "floatValue"}];
    [motionData appendFormat:@"<OISMax>%f</OISMax>, ", OUTLINED_FUNCTION_0_93(v11)];
    [objc_msgSend(data objectForKeyedSubscript:{*off_1E798C458), "floatValue"}];
    return [motionData appendFormat:@"<OISMin>%f</OISMin>, ", OUTLINED_FUNCTION_0_93(v12)];
  }

  return result;
}

@end