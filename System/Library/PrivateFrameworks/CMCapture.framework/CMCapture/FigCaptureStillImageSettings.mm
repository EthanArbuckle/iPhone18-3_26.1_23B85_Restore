@interface FigCaptureStillImageSettings
- (BOOL)isEqual:(id)equal;
- (BOOL)isOutputFormatCompressed;
- (FigCaptureStillImageSettings)initWithCoder:(id)coder;
- (FigCaptureStillImageSettings)initWithSettingsID:(int64_t)d;
- (FigCaptureStillImageSettings)initWithSettingsID:(int64_t)d captureRequestIdentifier:(id)identifier;
- (NSDictionary)outputPixelBufferAttributes;
- (NSDictionary)previewPixelBufferAttributes;
- (NSString)imageGroupIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)figCaptureIrisPreparedSettingsRepresentation;
- (void)_initWithSettingsID:(void *)d captureRequestIdentifier:(void *)identifier imageGroupIdentifier:;
- (void)_teardownBracketStorage;
- (void)cannotProcessDepthPhotos;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)resetDimensions;
- (void)setBracketType:(int)type imageCount:(unsigned int)count;
- (void)setStillImageUserInitiatedRequestPTS:(id *)s;
@end

@implementation FigCaptureStillImageSettings

- (FigCaptureStillImageSettings)initWithSettingsID:(int64_t)d
{
  v5 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];

  return [(FigCaptureStillImageSettings *)self _initWithSettingsID:d captureRequestIdentifier:v5 imageGroupIdentifier:0];
}

- (FigCaptureStillImageSettings)initWithSettingsID:(int64_t)d captureRequestIdentifier:(id)identifier
{
  if (![objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:identifier])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid capture request identifier. Not a UUID string" userInfo:0]);
  }

  return [(FigCaptureStillImageSettings *)self _initWithSettingsID:d captureRequestIdentifier:identifier imageGroupIdentifier:0];
}

- (void)dealloc
{
  [(FigCaptureStillImageSettings *)&self->super.isa _teardownBracketStorage];
  v3.receiver = self;
  v3.super_class = FigCaptureStillImageSettings;
  [(FigCaptureStillImageSettings *)&v3 dealloc];
}

