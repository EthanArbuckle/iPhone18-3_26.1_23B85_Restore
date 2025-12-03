@interface FigCaptureAutoFocusPositionSensorCalibrationContext
+ (id)calibrationDataStringForInternalLogging:(id)logging;
+ (id)createRawStreamCalibrationDataWithFailureReasons:(int)reasons;
+ (unsigned)calibrationStatusFromRawStreamCalibrationData:(id)data;
+ (void)printDebugInfoForRawStreamCalibrationData:(id)data;
+ (void)setStatusForCalibrationData:(id)data status:(int)status;
- (BOOL)_calibrationDataCompassHeadingHasMovedPastMinimum:(id)minimum basedOnCalibrationHistory:(id)history;
- (BOOL)_calibrationDataIsWithinIStopZEstimateLimits:(id)limits basedOnCalibrationHistory:(id)history;
- (BOOL)_shouldRejectCalibrationData:(id)data;
- (FigCaptureAutoFocusPositionSensorCalibrationContext)initWithSupportedDeviceNames:(id)names;
- (id)_initForUnitTests;
- (id)calibrationDataHistory;
- (int)currentIStopZEstimateDeltaForPosition:(id)position;
- (int)passingIStopZEstimateDeltaForPosition:(id)position;
- (int)previousIStopZEstimateDeltaForPosition:(id)position;
- (uint64_t)_ensureIStopZEstimateDeltasForKey:(uint64_t)result;
- (void)_pushToCalibrationHistoryQueue:(id)queue;
- (void)_updateIStopZEstimateDelta:(void *)result;
- (void)pushCalibrationDataToHistory:(id)history isRejected:(BOOL *)rejected;
- (void)reportLoggingWithCalibrationData:(id)data isValid:(BOOL)valid magneticFieldMagnitude:(double)magnitude;
- (void)setLastSuccessfulCalibrationData:(id)data;
@end

@implementation FigCaptureAutoFocusPositionSensorCalibrationContext

+ (void)printDebugInfoForRawStreamCalibrationData:(id)data
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  [data getBytes:v3 length:120];
}

