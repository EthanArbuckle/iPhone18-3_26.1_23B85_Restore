@interface BWStillImageCaptureAnalyticsPayload
- (BWStillImageCaptureAnalyticsPayload)init;
- (id)eventDictionary;
- (id)eventName;
- (void)dealloc;
- (void)reset;
@end

@implementation BWStillImageCaptureAnalyticsPayload

- (BWStillImageCaptureAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWStillImageCaptureAnalyticsPayload;
  v2 = [(BWStillImageAnalyticsPayloadCommon *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWStillImageCaptureAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageCaptureAnalyticsPayload;
  [(BWStillImageAnalyticsPayloadCommon *)&v3 dealloc];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = BWStillImageCaptureAnalyticsPayload;
  [(BWStillImageAnalyticsPayloadCommon *)&v3 reset];
  self->_deviceType = 0;
  self->_processingFlags = -1;
  self->_shutterLag = 0x7FFFFFFF;
  self->_zoom = 3.4028e38;
  self->_uiZoom = 3.4028e38;
  self->_numberOfFacesWithVisionFaceDetection = 0x7FFFFFFF;
  self->_largestFaceHeight = 0.0;
  self->_smallestFaceHeight = 0.0;
  self->_numberOfFacesAtEdge = 0;
  self->_numberOfFacesAtCenter = 0;

  self->_oisRecenteringLoggingData = 0;
  self->_intelligentDistortionCorrectionStatusCode = 0x7FFFFFFF;
  self->_intelligentDistortionCorrectionGainMapProcessingStatusCode = 0x7FFFFFFF;
  self->_intelligentDistortionCorrectionCorrectionType = 0x7FFFFFFF;
  self->_ispMotionHighPassFilterConvergenceFlags = 0x7FFFFFFF;
  self->_dngFileSize = 0;
  self->_thumbnailImageSize = 0;
  self->_auxiliaryImagesSize = 0;
  self->_photoFileSize = 0;
  self->_bitDepth = 0;
  self->_depthFormatDimensionWidth = -1;
  self->_depthFormatDimensionHeight = -1;
  strcpy(&self->_depthPixelFormat, "0000");

  self->_focusPixelBlurScoreResult = 0;
  self->_fusionMode = 0;
  self->_dngCodecType = 0;
  self->_dngCodecQuality = 0.0;
}

- (id)eventName
{
  if ([(BWStillImageAnalyticsPayloadCommon *)self deferred])
  {
    return @"com.apple.coremedia.camera.DeferredPhotoCapture";
  }

  else
  {
    return @"com.apple.coremedia.camera.PhotoCapture";
  }
}

- (id)eventDictionary
{
  v9.receiver = self;
  v9.super_class = BWStillImageCaptureAnalyticsPayload;
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[BWStillImageAnalyticsPayloadCommon eventDictionary](&v9, sel_eventDictionary)}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_numberOfFacesAtEdge), @"numberOfFacesAtEdge"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_numberOfFacesAtCenter), @"numberOfFacesAtCenter"}];
  if ([(BWStillImageAnalyticsPayloadCommon *)self numberOfFaces]>= 1 && self->_largestFaceHeight > 0.0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"largestFaceHeight"}];
  }

  if ([(BWStillImageAnalyticsPayloadCommon *)self numberOfFaces]>= 1 && self->_smallestFaceHeight > 0.0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"smallestFaceHeight"}];
  }

  if ([(BWStillImageAnalyticsPayloadCommon *)self numberOfFaces]> 1)
  {
    *&v4 = self->_largestFaceHeight - self->_smallestFaceHeight;
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v4), @"deltaFaceHeight"}];
  }

  if (self->_deviceType)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"deviceType"}];
  }

  if (self->_processingFlags != -1)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"processingFlags"}];
  }

  if (self->_shutterLag != 0x7FFFFFFF)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"shutterLag"}];
  }

  if (self->_zoom != 3.4028e38)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"zoom"}];
  }

  if (self->_uiZoom != 3.4028e38)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"uiZoom"}];
  }

  oisRecenteringLoggingData = self->_oisRecenteringLoggingData;
  if (oisRecenteringLoggingData)
  {
    [v3 setObject:-[NSDictionary objectForKeyedSubscript:](oisRecenteringLoggingData forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F21A9690), @"oisMaxRecenteringDistance"}];
    [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_oisRecenteringLoggingData forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F21A96B0), @"oisSettleTimeForMaxRecenteringDistance"}];
    [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_oisRecenteringLoggingData forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F21A96D0), @"oisMeanRecenteringDistance"}];
    [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_oisRecenteringLoggingData forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F21A96F0), @"oisMeanRecenteringSettleTime"}];
    [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_oisRecenteringLoggingData forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F21A9710), @"oisTrackingErrorAtSettleTime"}];
    [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_oisRecenteringLoggingData forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F21A9730), @"meanMotionDataBiasErrorEstimate"}];
  }

  if (self->_intelligentDistortionCorrectionStatusCode != 0x7FFFFFFF)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"intelligentDistortionCorrectionStatusCode"}];
  }

  if (self->_intelligentDistortionCorrectionGainMapProcessingStatusCode != 0x7FFFFFFF)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"intelligentDistortionCorrectionGainMapProcessingStatusCode"}];
  }

  if (self->_intelligentDistortionCorrectionCorrectionType != 0x7FFFFFFF)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"intelligentDistortionCorrectionCorrectionType"}];
  }

  if (self->_ispMotionHighPassFilterConvergenceFlags != 0x7FFFFFFF)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"ispMotionHighPassFilterConvergenceFlags"}];
  }

  if (self->_dngFileSize)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"dngFileSize"}];
  }

  if (self->_thumbnailImageSize)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"thumbnailImageSize"}];
  }

  if (self->_auxiliaryImagesSize)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"auxiliaryImagesSize"}];
  }

  if (self->_photoFileSize)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"photoFileSize"}];
  }

  if (self->_bitDepth)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"bitDepth"}];
  }

  if (self->_numberOfFacesWithVisionFaceDetection != 0x7FFFFFFF)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"numberOfFacesWithVisionFaceDetection"}];
  }

  if (self->_depthFormatDimensionWidth != -1)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"depthFormatDimensionWidth"}];
  }

  if (self->_depthFormatDimensionHeight != -1)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"depthFormatDimensionHeight"}];
  }

  if ([(BWStillImageAnalyticsPayloadCommon *)self depthDataDeliveryEnabled])
  {
    [v3 setObject:BWStringForOSType() forKeyedSubscript:@"depthPixelFormat"];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_depthDataFiltered), @"depthDataFiltered"}];
  }

  focusPixelBlurScoreResult = self->_focusPixelBlurScoreResult;
  if (focusPixelBlurScoreResult)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", -[BWStillImageFocusPixelBlurScoreResult status](focusPixelBlurScoreResult, "status")), @"focusPixelBlurScoreStatus"}];
    v7 = MEMORY[0x1E696AD98];
    [(BWStillImageFocusPixelBlurScoreResult *)self->_focusPixelBlurScoreResult score];
    [v3 setObject:objc_msgSend(v7 forKeyedSubscript:{"numberWithFloat:"), @"focusPixelBlurScoreScore"}];
  }

  if (self->_fusionMode)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"fusionMode"}];
  }

  if (self->_dngCodecType)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"dngCodecType"}];
  }

  if (self->_dngCodecQuality != 0.0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"dngCodecQuality"}];
  }

  return v3;
}

@end