void __46__FigCaptureStillImageSettings_initWithCoder___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  [MEMORY[0x1E695F648] filterWithName:@"CIPortraitEffectLightV2"];

  objc_autoreleasePoolPop(v0);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt64:self->_settingsID forKey:@"settingsID"];
  [coder encodeInt32:self->_payloadType forKey:@"payloadType"];
  [coder encodeInt32:self->_settingsProvider forKey:@"settingsProvider"];
  outputFormat = self->_outputFormat;
  if (outputFormat)
  {
    [coder encodeInt32:outputFormat forKey:@"outputFormat"];
  }

  outputFileType = self->_outputFileType;
  if (outputFileType)
  {
    [coder encodeInt32:outputFileType forKey:@"outputFileType"];
  }

  rawOutputFormat = self->_rawOutputFormat;
  if (rawOutputFormat)
  {
    [coder encodeInt32:rawOutputFormat forKey:@"rawOutputFormat"];
  }

  rawOutputFileType = self->_rawOutputFileType;
  if (rawOutputFileType)
  {
    [coder encodeInt32:rawOutputFileType forKey:@"rawOutputFileType"];
  }

  rawOutputFileBitDepth = self->_rawOutputFileBitDepth;
  if (rawOutputFileBitDepth)
  {
    [coder encodeInt32:rawOutputFileBitDepth forKey:@"rawOutputFileBitDepth"];
  }

  rawOutputFileCodec = self->_rawOutputFileCodec;
  if (rawOutputFileCodec)
  {
    [coder encodeInt32:rawOutputFileCodec forKey:@"rawOutputFileCodec"];
  }

  if (self->_rawOutputFileCodecQuality != 0.0)
  {
    [coder encodeFloat:@"rawOutputFileCodecQuality" forKey:?];
  }

  [coder encodeInt32:self->_outputWidth forKey:@"outputWidth"];
  [coder encodeInt32:self->_outputHeight forKey:@"outputHeight"];
  [coder encodeInt32:self->_originalOutputDimensions.width forKey:@"originalOutputDimensionsWidth"];
  [coder encodeInt32:self->_originalOutputDimensions.height forKey:@"originalOutputDimensionsHeight"];
  [coder encodeBool:self->_squareCropEnabled forKey:@"squareCropEnabled"];
  [coder encodeInt32:self->_aspectRatio forKey:@"aspectRatio"];
  [coder encodeBool:self->_outputMirroring forKey:@"outputMirroring"];
  [coder encodeInt32:self->_outputRotationDegrees forKey:@"outputRotationDegrees"];
  [coder encodeBool:self->_previewEnabled forKey:@"previewEnabled"];
  if (self->_previewEnabled)
  {
    [coder encodeInt32:self->_previewFormat forKey:@"previewFormat"];
    [coder encodeInt32:self->_previewWidth forKey:@"previewWidth"];
    [coder encodeInt32:self->_previewHeight forKey:@"previewHeight"];
    [coder encodeBool:self->_previewMirroring forKey:@"previewMirroring"];
    [coder encodeInt32:self->_previewRotationDegrees forKey:@"previewRotationDegrees"];
  }

  [coder encodeBool:self->_thumbnailEnabled forKey:@"thumbnailEnabled"];
  if (self->_thumbnailEnabled)
  {
    [coder encodeInt32:self->_thumbnailFormat forKey:@"thumbnailFormat"];
    [coder encodeInt32:self->_thumbnailWidth forKey:@"thumbnailWidth"];
    [coder encodeInt32:self->_thumbnailHeight forKey:@"thumbnailHeight"];
  }

  [coder encodeBool:self->_rawThumbnailEnabled forKey:@"rawThumbnailEnabled"];
  if (self->_rawThumbnailEnabled)
  {
    [coder encodeInt32:self->_rawThumbnailFormat forKey:@"rawThumbnailFormat"];
    [coder encodeInt32:self->_rawThumbnailWidth forKey:@"rawThumbnailWidth"];
    [coder encodeInt32:self->_rawThumbnailHeight forKey:@"rawThumbnailHeight"];
  }

  [coder encodeBool:self->_noiseReductionEnabled forKey:@"powerBlurEnabled"];
  [coder encodeBool:self->_burstQualityCaptureEnabled forKey:@"burstQualityCaptureEnabled"];
  *&v11 = self->_scaleFactor;
  [coder encodeFloat:@"scaleFactor" forKey:v11];
  [coder encodeBool:self->_zoomWithoutUpscalingEnabled forKey:@"zoomWithoutUpscalingEnabled"];
  [coder encodeInt32:self->_shutterSound forKey:@"shutterSound"];
  [coder encodeInt32:self->_flashMode forKey:@"flashMode"];
  [coder encodeBool:self->_autoRedEyeReductionEnabled forKey:@"autoRedEyeReductionEnabled"];
  [coder encodeInt32:self->_digitalFlashMode forKey:@"digitalFlashMode"];
  [coder encodeBool:self->_constantColorEnabled forKey:@"constantColorEnabled"];
  [coder encodeBool:self->_constantColorFallbackPhotoDeliveryEnabled forKey:@"constantColorFallbackPhotoDeliveryEnabled"];
  [coder encodeBool:self->_autoStereoPhotoCaptureEnabled forKey:@"autoStereoPhotoCaptureEnabled"];
  [coder encodeInt32:self->_wideColorMode forKey:@"wideColorMode"];
  [coder encodeInt32:self->_HDRMode forKey:@"HDRMode"];
  if (self->_depthDataDeliveryEnabled)
  {
    [coder encodeBool:1 forKey:@"depthDataDeliveryEnabled"];
    [coder encodeBool:self->_embedsDepthDataInImage forKey:@"embedsDepthDataInImage"];
    [coder encodeBool:self->_depthDataFiltered forKey:@"depthDataFiltered"];
  }

  [coder encodeBool:self->_cameraCalibrationDataDeliveryEnabled forKey:@"cameraCalibrationDataDeliveryEnabled"];
  if (self->_portraitEffectsMatteDeliveryEnabled)
  {
    [coder encodeBool:1 forKey:@"portraitEffectsMatteDeliveryEnabled"];
    [coder encodeBool:self->_embedsPortraitEffectsMatteInImage forKey:@"embedsPortraitEffectsMatteInImage"];
  }

  if ([(NSArray *)self->_enabledSemanticSegmentationMatteURNs count])
  {
    [coder encodeObject:self->_enabledSemanticSegmentationMatteURNs forKey:@"enabledSemanticSegmentationMatteURNs"];
    [coder encodeBool:self->_embedsSemanticSegmentationMattesInImage forKey:@"embedsSemanticSegmentationMattesInImage"];
  }

  if ([(NSDictionary *)self->_metadata count])
  {
    [coder encodeObject:self->_metadata forKey:@"metadata"];
  }

  if ([(NSDictionary *)self->_metadataForOriginalImage count])
  {
    [coder encodeObject:self->_metadataForOriginalImage forKey:@"metadataForOriginalImage"];
  }

  if ([(NSArray *)self->_originalImageFilters count])
  {
    [coder encodeObject:self->_originalImageFilters forKey:@"originalImageFilters"];
  }

  if ([(NSArray *)self->_processedImageFilters count])
  {
    [coder encodeObject:self->_processedImageFilters forKey:@"processedImageFilters"];
  }

  [coder encodeBool:self->_providesOriginalImage forKey:@"providesOriginalImage"];
  *&v12 = self->_simulatedAperture;
  [coder encodeFloat:@"simulatedAperture" forKey:v12];
  *&v13 = self->_portraitLightingEffectStrength;
  [coder encodeFloat:@"portraitLightingEffectStrength" forKey:v13];
  if ([(NSArray *)self->_bravoConstituentImageDeliveryDeviceTypes count])
  {
    [coder encodeObject:self->_bravoConstituentImageDeliveryDeviceTypes forKey:@"bravoConstituentImageDeliveryDeviceTypes"];
  }

  if ([(NSDictionary *)self->_spatialOverCaptureMetadata count])
  {
    [coder encodeObject:self->_spatialOverCaptureMetadata forKey:@"spatialOverCaptureMetadata"];
  }

  if ([(NSDictionary *)self->_spatialOverCaptureMetadataForOriginalImage count])
  {
    [coder encodeObject:self->_spatialOverCaptureMetadataForOriginalImage forKey:@"spatialOverCaptureMetadataForOriginalImage"];
  }

  [coder encodeBool:self->_autoDeferredProcessingEnabled forKey:@"autoDeferredProcessingEnabled"];
  [coder encodeInt32:self->_qualityPrioritization forKey:@"qualityPrioritization"];
  [coder encodeInt32:self->_clientQualityPrioritization forKey:@"clientQualityPrioritization"];
  [coder encodeInt32:self->_bravoImageFusionMode forKey:@"bravoImageFusionMode"];
  [coder encodeBool:self->_autoIntelligentDistortionCorrectionEnabled forKey:@"autoIntelligentDistortionCorrectionEnabled"];
  [coder encodeObject:self->_vtCompressionProperties forKey:@"vtCompressionProperties"];
  [coder encodeInt32:self->_bracketType forKey:@"bracketType"];
  [coder encodeInt32:self->_bracketImageCount forKey:@"bracketImageCount"];
  [coder encodeBool:self->_lensStabilizationDuringBracketEnabled forKey:@"lensStabilizationDuringBracketEnabled"];
  bracketType = self->_bracketType;
  if (bracketType == 1)
  {
    ISOs = self->_ISOs;
    if (ISOs)
    {
      [coder encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", ISOs, 4 * self->_bracketImageCount), @"ISOs"}];
    }

    exposureDurations = self->_exposureDurations;
    if (exposureDurations)
    {
      v16 = [MEMORY[0x1E695DEF0] dataWithBytes:exposureDurations length:24 * self->_bracketImageCount];
      v17 = @"exposureDurations";
      goto LABEL_49;
    }
  }

  else if (bracketType == 2)
  {
    exposureTargetBiases = self->_exposureTargetBiases;
    if (exposureTargetBiases)
    {
      v16 = [MEMORY[0x1E695DEF0] dataWithBytes:exposureTargetBiases length:4 * self->_bracketImageCount];
      v17 = @"exposureTargetBiases";
LABEL_49:
      [coder encodeObject:v16 forKey:v17];
    }
  }

  [coder encodeInt64:self->_stillImageUserInitiatedRequestTime forKey:@"stillImageUserInitiatedRequestTime"];
  v20 = *MEMORY[0x1E695E480];
  stillImageUserInitiatedRequestPTS = self->_stillImageUserInitiatedRequestPTS;
  v21 = CMTimeCopyAsDictionary(&stillImageUserInitiatedRequestPTS, v20);
  [coder encodeObject:v21 forKey:@"stillImageUserInitiatedRequestPTS"];

  [coder encodeInt64:self->_stillImageRequestTime forKey:@"stillImageRequestTime"];
  [coder encodeInt64:self->_stillImageCaptureStartTime forKey:@"stillImageCaptureStartTime"];
  [coder encodeDouble:@"stillImageCaptureAbsoluteStartTime" forKey:self->_stillImageCaptureAbsoluteStartTime];
  [coder encodeObject:self->_imageGroupIdentifier forKey:@"imageGroupIdentifier"];
  [coder encodeObject:self->_captureRequestIdentifier forKey:@"captureRequestIdentifier"];
  [coder encodeBool:self->_clientInitiatedPrepareSettings forKey:@"clientInitiatedPrepareSettings"];
  [coder encodeBool:self->_userInitiatedRequestSettings forKey:@"userInitiatedRequestSettings"];
  [coder encodeBool:self->_beginMomentCaptureSettings forKey:@"beginMomentCaptureSettings"];
  *&v22 = self->_videoStabilizationOverscanCropMultiplier;
  [coder encodeFloat:@"videoStabilizationOverscanCropMultiplier" forKey:v22];
  [coder encodeInt32:self->_resolutionFlavor forKey:@"resolutionFlavor"];
  [coder encodeInt32:self->_deferredPhotoProxyWidth forKey:@"deferredPhotoProxyWidth"];
  [coder encodeInt32:self->_deferredPhotoProxyHeight forKey:@"deferredPhotoProxyHeight"];
  [coder encodeInt32:self->_deferredPhotoFinalWidth forKey:@"deferredPhotoFinalWidth"];
  [coder encodeInt32:self->_deferredPhotoFinalHeight forKey:@"deferredPhotoFinalHeight"];
  [coder encodeInt32:self->_deferredPhotoFinalThumbnailDimensions.width forKey:@"deferredPhotoFinalThumbnailDimensionsWidth"];
  [coder encodeInt32:self->_deferredPhotoFinalThumbnailDimensions.height forKey:@"deferredPhotoFinalThumbnailDimensionsHeight"];
  [coder encodeInt32:self->_deferredPhotoFinalRawThumbnailDimensions.width forKey:@"deferredPhotoFinalRawThumbnailDimensionsWidth"];
  [coder encodeInt32:self->_deferredPhotoFinalRawThumbnailDimensions.height forKey:@"deferredPhotoFinalRawThumbnailDimensionsHeight"];
  [coder encodeInt32:self->_deferredSourceDeviceType forKey:@"deferredSourceDeviceType"];
  [coder encodeInt32:self->_deferredSourcePosition forKey:@"deferredSourcePosition"];
  [coder encodeObject:self->_deferredVideoFormatUniqueID forKey:@"deferredVideoFormatUniqueID"];
  [coder encodeObject:self->_deferredDepthDataFormatUniqueID forKey:@"deferredDepthDataFormatUniqueID"];
  [coder encodeBool:self->_bypassUpscaling forKey:@"bypassUpscaling"];
  [coder encodeObject:self->_cmioCompressedFormat forKey:@"compressedFormat"];
  [coder encodeBool:self->_cmioHighResolutionPhotoEnabled forKey:@"highResolutionPhotoEnabled"];
  [coder encodeInt32:self->_cmioMaxPhotoDimensionsWidth forKey:@"maxPhotoDimensionsWidth"];
  [coder encodeInt32:self->_cmioMaxPhotoDimensionsHeight forKey:@"maxPhotoDimensionsHeight"];
  [coder encodeBool:self->_deviceOrientationCorrectionEnabled forKey:@"deviceOrientationCorrectionEnabled"];
  smartStyle = self->_smartStyle;
  if (smartStyle)
  {
    [coder encodeObject:smartStyle forKey:@"smartStyle"];
  }

  [coder encodeBool:self->_smartStyleReversibilitySupported forKey:@"smartStyleReversibilitySupported"];
  if ([(NSArray *)self->_photoLibraryThumbnailDimensions count])
  {
    [coder encodeObject:self->_photoLibraryThumbnailDimensions forKey:@"photoLibraryThumbnailDimensions"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithSettingsID:captureRequestIdentifier:", self->_settingsID, self->_captureRequestIdentifier}];

  *(v4 + 408) = self->_imageGroupIdentifier;
  [v4 setPayloadType:self->_payloadType];
  [v4 setSettingsProvider:self->_settingsProvider];
  [v4 setOutputFormat:self->_outputFormat];
  [v4 setOutputFileType:self->_outputFileType];
  [v4 setRawOutputFormat:self->_rawOutputFormat];
  [v4 setRawOutputFileType:self->_rawOutputFileType];
  [v4 setRawOutputFileBitDepth:self->_rawOutputFileBitDepth];
  [v4 setRawOutputFileCodec:self->_rawOutputFileCodec];
  *&v5 = self->_rawOutputFileCodecQuality;
  [v4 setRawOutputFileCodecQuality:v5];
  [v4 setOutputWidth:self->_outputWidth];
  [v4 setOutputHeight:self->_outputHeight];
  [v4 setOriginalOutputDimensions:*&self->_originalOutputDimensions];
  [v4 setSquareCropEnabled:self->_squareCropEnabled];
  [v4 setAspectRatio:self->_aspectRatio];
  [v4 setOutputMirroring:self->_outputMirroring];
  [v4 setOutputRotationDegrees:self->_outputRotationDegrees];
  [v4 setPreviewEnabled:self->_previewEnabled];
  if (self->_previewEnabled)
  {
    [v4 setPreviewFormat:self->_previewFormat];
    [v4 setPreviewWidth:self->_previewWidth];
    [v4 setPreviewHeight:self->_previewHeight];
    [v4 setPreviewMirroring:self->_previewMirroring];
    [v4 setPreviewRotationDegrees:self->_previewRotationDegrees];
  }

  [v4 setThumbnailEnabled:self->_thumbnailEnabled];
  if (self->_thumbnailEnabled)
  {
    [v4 setThumbnailFormat:self->_thumbnailFormat];
    [v4 setThumbnailWidth:self->_thumbnailWidth];
    [v4 setThumbnailHeight:self->_thumbnailHeight];
  }

  [v4 setRawThumbnailEnabled:self->_rawThumbnailEnabled];
  if (self->_rawThumbnailEnabled)
  {
    [v4 setRawThumbnailFormat:self->_rawThumbnailFormat];
    [v4 setRawThumbnailWidth:self->_rawThumbnailWidth];
    [v4 setRawThumbnailHeight:self->_rawThumbnailHeight];
  }

  [v4 setNoiseReductionEnabled:self->_noiseReductionEnabled];
  [v4 setBurstQualityCaptureEnabled:self->_burstQualityCaptureEnabled];
  *&v6 = self->_scaleFactor;
  [v4 setScaleFactor:v6];
  [v4 setZoomWithoutUpscalingEnabled:self->_zoomWithoutUpscalingEnabled];
  [v4 setShutterSound:self->_shutterSound];
  [v4 setFlashMode:self->_flashMode];
  [v4 setAutoRedEyeReductionEnabled:self->_autoRedEyeReductionEnabled];
  [v4 setDigitalFlashMode:self->_digitalFlashMode];
  [v4 setConstantColorEnabled:self->_constantColorEnabled];
  [v4 setConstantColorFallbackPhotoDeliveryEnabled:self->_constantColorFallbackPhotoDeliveryEnabled];
  [v4 setAutoStereoPhotoCaptureEnabled:self->_autoStereoPhotoCaptureEnabled];
  [v4 setWideColorMode:self->_wideColorMode];
  [v4 setHDRMode:self->_HDRMode];
  if (self->_depthDataDeliveryEnabled)
  {
    [v4 setDepthDataDeliveryEnabled:1];
    [v4 setEmbedsDepthDataInImage:self->_embedsDepthDataInImage];
    [v4 setDepthDataFiltered:self->_depthDataFiltered];
  }

  if (self->_portraitEffectsMatteDeliveryEnabled)
  {
    [v4 setPortraitEffectsMatteDeliveryEnabled:1];
    [v4 setEmbedsPortraitEffectsMatteInImage:self->_embedsPortraitEffectsMatteInImage];
  }

  if ([(NSArray *)self->_enabledSemanticSegmentationMatteURNs count])
  {
    [v4 setEnabledSemanticSegmentationMatteURNs:self->_enabledSemanticSegmentationMatteURNs];
    [v4 setEmbedsSemanticSegmentationMattesInImage:self->_embedsSemanticSegmentationMattesInImage];
  }

  [v4 setCameraCalibrationDataDeliveryEnabled:self->_cameraCalibrationDataDeliveryEnabled];
  [v4 setMetadata:self->_metadata];
  [v4 setMetadataForOriginalImage:self->_metadataForOriginalImage];
  [v4 setOriginalImageFilters:self->_originalImageFilters];
  [v4 setProcessedImageFilters:self->_processedImageFilters];
  *&v7 = self->_simulatedAperture;
  [v4 setSimulatedAperture:v7];
  *&v8 = self->_portraitLightingEffectStrength;
  [v4 setPortraitLightingEffectStrength:v8];
  [v4 setProvidesOriginalImage:self->_providesOriginalImage];
  [v4 setBravoConstituentImageDeliveryDeviceTypes:self->_bravoConstituentImageDeliveryDeviceTypes];
  [v4 setSpatialOverCaptureMetadata:self->_spatialOverCaptureMetadata];
  [v4 setSpatialOverCaptureMetadataForOriginalImage:self->_spatialOverCaptureMetadataForOriginalImage];
  [v4 setAutoDeferredProcessingEnabled:self->_autoDeferredProcessingEnabled];
  [v4 setQualityPrioritization:self->_qualityPrioritization];
  [v4 setClientQualityPrioritization:self->_clientQualityPrioritization];
  [v4 setBravoImageFusionMode:self->_bravoImageFusionMode];
  [v4 setAutoIntelligentDistortionCorrectionEnabled:self->_autoIntelligentDistortionCorrectionEnabled];
  [v4 setVtCompressionProperties:self->_vtCompressionProperties];
  [v4 setBracketType:self->_bracketType imageCount:self->_bracketImageCount];
  [v4 setLensStabilizationDuringBracketEnabled:self->_lensStabilizationDuringBracketEnabled];
  bracketType = self->_bracketType;
  if (bracketType == 2)
  {
    *(v4 + 344) = malloc_type_calloc(self->_bracketImageCount, 4uLL, 0x100004052888210uLL);
    exposureTargetBiases = [v4 exposureTargetBiases];
    v11 = 344;
    goto LABEL_17;
  }

  if (bracketType == 1)
  {
    *(v4 + 328) = malloc_type_calloc(self->_bracketImageCount, 0x18uLL, 0x1000040504FFAC1uLL);
    memcpy([v4 exposureDurations], self->_exposureDurations, 24 * self->_bracketImageCount);
    *(v4 + 336) = malloc_type_calloc(self->_bracketImageCount, 4uLL, 0x100004052888210uLL);
    exposureTargetBiases = [v4 ISOs];
    v11 = 336;
LABEL_17:
    memcpy(exposureTargetBiases, *(&self->super.isa + v11), 4 * self->_bracketImageCount);
  }

  [v4 setStillImageUserInitiatedRequestTime:self->_stillImageUserInitiatedRequestTime];
  v14 = *&self->_stillImageUserInitiatedRequestPTS.value;
  epoch = self->_stillImageUserInitiatedRequestPTS.epoch;
  [v4 setStillImageUserInitiatedRequestPTS:&v14];
  [v4 setStillImageRequestTime:self->_stillImageRequestTime];
  [v4 setStillImageCaptureStartTime:self->_stillImageCaptureStartTime];
  [v4 setStillImageCaptureAbsoluteStartTime:self->_stillImageCaptureAbsoluteStartTime];
  [v4 setImageGroupIdentifier:self->_imageGroupIdentifier];
  [v4 setClientInitiatedPrepareSettings:self->_clientInitiatedPrepareSettings];
  [v4 setUserInitiatedRequestSettings:self->_userInitiatedRequestSettings];
  *&v12 = self->_videoStabilizationOverscanCropMultiplier;
  [v4 setVideoStabilizationOverscanCropMultiplier:v12];
  [v4 setResolutionFlavor:self->_resolutionFlavor];
  [v4 setDeferredPhotoProxyWidth:self->_deferredPhotoProxyWidth];
  [v4 setDeferredPhotoProxyHeight:self->_deferredPhotoProxyHeight];
  [v4 setDeferredPhotoFinalWidth:self->_deferredPhotoFinalWidth];
  [v4 setDeferredPhotoFinalHeight:self->_deferredPhotoFinalHeight];
  [v4 setDeferredPhotoFinalThumbnailDimensions:*&self->_deferredPhotoFinalThumbnailDimensions];
  [v4 setDeferredPhotoFinalRawThumbnailDimensions:*&self->_deferredPhotoFinalRawThumbnailDimensions];
  [v4 setDeferredSourceDeviceType:self->_deferredSourceDeviceType];
  [v4 setDeferredSourcePosition:self->_deferredSourcePosition];
  [v4 setDeferredVideoFormatUniqueID:self->_deferredVideoFormatUniqueID];
  [v4 setDeferredDepthDataFormatUniqueID:self->_deferredDepthDataFormatUniqueID];
  [v4 setBypassUpscaling:self->_bypassUpscaling];
  [v4 setCmioCompressedFormat:self->_cmioCompressedFormat];
  [v4 setCmioHighResolutionPhotoEnabled:self->_cmioHighResolutionPhotoEnabled];
  [v4 setCmioMaxPhotoDimensionsWidth:self->_cmioMaxPhotoDimensionsWidth];
  [v4 setCmioMaxPhotoDimensionsHeight:self->_cmioMaxPhotoDimensionsHeight];
  [v4 setDeviceOrientationCorrectionEnabled:self->_deviceOrientationCorrectionEnabled];
  [v4 setSmartStyle:self->_smartStyle];
  [v4 setSmartStyleReversibilitySupported:self->_smartStyleReversibilitySupported];
  [v4 setPhotoLibraryThumbnailDimensions:self->_photoLibraryThumbnailDimensions];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(exposureDurations) = 1;
    return exposureDurations;
  }

  v129 = v6;
  v130 = v5;
  v131 = v3;
  v132 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_154;
  }

  settingsID = self->_settingsID;
  if (settingsID != [equal settingsID])
  {
    goto LABEL_154;
  }

  payloadType = self->_payloadType;
  if (payloadType != [equal payloadType])
  {
    goto LABEL_154;
  }

  settingsProvider = self->_settingsProvider;
  if (settingsProvider != [equal settingsProvider])
  {
    goto LABEL_154;
  }

  outputFormat = self->_outputFormat;
  if (outputFormat != [equal outputFormat])
  {
    goto LABEL_154;
  }

  outputFileType = self->_outputFileType;
  if (outputFileType != [equal outputFileType])
  {
    goto LABEL_154;
  }

  rawOutputFormat = self->_rawOutputFormat;
  if (rawOutputFormat != [equal rawOutputFormat])
  {
    goto LABEL_154;
  }

  rawOutputFileType = self->_rawOutputFileType;
  if (rawOutputFileType != [equal rawOutputFileType])
  {
    goto LABEL_154;
  }

  rawOutputFileBitDepth = self->_rawOutputFileBitDepth;
  if (rawOutputFileBitDepth != [equal rawOutputFileBitDepth])
  {
    goto LABEL_154;
  }

  rawOutputFileCodec = self->_rawOutputFileCodec;
  if (rawOutputFileCodec != [equal rawOutputFileCodec])
  {
    goto LABEL_154;
  }

  rawOutputFileCodecQuality = self->_rawOutputFileCodecQuality;
  [equal rawOutputFileCodecQuality];
  if (rawOutputFileCodecQuality != v19)
  {
    goto LABEL_154;
  }

  outputWidth = self->_outputWidth;
  if (outputWidth != [equal outputWidth])
  {
    goto LABEL_154;
  }

  outputHeight = self->_outputHeight;
  if (outputHeight != [equal outputHeight])
  {
    goto LABEL_154;
  }

  if (*&self->_originalOutputDimensions != [equal originalOutputDimensions])
  {
    goto LABEL_154;
  }

  squareCropEnabled = self->_squareCropEnabled;
  if (squareCropEnabled != [equal squareCropEnabled])
  {
    goto LABEL_154;
  }

  aspectRatio = self->_aspectRatio;
  if (aspectRatio != [equal aspectRatio])
  {
    goto LABEL_154;
  }

  outputMirroring = self->_outputMirroring;
  if (outputMirroring != [equal outputMirroring])
  {
    goto LABEL_154;
  }

  outputRotationDegrees = self->_outputRotationDegrees;
  if (outputRotationDegrees != [equal outputRotationDegrees])
  {
    goto LABEL_154;
  }

  previewEnabled = self->_previewEnabled;
  if (previewEnabled != [equal previewEnabled])
  {
    goto LABEL_154;
  }

  previewFormat = self->_previewFormat;
  if (previewFormat != [equal previewFormat])
  {
    goto LABEL_154;
  }

  previewWidth = self->_previewWidth;
  if (previewWidth != [equal previewWidth])
  {
    goto LABEL_154;
  }

  previewHeight = self->_previewHeight;
  if (previewHeight != [equal previewHeight])
  {
    goto LABEL_154;
  }

  previewMirroring = self->_previewMirroring;
  if (previewMirroring != [equal previewMirroring])
  {
    goto LABEL_154;
  }

  previewRotationDegrees = self->_previewRotationDegrees;
  if (previewRotationDegrees != [equal previewRotationDegrees])
  {
    goto LABEL_154;
  }

  thumbnailEnabled = self->_thumbnailEnabled;
  if (thumbnailEnabled != [equal thumbnailEnabled])
  {
    goto LABEL_154;
  }

  thumbnailFormat = self->_thumbnailFormat;
  if (thumbnailFormat != [equal thumbnailFormat])
  {
    goto LABEL_154;
  }

  thumbnailWidth = self->_thumbnailWidth;
  if (thumbnailWidth != [equal thumbnailWidth])
  {
    goto LABEL_154;
  }

  thumbnailHeight = self->_thumbnailHeight;
  if (thumbnailHeight != [equal thumbnailHeight])
  {
    goto LABEL_154;
  }

  rawThumbnailEnabled = self->_rawThumbnailEnabled;
  if (rawThumbnailEnabled != [equal rawThumbnailEnabled])
  {
    goto LABEL_154;
  }

  rawThumbnailFormat = self->_rawThumbnailFormat;
  if (rawThumbnailFormat != [equal rawThumbnailFormat])
  {
    goto LABEL_154;
  }

  rawThumbnailWidth = self->_rawThumbnailWidth;
  if (rawThumbnailWidth != [equal rawThumbnailWidth])
  {
    goto LABEL_154;
  }

  rawThumbnailHeight = self->_rawThumbnailHeight;
  if (rawThumbnailHeight != [equal rawThumbnailHeight])
  {
    goto LABEL_154;
  }

  noiseReductionEnabled = self->_noiseReductionEnabled;
  if (noiseReductionEnabled != [equal noiseReductionEnabled])
  {
    goto LABEL_154;
  }

  burstQualityCaptureEnabled = self->_burstQualityCaptureEnabled;
  if (burstQualityCaptureEnabled != [equal burstQualityCaptureEnabled])
  {
    goto LABEL_154;
  }

  scaleFactor = self->_scaleFactor;
  [equal scaleFactor];
  if (scaleFactor != v43)
  {
    goto LABEL_154;
  }

  zoomWithoutUpscalingEnabled = self->_zoomWithoutUpscalingEnabled;
  if (zoomWithoutUpscalingEnabled != [equal isZoomWithoutUpscalingEnabled])
  {
    goto LABEL_154;
  }

  shutterSound = self->_shutterSound;
  if (shutterSound != [equal shutterSound])
  {
    goto LABEL_154;
  }

  flashMode = self->_flashMode;
  if (flashMode != [equal flashMode])
  {
    goto LABEL_154;
  }

  autoRedEyeReductionEnabled = self->_autoRedEyeReductionEnabled;
  if (autoRedEyeReductionEnabled != [equal autoRedEyeReductionEnabled])
  {
    goto LABEL_154;
  }

  digitalFlashMode = self->_digitalFlashMode;
  if (digitalFlashMode != [equal digitalFlashMode])
  {
    goto LABEL_154;
  }

  constantColorEnabled = self->_constantColorEnabled;
  if (constantColorEnabled != [equal constantColorEnabled])
  {
    goto LABEL_154;
  }

  constantColorFallbackPhotoDeliveryEnabled = self->_constantColorFallbackPhotoDeliveryEnabled;
  if (constantColorFallbackPhotoDeliveryEnabled != [equal constantColorFallbackPhotoDeliveryEnabled])
  {
    goto LABEL_154;
  }

  autoStereoPhotoCaptureEnabled = self->_autoStereoPhotoCaptureEnabled;
  if (autoStereoPhotoCaptureEnabled != [equal autoStereoPhotoCaptureEnabled])
  {
    goto LABEL_154;
  }

  wideColorMode = self->_wideColorMode;
  if (wideColorMode != [equal wideColorMode])
  {
    goto LABEL_154;
  }

  HDRMode = self->_HDRMode;
  if (HDRMode != [equal HDRMode])
  {
    goto LABEL_154;
  }

  depthDataDeliveryEnabled = self->_depthDataDeliveryEnabled;
  if (depthDataDeliveryEnabled != [equal depthDataDeliveryEnabled])
  {
    goto LABEL_154;
  }

  embedsDepthDataInImage = self->_embedsDepthDataInImage;
  if (embedsDepthDataInImage != [equal embedsDepthDataInImage])
  {
    goto LABEL_154;
  }

  depthDataFiltered = self->_depthDataFiltered;
  if (depthDataFiltered != [equal depthDataFiltered])
  {
    goto LABEL_154;
  }

  cameraCalibrationDataDeliveryEnabled = self->_cameraCalibrationDataDeliveryEnabled;
  if (cameraCalibrationDataDeliveryEnabled != [equal cameraCalibrationDataDeliveryEnabled])
  {
    goto LABEL_154;
  }

  portraitEffectsMatteDeliveryEnabled = self->_portraitEffectsMatteDeliveryEnabled;
  if (portraitEffectsMatteDeliveryEnabled != [equal portraitEffectsMatteDeliveryEnabled])
  {
    goto LABEL_154;
  }

  embedsPortraitEffectsMatteInImage = self->_embedsPortraitEffectsMatteInImage;
  if (embedsPortraitEffectsMatteInImage != [equal embedsPortraitEffectsMatteInImage])
  {
    goto LABEL_154;
  }

  v60 = [MEMORY[0x1E695DFD8] setWithArray:self->_enabledSemanticSegmentationMatteURNs];
  LODWORD(exposureDurations) = [v60 isEqual:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(equal, "enabledSemanticSegmentationMatteURNs"))}];
  if (!exposureDurations)
  {
    return exposureDurations;
  }

  embedsSemanticSegmentationMattesInImage = self->_embedsSemanticSegmentationMattesInImage;
  if (embedsSemanticSegmentationMattesInImage != [equal embedsSemanticSegmentationMattesInImage])
  {
    goto LABEL_154;
  }

  metadata = self->_metadata;
  if (metadata == [equal metadata] || (LODWORD(exposureDurations) = -[NSDictionary isEqual:](self->_metadata, "isEqual:", objc_msgSend(equal, "metadata")), exposureDurations))
  {
    metadataForOriginalImage = self->_metadataForOriginalImage;
    if (metadataForOriginalImage == [equal metadataForOriginalImage] || (LODWORD(exposureDurations) = -[NSDictionary isEqual:](self->_metadataForOriginalImage, "isEqual:", objc_msgSend(equal, "metadataForOriginalImage")), exposureDurations))
    {
      v65 = [(NSArray *)self->_originalImageFilters count];
      if (v65 != [objc_msgSend(equal "originalImageFilters")])
      {
        goto LABEL_154;
      }

      if ([(NSArray *)self->_originalImageFilters count])
      {
        v66 = 0;
        v67 = 1;
        while (([objc_msgSend(-[NSArray objectAtIndexedSubscript:](self->_originalImageFilters objectAtIndexedSubscript:{v66), "name"), "isEqualToString:", objc_msgSend(objc_msgSend(objc_msgSend(equal, "originalImageFilters"), "objectAtIndexedSubscript:", v66), "name")}] & 1) != 0)
        {
          v66 = v67;
          v68 = [(NSArray *)self->_originalImageFilters count]> v67++;
          if (!v68)
          {
            goto LABEL_64;
          }
        }

        goto LABEL_154;
      }

LABEL_64:
      v69 = [(NSArray *)self->_processedImageFilters count];
      if (v69 != [objc_msgSend(equal "processedImageFilters")])
      {
        goto LABEL_154;
      }

      if ([(NSArray *)self->_processedImageFilters count])
      {
        v70 = 0;
        v71 = 1;
        while (([objc_msgSend(-[NSArray objectAtIndexedSubscript:](self->_processedImageFilters objectAtIndexedSubscript:{v70), "name"), "isEqualToString:", objc_msgSend(objc_msgSend(objc_msgSend(equal, "processedImageFilters"), "objectAtIndexedSubscript:", v70), "name")}] & 1) != 0)
        {
          v70 = v71;
          v68 = [(NSArray *)self->_processedImageFilters count]> v71++;
          if (!v68)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_154;
      }

LABEL_69:
      simulatedAperture = self->_simulatedAperture;
      [equal simulatedAperture];
      if (simulatedAperture != v73)
      {
        goto LABEL_154;
      }

      portraitLightingEffectStrength = self->_portraitLightingEffectStrength;
      [equal portraitLightingEffectStrength];
      if (portraitLightingEffectStrength != v75)
      {
        goto LABEL_154;
      }

      providesOriginalImage = self->_providesOriginalImage;
      if (providesOriginalImage != [equal providesOriginalImage])
      {
        goto LABEL_154;
      }

      bravoConstituentImageDeliveryDeviceTypes = self->_bravoConstituentImageDeliveryDeviceTypes;
      if (bravoConstituentImageDeliveryDeviceTypes == [equal bravoConstituentImageDeliveryDeviceTypes] || (LODWORD(exposureDurations) = -[NSArray isEqual:](self->_bravoConstituentImageDeliveryDeviceTypes, "isEqual:", objc_msgSend(equal, "bravoConstituentImageDeliveryDeviceTypes")), exposureDurations))
      {
        spatialOverCaptureMetadata = self->_spatialOverCaptureMetadata;
        if (spatialOverCaptureMetadata == [equal spatialOverCaptureMetadata] || (LODWORD(exposureDurations) = -[NSDictionary isEqual:](self->_spatialOverCaptureMetadata, "isEqual:", objc_msgSend(equal, "spatialOverCaptureMetadata")), exposureDurations))
        {
          spatialOverCaptureMetadataForOriginalImage = self->_spatialOverCaptureMetadataForOriginalImage;
          if (spatialOverCaptureMetadataForOriginalImage == [equal spatialOverCaptureMetadataForOriginalImage] || (LODWORD(exposureDurations) = -[NSDictionary isEqual:](self->_spatialOverCaptureMetadataForOriginalImage, "isEqual:", objc_msgSend(equal, "spatialOverCaptureMetadataForOriginalImage")), exposureDurations))
          {
            autoDeferredProcessingEnabled = self->_autoDeferredProcessingEnabled;
            if (autoDeferredProcessingEnabled != [equal autoDeferredProcessingEnabled])
            {
              goto LABEL_154;
            }

            qualityPrioritization = self->_qualityPrioritization;
            if (qualityPrioritization != [equal qualityPrioritization])
            {
              goto LABEL_154;
            }

            clientQualityPrioritization = self->_clientQualityPrioritization;
            if (clientQualityPrioritization != [equal clientQualityPrioritization])
            {
              goto LABEL_154;
            }

            bravoImageFusionMode = self->_bravoImageFusionMode;
            if (bravoImageFusionMode != [equal bravoImageFusionMode])
            {
              goto LABEL_154;
            }

            autoIntelligentDistortionCorrectionEnabled = self->_autoIntelligentDistortionCorrectionEnabled;
            if (autoIntelligentDistortionCorrectionEnabled != [equal autoIntelligentDistortionCorrectionEnabled])
            {
              goto LABEL_154;
            }

            vtCompressionProperties = self->_vtCompressionProperties;
            if (vtCompressionProperties != [equal vtCompressionProperties])
            {
              LODWORD(exposureDurations) = -[NSDictionary isEqual:](self->_vtCompressionProperties, "isEqual:", [equal vtCompressionProperties]);
              if (!exposureDurations)
              {
                return exposureDurations;
              }
            }

            bracketType = self->_bracketType;
            if (bracketType != [equal bracketType])
            {
              goto LABEL_154;
            }

            bracketImageCount = self->_bracketImageCount;
            if (bracketImageCount != [equal bracketImageCount])
            {
              goto LABEL_154;
            }

            lensStabilizationDuringBracketEnabled = self->_lensStabilizationDuringBracketEnabled;
            if (lensStabilizationDuringBracketEnabled != [equal lensStabilizationDuringBracketEnabled])
            {
              goto LABEL_154;
            }

            if (self->_bracketImageCount)
            {
              v89 = 0;
              v90 = 0;
              do
              {
                if (self->_exposureDurations)
                {
                  goto LABEL_160;
                }

                if ([equal exposureDurations])
                {
                  goto LABEL_154;
                }

                if (self->_exposureDurations)
                {
LABEL_160:
                  exposureDurations = [equal exposureDurations];
                  if (!exposureDurations)
                  {
                    return exposureDurations;
                  }

                  if (self->_exposureDurations)
                  {
                    if ([equal exposureDurations])
                    {
                      v91 = &self->_exposureDurations[v89];
                      exposureDurations2 = [equal exposureDurations];
                      v93 = *&v91->var0;
                      time1.epoch = v91->var3;
                      *&time1.value = v93;
                      v94 = *(exposureDurations2 + v89 * 24);
                      stillImageUserInitiatedRequestPTS.epoch = *(exposureDurations2 + v89 * 24 + 16);
                      *&stillImageUserInitiatedRequestPTS.value = v94;
                      if (CMTimeCompare(&time1, &stillImageUserInitiatedRequestPTS))
                      {
                        goto LABEL_154;
                      }
                    }
                  }
                }

                if (self->_ISOs)
                {
                  goto LABEL_159;
                }

                if ([equal ISOs])
                {
                  goto LABEL_154;
                }

                if (self->_ISOs)
                {
LABEL_159:
                  exposureDurations = [equal ISOs];
                  if (!exposureDurations)
                  {
                    return exposureDurations;
                  }

                  if (self->_ISOs)
                  {
                    if ([equal ISOs])
                    {
                      v95 = self->_ISOs[v90];
                      if (v95 != *([equal ISOs] + 4 * v90))
                      {
                        goto LABEL_154;
                      }
                    }
                  }
                }

                if (self->_exposureTargetBiases)
                {
                  goto LABEL_158;
                }

                if ([equal exposureTargetBiases])
                {
                  goto LABEL_154;
                }

                if (self->_exposureTargetBiases)
                {
LABEL_158:
                  exposureDurations = [equal exposureTargetBiases];
                  if (!exposureDurations)
                  {
                    return exposureDurations;
                  }

                  if (self->_exposureTargetBiases)
                  {
                    if ([equal exposureTargetBiases])
                    {
                      v96 = self->_exposureTargetBiases[v90];
                      if (v96 != *([equal exposureTargetBiases] + 4 * v90))
                      {
                        goto LABEL_154;
                      }
                    }
                  }
                }

                ++v90;
                ++v89;
              }

              while (v90 < self->_bracketImageCount);
            }

            stillImageUserInitiatedRequestTime = self->_stillImageUserInitiatedRequestTime;
            if (stillImageUserInitiatedRequestTime != [equal stillImageUserInitiatedRequestTime])
            {
              goto LABEL_154;
            }

            if (equal)
            {
              [equal stillImageUserInitiatedRequestPTS];
            }

            else
            {
              memset(&time1, 0, sizeof(time1));
            }

            stillImageUserInitiatedRequestPTS = self->_stillImageUserInitiatedRequestPTS;
            if (CMTimeCompare(&stillImageUserInitiatedRequestPTS, &time1))
            {
              goto LABEL_154;
            }

            stillImageRequestTime = self->_stillImageRequestTime;
            if (stillImageRequestTime != [equal stillImageRequestTime])
            {
              goto LABEL_154;
            }

            stillImageCaptureStartTime = self->_stillImageCaptureStartTime;
            if (stillImageCaptureStartTime != [equal stillImageCaptureStartTime])
            {
              goto LABEL_154;
            }

            stillImageCaptureAbsoluteStartTime = self->_stillImageCaptureAbsoluteStartTime;
            [equal stillImageCaptureAbsoluteStartTime];
            if (stillImageCaptureAbsoluteStartTime != v101)
            {
              goto LABEL_154;
            }

            imageGroupIdentifier = self->_imageGroupIdentifier;
            if (imageGroupIdentifier == [equal imageGroupIdentifier] || (LODWORD(exposureDurations) = -[NSString isEqualToString:](self->_imageGroupIdentifier, "isEqualToString:", objc_msgSend(equal, "imageGroupIdentifier")), exposureDurations))
            {
              captureRequestIdentifier = self->_captureRequestIdentifier;
              if (captureRequestIdentifier == [equal captureRequestIdentifier] || (LODWORD(exposureDurations) = -[NSString isEqualToString:](self->_captureRequestIdentifier, "isEqualToString:", objc_msgSend(equal, "captureRequestIdentifier")), exposureDurations))
              {
                clientInitiatedPrepareSettings = self->_clientInitiatedPrepareSettings;
                if (clientInitiatedPrepareSettings != [equal isClientInitiatedPrepareSettings])
                {
                  goto LABEL_154;
                }

                userInitiatedRequestSettings = self->_userInitiatedRequestSettings;
                if (userInitiatedRequestSettings != [equal isUserInitiatedRequestSettings])
                {
                  goto LABEL_154;
                }

                videoStabilizationOverscanCropMultiplier = self->_videoStabilizationOverscanCropMultiplier;
                [equal videoStabilizationOverscanCropMultiplier];
                if (videoStabilizationOverscanCropMultiplier != v107)
                {
                  goto LABEL_154;
                }

                resolutionFlavor = self->_resolutionFlavor;
                if (resolutionFlavor != [equal resolutionFlavor])
                {
                  goto LABEL_154;
                }

                deferredPhotoProxyWidth = self->_deferredPhotoProxyWidth;
                if (deferredPhotoProxyWidth != [equal deferredPhotoProxyWidth])
                {
                  goto LABEL_154;
                }

                deferredPhotoProxyHeight = self->_deferredPhotoProxyHeight;
                if (deferredPhotoProxyHeight != [equal deferredPhotoProxyHeight])
                {
                  goto LABEL_154;
                }

                deferredPhotoFinalWidth = self->_deferredPhotoFinalWidth;
                if (deferredPhotoFinalWidth != [equal deferredPhotoFinalWidth])
                {
                  goto LABEL_154;
                }

                deferredPhotoFinalHeight = self->_deferredPhotoFinalHeight;
                if (deferredPhotoFinalHeight != [equal deferredPhotoFinalHeight])
                {
                  goto LABEL_154;
                }

                if (*&self->_deferredPhotoFinalThumbnailDimensions != [equal deferredPhotoFinalThumbnailDimensions])
                {
                  goto LABEL_154;
                }

                if (*&self->_deferredPhotoFinalRawThumbnailDimensions != [equal deferredPhotoFinalRawThumbnailDimensions])
                {
                  goto LABEL_154;
                }

                deferredSourceDeviceType = self->_deferredSourceDeviceType;
                if (deferredSourceDeviceType != [equal deferredSourceDeviceType])
                {
                  goto LABEL_154;
                }

                deferredSourcePosition = self->_deferredSourcePosition;
                if (deferredSourcePosition != [equal deferredSourcePosition])
                {
                  goto LABEL_154;
                }

                deferredVideoFormatUniqueID = self->_deferredVideoFormatUniqueID;
                if (deferredVideoFormatUniqueID == [equal deferredVideoFormatUniqueID] || (LODWORD(exposureDurations) = -[NSString isEqualToString:](self->_deferredVideoFormatUniqueID, "isEqualToString:", objc_msgSend(equal, "deferredVideoFormatUniqueID")), exposureDurations))
                {
                  deferredDepthDataFormatUniqueID = self->_deferredDepthDataFormatUniqueID;
                  if (deferredDepthDataFormatUniqueID == [equal deferredDepthDataFormatUniqueID] || (LODWORD(exposureDurations) = -[NSString isEqualToString:](self->_deferredDepthDataFormatUniqueID, "isEqualToString:", objc_msgSend(equal, "deferredDepthDataFormatUniqueID")), exposureDurations))
                  {
                    bypassUpscaling = self->_bypassUpscaling;
                    if (bypassUpscaling == [equal bypassUpscaling])
                    {
                      cmioCompressedFormat = self->_cmioCompressedFormat;
                      if (cmioCompressedFormat != [equal cmioCompressedFormat])
                      {
                        LODWORD(exposureDurations) = -[NSString isEqualToString:](self->_cmioCompressedFormat, "isEqualToString:", [equal cmioCompressedFormat]);
                        if (!exposureDurations)
                        {
                          return exposureDurations;
                        }
                      }

                      cmioHighResolutionPhotoEnabled = self->_cmioHighResolutionPhotoEnabled;
                      if (cmioHighResolutionPhotoEnabled == [equal cmioHighResolutionPhotoEnabled])
                      {
                        cmioMaxPhotoDimensionsWidth = self->_cmioMaxPhotoDimensionsWidth;
                        if (cmioMaxPhotoDimensionsWidth == [equal cmioMaxPhotoDimensionsWidth])
                        {
                          cmioMaxPhotoDimensionsHeight = self->_cmioMaxPhotoDimensionsHeight;
                          if (cmioMaxPhotoDimensionsHeight == [equal cmioMaxPhotoDimensionsHeight])
                          {
                            deviceOrientationCorrectionEnabled = self->_deviceOrientationCorrectionEnabled;
                            if (deviceOrientationCorrectionEnabled == [equal deviceOrientationCorrectionEnabled])
                            {
                              smartStyle = self->_smartStyle;
                              if (smartStyle != [equal smartStyle])
                              {
                                LODWORD(exposureDurations) = -[FigCaptureSmartStyle isEqual:](self->_smartStyle, "isEqual:", [equal smartStyle]);
                                if (!exposureDurations)
                                {
                                  return exposureDurations;
                                }
                              }

                              smartStyleReversibilitySupported = self->_smartStyleReversibilitySupported;
                              if (smartStyleReversibilitySupported == [equal smartStyleReversibilitySupported])
                              {
                                photoLibraryThumbnailDimensions = self->_photoLibraryThumbnailDimensions;
                                if (photoLibraryThumbnailDimensions == [equal photoLibraryThumbnailDimensions] || (LODWORD(exposureDurations) = -[NSArray isEqual:](self->_photoLibraryThumbnailDimensions, "isEqual:", objc_msgSend(equal, "photoLibraryThumbnailDimensions")), exposureDurations))
                                {
                                  LOBYTE(exposureDurations) = 1;
                                }

                                return exposureDurations;
                              }
                            }
                          }
                        }
                      }
                    }

LABEL_154:
                    LOBYTE(exposureDurations) = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return exposureDurations;
}

- (id)description
{
  v3 = bswap32(self->_outputFormat);
  v91 = bswap32(self->_outputFileType);
  v92[0] = v3;
  rawOutputFormat = self->_rawOutputFormat;
  v89 = bswap32(self->_rawOutputFileType);
  v90 = bswap32(rawOutputFormat);
  v5 = bswap32(self->_previewFormat);
  v87 = bswap32(self->_thumbnailFormat);
  v88 = v5;
  v86 = bswap32(self->_rawThumbnailFormat);
  if (rawOutputFormat)
  {
    v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@" RAW:'%.4s'('%.4s')", &v90, &v89];
  }

  else
  {
    v85 = &stru_1F216A3D0;
  }

  if (self->_previewEnabled)
  {
    v84 = [MEMORY[0x1E696AEC0] stringWithFormat:@" PREV:'%.4s'@%dx%d", &v88, self->_previewWidth, self->_previewHeight];
  }

  else
  {
    v84 = &stru_1F216A3D0;
  }

  if (self->_thumbnailEnabled)
  {
    v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@" THUMB:'%.4s'@%dx%d", &v87, self->_thumbnailWidth, self->_thumbnailHeight];
  }

  else
  {
    v83 = &stru_1F216A3D0;
  }

  if (self->_rawThumbnailEnabled)
  {
    v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@" RAWTHUMB:'%.4s'@%dx%d", &v86, self->_rawThumbnailWidth, self->_rawThumbnailHeight];
  }

  else
  {
    v82 = &stru_1F216A3D0;
  }

  noiseReductionEnabled = self->_noiseReductionEnabled;
  burstQualityCaptureEnabled = self->_burstQualityCaptureEnabled;
  outputMirroring = self->_outputMirroring;
  squareCropEnabled = self->_squareCropEnabled;
  if (self->_aspectRatio)
  {
    v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@" AR:%d", self->_aspectRatio];
  }

  else
  {
    v81 = &stru_1F216A3D0;
  }

  scaleFactor = self->_scaleFactor;
  if (scaleFactor == 1.0)
  {
    scaleFactor = &stru_1F216A3D0;
  }

  else
  {
    scaleFactor = [MEMORY[0x1E696AEC0] stringWithFormat:@" x%.3f", scaleFactor];
  }

  zoomWithoutUpscalingEnabled = self->_zoomWithoutUpscalingEnabled;
  if (self->_flashMode)
  {
    v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@" FLASH:%d", self->_flashMode];
  }

  else
  {
    v77 = &stru_1F216A3D0;
  }

  if (self->_autoRedEyeReductionEnabled)
  {
    v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@" RE:%d", 1];
  }

  else
  {
    v74 = &stru_1F216A3D0;
  }

  if (self->_digitalFlashMode)
  {
    v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@" DIGITALFLASH:%d", self->_digitalFlashMode];
  }

  else
  {
    v73 = &stru_1F216A3D0;
  }

  v7 = &stru_1F216A3D0;
  if (self->_constantColorEnabled)
  {
    if (self->_constantColorFallbackPhotoDeliveryEnabled)
    {
      v8 = @"(fallback:1)";
    }

    else
    {
      v8 = &stru_1F216A3D0;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" ConstantColor:1%@", v8];
  }

  v71 = v7;
  autoStereoPhotoCaptureEnabled = self->_autoStereoPhotoCaptureEnabled;
  if (self->_wideColorMode)
  {
    v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@" WC:%d", self->_wideColorMode];
  }

  else
  {
    v70 = &stru_1F216A3D0;
  }

  qualityPrioritization = self->_qualityPrioritization;
  clientQualityPrioritization = self->_clientQualityPrioritization;
  if (self->_HDRMode)
  {
    v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@" HDR:%d", self->_HDRMode];
  }

  else
  {
    v69 = &stru_1F216A3D0;
  }

  depthDataDeliveryEnabled = self->_depthDataDeliveryEnabled;
  embedsDepthDataInImage = self->_embedsDepthDataInImage;
  depthDataFiltered = self->_depthDataFiltered;
  portraitEffectsMatteDeliveryEnabled = self->_portraitEffectsMatteDeliveryEnabled;
  embedsPortraitEffectsMatteInImage = self->_embedsPortraitEffectsMatteInImage;
  if ([(NSArray *)self->_enabledSemanticSegmentationMatteURNs count])
  {
    enabledSemanticSegmentationMatteURNs = self->_enabledSemanticSegmentationMatteURNs;
    v13 = [MEMORY[0x1E696AD60] stringWithFormat:@" MatteTypes:{"];
    if ([(NSArray *)enabledSemanticSegmentationMatteURNs containsObject:*MEMORY[0x1E69917E0]])
    {
      [(__CFString *)v13 appendString:@"hair, "];
    }

    if ([(NSArray *)enabledSemanticSegmentationMatteURNs containsObject:*MEMORY[0x1E69917E8]])
    {
      [(__CFString *)v13 appendString:@"skin, "];
    }

    if ([(NSArray *)enabledSemanticSegmentationMatteURNs containsObject:*MEMORY[0x1E69917F8]])
    {
      [(__CFString *)v13 appendString:@"teeth, "];
    }

    if ([(NSArray *)enabledSemanticSegmentationMatteURNs containsObject:*MEMORY[0x1E69917D8]])
    {
      [(__CFString *)v13 appendString:@"glasses, "];
    }

    [(__CFString *)v13 deleteCharactersInRange:[(__CFString *)v13 length]- 1, 1];
    [(__CFString *)v13 appendString:@"}"];
  }

  else
  {
    v13 = &stru_1F216A3D0;
  }

  embedsSemanticSegmentationMattesInImage = self->_embedsSemanticSegmentationMattesInImage;
  v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@" SAP: %.2f", self->_simulatedAperture];
  v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@" PLES: %.2f", self->_portraitLightingEffectStrength];
  cameraCalibrationDataDeliveryEnabled = self->_cameraCalibrationDataDeliveryEnabled;
  providesOriginalImage = self->_providesOriginalImage;
  originalImageFilters = self->_originalImageFilters;
  if (originalImageFilters)
  {
    v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@" OFILTERS:[%@]", BWCIFilterArrayDescription(originalImageFilters)];
  }

  else
  {
    v57 = &stru_1F216A3D0;
  }

  processedImageFilters = self->_processedImageFilters;
  if (processedImageFilters)
  {
    v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@" PFILTERS:[%@]", BWCIFilterArrayDescription(processedImageFilters)];
  }

  else
  {
    v54 = &stru_1F216A3D0;
  }

  if (self->_bravoImageFusionMode)
  {
    v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@" BIF:%d", self->_bravoImageFusionMode];
  }

  else
  {
    v53 = &stru_1F216A3D0;
  }

  if ([(NSArray *)self->_bravoConstituentImageDeliveryDeviceTypes count])
  {
    v49 = _shortStringForFigCaptureSourceDeviceTypes(self->_bravoConstituentImageDeliveryDeviceTypes);
  }

  else
  {
    v49 = &stru_1F216A3D0;
  }

  autoIntelligentDistortionCorrectionEnabled = self->_autoIntelligentDistortionCorrectionEnabled;
  autoDeferredProcessingEnabled = self->_autoDeferredProcessingEnabled;
  if (self->_deferredPhotoProxyWidth)
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@" PROXY:%dx%d", self->_deferredPhotoProxyWidth, self->_deferredPhotoProxyHeight];
  }

  else
  {
    v48 = &stru_1F216A3D0;
  }

  bracketType = self->_bracketType;
  if (bracketType)
  {
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@" BRCK:%dx%d LS:%d", bracketType, self->_bracketImageCount, self->_lensStabilizationDuringBracketEnabled];
  }

  else
  {
    v47 = &stru_1F216A3D0;
  }

  resolutionFlavor = self->_resolutionFlavor;
  v20 = &stru_1F216A3D0;
  v68 = v13;
  if (resolutionFlavor)
  {
    resolutionFlavor = [MEMORY[0x1E696AEC0] stringWithFormat:@" flavor:%d", resolutionFlavor];
  }

  else
  {
    resolutionFlavor = &stru_1F216A3D0;
  }

  v21 = @" CP:balanced";
  if (clientQualityPrioritization == 3)
  {
    v21 = @" CP:quality";
  }

  if (clientQualityPrioritization == 1)
  {
    v21 = @" CP:speed";
  }

  v46 = v21;
  v22 = @" P:quality";
  if (qualityPrioritization != 3)
  {
    v22 = @" P:balanced";
  }

  if (qualityPrioritization == 1)
  {
    v23 = @" P:speed";
  }

  else
  {
    v23 = v22;
  }

  v24 = @" autoDeferredProcessing:1";
  if (!autoDeferredProcessingEnabled)
  {
    v24 = &stru_1F216A3D0;
  }

  v43 = v24;
  v44 = v23;
  v25 = @" autoIDC:1";
  if (!autoIntelligentDistortionCorrectionEnabled)
  {
    v25 = &stru_1F216A3D0;
  }

  v42 = v25;
  if (providesOriginalImage)
  {
    v26 = @" Orig:1";
  }

  else
  {
    v26 = &stru_1F216A3D0;
  }

  v27 = @" CameraCalibration:1";
  if (!cameraCalibrationDataDeliveryEnabled)
  {
    v27 = &stru_1F216A3D0;
  }

  v52 = v27;
  v28 = @" EmbedsSegmentationMattes:0";
  if (embedsSemanticSegmentationMattesInImage)
  {
    v28 = &stru_1F216A3D0;
  }

  v56 = v28;
  if (embedsPortraitEffectsMatteInImage)
  {
    v29 = &stru_1F216A3D0;
  }

  else
  {
    v29 = @" EmbedsPortraitMatte:0";
  }

  v62 = v29;
  v30 = @" PortraitMatte:1";
  if (!portraitEffectsMatteDeliveryEnabled)
  {
    v30 = &stru_1F216A3D0;
  }

  v64 = v30;
  if (depthDataFiltered)
  {
    v31 = &stru_1F216A3D0;
  }

  else
  {
    v31 = @" DepthFiltered:0";
  }

  if (embedsDepthDataInImage)
  {
    v32 = &stru_1F216A3D0;
  }

  else
  {
    v32 = @" EmbedsDepth:0";
  }

  if (depthDataDeliveryEnabled)
  {
    v33 = @" DEPTH:1";
  }

  else
  {
    v33 = &stru_1F216A3D0;
  }

  if (autoStereoPhotoCaptureEnabled)
  {
    v34 = @" stereoPhotoCapture:1";
  }

  else
  {
    v34 = &stru_1F216A3D0;
  }

  if (zoomWithoutUpscalingEnabled)
  {
    v35 = @" ZoomNoUpscale:1";
  }

  else
  {
    v35 = &stru_1F216A3D0;
  }

  v36 = @" SQ:1";
  if (!squareCropEnabled)
  {
    v36 = &stru_1F216A3D0;
  }

  v76 = v36;
  v37 = @" MIR:1";
  if (!outputMirroring)
  {
    v37 = &stru_1F216A3D0;
  }

  if (burstQualityCaptureEnabled)
  {
    v38 = @" Burst:1";
  }

  else
  {
    v38 = &stru_1F216A3D0;
  }

  if (noiseReductionEnabled)
  {
    v39 = @" NR:1";
  }

  else
  {
    v39 = &stru_1F216A3D0;
  }

  if (self->_bypassUpscaling)
  {
    v40 = @" bypassUpscaling:1";
  }

  else
  {
    v40 = &stru_1F216A3D0;
  }

  if (self->_deviceOrientationCorrectionEnabled)
  {
    v20 = @" OrientationCorrection:1";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %p: captureID:%lld '%.4s'('%.4s')%@ %dx%d R:%d%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@", objc_opt_class(), self, self->_settingsID, v92, &v91, v85, self->_outputWidth, self->_outputHeight, self->_outputRotationDegrees, v37, v76, v81, v84, v83, v82, v39, v38, scaleFactor, v35, v77, v74, v73, v71, v34, v70, v69, v44, v46, v33, v32, v31, v64, v62, v68, v56, v52, v26, v57, v54, v59, v58, v53, v49, v43, v48, v42, v47, resolutionFlavor, v40, v20];
}

