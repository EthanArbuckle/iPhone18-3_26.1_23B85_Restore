@interface BWStillImageAnalyticsPayloadCommon
- (BWStillImageAnalyticsPayloadCommon)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWStillImageAnalyticsPayloadCommon

- (BWStillImageAnalyticsPayloadCommon)init
{
  v5.receiver = self;
  v5.super_class = BWStillImageAnalyticsPayloadCommon;
  v2 = [(BWStillImageAnalyticsPayloadCommon *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWStillImageAnalyticsPayloadCommon *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageAnalyticsPayloadCommon;
  [(BWStillImageAnalyticsPayloadCommon *)&v3 dealloc];
}

- (void)reset
{
  self->_deferred = 0;
  *&self->_activeDeviceMask = 0;
  self->_captureType = 0;
  self->_captureFlags = 0;
  self->_sceneFlags = 0;
  *&self->_processingDuration = xmmword_1AD056350;
  v3 = vneg_f32(0x80000000800000);
  *&self->_alsRearLuxLevel = v3;
  self->_sensorTemperature = 0x7FFFFFFF;
  v4.i64[0] = 0x80000000800000;
  v4.i64[1] = 0x80000000800000;
  v6 = vnegq_f32(v4);
  *&self->_lensTemperature = v6;
  *&self->_SNR = 2139095039;
  *&self->_livePhotoEnabled = 0;

  self->_clientApplicationID = 0;
  self->_portType = 0;
  *&self->_accelStandardDeviation = v3;

  self->_apsSubjectDistance = 0;
  self->_practicalFocalLength = 0;

  self->_focusingMethod = 0;
  *&self->_maxSphereTrackingError = v6;
  *&self->_minDistanceFromSphereEndStop = v6;
  self->_depthAFStatus = 0x7FFFFFFF;
  *&self->_cameraPosture = 0;

  self->_sphereMode = 0;
  *&self->_apsMode = 0;
  *&self->_flashBrightnessRatio = v3;
  self->_geometricDistortionCorrectionEnabled = 0;

  self->_geometricDistortionCorrectionSource = 0;
  *&self->_greenGhostMitigationBrightLightIsBrightScene = -1;
  *&self->_greenGhostMitigationLowLightExceedsMaxMaskAverage = -1;
  *&self->_greenGhostMitigationLowLightTripodMode = 0x7F7FFFFFFFFFFFFFLL;

  self->_timeOfFlightAssistedAutoFocusEstimatorData = 0;
  self->_leaderFollowerAutoFocusData = 0;
  self->_afDriverShortOccurred = 0;
  *&self->_deliveredDimensionWidth = 0;
  *&self->_formatMaxFrameRate = 0;
  *&self->_formatDimensionWidth = 0;
  *(&self->_qualityPrioritization + 2) = 0;
  strcpy(&self->_pixelFormat, "0000");
  self->_outputFileType = 0;
  self->_portraitRequested = 0;

  self->_portraitEffectStatus = 0;
  self->_constituentImageDeliveryDeviceTypes = 0;
  *&self->_fastCapturePrioritizationEnabled = 0;
  self->_stfStillApplied = 0;
  *&self->_stfStillCorrectionStrength = 0;

  self->_timeOfFlightFlickerDetectionData = 0;
  self->_photometerInfo = 0;
  self->_semanticSceneType = -1;
  self->_smartStyleCastType = -1;
  *&self->_smartStyleToneBias = 0;
  *(&self->_smartStyleColorBias + 2) = 0;
  *&self->_swfrForegroundCorrectionDirection = 0;
  *&self->_swfrAnalyticsVersion = 0;
  *&self->_swfrForegroundCorrectionStrength = 0;

  self->_resolutionFlavor = 0;
  self->_awbStable = 0;
  self->_awbRGain = 3.4028e38;
  *&self->_awbGGain = v3;
  self->_lensSmudgeDetectionEnabled = 0;
  *&self->_smudgeConfidence = 0xBF800000BF800000;
  *&v5 = 0x8000000080000000;
  *(&v5 + 1) = 0x8000000080000000;
  *&self->_calibrationValidationStatusCmCl = v5;
  *&self->_coreRepairStatusFrontCameraAssembly = 0x7FFFFFFFLL;
}

- (id)eventDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_numberOfFaces), @"numberOfFaces"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", +[BWCoreAnalyticsReporter clientApplicationIDType:](BWCoreAnalyticsReporter, "clientApplicationIDType:", self->_clientApplicationID)), @"clientIDType"}];
  [dictionary setObject:self->_clientApplicationID forKeyedSubscript:@"clientApplicationID"];
  [dictionary setObject:+[BWCoreAnalyticsReporter commonClientApplicationID:](BWCoreAnalyticsReporter forKeyedSubscript:{self->_clientApplicationID), @"commonClientApplicationID"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_livePhotoEnabled), @"livePhotoEnabled"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_depthEnabled), @"depthEnabled"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_timeLapse), @"timeLapse"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_burst), @"burst"}];
  if (self->_activeDeviceMask)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"activeDeviceMask"}];
  }

  if (self->_devicePosition)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"devicePosition"}];
  }

  constituentImageDeliveryDeviceTypes = self->_constituentImageDeliveryDeviceTypes;
  if (constituentImageDeliveryDeviceTypes)
  {
    [dictionary setObject:constituentImageDeliveryDeviceTypes forKeyedSubscript:@"constituentImageDeliveryDeviceTypes"];
  }

  if (self->_captureType)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"captureType"}];
  }

  if (self->_captureFlags)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:"), @"captureFlags"}];
  }

  if (self->_sceneFlags)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:"), @"sceneFlags"}];
  }

  if (self->_processingDuration != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"processingDuration"}];
  }

  if (self->_streamingTime != -1)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"streamingTime"}];
  }

  if (self->_luxLevel != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"luxLevel"}];
  }

  if (self->_alsLuxLevel != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"alsLuxLevel"}];
  }

  if (self->_alsRearLuxLevel != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"alsRearLuxLevel"}];
  }

  if (self->_lensPosition != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"lensPosition"}];
  }

  if (self->_sensorTemperature != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"sensorTemperature"}];
  }

  if (self->_lensTemperature != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"lensTemperature"}];
  }

  if (self->_exposureDuration != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"exposureDuration"}];
  }

  if (self->_iso != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"iso"}];
  }

  if (self->_normalizedSNR != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"normalizedSNR"}];
  }

  if (self->_SNR != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"SNR"}];
  }

  portType = self->_portType;
  if (portType)
  {
    [dictionary setObject:portType forKeyedSubscript:@"portType"];
  }

  if (self->_accelStandardDeviation != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"accelStd"}];
  }

  if (self->_gyroStandardDeviation != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"gyroStd"}];
  }

  v6 = *off_1E798A0C0;
  [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_apsSubjectDistance forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A0C0), @"apsSubjectDistanceWide"}];
  v7 = *off_1E798A0D8;
  [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_apsSubjectDistance forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A0D8), @"apsSubjectDistanceTele"}];
  v8 = *off_1E798A0D0;
  [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_apsSubjectDistance forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A0D0), @"apsSubjectDistanceSuperwide"}];
  v9 = *off_1E798A0E0;
  [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_apsSubjectDistance forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A0E0), @"apsSubjectDistanceFront"}];
  [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_practicalFocalLength forKeyedSubscript:{"objectForKeyedSubscript:", v6), @"apsPFLWide"}];
  [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_practicalFocalLength forKeyedSubscript:{"objectForKeyedSubscript:", v7), @"apsPFLTele"}];
  [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_practicalFocalLength forKeyedSubscript:{"objectForKeyedSubscript:", v8), @"apsPFLSuperwide"}];
  [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_practicalFocalLength forKeyedSubscript:{"objectForKeyedSubscript:", v9), @"apsPFLFront"}];
  [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_focusingMethod forKeyedSubscript:{"objectForKeyedSubscript:", v6), @"focusMethodWide"}];
  [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_focusingMethod forKeyedSubscript:{"objectForKeyedSubscript:", v7), @"focusMethodTele"}];
  [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_focusingMethod forKeyedSubscript:{"objectForKeyedSubscript:", v8), @"focusMethodSuperWide"}];
  [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_focusingMethod forKeyedSubscript:{"objectForKeyedSubscript:", v9), @"focusMethodFront"}];
  if (self->_maxSphereTrackingError != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"oisMaxTrackError"}];
  }

  if (self->_stdSphereTrackingError != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"oisStdTrackError"}];
  }

  if (self->_maxAFTrackingError != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"afMaxTrackError"}];
  }

  if (self->_stdAFTrackingError != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"afStdTrackError"}];
  }

  if (self->_minDistanceFromSphereEndStop != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"oisMinDistFromEndStop"}];
  }

  if (self->_spherePowerConsumption != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"oisPower"}];
  }

  if (self->_maxStroke != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"maxStroke"}];
  }

  if (self->_afPowerConsumption != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"afPower"}];
  }

  if (self->_depthAFStatus != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"depthAFStatus"}];
  }

  if (self->_cameraPosture)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"cameraPosture"}];
  }

  imageExifOrientation = self->_imageExifOrientation;
  if (imageExifOrientation > 8)
  {
    v11 = @"Landscape";
  }

  else
  {
    v11 = qword_1E7999C50[imageExifOrientation];
  }

  [dictionary setObject:v11 forKeyedSubscript:@"imageOrientation"];
  sphereMode = self->_sphereMode;
  if (sphereMode)
  {
    [dictionary setObject:sphereMode forKeyedSubscript:@"oisMode"];
  }

  if (self->_apsMode)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"afMode"}];
  }

  if (self->_timeSinceLastCaptureInSession)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"timeSinceLastCaptureInSession"}];
  }

  if (self->_flashBrightnessRatio != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"flashBrightnessRatio"}];
  }

  if (self->_effectiveIntegrationTime != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"effectiveIntegrationTime"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_geometricDistortionCorrectionEnabled), @"geometricDistortionCorrectionEnabled"}];
  geometricDistortionCorrectionSource = self->_geometricDistortionCorrectionSource;
  if (geometricDistortionCorrectionSource)
  {
    [dictionary setObject:geometricDistortionCorrectionSource forKeyedSubscript:@"geometricDistortionCorrectionSource"];
  }

  greenGhostMitigationBrightLightIsBrightScene = self->_greenGhostMitigationBrightLightIsBrightScene;
  v15 = MEMORY[0x1E695E118];
  v16 = MEMORY[0x1E695E110];
  if (greenGhostMitigationBrightLightIsBrightScene != -1)
  {
    if (greenGhostMitigationBrightLightIsBrightScene)
    {
      v17 = MEMORY[0x1E695E118];
    }

    else
    {
      v17 = MEMORY[0x1E695E110];
    }

    [dictionary setObject:v17 forKeyedSubscript:@"greenGhostMitigationBrightLightIsBrightScene"];
  }

  greenGhostMitigationBrightLightROIIsComputed = self->_greenGhostMitigationBrightLightROIIsComputed;
  if (greenGhostMitigationBrightLightROIIsComputed != -1)
  {
    if (greenGhostMitigationBrightLightROIIsComputed)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }

    [dictionary setObject:v19 forKeyedSubscript:@"greenGhostMitigationBrightLightROIIsComputed"];
  }

  greenGhostMitigationLowLightExceedsMaxMaskAverage = self->_greenGhostMitigationLowLightExceedsMaxMaskAverage;
  if (greenGhostMitigationLowLightExceedsMaxMaskAverage != -1)
  {
    if (greenGhostMitigationLowLightExceedsMaxMaskAverage)
    {
      v21 = v15;
    }

    else
    {
      v21 = v16;
    }

    [dictionary setObject:v21 forKeyedSubscript:@"greenGhostMitigationLowLightExceedsMaxMaskAverage"];
  }

  greenGhostMitigationLowLightSkipRepair = self->_greenGhostMitigationLowLightSkipRepair;
  if (greenGhostMitigationLowLightSkipRepair != -1)
  {
    if (greenGhostMitigationLowLightSkipRepair)
    {
      v23 = v15;
    }

    else
    {
      v23 = v16;
    }

    [dictionary setObject:v23 forKeyedSubscript:@"greenGhostMitigationLowLightSkipRepair"];
  }

  greenGhostMitigationLowLightTripodMode = self->_greenGhostMitigationLowLightTripodMode;
  if (greenGhostMitigationLowLightTripodMode != -1)
  {
    if (greenGhostMitigationLowLightTripodMode)
    {
      v25 = v15;
    }

    else
    {
      v25 = v16;
    }

    [dictionary setObject:v25 forKeyedSubscript:@"greenGhostMitigationLowLightTripodMode"];
  }

  if (self->_greenGhostMitigationLowLightMaskAverage != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"greenGhostMitigationLowLightMaskAverage"}];
  }

  timeOfFlightAssistedAutoFocusEstimatorData = self->_timeOfFlightAssistedAutoFocusEstimatorData;
  if (timeOfFlightAssistedAutoFocusEstimatorData)
  {
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](timeOfFlightAssistedAutoFocusEstimatorData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C7D0), @"tofAFMeasuredDepth"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_timeOfFlightAssistedAutoFocusEstimatorData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C7D8), @"tofAFPFLError"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_timeOfFlightAssistedAutoFocusEstimatorData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C7E8), @"tofAFSensorConfidence"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_timeOfFlightAssistedAutoFocusEstimatorData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C7B8), @"tofAFEstimatorCorrectionApplied"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_timeOfFlightAssistedAutoFocusEstimatorData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C7E0), @"tofAFROIType"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_timeOfFlightAssistedAutoFocusEstimatorData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C7B0), @"tofAFContainsBlindSpot"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_timeOfFlightAssistedAutoFocusEstimatorData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C7C0), @"tofAFMSPMeasuredDepth"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_timeOfFlightAssistedAutoFocusEstimatorData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C7C8), @"tofAFMSPSensorConfidence"}];
  }

  leaderFollowerAutoFocusData = self->_leaderFollowerAutoFocusData;
  if (leaderFollowerAutoFocusData)
  {
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](leaderFollowerAutoFocusData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798AE60), @"lfAFLeaderDepth"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_leaderFollowerAutoFocusData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798AE80), @"lfAFPFLError"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_leaderFollowerAutoFocusData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798AE58), @"lfAFLeaderDefocus"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_leaderFollowerAutoFocusData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798AE70), @"lfAFLeaderLensPosition"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_leaderFollowerAutoFocusData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798AE68), @"lfAFFocusMethod"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_leaderFollowerAutoFocusData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798AE50), @"lfAFLeaderConfidence"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_leaderFollowerAutoFocusData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798AE78), @"lfAFLeaderROIType"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_afDriverShortOccurred), @"afDriverShortOccurred"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_formatDimensionWidth), @"formatDimensionWidth"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_formatDimensionHeight), @"formatDimensionHeight"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deliveredDimensionWidth), @"deliveredDimensionWidth"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deliveredDimensionHeight), @"deliveredDimensionHeight"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_formatMaxFrameRate), @"formatMaxFrameRate"}];
  v28 = self->_qualityPrioritization - 1;
  if (v28 > 2)
  {
    v29 = @"Invalid";
  }

  else
  {
    v29 = off_1E7999C38[v28];
  }

  [dictionary setObject:v29 forKeyedSubscript:@"qualityPrioritization"];
  v30 = self->_clientRequestedQualityPrioritization - 1;
  if (v30 > 2)
  {
    v31 = @"Invalid";
  }

  else
  {
    v31 = off_1E7999C38[v30];
  }

  [dictionary setObject:v31 forKeyedSubscript:@"clientRequestedQualityPrioritization"];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_highQualityPhotoWithVideoFormatSupported), @"highQualityPhotoWithVideoFormatSupported"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_photoFormat), @"photoFormat"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%c%c%c%c", HIBYTE(self->_pixelFormat), BYTE2(self->_pixelFormat), BYTE1(self->_pixelFormat), self->_pixelFormat), @"pixelFormat"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_binned), @"binned"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_outputFileType), @"outputFileType"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_portraitRequested), @"portraitRequested"}];
  portraitEffectStatus = self->_portraitEffectStatus;
  if (portraitEffectStatus)
  {
    [dictionary setObject:portraitEffectStatus forKeyedSubscript:@"portraitEffectStatus"];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_fastCapturePrioritizationEnabled), @"fastCapturePrioritizationEnabled"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_stfStillSupported), @"stfStillSupported"}];
  if (self->_stfStillSupported)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_stfStillApplied), @"stfStillApplied"}];
    if (self->_stfStillApplied)
    {
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_stfStillCorrectionStrength), @"stfStillCorrectionStrength"}];
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_stfStillAnalyticsVersion), @"stfStillAnalyticsVersion"}];
    }
  }

  timeOfFlightFlickerDetectionData = self->_timeOfFlightFlickerDetectionData;
  if (timeOfFlightFlickerDetectionData)
  {
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](timeOfFlightFlickerDetectionData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C910), @"tofFlickerDetectionStatus"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_timeOfFlightFlickerDetectionData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C908), @"tofFlickerDetectionDC2ACRatio"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_timeOfFlightFlickerDetectionData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C900), @"tofFlickerDetectionDC2ACConfidence"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_timeOfFlightFlickerDetectionData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C8F8), @"tofFlickerDetectionCNISNR"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_timeOfFlightFlickerDetectionData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C8F0), @"tofFlickerDetectionCNIRatio"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_timeOfFlightFlickerDetectionData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C8E0), @"tofFlickerDetectionCNIChannelDiff"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_timeOfFlightFlickerDetectionData forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C8E8), @"tofFlickerDetectionCNIPeakIndDiff"}];
  }

  photometerInfo = self->_photometerInfo;
  if (photometerInfo)
  {
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](photometerInfo forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B980), @"photometerInfoStatus"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_photometerInfo forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B970), @"photometerInfoIRRatio"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_photometerInfo forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B968), @"photometerInfoExternalLuxLevel"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_photometerInfo forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B978), @"photometerInfoOcclusionConfidence"}];
    v35 = [(NSDictionary *)self->_photometerInfo objectForKeyedSubscript:*off_1E798B960];
    if ([v35 count])
    {
      v36 = 0;
      v37 = *off_1E798B950;
      v38 = *off_1E798B958;
      do
      {
        v39 = [v35 objectAtIndexedSubscript:v36];
        v40 = [objc_msgSend(v39 objectForKeyedSubscript:{v37), "intValue"}];
        [objc_msgSend(v39 objectForKeyedSubscript:{v38), "floatValue"}];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"photometerInfoFrequency%d", ++v36)}];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v40), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"photometerInfoConfidence%d", v36)}];
      }

      while ([v35 count] > v36);
    }
  }

  if (self->_semanticStyleRenderingSupported)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_semanticSceneType), @"semanticSceneType"}];
    *&v41 = self->_semanticStyleToneBias;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v41), @"semanticStyleToneBias"}];
    *&v42 = self->_semanticStyleWarmthBias;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v42), @"semanticStyleWarmthBias"}];
  }

  if (self->_smartStyleRenderingSupported)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_smartStyleCastType), @"smartStyleCastType"}];
    *&v43 = self->_smartStyleToneBias;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v43), @"smartStyleToneBias"}];
    *&v44 = self->_smartStyleColorBias;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v44), @"smartStyleColorBias"}];
    *&v45 = self->_smartStyleIntensity;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v45), @"smartStyleIntensity"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_depthDataDeliveryEnabled), @"depthDataDeliveryEnabled"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_swfrApplied), @"swfrApplied"}];
  if (self->_swfrApplied)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_swfrForegroundCorrectionStrength), @"swfrForegroundCorrectionStrength"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_swfrBackgroundCorrectionStrength), @"swfrBackgroundCorrectionStrength"}];
    *&v46 = self->_swfrForegroundCorrectionDirection;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v46), @"swfrForegroundCorrectionDirection"}];
    *&v47 = self->_swfrBackgroundCorrectionDirection;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v47), @"swfrBackgroundCorrectionDirection"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_swfrAnalyticsVersion), @"swfrAnalyticsVersion"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_redEyeReductionStatus), @"redEyeReductionStatus"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_lensSmudgeDetectionEnabled), @"lensDetectionEnabled"}];
  if (self->_lensSmudgeDetectionEnabled)
  {
    *&v48 = self->_smudgeProbability;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v48), @"lensDetectionProbability"}];
    *&v49 = self->_smudgeConfidence;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v49), @"lensDetectionConfidence"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_recoveredFromError), @"recoveredFromError"}];
  resolutionFlavor = self->_resolutionFlavor;
  if (resolutionFlavor)
  {
    [dictionary setObject:resolutionFlavor forKeyedSubscript:@"resolutionFlavor"];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_awbStable), @"awbStable"}];
  if (self->_awbRGain != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"awbRGain"}];
  }

  if (self->_awbGGain != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"awbGGain"}];
  }

  if (self->_awbBGain != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"awbBGain"}];
  }

  if (self->_calibrationValidationStatusCmCl != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"calibrationValidationStatusCmCl"}];
  }

  if (self->_calibrationValidationStatusCmPM != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"calibrationValidationStatusCmPM"}];
  }

  if (self->_calibrationValidationStatusFCCl != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"calibrationValidationStatusFCCl"}];
  }

  if (self->_coreRepairStatusRearCameraAssembly != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"coreRepairStatusRearCameraAssembly"}];
  }

  if (self->_coreRepairStatusFrontCameraAssembly != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"coreRepairStatusFrontCameraAssembly"}];
  }

  return dictionary;
}

@end