- (void)reportLoggingWithCalibrationData:(id)data isValid:(BOOL)valid magneticFieldMagnitude:(double)magnitude
{
  if (!data)
  {
    [FigCaptureAutoFocusPositionSensorCalibrationContext reportLoggingWithCalibrationData:isValid:magneticFieldMagnitude:];
    return;
  }

  dataCopy = data;
  if (valid)
  {
    v7 = @"com.apple.coremedia.camera.aps.fieldcal.NumCalSuccesses";
  }

  else
  {
    v7 = 0;
  }

  v8 = +[BWAggdDataReporter sharedInstance];
  [objc_msgSend(dataCopy objectForKeyedSubscript:{0x1F21A4530), "doubleValue"}];
  [BWAggdDataReporter reportCalibrationStatisticsWithTime:v8 timeValue:"reportCalibrationStatisticsWithTime:timeValue:attemptsField:attemptsValue:successField:successValue:magneticFieldMagnitudeField:magneticFieldMagnitudeValue:" attemptsField:@"com.apple.coremedia.camera.aps.fieldcal.time" attemptsValue:@"com.apple.coremedia.camera.aps.fieldcal.NumCalAttempts" successField:1 successValue:v7 magneticFieldMagnitudeField:1 magneticFieldMagnitudeValue:@"com.apple.coremedia.camera.aps.fieldcal.fieldMagnitude"];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v9 = [dataCopy countByEnumeratingWithState:&v58 objects:v57 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v59;
    v32 = *v59;
    v33 = dataCopy;
    do
    {
      v12 = 0;
      v35 = v10;
      do
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(dataCopy);
        }

        v13 = *(*(&v58 + 1) + 8 * v12);
        if (([v13 isEqualToString:0x1F21836D0] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", 0x1F2183E10))
        {
          v14 = [dataCopy objectForKeyedSubscript:v13];
          if (v14)
          {
            v15 = v14;
            v16 = [v13 isEqualToString:0x1F21836D0];
            *v56 = 0;
            if (v16)
            {
              v17 = 1;
            }

            else
            {
              v17 = 2;
            }

            v45 = v17;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            [v15 getBytes:&v49 length:120];
            v43 = SWORD3(v49);
            v44 = SWORD2(v49);
            v41 = DWORD2(v50);
            v42 = v53;
            v18 = HIDWORD(v52);
            v40 = WORD5(v49);
            v39 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_iStopZEstimateDeltaHistory objectForKeyedSubscript:{v13), "lastPassingIStopZEstimateDelta"}];
            v38 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_iStopZEstimateDeltaHistory objectForKeyedSubscript:{v13), "currentIStopZEstimateDelta"}];
            v37 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_iStopZEstimateDeltaHistory objectForKeyedSubscript:{v13), "previousIStopZEstimateDelta"}];
            currentAngleDelta = self->_currentAngleDelta;
            previousAngleDelta = self->_previousAngleDelta;
            v47 = 0;
            v48 = 0;
            v46 = 0;
            if (v49)
            {
              HIDWORD(v48) = HIDWORD(v55);
              LODWORD(v48) = *(&v55 + 1);
              HIDWORD(v47) = *(&v55 + 2);
              LODWORD(v47) = *(&v54 + 3);
              HIDWORD(v46) = v56[0];
              if (v49 == 2)
              {
                v36 = &v46;
                v21 = &v46 + 4;
                LODWORD(v46) = v56[1];
                goto LABEL_23;
              }

              if (v49 < 3u)
              {
                v36 = 0;
                v21 = &v46 + 4;
LABEL_23:
                v25 = &v47;
                v24 = &v47 + 4;
                v23 = &v48;
                v22 = &v48 + 4;
              }

              else
              {
                v26 = v18;
                FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v29 = _os_log_send_and_compose_impl();
                FigCapturePleaseFileRadar(FrameworkRadarComponent, v29, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSource/CaptureCalibration/FigCaptureAutoFocusPositionSensorCalibrationContext.m", 238, @"LastShownDate:FigCaptureAutoFocusPositionSensorCalibrationContext.m:238", @"LastShownBuild:FigCaptureAutoFocusPositionSensorCalibrationContext.m:238", 0);
                free(v29);
                v36 = 0;
                v21 = &v46 + 4;
                v25 = &v47;
                v24 = &v47 + 4;
                v23 = &v48;
                v22 = &v48 + 4;
                v18 = v26;
              }
            }

            else
            {
              v22 = 0;
              v23 = 0;
              v24 = 0;
              v25 = 0;
              v21 = 0;
              v36 = 0;
            }

            BYTE1(v31) = BYTE1(v18) & 1;
            LOBYTE(v31) = valid;
            HIDWORD(v30) = v39;
            LOWORD(v30) = v40;
            [+[BWAggdDataReporter sharedInstance](BWAggdDataReporter reportAutoFocusPositionSensorCalibrationForPosition:"reportAutoFocusPositionSensorCalibrationForPosition:iStopZEstimate:eSensorOutput:wSensorOutput:gravityZ:calibrationStatus:sensorTemp:successfulInfinityEndStopDelta:currentInfinityEndStopDelta:previousInfinityEndStopDelta:currentAngleDelta:previousAngleDelta:factoryCalibrationOffset:estimatedNeutralZ:deltaNeutralZFromNVM:estimatedSagZ:combinedSensorOutput:deltaSagFromNVM:isValid:dataWasRejectedByHistory:" iStopZEstimate:v45 eSensorOutput:v41 wSensorOutput:v44 gravityZ:v43 calibrationStatus:v42 sensorTemp:v18 successfulInfinityEndStopDelta:v30 currentInfinityEndStopDelta:__PAIR64__(v37 previousInfinityEndStopDelta:v38) currentAngleDelta:__PAIR64__(previousAngleDelta previousAngleDelta:currentAngleDelta) factoryCalibrationOffset:v22 estimatedNeutralZ:v23 deltaNeutralZFromNVM:v24 estimatedSagZ:v25 combinedSensorOutput:v21 deltaSagFromNVM:v36 isValid:v31 dataWasRejectedByHistory:?];
            v11 = v32;
            dataCopy = v33;
            v10 = v35;
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [dataCopy countByEnumeratingWithState:&v58 objects:v57 count:16];
    }

    while (v10);
  }
}