- (void)resetDimensions
{
  [(FigCaptureStillImageSettings *)self setOutputWidth:0];
  [(FigCaptureStillImageSettings *)self setOutputHeight:0];
  if ([(FigCaptureStillImageSettings *)self previewEnabled])
  {
    [(FigCaptureStillImageSettings *)self setPreviewWidth:0];
    [(FigCaptureStillImageSettings *)self setPreviewHeight:0];
  }

  if ([(FigCaptureStillImageSettings *)self thumbnailEnabled])
  {
    [(FigCaptureStillImageSettings *)self setThumbnailWidth:0];
    [(FigCaptureStillImageSettings *)self setThumbnailHeight:0];
  }

  if ([(FigCaptureStillImageSettings *)self rawThumbnailEnabled])
  {
    [(FigCaptureStillImageSettings *)self setRawThumbnailWidth:0];
    [(FigCaptureStillImageSettings *)self setRawThumbnailHeight:0];
  }

  if ([(FigCaptureStillImageSettings *)self autoDeferredProcessingEnabled])
  {
    [(FigCaptureStillImageSettings *)self setDeferredPhotoProxyWidth:0];
    [(FigCaptureStillImageSettings *)self setDeferredPhotoProxyHeight:0];
    [(FigCaptureStillImageSettings *)self setDeferredPhotoFinalWidth:0];
    [(FigCaptureStillImageSettings *)self setDeferredPhotoFinalHeight:0];
    v3 = *MEMORY[0x1E6960CF8];
    [(FigCaptureStillImageSettings *)self setDeferredPhotoFinalThumbnailDimensions:*MEMORY[0x1E6960CF8]];

    [(FigCaptureStillImageSettings *)self setDeferredPhotoFinalRawThumbnailDimensions:v3];
  }
}

