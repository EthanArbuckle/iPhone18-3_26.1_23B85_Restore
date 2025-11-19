@interface FigCaptureStillImageSettings
- (BOOL)isEqual:(id)a3;
- (BOOL)isOutputFormatCompressed;
- (FigCaptureStillImageSettings)initWithCoder:(id)a3;
- (FigCaptureStillImageSettings)initWithSettingsID:(int64_t)a3;
- (FigCaptureStillImageSettings)initWithSettingsID:(int64_t)a3 captureRequestIdentifier:(id)a4;
- (NSDictionary)outputPixelBufferAttributes;
- (NSDictionary)previewPixelBufferAttributes;
- (NSString)imageGroupIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)figCaptureIrisPreparedSettingsRepresentation;
- (void)_initWithSettingsID:(void *)a3 captureRequestIdentifier:(void *)a4 imageGroupIdentifier:;
- (void)_teardownBracketStorage;
- (void)cannotProcessDepthPhotos;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)resetDimensions;
- (void)setBracketType:(int)a3 imageCount:(unsigned int)a4;
- (void)setStillImageUserInitiatedRequestPTS:(id *)a3;
@end

@implementation FigCaptureStillImageSettings

- (FigCaptureStillImageSettings)initWithSettingsID:(int64_t)a3
{
  v5 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];

  return [(FigCaptureStillImageSettings *)self _initWithSettingsID:a3 captureRequestIdentifier:v5 imageGroupIdentifier:0];
}