+ (unsigned)calibrationStatusFromRawStreamCalibrationData:(id)data
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  memset(v4, 0, sizeof(v4));
  [data getBytes:v4 length:120];
  return HIDWORD(v5);
}

+ (id)calibrationDataStringForInternalLogging:(id)logging
{
  if (logging)
  {
    string = [MEMORY[0x1E696AD60] string];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = [logging countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v31;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v31 != v7)
          {
            objc_enumerationMutation(logging);
          }

          v9 = *(*(&v30 + 1) + 8 * i);
          if (([v9 isEqualToString:0x1F21836D0] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", 0x1F2183E10))
          {
            v10 = [logging objectForKeyedSubscript:v9];
            if (v10)
            {
              *v28 = 0;
              v26 = 0u;
              v27 = 0u;
              v25 = 0u;
              v23 = 0u;
              memset(v24, 0, sizeof(v24));
              v22 = 0u;
              [v10 getBytes:&v22 length:120];
              v11 = v22;
              v20 = *(v24 + 8);
              v21 = WORD4(v24[1]);
              v12 = HIDWORD(v24[1]);
              [string appendFormat:@"%@, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, ", v9, v22, SWORD2(v22), SWORD3(v22), SWORD4(v22), SWORD5(v22), HIDWORD(v22), v23, SWORD2(v23), SWORD3(v23), DWORD2(v23), HIDWORD(v23), LODWORD(v24[0]), DWORD1(v24[0]), v25];
              if (v11)
              {
                v13 = *(&v26 + 4);
                v14 = *(&v27 + 2);
                v15 = *(&v26 + 3);
                v16 = *(&v27 + 1);
                v17 = v28[0];
                v18 = HIDWORD(v27);
                [string appendFormat:@"%f, %f, %f, %f ", *(&v25 + 1), *(&v25 + 2), *(&v25 + 3), *&v26];
                [string appendFormat:@"%f, %f, ", *&v13, *(&v13 + 1)];
                [string appendFormat:@"%f, %f, %f, %d, %f, ", v15, v14, v16, v18, v17];
                if (v11 == 2)
                {
                  [string appendFormat:@"%f, ", v28[1]];
                }
              }

              [string appendFormat:@"%s, %d, ", &v20, v12];
            }
          }
        }

        v6 = [logging countByEnumeratingWithState:&v30 objects:v29 count:16];
      }

      while (v6);
    }
  }

  else
  {
    +[FigCaptureAutoFocusPositionSensorCalibrationContext calibrationDataStringForInternalLogging:];
    return 0;
  }

  return string;
}

+ (id)createRawStreamCalibrationDataWithFailureReasons:(int)reasons
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  memset(v4, 0, sizeof(v4));
  HIDWORD(v5) = reasons | 1;
  return [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:120];
}