- (NSDictionary)outputPixelBufferAttributes
{
  if (![(FigCaptureStillImageSettings *)self outputFormat]|| [(FigCaptureStillImageSettings *)self isOutputFormatCompressed])
  {
    return 0;
  }

  v5[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FigCaptureStillImageSettings outputFormat](self, "outputFormat", *MEMORY[0x1E6966130])}];
  v4[1] = *MEMORY[0x1E6966208];
  v5[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FigCaptureStillImageSettings outputWidth](self, "outputWidth")}];
  v4[2] = *MEMORY[0x1E69660B8];
  v5[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FigCaptureStillImageSettings outputHeight](self, "outputHeight")}];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (BOOL)isOutputFormatCompressed
{
  outputFormat = [(FigCaptureStillImageSettings *)self outputFormat];
  v3 = outputFormat == 1752589105 || outputFormat == 1785750887;
  return outputFormat == 1635148593 || v3;
}

- (NSDictionary)previewPixelBufferAttributes
{
  previewFormat = [(FigCaptureStillImageSettings *)self previewFormat];
  if (previewFormat != 875704422 && previewFormat != 1111970369 && previewFormat != 875704438)
  {
    return 0;
  }

  v6[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FigCaptureStillImageSettings previewFormat](self, "previewFormat", *MEMORY[0x1E6966130])}];
  v5[1] = *MEMORY[0x1E6966208];
  v6[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FigCaptureStillImageSettings previewWidth](self, "previewWidth")}];
  v5[2] = *MEMORY[0x1E69660B8];
  v6[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FigCaptureStillImageSettings previewHeight](self, "previewHeight")}];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
}

