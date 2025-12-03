@interface BWMemoryAnalyticsPayload
- (BWMemoryAnalyticsPayload)init;
- (id)eventDictionary;
- (void)addCaptureType:(int)type;
- (void)addDeviceType:(int)type;
- (void)addHighResolutionFlavor:(int)flavor;
- (void)addPortType:(id)type;
- (void)dealloc;
- (void)reset;
- (void)updateButtonMash:(BOOL)mash;
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

- (void)addCaptureType:(int)type
{
  ++self->_captureCount;
  if (type <= 10)
  {
    if (type == 1)
    {
      v3 = 45;
      goto LABEL_13;
    }

    if (type == 10)
    {
      v3 = 40;
      goto LABEL_13;
    }

LABEL_12:
    v3 = 44;
    goto LABEL_13;
  }

  if (type == 11)
  {
    v3 = 43;
    goto LABEL_13;
  }

  if (type == 13)
  {
    v3 = 42;
    goto LABEL_13;
  }

  if (type != 12)
  {
    goto LABEL_12;
  }

  v3 = 41;
LABEL_13:
  *(&self->super.isa + v3) = 1;
}

- (void)addDeviceType:(int)type
{
  if ((type - 4) > 9)
  {
    v3 = 29;
  }

  else
  {
    v3 = qword_1AD056390[type - 4];
  }

  *(&self->super.isa + v3) = 1;
}

- (void)addHighResolutionFlavor:(int)flavor
{
  if (flavor <= 2)
  {
    *(&self->_captureResolutionDefault + flavor) = 1;
  }
}

- (void)addPortType:(id)type
{
  v5 = *off_1E798A0D8;
  if ([type isEqualToString:*off_1E798A0D8])
  {
    v6 = 34;
  }

  else if ([type isEqualToString:*off_1E798A0D0])
  {
    v6 = 33;
  }

  else
  {
    v7 = [type isEqualToString:*off_1E798A0C0];
    v6 = 35;
    if (v7)
    {
      v6 = 36;
    }
  }

  *(&self->super.isa + v6) = 1;
  if (([type isEqualToString:*off_1E798A0E0] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", *off_1E798A0E8) & 1) != 0 || (objc_msgSend(type, "isEqualToString:", *off_1E798A0F8) & 1) != 0 || objc_msgSend(type, "isEqualToString:", *off_1E798A0F0))
  {
    self->_captureDevicePositionFront = 1;
  }

  if (([type isEqualToString:*off_1E798A0C0] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", v5) & 1) != 0 || (objc_msgSend(type, "isEqualToString:", *off_1E798A0D0) & 1) != 0 || objc_msgSend(type, "isEqualToString:", *off_1E798A0C8))
  {
    self->_captureDevicePositionBack = 1;
  }
}

- (void)updateButtonMash:(BOOL)mash
{
  buttonMashRate0Counter = self->_buttonMashRate0Counter;
  if (mash)
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_creationTime timeIntervalSinceNow];
  [dictionary setObject:objc_msgSend(v4 forKeyedSubscript:{"numberWithDouble:", -v5), @"duration"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_burst), @"burst"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureDevicePositionFront), @"captureDevicePositionFront"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureDevicePositionBack), @"captureDevicePositionBack"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureDeviceTypeBravo), @"captureDeviceTypeBravo"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureDeviceTypeSuperBravo), @"captureDeviceTypeSuperBravo"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureDeviceTypeWideBravo), @"captureDeviceTypeWideBravo"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureDeviceTypePearl), @"captureDeviceTypePearl"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureDeviceTypeLiDAR), @"captureDeviceTypeLiDAR"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureDeviceTypeOther), @"captureDeviceTypeOther"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_capturePortTypeBackTelephoto), @"capturePortTypeBackTelephoto"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_capturePortTypeBackSuperWide), @"capturePortTypeBackSuperWide"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_capturePortTypeBack), @"capturePortTypeBack"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_capturePortTypeOther), @"capturePortTypeOther"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureResolutionDefault), @"captureResolutionDefault"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureResolutionEnhanced), @"captureResolutionEnhanced"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureResolutionUltraHigh), @"captureResolutionUltraHigh"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureTypeDeepFusion), @"captureTypeDeepFusion"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureTypeLearnedFusion), @"captureTypeLearnedFusion"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureTypeDigitalFlash), @"captureTypeDigitalFlash"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureTypeOther), @"captureTypeOther"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureTypeWYSIWYG), @"captureTypeWYSIWYG"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_captureTypeUB), @"captureTypeUB"}];
  [dictionary setObject:self->_clientApplicationID forKeyedSubscript:@"clientApplicationID"];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", +[BWCoreAnalyticsReporter clientApplicationIDType:](BWCoreAnalyticsReporter, "clientApplicationIDType:", self->_clientApplicationID)), @"clientIDType"}];
  [dictionary setObject:+[BWCoreAnalyticsReporter commonClientApplicationID:](BWCoreAnalyticsReporter forKeyedSubscript:{self->_clientApplicationID), @"commonClientApplicationID"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_graphContainsDepthDataPipeline), @"graphContainsDepthDataPipeline"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_graphContainsMovieFilePipeline), @"graphContainsMovieFilePipeline"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_graphHasVideoDataOutput), @"graphHasVideoDataOutput"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_greenGhostMitigation), @"greenGhostMitigation"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_scaledStillCaptureTaken), @"scaledStillCaptureTaken"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_intelligentDistortionCorrection), @"intelligentDistortionCorrection"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_livePhoto), @"livePhoto"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_maxButtonMashCount), @"maxButtonMashCount"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_proRaw), @"proRaw"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_proRawPlusProcessedPhotoEncoding), @"proRawPlusProcessedPhotoEncoding"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_quickTakeVideo), @"quickTakeVideo"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_faceDetectedInScene), @"faceDetectedInScene"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_photographicStyleUsed), @"photographicStyleUsed"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_enhancedResolutionPortraitSuggested), @"_enhancedResolutionPortraitSuggested"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_enhancedResolutionPortraitApplied), @"_enhancedResolutionPortraitApplied"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_portraitRequested), @"portraitRequested"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_portraitDepthGenerationAttempted), @"portraitDepthGenerationAttempted"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_portraitEffectApplied), @"portraitEffectApplied"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_cinematicVideo), @"cinematicVideo"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_hdrVideo), @"hdrVideo"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_proResVideo), @"proResVideo"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_colorSpace), @"colorSpace"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_videoMinDimension), @"videoMinDimension"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_videoMaxFrameRate), @"videoMaxFrameRate"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_videoRecordingCount), @"videoRecordingCount"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_maxVideoStabilizationMethod), @"maxVideoStabilizationMethod"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_videoStabilizationStrength), @"videoStabilizationStrength"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_dockKitDeviceConnected), @"dockKitDeviceConnected"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_captureCount), @"captureCount"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_peakFootprintDifference * 0.000000953674316), @"peakFootprintDifferenceMiB"}];
  return dictionary;
}

@end