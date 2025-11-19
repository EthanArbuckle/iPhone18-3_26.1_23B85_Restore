@interface BWStreamingSessionAnalyticsPayload
- (BWStreamingSessionAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWStreamingSessionAnalyticsPayload

- (BWStreamingSessionAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWStreamingSessionAnalyticsPayload;
  v2 = [(BWStreamingSessionAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWStreamingSessionAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStreamingSessionAnalyticsPayload;
  [(BWStreamingSessionAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  *&self->_streamingStartExifOrientation = 0;
  *&self->_activeDeviceMask = 0u;

  self->_clientApplicationID = 0;
  self->_sunburnDetectOccurred = 0;

  self->_degradedAutoFocusStatus = 0;
  self->_apsMaxDynamicGainDerate = 0;

  self->_apsMaxTopEndDynamicBuffer = 0;
  self->_numberOfSphereJitterDetectAttempts = 0;

  self->_numberOfSphereJitterDetects = 0;
  self->_actuatorVendor = 0;

  *&self->_longestButtonMashingEventAtRate0 = 0u;
  *&self->_numberOfButtonMashingCapturesAtRate0 = 0u;
  *&self->_numberOfBalancedPhotoCaptures = 0u;
  *&self->_sphereMode = 0u;
  v3.i64[0] = 0x80000000800000;
  v3.i64[1] = 0x80000000800000;
  *&self->_structuredLightIdleTemperatureFirstReading = vnegq_f32(v3);
  v4 = vneg_f32(0x80000000800000);
  *&self->_structuredLightActiveTemperatureAverage = v4;
  self->_infaredSensorTemperatureAverage = 3.4028e38;

  self->_sensorTemperatureStats = 0;
  self->_infraredProjectorUptimeInMsForLowPowerSparse = -1;
  self->_infraredProjectorUptimeInMsForHighPowerSparse = -1;
  *&self->_averageSystemPressureLevel = 0;
  self->_timeToCriticalSystemPressureInMS = -1;
  self->_systemPressureFactors = 0;
  *&self->_cinematicFramingSupported = 0;
  *&self->_cinematicFramingControlMode = 0xFFFFFFFFLL;
  self->_smartCropSupported = 0;
  self->_backgroundBlurTime = 0;
  self->_backgroundBlurApertureChanged = 0;
  *&self->_cinematicFramingSingleFaceDetectedTime = 0;
  *&self->_backgroundBlurSupported = 0;
  self->_backgroundBlurAperture = -1.0;
  *&self->_studioLightingSupported = 0;
  self->_studioLightingTime = 0;
  self->_studioLightingIntensityChanged = 0;
  self->_studioLightingIntensity = -1.0;
  self->_backgroundReplacementTime = 0;
  *&self->_backgroundReplacementPixelBufferChanged = 0;
  *(&self->_orientationFaceDownTime + 3) = 0;
  *&self->_orientationPortraitTime = 0u;
  *&self->_reactionsCount = 0;
  *(&self->_reactionsEffectsEnabledTime + 2) = 0;
  *&self->_cinematicVideoAverageRenderingTime = v4;
  *&self->_timeOfFlightAssistedAutoFocusStreamingTimeAt0FPS = 0u;
  *&self->_captureDeviceType = 0x7F7FFFFFFFFFFFFFLL;
  *&self->_depthFormatDimensionWidth = -1;
  self->_depthPixelFormat = 0;
  *&self->_depthDataFiltered = 0;
  *&self->_faceDrivenAFDisabledCount = -1;
  self->_maxFacesDetected = -1;
  *&v5 = 0x80000000800000;
  *(&v5 + 1) = 0x80000000800000;
  *&self->_minLuxValue = v5;
  self->_luxHistogram = 0;
  self->_photoFormat = 0;
  *&self->_continuityCameraClientDeviceClass = 0x3030303000000000;
  self->_thermalThrottledTime = 0;
  self->_highlightRecoveryEnabled = 0;
  self->_videoDimensions = 0;
  *(&self->_maximumFrameRate + 1) = 0;
  *&self->_minimumSupportedFrameRate = 0u;
  self->_colorSpace = -1;
  *&self->_clientIsVOIP = 0;
  *&self->_secureMetadataEnabled = 0;
  *&self->_invalidFrameDurationBeforeFirstValidFrame = 0;
  self->_dynamicAspectRatioSupported = 0;
  *&self->_longestContinuousPortraitInPhotoPreviewInMS = 0;
  *&self->_dynamicAspectRatio1x1Time = 0u;
  self->_dynamicAspectRatio9x16Time = 0;
}

- (id)eventDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", +[BWCoreAnalyticsReporter clientApplicationIDType:](BWCoreAnalyticsReporter, "clientApplicationIDType:", self->_clientApplicationID)), @"clientIDType"}];
  [v3 setObject:self->_clientApplicationID forKeyedSubscript:@"clientApplicationID"];
  [v3 setObject:+[BWCoreAnalyticsReporter commonClientApplicationID:](BWCoreAnalyticsReporter forKeyedSubscript:{self->_clientApplicationID), @"commonClientApplicationID"}];
  if (self->_activeDeviceMask)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"activeDeviceMask"}];
  }

  if (self->_deviceType)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"deviceType"}];
  }

  if (self->_devicePosition)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"devicePosition"}];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_startingCameraPosture), @"startingCameraPosture"}];
  streamingStartExifOrientation = self->_streamingStartExifOrientation;
  if (streamingStartExifOrientation > 8)
  {
    v5 = @"Landscape";
  }

  else
  {
    v5 = qword_1E7999C50[streamingStartExifOrientation];
  }

  [v3 setObject:v5 forKeyedSubscript:@"startingCameraOrientation"];
  if (self->_streamingTime)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"streamingTime"}];
  }

  v6 = *off_1E798A0C0;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", -[NSSet containsObject:](self->_sunburnDetectOccurred, "containsObject:", *off_1E798A0C0)), @"sunburnDetectOccurredWide"}];
  v7 = *off_1E798A0D8;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", -[NSSet containsObject:](self->_sunburnDetectOccurred, "containsObject:", *off_1E798A0D8)), @"sunburnDetectOccurredTele"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_degradedAutoFocusStatus, "objectForKeyedSubscript:", v6), "intValue")), @"degradedAutoFocusStatusWide"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_degradedAutoFocusStatus, "objectForKeyedSubscript:", v7), "intValue")), @"degradedAutoFocusStatusTele"}];
  v8 = *off_1E798A0D0;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_degradedAutoFocusStatus, "objectForKeyedSubscript:", *off_1E798A0D0), "intValue")), @"degradedAutoFocusStatusSuperwide"}];
  v9 = *off_1E798A0E0;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_degradedAutoFocusStatus, "objectForKeyedSubscript:", *off_1E798A0E0), "intValue")), @"degradedAutoFocusStatusFront"}];
  v10 = MEMORY[0x1E696AD98];
  [-[NSDictionary objectForKeyedSubscript:](self->_apsMaxDynamicGainDerate objectForKeyedSubscript:{v6), "floatValue"}];
  [v3 setObject:objc_msgSend(v10 forKeyedSubscript:{"numberWithFloat:"), @"apsMaxDynamicGainDerateWide"}];
  v11 = MEMORY[0x1E696AD98];
  [-[NSDictionary objectForKeyedSubscript:](self->_apsMaxTopEndDynamicBuffer objectForKeyedSubscript:{v6), "floatValue"}];
  [v3 setObject:objc_msgSend(v11 forKeyedSubscript:{"numberWithFloat:"), @"apsMaxTopEndDynamicBufferWide"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_numberOfSphereJitterDetectAttempts, "objectForKeyedSubscript:", v6), "intValue")), @"numberOfSphereJitterDetectAttemptsWide"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_numberOfSphereJitterDetectAttempts, "objectForKeyedSubscript:", v7), "intValue")), @"numberOfSphereJitterDetectAttemptsTele"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_numberOfSphereJitterDetects, "objectForKeyedSubscript:", v6), "intValue")), @"numberOfSphereJitterDetectsWide"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_numberOfSphereJitterDetects, "objectForKeyedSubscript:", v7), "intValue")), @"numberOfSphereJitterDetectsTele"}];
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_actuatorVendor forKeyedSubscript:{"objectForKeyedSubscript:", v6), @"actuatorVendorWide"}];
  v60 = v7;
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_actuatorVendor forKeyedSubscript:{"objectForKeyedSubscript:", v7), @"actuatorVendorTele"}];
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_actuatorVendor forKeyedSubscript:{"objectForKeyedSubscript:", v8), @"actuatorVendorSuperWide"}];
  v59 = v9;
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_actuatorVendor forKeyedSubscript:{"objectForKeyedSubscript:", v9), @"actuatorVendorFront"}];
  [v3 setObject:self->_sphereMode forKeyedSubscript:@"sphereMode"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfPhotoCaptures), @"numberOfPhotoCaptures"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfBurstPhotoCaptures), @"numberOfBurstPhotoCaptures"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfBalancedPhotoCaptures), @"numberOfBalancedPhotoCaptures"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_timeToFirstPhotoCapture), @"timeToFirstPhotoCapture"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_maxTimeSinceLastPhotoCapture), @"maxTimeSinceLastPhotoCapture"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_minTimeSinceLastPhotoCapture), @"minTimeSinceLastPhotoCapture"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfButtonMashingCapturesAtRate0), @"numberOfButtonMashingCapturesAtRate0"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfButtonMashingCapturesAtRate1), @"numberOfButtonMashingCapturesAtRate1"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfButtonMashingEventsAtRate0), @"numberOfButtonMashingEventsAtRate0"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfButtonMashingEventsAtRate1), @"numberOfButtonMashingEventsAtRate1"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_longestButtonMashingEventAtRate0), @"longestButtonMashingEventAtRate0"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_longestButtonMashingEventAtRate1), @"longestButtonMashingEventAtRate1"}];
  if (self->_timeOfFlightCameraProjectorModeMask)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"timeOfFlightCameraProjectorModeMask"}];
  }

  if (self->_timeOfFlightCameraUsageTypeMask)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"timeOfFlightCameraUsageTypeMask"}];
  }

  if (self->_structuredLightIdleTemperatureFirstReading != 3.4028e38)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"structuredLightIdleTemperatureFirstReading"}];
  }

  if (self->_structuredLightActiveTemperatureFirstReading != 3.4028e38)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"structuredLightActiveTemperatureFirstReading"}];
  }

  if (self->_structuredLightActiveTemperatureLastReading != 3.4028e38)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"structuredLightActiveTemperatureLastReading"}];
  }

  if (self->_structuredLightActiveTemperatureRange != 3.4028e38)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"structuredLightActiveTemperatureRange"}];
  }

  if (self->_structuredLightActiveTemperatureAverage != 3.4028e38)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"structuredLightActiveTemperatureAverage"}];
  }

  if (self->_infaredSensorTemperatureRange != 3.4028e38)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"infaredSensorTemperatureRange"}];
  }

  if (self->_infaredSensorTemperatureAverage != 3.4028e38)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"infaredSensorTemperatureAverage"}];
  }

  v62 = v3;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v12 = self;
  obj = self->_sensorTemperatureStats;
  v13 = [(NSDictionary *)obj countByEnumeratingWithState:&v69 objects:v68 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v70;
    v58 = *off_1E798A0F8;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v70 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v69 + 1) + 8 * i);
        v19 = @"Wide";
        if (([(__CFString *)v18 isEqualToString:v6]& 1) == 0)
        {
          v19 = @"Tele";
          if (([(__CFString *)v18 isEqualToString:v60]& 1) == 0)
          {
            v19 = @"SuperWide";
            if (([(__CFString *)v18 isEqualToString:v8]& 1) == 0)
            {
              v19 = @"Front";
              if (([(__CFString *)v18 isEqualToString:v59]& 1) == 0)
              {
                if ([(__CFString *)v18 isEqualToString:v58])
                {
                  v19 = @"FrontSuperWide";
                }

                else
                {
                  v19 = v18;
                }
              }
            }
          }
        }

        v20 = [(NSDictionary *)v12->_sensorTemperatureStats objectForKeyedSubscript:v18];
        v21 = MEMORY[0x1E696AD98];
        [v20 max];
        v22 = [v21 numberWithDouble:?];
        [v62 setObject:v22 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"sensorTemperature%@Max", v19)}];
        v23 = MEMORY[0x1E696AD98];
        [v20 min];
        v24 = [v23 numberWithDouble:?];
        [v62 setObject:v24 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"sensorTemperature%@Min", v19)}];
        v25 = MEMORY[0x1E696AD98];
        [v20 average];
        v26 = [v25 numberWithDouble:?];
        [v62 setObject:v26 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"sensorTemperature%@Average", v19)}];
        v27 = MEMORY[0x1E696AD98];
        [v20 max];
        v29 = v28;
        [v20 min];
        v31 = [v27 numberWithDouble:v29 - v30];
        [v62 setObject:v31 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"sensorTemperature%@Range", v19)}];
      }

      v15 = [(NSDictionary *)obj countByEnumeratingWithState:&v69 objects:v68 count:16];
    }

    while (v15);
  }

  v32 = v12;
  if ((v12->_infraredProjectorUptimeInMsForLowPowerSparse & 0x8000000000000000) == 0)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:"), @"infraredProjectorUptimeInMsForLowPowerSparse"}];
  }

  if ((v12->_infraredProjectorUptimeInMsForHighPowerSparse & 0x8000000000000000) == 0)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:"), @"infraredProjectorUptimeInMsForHighPowerSparse"}];
  }

  *&v14 = v12->_averageSystemPressureLevel;
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v14), @"averageSystemPressureLevel"}];
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v12->_maxSystemPressureLevel), @"maxSystemPressureLevel"}];
  if ((v12->_timeToCriticalSystemPressureInMS & 0x8000000000000000) == 0)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:"), @"timeToCriticalSystemPressure"}];
  }

  if (v12->_systemPressureFactors)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"systemPressureFactors"}];
  }

  if (v12->_cinematicFramingSupported)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v12->_cinematicFramingEnabled), @"isCinematicFramingEnabled"}];
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12->_cinematicFramingControlMode), @"cinematicFramingControlMode"}];
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12->_cinematicFramingTime), @"cinematicFramingTime"}];
  }

  if (v12->_smartCropSupported)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12->_cinematicFramingSingleFaceDetectedTime), @"cinematicFramingSingleFaceDetectedTime"}];
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12->_cinematicFramingMultipleFacesDetectedTime), @"cinematicFramingMultipleFacesDetectedTime"}];
  }

  if (v12->_backgroundBlurSupported)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v12->_backgroundBlurEnabled), @"isBackgroundBlurEnabled"}];
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12->_backgroundBlurTime), @"backgroundBlurTime"}];
    if (v12->_backgroundBlurTime)
    {
      [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v12->_backgroundBlurApertureChanged), @"backgroundBlurChanged"}];
      *&v33 = v12->_backgroundBlurAperture;
      [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v33), @"backgroundBlurAperture"}];
    }
  }

  if (v12->_studioLightingSupported)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v12->_studioLightingEnabled), @"isStudioLightingEnabled"}];
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12->_studioLightingTime), @"studioLightingTime"}];
    if (v12->_studioLightingTime)
    {
      [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v12->_studioLightingIntensityChanged), @"studioLightingChanged"}];
      *&v34 = v12->_studioLightingIntensity;
      [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v34), @"studioLightingIntensity"}];
    }
  }

  if (v12->_orientationPortraitTime)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"orientationPortraitTime"}];
  }

  if (v12->_orientationLandscapeTime)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"orientationLandscapeTime"}];
  }

  if (v12->_orientationFaceUpTime)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"orientationFaceUpTime"}];
  }

  if (v12->_orientationFaceDownTime)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"orientationFaceDownTime"}];
  }

  if (v12->_reactionEffectsSupported)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v12->_reactionEffectsEnabled), @"reactionEffectsEnabled"}];
    if (v12->_reactionEffectsEnabled)
    {
      [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v12->_gesturesEnabled), @"gesturesEnabled"}];
    }

    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12->_reactionCount), @"reactionCount"}];
  }

  if (v12->_reactionEffectsEnabledTime)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"reactionEffectsEnabledTime"}];
  }

  if (v12->_gesturesEnabledTime)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"gesturesEnabledTime"}];
  }

  if (v12->_backgroundReplacementSupported)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v12->_backgroundReplacementEnabled), @"isBackgroundReplacementEnabled"}];
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12->_backgroundReplacementTime), @"backgroundReplacementTime"}];
    if (v12->_backgroundReplacementTime)
    {
      [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v12->_backgroundReplacementPixelBufferChanged), @"backgroundReplacementChanged"}];
    }
  }

  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v12->_cinematicVideoEnabled), @"cinematicVideoEnabled"}];
  if (v12->_cinematicVideoEnabled)
  {
    *&v35 = v12->_cinematicVideoAverageRenderingTime;
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v35), @"cinematicVideoAverageRenderingTime"}];
    *&v36 = v12->_cinematicVideoWorstCaseRenderingTime;
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v36), @"cinematicVideoWorstCaseRenderingTime"}];
  }

  if (v12->_timeOfFlightAssistedAutoFocusStreamingTimeAt0FPS || v12->_timeOfFlightAssistedAutoFocusStreamingTimeAt1FPS || v12->_timeOfFlightAssistedAutoFocusStreamingTimeAt8FPS || v12->_timeOfFlightAssistedAutoFocusStreamingTimeAtOtherFPS)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"tofStreamingTime0FPS"}];
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12->_timeOfFlightAssistedAutoFocusStreamingTimeAt1FPS), @"tofStreamingTime1FPS"}];
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12->_timeOfFlightAssistedAutoFocusStreamingTimeAt8FPS), @"tofStreamingTime8FPS"}];
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12->_timeOfFlightAssistedAutoFocusStreamingTimeAtOtherFPS), @"tofStreamingTimeOtherFPS"}];
  }

  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12->_captureDeviceType), @"captureDeviceType"}];
  if (v12->_depthMaxFrameRate != 3.4028e38)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"depthMaxFrameRate"}];
  }

  if (v12->_depthFormatDimensionWidth != -1)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"depthFormatDimensionWidth"}];
  }

  if (v12->_depthFormatDimensionHeight != -1)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"depthFormatDimensionHeight"}];
  }

  [v62 setObject:BWStringForOSType() forKeyedSubscript:@"depthPixelFormat"];
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v12->_depthDataFiltered), @"depthDataFiltered"}];
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v12->_faceDrivenAEAFEnabledByDefault), @"faceDrivenAEAFEnabledByDefault"}];
  if (v12->_faceDrivenAEAFEnabledByDefault)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12->_faceDrivenAFDisabledCount), @"faceDrivenAFDisabledCount"}];
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12->_faceDrivenAEDisabledCount), @"faceDrivenAEDisabledCount"}];
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12->_maxFacesDetected), @"maxFacesDetected"}];
    *&v37 = v12->_minLuxValue;
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v37), @"minLuxValue"}];
    *&v38 = v12->_maxLuxValue;
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v38), @"maxLuxValue"}];
    *&v39 = v12->_averageLuxValue;
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v39), @"averageLuxValue"}];
    *&v40 = v12->_medianLuxValue;
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v40), @"medianLuxValue"}];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    luxHistogram = v12->_luxHistogram;
    v42 = [(NSDictionary *)luxHistogram countByEnumeratingWithState:&v64 objects:v63 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v65;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v65 != v44)
          {
            objc_enumerationMutation(luxHistogram);
          }

          v46 = *(*(&v64 + 1) + 8 * j);
          v47 = [(NSDictionary *)v32->_luxHistogram objectForKey:v46];
          [v62 setObject:v47 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"alsLuxBin%@", v46)}];
        }

        v43 = [(NSDictionary *)luxHistogram countByEnumeratingWithState:&v64 objects:v63 count:16];
      }

      while (v43);
    }

    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v32->_photoFormat), @"photoFormat"}];
  }

  continuityCameraClientDeviceClass = v32->_continuityCameraClientDeviceClass;
  v49 = @"AppleTV";
  if (continuityCameraClientDeviceClass != 4)
  {
    v49 = 0;
  }

  if (continuityCameraClientDeviceClass == 100)
  {
    v50 = @"Mac";
  }

  else
  {
    v50 = v49;
  }

  if (v50)
  {
    [v62 setObject:v50 forKeyedSubscript:@"continuityCameraClientDeviceClass"];
  }

  if (v32->_streamingTime)
  {
    if (v32->_thermalThrottledTime)
    {
      v51 = MEMORY[0x1E695E118];
    }

    else
    {
      v51 = MEMORY[0x1E695E110];
    }

    [v62 setObject:v51 forKeyedSubscript:@"thermalThrottled"];
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v32->_thermalThrottledTime), @"thermalThrottledTime"}];
  }

  [v62 setObject:BWStringForOSType() forKeyedSubscript:@"pixelFormat"];
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v32->_videoDimensions.width), @"videoDimensionsWidth"}];
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v32->_videoDimensions.height), @"videoDimensionsHeight"}];
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v32->_highlightRecoveryEnabled), @"highlightRecoveryEnabled"}];
  *&v52 = v32->_minimumSupportedFrameRate;
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v52), @"minimumSupportedFrameRate"}];
  *&v53 = v32->_maximumSupportedFrameRate;
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v53), @"maximumSupportedFrameRate"}];
  *&v54 = v32->_minimumFrameRate;
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v54), @"minimumFrameRate"}];
  *&v55 = v32->_maximumFrameRate;
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v55), @"maximumFrameRate"}];
  *&v56 = v32->_fieldOfView;
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v56), @"fieldOfView"}];
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v32->_binned), @"binned"}];
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v32->_colorSpace), @"colorSpace"}];
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v32->_clientIsVOIP), @"clientIsVOIP"}];
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v32->_audioMixWithOthersEnabled), @"audioMixWithOthersEnabled"}];
  if (v32->_invalidFrameDurationBeforeFirstValidFrame != 0.0)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"invalidFrameDurationBeforeFirstValidFrame"}];
  }

  if (v32->_invalidFrameCountAfterFirstValidFrame)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"invalidFrameCountAfterFirstValidFrame"}];
  }

  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v32->_secureMetadataEnabled), @"secureMetadataEnabled"}];
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v32->_hitPortraitInPhotoPreviewThermalPressure), @"hitPortraitInPhotoPreviewThermalPressure"}];
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v32->_longestContinuousPortraitInPhotoPreviewInMS), @"longestContinuousPortraitInPhotoPreviewInMS"}];
  [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v32->_mlvnrActiveTime), @"mlvnrActiveTime"}];
  if (v32->_dynamicAspectRatioSupported)
  {
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v32->_dynamicAspectRatio1x1Time), @"dynamicAspectRatio1x1Time"}];
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v32->_dynamicAspectRatio4x3Time), @"dynamicAspectRatio4x3Time"}];
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v32->_dynamicAspectRatio3x4Time), @"dynamicAspectRatio3x4Time"}];
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v32->_dynamicAspectRatio16x9Time), @"dynamicAspectRatio16x9Time"}];
    [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v32->_dynamicAspectRatio9x16Time), @"dynamicAspectRatio9x16Time"}];
  }

  return v62;
}

@end