- (void)cannotProcessDepthPhotos
{
  [(FigCaptureStillImageSettings *)self setDepthDataDeliveryEnabled:0];

  [(FigCaptureStillImageSettings *)self setProcessedImageFilters:0];
}

- (void)setBracketType:(int)type imageCount:(unsigned int)count
{
  if (self->_bracketType != type || self->_bracketImageCount != count)
  {
    [(FigCaptureStillImageSettings *)&self->super.isa _teardownBracketStorage];
  }

  self->_bracketType = type;
  if (count >= 8)
  {
    countCopy = 8;
  }

  else
  {
    countCopy = count;
  }

  self->_bracketImageCount = countCopy;
  if (count)
  {
    if (type == 2)
    {
      if (self->_exposureTargetBiases)
      {
        return;
      }

      p_exposureTargetBiases = &self->_exposureTargetBiases;
      goto LABEL_15;
    }

    if (type == 1)
    {
      if (!self->_exposureDurations)
      {
        self->_exposureDurations = malloc_type_calloc(count, 0x18uLL, 0x1000040504FFAC1uLL);
      }

      if (!self->_ISOs)
      {
        p_exposureTargetBiases = &self->_ISOs;
LABEL_15:
        *p_exposureTargetBiases = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
      }
    }
  }
}

