@interface FigCaptureAutoFocusCalibrationContext
+ (id)calibrationDataStringForInternalLogging:(id)a3;
+ (id)createRawStreamCalibrationDataWithFailureReasons:(int)a3;
+ (unsigned)calibrationStatusFromRawStreamCalibrationData:(id)a3;
- (FigCaptureAutoFocusCalibrationContext)initWithSupportedDeviceNames:(id)a3;
- (void)reportLoggingWithCalibrationData:(id)a3 isValid:(BOOL)a4 magneticFieldMagnitude:(double)a5;
@end

@implementation FigCaptureAutoFocusCalibrationContext

- (void)reportLoggingWithCalibrationData:(id)a3 isValid:(BOOL)a4 magneticFieldMagnitude:(double)a5
{
  if (a3)
  {
    v6 = a3;
    v7 = +[BWAggdDataReporter sharedInstance];
    [objc_msgSend(v6 objectForKeyedSubscript:{0x1F21A4530), "doubleValue"}];
    [BWAggdDataReporter reportCalibrationStatisticsWithTime:v7 timeValue:"reportCalibrationStatisticsWithTime:timeValue:attemptsField:attemptsValue:successField:successValue:magneticFieldMagnitudeField:magneticFieldMagnitudeValue:" attemptsField:@"com.apple.coremedia.camera.af.fieldcal.time.s" attemptsValue:0 successField:0 successValue:0 magneticFieldMagnitudeField:0 magneticFieldMagnitudeValue:0];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v46 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v47;
      v31 = *off_1E798A0C0;
      v30 = *off_1E798A0D8;
      v32 = *v47;
      v33 = v6;
      do
      {
        v11 = 0;
        v35 = v9;
        do
        {
          if (*v47 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v46 + 1) + 8 * v11);
          if (([v12 isEqualToString:0x1F21836D0] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", 0x1F2183E10))
          {
            v13 = [v6 objectForKeyedSubscript:v12];
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

              v36 = v15;
              v16 = [v12 isEqualToString:0x1F21836D0];
              v17 = v31;
              if (!v16)
              {
                v17 = v30;
              }

              v38 = v17;
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              [v14 getBytes:&v41 length:64];
              v37 = HIDWORD(v43);
              v39 = 0;
              v40 = 0;
              if (v41 == 1)
              {
                LODWORD(v40) = (*(&v44 + 1) * 10000.0);
                HIDWORD(v40) = (*&v44 * 10000.0);
                LODWORD(v39) = (*(&v44 + 3) * 10000.0);
                HIDWORD(v39) = (*(&v44 + 2) * 10000.0);
                v18 = &v39;
                v19 = &v39 + 4;
                v20 = &v40;
                v21 = &v40 + 4;
              }

              else
              {
                v21 = 0;
                v20 = 0;
                v19 = 0;
                v18 = 0;
              }

              v22 = *(&v41 + 1);
              v23 = *&v42;
              v24 = *(&v41 + 2);
              v25 = *(&v42 + 1);
              v26 = *(&v41 + 3);
              LOBYTE(v29) = a4;
              LODWORD(v28) = HIDWORD(v43);
              [+[BWAggdDataReporter sharedInstance](BWAggdDataReporter reportAutoFocusCalibrationForPosition:"reportAutoFocusCalibrationForPosition:freqZ:deltaFreqZ:qZ:deltaQZ:gainZ:calibrationStatus:gelModelCoefficientD1:gelModelCoefficientD2:gelModelCoefficientP1:gelModelCoefficientP2:isValid:" freqZ:v36 deltaFreqZ:v22 qZ:v23 deltaQZ:v24 gainZ:v25 calibrationStatus:v26 gelModelCoefficientD1:v28 gelModelCoefficientD2:v21 gelModelCoefficientP1:v20 gelModelCoefficientP2:v19 isValid:v18, v29];
              v27 = objc_alloc_init(BWAFResonanceCalibrationAnalyticsPayload);
              [(BWAFResonanceCalibrationAnalyticsPayload *)v27 setMagneticFieldMagnitude:a5];
              [(BWAFResonanceCalibrationAnalyticsPayload *)v27 setPortType:v38];
              [(BWAFResonanceCalibrationAnalyticsPayload *)v27 setCalibrationStatus:v37];
              [(BWAFResonanceCalibrationAnalyticsPayload *)v27 setAfAxisResonantFreq:v22];
              [(BWAFResonanceCalibrationAnalyticsPayload *)v27 setDeltaAFAxisResonantFreq:v23];
              [(BWAFResonanceCalibrationAnalyticsPayload *)v27 setAfAxisDampingCoefficient:v24];
              [(BWAFResonanceCalibrationAnalyticsPayload *)v27 setDeltaAFAxisDampingCoefficient:v25];
              [(BWAFResonanceCalibrationAnalyticsPayload *)v27 setAfLoopGain:v26];
              [(BWAFResonanceCalibrationAnalyticsPayload *)v27 setAfGelModelD1Coefficient:HIDWORD(v40)];
              [(BWAFResonanceCalibrationAnalyticsPayload *)v27 setAfGelModelD2Coefficient:v40];
              [(BWAFResonanceCalibrationAnalyticsPayload *)v27 setAfGelModelP1Coefficient:HIDWORD(v39)];
              [(BWAFResonanceCalibrationAnalyticsPayload *)v27 setAfGelModelP2Coefficient:v39];
              [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", v27];
              v10 = v32;
              v6 = v33;
              v9 = v35;
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v46 objects:v45 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [FigCaptureAutoFocusCalibrationContext reportLoggingWithCalibrationData:isValid:magneticFieldMagnitude:];
  }
}

+ (unsigned)calibrationStatusFromRawStreamCalibrationData:(id)a3
{
  v5 = 0u;
  v6 = 0u;
  memset(v4, 0, sizeof(v4));
  [a3 getBytes:v4 length:64];
  return HIDWORD(v5);
}

+ (id)calibrationDataStringForInternalLogging:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AD60] string];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(a3);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          if (([v9 isEqualToString:0x1F21836D0] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", 0x1F2183E10))
          {
            v10 = [a3 objectForKeyedSubscript:v9];
            if (v10)
            {
              v16 = 0u;
              memset(v15, 0, sizeof(v15));
              [v10 getBytes:v15 length:64];
              v11 = LOWORD(v15[0]);
              v13 = *(&v15[1] + 8);
              v14 = WORD4(v15[2]);
              [v4 appendFormat:@"%@, %d, %f, %f, %f, %f, %f, %s, %d, ", v9, LOWORD(v15[0]), *(v15 + 1), *(v15 + 2), *(v15 + 3), *&v15[1], *(&v15[1] + 1), &v13, HIDWORD(v15[2])];
              if (v11 == 1)
              {
                [v4 appendFormat:@"%f, %f, %f, %f ", *&v16, *(&v16 + 1), *(&v16 + 2), *(&v16 + 3)];
              }
            }
          }
        }

        v6 = [a3 countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    +[FigCaptureAutoFocusCalibrationContext calibrationDataStringForInternalLogging:];
    return 0;
  }

  return v4;
}

+ (id)createRawStreamCalibrationDataWithFailureReasons:(int)a3
{
  v5 = 0u;
  v6 = 0u;
  memset(v4, 0, sizeof(v4));
  HIDWORD(v5) = a3 | 1;
  return [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:64];
}

- (FigCaptureAutoFocusCalibrationContext)initWithSupportedDeviceNames:(id)a3
{
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v6 = FigGetCFPreferenceNumberWithDefault();
  v7 = *off_1E798BC90;
  v9.receiver = self;
  v9.super_class = FigCaptureAutoFocusCalibrationContext;
  return [(FigCaptureCalibrationContext *)&v9 initWithPreferenceString:@"AutoFocusCalibrationData" withActivityName:@"com.apple.coremedia.af.calibration" withPropertyName:v7 withExpectedDataSize:64 withInterval:CFPreferenceNumberWithDefault withMinimumBatteryLevel:v6 withInternalLogName:@"afcal" supportedDeviceNames:a3];
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