@interface BWMemoryAnalyticsPayload
- (BWMemoryAnalyticsPayload)init;
- (id)eventDictionary;
- (void)addCaptureType:(int)a3;
- (void)addDeviceType:(int)a3;
- (void)addHighResolutionFlavor:(int)a3;
- (void)addPortType:(id)a3;
- (void)dealloc;
- (void)reset;
- (void)updateButtonMash:(BOOL)a3;
@end

@implementation BWMemoryAnalyticsPayload

- (BWMemoryAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWMemoryAnalyticsPayload;
  v2 = [(BWMemoryAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWMemoryAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMemoryAnalyticsPayload;
  [(BWMemoryAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  self->_creationTime = objc_alloc_init(MEMORY[0x1E695DF00]);

  self->_clientApplicationID = 0;
  self->_colorSpace = -1;
}

- (void)addCaptureType:(int)a3
{
  ++self->_captureCount;
  if (a3 <= 10)
  {
    if (a3 == 1)
    {
      v3 = 45;
      goto LABEL_13;
    }

    if (a3 == 10)
    {
      v3 = 40;
      goto LABEL_13;
    }

LABEL_12:
    v3 = 44;
    goto LABEL_13;
  }

  if (a3 == 11)
  {
    v3 = 43;
    goto LABEL_13;
  }

  if (a3 == 13)
  {
    v3 = 42;
    goto LABEL_13;
  }

  if (a3 != 12)
  {
    goto LABEL_12;
  }

  v3 = 41;
LABEL_13:
  *(&self->super.isa + v3) = 1;
}

- (void)addDeviceType:(int)a3
{
  if ((a3 - 4) > 9)
  {
    v3 = 29;
  }

  else
  {
    v3 = qword_1AD056390[a3 - 4];
  }

  *(&self->super.isa + v3) = 1;
}

- (void)addHighResolutionFlavor:(int)a3
{
  if (a3 <= 2)
  {
    *(&self->_captureResolutionDefault + a3) = 1;
  }
}

- (void)addPortType:(id)a3
{
  v5 = *off_1E798A0D8;
  if ([a3 isEqualToString:*off_1E798A0D8])
  {
    v6 = 34;
  }

  else if ([a3 isEqualToString:*off_1E798A0D0])
  {
    v6 = 33;
  }

  else
  {
    v7 = [a3 isEqualToString:*off_1E798A0C0];
    v6 = 35;
    if (v7)
    {
      v6 = 36;
    }
  }

  *(&self->super.isa + v6) = 1;
  if (([a3 isEqualToString:*off_1E798A0E0] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", *off_1E798A0E8) & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", *off_1E798A0F8) & 1) != 0 || objc_msgSend(a3, "isEqualToString:", *off_1E798A0F0))
  {
    self->_captureDevicePositionFront = 1;
  }

  if (([a3 isEqualToString:*off_1E798A0C0] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", v5) & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", *off_1E798A0D0) & 1) != 0 || objc_msgSend(a3, "isEqualToString:", *off_1E798A0C8))
  {
    self->_captureDevicePositionBack = 1;
  }
}

- (void)updateButtonMash:(BOOL)a3
{
  buttonMashRate0Counter = self->_buttonMashRate0Counter;
  if (a3)
  {
    v4 = buttonMashRate0Counter + 1;
  }

  else
  {
    if (buttonMashRate0Counter < 1)
    {
      return;
    }

    v4 = 0;
    if (self->_maxButtonMashCount <= buttonMashRate0Counter + 1)
    {
      maxButtonMashCount = buttonMashRate0Counter + 1;
    }

    else
    {
      maxButtonMashCount = self->_maxButtonMashCount;
    }

    self->_maxButtonMashCount = maxButtonMashCount;
  }

  self->_buttonMashRate0Counter = v4;
}

- (id)eventDictionary
{
  [(BWMemoryAnalyticsPayload *)self updateButtonMash:0];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_creationTime timeIntervalSinceNow];
  [v3 setObject:objc_msgSend(v4 forKeyedSubscript:{"numberWithDouble:", -v5), @"duration"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_burst), @"burst"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureDevicePositionFront), @"captureDevicePositionFront"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureDevicePositionBack), @"captureDevicePositionBack"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureDeviceTypeBravo), @"captureDeviceTypeBravo"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureDeviceTypeSuperBravo), @"captureDeviceTypeSuperBravo"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureDeviceTypeWideBravo), @"captureDeviceTypeWideBravo"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureDeviceTypePearl), @"captureDeviceTypePearl"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureDeviceTypeLiDAR), @"captureDeviceTypeLiDAR"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureDeviceTypeOther), @"captureDeviceTypeOther"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_capturePortTypeBackTelephoto), @"capturePortTypeBackTelephoto"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_capturePortTypeBackSuperWide), @"capturePortTypeBackSuperWide"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_capturePortTypeBack), @"capturePortTypeBack"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_capturePortTypeOther), @"capturePortTypeOther"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureResolutionDefault), @"captureResolutionDefault"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureResolutionEnhanced), @"captureResolutionEnhanced"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureResolutionUltraHigh), @"captureResolutionUltraHigh"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureTypeDeepFusion), @"captureTypeDeepFusion"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureTypeLearnedFusion), @"captureTypeLearnedFusion"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureTypeDigitalFlash), @"captureTypeDigitalFlash"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureTypeOther), @"captureTypeOther"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureTypeWYSIWYG), @"captureTypeWYSIWYG"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureTypeUB), @"captureTypeUB"}];
  [v3 setObject:self->_clientApplicationID forKeyedSubscript:@"clientApplicationID"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", +[BWCoreAnalyticsReporter clientApplicationIDType:](BWCoreAnalyticsReporter, "clientApplicationIDType:", self->_clientApplicationID)), @"clientIDType"}];
  [v3 setObject:+[BWCoreAnalyticsReporter commonClientApplicationID:](BWCoreAnalyticsReporter forKeyedSubscript:{self->_clientApplicationID), @"commonClientApplicationID"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_graphContainsDepthDataPipeline), @"graphContainsDepthDataPipeline"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_graphContainsMovieFilePipeline), @"graphContainsMovieFilePipeline"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_graphHasVideoDataOutput), @"graphHasVideoDataOutput"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_greenGhostMitigation), @"greenGhostMitigation"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_scaledStillCaptureTaken), @"scaledStillCaptureTaken"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_intelligentDistortionCorrection), @"intelligentDistortionCorrection"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_livePhoto), @"livePhoto"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_maxButtonMashCount), @"maxButtonMashCount"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_proRaw), @"proRaw"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_proRawPlusProcessedPhotoEncoding), @"proRawPlusProcessedPhotoEncoding"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_quickTakeVideo), @"quickTakeVideo"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_faceDetectedInScene), @"faceDetectedInScene"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_photographicStyleUsed), @"photographicStyleUsed"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_enhancedResolutionPortraitSuggested), @"_enhancedResolutionPortraitSuggested"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_enhancedResolutionPortraitApplied), @"_enhancedResolutionPortraitApplied"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_portraitRequested), @"portraitRequested"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_portraitDepthGenerationAttempted), @"portraitDepthGenerationAttempted"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_portraitEffectApplied), @"portraitEffectApplied"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_cinematicVideo), @"cinematicVideo"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_hdrVideo), @"hdrVideo"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_proResVideo), @"proResVideo"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_colorSpace), @"colorSpace"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_videoMinDimension), @"videoMinDimension"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_videoMaxFrameRate), @"videoMaxFrameRate"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_videoRecordingCount), @"videoRecordingCount"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_maxVideoStabilizationMethod), @"maxVideoStabilizationMethod"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_videoStabilizationStrength), @"videoStabilizationStrength"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_dockKitDeviceConnected), @"dockKitDeviceConnected"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_captureCount), @"captureCount"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_peakFootprintDifference * 0.000000953674316), @"peakFootprintDifferenceMiB"}];
  return v3;
}

@end