- (NSString)imageGroupIdentifier
{
  if (!self->_providesOriginalImage && !self->_bracketImageCount && (!self->_rawOutputFormat || !self->_outputFormat))
  {
    return 0;
  }

  result = self->_imageGroupIdentifier;
  if (!result)
  {
    result = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    self->_imageGroupIdentifier = result;
  }

  return result;
}

- (id)figCaptureIrisPreparedSettingsRepresentation
{
  v3 = objc_alloc_init(FigCaptureIrisPreparedSettings);
  [(FigCaptureIrisPreparedSettings *)v3 setSettingsID:self->_settingsID];
  [(FigCaptureIrisPreparedSettings *)v3 setProcessedOutputFormat:self->_outputFormat];
  [(FigCaptureIrisPreparedSettings *)v3 setOutputWidth:self->_outputWidth];
  [(FigCaptureIrisPreparedSettings *)v3 setOutputHeight:self->_outputHeight];
  [(FigCaptureIrisPreparedSettings *)v3 setRawOutputFormat:self->_rawOutputFormat];
  [(FigCaptureIrisPreparedSettings *)v3 setBracketedImageCount:self->_bracketImageCount];
  [(FigCaptureIrisPreparedSettings *)v3 setQualityPrioritization:self->_qualityPrioritization];
  [(FigCaptureIrisPreparedSettings *)v3 setHDRMode:self->_HDRMode];

  return v3;
}