+ (void)setStatusForCalibrationData:(id)data status:(int)status
{
  if (data)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allKeys = [data allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          if (([v11 isEqualToString:0x1F21836D0] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", 0x1F2183E10))
          {
            v12 = [data objectForKeyedSubscript:v11];
            v18 = 0;
            v16 = 0u;
            v17 = 0u;
            v14 = 0u;
            v15 = 0u;
            memset(v13, 0, sizeof(v13));
            [v12 getBytes:v13 length:120];
            if (LOWORD(v13[0]) <= 2u)
            {
              HIDWORD(v14) = status;
            }

            [data setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", v13, 120), v11}];
          }
        }

        v8 = [allKeys countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    +[FigCaptureAutoFocusPositionSensorCalibrationContext setStatusForCalibrationData:status:];
  }
}

- (FigCaptureAutoFocusPositionSensorCalibrationContext)initWithSupportedDeviceNames:(id)names
{
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v6 = FigGetCFPreferenceNumberWithDefault();
  v7 = *off_1E798BCB8;
  v24.receiver = self;
  v24.super_class = FigCaptureAutoFocusPositionSensorCalibrationContext;
  v8 = [(FigCaptureCalibrationContext *)&v24 initWithPreferenceString:@"AutoFocusPositionSensorCalibrationData" withActivityName:@"com.apple.coremedia.aps.calibration" withPropertyName:v7 withExpectedDataSize:120 withInterval:CFPreferenceNumberWithDefault withMinimumBatteryLevel:v6 withInternalLogName:@"apscal" supportedDeviceNames:names];
  if (v8)
  {
    v23[0] = @"aps_cal_data";
    v23[1] = @"aps_cal_attempts";
    v23[2] = @"aps_cal_lastsuccess";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
    v10 = *MEMORY[0x1E695E8B8];
    v11 = *MEMORY[0x1E695E898];
    v12 = CFPreferencesCopyMultiple(v9, @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if ([(__CFDictionary *)v12 count])
    {
      v13 = [(__CFDictionary *)v12 objectForKeyedSubscript:@"aps_cal_data"];
      v14 = [(__CFDictionary *)v12 objectForKeyedSubscript:@"aps_cal_lastsuccess"];
      if (v13)
      {
        v15 = v14;
        v22.receiver = v8;
        v22.super_class = FigCaptureAutoFocusPositionSensorCalibrationContext;
        [(FigCaptureCalibrationContext *)&v22 setLastSuccessfulCalibrationData:v13];
        if (v15)
        {
          [v15 doubleValue];
          v21.receiver = v8;
          v21.super_class = FigCaptureAutoFocusPositionSensorCalibrationContext;
          [(FigCaptureCalibrationContext *)&v21 setLastSuccessfulCalibrationTimeStamp:?];
        }
      }

      v8->_shouldDeleteOldVersion = 1;
    }

    v16 = CFPreferencesCopyValue(@"AutoFocusPositionSensorCalibrationData", @"com.apple.cameracapture.volatile", v10, v11);
    v8->_maxHistoryBuffer = 2;
    v17 = [objc_msgSend(v16 objectForKeyedSubscript:{0x1F21A45B0), "mutableCopy"}];
    v8->_calibrationDataHistoryQueue = v17;
    if (v17)
    {
      if ([(NSMutableArray *)v17 count]> v8->_maxHistoryBuffer)
      {
        [(NSMutableArray *)v8->_calibrationDataHistoryQueue removeObjectsInRange:0, [(NSMutableArray *)v8->_calibrationDataHistoryQueue count]- v8->_maxHistoryBuffer];
      }
    }

    else
    {
      v8->_calibrationDataHistoryQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20.receiver = v8;
      v20.super_class = FigCaptureAutoFocusPositionSensorCalibrationContext;
      lastSuccessfulCalibrationData = [(FigCaptureCalibrationContext *)&v20 lastSuccessfulCalibrationData];
      if (lastSuccessfulCalibrationData)
      {
        [(NSMutableArray *)v8->_calibrationDataHistoryQueue addObject:lastSuccessfulCalibrationData];
      }
    }

    v8->_maxIStopZEstimateDifference = 10;
    v8->_minCompassHeadingChange = 5;

    v8->_iStopZEstimateDeltaHistory = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v8;
}

- (void)pushCalibrationDataToHistory:(id)history isRejected:(BOOL *)rejected
{
  if (rejected)
  {
    *rejected = [(FigCaptureAutoFocusPositionSensorCalibrationContext *)self _shouldRejectCalibrationData:history];
  }

  [(FigCaptureAutoFocusPositionSensorCalibrationContext *)self _pushToCalibrationHistoryQueue:history];
}

- (id)calibrationDataHistory
{
  v2 = [(NSMutableArray *)self->_calibrationDataHistoryQueue copy];

  return v2;
}

- (void)setLastSuccessfulCalibrationData:(id)data
{
  [(FigCaptureAutoFocusPositionSensorCalibrationContext *)self _updateIStopZEstimateDelta:data];
  v7.receiver = self;
  v7.super_class = FigCaptureAutoFocusPositionSensorCalibrationContext;
  [(FigCaptureCalibrationContext *)&v7 setLastSuccessfulCalibrationData:data];
  if (self->_shouldDeleteOldVersion)
  {
    v5 = *MEMORY[0x1E695E8B8];
    v6 = *MEMORY[0x1E695E898];
    CFPreferencesSetValue(@"aps_cal_data", 0, @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    CFPreferencesSetValue(@"aps_cal_attempts", 0, @"com.apple.cameracapture.volatile", v5, v6);
    CFPreferencesSetValue(@"aps_cal_lastsuccess", 0, @"com.apple.cameracapture.volatile", v5, v6);
    self->_shouldDeleteOldVersion = 0;
  }
}

- (id)_initForUnitTests
{
  v5.receiver = self;
  v5.super_class = FigCaptureAutoFocusPositionSensorCalibrationContext;
  v2 = [(FigCaptureCalibrationContext *)&v5 initWithPreferenceString:@"fakeprefstring" withActivityName:0 withPropertyName:0 withExpectedDataSize:0 withInterval:0 withMinimumBatteryLevel:0 withInternalLogName:0 supportedDeviceNames:0];
  v3 = v2;
  if (v2)
  {
    v2->_maxHistoryBuffer = 2;
    v2->_maxIStopZEstimateDifference = 10;
    v2->_minCompassHeadingChange = 5;
    v2->_calibrationDataHistoryQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_iStopZEstimateDeltaHistory = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v3;
}

- (void)_pushToCalibrationHistoryQueue:(id)queue
{
  [(NSMutableArray *)self->_calibrationDataHistoryQueue addObject:queue];
  if ([(NSMutableArray *)self->_calibrationDataHistoryQueue count]> self->_maxHistoryBuffer)
  {
    calibrationDataHistoryQueue = self->_calibrationDataHistoryQueue;
    v5 = [(NSMutableArray *)calibrationDataHistoryQueue count]- self->_maxHistoryBuffer;

    [(NSMutableArray *)calibrationDataHistoryQueue removeObjectsInRange:0, v5];
  }
}

- (BOOL)_shouldRejectCalibrationData:(id)data
{
  if (self->_disableHistoryChecking)
  {
    return 0;
  }

  calibrationDataHistoryQueue = self->_calibrationDataHistoryQueue;
  v7 = [(FigCaptureAutoFocusPositionSensorCalibrationContext *)self _calibrationDataIsWithinIStopZEstimateLimits:data basedOnCalibrationHistory:calibrationDataHistoryQueue];
  return v7 & [(FigCaptureAutoFocusPositionSensorCalibrationContext *)self _calibrationDataCompassHeadingHasMovedPastMinimum:data basedOnCalibrationHistory:calibrationDataHistoryQueue]^ 1;
}

- (int)passingIStopZEstimateDeltaForPosition:(id)position
{
  v3 = [(NSMutableDictionary *)self->_iStopZEstimateDeltaHistory objectForKeyedSubscript:position];

  return [v3 lastPassingIStopZEstimateDelta];
}

- (int)previousIStopZEstimateDeltaForPosition:(id)position
{
  v3 = [(NSMutableDictionary *)self->_iStopZEstimateDeltaHistory objectForKeyedSubscript:position];

  return [v3 previousIStopZEstimateDelta];
}

- (int)currentIStopZEstimateDeltaForPosition:(id)position
{
  v3 = [(NSMutableDictionary *)self->_iStopZEstimateDeltaHistory objectForKeyedSubscript:position];

  return [v3 currentIStopZEstimateDelta];
}

- (void)_updateIStopZEstimateDelta:(void *)result
{
  v30 = result;
  if (result)
  {
    if (a2)
    {
      lastSuccessfulCalibrationData = [result lastSuccessfulCalibrationData];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      result = OUTLINED_FUNCTION_3_48(lastSuccessfulCalibrationData, v4, v5, v6, v7, v8, v9, v10, v26, v28, v30, v32, v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v41, v42, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1), v48, *(&v48 + 1), v49, *(&v49 + 1), v50, v51, v52);
      if (result)
      {
        v11 = result;
        v12 = *v54;
        do
        {
          v13 = 0;
          do
          {
            if (*v54 != v12)
            {
              objc_enumerationMutation(a2);
            }

            v14 = *(*(&v53 + 1) + 8 * v13);
            if (([v14 isEqualToString:0x1F21836D0] & 1) != 0 || (v15 = objc_msgSend(v14, "isEqualToString:", 0x1F2183E10), v15))
            {
              v23 = [lastSuccessfulCalibrationData objectForKeyedSubscript:v14];
              v15 = [a2 objectForKeyedSubscript:v14];
              if (v23)
              {
                v24 = v15;
                if (v15)
                {
                  v50 = 0;
                  v48 = 0u;
                  v49 = 0u;
                  v46 = 0u;
                  v47 = 0u;
                  v44 = 0u;
                  v45 = 0u;
                  v43 = 0u;
                  [v23 getBytes:&v43 length:120];
                  v41 = 0;
                  v39 = 0u;
                  v40 = 0u;
                  v37 = 0u;
                  v38 = 0u;
                  v35 = 0u;
                  v36 = 0u;
                  v34 = 0u;
                  [v24 getBytes:&v34 length:120];
                  HIDWORD(v33) = DWORD2(v44);
                  v25 = DWORD2(v35);
                  [(FigCaptureAutoFocusPositionSensorCalibrationContext *)v31 _ensureIStopZEstimateDeltasForKey:v14];
                  v15 = [objc_msgSend(*(v31 + 112) objectForKeyedSubscript:{v14), "setLastPassingIStopZEstimateDelta:", (v25 - HIDWORD(v33))}];
                }
              }
            }

            v13 = v13 + 1;
          }

          while (v11 != v13);
          result = OUTLINED_FUNCTION_3_48(v15, v16, v17, v18, v19, v20, v21, v22, v27, v29, v31, v33, v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v41, v42, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1), v48, *(&v48 + 1), v49, *(&v49 + 1), v50, v51, v52);
          v11 = result;
        }

        while (result);
      }
    }

    else
    {
      fig_log_get_emitter();
      return FigDebugAssert3();
    }
  }

  return result;
}

- (uint64_t)_ensureIStopZEstimateDeltasForKey:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    result = [*(result + 112) objectForKeyedSubscript:a2];
    if (!result)
    {
      v4 = objc_alloc_init(FigCaptureAutoFocusPositionSensorCalibrationIStopZEstimateDeltaHistory);
      v5 = *(v3 + 112);

      return [v5 setObject:v4 forKeyedSubscript:a2];
    }
  }

  return result;
}

- (BOOL)_calibrationDataIsWithinIStopZEstimateLimits:(id)limits basedOnCalibrationHistory:(id)history
{
  v44 = v6;
  if (OUTLINED_FUNCTION_2_57(self, a2, limits, history) == *(v6 + 144))
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v7 = [v4 countByEnumeratingWithState:&v83 objects:v82 count:16];
    v41 = v7;
    if (v7)
    {
      obj = v4;
      v15 = 0;
      HIDWORD(v43) = 0;
      v40 = *v84;
      do
      {
        v16 = 0;
        HIDWORD(v38) = v15;
        LODWORD(v43) = v15;
        do
        {
          if (*v84 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v83 + 1) + 8 * v16);
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v7 = OUTLINED_FUNCTION_1_62(v7, v8, v9, v10, v11, v12, v13, v14, v37, v38, obj, v40, v41, v16, v43, v44, v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1), v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1), v51, *(&v51 + 1), v52, v53, v54, *(&v54 + 1), v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v59, *(&v59 + 1), v60, *(&v60 + 1), v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
          if (v7)
          {
            v18 = v7;
            v19 = *v79;
            do
            {
              v20 = 0;
              do
              {
                if (*v79 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(*(&v78 + 1) + 8 * v20);
                if (([v21 isEqualToString:0x1F21836D0] & 1) != 0 || (v22 = objc_msgSend(v21, "isEqualToString:", 0x1F2183E10), v22))
                {
                  v30 = [v17 objectForKeyedSubscript:v21];
                  v22 = [v5 objectForKeyedSubscript:v21];
                  if (v30)
                  {
                    v31 = v22;
                    if (v22)
                    {
                      v61 = 0;
                      v59 = 0u;
                      v60 = 0u;
                      v57 = 0u;
                      v58 = 0u;
                      v55 = 0u;
                      v56 = 0u;
                      v54 = 0u;
                      [v30 getBytes:&v54 length:120];
                      v52 = 0;
                      v50 = 0u;
                      v51 = 0u;
                      v48 = 0u;
                      v49 = 0u;
                      v46 = 0u;
                      v47 = 0u;
                      v45 = 0u;
                      [v31 getBytes:&v45 length:120];
                      v32 = (DWORD2(v46) - DWORD2(v55));
                      if (v32 / 255 >= 0)
                      {
                        v33 = v32 / 255;
                      }

                      else
                      {
                        v33 = v32 / -255;
                      }

                      v22 = [(FigCaptureAutoFocusPositionSensorCalibrationContext *)v44 _ensureIStopZEstimateDeltasForKey:v21];
                      if (v43 == 1)
                      {
                        v22 = [objc_msgSend(*(v44 + 112) objectForKeyedSubscript:{v21), "setCurrentIStopZEstimateDelta:", v32}];
                      }

                      else if (!v43)
                      {
                        v22 = [objc_msgSend(*(v44 + 112) objectForKeyedSubscript:{v21), "setPreviousIStopZEstimateDelta:", v32}];
                      }

                      v34 = (v43 & 0x100000000) != 0 || v33 > *(v44 + 152);
                      HIDWORD(v43) = v34;
                    }
                  }
                }

                ++v20;
              }

              while (v18 != v20);
              v7 = OUTLINED_FUNCTION_1_62(v22, v23, v24, v25, v26, v27, v28, v29, v37, v38, obj, v40, v41, v42, v43, v44, v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1), v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1), v51, *(&v51 + 1), v52, v53, v54, *(&v54 + 1), v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v59, *(&v59 + 1), v60, *(&v60 + 1), v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
              v18 = v7;
            }

            while (v7);
          }

          LODWORD(v43) = v43 + 1;
          v16 = v42 + 1;
        }

        while (v42 + 1 != v41);
        v15 = HIDWORD(v38) + v41;
        v7 = [obj countByEnumeratingWithState:&v83 objects:v82 count:16];
        v41 = v7;
      }

      while (v7);
      v35 = BYTE4(v43) ^ 1;
    }

    else
    {
      v35 = 1;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35 & 1;
}

- (BOOL)_calibrationDataCompassHeadingHasMovedPastMinimum:(id)minimum basedOnCalibrationHistory:(id)history
{
  if (OUTLINED_FUNCTION_2_57(self, a2, minimum, history) != *(v6 + 144))
  {
    v18 = 0;
    return v18 & 1;
  }

  if (![v4 count])
  {
    v18 = 1;
    return v18 & 1;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = [v4 objectAtIndexedSubscript:v7];
    v10 = v5;
    if (v7 != [v4 count] - 1)
    {
      v10 = [v4 objectAtIndexedSubscript:v7 + 1];
    }

    v11 = [v9 objectForKeyedSubscript:0x1F21A4590];
    v12 = [v10 objectForKeyedSubscript:0x1F21A4590];
    if (v11)
    {
      v13 = v12;
      if (v12)
      {
        v23 = 0.0;
        v24 = 0.0;
        v25 = 0.0;
        [v11 getBytes:&v23 length:24];
        v20 = 0.0;
        v21 = 0.0;
        v22 = 0.0;
        [v13 getBytes:&v20 length:24];
        v14 = sqrt(v24 * v24 + v23 * v23 + v25 * v25);
        v15 = sqrt(v21 * v21 + v20 * v20 + v22 * v22);
        v16 = acos(v24 / v14 * (v21 / v15) + v20 / v15 * (v23 / v14) + v22 / v15 * (v25 / v14)) * 57.2957795;
        if (v7)
        {
          if (v7 != 1)
          {
LABEL_13:
            v8 = v8 || v16 < *(v6 + 156);
            goto LABEL_17;
          }

          v17 = &OBJC_IVAR___FigCaptureAutoFocusPositionSensorCalibrationContext__currentAngleDelta;
        }

        else
        {
          v17 = &OBJC_IVAR___FigCaptureAutoFocusPositionSensorCalibrationContext__previousAngleDelta;
        }

        *(v6 + *v17) = v16;
        goto LABEL_13;
      }
    }

LABEL_17:
    ++v7;
  }

  while ([v4 count] > v7);
  v18 = !v8;
  return v18 & 1;
}

- (uint64_t)reportLoggingWithCalibrationData:isValid:magneticFieldMagnitude:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

+ (uint64_t)calibrationDataStringForInternalLogging:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

+ (uint64_t)setStatusForCalibrationData:status:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end