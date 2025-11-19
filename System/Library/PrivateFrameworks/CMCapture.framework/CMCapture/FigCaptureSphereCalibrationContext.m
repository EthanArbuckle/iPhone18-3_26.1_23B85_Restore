@interface FigCaptureSphereCalibrationContext
+ (id)calibrationDataStringForInternalLogging:(id)a3;
+ (id)createRawStreamCalibrationDataWithFailureReasons:(int)a3;
+ (unsigned)calibrationStatusFromRawStreamCalibrationData:(id)a3;
+ (void)printDebugInfoForRawStreamCalibrationData:(id)a3;
- (FigCaptureSphereCalibrationContext)initWithSupportedDeviceNames:(id)a3;
- (void)reportLoggingWithCalibrationData:(id)a3 isValid:(BOOL)a4 magneticFieldMagnitude:(double)a5;
@end

@implementation FigCaptureSphereCalibrationContext

+ (void)printDebugInfoForRawStreamCalibrationData:(id)a3
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  [a3 getBytes:v3 length:68];
}

- (void)reportLoggingWithCalibrationData:(id)a3 isValid:(BOOL)a4 magneticFieldMagnitude:(double)a5
{
  v40 = a4;
  if (a3)
  {
    v7 = +[BWAggdDataReporter sharedInstance];
    [objc_msgSend(a3 objectForKeyedSubscript:{0x1F21A4530), "doubleValue"}];
    [BWAggdDataReporter reportCalibrationStatisticsWithTime:v7 timeValue:"reportCalibrationStatisticsWithTime:timeValue:attemptsField:attemptsValue:successField:successValue:magneticFieldMagnitudeField:magneticFieldMagnitudeValue:" attemptsField:@"com.apple.coremedia.camera.sph.fieldcal.time.s" attemptsValue:0 successField:0 successValue:0 magneticFieldMagnitudeField:0 magneticFieldMagnitudeValue:0];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v50 objects:v49 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v51;
      v39 = *off_1E798A0C0;
      v37 = a5;
      v38 = *off_1E798A0D8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v51 != v10)
          {
            objc_enumerationMutation(a3);
          }

          v12 = *(*(&v50 + 1) + 8 * i);
          if (([v12 isEqualToString:0x1F21836D0] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", 0x1F2183E10))
          {
            v13 = [a3 objectForKeyedSubscript:v12];
            if (v13)
            {
              v14 = v13;
              if ([v12 isEqualToString:0x1F21836D0])
              {
                v15 = 1;
              }

              else
              {
                v15 = 2;
              }

              v16 = [v12 isEqualToString:0x1F21836D0];
              v48 = 0;
              if (v16)
              {
                v17 = v39;
              }

              else
              {
                v17 = v38;
              }

              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              [v14 getBytes:&v44 length:68];
              v41 = *(&v44 + 4);
              v19 = *(&v45 + 3);
              v18 = *&v46;
              v20 = *(&v44 + 3);
              v21 = *&v45;
              v22 = DWORD2(v46);
              v23 = *(&v46 + 1);
              v24 = DWORD2(v45);
              v25 = *(&v45 + 1);
              v42 = *(&v46 + 2);
              v43 = *(&v45 + 2);
              v26 = v48;
              v27 = +[BWAggdDataReporter sharedInstance];
              LODWORD(v28) = v41;
              *&v29 = v19;
              LODWORD(v30) = HIDWORD(v41);
              *&v31 = v18;
              *&v32 = v20;
              *&v33 = v21;
              *&v34 = v23;
              *&v35 = v25;
              [(BWAggdDataReporter *)v27 reportSphereCalibrationForPosition:v15 freqX:v26 deltaFreqX:v40 qX:v28 deltaQX:v29 gainX:v30 freqY:v31 deltaFreqY:v32 qY:v33 deltaQY:v34 gainY:v35 calibrationStatus:__PAIR64__(v24 isValid:v22)];
              v36 = objc_alloc_init(BWSphereResonanceCalibrationAnalyticsPayload);
              [(BWSphereResonanceCalibrationAnalyticsPayload *)v36 setMagneticFieldMagnitude:v37];
              [(BWSphereResonanceCalibrationAnalyticsPayload *)v36 setPortType:v17];
              [(BWSphereResonanceCalibrationAnalyticsPayload *)v36 setCalibrationStatus:v26];
              [(BWSphereResonanceCalibrationAnalyticsPayload *)v36 setSphereXAxisResonantFrequency:*&v41];
              [(BWSphereResonanceCalibrationAnalyticsPayload *)v36 setSphereYAxisResonantFrequency:v21];
              [(BWSphereResonanceCalibrationAnalyticsPayload *)v36 setDeltaSphereXAxisResonantFrequency:v19];
              [(BWSphereResonanceCalibrationAnalyticsPayload *)v36 setDeltaSphereYAxisResonantFrequency:v23];
              [(BWSphereResonanceCalibrationAnalyticsPayload *)v36 setSphereXAxisDampingCoefficient:*(&v41 + 1)];
              [(BWSphereResonanceCalibrationAnalyticsPayload *)v36 setSphereYAxisDampingCoefficient:v25];
              [(BWSphereResonanceCalibrationAnalyticsPayload *)v36 setDeltaSphereXAxisDampingCoefficient:v18];
              [(BWSphereResonanceCalibrationAnalyticsPayload *)v36 setDeltaSphereYAxisDampingCoefficient:v42];
              [(BWSphereResonanceCalibrationAnalyticsPayload *)v36 setSphereXAxisLoopGain:v20];
              [(BWSphereResonanceCalibrationAnalyticsPayload *)v36 setSphereYAxisLoopGain:v43];
              [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", v36];
            }
          }
        }

        v9 = [a3 countByEnumeratingWithState:&v50 objects:v49 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [FigCaptureSphereCalibrationContext reportLoggingWithCalibrationData:isValid:magneticFieldMagnitude:];
  }
}

+ (unsigned)calibrationStatusFromRawStreamCalibrationData:(id)a3
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  [a3 getBytes:v4 length:68];
  return v5;
}

+ (id)calibrationDataStringForInternalLogging:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AD60] string];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(a3);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          if (([v9 isEqualToString:0x1F21836D0] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", 0x1F2183E10))
          {
            v10 = [a3 objectForKeyedSubscript:v9];
            if (v10)
            {
              v17 = 0;
              memset(v16, 0, sizeof(v16));
              v14 = 0u;
              v15 = 0u;
              [v10 getBytes:&v14 length:68];
              v12 = *(v16 + 12);
              v13 = WORD6(v16[1]);
              [v4 appendFormat:@"%@, %d, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %s, %d, ", v9, v14, *(&v14 + 1), *(&v14 + 2), *(&v14 + 3), *&v15, *(&v15 + 1), *(&v15 + 2), *(&v15 + 3), *v16, *(v16 + 1), *(v16 + 2), &v12, v17];
            }
          }
        }

        v6 = [a3 countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v6);
    }
  }

  else
  {
    +[FigCaptureSphereCalibrationContext calibrationDataStringForInternalLogging:];
    return 0;
  }

  return v4;
}

+ (id)createRawStreamCalibrationDataWithFailureReasons:(int)a3
{
  memset(v4, 0, sizeof(v4));
  v5 = a3 | 1;
  return [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:68];
}

- (FigCaptureSphereCalibrationContext)initWithSupportedDeviceNames:(id)a3
{
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v6 = FigGetCFPreferenceNumberWithDefault();
  v7 = *off_1E798C160;
  v9.receiver = self;
  v9.super_class = FigCaptureSphereCalibrationContext;
  return [(FigCaptureCalibrationContext *)&v9 initWithPreferenceString:@"SphereCalibrationData" withActivityName:@"com.apple.coremedia.sphere.calibration" withPropertyName:v7 withExpectedDataSize:68 withInterval:CFPreferenceNumberWithDefault withMinimumBatteryLevel:v6 withInternalLogName:@"spherecal" supportedDeviceNames:a3];
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