- (void)setStillImageUserInitiatedRequestPTS:(id *)s
{
  v3 = *&s->var0;
  self->_stillImageUserInitiatedRequestPTS.epoch = s->var3;
  *&self->_stillImageUserInitiatedRequestPTS.value = v3;
}

- (void)_initWithSettingsID:(void *)d captureRequestIdentifier:(void *)identifier imageGroupIdentifier:
{
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = FigCaptureStillImageSettings;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = v7;
  if (v7)
  {
    v7[1] = a2;
    v7[52] = [d copy];
    v8[51] = [identifier copy];
    *(v8 + 61) = 2143289344;
  }

  return v8;
}

- (void)_teardownBracketStorage
{
  if (self)
  {
    free(self[41]);
    self[41] = 0;
    free(self[42]);
    self[42] = 0;
    free(self[43]);
    self[43] = 0;
  }
}

- (FigCaptureStillImageSettings)initWithCoder:(id)coder
{
  v5 = [coder decodeInt64ForKey:@"settingsID"];
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"captureRequestIdentifier"];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"imageGroupIdentifier"];
  v8 = [(FigCaptureStillImageSettings *)self _initWithSettingsID:v5 captureRequestIdentifier:v6 imageGroupIdentifier:v7];
  if (v8)
  {
    *(v8 + 4) = [coder decodeInt32ForKey:@"payloadType"];
    *(v8 + 5) = [coder decodeInt32ForKey:@"settingsProvider"];
    *(v8 + 6) = [coder decodeInt32ForKey:@"outputFormat"];
    *(v8 + 7) = [coder decodeInt32ForKey:@"outputFileType"];
    *(v8 + 8) = [coder decodeInt32ForKey:@"rawOutputFormat"];
    *(v8 + 9) = [coder decodeInt32ForKey:@"rawOutputFileType"];
    *(v8 + 10) = [coder decodeInt32ForKey:@"rawOutputFileBitDepth"];
    *(v8 + 11) = [coder decodeInt32ForKey:@"rawOutputFileCodec"];
    [coder decodeFloatForKey:@"rawOutputFileCodecQuality"];
    *(v8 + 12) = v9;
    *(v8 + 13) = [coder decodeInt32ForKey:@"outputWidth"];
    *(v8 + 14) = [coder decodeInt32ForKey:@"outputHeight"];
    *(v8 + 15) = [coder decodeInt32ForKey:@"originalOutputDimensionsWidth"];
    *(v8 + 16) = [coder decodeInt32ForKey:@"originalOutputDimensionsHeight"];
    *(v8 + 68) = [coder decodeBoolForKey:@"squareCropEnabled"];
    *(v8 + 18) = [coder decodeInt32ForKey:@"aspectRatio"];
    *(v8 + 76) = [coder decodeBoolForKey:@"outputMirroring"];
    *(v8 + 20) = [coder decodeInt32ForKey:@"outputRotationDegrees"];
    v10 = [coder decodeBoolForKey:@"previewEnabled"];
    *(v8 + 84) = v10;
    if (v10)
    {
      *(v8 + 22) = [coder decodeInt32ForKey:@"previewFormat"];
      *(v8 + 23) = [coder decodeInt32ForKey:@"previewWidth"];
      *(v8 + 24) = [coder decodeInt32ForKey:@"previewHeight"];
      *(v8 + 100) = [coder decodeBoolForKey:@"previewMirroring"];
      *(v8 + 26) = [coder decodeInt32ForKey:@"previewRotationDegrees"];
    }

    v11 = [coder decodeBoolForKey:@"thumbnailEnabled"];
    *(v8 + 108) = v11;
    if (v11)
    {
      *(v8 + 28) = [coder decodeInt32ForKey:@"thumbnailFormat"];
      *(v8 + 29) = [coder decodeInt32ForKey:@"thumbnailWidth"];
      *(v8 + 30) = [coder decodeInt32ForKey:@"thumbnailHeight"];
    }

    v12 = [coder decodeBoolForKey:@"rawThumbnailEnabled"];
    *(v8 + 124) = v12;
    if (v12)
    {
      *(v8 + 32) = [coder decodeInt32ForKey:@"rawThumbnailFormat"];
      *(v8 + 33) = [coder decodeInt32ForKey:@"rawThumbnailWidth"];
      *(v8 + 34) = [coder decodeInt32ForKey:@"rawThumbnailHeight"];
    }

    *(v8 + 140) = [coder decodeBoolForKey:@"powerBlurEnabled"];
    *(v8 + 141) = [coder decodeBoolForKey:@"burstQualityCaptureEnabled"];
    [coder decodeFloatForKey:@"scaleFactor"];
    *(v8 + 36) = v13;
    *(v8 + 148) = [coder decodeBoolForKey:@"zoomWithoutUpscalingEnabled"];
    *(v8 + 38) = [coder decodeInt32ForKey:@"shutterSound"];
    *(v8 + 39) = [coder decodeInt32ForKey:@"flashMode"];
    *(v8 + 160) = [coder decodeBoolForKey:@"autoRedEyeReductionEnabled"];
    *(v8 + 41) = [coder decodeInt32ForKey:@"digitalFlashMode"];
    *(v8 + 168) = [coder decodeBoolForKey:@"constantColorEnabled"];
    *(v8 + 169) = [coder decodeBoolForKey:@"constantColorFallbackPhotoDeliveryEnabled"];
    *(v8 + 170) = [coder decodeBoolForKey:@"autoStereoPhotoCaptureEnabled"];
    *(v8 + 43) = [coder decodeInt32ForKey:@"wideColorMode"];
    *(v8 + 44) = [coder decodeInt32ForKey:@"HDRMode"];
    v14 = [coder decodeBoolForKey:@"depthDataDeliveryEnabled"];
    *(v8 + 180) = v14;
    if (v14)
    {
      *(v8 + 181) = [coder decodeBoolForKey:@"embedsDepthDataInImage"];
      *(v8 + 182) = [coder decodeBoolForKey:@"depthDataFiltered"];
    }

    *(v8 + 183) = [coder decodeBoolForKey:@"cameraCalibrationDataDeliveryEnabled"];
    v15 = [coder decodeBoolForKey:@"portraitEffectsMatteDeliveryEnabled"];
    *(v8 + 184) = v15;
    if (v15)
    {
      *(v8 + 185) = [coder decodeBoolForKey:@"embedsPortraitEffectsMatteInImage"];
    }

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [coder decodeObjectOfClasses:objc_msgSend(v16 forKey:{"setWithObjects:", v17, objc_opt_class(), 0), @"enabledSemanticSegmentationMatteURNs"}];
    v8[24] = v18;
    if ([v18 count])
    {
      *(v8 + 200) = [coder decodeBoolForKey:@"embedsSemanticSegmentationMattesInImage"];
    }

    v8[26] = [objc_msgSend(coder decodePropertyListForKey:{@"metadata", "copy"}];
    v8[27] = [objc_msgSend(coder decodePropertyListForKey:{@"metadataForOriginalImage", "copy"}];
    v19 = objc_alloc(MEMORY[0x1E695DFD8]);
    v20 = objc_opt_class();
    v21 = [v19 initWithObjects:{v20, objc_opt_class(), 0}];
    if ((([coder containsValueForKey:@"originalImageFilters"] & 1) != 0 || objc_msgSend(coder, "containsValueForKey:", @"processedImageFilters")) && initWithCoder__onceToken != -1)
    {
      dispatch_once(&initWithCoder__onceToken, &__block_literal_global_39);
    }

    v8[28] = [coder decodeObjectOfClasses:v21 forKey:@"originalImageFilters"];
    v8[29] = [coder decodeObjectOfClasses:v21 forKey:@"processedImageFilters"];

    [coder decodeFloatForKey:@"simulatedAperture"];
    *(v8 + 60) = v22;
    if ([coder containsValueForKey:@"portraitLightingEffectStrength"])
    {
      [coder decodeFloatForKey:@"portraitLightingEffectStrength"];
      *(v8 + 61) = v23;
    }

    *(v8 + 248) = [coder decodeBoolForKey:@"providesOriginalImage"];
    v8[32] = [objc_msgSend(coder decodePropertyListForKey:{@"bravoConstituentImageDeliveryDeviceTypes", "copy"}];
    v8[33] = [objc_msgSend(coder decodePropertyListForKey:{@"spatialOverCaptureMetadata", "copy"}];
    v8[34] = [objc_msgSend(coder decodePropertyListForKey:{@"spatialOverCaptureMetadataForOriginalImage", "copy"}];
    *(v8 + 280) = [coder decodeBoolForKey:@"autoDeferredProcessingEnabled"];
    *(v8 + 71) = [coder decodeInt32ForKey:@"qualityPrioritization"];
    *(v8 + 72) = [coder decodeInt32ForKey:@"clientQualityPrioritization"];
    *(v8 + 73) = [coder decodeInt32ForKey:@"bravoImageFusionMode"];
    *(v8 + 296) = [coder decodeBoolForKey:@"autoIntelligentDistortionCorrectionEnabled"];
    v8[38] = [objc_msgSend(coder decodePropertyListForKey:{@"vtCompressionProperties", "copy"}];
    *(v8 + 78) = [coder decodeInt32ForKey:@"bracketType"];
    if ([coder decodeInt32ForKey:@"bracketImageCount"] > 7)
    {
      v24 = 8;
    }

    else
    {
      v24 = [coder decodeInt32ForKey:@"bracketImageCount"];
    }

    *(v8 + 79) = v24;
    *(v8 + 320) = [coder decodeBoolForKey:@"lensStabilizationDuringBracketEnabled"];
    v25 = *(v8 + 78);
    if (v25 == 1)
    {
      v8[42] = OUTLINED_FUNCTION_0_36();
      [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"ISOs", "getBytes:length:", v8[42], 4 * *(v8 + 79)}];
      v8[41] = malloc_type_calloc(*(v8 + 79), 0x18uLL, 0x1000040504FFAC1uLL);
      v26 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"exposureDurations"];
      v27 = v8[41];
      v28 = 24 * *(v8 + 79);
    }

    else
    {
      if (v25 != 2)
      {
LABEL_28:
        v8[44] = [coder decodeInt64ForKey:@"stillImageUserInitiatedRequestTime"];
        v29 = MEMORY[0x1E695DFD8];
        v30 = objc_opt_class();
        v31 = objc_opt_class();
        v32 = [coder decodeObjectOfClasses:objc_msgSend(v29 forKey:{"setWithObjects:", v30, v31, objc_opt_class(), 0), @"stillImageUserInitiatedRequestPTS"}];
        CMTimeMakeFromDictionary(&v36, v32);
        *(v8 + 15) = v36;
        v8[48] = [coder decodeInt64ForKey:@"stillImageRequestTime"];
        v8[49] = [coder decodeInt64ForKey:@"stillImageCaptureStartTime"];
        [coder decodeDoubleForKey:@"stillImageCaptureAbsoluteStartTime"];
        v8[50] = v33;
        *(v8 + 424) = [coder decodeBoolForKey:@"clientInitiatedPrepareSettings"];
        *(v8 + 425) = [coder decodeBoolForKey:@"userInitiatedRequestSettings"];
        *(v8 + 426) = [coder decodeBoolForKey:@"beginMomentCaptureSettings"];
        [coder decodeFloatForKey:@"videoStabilizationOverscanCropMultiplier"];
        *(v8 + 107) = v34;
        *(v8 + 108) = [coder decodeInt32ForKey:@"resolutionFlavor"];
        *(v8 + 109) = [coder decodeInt32ForKey:@"deferredPhotoProxyWidth"];
        *(v8 + 110) = [coder decodeInt32ForKey:@"deferredPhotoProxyHeight"];
        *(v8 + 111) = [coder decodeInt32ForKey:@"deferredPhotoFinalWidth"];
        *(v8 + 112) = [coder decodeInt32ForKey:@"deferredPhotoFinalHeight"];
        *(v8 + 113) = [coder decodeInt32ForKey:@"deferredPhotoFinalThumbnailDimensionsWidth"];
        *(v8 + 114) = [coder decodeInt32ForKey:@"deferredPhotoFinalThumbnailDimensionsHeight"];
        *(v8 + 115) = [coder decodeInt32ForKey:@"deferredPhotoFinalRawThumbnailDimensionsWidth"];
        *(v8 + 116) = [coder decodeInt32ForKey:@"deferredPhotoFinalRawThumbnailDimensionsHeight"];
        *(v8 + 117) = [coder decodeInt32ForKey:@"deferredSourceDeviceType"];
        *(v8 + 118) = [coder decodeInt32ForKey:@"deferredSourcePosition"];
        v8[60] = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"deferredVideoFormatUniqueID", "copy"}];
        v8[61] = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"deferredDepthDataFormatUniqueID", "copy"}];
        *(v8 + 496) = [coder decodeBoolForKey:@"bypassUpscaling"];
        v8[63] = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"compressedFormat", "copy"}];
        *(v8 + 512) = [coder decodeBoolForKey:@"highResolutionPhotoEnabled"];
        *(v8 + 129) = [coder decodeInt32ForKey:@"maxPhotoDimensionsWidth"];
        *(v8 + 130) = [coder decodeInt32ForKey:@"maxPhotoDimensionsHeight"];
        *(v8 + 524) = [coder decodeBoolForKey:@"deviceOrientationCorrectionEnabled"];
        v8[66] = [coder decodeObjectOfClass:objc_opt_class() forKey:@"smartStyle"];
        *(v8 + 536) = [coder decodeBoolForKey:@"smartStyleReversibilitySupported"];
        v8[69] = [objc_msgSend(coder decodePropertyListForKey:{@"photoLibraryThumbnailDimensions", "copy"}];
        return v8;
      }

      v8[43] = OUTLINED_FUNCTION_0_36();
      v26 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"exposureTargetBiases"];
      v27 = v8[43];
      v28 = 4 * *(v8 + 79);
    }

    [v26 getBytes:v27 length:v28];
    goto LABEL_28;
  }

  return v8;
}

@end