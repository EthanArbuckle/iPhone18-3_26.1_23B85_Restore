@interface FigCaptureAPSSphereInteractionCalibrationContext
+ (id)calibrationDataStringForInternalLogging:(id)logging;
+ (id)createRawStreamCalibrationDataWithFailureReasons:(int)reasons;
+ (unsigned)calibrationStatusFromRawStreamCalibrationData:(id)data;
+ (void)printDebugInfoForRawStreamCalibrationData:(id)data;
- (FigCaptureAPSSphereInteractionCalibrationContext)initWithSupportedDeviceNames:(id)names;
- (void)reportLoggingWithCalibrationData:(id)data isValid:(BOOL)valid magneticFieldMagnitude:(double)magnitude;
@end

@implementation FigCaptureAPSSphereInteractionCalibrationContext

+ (void)printDebugInfoForRawStreamCalibrationData:(id)data
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  [data getBytes:v3 length:84];
}

- (void)reportLoggingWithCalibrationData:(id)data isValid:(BOOL)valid magneticFieldMagnitude:(double)magnitude
{
  validCopy = valid;
  if (data)
  {
    v7 = +[BWAggdDataReporter sharedInstance];
    [objc_msgSend(data objectForKeyedSubscript:{0x1F21A4530), "doubleValue"}];
    [BWAggdDataReporter reportCalibrationStatisticsWithTime:v7 timeValue:"reportCalibrationStatisticsWithTime:timeValue:attemptsField:attemptsValue:successField:successValue:magneticFieldMagnitudeField:magneticFieldMagnitudeValue:" attemptsField:@"com.apple.coremedia.camera.aps.sphcal.time.s" attemptsValue:0 successField:0 successValue:0 magneticFieldMagnitudeField:0 magneticFieldMagnitudeValue:0];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = [data countByEnumeratingWithState:&v37 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
      v29 = *off_1E798A0C0;
      v28 = *off_1E798A0D8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(data);
          }

          v12 = *(*(&v37 + 1) + 8 * i);
          if (([v12 isEqualToString:0x1F21836D0] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", 0x1F2183E10))
          {
            v13 = [data objectForKeyedSubscript:v12];
            if (v13)
            {
              v14 = v13;
              v15 = [v12 isEqualToString:0x1F21836D0];
              v35 = 0;
              if (v15)
              {
                v16 = 1;
              }

              else
              {
                v16 = 2;
              }

              v33 = 0u;
              v34 = 0u;
              v32 = 0u;
              memset(v31, 0, sizeof(v31));
              if ([v12 isEqualToString:0x1F21836D0])
              {
                v17 = v29;
              }

              else
              {
                v17 = v28;
              }

              [v14 getBytes:v31 length:84];
              v18 = *(&v33 + 4);
              v19 = *(&v32 + 3);
              v20 = *&v33;
              v21 = v35;
              v22 = +[BWAggdDataReporter sharedInstance];
              LODWORD(v23) = v18;
              *&v24 = v19;
              LODWORD(v25) = HIDWORD(v18);
              *&v26 = v20;
              [(BWAggdDataReporter *)v22 reportAPSSphereInteractionCalibrationForPosition:v16 residualErrorNeutral:v21 calibrationZHeightNeutral:validCopy residualErrorMacro:v23 calibrationZHeightMacro:v24 calibrationStatus:v25 isValid:v26];
              v27 = objc_alloc_init(BWSphereInteractionCalibrationAnalyticsPayload);
              [(BWSphereInteractionCalibrationAnalyticsPayload *)v27 setMagneticFieldMagnitude:magnitude];
              [(BWSphereInteractionCalibrationAnalyticsPayload *)v27 setPortType:v17];
              [(BWSphereInteractionCalibrationAnalyticsPayload *)v27 setCalibrationStatus:v21];
              [(BWSphereInteractionCalibrationAnalyticsPayload *)v27 setSphereNeutralPositionError:*&v18];
              [(BWSphereInteractionCalibrationAnalyticsPayload *)v27 setSphereNeutralPosition:v19];
              [(BWSphereInteractionCalibrationAnalyticsPayload *)v27 setSphereMacroPositionError:*(&v18 + 1)];
              [(BWSphereInteractionCalibrationAnalyticsPayload *)v27 setSphereMacroPosition:v20];
              [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", v27];
            }
          }
        }

        v9 = [data countByEnumeratingWithState:&v37 objects:v36 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [FigCaptureAPSSphereInteractionCalibrationContext reportLoggingWithCalibrationData:isValid:magneticFieldMagnitude:];
  }
}

+ (unsigned)calibrationStatusFromRawStreamCalibrationData:(id)data
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  [data getBytes:v4 length:84];
  return v5;
}

+ (id)calibrationDataStringForInternalLogging:(id)logging
{
  if (logging)
  {
    string = [MEMORY[0x1E696AD60] string];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [logging countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(logging);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          if (([v9 isEqualToString:0x1F21836D0] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", 0x1F2183E10))
          {
            v10 = [logging objectForKeyedSubscript:v9];
            if (v10)
            {
              v18 = 0;
              memset(v17, 0, sizeof(v17));
              v15 = 0u;
              v16 = 0u;
              v14 = 0u;
              [v10 getBytes:&v14 length:84];
              v12 = *(v17 + 12);
              v13 = WORD6(v17[1]);
              [string appendFormat:@"%@, %d, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %s, %d, ", v9, v14, *(&v14 + 1), *(&v14 + 2), *(&v14 + 3), *&v15, *(&v15 + 1), *(&v15 + 2), *(&v15 + 3), *&v16, *(&v16 + 1), *(&v16 + 2), *(&v16 + 3), *v17, *(v17 + 1), *(v17 + 2), &v12, v18];
            }
          }
        }

        v6 = [logging countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v6);
    }
  }

  else
  {
    +[FigCaptureAPSSphereInteractionCalibrationContext calibrationDataStringForInternalLogging:];
    return 0;
  }

  return string;
}

+ (id)createRawStreamCalibrationDataWithFailureReasons:(int)reasons
{
  memset(v4, 0, sizeof(v4));
  v5 = reasons | 1;
  return [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:84];
}

- (FigCaptureAPSSphereInteractionCalibrationContext)initWithSupportedDeviceNames:(id)names
{
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v6 = FigGetCFPreferenceNumberWithDefault();
  v7 = *off_1E798BCD8;
  v9.receiver = self;
  v9.super_class = FigCaptureAPSSphereInteractionCalibrationContext;
  return [(FigCaptureCalibrationContext *)&v9 initWithPreferenceString:@"APSSphereInteractionCalibrationData" withActivityName:@"com.apple.coremedia.apssphere.calibration" withPropertyName:v7 withExpectedDataSize:84 withInterval:CFPreferenceNumberWithDefault withMinimumBatteryLevel:v6 withInternalLogName:@"apsspherecal" supportedDeviceNames:names];
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

@end