- (FigCaptureStillImageSettings)initWithSettingsID:(int64_t)a3 captureRequestIdentifier:(id)a4
{
  if (![objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a4])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid capture request identifier. Not a UUID string" userInfo:0]);
  }

  return [(FigCaptureStillImageSettings *)self _initWithSettingsID:a3 captureRequestIdentifier:a4 imageGroupIdentifier:0];
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

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt64:self->_settingsID forKey:@"settingsID"];
  [a3 encodeInt32:self->_payloadType forKey:@"payloadType"];
  [a3 encodeInt32:self->_settingsProvider forKey:@"settingsProvider"];
  outputFormat = self->_outputFormat;
  if (outputFormat)
  {
    [a3 encodeInt32:outputFormat forKey:@"outputFormat"];
  }

  outputFileType = self->_outputFileType;
  if (outputFileType)
  {
    [a3 encodeInt32:outputFileType forKey:@"outputFileType"];
  }

  rawOutputFormat = self->_rawOutputFormat;
  if (rawOutputFormat)
  {
    [a3 encodeInt32:rawOutputFormat forKey:@"rawOutputFormat"];
  }

  rawOutputFileType = self->_rawOutputFileType;
  if (rawOutputFileType)
  {
    [a3 encodeInt32:rawOutputFileType forKey:@"rawOutputFileType"];
  }

  rawOutputFileBitDepth = self->_rawOutputFileBitDepth;
  if (rawOutputFileBitDepth)
  {
    [a3 encodeInt32:rawOutputFileBitDepth forKey:@"rawOutputFileBitDepth"];
  }

  rawOutputFileCodec = self->_rawOutputFileCodec;
  if (rawOutputFileCodec)
  {
    [a3 encodeInt32:rawOutputFileCodec forKey:@"rawOutputFileCodec"];
  }

  if (self->_rawOutputFileCodecQuality != 0.0)
  {
    [a3 encodeFloat:@"rawOutputFileCodecQuality" forKey:?];
  }

  [a3 encodeInt32:self->_outputWidth forKey:@"outputWidth"];
  [a3 encodeInt32:self->_outputHeight forKey:@"outputHeight"];
  [a3 encodeInt32:self->_originalOutputDimensions.width forKey:@"originalOutputDimensionsWidth"];
  [a3 encodeInt32:self->_originalOutputDimensions.height forKey:@"originalOutputDimensionsHeight"];
  [a3 encodeBool:self->_squareCropEnabled forKey:@"squareCropEnabled"];
  [a3 encodeInt32:self->_aspectRatio forKey:@"aspectRatio"];
  [a3 encodeBool:self->_outputMirroring forKey:@"outputMirroring"];
  [a3 encodeInt32:self->_outputRotationDegrees forKey:@"outputRotationDegrees"];
  [a3 encodeBool:self->_previewEnabled forKey:@"previewEnabled"];
  if (self->_previewEnabled)
  {
    [a3 encodeInt32:self->_previewFormat forKey:@"previewFormat"];
    [a3 encodeInt32:self->_previewWidth forKey:@"previewWidth"];
    [a3 encodeInt32:self->_previewHeight forKey:@"previewHeight"];
    [a3 encodeBool:self->_previewMirroring forKey:@"previewMirroring"];
    [a3 encodeInt32:self->_previewRotationDegrees forKey:@"previewRotationDegrees"];
  }

  [a3 encodeBool:self->_thumbnailEnabled forKey:@"thumbnailEnabled"];
  if (self->_thumbnailEnabled)
  {
    [a3 encodeInt32:self->_thumbnailFormat forKey:@"thumbnailFormat"];
    [a3 encodeInt32:self->_thumbnailWidth forKey:@"thumbnailWidth"];
    [a3 encodeInt32:self->_thumbnailHeight forKey:@"thumbnailHeight"];
  }

  [a3 encodeBool:self->_rawThumbnailEnabled forKey:@"rawThumbnailEnabled"];
  if (self->_rawThumbnailEnabled)
  {
    [a3 encodeInt32:self->_rawThumbnailFormat forKey:@"rawThumbnailFormat"];
    [a3 encodeInt32:self->_rawThumbnailWidth forKey:@"rawThumbnailWidth"];
    [a3 encodeInt32:self->_rawThumbnailHeight forKey:@"rawThumbnailHeight"];
  }

  [a3 encodeBool:self->_noiseReductionEnabled forKey:@"powerBlurEnabled"];
  [a3 encodeBool:self->_burstQualityCaptureEnabled forKey:@"burstQualityCaptureEnabled"];
  *&v11 = self->_scaleFactor;
  [a3 encodeFloat:@"scaleFactor" forKey:v11];
  [a3 encodeBool:self->_zoomWithoutUpscalingEnabled forKey:@"zoomWithoutUpscalingEnabled"];
  [a3 encodeInt32:self->_shutterSound forKey:@"shutterSound"];
  [a3 encodeInt32:self->_flashMode forKey:@"flashMode"];
  [a3 encodeBool:self->_autoRedEyeReductionEnabled forKey:@"autoRedEyeReductionEnabled"];
  [a3 encodeInt32:self->_digitalFlashMode forKey:@"digitalFlashMode"];
  [a3 encodeBool:self->_constantColorEnabled forKey:@"constantColorEnabled"];
  [a3 encodeBool:self->_constantColorFallbackPhotoDeliveryEnabled forKey:@"constantColorFallbackPhotoDeliveryEnabled"];
  [a3 encodeBool:self->_autoStereoPhotoCaptureEnabled forKey:@"autoStereoPhotoCaptureEnabled"];
  [a3 encodeInt32:self->_wideColorMode forKey:@"wideColorMode"];
  [a3 encodeInt32:self->_HDRMode forKey:@"HDRMode"];
  if (self->_depthDataDeliveryEnabled)
  {
    [a3 encodeBool:1 forKey:@"depthDataDeliveryEnabled"];
    [a3 encodeBool:self->_embedsDepthDataInImage forKey:@"embedsDepthDataInImage"];
    [a3 encodeBool:self->_depthDataFiltered forKey:@"depthDataFiltered"];
  }

  [a3 encodeBool:self->_cameraCalibrationDataDeliveryEnabled forKey:@"cameraCalibrationDataDeliveryEnabled"];
  if (self->_portraitEffectsMatteDeliveryEnabled)
  {
    [a3 encodeBool:1 forKey:@"portraitEffectsMatteDeliveryEnabled"];
    [a3 encodeBool:self->_embedsPortraitEffectsMatteInImage forKey:@"embedsPortraitEffectsMatteInImage"];
  }

  if ([(NSArray *)self->_enabledSemanticSegmentationMatteURNs count])
  {
    [a3 encodeObject:self->_enabledSemanticSegmentationMatteURNs forKey:@"enabledSemanticSegmentationMatteURNs"];
    [a3 encodeBool:self->_embedsSemanticSegmentationMattesInImage forKey:@"embedsSemanticSegmentationMattesInImage"];
  }

  if ([(NSDictionary *)self->_metadata count])
  {
    [a3 encodeObject:self->_metadata forKey:@"metadata"];
  }

  if ([(NSDictionary *)self->_metadataForOriginalImage count])
  {
    [a3 encodeObject:self->_metadataForOriginalImage forKey:@"metadataForOriginalImage"];
  }

  if ([(NSArray *)self->_originalImageFilters count])
  {
    [a3 encodeObject:self->_originalImageFilters forKey:@"originalImageFilters"];
  }

  if ([(NSArray *)self->_processedImageFilters count])
  {
    [a3 encodeObject:self->_processedImageFilters forKey:@"processedImageFilters"];
  }

  [a3 encodeBool:self->_providesOriginalImage forKey:@"providesOriginalImage"];
  *&v12 = self->_simulatedAperture;
  [a3 encodeFloat:@"simulatedAperture" forKey:v12];
  *&v13 = self->_portraitLightingEffectStrength;
  [a3 encodeFloat:@"portraitLightingEffectStrength" forKey:v13];
  if ([(NSArray *)self->_bravoConstituentImageDeliveryDeviceTypes count])
  {
    [a3 encodeObject:self->_bravoConstituentImageDeliveryDeviceTypes forKey:@"bravoConstituentImageDeliveryDeviceTypes"];
  }

  if ([(NSDictionary *)self->_spatialOverCaptureMetadata count])
  {
    [a3 encodeObject:self->_spatialOverCaptureMetadata forKey:@"spatialOverCaptureMetadata"];
  }

  if ([(NSDictionary *)self->_spatialOverCaptureMetadataForOriginalImage count])
  {
    [a3 encodeObject:self->_spatialOverCaptureMetadataForOriginalImage forKey:@"spatialOverCaptureMetadataForOriginalImage"];
  }

  [a3 encodeBool:self->_autoDeferredProcessingEnabled forKey:@"autoDeferredProcessingEnabled"];
  [a3 encodeInt32:self->_qualityPrioritization forKey:@"qualityPrioritization"];
  [a3 encodeInt32:self->_clientQualityPrioritization forKey:@"clientQualityPrioritization"];
  [a3 encodeInt32:self->_bravoImageFusionMode forKey:@"bravoImageFusionMode"];
  [a3 encodeBool:self->_autoIntelligentDistortionCorrectionEnabled forKey:@"autoIntelligentDistortionCorrectionEnabled"];
  [a3 encodeObject:self->_vtCompressionProperties forKey:@"vtCompressionProperties"];
  [a3 encodeInt32:self->_bracketType forKey:@"bracketType"];
  [a3 encodeInt32:self->_bracketImageCount forKey:@"bracketImageCount"];
  [a3 encodeBool:self->_lensStabilizationDuringBracketEnabled forKey:@"lensStabilizationDuringBracketEnabled"];
  bracketType = self->_bracketType;
  if (bracketType == 1)
  {
    ISOs = self->_ISOs;
    if (ISOs)
    {
      [a3 encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", ISOs, 4 * self->_bracketImageCount), @"ISOs"}];
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
      [a3 encodeObject:v16 forKey:v17];
    }
  }

  [a3 encodeInt64:self->_stillImageUserInitiatedRequestTime forKey:@"stillImageUserInitiatedRequestTime"];
  v20 = *MEMORY[0x1E695E480];
  stillImageUserInitiatedRequestPTS = self->_stillImageUserInitiatedRequestPTS;
  v21 = CMTimeCopyAsDictionary(&stillImageUserInitiatedRequestPTS, v20);
  [a3 encodeObject:v21 forKey:@"stillImageUserInitiatedRequestPTS"];

  [a3 encodeInt64:self->_stillImageRequestTime forKey:@"stillImageRequestTime"];
  [a3 encodeInt64:self->_stillImageCaptureStartTime forKey:@"stillImageCaptureStartTime"];
  [a3 encodeDouble:@"stillImageCaptureAbsoluteStartTime" forKey:self->_stillImageCaptureAbsoluteStartTime];
  [a3 encodeObject:self->_imageGroupIdentifier forKey:@"imageGroupIdentifier"];
  [a3 encodeObject:self->_captureRequestIdentifier forKey:@"captureRequestIdentifier"];
  [a3 encodeBool:self->_clientInitiatedPrepareSettings forKey:@"clientInitiatedPrepareSettings"];
  [a3 encodeBool:self->_userInitiatedRequestSettings forKey:@"userInitiatedRequestSettings"];
  [a3 encodeBool:self->_beginMomentCaptureSettings forKey:@"beginMomentCaptureSettings"];
  *&v22 = self->_videoStabilizationOverscanCropMultiplier;
  [a3 encodeFloat:@"videoStabilizationOverscanCropMultiplier" forKey:v22];
  [a3 encodeInt32:self->_resolutionFlavor forKey:@"resolutionFlavor"];
  [a3 encodeInt32:self->_deferredPhotoProxyWidth forKey:@"deferredPhotoProxyWidth"];
  [a3 encodeInt32:self->_deferredPhotoProxyHeight forKey:@"deferredPhotoProxyHeight"];
  [a3 encodeInt32:self->_deferredPhotoFinalWidth forKey:@"deferredPhotoFinalWidth"];
  [a3 encodeInt32:self->_deferredPhotoFinalHeight forKey:@"deferredPhotoFinalHeight"];
  [a3 encodeInt32:self->_deferredPhotoFinalThumbnailDimensions.width forKey:@"deferredPhotoFinalThumbnailDimensionsWidth"];
  [a3 encodeInt32:self->_deferredPhotoFinalThumbnailDimensions.height forKey:@"deferredPhotoFinalThumbnailDimensionsHeight"];
  [a3 encodeInt32:self->_deferredPhotoFinalRawThumbnailDimensions.width forKey:@"deferredPhotoFinalRawThumbnailDimensionsWidth"];
  [a3 encodeInt32:self->_deferredPhotoFinalRawThumbnailDimensions.height forKey:@"deferredPhotoFinalRawThumbnailDimensionsHeight"];
  [a3 encodeInt32:self->_deferredSourceDeviceType forKey:@"deferredSourceDeviceType"];
  [a3 encodeInt32:self->_deferredSourcePosition forKey:@"deferredSourcePosition"];
  [a3 encodeObject:self->_deferredVideoFormatUniqueID forKey:@"deferredVideoFormatUniqueID"];
  [a3 encodeObject:self->_deferredDepthDataFormatUniqueID forKey:@"deferredDepthDataFormatUniqueID"];
  [a3 encodeBool:self->_bypassUpscaling forKey:@"bypassUpscaling"];
  [a3 encodeObject:self->_cmioCompressedFormat forKey:@"compressedFormat"];
  [a3 encodeBool:self->_cmioHighResolutionPhotoEnabled forKey:@"highResolutionPhotoEnabled"];
  [a3 encodeInt32:self->_cmioMaxPhotoDimensionsWidth forKey:@"maxPhotoDimensionsWidth"];
  [a3 encodeInt32:self->_cmioMaxPhotoDimensionsHeight forKey:@"maxPhotoDimensionsHeight"];
  [a3 encodeBool:self->_deviceOrientationCorrectionEnabled forKey:@"deviceOrientationCorrectionEnabled"];
  smartStyle = self->_smartStyle;
  if (smartStyle)
  {
    [a3 encodeObject:smartStyle forKey:@"smartStyle"];
  }

  [a3 encodeBool:self->_smartStyleReversibilitySupported forKey:@"smartStyleReversibilitySupported"];
  if ([(NSArray *)self->_photoLibraryThumbnailDimensions count])
  {
    [a3 encodeObject:self->_photoLibraryThumbnailDimensions forKey:@"photoLibraryThumbnailDimensions"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithSettingsID:captureRequestIdentifier:", self->_settingsID, self->_captureRequestIdentifier}];

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
    v10 = [v4 exposureTargetBiases];
    v11 = 344;
    goto LABEL_17;
  }

  if (bracketType == 1)
  {
    *(v4 + 328) = malloc_type_calloc(self->_bracketImageCount, 0x18uLL, 0x1000040504FFAC1uLL);
    memcpy([v4 exposureDurations], self->_exposureDurations, 24 * self->_bracketImageCount);
    *(v4 + 336) = malloc_type_calloc(self->_bracketImageCount, 4uLL, 0x100004052888210uLL);
    v10 = [v4 ISOs];
    v11 = 336;
LABEL_17:
    memcpy(v10, *(&self->super.isa + v11), 4 * self->_bracketImageCount);
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v61) = 1;
    return v61;
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
  if (settingsID != [a3 settingsID])
  {
    goto LABEL_154;
  }

  payloadType = self->_payloadType;
  if (payloadType != [a3 payloadType])
  {
    goto LABEL_154;
  }

  settingsProvider = self->_settingsProvider;
  if (settingsProvider != [a3 settingsProvider])
  {
    goto LABEL_154;
  }

  outputFormat = self->_outputFormat;
  if (outputFormat != [a3 outputFormat])
  {
    goto LABEL_154;
  }

  outputFileType = self->_outputFileType;
  if (outputFileType != [a3 outputFileType])
  {
    goto LABEL_154;
  }

  rawOutputFormat = self->_rawOutputFormat;
  if (rawOutputFormat != [a3 rawOutputFormat])
  {
    goto LABEL_154;
  }

  rawOutputFileType = self->_rawOutputFileType;
  if (rawOutputFileType != [a3 rawOutputFileType])
  {
    goto LABEL_154;
  }

  rawOutputFileBitDepth = self->_rawOutputFileBitDepth;
  if (rawOutputFileBitDepth != [a3 rawOutputFileBitDepth])
  {
    goto LABEL_154;
  }

  rawOutputFileCodec = self->_rawOutputFileCodec;
  if (rawOutputFileCodec != [a3 rawOutputFileCodec])
  {
    goto LABEL_154;
  }

  rawOutputFileCodecQuality = self->_rawOutputFileCodecQuality;
  [a3 rawOutputFileCodecQuality];
  if (rawOutputFileCodecQuality != v19)
  {
    goto LABEL_154;
  }

  outputWidth = self->_outputWidth;
  if (outputWidth != [a3 outputWidth])
  {
    goto LABEL_154;
  }

  outputHeight = self->_outputHeight;
  if (outputHeight != [a3 outputHeight])
  {
    goto LABEL_154;
  }

  if (*&self->_originalOutputDimensions != [a3 originalOutputDimensions])
  {
    goto LABEL_154;
  }

  squareCropEnabled = self->_squareCropEnabled;
  if (squareCropEnabled != [a3 squareCropEnabled])
  {
    goto LABEL_154;
  }

  aspectRatio = self->_aspectRatio;
  if (aspectRatio != [a3 aspectRatio])
  {
    goto LABEL_154;
  }

  outputMirroring = self->_outputMirroring;
  if (outputMirroring != [a3 outputMirroring])
  {
    goto LABEL_154;
  }

  outputRotationDegrees = self->_outputRotationDegrees;
  if (outputRotationDegrees != [a3 outputRotationDegrees])
  {
    goto LABEL_154;
  }

  previewEnabled = self->_previewEnabled;
  if (previewEnabled != [a3 previewEnabled])
  {
    goto LABEL_154;
  }

  previewFormat = self->_previewFormat;
  if (previewFormat != [a3 previewFormat])
  {
    goto LABEL_154;
  }

  previewWidth = self->_previewWidth;
  if (previewWidth != [a3 previewWidth])
  {
    goto LABEL_154;
  }

  previewHeight = self->_previewHeight;
  if (previewHeight != [a3 previewHeight])
  {
    goto LABEL_154;
  }

  previewMirroring = self->_previewMirroring;
  if (previewMirroring != [a3 previewMirroring])
  {
    goto LABEL_154;
  }

  previewRotationDegrees = self->_previewRotationDegrees;
  if (previewRotationDegrees != [a3 previewRotationDegrees])
  {
    goto LABEL_154;
  }

  thumbnailEnabled = self->_thumbnailEnabled;
  if (thumbnailEnabled != [a3 thumbnailEnabled])
  {
    goto LABEL_154;
  }

  thumbnailFormat = self->_thumbnailFormat;
  if (thumbnailFormat != [a3 thumbnailFormat])
  {
    goto LABEL_154;
  }

  thumbnailWidth = self->_thumbnailWidth;
  if (thumbnailWidth != [a3 thumbnailWidth])
  {
    goto LABEL_154;
  }

  thumbnailHeight = self->_thumbnailHeight;
  if (thumbnailHeight != [a3 thumbnailHeight])
  {
    goto LABEL_154;
  }

  rawThumbnailEnabled = self->_rawThumbnailEnabled;
  if (rawThumbnailEnabled != [a3 rawThumbnailEnabled])
  {
    goto LABEL_154;
  }

  rawThumbnailFormat = self->_rawThumbnailFormat;
  if (rawThumbnailFormat != [a3 rawThumbnailFormat])
  {
    goto LABEL_154;
  }

  rawThumbnailWidth = self->_rawThumbnailWidth;
  if (rawThumbnailWidth != [a3 rawThumbnailWidth])
  {
    goto LABEL_154;
  }

  rawThumbnailHeight = self->_rawThumbnailHeight;
  if (rawThumbnailHeight != [a3 rawThumbnailHeight])
  {
    goto LABEL_154;
  }

  noiseReductionEnabled = self->_noiseReductionEnabled;
  if (noiseReductionEnabled != [a3 noiseReductionEnabled])
  {
    goto LABEL_154;
  }

  burstQualityCaptureEnabled = self->_burstQualityCaptureEnabled;
  if (burstQualityCaptureEnabled != [a3 burstQualityCaptureEnabled])
  {
    goto LABEL_154;
  }

  scaleFactor = self->_scaleFactor;
  [a3 scaleFactor];
  if (scaleFactor != v43)
  {
    goto LABEL_154;
  }

  zoomWithoutUpscalingEnabled = self->_zoomWithoutUpscalingEnabled;
  if (zoomWithoutUpscalingEnabled != [a3 isZoomWithoutUpscalingEnabled])
  {
    goto LABEL_154;
  }

  shutterSound = self->_shutterSound;
  if (shutterSound != [a3 shutterSound])
  {
    goto LABEL_154;
  }

  flashMode = self->_flashMode;
  if (flashMode != [a3 flashMode])
  {
    goto LABEL_154;
  }

  autoRedEyeReductionEnabled = self->_autoRedEyeReductionEnabled;
  if (autoRedEyeReductionEnabled != [a3 autoRedEyeReductionEnabled])
  {
    goto LABEL_154;
  }

  digitalFlashMode = self->_digitalFlashMode;
  if (digitalFlashMode != [a3 digitalFlashMode])
  {
    goto LABEL_154;
  }

  constantColorEnabled = self->_constantColorEnabled;
  if (constantColorEnabled != [a3 constantColorEnabled])
  {
    goto LABEL_154;
  }

  constantColorFallbackPhotoDeliveryEnabled = self->_constantColorFallbackPhotoDeliveryEnabled;
  if (constantColorFallbackPhotoDeliveryEnabled != [a3 constantColorFallbackPhotoDeliveryEnabled])
  {
    goto LABEL_154;
  }

  autoStereoPhotoCaptureEnabled = self->_autoStereoPhotoCaptureEnabled;
  if (autoStereoPhotoCaptureEnabled != [a3 autoStereoPhotoCaptureEnabled])
  {
    goto LABEL_154;
  }

  wideColorMode = self->_wideColorMode;
  if (wideColorMode != [a3 wideColorMode])
  {
    goto LABEL_154;
  }

  HDRMode = self->_HDRMode;
  if (HDRMode != [a3 HDRMode])
  {
    goto LABEL_154;
  }

  depthDataDeliveryEnabled = self->_depthDataDeliveryEnabled;
  if (depthDataDeliveryEnabled != [a3 depthDataDeliveryEnabled])
  {
    goto LABEL_154;
  }

  embedsDepthDataInImage = self->_embedsDepthDataInImage;
  if (embedsDepthDataInImage != [a3 embedsDepthDataInImage])
  {
    goto LABEL_154;
  }

  depthDataFiltered = self->_depthDataFiltered;
  if (depthDataFiltered != [a3 depthDataFiltered])
  {
    goto LABEL_154;
  }

  cameraCalibrationDataDeliveryEnabled = self->_cameraCalibrationDataDeliveryEnabled;
  if (cameraCalibrationDataDeliveryEnabled != [a3 cameraCalibrationDataDeliveryEnabled])
  {
    goto LABEL_154;
  }

  portraitEffectsMatteDeliveryEnabled = self->_portraitEffectsMatteDeliveryEnabled;
  if (portraitEffectsMatteDeliveryEnabled != [a3 portraitEffectsMatteDeliveryEnabled])
  {
    goto LABEL_154;
  }

  embedsPortraitEffectsMatteInImage = self->_embedsPortraitEffectsMatteInImage;
  if (embedsPortraitEffectsMatteInImage != [a3 embedsPortraitEffectsMatteInImage])
  {
    goto LABEL_154;
  }

  v60 = [MEMORY[0x1E695DFD8] setWithArray:self->_enabledSemanticSegmentationMatteURNs];
  LODWORD(v61) = [v60 isEqual:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(a3, "enabledSemanticSegmentationMatteURNs"))}];
  if (!v61)
  {
    return v61;
  }

  embedsSemanticSegmentationMattesInImage = self->_embedsSemanticSegmentationMattesInImage;
  if (embedsSemanticSegmentationMattesInImage != [a3 embedsSemanticSegmentationMattesInImage])
  {
    goto LABEL_154;
  }

  metadata = self->_metadata;
  if (metadata == [a3 metadata] || (LODWORD(v61) = -[NSDictionary isEqual:](self->_metadata, "isEqual:", objc_msgSend(a3, "metadata")), v61))
  {
    metadataForOriginalImage = self->_metadataForOriginalImage;
    if (metadataForOriginalImage == [a3 metadataForOriginalImage] || (LODWORD(v61) = -[NSDictionary isEqual:](self->_metadataForOriginalImage, "isEqual:", objc_msgSend(a3, "metadataForOriginalImage")), v61))
    {
      v65 = [(NSArray *)self->_originalImageFilters count];
      if (v65 != [objc_msgSend(a3 "originalImageFilters")])
      {
        goto LABEL_154;
      }

      if ([(NSArray *)self->_originalImageFilters count])
      {
        v66 = 0;
        v67 = 1;
        while (([objc_msgSend(-[NSArray objectAtIndexedSubscript:](self->_originalImageFilters objectAtIndexedSubscript:{v66), "name"), "isEqualToString:", objc_msgSend(objc_msgSend(objc_msgSend(a3, "originalImageFilters"), "objectAtIndexedSubscript:", v66), "name")}] & 1) != 0)
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
      if (v69 != [objc_msgSend(a3 "processedImageFilters")])
      {
        goto LABEL_154;
      }

      if ([(NSArray *)self->_processedImageFilters count])
      {
        v70 = 0;
        v71 = 1;
        while (([objc_msgSend(-[NSArray objectAtIndexedSubscript:](self->_processedImageFilters objectAtIndexedSubscript:{v70), "name"), "isEqualToString:", objc_msgSend(objc_msgSend(objc_msgSend(a3, "processedImageFilters"), "objectAtIndexedSubscript:", v70), "name")}] & 1) != 0)
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
      [a3 simulatedAperture];
      if (simulatedAperture != v73)
      {
        goto LABEL_154;
      }

      portraitLightingEffectStrength = self->_portraitLightingEffectStrength;
      [a3 portraitLightingEffectStrength];
      if (portraitLightingEffectStrength != v75)
      {
        goto LABEL_154;
      }

      providesOriginalImage = self->_providesOriginalImage;
      if (providesOriginalImage != [a3 providesOriginalImage])
      {
        goto LABEL_154;
      }

      bravoConstituentImageDeliveryDeviceTypes = self->_bravoConstituentImageDeliveryDeviceTypes;
      if (bravoConstituentImageDeliveryDeviceTypes == [a3 bravoConstituentImageDeliveryDeviceTypes] || (LODWORD(v61) = -[NSArray isEqual:](self->_bravoConstituentImageDeliveryDeviceTypes, "isEqual:", objc_msgSend(a3, "bravoConstituentImageDeliveryDeviceTypes")), v61))
      {
        spatialOverCaptureMetadata = self->_spatialOverCaptureMetadata;
        if (spatialOverCaptureMetadata == [a3 spatialOverCaptureMetadata] || (LODWORD(v61) = -[NSDictionary isEqual:](self->_spatialOverCaptureMetadata, "isEqual:", objc_msgSend(a3, "spatialOverCaptureMetadata")), v61))
        {
          spatialOverCaptureMetadataForOriginalImage = self->_spatialOverCaptureMetadataForOriginalImage;
          if (spatialOverCaptureMetadataForOriginalImage == [a3 spatialOverCaptureMetadataForOriginalImage] || (LODWORD(v61) = -[NSDictionary isEqual:](self->_spatialOverCaptureMetadataForOriginalImage, "isEqual:", objc_msgSend(a3, "spatialOverCaptureMetadataForOriginalImage")), v61))
          {
            autoDeferredProcessingEnabled = self->_autoDeferredProcessingEnabled;
            if (autoDeferredProcessingEnabled != [a3 autoDeferredProcessingEnabled])
            {
              goto LABEL_154;
            }

            qualityPrioritization = self->_qualityPrioritization;
            if (qualityPrioritization != [a3 qualityPrioritization])
            {
              goto LABEL_154;
            }

            clientQualityPrioritization = self->_clientQualityPrioritization;
            if (clientQualityPrioritization != [a3 clientQualityPrioritization])
            {
              goto LABEL_154;
            }

            bravoImageFusionMode = self->_bravoImageFusionMode;
            if (bravoImageFusionMode != [a3 bravoImageFusionMode])
            {
              goto LABEL_154;
            }

            autoIntelligentDistortionCorrectionEnabled = self->_autoIntelligentDistortionCorrectionEnabled;
            if (autoIntelligentDistortionCorrectionEnabled != [a3 autoIntelligentDistortionCorrectionEnabled])
            {
              goto LABEL_154;
            }

            vtCompressionProperties = self->_vtCompressionProperties;
            if (vtCompressionProperties != [a3 vtCompressionProperties])
            {
              LODWORD(v61) = -[NSDictionary isEqual:](self->_vtCompressionProperties, "isEqual:", [a3 vtCompressionProperties]);
              if (!v61)
              {
                return v61;
              }
            }

            bracketType = self->_bracketType;
            if (bracketType != [a3 bracketType])
            {
              goto LABEL_154;
            }

            bracketImageCount = self->_bracketImageCount;
            if (bracketImageCount != [a3 bracketImageCount])
            {
              goto LABEL_154;
            }

            lensStabilizationDuringBracketEnabled = self->_lensStabilizationDuringBracketEnabled;
            if (lensStabilizationDuringBracketEnabled != [a3 lensStabilizationDuringBracketEnabled])
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

                if ([a3 exposureDurations])
                {
                  goto LABEL_154;
                }

                if (self->_exposureDurations)
                {
LABEL_160:
                  v61 = [a3 exposureDurations];
                  if (!v61)
                  {
                    return v61;
                  }

                  if (self->_exposureDurations)
                  {
                    if ([a3 exposureDurations])
                    {
                      v91 = &self->_exposureDurations[v89];
                      v92 = [a3 exposureDurations];
                      v93 = *&v91->var0;
                      time1.epoch = v91->var3;
                      *&time1.value = v93;
                      v94 = *(v92 + v89 * 24);
                      stillImageUserInitiatedRequestPTS.epoch = *(v92 + v89 * 24 + 16);
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

                if ([a3 ISOs])
                {
                  goto LABEL_154;
                }

                if (self->_ISOs)
                {
LABEL_159:
                  v61 = [a3 ISOs];
                  if (!v61)
                  {
                    return v61;
                  }

                  if (self->_ISOs)
                  {
                    if ([a3 ISOs])
                    {
                      v95 = self->_ISOs[v90];
                      if (v95 != *([a3 ISOs] + 4 * v90))
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

                if ([a3 exposureTargetBiases])
                {
                  goto LABEL_154;
                }

                if (self->_exposureTargetBiases)
                {
LABEL_158:
                  v61 = [a3 exposureTargetBiases];
                  if (!v61)
                  {
                    return v61;
                  }

                  if (self->_exposureTargetBiases)
                  {
                    if ([a3 exposureTargetBiases])
                    {
                      v96 = self->_exposureTargetBiases[v90];
                      if (v96 != *([a3 exposureTargetBiases] + 4 * v90))
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
            if (stillImageUserInitiatedRequestTime != [a3 stillImageUserInitiatedRequestTime])
            {
              goto LABEL_154;
            }

            if (a3)
            {
              [a3 stillImageUserInitiatedRequestPTS];
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
            if (stillImageRequestTime != [a3 stillImageRequestTime])
            {
              goto LABEL_154;
            }

            stillImageCaptureStartTime = self->_stillImageCaptureStartTime;
            if (stillImageCaptureStartTime != [a3 stillImageCaptureStartTime])
            {
              goto LABEL_154;
            }

            stillImageCaptureAbsoluteStartTime = self->_stillImageCaptureAbsoluteStartTime;
            [a3 stillImageCaptureAbsoluteStartTime];
            if (stillImageCaptureAbsoluteStartTime != v101)
            {
              goto LABEL_154;
            }

            imageGroupIdentifier = self->_imageGroupIdentifier;
            if (imageGroupIdentifier == [a3 imageGroupIdentifier] || (LODWORD(v61) = -[NSString isEqualToString:](self->_imageGroupIdentifier, "isEqualToString:", objc_msgSend(a3, "imageGroupIdentifier")), v61))
            {
              captureRequestIdentifier = self->_captureRequestIdentifier;
              if (captureRequestIdentifier == [a3 captureRequestIdentifier] || (LODWORD(v61) = -[NSString isEqualToString:](self->_captureRequestIdentifier, "isEqualToString:", objc_msgSend(a3, "captureRequestIdentifier")), v61))
              {
                clientInitiatedPrepareSettings = self->_clientInitiatedPrepareSettings;
                if (clientInitiatedPrepareSettings != [a3 isClientInitiatedPrepareSettings])
                {
                  goto LABEL_154;
                }

                userInitiatedRequestSettings = self->_userInitiatedRequestSettings;
                if (userInitiatedRequestSettings != [a3 isUserInitiatedRequestSettings])
                {
                  goto LABEL_154;
                }

                videoStabilizationOverscanCropMultiplier = self->_videoStabilizationOverscanCropMultiplier;
                [a3 videoStabilizationOverscanCropMultiplier];
                if (videoStabilizationOverscanCropMultiplier != v107)
                {
                  goto LABEL_154;
                }

                resolutionFlavor = self->_resolutionFlavor;
                if (resolutionFlavor != [a3 resolutionFlavor])
                {
                  goto LABEL_154;
                }

                deferredPhotoProxyWidth = self->_deferredPhotoProxyWidth;
                if (deferredPhotoProxyWidth != [a3 deferredPhotoProxyWidth])
                {
                  goto LABEL_154;
                }

                deferredPhotoProxyHeight = self->_deferredPhotoProxyHeight;
                if (deferredPhotoProxyHeight != [a3 deferredPhotoProxyHeight])
                {
                  goto LABEL_154;
                }

                deferredPhotoFinalWidth = self->_deferredPhotoFinalWidth;
                if (deferredPhotoFinalWidth != [a3 deferredPhotoFinalWidth])
                {
                  goto LABEL_154;
                }

                deferredPhotoFinalHeight = self->_deferredPhotoFinalHeight;
                if (deferredPhotoFinalHeight != [a3 deferredPhotoFinalHeight])
                {
                  goto LABEL_154;
                }

                if (*&self->_deferredPhotoFinalThumbnailDimensions != [a3 deferredPhotoFinalThumbnailDimensions])
                {
                  goto LABEL_154;
                }

                if (*&self->_deferredPhotoFinalRawThumbnailDimensions != [a3 deferredPhotoFinalRawThumbnailDimensions])
                {
                  goto LABEL_154;
                }

                deferredSourceDeviceType = self->_deferredSourceDeviceType;
                if (deferredSourceDeviceType != [a3 deferredSourceDeviceType])
                {
                  goto LABEL_154;
                }

                deferredSourcePosition = self->_deferredSourcePosition;
                if (deferredSourcePosition != [a3 deferredSourcePosition])
                {
                  goto LABEL_154;
                }

                deferredVideoFormatUniqueID = self->_deferredVideoFormatUniqueID;
                if (deferredVideoFormatUniqueID == [a3 deferredVideoFormatUniqueID] || (LODWORD(v61) = -[NSString isEqualToString:](self->_deferredVideoFormatUniqueID, "isEqualToString:", objc_msgSend(a3, "deferredVideoFormatUniqueID")), v61))
                {
                  deferredDepthDataFormatUniqueID = self->_deferredDepthDataFormatUniqueID;
                  if (deferredDepthDataFormatUniqueID == [a3 deferredDepthDataFormatUniqueID] || (LODWORD(v61) = -[NSString isEqualToString:](self->_deferredDepthDataFormatUniqueID, "isEqualToString:", objc_msgSend(a3, "deferredDepthDataFormatUniqueID")), v61))
                  {
                    bypassUpscaling = self->_bypassUpscaling;
                    if (bypassUpscaling == [a3 bypassUpscaling])
                    {
                      cmioCompressedFormat = self->_cmioCompressedFormat;
                      if (cmioCompressedFormat != [a3 cmioCompressedFormat])
                      {
                        LODWORD(v61) = -[NSString isEqualToString:](self->_cmioCompressedFormat, "isEqualToString:", [a3 cmioCompressedFormat]);
                        if (!v61)
                        {
                          return v61;
                        }
                      }

                      cmioHighResolutionPhotoEnabled = self->_cmioHighResolutionPhotoEnabled;
                      if (cmioHighResolutionPhotoEnabled == [a3 cmioHighResolutionPhotoEnabled])
                      {
                        cmioMaxPhotoDimensionsWidth = self->_cmioMaxPhotoDimensionsWidth;
                        if (cmioMaxPhotoDimensionsWidth == [a3 cmioMaxPhotoDimensionsWidth])
                        {
                          cmioMaxPhotoDimensionsHeight = self->_cmioMaxPhotoDimensionsHeight;
                          if (cmioMaxPhotoDimensionsHeight == [a3 cmioMaxPhotoDimensionsHeight])
                          {
                            deviceOrientationCorrectionEnabled = self->_deviceOrientationCorrectionEnabled;
                            if (deviceOrientationCorrectionEnabled == [a3 deviceOrientationCorrectionEnabled])
                            {
                              smartStyle = self->_smartStyle;
                              if (smartStyle != [a3 smartStyle])
                              {
                                LODWORD(v61) = -[FigCaptureSmartStyle isEqual:](self->_smartStyle, "isEqual:", [a3 smartStyle]);
                                if (!v61)
                                {
                                  return v61;
                                }
                              }

                              smartStyleReversibilitySupported = self->_smartStyleReversibilitySupported;
                              if (smartStyleReversibilitySupported == [a3 smartStyleReversibilitySupported])
                              {
                                photoLibraryThumbnailDimensions = self->_photoLibraryThumbnailDimensions;
                                if (photoLibraryThumbnailDimensions == [a3 photoLibraryThumbnailDimensions] || (LODWORD(v61) = -[NSArray isEqual:](self->_photoLibraryThumbnailDimensions, "isEqual:", objc_msgSend(a3, "photoLibraryThumbnailDimensions")), v61))
                                {
                                  LOBYTE(v61) = 1;
                                }

                                return v61;
                              }
                            }
                          }
                        }
                      }
                    }

LABEL_154:
                    LOBYTE(v61) = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v61;
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
    v80 = &stru_1F216A3D0;
  }

  else
  {
    v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@" x%.3f", scaleFactor];
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
    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@" flavor:%d", resolutionFlavor];
  }

  else
  {
    v45 = &stru_1F216A3D0;
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

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %p: captureID:%lld '%.4s'('%.4s')%@ %dx%d R:%d%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@", objc_opt_class(), self, self->_settingsID, v92, &v91, v85, self->_outputWidth, self->_outputHeight, self->_outputRotationDegrees, v37, v76, v81, v84, v83, v82, v39, v38, v80, v35, v77, v74, v73, v71, v34, v70, v69, v44, v46, v33, v32, v31, v64, v62, v68, v56, v52, v26, v57, v54, v59, v58, v53, v49, v43, v48, v42, v47, v45, v40, v20];
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
  v2 = [(FigCaptureStillImageSettings *)self outputFormat];
  v3 = v2 == 1752589105 || v2 == 1785750887;
  return v2 == 1635148593 || v3;
}

- (NSDictionary)previewPixelBufferAttributes
{
  v3 = [(FigCaptureStillImageSettings *)self previewFormat];
  if (v3 != 875704422 && v3 != 1111970369 && v3 != 875704438)
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

- (void)setBracketType:(int)a3 imageCount:(unsigned int)a4
{
  if (self->_bracketType != a3 || self->_bracketImageCount != a4)
  {
    [(FigCaptureStillImageSettings *)&self->super.isa _teardownBracketStorage];
  }

  self->_bracketType = a3;
  if (a4 >= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = a4;
  }

  self->_bracketImageCount = v7;
  if (a4)
  {
    if (a3 == 2)
    {
      if (self->_exposureTargetBiases)
      {
        return;
      }

      p_exposureTargetBiases = &self->_exposureTargetBiases;
      goto LABEL_15;
    }

    if (a3 == 1)
    {
      if (!self->_exposureDurations)
      {
        self->_exposureDurations = malloc_type_calloc(a4, 0x18uLL, 0x1000040504FFAC1uLL);
      }

      if (!self->_ISOs)
      {
        p_exposureTargetBiases = &self->_ISOs;
LABEL_15:
        *p_exposureTargetBiases = malloc_type_calloc(a4, 4uLL, 0x100004052888210uLL);
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

- (void)setStillImageUserInitiatedRequestPTS:(id *)a3
{
  v3 = *&a3->var0;
  self->_stillImageUserInitiatedRequestPTS.epoch = a3->var3;
  *&self->_stillImageUserInitiatedRequestPTS.value = v3;
}

- (void)_initWithSettingsID:(void *)a3 captureRequestIdentifier:(void *)a4 imageGroupIdentifier:
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = FigCaptureStillImageSettings;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = v7;
  if (v7)
  {
    v7[1] = a2;
    v7[52] = [a3 copy];
    v8[51] = [a4 copy];
    *(v8 + 61) = 2143289344;
  }

  return v8;
}

- (void)_teardownBracketStorage
{
  if (a1)
  {
    free(a1[41]);
    a1[41] = 0;
    free(a1[42]);
    a1[42] = 0;
    free(a1[43]);
    a1[43] = 0;
  }
}

- (FigCaptureStillImageSettings)initWithCoder:(id)a3
{
  v5 = [a3 decodeInt64ForKey:@"settingsID"];
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"captureRequestIdentifier"];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"imageGroupIdentifier"];
  v8 = [(FigCaptureStillImageSettings *)self _initWithSettingsID:v5 captureRequestIdentifier:v6 imageGroupIdentifier:v7];
  if (v8)
  {
    *(v8 + 4) = [a3 decodeInt32ForKey:@"payloadType"];
    *(v8 + 5) = [a3 decodeInt32ForKey:@"settingsProvider"];
    *(v8 + 6) = [a3 decodeInt32ForKey:@"outputFormat"];
    *(v8 + 7) = [a3 decodeInt32ForKey:@"outputFileType"];
    *(v8 + 8) = [a3 decodeInt32ForKey:@"rawOutputFormat"];
    *(v8 + 9) = [a3 decodeInt32ForKey:@"rawOutputFileType"];
    *(v8 + 10) = [a3 decodeInt32ForKey:@"rawOutputFileBitDepth"];
    *(v8 + 11) = [a3 decodeInt32ForKey:@"rawOutputFileCodec"];
    [a3 decodeFloatForKey:@"rawOutputFileCodecQuality"];
    *(v8 + 12) = v9;
    *(v8 + 13) = [a3 decodeInt32ForKey:@"outputWidth"];
    *(v8 + 14) = [a3 decodeInt32ForKey:@"outputHeight"];
    *(v8 + 15) = [a3 decodeInt32ForKey:@"originalOutputDimensionsWidth"];
    *(v8 + 16) = [a3 decodeInt32ForKey:@"originalOutputDimensionsHeight"];
    *(v8 + 68) = [a3 decodeBoolForKey:@"squareCropEnabled"];
    *(v8 + 18) = [a3 decodeInt32ForKey:@"aspectRatio"];
    *(v8 + 76) = [a3 decodeBoolForKey:@"outputMirroring"];
    *(v8 + 20) = [a3 decodeInt32ForKey:@"outputRotationDegrees"];
    v10 = [a3 decodeBoolForKey:@"previewEnabled"];
    *(v8 + 84) = v10;
    if (v10)
    {
      *(v8 + 22) = [a3 decodeInt32ForKey:@"previewFormat"];
      *(v8 + 23) = [a3 decodeInt32ForKey:@"previewWidth"];
      *(v8 + 24) = [a3 decodeInt32ForKey:@"previewHeight"];
      *(v8 + 100) = [a3 decodeBoolForKey:@"previewMirroring"];
      *(v8 + 26) = [a3 decodeInt32ForKey:@"previewRotationDegrees"];
    }

    v11 = [a3 decodeBoolForKey:@"thumbnailEnabled"];
    *(v8 + 108) = v11;
    if (v11)
    {
      *(v8 + 28) = [a3 decodeInt32ForKey:@"thumbnailFormat"];
      *(v8 + 29) = [a3 decodeInt32ForKey:@"thumbnailWidth"];
      *(v8 + 30) = [a3 decodeInt32ForKey:@"thumbnailHeight"];
    }

    v12 = [a3 decodeBoolForKey:@"rawThumbnailEnabled"];
    *(v8 + 124) = v12;
    if (v12)
    {
      *(v8 + 32) = [a3 decodeInt32ForKey:@"rawThumbnailFormat"];
      *(v8 + 33) = [a3 decodeInt32ForKey:@"rawThumbnailWidth"];
      *(v8 + 34) = [a3 decodeInt32ForKey:@"rawThumbnailHeight"];
    }

    *(v8 + 140) = [a3 decodeBoolForKey:@"powerBlurEnabled"];
    *(v8 + 141) = [a3 decodeBoolForKey:@"burstQualityCaptureEnabled"];
    [a3 decodeFloatForKey:@"scaleFactor"];
    *(v8 + 36) = v13;
    *(v8 + 148) = [a3 decodeBoolForKey:@"zoomWithoutUpscalingEnabled"];
    *(v8 + 38) = [a3 decodeInt32ForKey:@"shutterSound"];
    *(v8 + 39) = [a3 decodeInt32ForKey:@"flashMode"];
    *(v8 + 160) = [a3 decodeBoolForKey:@"autoRedEyeReductionEnabled"];
    *(v8 + 41) = [a3 decodeInt32ForKey:@"digitalFlashMode"];
    *(v8 + 168) = [a3 decodeBoolForKey:@"constantColorEnabled"];
    *(v8 + 169) = [a3 decodeBoolForKey:@"constantColorFallbackPhotoDeliveryEnabled"];
    *(v8 + 170) = [a3 decodeBoolForKey:@"autoStereoPhotoCaptureEnabled"];
    *(v8 + 43) = [a3 decodeInt32ForKey:@"wideColorMode"];
    *(v8 + 44) = [a3 decodeInt32ForKey:@"HDRMode"];
    v14 = [a3 decodeBoolForKey:@"depthDataDeliveryEnabled"];
    *(v8 + 180) = v14;
    if (v14)
    {
      *(v8 + 181) = [a3 decodeBoolForKey:@"embedsDepthDataInImage"];
      *(v8 + 182) = [a3 decodeBoolForKey:@"depthDataFiltered"];
    }

    *(v8 + 183) = [a3 decodeBoolForKey:@"cameraCalibrationDataDeliveryEnabled"];
    v15 = [a3 decodeBoolForKey:@"portraitEffectsMatteDeliveryEnabled"];
    *(v8 + 184) = v15;
    if (v15)
    {
      *(v8 + 185) = [a3 decodeBoolForKey:@"embedsPortraitEffectsMatteInImage"];
    }

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [a3 decodeObjectOfClasses:objc_msgSend(v16 forKey:{"setWithObjects:", v17, objc_opt_class(), 0), @"enabledSemanticSegmentationMatteURNs"}];
    v8[24] = v18;
    if ([v18 count])
    {
      *(v8 + 200) = [a3 decodeBoolForKey:@"embedsSemanticSegmentationMattesInImage"];
    }

    v8[26] = [objc_msgSend(a3 decodePropertyListForKey:{@"metadata", "copy"}];
    v8[27] = [objc_msgSend(a3 decodePropertyListForKey:{@"metadataForOriginalImage", "copy"}];
    v19 = objc_alloc(MEMORY[0x1E695DFD8]);
    v20 = objc_opt_class();
    v21 = [v19 initWithObjects:{v20, objc_opt_class(), 0}];
    if ((([a3 containsValueForKey:@"originalImageFilters"] & 1) != 0 || objc_msgSend(a3, "containsValueForKey:", @"processedImageFilters")) && initWithCoder__onceToken != -1)
    {
      dispatch_once(&initWithCoder__onceToken, &__block_literal_global_39);
    }

    v8[28] = [a3 decodeObjectOfClasses:v21 forKey:@"originalImageFilters"];
    v8[29] = [a3 decodeObjectOfClasses:v21 forKey:@"processedImageFilters"];

    [a3 decodeFloatForKey:@"simulatedAperture"];
    *(v8 + 60) = v22;
    if ([a3 containsValueForKey:@"portraitLightingEffectStrength"])
    {
      [a3 decodeFloatForKey:@"portraitLightingEffectStrength"];
      *(v8 + 61) = v23;
    }

    *(v8 + 248) = [a3 decodeBoolForKey:@"providesOriginalImage"];
    v8[32] = [objc_msgSend(a3 decodePropertyListForKey:{@"bravoConstituentImageDeliveryDeviceTypes", "copy"}];
    v8[33] = [objc_msgSend(a3 decodePropertyListForKey:{@"spatialOverCaptureMetadata", "copy"}];
    v8[34] = [objc_msgSend(a3 decodePropertyListForKey:{@"spatialOverCaptureMetadataForOriginalImage", "copy"}];
    *(v8 + 280) = [a3 decodeBoolForKey:@"autoDeferredProcessingEnabled"];
    *(v8 + 71) = [a3 decodeInt32ForKey:@"qualityPrioritization"];
    *(v8 + 72) = [a3 decodeInt32ForKey:@"clientQualityPrioritization"];
    *(v8 + 73) = [a3 decodeInt32ForKey:@"bravoImageFusionMode"];
    *(v8 + 296) = [a3 decodeBoolForKey:@"autoIntelligentDistortionCorrectionEnabled"];
    v8[38] = [objc_msgSend(a3 decodePropertyListForKey:{@"vtCompressionProperties", "copy"}];
    *(v8 + 78) = [a3 decodeInt32ForKey:@"bracketType"];
    if ([a3 decodeInt32ForKey:@"bracketImageCount"] > 7)
    {
      v24 = 8;
    }

    else
    {
      v24 = [a3 decodeInt32ForKey:@"bracketImageCount"];
    }

    *(v8 + 79) = v24;
    *(v8 + 320) = [a3 decodeBoolForKey:@"lensStabilizationDuringBracketEnabled"];
    v25 = *(v8 + 78);
    if (v25 == 1)
    {
      v8[42] = OUTLINED_FUNCTION_0_36();
      [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"ISOs", "getBytes:length:", v8[42], 4 * *(v8 + 79)}];
      v8[41] = malloc_type_calloc(*(v8 + 79), 0x18uLL, 0x1000040504FFAC1uLL);
      v26 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"exposureDurations"];
      v27 = v8[41];
      v28 = 24 * *(v8 + 79);
    }

    else
    {
      if (v25 != 2)
      {
LABEL_28:
        v8[44] = [a3 decodeInt64ForKey:@"stillImageUserInitiatedRequestTime"];
        v29 = MEMORY[0x1E695DFD8];
        v30 = objc_opt_class();
        v31 = objc_opt_class();
        v32 = [a3 decodeObjectOfClasses:objc_msgSend(v29 forKey:{"setWithObjects:", v30, v31, objc_opt_class(), 0), @"stillImageUserInitiatedRequestPTS"}];
        CMTimeMakeFromDictionary(&v36, v32);
        *(v8 + 15) = v36;
        v8[48] = [a3 decodeInt64ForKey:@"stillImageRequestTime"];
        v8[49] = [a3 decodeInt64ForKey:@"stillImageCaptureStartTime"];
        [a3 decodeDoubleForKey:@"stillImageCaptureAbsoluteStartTime"];
        v8[50] = v33;
        *(v8 + 424) = [a3 decodeBoolForKey:@"clientInitiatedPrepareSettings"];
        *(v8 + 425) = [a3 decodeBoolForKey:@"userInitiatedRequestSettings"];
        *(v8 + 426) = [a3 decodeBoolForKey:@"beginMomentCaptureSettings"];
        [a3 decodeFloatForKey:@"videoStabilizationOverscanCropMultiplier"];
        *(v8 + 107) = v34;
        *(v8 + 108) = [a3 decodeInt32ForKey:@"resolutionFlavor"];
        *(v8 + 109) = [a3 decodeInt32ForKey:@"deferredPhotoProxyWidth"];
        *(v8 + 110) = [a3 decodeInt32ForKey:@"deferredPhotoProxyHeight"];
        *(v8 + 111) = [a3 decodeInt32ForKey:@"deferredPhotoFinalWidth"];
        *(v8 + 112) = [a3 decodeInt32ForKey:@"deferredPhotoFinalHeight"];
        *(v8 + 113) = [a3 decodeInt32ForKey:@"deferredPhotoFinalThumbnailDimensionsWidth"];
        *(v8 + 114) = [a3 decodeInt32ForKey:@"deferredPhotoFinalThumbnailDimensionsHeight"];
        *(v8 + 115) = [a3 decodeInt32ForKey:@"deferredPhotoFinalRawThumbnailDimensionsWidth"];
        *(v8 + 116) = [a3 decodeInt32ForKey:@"deferredPhotoFinalRawThumbnailDimensionsHeight"];
        *(v8 + 117) = [a3 decodeInt32ForKey:@"deferredSourceDeviceType"];
        *(v8 + 118) = [a3 decodeInt32ForKey:@"deferredSourcePosition"];
        v8[60] = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"deferredVideoFormatUniqueID", "copy"}];
        v8[61] = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"deferredDepthDataFormatUniqueID", "copy"}];
        *(v8 + 496) = [a3 decodeBoolForKey:@"bypassUpscaling"];
        v8[63] = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"compressedFormat", "copy"}];
        *(v8 + 512) = [a3 decodeBoolForKey:@"highResolutionPhotoEnabled"];
        *(v8 + 129) = [a3 decodeInt32ForKey:@"maxPhotoDimensionsWidth"];
        *(v8 + 130) = [a3 decodeInt32ForKey:@"maxPhotoDimensionsHeight"];
        *(v8 + 524) = [a3 decodeBoolForKey:@"deviceOrientationCorrectionEnabled"];
        v8[66] = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"smartStyle"];
        *(v8 + 536) = [a3 decodeBoolForKey:@"smartStyleReversibilitySupported"];
        v8[69] = [objc_msgSend(a3 decodePropertyListForKey:{@"photoLibraryThumbnailDimensions", "copy"}];
        return v8;
      }

      v8[43] = OUTLINED_FUNCTION_0_36();
      v26 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"exposureTargetBiases"];
      v27 = v8[43];
      v28 = 4 * *(v8 + 79);
    }

    [v26 getBytes:v27 length:v28];
    goto LABEL_28;
  }

  return v8;
}

@end