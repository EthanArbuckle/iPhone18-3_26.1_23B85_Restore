@interface FigCaptureSphereEndStopCalibrationContext
+ (id)calibrationDataStringForInternalLogging:(id)logging;
+ (id)createRawStreamCalibrationDataWithFailureReasons:(int)reasons;
+ (unsigned)calibrationStatusFromRawStreamCalibrationData:(id)data;
- (FigCaptureSphereEndStopCalibrationContext)initWithSupportedDeviceNames:(id)names;
- (void)reportLoggingWithCalibrationData:(id)data isValid:(BOOL)valid magneticFieldMagnitude:(double)magnitude;
@end

@implementation FigCaptureSphereEndStopCalibrationContext

- (void)reportLoggingWithCalibrationData:(id)data isValid:(BOOL)valid magneticFieldMagnitude:(double)magnitude
{
  if (data)
  {
    dataCopy = data;
    v7 = +[BWAggdDataReporter sharedInstance];
    [objc_msgSend(dataCopy objectForKeyedSubscript:{0x1F21A4530), "doubleValue"}];
    [BWAggdDataReporter reportCalibrationStatisticsWithTime:v7 timeValue:"reportCalibrationStatisticsWithTime:timeValue:attemptsField:attemptsValue:successField:successValue:magneticFieldMagnitudeField:magneticFieldMagnitudeValue:" attemptsField:@"com.apple.coremedia.camera.sph.endstopcal.time.s" attemptsValue:0 successField:0 successValue:0 magneticFieldMagnitudeField:0 magneticFieldMagnitudeValue:0];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v8 = [dataCopy countByEnumeratingWithState:&v43 objects:v42 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v44;
      v27 = *off_1E798A0C0;
      v26 = *off_1E798A0D8;
      v28 = *v44;
      v29 = dataCopy;
      do
      {
        v11 = 0;
        v31 = v9;
        do
        {
          if (*v44 != v10)
          {
            objc_enumerationMutation(dataCopy);
          }

          v12 = *(*(&v43 + 1) + 8 * v11);
          if (([v12 isEqualToString:0x1F21836D0] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", 0x1F2183E10))
          {
            v13 = [dataCopy objectForKeyedSubscript:v12];
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

              v34 = v15;
              v16 = [v12 isEqualToString:0x1F21836D0];
              *&v41[12] = 0u;
              v17 = v27;
              if (!v16)
              {
                v17 = v26;
              }

              v35 = v17;
              v40 = 0uLL;
              *v41 = 0uLL;
              v39 = 0uLL;
              [v14 getBytes:&v39 length:60];
              v19 = DWORD1(v39);
              v18 = DWORD2(v39);
              v20 = HIDWORD(v39);
              v32 = v40;
              v36 = *v41;
              v37 = DWORD1(v39) - DWORD2(v39);
              v38 = HIDWORD(v39) - v40;
              v33 = *&v41[24];
              LOBYTE(v25) = valid;
              v21 = HIDWORD(v40);
              v22 = DWORD2(v40);
              [+[BWAggdDataReporter sharedInstance](BWAggdDataReporter reportSphereEndStopCalibrationForPosition:"reportSphereEndStopCalibrationForPosition:oisPositiveX:oisNegativeX:oisPositiveY:oisNegativeY:maxPositiveXDriftFromNVM:maxNegativeXDriftFromNVM:maxPositiveYDriftFromNVM:maxNegativeYDriftFromNVM:sphereStrokeX:sphereStrokeY:calibrationStatus:isValid:" oisPositiveX:v34 oisNegativeX:DWORD1(v39) oisPositiveY:DWORD2(v39) oisNegativeY:HIDWORD(v39) maxPositiveXDriftFromNVM:v40 maxNegativeXDriftFromNVM:DWORD1(v40) maxPositiveYDriftFromNVM:*(&v40 + 1) maxNegativeYDriftFromNVM:__PAIR64__(DWORD1(v39) - DWORD2(v39) sphereStrokeX:*v41) sphereStrokeY:__PAIR64__(*&v41[24] calibrationStatus:HIDWORD(v39) - v40) isValid:v25];
              v23 = objc_alloc_init(BWSphereEndstopCalibrationAnalyticsPayload);
              [(BWSphereEndstopCalibrationAnalyticsPayload *)v23 setMagneticFieldMagnitude:magnitude];
              [(BWSphereEndstopCalibrationAnalyticsPayload *)v23 setPortType:v35];
              [(BWSphereEndstopCalibrationAnalyticsPayload *)v23 setCalibrationStatus:v33];
              [(BWSphereEndstopCalibrationAnalyticsPayload *)v23 setSphereXPosEndstop:v19];
              v24 = v18;
              dataCopy = v29;
              [(BWSphereEndstopCalibrationAnalyticsPayload *)v23 setSphereXNegEndstop:v24];
              v10 = v28;
              [(BWSphereEndstopCalibrationAnalyticsPayload *)v23 setSphereYPosEndstop:v20];
              [(BWSphereEndstopCalibrationAnalyticsPayload *)v23 setSphereYNegEndstop:v32];
              v9 = v31;
              [(BWSphereEndstopCalibrationAnalyticsPayload *)v23 setDeltaSphereXPosEndstop:HIDWORD(v32)];
              [(BWSphereEndstopCalibrationAnalyticsPayload *)v23 setDeltaSphereXNegEndstop:v22];
              [(BWSphereEndstopCalibrationAnalyticsPayload *)v23 setDeltaSphereYPosEndstop:v21];
              [(BWSphereEndstopCalibrationAnalyticsPayload *)v23 setDeltaSphereYNegEndstop:v36];
              [(BWSphereEndstopCalibrationAnalyticsPayload *)v23 setSphereXStroke:v37];
              [(BWSphereEndstopCalibrationAnalyticsPayload *)v23 setSphereYStroke:v38];
              [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", v23];
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [dataCopy countByEnumeratingWithState:&v43 objects:v42 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [FigCaptureSphereEndStopCalibrationContext reportLoggingWithCalibrationData:isValid:magneticFieldMagnitude:];
  }
}

+ (unsigned)calibrationStatusFromRawStreamCalibrationData:(id)data
{
  memset(v4, 0, 60);
  [data getBytes:v4 length:60];
  return DWORD2(v4[3]);
}

+ (id)calibrationDataStringForInternalLogging:(id)logging
{
  if (logging)
  {
    string = [MEMORY[0x1E696AD60] string];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [logging countByEnumeratingWithState:&v18 objects:v17 count:16];
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
            objc_enumerationMutation(logging);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          if (([v9 isEqualToString:0x1F21836D0] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", 0x1F2183E10))
          {
            v10 = [logging objectForKeyedSubscript:v9];
            if (v10)
            {
              v15 = 0u;
              memset(v16, 0, sizeof(v16));
              v14 = 0u;
              [v10 getBytes:&v14 length:60];
              v12 = *&v16[1];
              v13 = v16[5];
              [string appendFormat:@"%@, %d, %d, %d, %d, %d, %d, %d, %d, %d, %s, %d, ", v9, v14, DWORD1(v14), DWORD2(v14), HIDWORD(v14), v15, DWORD1(v15), DWORD2(v15), HIDWORD(v15), v16[0], &v12, v16[6]];
            }
          }
        }

        v6 = [logging countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    +[FigCaptureSphereEndStopCalibrationContext calibrationDataStringForInternalLogging:];
    return 0;
  }

  return string;
}

+ (id)createRawStreamCalibrationDataWithFailureReasons:(int)reasons
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v6 = reasons | 1;
  return [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:60];
}

- (FigCaptureSphereEndStopCalibrationContext)initWithSupportedDeviceNames:(id)names
{
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v6 = FigGetCFPreferenceNumberWithDefault();
  v7 = *off_1E798C168;
  v9.receiver = self;
  v9.super_class = FigCaptureSphereEndStopCalibrationContext;
  return [(FigCaptureCalibrationContext *)&v9 initWithPreferenceString:@"SphereEndStopCalibrationData" withActivityName:@"com.apple.coremedia.sphereendstop.calibration" withPropertyName:v7 withExpectedDataSize:60 withInterval:CFPreferenceNumberWithDefault withMinimumBatteryLevel:v6 withInternalLogName:@"sphereendstopcal" supportedDeviceNames:names];
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