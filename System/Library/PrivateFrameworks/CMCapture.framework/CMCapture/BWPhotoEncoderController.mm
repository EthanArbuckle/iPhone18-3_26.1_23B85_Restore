@interface BWPhotoEncoderController
- ($2825F4736939C4A6D3AD43837233062D)_outputDimensionsForSbuf:(opaqueCMSampleBuffer *)a3 primaryImageMetadata:(id)a4 sourceDimensions:(id)a5 requestedStillImageCaptureSettings:(id)a6 isStereoPhotoCapture:(BOOL)a7 isPrimaryFrame:(BOOL)a8;
- (BOOL)_addAlternateImageForEncodingScheme:(int)a3 flexGTCColorSpace:(CGColorSpace *)a4 isP3primaries:(BOOL)a5 tonemapItemMetadata:(id)a6 parentImageHandle:(int64_t)a7 gainMapHandle:(int64_t)a8;
- (BOOL)_addConstantColorConfidenceMapForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4;
- (BOOL)_addDepthForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 primaryOutputAspectRatio:(double)a5 parentImageHandle:(int64_t)a6;
- (BOOL)_addGainMapForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 outputDimensions:(id)a5 primaryOutputAspectRatio:(double)a6 parentImageHandle:(int64_t)a7;
- (BOOL)_addGainMapMetadataForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 parentImageHandle:(int64_t)a5;
- (BOOL)_addPortraitEffectsMatteForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 primaryOutputAspectRatio:(double)a5 parentImageHandle:(int64_t)a6;
- (BOOL)_addSemanticMattesForEncodingScheme:(int)a3 attachedMediaKey:(id)a4 sampleBuffer:(opaqueCMSampleBuffer *)a5 primaryOutputAspectRatio:(double)a6 settingsID:(int64_t)a7 orientation:(int)a8 parentImageHandle:(int64_t)a9;
- (BOOL)_addSmartStyleDeltaMapForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 stillImageSettings:(id)a5 primaryOutputAspectRatio:(double)a6;
- (BOOL)_addSmartStyleLinearThumbnailForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 primaryOutputAspectRatio:(double)a5;
- (BOOL)_depthEncodingNeededForSettings:(id)a3 deferredPhotoProxy:(BOOL)a4;
- (BOOL)_finalImageExpectingSmartStyleReversibilityDataForDeferredPhotoProxy:(BOOL)a3 settings:(id)a4 adjustedPhoto:(BOOL)a5;
- (BOOL)_personMaskEncodingNeededForSettings:(id)a3 encodingScheme:(int)a4 deferredPhotoProxy:(BOOL)a5 adjustedPhoto:(BOOL)a6 personMaskValidHint:(float)a7;
- (BOOL)_smartStyleReversibilityDataNeededForSettings:(id)a3 adjustedPhoto:(BOOL)a4 deferredPhotoProxy:(BOOL)a5;
- (BOOL)_waitUntilTimeoutForInferenceGroupToCompleteAndReturnSuccess;
- (BWPhotoEncoderController)initWithConfiguration:(id)a3;
- (CGImageMetadata)_newAuxiliaryImagePropertiesFromPortraitEffectsMatteMetadata:(id)a3;
- (CGImageMetadata)_newAuxiliaryImagePropertiesFromSemanticMatteSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (CGImageMetadata)_newGainMapAuxiliaryImagePropertiesForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 denormalizedCropRect:(CGRect)a5 requiresPhotosAdjustment:(BOOL)a6 encodingOptionsOut:(id *)a7 flexGTCColorSpaceOut:(CGColorSpace *)a8 tonemapItemMetadataOut:(id *)a9 isP3PrimariesOut:(BOOL *)a10;
- (CGRect)_cropRectForRequestedSettings:(id)a3 inputDimensions:(id)a4 outputDimensions:(id)a5 metadata:(id)a6 processingFlags:(unsigned int)a7;
- (NSString)currentInputsCaptureRequestIdentifier;
- (__IOSurface)_closeContainerAndCopySurfaceForEncodingScheme:(int)a3;
- (double)_adjustAspectRatio:(double)a3 settings:(id)a4;
- (double)_primaryOutputAspectRatioForSettings:(id)a3;
- (float)mainImageDownscalingFactorForAttachedMediaKey:(id)a3 attachedMediaMetadata:(id)a4;
- (id)_depthEncodingOptionsFromDepthMetadata:(id)a3 pixelFormat:(unsigned int)a4;
- (id)_encoderManagerForEncodingScheme:(int)a3;
- (id)_newMetadataAttachmentsForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 requestedSettings:(id)a5 captureType:(int)a6 exifExtraRotationDegrees:(int)a7;
- (id)_newRawMetadataAttachmentsForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 dngDictionary:(id)a5 requestedSettings:(id)a6 captureType:(int)a7 dngContainsDepthData:(BOOL)a8 dngContainsSemanticSegmentationMattes:(BOOL)a9;
- (id)_semanticSegmentationMatteMediaKeysEncodingNeededForSettings:(id)a3 encodingScheme:(int)a4 deferredPhotoProxy:(BOOL)a5 adjustedPhoto:(BOOL)a6 personMaskValidHint:(float)a7;
- (id)_thumbnailOptionsForImageWithMetadata:(id)a3 encodingScheme:(int)a4 requestedStillImageCaptureSettings:(id)a5 resolvedStillImageCaptureSettings:(id)a6 processingFlags:(unsigned int)a7 cropRect:(CGRect)a8 codecType:(unsigned int)a9 maxPixelSize:(unint64_t)a10;
- (id)inputForStillImageSettings:(id)a3 portType:(id)a4 portraitAdjustedImage:(BOOL)a5 optionalSampleBuffer:(opaqueCMSampleBuffer *)a6 forEarlyEncoding:(BOOL)a7;
- (id)inputInferenceVideoFormatForAttachedMediaKey:(id)a3;
- (id)requestForInput:(id)a3 delegate:(id)a4 errOut:(int *)a5;
- (int)_addCompressedThumbnailForEncodingScheme:(int)a3 thumbnailSurface:(__IOSurface *)a4 thumbnailSurfaceSize:(unint64_t)a5;
- (int)_addMetadataAttachmentsForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 requestedSettings:(id)a5 captureType:(int)a6 parentImageHandle:(int64_t)a7 exifExtraRotationDegrees:(int)a8;
- (int)_addOrPrewarmForAttachedMediaKey:(id)a3 encodingScheme:(int)a4 sampleBuffer:(opaqueCMSampleBuffer *)a5 metadata:(id)a6 stillImageSettings:(id)a7 parentImageHandle:(int64_t)a8;
- (int)_addThumbnailForEncodingScheme:(int)a3 thumbnailPixelBuffer:(__CVBuffer *)a4 metadata:(id)a5 requestedStillImageCaptureSettings:(id)a6 resolvedStillImageCaptureSettings:(id)a7 processingFlags:(unsigned int)a8 cropRect:(CGRect)a9 codecType:(unsigned int)a10 maxPixelSize:(unint64_t)a11 parentImageHandle:(int64_t)a12;
- (int)_addUnstyledImageForEncodingScheme:(int)a3 sbuf:(opaqueCMSampleBuffer *)a4 imageDimensions:(id)a5 processingFlags:(unsigned int)a6 metadata:(id)a7 requestedStillImageCaptureSettings:(id)a8 resolvedStillImageCaptureSettings:(id)a9 cropRect:(CGRect)a10 usePixelsOutsideCrop:(BOOL)a11;
- (int)_addValue:(id)a3 toAuxiliaryImageProperties:(CGImageMetadata *)a4 namespace:(__CFString *)a5 prefix:(__CFString *)a6 key:(__CFString *)a7;
- (int)_computeAndAddSmartStyleDeltaMapToClosedSurfaceContainer:(__IOSurface *)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 encodingScheme:(int)a5 stillImageSettings:(id)a6 processingFlags:(unsigned int)a7;
- (int)_decompressSmartStylePhotoSurface:(__IOSurface *)a3;
- (int)_desiredOrientationForOrientation:(int)a3 encodingScheme:(int)a4;
- (int)_encodeDNGForEncodingScheme:(int)a3 rawSampleBuffer:(opaqueCMSampleBuffer *)a4 dngDictionary:(id)a5 requestedSettings:(id)a6 captureType:(int)a7 cropRect:(CGRect)a8 dngContainsDepthData:(BOOL)a9 dngContainsSemanticSegmentationMattes:(BOOL)a10 processingFlags:(unsigned int)a11;
- (int)_encodePhotoForEncodingScheme:(int)a3 pixelBuffer:(__CVBuffer *)a4 imageDimensions:(id)a5 processingFlags:(unsigned int)a6 metadata:(id)a7 thumbnailOptions:(id)a8 requestedStillImageCaptureSettings:(id)a9 resolvedStillImageCaptureSettings:(id)a10 cropRect:(CGRect)a11 usePixelsOutsideCrop:(BOOL)a12 allowSensorOrientationRotation:(BOOL)a13 mainImageHandleInOut:(int64_t *)a14;
- (int)_encodePrimarySbuf:(opaqueCMSampleBuffer *)a3 metadata:(id)a4 processingFlags:(unsigned int)a5 primaryImageHandleInOut:(int64_t *)a6;
- (int)_ensureSetupForPostponedResources;
- (int)_exifExtraRotationDegreesForEncodingScheme:(int)a3;
- (int)_generatePhotoSurfaceFromEncodedImageBuffer:(opaqueCMSampleBuffer *)a3 photoSurfaceOut:(__IOSurface *)a4 photoSurfaceSizeOut:(unint64_t *)a5;
- (int)_generatePreviewForSampleBuffer:(opaqueCMSampleBuffer *)a3 requestedStillImageCaptureSettings:(id)a4 cropRect:(CGRect)a5 previewPixelBuffer:(__CVBuffer *)a6;
- (int)_getColorSpacePropertiesForSourcePixelFormat:(unsigned int)a3 sourceWidth:(int)a4 sourceHeight:(int)a5 destinationPixelFormat:(unsigned int)a6;
- (int)_loadCreateAndSetupSmartStyleRenderingProcessor;
- (int)_optionsForEncodingScheme:(int)a3 pixelBuffer:(__CVBuffer *)a4 imageDimensions:(id)a5 processingFlags:(unsigned int)a6 metadata:(id)a7 thumbnailOptions:(id)a8 requestedStillImageCaptureSettings:(id)a9 resolvedStillImageCaptureSettings:(id)a10 cropRect:(CGRect)a11 usePixelsOutsideCrop:(BOOL)a12 allowSensorOrientationRotation:(BOOL)a13 containerOptionsOut:(id *)a14 encodingOptionsOut:(id *)a15;
- (int)_processSbuf;
- (int)_updateSmartStyleDeltaMapForSampleBufferIfNeeded:(opaqueCMSampleBuffer *)a3 decompressedStyledPixelBuffer:(__CVBuffer *)a4 stillImageSettings:(id)a5 encodingScheme:(int)a6 processingFlags:(unsigned int)a7;
- (int)legacySensorOrientationRotationDegreesForCapture;
- (int)prepare;
- (int)prepareForCurrentConfigurationToBecomeLive;
- (opaqueCMSampleBuffer)_newAuxImageEncodingTriggerSbufForSettings:(id)a3 metadata:(id)a4;
- (uint64_t)_waitForPiecemealEncodingQueueToComplete;
- (uint64_t)_waitForPreviewGenerationQueueToComplete;
- (uint64_t)_waitForPrewarmingQueueToComplete;
- (void)_addOrPrewarmAuxImagesIfNeededForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 metadata:(id)a5 stillImageSettings:(id)a6 processingFlags:(unsigned int)a7 parentImageHandle:(int64_t)a8;
- (void)_addOrientationOptionsToDictionary:(id)a3 encodingScheme:(int)a4 metadata:(id)a5 allowSensorOrientationRotation:(BOOL)a6;
- (void)_addOrientationOptionsToDictionary:(id)a3 encodingScheme:(int)a4 orientation:(int)a5 allowSensorOrientationRotation:(BOOL)a6;
- (void)_addQualityOptionsToDictionary:(id)a3 codecType:(unsigned int)a4 pixelBuffer:(__CVBuffer *)a5 imageDimensions:(id)a6 metadata:(id)a7 requestedStillImageCaptureSettings:(id)a8 resolvedStillImageCaptureSettings:(id)a9 enableHEIFTiling:(BOOL)a10 enableHEIFOrientation:(BOOL)a11 auxImageType:(int)a12;
- (void)_closeContainerForEncodingScheme:(int)a3;
- (void)_flushCurrentRequest;
- (void)_flushInputsByCaptureIdentifier;
- (void)_getAssetsSizeForEncodingScheme:(int)a3 containerSizeOut:(unint64_t *)a4 thumbnailSizeOut:(unint64_t *)a5 auxiliaryImagesSizeOut:(unint64_t *)a6;
- (void)_handlePrewarmForConstantColorConfidenceMapForEncodingScheme:(int)a3 requestedStillImageCaptureSettings:(id)a4 confidenceMapDimensions:(id)a5;
- (void)_handlePrewarmForDepthForEncodingScheme:(int)a3 requestedStillImageCaptureSettings:(id)a4 prewarmingMetadata:(id)a5;
- (void)_handlePrewarmForGainMapForEncodingScheme:(int)a3 requestedStillImageCaptureSettings:(id)a4 prewarmingMetadata:(id)a5;
- (void)_handlePrewarmForMainImageForEncodingScheme:(int)a3 prewarmingMetadata:(id)a4 stillImageSettings:(id)a5 reservedPrimaryImageHandleOut:(int64_t *)a6;
- (void)_handlePrewarmForPortraitEffectsMatteForEncodingScheme:(int)a3 requestedStillImageCaptureSettings:(id)a4;
- (void)_performInferenceWithBuffer:(opaqueCMSampleBuffer *)a3;
- (void)_prewarmAndReserveMainImageHandleForEncodingScheme:(int)a3 prewarmingMetadata:(id)a4 stillImageSettings:(id)a5 reservedPrimaryImageHandleOut:(int64_t *)a6;
- (void)_propagateSampleBufferGainMapMetadata:(opaqueCMSampleBuffer *)a3 toSampleBufferMetadata:(opaqueCMSampleBuffer *)a4;
- (void)_releaseResources;
- (void)_removeCurrentRequestFromInputsByCaptureIdentifier;
- (void)_tagStereoPairGroupForEncodingScheme:(int)a3 stereoPhotoImageHandles:(id *)a4 groupMetadata:(id)a5;
- (void)_updateStillImageProcessingFlagsWithDepthMetadataForSbuf:(opaqueCMSampleBuffer *)a3 stillImageSettings:(id)a4;
- (void)_waitForPiecemealEncodingGroupToComplete;
- (void)_waitForPiecemealEncodingQueueToComplete;
- (void)_waitForPreviewGenerationGroupToComplete;
- (void)_waitForPreviewGenerationQueueToComplete;
- (void)_waitForPrewarmingQueueToComplete;
- (void)cancelProcessing;
- (void)dealloc;
- (void)inputReceivedNewInputData:(id)a3;
- (void)inputReceivedSbufForPiecemealEncoding:(id)a3 sbuf:(opaqueCMSampleBuffer *)a4 attachedMediaKey:(id)a5 primaryImageMetadata:(id)a6 processingFlags:(unsigned int)a7;
- (void)reset;
- (void)waitForAllAsynchronousProcessingToComplete;
@end

@implementation BWPhotoEncoderController

- (BWPhotoEncoderController)initWithConfiguration:(id)a3
{
  v14.receiver = self;
  v14.super_class = BWPhotoEncoderController;
  v4 = [(BWStillImageProcessorController *)&v14 initWithName:@"PhotoEncoder" type:19 configuration:a3];
  if (v4)
  {
    v5 = a3;
    v4->_configuration = v5;
    [(BWStillImageProcessorControllerConfiguration *)v5 figThreadPriority];
    v4->_previewGenerationQueue = FigDispatchQueueCreateWithPriority();
    v4->_previewGenerationGroup = dispatch_group_create();
    v6 = FigCapturePlatformIdentifier();
    v7 = 12;
    if (v6 > 8)
    {
      v7 = 10;
    }

    v4->_dngBitDepth = v7;
    v13 = 1;
    v12 = 4;
    if (sysctlbyname("hw.logicalcpu", &v13, &v12, 0, 0))
    {
      v8 = 6;
      v13 = 6;
    }

    else
    {
      v8 = v13;
    }

    v4->_maxThreads = v8;
    if ([(BWPhotoEncoderControllerConfiguration *)v4->_configuration deferredPhotoProcessorEnabled])
    {
      maxThreads = v4->_maxThreads;
      if (maxThreads <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = (maxThreads >> 1);
      }

      v4->_maxThreads = v10;
    }

    v4->_heifForceEmbedThumb = 0;
    v4->_heifQualityOverride = NAN;
    v4->_heifUseTiling = 1;
    v4->_heifTileWidth = 0;
    v4->_heifTileHeight = 0;
    v4->_allowHEIFPrewarming = 1;
    v4->_addUnstyledImageToHEIF = 0;
    if (v4->_allowHEIFPrewarming)
    {
      v4->_prewarmQueue = dispatch_queue_create("com.apple.coremedia.photoencoder.prewarm", 0);
    }

    v4->_adaptiveQualityValueForHEIF = [-[NSDictionary objectForKeyedSubscript:](-[FigCaptureCameraParameters photoEncoderParameters](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters "sharedInstance")];
    v4->_inputsByCaptureIdentifier = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_inputsByCaptureIdentifierQueue = dispatch_queue_create("com.apple.coremedia.photoencodercontroller.inputsbycaptureidentifierqueue", 0);
    [(BWStillImageProcessorControllerConfiguration *)v4->_configuration figThreadPriority];
    v4->_encodingQueue = FigDispatchQueueCreateWithPriority();
    v4->_encodingGroup = dispatch_group_create();
  }

  return v4;
}

- (int)prepareForCurrentConfigurationToBecomeLive
{
  if ([(BWStillImageProcessorControllerConfiguration *)self->_configuration inferenceScheduler])
  {
    if (!self->_inferenceEngine)
    {
      self->_inferenceEngine = [[BWInferenceEngine alloc] initWithScheduler:[(BWStillImageProcessorControllerConfiguration *)self->_configuration inferenceScheduler] priority:14];
      self->_inferenceGroup = dispatch_group_create();
      v3 = [[BWPhotosCurationInferenceConfiguration alloc] initWithInferenceType:803];
      [(BWPhotosCurationInferenceConfiguration *)v3 setSemanticDevelopmentVersion:[(BWPhotoEncoderControllerConfiguration *)self->_configuration semanticDevelopmentVersion]];
      [(BWVisionInferenceConfiguration *)v3 setShouldPreventRequestForSampleBuffer:&__block_literal_global_115];
      [(BWInferenceEngine *)self->_inferenceEngine addInferenceOfType:803 version:BWInferenceVersionMake(2u configuration:0, 0) & 0xFFFFFFFFFFFFLL, v3];
      if (FigCapturePlatformIdentifier() >= 7)
      {
        v4 = [(BWInferenceConfiguration *)[BWFaceprintInferenceConfiguration alloc] initWithInferenceType:161];
        [(BWFaceprintInferenceConfiguration *)v4 setMaximumNumberOfFaces:4];
        [(BWInferenceEngine *)self->_inferenceEngine addInferenceOfType:161 version:BWPhotoEncoderFacePrintInferenceVersion() & 0xFFFFFFFFFFFFLL configuration:v4];
      }
    }
  }

  if (!self->_cmPhotoEncoderManager)
  {
    v5 = [[BWCMPhotoEncoderManager alloc] initWithDeferredPhotoProcessorEnabled:[(BWPhotoEncoderControllerConfiguration *)self->_configuration deferredPhotoProcessorEnabled]];
    self->_cmPhotoEncoderManager = v5;
    if (!v5)
    {
      v22 = 0;
      v21 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  [-[NSDictionary objectForKeyedSubscript:](-[BWPhotoEncoderControllerConfiguration attachedMediaConfigurationByAttachedMediaKey](self->_configuration attachedMediaConfigurationByAttachedMediaKey];
  if (v7 != 0.0 && !self->_dngEncoderManager)
  {
    v8 = objc_alloc_init(BWDNGEncoderManager);
    self->_dngEncoderManager = v8;
    if (!v8)
    {
      v22 = 0;
      v21 = OS_LOG_TYPE_DEFAULT;
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v22;
      if (os_log_type_enabled(v9, v21))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v19 = 136315138;
        v20 = "[BWPhotoEncoderController prepareForCurrentConfigurationToBecomeLive]";
        LODWORD(v17) = 12;
        v15 = &v19;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (!self->_jpegPixelConverter)
  {
    self->_jpegPixelConverter = objc_alloc_init(FigCapturePixelConverter);
  }

  if ([-[NSDictionary objectForKeyedSubscript:](self->_resolvedVideoFormatsByAttachedMediaKey objectForKeyedSubscript:{@"PrimaryFormat", v15, v17), "pixelFormat"}] == 875704438)
  {
    -[FigCapturePixelConverter updateOutputPixelFormat:dimensions:poolCapacity:colorSpaceProperties:](self->_jpegPixelConverter, "updateOutputPixelFormat:dimensions:poolCapacity:colorSpaceProperties:", 875704422, [-[NSDictionary objectForKeyedSubscript:](self->_resolvedVideoFormatsByAttachedMediaKey objectForKeyedSubscript:{@"PrimaryFormat", "width"}] | (objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_resolvedVideoFormatsByAttachedMediaKey, "objectForKeyedSubscript:", @"PrimaryFormat"), "height") << 32), 1, 1);
  }

  if (!self->_thumbnailPixelConverter)
  {
    self->_thumbnailPixelConverter = objc_alloc_init(FigCapturePixelConverter);
  }

  if (!self->_clientThumbnailPixelConverter)
  {
    self->_clientThumbnailPixelConverter = objc_alloc_init(FigCapturePixelConverter);
  }

  if (!self->_previewPixelConverter)
  {
    self->_previewPixelConverter = objc_alloc_init(FigCapturePixelConverter);
  }

  if (!self->_photoLibraryThumbnailPixelConverter)
  {
    self->_photoLibraryThumbnailPixelConverter = objc_alloc_init(FigCapturePixelConverter);
  }

  if (self->_inferenceEngine)
  {
    previewGenerationQueue = self->_previewGenerationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__BWPhotoEncoderController_prepareForCurrentConfigurationToBecomeLive__block_invoke_233;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_async(previewGenerationQueue, block);
  }

  result = [(BWPhotoEncoderControllerConfiguration *)self->_configuration smartStyleReversibilityEnabled];
  if (result)
  {
    if ([(BWPhotoEncoderController *)self _postponeSelectResourceAllocations]|| self->_smartStyleProcessor)
    {
      return 0;
    }

    else
    {
      return [(BWPhotoEncoderController *)self _loadCreateAndSetupSmartStyleRenderingProcessor];
    }
  }

  return result;
}

uint64_t __70__BWPhotoEncoderController_prepareForCurrentConfigurationToBecomeLive__block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  getVN5kJNH3eYuyaLxNpZr5Z7ziClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = CMGetAttachment(a3, @"BWStillImageCaptureSettings", 0);
  v5 = CMGetAttachment(a3, @"StillImageSettings", 0);
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && [v5 semanticStyle] != 0;
  if ([v4 captureType] != 10 && objc_msgSend(v4, "captureType") != 11 && objc_msgSend(v4, "captureType") != 12 && objc_msgSend(v4, "captureType") != 13)
  {
    return 1;
  }

  return v6;
}

- (void)waitForAllAsynchronousProcessingToComplete
{
  [(BWPhotoEncoderController *)self _waitForPrewarmingQueueToComplete];
  [(BWPhotoEncoderController *)self _waitForPiecemealEncodingQueueToComplete];

  [(BWPhotoEncoderController *)self _waitForPreviewGenerationQueueToComplete];
}

- (void)dealloc
{
  [(BWPhotoEncoderController *)self _releaseResources];

  self->_configuration = 0;
  self->_adaptiveQualityValueForHEIF = 0;

  self->_resolvedVideoFormatsByAttachedMediaKey = 0;
  v3.receiver = self;
  v3.super_class = BWPhotoEncoderController;
  [(BWStillImageProcessorController *)&v3 dealloc];
}

- (void)reset
{
  [(BWPhotoEncoderController *)self _waitForPrewarmingQueueToComplete];

  [(BWPhotoEncoderController *)self _waitForPiecemealEncodingGroupToComplete];
}

- (id)inputForStillImageSettings:(id)a3 portType:(id)a4 portraitAdjustedImage:(BOOL)a5 optionalSampleBuffer:(opaqueCMSampleBuffer *)a6 forEarlyEncoding:(BOOL)a7
{
  v27 = 0;
  v28[0] = &v27;
  v28[1] = 0x3052000000;
  v28[2] = __Block_byref_object_copy__39;
  v28[3] = __Block_byref_object_dispose__39;
  v28[4] = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__39;
  v25 = __Block_byref_object_dispose__39;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (!a3)
  {
    goto LABEL_10;
  }

  if (!a7 || BWPhotoEncoderSupportsPiecemealEnocding(a3))
  {
    inputsByCaptureIdentifierQueue = self->_inputsByCaptureIdentifierQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __124__BWPhotoEncoderController_inputForStillImageSettings_portType_portraitAdjustedImage_optionalSampleBuffer_forEarlyEncoding___block_invoke;
    v15[3] = &unk_1E799BC68;
    v16 = a5;
    v15[4] = a3;
    v15[5] = self;
    v15[6] = a4;
    v15[7] = &v27;
    v15[8] = &v17;
    v15[9] = &v21;
    dispatch_sync(inputsByCaptureIdentifierQueue, v15);
    if (a6)
    {
      [*(v28[0] + 40) addSampleBuffer:a6];
    }

    if (*(v18 + 24) == 1 && ([(BWStillImageProcessorController *)self enqueueInputForProcessing:*(v28[0] + 40) delegate:objc_loadWeak(&self->_primaryOwnerDelegate)]|| (v13 = v22[5]) != 0 && [(BWStillImageProcessorController *)self enqueueInputForProcessing:v13 delegate:objc_loadWeak(&self->_primaryOwnerDelegate)]))
    {
LABEL_10:
      *(v28[0] + 40) = 0;
    }
  }

  [BWPhotoEncoderController inputForStillImageSettings:v28 portType:&v17 portraitAdjustedImage:&v21 optionalSampleBuffer:&v27 forEarlyEncoding:&v29];
  return v29;
}

uint64_t __124__BWPhotoEncoderController_inputForStillImageSettings_portType_portraitAdjustedImage_optionalSampleBuffer_forEarlyEncoding___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "requestedSettings")];
  if (*(a1 + 80))
  {
    v3 = @"-PortraitAdjusted";
  }

  else
  {
    v3 = @"-Original";
  }

  v4 = [v2 stringByAppendingString:v3];
  *(*(*(a1 + 56) + 8) + 40) = [*(*(a1 + 40) + 288) objectForKeyedSubscript:v4];
  v5 = *(*(*(a1 + 56) + 8) + 40);
  if (v5)
  {
    v6 = v5;

    return v6;
  }

  else
  {
    if (*(a1 + 80) == 1)
    {
      v8 = [*(*(a1 + 40) + 64) deferredPhotoProcessorEnabled];
    }

    else
    {
      v8 = 0;
    }

    *(*(*(a1 + 56) + 8) + 40) = [[BWPhotoEncoderControllerInput alloc] initWithStillImageSettings:*(a1 + 48) portType:v8 requiresPhotosAdjustment:?];
    result = [*(*(a1 + 40) + 288) setObject:*(*(*(a1 + 56) + 8) + 40) forKeyedSubscript:v4];
    *(*(*(a1 + 64) + 8) + 24) = 1;
    if ((*(a1 + 80) & 1) == 0)
    {
      result = BWCIFilterArrayContainsPortraitFilters([objc_msgSend(*(a1 + 32) "requestedSettings")]);
      if (result)
      {
        result = [objc_msgSend(*(a1 + 32) "captureSettings")];
        if ((result & 0x800) != 0)
        {
          v9 = [objc_msgSend(objc_msgSend(*(a1 + 32) "requestedSettings")];
          *(*(*(a1 + 72) + 8) + 40) = -[BWPhotoEncoderControllerInput initWithStillImageSettings:portType:requiresPhotosAdjustment:]([BWPhotoEncoderControllerInput alloc], *(a1 + 32), *(a1 + 48), [*(*(a1 + 40) + 64) deferredPhotoProcessorEnabled]);
          v10 = *(*(*(a1 + 72) + 8) + 40);
          v11 = *(*(a1 + 40) + 288);

          return [v11 setObject:v10 forKeyedSubscript:v9];
        }
      }
    }
  }

  return result;
}

- (NSString)currentInputsCaptureRequestIdentifier
{
  v2 = [(BWStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] stillImageSettings] requestedSettings];

  return [(FigCaptureStillImageSettings *)v2 captureRequestIdentifier];
}

- (void)inputReceivedSbufForPiecemealEncoding:(id)a3 sbuf:(opaqueCMSampleBuffer *)a4 attachedMediaKey:(id)a5 primaryImageMetadata:(id)a6 processingFlags:(unsigned int)a7
{
  sampleBufferOut = 0;
  if (BWCMSampleBufferCreateCopyIncludingMetadata(a4, &sampleBufferOut))
  {
    [BWPhotoEncoderController inputReceivedSbufForPiecemealEncoding:sbuf:attachedMediaKey:primaryImageMetadata:processingFlags:];
  }

  else
  {
    encodingGroup = self->_encodingGroup;
    encodingQueue = self->_encodingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __125__BWPhotoEncoderController_inputReceivedSbufForPiecemealEncoding_sbuf_attachedMediaKey_primaryImageMetadata_processingFlags___block_invoke;
    block[3] = &unk_1E7999278;
    block[4] = a5;
    block[5] = a3;
    block[7] = a6;
    block[8] = sampleBufferOut;
    block[6] = self;
    v15 = a7;
    dispatch_group_async(encodingGroup, encodingQueue, block);
  }
}

- (void)cancelProcessing
{
  if ([(BWStillImageProcessorController *)self currentRequest])
  {
    [(BWPhotoEncoderController *)self _waitForPrewarmingQueueToComplete];
    [(BWPhotoEncoderController *)self _waitForPiecemealEncodingGroupToComplete];
    [(BWPhotoEncoderController *)self _flushCurrentRequest];
  }

  [(BWPhotoEncoderController *)self _flushInputsByCaptureIdentifier];
  v3.receiver = self;
  v3.super_class = BWPhotoEncoderController;
  [(BWStillImageProcessorController *)&v3 cancelProcessing];
}

- (id)requestForInput:(id)a3 delegate:(id)a4 errOut:(int *)a5
{
  v6 = [(BWStillImageProcessorControllerRequest *)[BWPhotoEncoderControllerRequest alloc] initWithInput:a3 delegate:a4];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -12786;
  }

  if (a5)
  {
    *a5 = v7;
  }

  return v6;
}

- (int)_processSbuf
{
  v308 = 0;
  v309[0] = 0;
  v306 = 0;
  v307 = 0;
  v305 = 0;
  v301 = 0;
  v302 = &v301;
  v303 = 0x2020000000;
  v304 = 0;
  v297 = 0;
  v298 = &v297;
  v299 = 0x2020000000;
  v300 = 0;
  v293 = 0;
  v294 = &v293;
  v295 = 0x2020000000;
  v296 = 0;
  v289 = 0;
  v290 = &v289;
  v291 = 0x2020000000;
  v292 = 0;
  v288 = 0;
  v284 = 0;
  v285 = &v284;
  v286 = 0x2020000000;
  v287 = 0;
  v280 = 0;
  v281 = &v280;
  v282 = 0x2020000000;
  v283 = 0;
  v274 = 0;
  v275 = &v274;
  v276 = 0x3052000000;
  v277 = __Block_byref_object_copy__39;
  v278 = __Block_byref_object_dispose__39;
  v279 = 0;
  v273[0] = 0;
  v273[1] = v273;
  v273[2] = 0x2020000000;
  v273[3] = 0;
  v272[0] = 0;
  v272[1] = v272;
  v272[2] = 0x2020000000;
  v272[3] = 0;
  target = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] sbufToProcess];
  v214 = [(BWStillImageProcessorController *)self currentRequest];
  if (!target)
  {
    LODWORD(v237) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(destination[0]) = 0;
    v168 = _os_log_send_and_compose_impl();
    v174 = 0;
    FigCapturePleaseFileRadar(7, v168, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotoEncoderController.m", 1037, @"LastShownDate:BWPhotoEncoderController.m:1037", @"LastShownBuild:BWPhotoEncoderController.m:1037", 0);
    free(v168);
    v38 = 0;
LABEL_330:
    LOBYTE(IsPrimaryFrame) = 0;
    v195 = 0;
    v206 = 0;
    v202 = 0;
    v64 = 0;
    pixelBuffera = 0;
    cfa = 0;
    v183 = 0;
    v215 = 0;
    v35 = 4294954516;
    goto LABEL_226;
  }

  v215 = CMGetAttachment(target, @"StillSettings", 0);
  if (!v215)
  {
    LODWORD(v237) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v167 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT);
    v38 = target;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(destination[0]) = 0;
    v169 = _os_log_send_and_compose_impl();
    v174 = 0;
    FigCapturePleaseFileRadar(7, v169, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotoEncoderController.m", 1040, @"LastShownDate:BWPhotoEncoderController.m:1040", @"LastShownBuild:BWPhotoEncoderController.m:1040", 0);
    free(v169);
    goto LABEL_330;
  }

  -[NSString isEqualToString:](-[FigCaptureStillImageSettings captureRequestIdentifier](-[BWStillImageSettings requestedSettings](-[BWStillImageProcessorControllerInput stillImageSettings](-[BWStillImageProcessorControllerRequest input](v214, "input"), "stillImageSettings"), "requestedSettings"), "captureRequestIdentifier"), "isEqualToString:", [objc_msgSend(v215 "requestedSettings")]);
  if (dword_1EB58E320)
  {
    LODWORD(v237) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v218 = [v215 requestedSettings];
  v201 = [v215 captureSettings];
  v183 = [v218 settingsID];
  v210 = BWStillImageProcessingFlagsForSampleBuffer(target);
  IsPrimaryFrame = BWPhotoEncoderIsPrimaryFrame(v210);
  v5 = BWIsDeferredPhotoProxyImage(v210);
  v190 = BWPhotoEncoderDecompressStyledImageForDeltaMap([v218 smartStyle], v5);
  if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v214 input] fatalErrorOccurred])
  {
    LODWORD(v237) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LODWORD(v35) = 0;
    goto LABEL_322;
  }

  key = *off_1E798A3C8;
  v7 = [CMGetAttachment(target *off_1E798A3C8];
  v212 = BWPhotoEncoderResolveEncodingSchemeForRequestedSettings(v218);
  v8 = BWPhotoEncoderResolveEncodingSchemeForCompressedPhotoWithLinDNG(v218);
  IsLinDNGEncodingScheme = BWPhotoEncoderIsLinDNGEncodingScheme(v212);
  v9 = [v218 previewEnabled];
  v270 = 0;
  ShouldGenerateClientThumbnail = BWPhotoEncoderShouldGenerateClientThumbnail(v218, v212, &v270);
  v11 = IsPrimaryFrame;
  HIDWORD(v195) = v9 & IsPrimaryFrame;
  v206 = ShouldGenerateClientThumbnail && IsPrimaryFrame;
  if (!v9)
  {
    v11 = ShouldGenerateClientThumbnail && IsPrimaryFrame;
  }

  if ((v11 & 1) == 0 && !v212)
  {
    LODWORD(v2) = 0;
    LODWORD(v195) = 0;
    v202 = 0;
    goto LABEL_332;
  }

  v269 = -1;
  v268 = 0;
  v267 = 0;
  v266 = 0;
  v202 = BWPhotoEncoderThumbnailEnabled(v212, v218, &v268, &v267, &v266);
  ImageBuffer = CMSampleBufferGetImageBuffer(target);
  v13 = ImageBuffer;
  if (!ImageBuffer)
  {
    v174 = v181;
    LODWORD(v171) = 0;
    FigDebugAssert3();
    LODWORD(v195) = 0;
LABEL_341:
    v64 = 0;
    pixelBuffera = 0;
    cfa = 0;
    v35 = 4294954516;
    goto LABEL_342;
  }

  cf = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(v13);
  v14 = cf | (Height << 32);
  v191 = [(BWPhotoEncoderController *)self _outputDimensionsForSbuf:target primaryImageMetadata:v7 sourceDimensions:v14 requestedStillImageCaptureSettings:v218 isStereoPhotoCapture:[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v214 input] isStereoPhotoCapture] isPrimaryFrame:IsPrimaryFrame];
  v310.width = v191.var0;
  v310.height = v191.var1;
  value = CGSizeCreateDictionaryRepresentation(v310);
  [(BWPhotoEncoderController *)self _cropRectForRequestedSettings:v218 inputDimensions:v14 outputDimensions:v191 metadata:v7 processingFlags:v210];
  x = v311.origin.x;
  y = v311.origin.y;
  width = v311.size.width;
  v18 = v311.size.height;
  v19 = *MEMORY[0x1E695F058];
  v20 = *(MEMORY[0x1E695F058] + 8);
  v21 = *(MEMORY[0x1E695F058] + 16);
  v22 = *(MEMORY[0x1E695F058] + 24);
  v313.origin.x = *MEMORY[0x1E695F058];
  v313.origin.y = v20;
  v313.size.width = v21;
  v313.size.height = v22;
  v23 = CGRectEqualToRect(v311, v313);
  v24 = width;
  LODWORD(v25) = v18;
  if (v23)
  {
    v25 = Height;
  }

  else
  {
    v25 = v25;
  }

  v196 = v25;
  if (v23)
  {
    v24 = cf;
  }

  v197 = v24;
  v265 = 0;
  v312.origin.x = x;
  v312.origin.y = y;
  v312.size.width = width;
  v312.size.height = v18;
  v314.origin.x = v19;
  v314.origin.y = v20;
  v314.size.width = v21;
  v314.size.height = v22;
  if (CGRectEqualToRect(v312, v314) && pen_clapDimensionsFromPixelBuffer(v13, &v265))
  {
    v197 = v265;
    v196 = HIDWORD(v265);
  }

  v27 = v267 == v197 && HIDWORD(v267) == v196;
  v185 = v27;
  v29 = v212 == 1 || v8 == 1;
  v205 = v29;
  v31 = v212 == 2 || v8 == 2;
  v33 = v212 == 5 || v8 == 5;
  v192 = v33;
  v193 = v31;
  v194 = BWPhotoEncoderIsLinDNGEncodingScheme(v212);
  v188 = [(BWPhotoEncoderController *)self _smartStyleReversibilityDataNeededForSettings:v215 adjustedPhoto:(v210 >> 3) & 1 deferredPhotoProxy:v5];
  v186 = v7;
  v179 = v5;
  if (dword_1EB58E320)
  {
    LODWORD(v237) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v212 && -[BWPhotoEncoderControllerConfiguration inputColorInfo](self->_configuration, "inputColorInfo") && ![-[NSDictionary objectForKeyedSubscript:](self->_resolvedVideoFormatsByAttachedMediaKey objectForKeyedSubscript:{@"PrimaryFormat", "colorSpaceProperties"}])
  {
    CVBufferSetAttachments(v13, [(BWPhotoEncoderControllerConfiguration *)self->_configuration inputColorInfo], kCVAttachmentMode_ShouldPropagate);
  }

  v177 = v202 & v185;
  if (((v205 | (v194 && IsLinDNGEncodingScheme) & v202 & v185) & 1) != 0 && CVPixelBufferGetPixelFormatType(v13) == 875704438)
  {
    v36 = CVBufferCopyAttachments(v13, kCVAttachmentMode_ShouldPropagate);
    if (v36)
    {
      v36 = CFAutorelease(v36);
    }

    if ([CFDictionaryGetValue(v36 *MEMORY[0x1E6965D88])])
    {
      v37 = 3;
    }

    else
    {
      v37 = 1;
    }

    if (![(FigCapturePixelConverter *)self->_jpegPixelConverter updateOutputPixelFormat:875704422 dimensions:v14 poolCapacity:1 colorSpaceProperties:v37, v171, v174])
    {
      [(FigCapturePixelConverter *)self->_jpegPixelConverter convertPixelBuffer:v13 cropRect:1 allocateOutputFromBufferPool:v309 outputPixelBuffer:v19, v20, v21, v22];
      if (v309[0])
      {
        v13 = v309[0];
      }
    }
  }

  pixelBuffer = v13;
  if (HIDWORD(v195))
  {
    LODWORD(v195) = 0;
    v38 = target;
    v2 = v212;
    if (self->_inferenceEngine && (v210 & 0x201) == 0)
    {
      v40 = (v210 & 8) == 0 && v212 != 1;
      LODWORD(v195) = v40;
    }

    destination[0] = 0;
    CopyIncludingMetadata = BWCMSampleBufferCreateCopyIncludingMetadata(target, destination);
    v35 = CopyIncludingMetadata;
    if (CopyIncludingMetadata)
    {
      v174 = v181;
      LODWORD(v171) = CopyIncludingMetadata;
      FigDebugAssert3();
      v64 = 0;
      pixelBuffera = 0;
      cfa = 0;
      LOBYTE(IsPrimaryFrame) = 1;
      HIDWORD(v195) = 1;
      goto LABEL_226;
    }

    CMPropagateAttachments(target, destination[0]);
    if (v7)
    {
      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v7, 1uLL);
      CMSetAttachment(destination[0], key, DeepCopy, 1u);
    }

    previewGenerationGroup = self->_previewGenerationGroup;
    previewGenerationQueue = self->_previewGenerationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__BWPhotoEncoderController__processSbuf__block_invoke;
    block[3] = &unk_1E799BC90;
    block[10] = destination[0];
    block[4] = self;
    block[5] = v218;
    *&block[11] = x;
    *&block[12] = y;
    *&block[13] = width;
    *&block[14] = v18;
    block[6] = &v301;
    block[7] = &v297;
    v264 = v195;
    v262 = cf;
    v263 = Height;
    block[8] = v273;
    block[9] = v272;
    dispatch_group_async(previewGenerationGroup, previewGenerationQueue, block);
  }

  else
  {
    LODWORD(v195) = 0;
    v2 = v212;
  }

  if (v206)
  {
    v45 = self->_previewGenerationGroup;
    v46 = self->_previewGenerationQueue;
    v260[0] = MEMORY[0x1E69E9820];
    v260[1] = 3221225472;
    v260[2] = __40__BWPhotoEncoderController__processSbuf__block_invoke_2;
    v260[3] = &unk_1E7990280;
    v260[12] = v270;
    *&v260[8] = x;
    *&v260[9] = y;
    *&v260[10] = width;
    *&v260[11] = v18;
    v260[5] = &v284;
    v260[4] = self;
    v260[7] = v13;
    v260[6] = &v280;
    dispatch_group_async(v45, v46, v260);
  }

  if (!v2)
  {
LABEL_332:
    v64 = 0;
    pixelBuffera = 0;
    cfa = 0;
    v35 = 0;
    v38 = target;
    goto LABEL_226;
  }

  if (![(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:v2])
  {
    v174 = v181;
    LODWORD(v171) = 0;
    FigDebugAssert3();
    v64 = 0;
    pixelBuffera = 0;
    cfa = 0;
    v35 = 4294954510;
LABEL_342:
    v38 = target;
    goto LABEL_225;
  }

  v184 = BWPhotoEncoderCodecTypeForEncodingScheme(v212);
  v189 = BWPhotoEncoderFileTypeForEncodingScheme(v212);
  if (!BWPhotoEncoderIsLinDNGEncodingScheme(v212))
  {
    if ([v218 outputFormat] == v184 && objc_msgSend(v218, "outputFileType") == v189)
    {
      v48 = 0;
      goto LABEL_89;
    }

    goto LABEL_340;
  }

  if ([v218 rawOutputFileType] != v189)
  {
    goto LABEL_340;
  }

  if (!v8)
  {
    v48 = v189;
    goto LABEL_89;
  }

  v184 = BWPhotoEncoderCodecTypeForEncodingScheme(v8);
  v47 = BWPhotoEncoderFileTypeForEncodingScheme(v8);
  if ([v218 outputFormat] != v184 || objc_msgSend(v218, "outputFileType") != v47)
  {
LABEL_340:
    v174 = v181;
    LODWORD(v171) = 0;
    FigDebugAssert3();
    goto LABEL_341;
  }

  v48 = v189;
  v189 = v47;
LABEL_89:
  [(BWPhotoEncoderController *)self _waitForPrewarmingQueueToComplete];
  [(BWPhotoEncoderController *)self _waitForPiecemealEncodingGroupToComplete];
  if ([(BWPhotoEncoderController *)self _postponeSelectResourceAllocations])
  {
    v35 = [(BWPhotoEncoderController *)self _ensureSetupForPostponedResources];
    if (v35)
    {
      goto LABEL_345;
    }
  }

  v259 = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v214 input] reservedPrimaryImageHandle];
  v49 = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v214 input] isStereoPhotoCapture];
  if (v259 == -1)
  {
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  if (v50 == 1)
  {
    [(BWPhotoEncoderController *)self _prewarmAndReserveMainImageHandleForEncodingScheme:v212 prewarmingMetadata:v7 stillImageSettings:v215 reservedPrimaryImageHandleOut:&v259];
  }

  if (IsPrimaryFrame)
  {
    v269 = v259;
  }

  if (dword_1EB58E320)
  {
    LODWORD(v237) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v48 = v48;
  }

  if ([objc_msgSend(v215 requestedSettings])
  {
    v52 = self->_previewGenerationGroup;
    v53 = self->_previewGenerationQueue;
    v239[0] = MEMORY[0x1E69E9820];
    v239[1] = 3221225472;
    v239[2] = __40__BWPhotoEncoderController__processSbuf__block_invoke_273;
    v239[3] = &unk_1E799BCB8;
    v239[7] = pixelBuffer;
    v239[6] = &v274;
    *&v239[8] = x;
    *&v239[9] = y;
    *&v239[10] = width;
    *&v239[11] = v18;
    v239[4] = v215;
    v239[5] = self;
    dispatch_group_async(v52, v53, v239);
  }

  v38 = target;
  LODWORD(v2) = v212;
  if (!(v190 & 1 | !v188))
  {
    v54 = [(BWPhotoEncoderController *)self _updateSmartStyleDeltaMapForSampleBufferIfNeeded:target decompressedStyledPixelBuffer:0 stillImageSettings:v215 encodingScheme:v212 processingFlags:v210];
    if (v54)
    {
      v174 = v181;
      LODWORD(v171) = v54;
      FigDebugAssert3();
    }
  }

  if (v192)
  {
    v55 = 5;
  }

  else
  {
    v55 = 0;
  }

  if (v193)
  {
    v56 = 2;
  }

  else
  {
    v56 = v55;
  }

  if (v205)
  {
    v57 = 1;
  }

  else
  {
    v57 = v56;
  }

  v187 = v57;
  if (v205)
  {
    v238 = 0;
    v237 = 0;
    *type = 0;
    v58 = BWPhotoEncoderThumbnailEnabled(1, v218, &v238, &v237, type);
    if (v58)
    {
      v59 = self->_previewGenerationGroup;
      v60 = self->_previewGenerationQueue;
      v235[0] = MEMORY[0x1E69E9820];
      v235[1] = 3221225472;
      v235[2] = __40__BWPhotoEncoderController__processSbuf__block_invoke_2_277;
      v235[3] = &unk_1E7990280;
      v235[12] = v237;
      *&v235[8] = x;
      *&v235[9] = y;
      *&v235[10] = width;
      *&v235[11] = v18;
      v235[5] = &v293;
      v235[4] = self;
      v235[7] = pixelBuffer;
      v235[6] = &v289;
      dispatch_group_async(v59, v60, v235);
    }

    LOWORD(v176) = 256;
    v61 = [(BWPhotoEncoderController *)self _encodePhotoForEncodingScheme:1 pixelBuffer:pixelBuffer imageDimensions:v197 | (v196 << 32) processingFlags:v210 metadata:v7 thumbnailOptions:0 requestedStillImageCaptureSettings:x resolvedStillImageCaptureSettings:y cropRect:width usePixelsOutsideCrop:v18 allowSensorOrientationRotation:v218 mainImageHandleInOut:v201, v176, &v269];
    v35 = v61;
    if (((v61 == 0) & v58) != 1)
    {
      if (!v61)
      {
        goto LABEL_131;
      }

LABEL_127:
      v64 = 0;
      pixelBuffera = 0;
      cfa = 0;
      goto LABEL_226;
    }

    dispatch_group_wait(self->_previewGenerationGroup, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v294 + 6))
    {
      v234 = 0;
      v233 = OS_LOG_TYPE_DEFAULT;
      v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v67 = *(v294 + 6);
      LODWORD(destination[0]) = 67109120;
      HIDWORD(destination[0]) = v67;
      v68 = _os_log_send_and_compose_impl();
      v174 = 0;
      FigCapturePleaseFileRadar(7, v68, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotoEncoderController.m", 1421, @"LastShownDate:BWPhotoEncoderController.m:1421", @"LastShownBuild:BWPhotoEncoderController.m:1421", 0);
    }

    else
    {
      LODWORD(v171) = v238;
      v65 = [(BWPhotoEncoderController *)self _addThumbnailForEncodingScheme:1 thumbnailPixelBuffer:v290[3] metadata:v7 requestedStillImageCaptureSettings:v218 resolvedStillImageCaptureSettings:v201 processingFlags:v210 cropRect:0.0 codecType:0.0 maxPixelSize:v237 parentImageHandle:SHIDWORD(v237), v171, *type, v269];
      *(v294 + 6) = v65;
      if (!v65)
      {
        goto LABEL_131;
      }

      v234 = 0;
      v233 = OS_LOG_TYPE_DEFAULT;
      v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v69 = *(v294 + 6);
      LODWORD(destination[0]) = 67109120;
      HIDWORD(destination[0]) = v69;
      v68 = _os_log_send_and_compose_impl();
      v174 = 0;
      FigCapturePleaseFileRadar(7, v68, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotoEncoderController.m", 1416, @"LastShownDate:BWPhotoEncoderController.m:1416", @"LastShownBuild:BWPhotoEncoderController.m:1416", 0);
    }

    free(v68);
  }

  else if (v193 || v192)
  {
    LODWORD(v237) = 0;
    destination[0] = 0;
    *v240 = 0;
    v62 = BWPhotoEncoderThumbnailEnabled(v56, v218, &v237, destination, v240) ? [(BWPhotoEncoderController *)self _thumbnailOptionsForImageWithMetadata:v7 encodingScheme:v212 requestedStillImageCaptureSettings:v218 resolvedStillImageCaptureSettings:v201 processingFlags:v210 cropRect:v237 codecType:x maxPixelSize:y, width, v18, *v240]: 0;
    LOWORD(v176) = 256;
    v35 = [(BWPhotoEncoderController *)self _encodePhotoForEncodingScheme:v56 pixelBuffer:pixelBuffer imageDimensions:v197 | (v196 << 32) processingFlags:v210 metadata:v7 thumbnailOptions:v62 requestedStillImageCaptureSettings:x resolvedStillImageCaptureSettings:y cropRect:width usePixelsOutsideCrop:v18 allowSensorOrientationRotation:v218 mainImageHandleInOut:v201, v176, &v269];
    if (v35)
    {
      goto LABEL_127;
    }
  }

LABEL_131:
  if (!v205 && !v193 && !v192)
  {
    goto LABEL_164;
  }

  [(BWPhotoEncoderController *)self _addOrPrewarmAuxImagesIfNeededForEncodingScheme:v187 sampleBuffer:target metadata:v7 stillImageSettings:v215 processingFlags:v210 parentImageHandle:v269];
  if (BWPhotoEncoderSupportsAddingAuxiliaryMetadataSeparately(v187))
  {
    [(BWPhotoEncoderController *)self _addGainMapMetadataForEncodingScheme:v187 sampleBuffer:target parentImageHandle:v269];
  }

  [(BWPhotoEncoderController *)self _updateStillImageProcessingFlagsWithDepthMetadataForSbuf:target stillImageSettings:v215, v171, v174];
  v70 = CMGetAttachment(target, key, 0);
  if (v188)
  {
    if (self->_addUnstyledImageToHEIF && (LOBYTE(v174) = 0, v71 = -[BWPhotoEncoderController _addUnstyledImageForEncodingScheme:sbuf:imageDimensions:processingFlags:metadata:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:cropRect:usePixelsOutsideCrop:](self, "_addUnstyledImageForEncodingScheme:sbuf:imageDimensions:processingFlags:metadata:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:cropRect:usePixelsOutsideCrop:", v187, target, v197 | (v196 << 32), v210, v7, v218, x, y, width, v18, v201, v174), v71) || ([v70 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798A918], v71 = -[BWPhotoEncoderController _addSmartStyleMetadataForEncodingScheme:sampleBuffer:requestedStillImageCaptureSettings:](self, "_addSmartStyleMetadataForEncodingScheme:sampleBuffer:requestedStillImageCaptureSettings:", v187, target, v218), v71))
    {
      v174 = v181;
      v35 = v71;
      LODWORD(v171) = v71;
      FigDebugAssert3();
LABEL_345:
      v64 = 0;
      pixelBuffera = 0;
      cfa = 0;
      goto LABEL_342;
    }
  }

  else if ([(BWPhotoEncoderController *)self _finalImageExpectingSmartStyleReversibilityDataForDeferredPhotoProxy:v179 settings:v215 adjustedPhoto:(v210 & 8) != 0])
  {
    [v70 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798A8C8];
  }

  BWPhotoEncoderApplyCropRectOnSampleBufferMetadata(target);
  FigCaptureMetadataUtilitiesNormalizeCropRect(x, y, width, v18);
  v38 = target;
  BWUpdateLandmarksForStillImageCrop();
  CMSetAttachment(target, @"EncodedImageSurfaceCGSize", value, 1u);
  if ([v218 payloadType] == 1)
  {
    v72 = [v201 captureType];
    v35 = [(BWPhotoEncoderController *)self _addMetadataAttachmentsForEncodingScheme:v187 sampleBuffer:target requestedSettings:v218 captureType:v72 parentImageHandle:v269 exifExtraRotationDegrees:[(BWPhotoEncoderController *)self legacySensorOrientationRotationDegreesForCapture]];
    if (v35)
    {
      v64 = 0;
      pixelBuffera = 0;
      cfa = 0;
      goto LABEL_225;
    }
  }

  if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v214 input] isStereoPhotoCapture]&& [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v214 input] receivedAllFramesInSingleContainer])
  {
    v73 = [(BWStillImageProcessorControllerRequest *)v214 input];
    if (v73)
    {
      [(BWStillImageProcessorControllerInput *)v73 stereoPhotoImageHandles];
      if (v231 == -1)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v231 = 0;
      v230 = 0;
      v232 = 0;
    }

    v74 = [(BWStillImageProcessorControllerRequest *)v214 input];
    if (v74)
    {
      [(BWStillImageProcessorControllerInput *)v74 stereoPhotoImageHandles];
      if (v229 == -1)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v228[2] = 0;
      v228[1] = 0;
      v229 = 0;
    }

    v75 = [MEMORY[0x1E695DF90] dictionary];
    [v75 setObject:&unk_1F2246510 forKeyedSubscript:*MEMORY[0x1E6991B60]];
    v76 = [MEMORY[0x1E695DF70] array];
    v77 = [objc_msgSend(v186 objectForKeyedSubscript:{0x1F21A9D70), "intValue"}];
    if ((v77 & 4) != 0)
    {
      v227 = *MEMORY[0x1E6973960];
      v228[0] = *MEMORY[0x1E6973958];
      [v76 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v228, &v227, 1)}];
    }

    if ((v77 & 2) != 0)
    {
      v225 = *MEMORY[0x1E6973960];
      v226 = *MEMORY[0x1E6973950];
      [v76 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v226, &v225, 1)}];
    }

    [v75 setObject:v76 forKeyedSubscript:*MEMORY[0x1E6991B68]];
    v78 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BWStillImageProcessorControllerInput monoImageLocationType](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self, "currentRequest"), "input"), "monoImageLocationType")}];
    [v75 setObject:v78 forKeyedSubscript:*MEMORY[0x1E6973988]];
    v79 = [(BWStillImageProcessorControllerRequest *)v214 input];
    if (v79)
    {
      [(BWStillImageProcessorControllerInput *)v79 stereoPhotoImageHandles];
    }

    else
    {
      memset(destination, 0, 24);
    }

    [(BWPhotoEncoderController *)self _tagStereoPairGroupForEncodingScheme:v187 stereoPhotoImageHandles:destination groupMetadata:v75];
    v7 = v186;
  }

LABEL_161:
  if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v214 input] receivedAllFramesInSingleContainer])
  {
    cfa = [(BWPhotoEncoderController *)self _closeContainerAndCopySurfaceForEncodingScheme:v187];
    if (cfa)
    {
      [(BWPhotoEncoderController *)self _getAssetsSizeForEncodingScheme:v187 containerSizeOut:&v308 thumbnailSizeOut:0 auxiliaryImagesSizeOut:0];
      goto LABEL_165;
    }
  }

LABEL_164:
  cfa = 0;
LABEL_165:
  if (!v194)
  {
    v198 = 0;
    v200 = 0;
    v64 = 0;
    v84 = 0;
    goto LABEL_200;
  }

  v38 = target;
  AttachedMedia = BWSampleBufferGetAttachedMedia(target, 0x1F21AAE10);
  if (!AttachedMedia)
  {
    v64 = 0;
    pixelBuffera = 0;
    v35 = 4294954516;
LABEL_225:
    LODWORD(v2) = v212;
    goto LABEL_226;
  }

  if (!v185 && (v202 & 1) != 0)
  {
    v85 = self->_previewGenerationGroup;
    v86 = self->_previewGenerationQueue;
    v224[0] = MEMORY[0x1E69E9820];
    v224[1] = 3221225472;
    v224[2] = __40__BWPhotoEncoderController__processSbuf__block_invoke_293;
    v224[3] = &unk_1E7990280;
    v224[12] = v267;
    *&v224[8] = x;
    *&v224[9] = y;
    *&v224[10] = width;
    *&v224[11] = v18;
    v224[5] = &v293;
    v224[4] = self;
    v224[7] = pixelBuffer;
    v224[6] = &v289;
    dispatch_group_async(v85, v86, v224);
    if (v177)
    {
LABEL_177:
      v64 = 0;
      goto LABEL_178;
    }

LABEL_176:
    BWPhotoEncoderApplyCropRectOnSampleBufferMetadata(target);
    goto LABEL_177;
  }

  if (!v177)
  {
    goto LABEL_176;
  }

  LOWORD(v176) = 0;
  v81 = [(BWPhotoEncoderController *)self _encodePhotoForEncodingScheme:IsLinDNGEncodingScheme pixelBuffer:pixelBuffer imageDimensions:v267 processingFlags:v210 metadata:v7 thumbnailOptions:0 requestedStillImageCaptureSettings:x resolvedStillImageCaptureSettings:y cropRect:width usePixelsOutsideCrop:v18 allowSensorOrientationRotation:v218 mainImageHandleInOut:v201, v176, &v269];
  *(v294 + 6) = v81;
  if (v81 || (BWPhotoEncoderApplyCropRectOnSampleBufferMetadata(target), CMSetAttachment(target, @"EncodedImageSurfaceCGSize", value, 1u), v82 = [v201 captureType], v83 = -[BWPhotoEncoderController _addMetadataAttachmentsForEncodingScheme:sampleBuffer:requestedSettings:captureType:parentImageHandle:exifExtraRotationDegrees:](self, "_addMetadataAttachmentsForEncodingScheme:sampleBuffer:requestedSettings:captureType:parentImageHandle:exifExtraRotationDegrees:", IsLinDNGEncodingScheme, target, v218, v82, v269, 0), (*(v294 + 6) = v83) != 0))
  {
    v64 = 0;
  }

  else
  {
    v64 = [(BWPhotoEncoderController *)self _closeContainerAndCopySurfaceForEncodingScheme:IsLinDNGEncodingScheme];
    if (v64)
    {
      [(BWPhotoEncoderController *)self _getAssetsSizeForEncodingScheme:IsLinDNGEncodingScheme containerSizeOut:&v288 thumbnailSizeOut:0 auxiliaryImagesSizeOut:0];
    }
  }

  if (*(v294 + 6))
  {
    [(BWPhotoEncoderController *)self _closeContainerForEncodingScheme:IsLinDNGEncodingScheme];
  }

LABEL_178:
  [(BWPhotoEncoderController *)self _propagateSampleBufferGainMapMetadata:target toSampleBufferMetadata:AttachedMedia, v171];
  v87 = CMGetAttachment(AttachedMedia, key, 0);
  LODWORD(v2) = v212;
  [(BWPhotoEncoderController *)self _cropRectForRequestedSettings:v218 inputDimensions:BWPixelBufferDimensionsFromSampleBuffer(AttachedMedia) outputDimensions:v191 metadata:v87 processingFlags:v210];
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  BWPhotoEncoderApplyCropRectOnSampleBufferMetadata(AttachedMedia);
  CMSetAttachment(AttachedMedia, @"EncodedImageSurfaceCGSize", value, 1u);
  v84 = CMGetAttachment(AttachedMedia, @"RawDNGDictionary", 0);
  if (v84)
  {
    v200 = BWSampleBufferContainsDepthAttachedMedia(target);
    v198 = BWSampleBufferContainsSemanticSegmentationMatteAttachedMediaSupportedByDemosaicedRaw(target);
    HIDWORD(v171) = v210;
    LOBYTE(v171) = v198;
    v35 = -[BWPhotoEncoderController _encodeDNGForEncodingScheme:rawSampleBuffer:dngDictionary:requestedSettings:captureType:cropRect:dngContainsDepthData:dngContainsSemanticSegmentationMattes:processingFlags:](self, "_encodeDNGForEncodingScheme:rawSampleBuffer:dngDictionary:requestedSettings:captureType:cropRect:dngContainsDepthData:dngContainsSemanticSegmentationMattes:processingFlags:", v212, AttachedMedia, v84, v218, [v201 captureType], v200, v89, v91, v93, v95, v171);
    if (!v35)
    {
      [-[BWStillImageProcessorControllerInput encodedAttachedMediaKeys](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self "currentRequest")];
      [(BWPhotoEncoderController *)self _addOrPrewarmAuxImagesIfNeededForEncodingScheme:v212 sampleBuffer:target metadata:v7 stillImageSettings:v215 processingFlags:v210 parentImageHandle:v269];
      if (BWPhotoEncoderSupportsAddingAuxiliaryMetadataSeparately(v212))
      {
        [(BWPhotoEncoderController *)self _addGainMapMetadataForEncodingScheme:v212 sampleBuffer:target parentImageHandle:v269];
      }

      [(BWPhotoEncoderController *)self _updateStillImageProcessingFlagsWithDepthMetadataForSbuf:target stillImageSettings:v215];
      if (!v202)
      {
LABEL_198:
        pixelBuffera = [(BWPhotoEncoderController *)self _closeContainerAndCopySurfaceForEncodingScheme:v212];
        if (pixelBuffera)
        {
          [(BWPhotoEncoderController *)self _getAssetsSizeForEncodingScheme:v212 containerSizeOut:&v307 thumbnailSizeOut:&v306 auxiliaryImagesSizeOut:&v305];
          goto LABEL_201;
        }

LABEL_200:
        pixelBuffera = 0;
LABEL_201:
        v105 = pixelBuffera;
        v106 = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v214 input:v171] primarySampleBuffer];
        v107 = v106;
        if (!v193 && !v205 && !v192)
        {
LABEL_218:
          if (v194)
          {
            if (v105)
            {
              CMSetAttachment(v107, @"RawImageSurface", v105, 1u);
              v222[0] = 0x1F21AA7F0;
              v223[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v307];
              v222[1] = 0x1F21AA810;
              v223[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v306];
              v222[2] = 0x1F21AA830;
              v223[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v305];
              CMSetAttachment(v107, @"RawImageAssetSizes", [MEMORY[0x1E695DF20] dictionaryWithObjects:v223 forKeys:v222 count:3], 1u);
            }

            CMSetAttachment(v107, @"RawImageFileType", [MEMORY[0x1E696AD98] numberWithInt:v48], 1u);
            CMSetAttachment(v107, @"RawDNGDictionary", v84, 1u);
            CMSetAttachment(v107, @"RawImageBitDepth", [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_dngBitDepth], 1u);
            CMSetAttachment(v107, @"RawImageContainsDepthData", [MEMORY[0x1E696AD98] numberWithBool:v200], 1u);
            CMSetAttachment(v107, @"RawImageContainsSemanticSegmentationMattes", [MEMORY[0x1E696AD98] numberWithBool:v198], 1u);
          }

          if (v192)
          {
            v38 = v107;
            [BWCMSampleBufferCopyReattachAndReturnMutableMetadata(v107) setObject:&unk_1F2246528 forKeyedSubscript:*off_1E798A5B0];
            v35 = 0;
          }

          else
          {
            v35 = 0;
            v38 = v107;
          }

          goto LABEL_225;
        }

        if (!cfa)
        {
          cfa = 0;
LABEL_217:
          CMSetAttachment(v107, @"EncodedImageCodecType", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v184, v171, v174}], 1u);
          CMSetAttachment(v107, @"EncodedImageFileType", [MEMORY[0x1E696AD98] numberWithInt:v189], 1u);
          goto LABEL_218;
        }

        if ((v190 & v188) == 1)
        {
          v108 = v106;
          v109 = [BWPhotoEncoderController _computeAndAddSmartStyleDeltaMapToClosedSurfaceContainer:"_computeAndAddSmartStyleDeltaMapToClosedSurfaceContainer:sampleBuffer:encodingScheme:stillImageSettings:processingFlags:" sampleBuffer:? encodingScheme:? stillImageSettings:? processingFlags:?];
          if (v109)
          {
            LODWORD(v237) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v110 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v111 = v237;
            if (os_log_type_enabled(v110, type[0]))
            {
              v112 = v111;
            }

            else
            {
              v112 = v111 & 0xFFFFFFFE;
            }

            if (v112)
            {
              *v240 = 136315394;
              *&v240[4] = "[BWPhotoEncoderController _processSbuf]";
              v241 = 1026;
              LODWORD(v242) = v109;
              LODWORD(v174) = 18;
              v171 = v240;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v105 = pixelBuffera;
          }

          else
          {
            CFRelease(cfa);
            cfa = [(BWPhotoEncoderController *)self _closeContainerAndCopySurfaceForEncodingScheme:v187];
            if (!cfa)
            {
              cfa = 0;
              CMSetAttachment(v107, @"EncodedImageSurface", 0, 1u);
              goto LABEL_216;
            }

            [(BWPhotoEncoderController *)self _getAssetsSizeForEncodingScheme:v187 containerSizeOut:&v308 thumbnailSizeOut:0 auxiliaryImagesSizeOut:0];
          }
        }

        else
        {
          v108 = v106;
        }

        CMSetAttachment(v108, @"EncodedImageSurface", cfa, 1u);
LABEL_216:
        CMSetAttachment(v107, @"EncodedImageSurfaceSize", [MEMORY[0x1E696AD98] numberWithUnsignedLong:v308], 1u);
        goto LABEL_217;
      }

      if (v185)
      {
        if (!*(v294 + 6))
        {
          v96 = [(BWPhotoEncoderController *)self _addCompressedThumbnailForEncodingScheme:v212 thumbnailSurface:v64 thumbnailSurfaceSize:v288];
          *(v294 + 6) = v96;
          if (!v96)
          {
            goto LABEL_198;
          }
        }
      }

      else
      {
        dispatch_group_wait(self->_previewGenerationGroup, 0xFFFFFFFFFFFFFFFFLL);
        if (!*(v294 + 6))
        {
          v18 = SHIDWORD(v267);
          width = v267;
          y = 0.0;
          x = 0.0;
LABEL_191:
          LODWORD(v171) = v268;
          v98 = [(BWPhotoEncoderController *)self _addThumbnailForEncodingScheme:v212 thumbnailPixelBuffer:v290[3] metadata:v7 requestedStillImageCaptureSettings:v218 resolvedStillImageCaptureSettings:v201 processingFlags:v210 cropRect:x codecType:y maxPixelSize:width parentImageHandle:v18, v171, v266, v269];
          *(v294 + 6) = v98;
          if (v98)
          {
            LODWORD(v237) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v99 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v100 = v237;
            if (os_log_type_enabled(v99, type[0]))
            {
              v101 = v100;
            }

            else
            {
              v101 = v100 & 0xFFFFFFFE;
            }

            if (v101)
            {
              v102 = *(v294 + 6);
              *v240 = 136315394;
              *&v240[4] = "[BWPhotoEncoderController _processSbuf]";
              v241 = 1024;
              LODWORD(v242) = v102;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v103 = *(v294 + 6);
            LODWORD(destination[0]) = 67109120;
            HIDWORD(destination[0]) = v103;
            v104 = _os_log_send_and_compose_impl();
            v174 = 0;
            FigCapturePleaseFileRadar(7, v104, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotoEncoderController.m", 1648, @"LastShownDate:BWPhotoEncoderController.m:1648", @"LastShownBuild:BWPhotoEncoderController.m:1648", 0);
            free(v104);
          }

          goto LABEL_198;
        }
      }

      v97 = v290[3];
      v290[3] = pixelBuffer;
      CFRetain(pixelBuffer);
      if (v97)
      {
        CFRelease(v97);
      }

      goto LABEL_191;
    }

    pixelBuffera = 0;
  }

  else
  {
    pixelBuffera = 0;
    v35 = 0;
  }

LABEL_226:
  v211 = v64;
  targeta = v38;
  dispatch_group_wait(self->_previewGenerationGroup, 0xFFFFFFFFFFFFFFFFLL);
  v213 = v2;
  if (*(v302 + 6))
  {
    LODWORD(v237) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v114 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v115 = v237;
    if (os_log_type_enabled(v114, type[0]))
    {
      v116 = v115;
    }

    else
    {
      v116 = v115 & 0xFFFFFFFE;
    }

    if (v116)
    {
      v117 = *(v302 + 6);
      *v240 = 136315394;
      *&v240[4] = "[BWPhotoEncoderController _processSbuf]";
      v241 = 1024;
      LODWORD(v242) = v117;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v119 = *(v302 + 6);
    LODWORD(destination[0]) = 67109120;
    HIDWORD(destination[0]) = v119;
    v120 = _os_log_send_and_compose_impl();
    v174 = 0;
    FigCapturePleaseFileRadar(7, v120, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotoEncoderController.m", 1769, @"LastShownDate:BWPhotoEncoderController.m:1769", @"LastShownBuild:BWPhotoEncoderController.m:1769", 0);
    v118 = pixelBuffera;
    free(v120);
  }

  else
  {
    v118 = pixelBuffera;
    if (v298[3])
    {
      if ([v218 payloadType] == 1)
      {
        IOSurface = CVPixelBufferGetIOSurface(v298[3]);
        if (IOSurface)
        {
          CMSetAttachment(v38, @"PreviewSurface", IOSurface, 1u);
        }
      }

      else if (![v218 payloadType])
      {
        CMSetAttachment(v38, @"PreviewPixelBuffer", v298[3], 1u);
      }
    }
  }

  if (v206)
  {
    if (*(v285 + 6))
    {
      LODWORD(v237) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v121 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v122 = v237;
      if (os_log_type_enabled(v121, type[0]))
      {
        v123 = v122;
      }

      else
      {
        v123 = v122 & 0xFFFFFFFE;
      }

      if (v123)
      {
        v124 = *(v285 + 6);
        *v240 = 136315394;
        *&v240[4] = "[BWPhotoEncoderController _processSbuf]";
        v241 = 1024;
        LODWORD(v242) = v124;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v126 = *(v285 + 6);
      LODWORD(destination[0]) = 67109120;
      HIDWORD(destination[0]) = v126;
      v127 = _os_log_send_and_compose_impl();
      v174 = 0;
      FigCapturePleaseFileRadar(7, v127, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotoEncoderController.m", 1785, @"LastShownDate:BWPhotoEncoderController.m:1785", @"LastShownBuild:BWPhotoEncoderController.m:1785", 0);
      free(v127);
    }

    else
    {
      v125 = v281[3];
      if (v125)
      {
        IOSurface = CVPixelBufferGetIOSurface(v125);
        if (IOSurface)
        {
          CMSetAttachment(v38, @"ThumbnailSurface", IOSurface, 1u);
        }
      }
    }
  }

  if ([objc_msgSend(v215 requestedSettings])
  {
    v128 = v275[5];
    if (v128)
    {
      CMSetAttachment(v38, @"PhotoLibraryThumbnails", v128, 1u);
    }

    else
    {
      LODWORD(v237) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v129 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v130 = v237;
      if (os_log_type_enabled(v129, type[0]))
      {
        v131 = v130;
      }

      else
      {
        v131 = v130 & 0xFFFFFFFE;
      }

      if (v131)
      {
        v132 = [objc_msgSend(v215 "requestedSettings")];
        *v240 = 136315394;
        *&v240[4] = "[BWPhotoEncoderController _processSbuf]";
        v241 = 2112;
        v242 = v132;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v133 = [objc_msgSend(v215 "requestedSettings")];
      LODWORD(destination[0]) = 138412290;
      *(destination + 4) = v133;
      v134 = _os_log_send_and_compose_impl();
      v175 = 0;
      FigCapturePleaseFileRadar(7, v134, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotoEncoderController.m", 1795, @"LastShownDate:BWPhotoEncoderController.m:1795", @"LastShownBuild:BWPhotoEncoderController.m:1795", 0);
      free(v134);
    }
  }

  v135 = BWSampleBufferGetAttachedMedia(targeta, 0x1F217BF50);
  if (v135)
  {
    v136 = CMGetAttachment(v135, *off_1E798A3C8, 0);
    if (v136)
    {
      [BWCMSampleBufferCopyReattachAndReturnMutableMetadata(targeta) setObject:v136 forKeyedSubscript:*off_1E798A680];
    }
  }

  if (v195)
  {
    if ([(BWPhotoEncoderControllerConfiguration *)self->_configuration alwaysAwaitInference])
    {
      [(BWPhotoEncoderController *)self _waitUntilTimeoutForInferenceGroupToCompleteAndReturnSuccess];
    }

    v137 = atomic_load(&self->_opportunisticInferenceCompleted);
    if (v137)
    {
      v138 = self->_previewGenerationQueue;
      v221[0] = MEMORY[0x1E69E9820];
      v221[1] = 3221225472;
      v221[2] = __40__BWPhotoEncoderController__processSbuf__block_invoke_320;
      v221[3] = &unk_1E79973C8;
      v221[4] = self;
      v221[5] = v273;
      v221[6] = targeta;
      dispatch_sync(v138, v221);
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v140 = [BWInferenceGetAttachedInference(targeta 802];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
      }

      v141 = [BWInferenceGetAttachedInference(targeta 802];
      if (v140 > 0 || v141)
      {
        BWPhotoEncoderApplyFinalCropToFaceObservationsForSampleBuffer(targeta);
      }

      v142 = self->_previewGenerationQueue;
      v219[0] = MEMORY[0x1E69E9820];
      v219[1] = 3221225472;
      v219[2] = __40__BWPhotoEncoderController__processSbuf__block_invoke_2_321;
      v219[3] = &unk_1E799BCE0;
      v220 = v140;
      v219[4] = self;
      v219[5] = v272;
      v219[6] = v273;
      v219[7] = UpTimeNanoseconds / 0xF4240;
      dispatch_async(v142, v219);
    }
  }

  if (cfa)
  {
    v143 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[enabled:1 %@ size:%lu]", BWStringFromSurface(), v308];
    if (v118)
    {
LABEL_275:
      v144 = [MEMORY[0x1E696AEC0] stringWithFormat:@"linDNG:[enabled:1 %@ size:%lu]", BWStringFromSurface(), v307];
      goto LABEL_278;
    }
  }

  else
  {
    v143 = @"[enabled:0]";
    if (v118)
    {
      goto LABEL_275;
    }
  }

  v144 = @"linDNG:[enabled:0]";
LABEL_278:
  if (HIDWORD(v195))
  {
    v145 = MEMORY[0x1E696AEC0];
    v146 = BWStringFromPixelBufferSurface(v298[3]);
    v147 = [v145 stringWithFormat:@"[enabled:1 %@ err:%d]", v146, *(v302 + 6)];
  }

  else
  {
    v147 = @"[enabled:0]";
  }

  if (v202)
  {
    v148 = v290[3];
    if (v148)
    {
      v149 = MEMORY[0x1E696AEC0];
      v150 = BWStringFromPixelBufferSurface(v148);
      v151 = [v149 stringWithFormat:@"[enabled:1 %@ err:%d]", v150, *(v294 + 6)];
    }

    else
    {
      v151 = @"[enabled:0]";
    }

    if (v211)
    {
      v152 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[enabled:1 %@ size:%lu err:%d]", BWStringFromSurface(), v288, *(v294 + 6)];
    }

    else
    {
      v152 = @"[enabled:0]";
    }
  }

  else
  {
    v151 = @"[enabled:0]";
    v152 = @"[enabled:0]";
  }

  if (v206)
  {
    v153 = MEMORY[0x1E696AEC0];
    v154 = BWStringFromPixelBufferSurface(v281[3]);
    v155 = [v153 stringWithFormat:@"[enabled:1 %@ err:%d]", v154, *(v285 + 6)];
  }

  else
  {
    v155 = @"[enabled:0]";
  }

  if (dword_1EB58E320)
  {
    LODWORD(v237) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v156 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v157 = v237;
    if (os_log_type_enabled(v156, type[0]))
    {
      v158 = v157;
    }

    else
    {
      v158 = v157 & 0xFFFFFFFE;
    }

    if (v158)
    {
      v159 = "failed";
      *v240 = 136317443;
      *&v240[4] = "[BWPhotoEncoderController _processSbuf]";
      v241 = 2082;
      if (!v35)
      {
        v159 = "succeeded";
      }

      v242 = v159;
      v243 = 2050;
      v244 = v183;
      v245 = 1026;
      v246 = v35;
      v247 = 2113;
      v248 = v143;
      v249 = 2113;
      v250 = v144;
      v251 = 2113;
      v252 = v147;
      v253 = 2113;
      v254 = v151;
      v255 = 2113;
      v256 = v152;
      v257 = 2113;
      v258 = v155;
      LODWORD(v175) = 98;
      v172 = v240;
      _os_log_send_and_compose_impl();
    }

    v118 = pixelBuffera;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v309[0])
  {
    CFRelease(v309[0]);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v118)
  {
    CFRelease(v118);
  }

  v160 = v298[3];
  if (v160)
  {
    CFRelease(v160);
  }

  v161 = v290[3];
  if (v161)
  {
    CFRelease(v161);
  }

  if (v211)
  {
    CFRelease(v211);
  }

  v162 = v281[3];
  if (v162)
  {
    CFRelease(v162);
  }

  v163 = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v214 input] receivedAllFramesInSingleContainer];
  if (v35 != 0 && IsPrimaryFrame)
  {
    [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v214 input] setFatalErrorOccurred:1];
LABEL_318:
    [(BWPhotoEncoderController *)self _closeContainerForEncodingScheme:v213, v172, v175];
    -[BWStillImageProcessorControllerDelegate processorController:didFinishProcessingSampleBuffer:type:processorInput:err:](-[BWStillImageProcessorControllerRequest delegate](v214, "delegate"), "processorController:didFinishProcessingSampleBuffer:type:processorInput:err:", self, targeta, [CMGetAttachment(targeta @"StillImageBufferFrameType"], -[BWStillImageProcessorControllerRequest input](v214, "input"), v35);
    v164 = 1;
    goto LABEL_320;
  }

  if (v163)
  {
    goto LABEL_318;
  }

  v164 = 0;
LABEL_320:
  [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v214 input] finishedProcessingSbuf];
  if (v164)
  {
    [(BWPhotoEncoderController *)self _removeCurrentRequestFromInputsByCaptureIdentifier];
  }

LABEL_322:
  _Block_object_dispose(v272, 8);
  _Block_object_dispose(v273, 8);
  _Block_object_dispose(&v274, 8);
  _Block_object_dispose(&v280, 8);
  _Block_object_dispose(&v284, 8);
  _Block_object_dispose(&v289, 8);
  _Block_object_dispose(&v293, 8);
  _Block_object_dispose(&v297, 8);
  _Block_object_dispose(&v301, 8);
  return v35;
}

void __40__BWPhotoEncoderController__processSbuf__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _generatePreviewForSampleBuffer:*(a1 + 80) requestedStillImageCaptureSettings:*(a1 + 40) cropRect:*(*(a1 + 56) + 8) + 24 previewPixelBuffer:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  if (!*(*(*(a1 + 48) + 8) + 24) && *(a1 + 128) == 1)
  {
    BWCMSampleBufferCreateCopyWithNewPixelBuffer(*(a1 + 80), *(*(*(a1 + 56) + 8) + 24), (*(a1 + 32) + 232), (*(*(a1 + 64) + 8) + 24));
    if (!CGRectIsEmpty(*(a1 + 88)))
    {
      v2 = [*(a1 + 40) previewDimensions];
      v3 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(*(*(*(a1 + 64) + 8) + 24));
      FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v3, *(a1 + 120), v2, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
      FigCaptureMetadataUtilitiesUpdateMetadataForNewFinalDimensions(v3, *(a1 + 120), v2);
    }

    BWPhotoEncoderApplyFinalCropToFaceObservationsForSampleBuffer(*(*(*(a1 + 64) + 8) + 24));
    [*(a1 + 32) _performInferenceWithBuffer:*(*(*(a1 + 64) + 8) + 24)];
    *(*(*(a1 + 72) + 8) + 24) = FigGetUpTimeNanoseconds() / 0xF4240uLL;
  }

  v4 = *(a1 + 80);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t __40__BWPhotoEncoderController__processSbuf__block_invoke_2(uint64_t a1)
{
  v2 = CVBufferCopyAttachments(*(a1 + 56), kCVAttachmentMode_ShouldPropagate);
  if (v2)
  {
    v3 = CFAutorelease(v2);
  }

  else
  {
    v3 = 0;
  }

  result = BWPhotoEncoderScalePixelBuffer(*(a1 + 56), *(a1 + 96), [BWVideoFormat colorSpacePropertiesForPixelBufferAttachments:v3], *(*(a1 + 32) + 112), 0, *(*(a1 + 48) + 8) + 24, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __40__BWPhotoEncoderController__processSbuf__block_invoke_273(uint64_t a1)
{
  v2 = CVBufferCopyAttachments(*(a1 + 56), kCVAttachmentMode_ShouldPropagate);
  if (v2)
  {
    v3 = CFAutorelease(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = [BWVideoFormat colorSpacePropertiesForPixelBufferAttachments:v3];
  *(*(*(a1 + 48) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [objc_msgSend(*(a1 + 32) "requestedSettings")];
  result = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        size.width = 0.0;
        size.height = 0.0;
        pixelBuffer = 0;
        if (CGSizeMakeWithDictionaryRepresentation(v10, &size))
        {
          if (BWPhotoEncoderScalePixelBuffer(*(a1 + 56), size.width | (size.height << 32), v4, *(*(a1 + 40) + 120), 0, &pixelBuffer, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)))
          {
            __40__BWPhotoEncoderController__processSbuf__block_invoke_273_cold_1();
          }

          else
          {
            [*(*(*(a1 + 48) + 8) + 40) addObject:CVPixelBufferGetIOSurface(pixelBuffer)];
          }

          if (pixelBuffer)
          {
            CFRelease(pixelBuffer);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __40__BWPhotoEncoderController__processSbuf__block_invoke_2_277(uint64_t a1)
{
  v2 = CVBufferCopyAttachments(*(a1 + 56), kCVAttachmentMode_ShouldPropagate);
  if (v2)
  {
    v3 = CFAutorelease(v2);
  }

  else
  {
    v3 = 0;
  }

  result = BWPhotoEncoderScalePixelBuffer(*(a1 + 56), *(a1 + 96), [BWVideoFormat colorSpacePropertiesForPixelBufferAttachments:v3], *(*(a1 + 32) + 104), 1, *(*(a1 + 48) + 8) + 24, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __40__BWPhotoEncoderController__processSbuf__block_invoke_293(uint64_t a1)
{
  v2 = CVBufferCopyAttachments(*(a1 + 56), kCVAttachmentMode_ShouldPropagate);
  if (v2)
  {
    v3 = CFAutorelease(v2);
  }

  else
  {
    v3 = 0;
  }

  result = BWPhotoEncoderScalePixelBuffer(*(a1 + 56), *(a1 + 96), [BWVideoFormat colorSpacePropertiesForPixelBufferAttachments:v3], *(*(a1 + 32) + 104), 1, *(*(a1 + 48) + 8) + 24, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __40__BWPhotoEncoderController__processSbuf__block_invoke_320(uint64_t a1)
{
  atomic_store(0, (*(a1 + 32) + 209));
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    v3 = CMGetAttachment(v2, @"Inferences", 0);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x1E695E0F8];
    }

    CMSetAttachment(*(a1 + 48), @"Inferences", v4, 1u);
    v5 = *(*(*(a1 + 40) + 8) + 24);
    if (v5)
    {
      CFRelease(v5);
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

void __40__BWPhotoEncoderController__processSbuf__block_invoke_2_321(uint64_t a1)
{
  atomic_store(0, (*(a1 + 32) + 209));
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v3 = UpTimeNanoseconds / 0xF4240 - *(a1 + 56);
  v4 = UpTimeNanoseconds / 0xF4240 - *(*(*(a1 + 40) + 8) + 24);
  v5 = objc_alloc_init(BWOpportunisticInferenceAnalyticsPayload);
  [(BWOpportunisticInferenceAnalyticsPayload *)v5 setInferenceDeadlineOverdue:v3];
  [(BWOpportunisticInferenceAnalyticsPayload *)v5 setTotalInferenceExecutionTime:v4];
  [(BWOpportunisticInferenceAnalyticsPayload *)v5 setFacesProcessedCount:*(a1 + 64)];
  [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", v5];
  v6 = *(*(*(a1 + 48) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (void)_removeCurrentRequestFromInputsByCaptureIdentifier
{
  inputsByCaptureIdentifierQueue = self->_inputsByCaptureIdentifierQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__BWPhotoEncoderController__removeCurrentRequestFromInputsByCaptureIdentifier__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(inputsByCaptureIdentifierQueue, block);
}

uint64_t __78__BWPhotoEncoderController__removeCurrentRequestFromInputsByCaptureIdentifier__block_invoke(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 288);
  result = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [objc_msgSend(*(a1 + 32) "currentRequest")];
        result = [*(*(a1 + 32) + 288) objectForKeyedSubscript:v7];
        if (v8 == result)
        {
          if (v7)
          {
            return [*(*(a1 + 32) + 288) removeObjectForKey:v7];
          }

          return result;
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)_flushInputsByCaptureIdentifier
{
  inputsByCaptureIdentifierQueue = self->_inputsByCaptureIdentifierQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__BWPhotoEncoderController__flushInputsByCaptureIdentifier__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(inputsByCaptureIdentifierQueue, block);
}

- (void)_flushCurrentRequest
{
  if (dword_1EB58E320)
  {
    LODWORD(v19) = 0;
    v22 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest:v15] input];
  v5 = [(BWCMPhotoEncoderManager *)self->_cmPhotoEncoderManager isContainerOpen];
  v6 = [(BWDNGEncoderManager *)self->_dngEncoderManager isContainerOpen];
  v7 = BWPhotoEncoderResolveEncodingSchemeForRequestedSettings([(BWStillImageSettings *)[(BWStillImageProcessorControllerInput *)v4 stillImageSettings] requestedSettings]);
  if (BWPhotoEncoderResolveEncodingSchemeForCompressedPhotoWithLinDNG([(BWStillImageSettings *)[(BWStillImageProcessorControllerInput *)v4 stillImageSettings] requestedSettings]) == 2 || v7 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  if (([(BWStillImageProcessorControllerInput *)v4 fatalErrorOccurred]& 1) != 0 || ![(BWStillImageProcessorControllerInput *)v4 primarySampleBuffer])
  {
    if (v5)
    {
      [(BWPhotoEncoderController *)self _closeContainerForEncodingScheme:v9];
    }

    if (v6)
    {
      [(BWPhotoEncoderController *)self _closeContainerForEncodingScheme:v7];
    }
  }

  else
  {
    if (v5)
    {
      v21[0] = 0;
      v10 = [(BWPhotoEncoderController *)self _closeContainerAndCopySurfaceForEncodingScheme:v9];
      if (v10)
      {
        v11 = v10;
        [(BWPhotoEncoderController *)self _getAssetsSizeForEncodingScheme:v9 containerSizeOut:v21 thumbnailSizeOut:0 auxiliaryImagesSizeOut:0];
        CMSetAttachment([(BWStillImageProcessorControllerInput *)v4 primarySampleBuffer], @"EncodedImageSurface", v11, 1u);
        v12 = [(BWStillImageProcessorControllerInput *)v4 primarySampleBuffer];
        CMSetAttachment(v12, @"EncodedImageSurfaceSize", [MEMORY[0x1E696AD98] numberWithUnsignedLong:v21[0]], 1u);
      }
    }

    if (v6)
    {
      v21[0] = 0;
      v19 = 0;
      v20 = 0;
      v13 = [(BWPhotoEncoderController *)self _closeContainerAndCopySurfaceForEncodingScheme:v7];
      if (v13)
      {
        v14 = v13;
        [(BWPhotoEncoderController *)self _getAssetsSizeForEncodingScheme:v7 containerSizeOut:v21 thumbnailSizeOut:&v20 auxiliaryImagesSizeOut:&v19];
        CMSetAttachment([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] primarySampleBuffer], @"RawImageSurface", v14, 1u);
        v17[0] = 0x1F21AA7F0;
        v18[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v21[0]];
        v17[1] = 0x1F21AA810;
        v18[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v20];
        v17[2] = 0x1F21AA830;
        v18[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v19];
        CMSetAttachment(-[BWStillImageProcessorControllerInput primarySampleBuffer](v4, "primarySampleBuffer"), @"RawImageAssetSizes", [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3], 1u);
      }
    }

    -[BWStillImageProcessorControllerDelegate processorController:didFinishProcessingSampleBuffer:type:processorInput:err:](-[BWStillImageProcessorControllerRequest delegate](-[BWStillImageProcessorController currentRequest](self, "currentRequest"), "delegate"), "processorController:didFinishProcessingSampleBuffer:type:processorInput:err:", self, -[BWStillImageProcessorControllerInput primarySampleBuffer](v4, "primarySampleBuffer"), [CMGetAttachment(-[BWStillImageProcessorControllerInput primarySampleBuffer](v4 "primarySampleBuffer")], -[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self, "currentRequest"), "input"), 4294950496);
  }

  [(BWPhotoEncoderController *)self _removeCurrentRequestFromInputsByCaptureIdentifier];
  [(BWPhotoEncoderController *)self reset];
}

- (void)_propagateSampleBufferGainMapMetadata:(opaqueCMSampleBuffer *)a3 toSampleBufferMetadata:(opaqueCMSampleBuffer *)a4
{
  AttachedMedia = BWSampleBufferGetAttachedMedia(a3, 0x1F217BF50);
  v6 = *off_1E798A3C8;
  v7 = CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0);
  value = [CMGetAttachment(a4 v6];
  [value setObject:v7 forKeyedSubscript:*off_1E798A680];
  CMSetAttachment(a4, v6, value, 1u);
}

- (double)_primaryOutputAspectRatioForSettings:(id)a3
{
  v5 = FigCaptureAspectRatioForDimensions([objc_msgSend(a3 "requestedSettings")]);
  v6 = [a3 requestedSettings];

  [(BWPhotoEncoderController *)self _adjustAspectRatio:v6 settings:v5];
  return result;
}

- (int)_addOrPrewarmForAttachedMediaKey:(id)a3 encodingScheme:(int)a4 sampleBuffer:(opaqueCMSampleBuffer *)a5 metadata:(id)a6 stillImageSettings:(id)a7 parentImageHandle:(int64_t)a8
{
  v12 = *&a4;
  AttachedMedia = BWSampleBufferGetAttachedMedia(a5, a3);
  v16 = @"Adding";
  if (!AttachedMedia)
  {
    v16 = @"Prewarming";
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ aux image {%@}", v16, a3];
  [(BWPhotoEncoderController *)self _primaryOutputAspectRatioForSettings:a7];
  v18 = v17;
  v32 = [objc_msgSend(a6 objectForKeyedSubscript:{*off_1E798A5B0), "intValue"}];
  if (![a3 isEqualToString:0x1F217BF50])
  {
    v21 = 0;
LABEL_10:
    if (([a3 isEqualToString:@"Depth"] & 1) == 0)
    {
LABEL_16:
      v23 = 0;
      goto LABEL_20;
    }

    if (AttachedMedia)
    {
      v22 = MEMORY[0x1E695FF58];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        [a7 settingsID];
        kdebug_trace();
      }

      v21 = [(BWPhotoEncoderController *)self _addDepthForEncodingScheme:v12 sampleBuffer:a5 primaryOutputAspectRatio:a8 parentImageHandle:v18];
      if (*v22 == 1)
      {
        [a7 settingsID];
        kdebug_trace();
      }

      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (AttachedMedia)
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [a7 settingsID];
      kdebug_trace();
    }

    v19 = BWSampleBufferGetAttachedMedia(a5, a3);
    [(BWPhotoEncoderController *)self mainImageDownscalingFactorForAttachedMediaKey:a3 attachedMediaMetadata:CMGetAttachment(v19, *off_1E798A3C8, 0)];
    v21 = -[BWPhotoEncoderController _addGainMapForEncodingScheme:sampleBuffer:outputDimensions:primaryOutputAspectRatio:parentImageHandle:](self, "_addGainMapForEncodingScheme:sampleBuffer:outputDimensions:primaryOutputAspectRatio:parentImageHandle:", v12, a5, ([objc_msgSend(a7 "requestedSettings")] / v20) | ((objc_msgSend(objc_msgSend(a7, "requestedSettings"), "outputHeight") / v20) << 32), a8, v18);
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [a7 settingsID];
      kdebug_trace();
    }

    goto LABEL_10;
  }

  -[BWPhotoEncoderController _handlePrewarmForGainMapForEncodingScheme:requestedStillImageCaptureSettings:prewarmingMetadata:](self, "_handlePrewarmForGainMapForEncodingScheme:requestedStillImageCaptureSettings:prewarmingMetadata:", v12, [a7 requestedSettings], a6);
  v21 = 0;
  if ([a3 isEqualToString:@"Depth"])
  {
LABEL_18:
    -[BWPhotoEncoderController _handlePrewarmForDepthForEncodingScheme:requestedStillImageCaptureSettings:prewarmingMetadata:](self, "_handlePrewarmForDepthForEncodingScheme:requestedStillImageCaptureSettings:prewarmingMetadata:", v12, [a7 requestedSettings], a6);
  }

  v23 = 1;
LABEL_20:
  if ([a3 isEqualToString:0x1F21AABB0])
  {
    if (AttachedMedia)
    {
      v24 = MEMORY[0x1E695FF58];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        [a7 settingsID];
        kdebug_trace();
      }

      v21 = [(BWPhotoEncoderController *)self _addPortraitEffectsMatteForEncodingScheme:v12 sampleBuffer:a5 primaryOutputAspectRatio:a8 parentImageHandle:v18];
      if (*v24 == 1)
      {
        [a7 settingsID];
        kdebug_trace();
      }
    }

    else
    {
      -[BWPhotoEncoderController _handlePrewarmForPortraitEffectsMatteForEncodingScheme:requestedStillImageCaptureSettings:](self, "_handlePrewarmForPortraitEffectsMatteForEncodingScheme:requestedStillImageCaptureSettings:", v12, [a7 requestedSettings]);
      v23 = 1;
    }
  }

  if ([a3 isEqualToString:@"PersonSemanticsHair"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"PersonSemanticsSkin") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"PersonSemanticsTeeth") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"PersonSemanticsGlasses"))
  {
    if (!AttachedMedia)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v31 = [a3 isEqualToString:0x1F21AAD30];
    if (!AttachedMedia || !v31)
    {
      goto LABEL_36;
    }
  }

  v25 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [a7 settingsID];
    kdebug_trace();
  }

  v21 = -[BWPhotoEncoderController _addSemanticMattesForEncodingScheme:attachedMediaKey:sampleBuffer:primaryOutputAspectRatio:settingsID:orientation:parentImageHandle:](self, "_addSemanticMattesForEncodingScheme:attachedMediaKey:sampleBuffer:primaryOutputAspectRatio:settingsID:orientation:parentImageHandle:", v12, a3, a5, [objc_msgSend(a7 "requestedSettings")], v32, a8, v18);
  if (*v25 == 1)
  {
    [a7 settingsID];
    kdebug_trace();
  }

LABEL_36:
  v26 = [a3 isEqualToString:0x1F21AAF70];
  if (AttachedMedia && v26)
  {
    v27 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [a7 settingsID];
      kdebug_trace();
    }

    v21 = [(BWPhotoEncoderController *)self _addSmartStyleLinearThumbnailForEncodingScheme:v12 sampleBuffer:a5 primaryOutputAspectRatio:v18];
    if (*v27 == 1)
    {
      [a7 settingsID];
      kdebug_trace();
    }
  }

  if ([a3 isEqualToString:0x1F21AB170])
  {
    if (!AttachedMedia)
    {
      -[BWPhotoEncoderController _handlePrewarmForConstantColorConfidenceMapForEncodingScheme:requestedStillImageCaptureSettings:confidenceMapDimensions:](self, "_handlePrewarmForConstantColorConfidenceMapForEncodingScheme:requestedStillImageCaptureSettings:confidenceMapDimensions:", v12, [a7 requestedSettings], -[BWPhotoEncoderControllerConfiguration constantColorConfidenceMapDimensions](self->_configuration, "constantColorConfidenceMapDimensions"));
      goto LABEL_52;
    }

    v28 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [a7 settingsID];
      kdebug_trace();
    }

    v21 = [(BWPhotoEncoderController *)self _addConstantColorConfidenceMapForEncodingScheme:v12 sampleBuffer:a5];
    if (*v28 == 1)
    {
      [a7 settingsID];
      kdebug_trace();
      if (v23)
      {
        goto LABEL_52;
      }

LABEL_50:
      v29 = 0;
      goto LABEL_53;
    }
  }

  if (!v23)
  {
    goto LABEL_50;
  }

LABEL_52:
  v29 = 1;
LABEL_53:
  if (v21)
  {
    return 2;
  }

  else
  {
    return v29;
  }
}

- (float)mainImageDownscalingFactorForAttachedMediaKey:(id)a3 attachedMediaMetadata:(id)a4
{
  [objc_msgSend(a4 objectForKeyedSubscript:{*off_1E798A788), "floatValue"}];
  if (!self->_preferMainImageDownscalingFactorByAttachedMediaKeyFromSampleBuffer || result == 0.0)
  {
    v7 = [(NSDictionary *)[(BWPhotoEncoderControllerConfiguration *)self->_configuration attachedMediaConfigurationByAttachedMediaKey] objectForKeyedSubscript:a3];

    [v7 mainImageDownscalingFactor];
  }

  return result;
}

- (void)_releaseResources
{
  [(BWPhotoEncoderController *)self _waitForPrewarmingQueueToComplete];

  self->_prewarmQueue = 0;
  [(BWPhotoEncoderController *)self _waitUntilTimeoutForInferenceGroupToCompleteAndReturnSuccess];

  self->_inferenceGroup = 0;
  [(BWPhotoEncoderController *)self _waitForPreviewGenerationGroupToComplete];

  self->_previewGenerationGroup = 0;
  [(BWPhotoEncoderController *)self _waitForPreviewGenerationQueueToComplete];

  self->_previewGenerationQueue = 0;
  self->_cmPhotoEncoderManager = 0;

  self->_dngEncoderManager = 0;
  self->_jpegPixelConverter = 0;

  self->_previewPixelConverter = 0;
  self->_thumbnailPixelConverter = 0;

  self->_clientThumbnailPixelConverter = 0;
  self->_photoLibraryThumbnailPixelConverter = 0;

  self->_inferenceEngine = 0;
  self->_inferenceInputVideoFormat = 0;
  inferenceInputFormatDescription = self->_inferenceInputFormatDescription;
  if (inferenceInputFormatDescription)
  {
    CFRelease(inferenceInputFormatDescription);
    self->_inferenceInputFormatDescription = 0;
  }

  self->_smartStyleProcessor = 0;
  smartStyleDeltaMapPixelBuffer = self->_smartStyleDeltaMapPixelBuffer;
  if (smartStyleDeltaMapPixelBuffer)
  {
    CFRelease(smartStyleDeltaMapPixelBuffer);
    self->_smartStyleDeltaMapPixelBuffer = 0;
  }

  smartStyleDecompressedStyledPixelBuffer = self->_smartStyleDecompressedStyledPixelBuffer;
  if (smartStyleDecompressedStyledPixelBuffer)
  {
    CFRelease(smartStyleDecompressedStyledPixelBuffer);
    self->_smartStyleDecompressedStyledPixelBuffer = 0;
  }

  [(BWPhotoEncoderController *)self _waitForPiecemealEncodingQueueToComplete];

  self->_encodingQueue = 0;
  [(BWPhotoEncoderController *)self _waitForPiecemealEncodingGroupToComplete];

  self->_encodingGroup = 0;
}

- (id)_encoderManagerForEncodingScheme:(int)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return *(&self->super.super.isa + *off_1E799BD00[a3 - 1]);
  }
}

uint64_t __75__BWPhotoEncoderController__loadCreateAndSetupSmartStyleRenderingProcessor__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [*(*(a1 + 32) + 64) deferredPhotoProcessorEnabled];
  v5 = @"EncoderNode";
  if (v4)
  {
    v5 = @"EncoderNode-Deferred";
  }

  [a2 setInstanceLabel:{objc_msgSend(v3, "stringWithFormat:", @"%@", v5)}];
  return 0;
}

- (BOOL)_depthEncodingNeededForSettings:(id)a3 deferredPhotoProxy:(BOOL)a4
{
  v4 = a4;
  v6 = [-[BWStillImageProcessorControllerInput encodedAttachedMediaKeys](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self "currentRequest")];
  if ([objc_msgSend(a3 "requestedSettings")])
  {
    v7 = [objc_msgSend(a3 "requestedSettings")];
  }

  else
  {
    v7 = 0;
  }

  v8 = BWCIFilterArrayContainsPortraitFilters([objc_msgSend(a3 "requestedSettings")]);
  v9 = [objc_msgSend(a3 "captureSettings")];
  if (v6)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    return v7 & (!v4 | v8) | (v9 >> 38) & 1;
  }

  return v10;
}

- (BOOL)_personMaskEncodingNeededForSettings:(id)a3 encodingScheme:(int)a4 deferredPhotoProxy:(BOOL)a5 adjustedPhoto:(BOOL)a6 personMaskValidHint:(float)a7
{
  v8 = a6;
  v9 = a5;
  v13 = [-[BWStillImageProcessorControllerInput encodedAttachedMediaKeys](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self "currentRequest")];
  if ([objc_msgSend(a3 "requestedSettings")])
  {
    v14 = [objc_msgSend(a3 "requestedSettings")];
  }

  else
  {
    v14 = 0;
  }

  v15 = BWCIFilterArrayContainsPortraitFilters([objc_msgSend(a3 "requestedSettings")]);
  IsLinDNGEncodingScheme = BWPhotoEncoderIsLinDNGEncodingScheme(a4);
  if ([(BWPhotoEncoderController *)self _smartStyleReversibilityDataNeededForSettings:a3 adjustedPhoto:v8 deferredPhotoProxy:v9])
  {
    [(NSDictionary *)[(BWPhotoEncoderControllerConfiguration *)self->_configuration attachedMediaConfigurationByAttachedMediaKey] objectForKeyedSubscript:0x1F21AABB0];
  }

  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = v14 & (!v9 | v15) | IsLinDNGEncodingScheme;
  }

  v18 = [(BWPhotoEncoderControllerConfiguration *)self->_configuration smartStyleRenderingVersion];
  v19 = (a7 > 0.0) & (v13 ^ 1);
  if (v18 < 1)
  {
    v19 = v17;
  }

  return v19 & 1;
}

- (id)_semanticSegmentationMatteMediaKeysEncodingNeededForSettings:(id)a3 encodingScheme:(int)a4 deferredPhotoProxy:(BOOL)a5 adjustedPhoto:(BOOL)a6 personMaskValidHint:(float)a7
{
  v8 = a6;
  v9 = a5;
  v13 = [MEMORY[0x1E695DF70] array];
  if ([objc_msgSend(objc_msgSend(a3 "requestedSettings")])
  {
    v14 = [objc_msgSend(a3 "requestedSettings")];
  }

  else
  {
    v14 = 0;
  }

  v15 = BWCIFilterArrayContainsPortraitFilters([objc_msgSend(a3 "requestedSettings")]);
  IsLinDNGEncodingScheme = BWPhotoEncoderIsLinDNGEncodingScheme(a4);
  v17 = [(BWPhotoEncoderController *)self _smartStyleReversibilityDataNeededForSettings:a3 adjustedPhoto:v8 deferredPhotoProxy:v9];
  if (v14)
  {
    if (!v9 | v15)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v18 = [objc_msgSend(a3 "requestedSettings")];
      v19 = [v18 countByEnumeratingWithState:&v38 objects:v37 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v39;
        do
        {
          v22 = 0;
          do
          {
            if (*v39 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = BWPhotoEncoderAttachedMediaKeyForSemanticSegmentationMatteURN(*(*(&v38 + 1) + 8 * v22));
            if (([-[BWStillImageProcessorControllerInput encodedAttachedMediaKeys](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self "currentRequest")] & 1) == 0)
            {
              [v13 addObject:v23];
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v38 objects:v37 count:16];
        }

        while (v20);
      }
    }
  }

  if (IsLinDNGEncodingScheme || v17)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = [(BWPhotoEncoderControllerConfiguration *)self->_configuration attachedMediaConfigurationByAttachedMediaKey];
    v25 = [(NSDictionary *)v24 countByEnumeratingWithState:&v33 objects:v32 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v34;
      do
      {
        v28 = 0;
        do
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v33 + 1) + 8 * v28);
          if (([-[BWStillImageProcessorControllerInput encodedAttachedMediaKeys](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self "currentRequest")] & 1) == 0 && objc_msgSend(-[NSDictionary objectForKeyedSubscript:](-[BWPhotoEncoderControllerConfiguration attachedMediaConfigurationByAttachedMediaKey](self->_configuration, "attachedMediaConfigurationByAttachedMediaKey"), "objectForKeyedSubscript:", v29), "requiresEncoding") && BWPhotoEncoderSemanticSegmentationMatteURNForAttachedMediaKey(v29))
          {
            [v13 addObject:v29];
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = [(NSDictionary *)v24 countByEnumeratingWithState:&v33 objects:v32 count:16];
      }

      while (v26);
    }
  }

  v30 = [(BWPhotoEncoderControllerConfiguration *)self->_configuration smartStyleRenderingVersion];
  if (a7 <= 0.0 && v30 >= 1)
  {
    [v13 removeObject:@"PersonSemanticsSkin"];
  }

  return v13;
}

- (BOOL)_smartStyleReversibilityDataNeededForSettings:(id)a3 adjustedPhoto:(BOOL)a4 deferredPhotoProxy:(BOOL)a5
{
  v8 = [(BWPhotoEncoderControllerConfiguration *)self->_configuration smartStyleReversibilityEnabled];
  if (v8)
  {
    if ([objc_msgSend(a3 "requestedSettings")])
    {
      LOBYTE(v8) = !a4 && !a5;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (CGRect)_cropRectForRequestedSettings:(id)a3 inputDimensions:(id)a4 outputDimensions:(id)a5 metadata:(id)a6 processingFlags:(unsigned int)a7
{
  v11 = MEMORY[0x1E695F058];
  v13 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  if (![objc_msgSend(a3 "bravoConstituentImageDeliveryDeviceTypes")])
  {
    v30 = width;
    v31 = height;
    v32 = *v11;
    v33 = v11[1];
    FigCFDictionaryGetCGRectIfPresent();
    v16 = FigCaptureAspectRatioForDimensions(*&a5);
    [(BWPhotoEncoderController *)self _adjustAspectRatio:a3 settings:?];
    v18 = v17;
    if (v17 == v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = v17;
    }

    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(a4.var0, *&a4 >> 32, *&v32, *(&v32 + 1), *&v33, *(&v33 + 1), v19);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    if (CGRectIsNull(v34))
    {
      [BWPhotoEncoderController _cropRectForRequestedSettings:inputDimensions:outputDimensions:metadata:processingFlags:];
    }

    else
    {
      v22 = width | (height << 32);
      if (v22 == a5 && a4 != a5 || v18 != v16)
      {
        v12 = y;
        v13 = x;
        goto LABEL_14;
      }

      if (v22 != a4)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        width = v30;
        height = v31;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_14;
      }
    }

    width = v30;
    height = v31;
  }

LABEL_14:
  v25 = v13;
  v26 = v12;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (int)legacySensorOrientationRotationDegreesForCapture
{
  v3 = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] settings];
  v4 = [(BWPhotoEncoderControllerConfiguration *)self->_configuration legacySensorOrientationRotationDegrees];
  v5 = [(BWPhotoEncoderControllerConfiguration *)self->_configuration clientIsCameraOrDerivative];

  return BWCameraSensorOrientationCompensationDegreesCWForRequestedSettings(v3, v4, v5);
}

- (int)_exifExtraRotationDegreesForEncodingScheme:(int)a3
{
  if ((a3 - 1) > 1)
  {
    return 0;
  }

  else
  {
    return [(BWPhotoEncoderController *)self legacySensorOrientationRotationDegreesForCapture];
  }
}

- (void)_addOrientationOptionsToDictionary:(id)a3 encodingScheme:(int)a4 orientation:(int)a5 allowSensorOrientationRotation:(BOOL)a6
{
  v6 = a6;
  v7 = *&a5;
  v8 = *&a4;
  v11 = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] requiresPhotosAdjustment];
  if (v8 == 5 || v11)
  {
    [a3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69918A8]];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    [a3 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6991918]];
    if (!v6)
    {
      return;
    }
  }

  else if (!v6)
  {
    return;
  }

  v13 = [(BWPhotoEncoderController *)self _desiredOrientationForOrientation:v7 encodingScheme:v8];
  if (v13 != v7)
  {
    v14 = v13;
    v15 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    [a3 setObject:v15 forKeyedSubscript:*MEMORY[0x1E6991918]];
    v16 = [MEMORY[0x1E696AD98] numberWithInt:v14];
    v17 = *MEMORY[0x1E69918E8];

    [a3 setObject:v16 forKeyedSubscript:v17];
  }
}

- (void)_addOrientationOptionsToDictionary:(id)a3 encodingScheme:(int)a4 metadata:(id)a5 allowSensorOrientationRotation:(BOOL)a6
{
  v6 = a6;
  v7 = *&a4;
  v10 = [objc_msgSend(a5 objectForKeyedSubscript:{*off_1E798A5B0), "intValue"}];
  if (v10)
  {

    [(BWPhotoEncoderController *)self _addOrientationOptionsToDictionary:a3 encodingScheme:v7 orientation:v10 allowSensorOrientationRotation:v6];
  }
}

- (void)_addQualityOptionsToDictionary:(id)a3 codecType:(unsigned int)a4 pixelBuffer:(__CVBuffer *)a5 imageDimensions:(id)a6 metadata:(id)a7 requestedStillImageCaptureSettings:(id)a8 resolvedStillImageCaptureSettings:(id)a9 enableHEIFTiling:(BOOL)a10 enableHEIFOrientation:(BOOL)a11 auxImageType:(int)a12
{
  [a3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991938]];
  if (a4 == 1752589105)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:a10];
    [a3 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69919A8]];
    v25 = [MEMORY[0x1E695DF90] dictionary];
    adaptiveQualityValueForHEIF = self->_adaptiveQualityValueForHEIF;
    if (adaptiveQualityValueForHEIF)
    {
      if (a6.var1 * a6.var0 <= 11999999)
      {
        v28 = @"Default";
      }

      else
      {
        v28 = @"12MPAndLarger";
      }

      [-[NSDictionary objectForKeyedSubscript:](adaptiveQualityValueForHEIF objectForKeyedSubscript:{v28), "floatValue"}];
      v30 = v29;
      v31 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      [v25 setObject:v31 forKeyedSubscript:*MEMORY[0x1E6991B90]];
    }

    else
    {
      v30 = 0.85;
    }

    v40 = 0;
    if (a12 == 12)
    {
      *&v26 = self->_heifQualityOverride;
      [a8 smartStyle];
      v41 = BWPhotoEncoderHEIFDeltaMapDownscalingFactor();
      if (v41 > 1.0)
      {
        if (a6.var0 <= a6.var1)
        {
          var1 = a6.var1;
        }

        else
        {
          var1 = a6.var0;
        }

        v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{vcvts_n_u32_f32(floorf(((var1 / v41) + 63.0) * 0.015625), 6uLL)}];
        [a3 setObject:v43 forKeyedSubscript:*MEMORY[0x1E6991940]];
      }

      v30 = BWPhotoEncoderHEIFDeltaMapQuality([a8 smartStyle]);
      v40 = 1;
    }

    if (v30 < 0.0)
    {
      v30 = 0.0;
    }

    v44 = [objc_msgSend(a7 objectForKeyedSubscript:{*off_1E798A5C0), "intValue"}];
    if (a7)
    {
      v45 = 1;
    }

    else
    {
      v45 = a5 == 0;
    }

    if (!v45 || (v40 & 1) != 0 || v44 == 4)
    {
      v50 = fminf(v30, 1.0);
      v48 = *MEMORY[0x1E6991978];
      if (v50 != 1.0)
      {
        [a3 setObject:&unk_1F2246588 forKeyedSubscript:v48];
        *&v53 = v50;
        v54 = [MEMORY[0x1E696AD98] numberWithFloat:v53];
        [v25 setObject:v54 forKeyedSubscript:*MEMORY[0x1E6991B90]];
        goto LABEL_50;
      }

      v47 = &unk_1F22465A0;
      v49 = a3;
    }

    else
    {
      [a9 captureType];
      [(BWPhotoEncoderControllerConfiguration *)self->_configuration zeroShutterLagEnabled];
      IsHighGainImage = BWPhotoEncoderIsHighGainImage(a7);
      [a3 setObject:&unk_1F22465B8 forKeyedSubscript:*MEMORY[0x1E6991978]];
      if (IsHighGainImage)
      {
        v47 = &unk_1F2246570;
      }

      else
      {
        v47 = &unk_1F2246588;
      }

      v48 = *MEMORY[0x1E6991B88];
      v49 = v25;
    }

    [v49 setObject:v47 forKeyedSubscript:v48];
LABEL_50:
    if ([v25 count])
    {
      [a3 setObject:v25 forKeyedSubscript:*MEMORY[0x1E6991970]];
    }

    if (a11)
    {
      v51 = [MEMORY[0x1E696AD98] numberWithInt:{FigCaptureMetadataUtilitiesStillImageExifOrientationFromRotationDegreesAndMirrored(objc_msgSend(a8, "outputRotationDegrees"), objc_msgSend(a8, "outputMirroring"), 0, objc_msgSend(a8, "metadata"))}];
      v52 = *MEMORY[0x1E6991918];

      [a3 setObject:v51 forKeyedSubscript:v52];
    }

    return;
  }

  if (a4 != 1785750887)
  {
    return;
  }

  v19 = [a8 vtCompressionProperties];
  v20 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69837E0]];
  v21 = v20;
  if (v20)
  {
    [v20 floatValue];
    v23 = v22;
  }

  else
  {
    v23 = 0.85;
  }

  v32 = [objc_msgSend(a7 objectForKeyedSubscript:{*off_1E798A5C0), "intValue"}];
  if (a7)
  {
    v33 = 1;
  }

  else
  {
    v33 = a5 == 0;
  }

  if (!v33 || (!v21 ? (v34 = v32 == 4) : (v34 = 1), v34))
  {
    v37 = 0.0;
    if (v23 >= 0.0)
    {
      v37 = v23;
    }

    v38 = fminf(v37, 1.0);
    [a3 setObject:&unk_1F2246588 forKeyedSubscript:*MEMORY[0x1E6991978]];
    v57 = *MEMORY[0x1E6991B90];
    *&v39 = v38;
    v58 = [MEMORY[0x1E696AD98] numberWithFloat:v39];
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    goto LABEL_25;
  }

  v56 = 0;
  v55 = 0;
  v35 = [a9 captureType];
  [(BWPhotoEncoderControllerConfiguration *)self->_configuration zeroShutterLagEnabled];
  if (!BWPhotoEncoderDefaultJPEGIndexedQTable(a5, a7, v35, &v55, &v56))
  {
    [a3 setObject:&unk_1F2246570 forKeyedSubscript:*MEMORY[0x1E6991978]];
    v36 = [MEMORY[0x1E696AD98] numberWithInt:v55];
LABEL_25:
    [a3 setObject:v36 forKeyedSubscript:*MEMORY[0x1E6991970]];
    return;
  }

  [BWPhotoEncoderController _addQualityOptionsToDictionary:codecType:pixelBuffer:imageDimensions:metadata:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:enableHEIFTiling:enableHEIFOrientation:auxImageType:];
}

- ($2825F4736939C4A6D3AD43837233062D)_outputDimensionsForSbuf:(opaqueCMSampleBuffer *)a3 primaryImageMetadata:(id)a4 sourceDimensions:(id)a5 requestedStillImageCaptureSettings:(id)a6 isStereoPhotoCapture:(BOOL)a7 isPrimaryFrame:(BOOL)a8
{
  v9 = a7;
  v14 = [a6 outputDimensions];
  if (v9 && !a8)
  {
    v14 = [(BWPhotoEncoderControllerConfiguration *)self->_configuration stereoPhotoOutputDimensions];
  }

  v15 = HIDWORD(v14);
  v16 = [a4 objectForKeyedSubscript:*off_1E798A780];
  if (v16)
  {
    v17 = v16;
    [v16 floatValue];
    v19 = FigCaptureScaledDimensions(v14, v18);
    [v17 floatValue];
    v21 = FigCaptureScaledDimensions(v14, v20);
    if (v14 >= SHIDWORD(v14))
    {
      v22 = HIDWORD(v21);
    }

    else
    {
      v22 = HIDWORD(v14);
    }

    if (v14 < SHIDWORD(v14))
    {
      LODWORD(v14) = v21;
    }

    v23 = FigCaptureAspectRatioForDimensions([a6 outputDimensions]);
    v24 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v14 | (v22 << 32), v23);
    if (v19 != 2016 && a5 == 0x5E8000007E0 && HIDWORD(v19) == 1512)
    {
      v14 = 0x5E8000007E0;
    }

    else
    {
      v14 = v24;
    }

    v15 = HIDWORD(v14);
  }

  return (v14 | (v15 << 32));
}

- (id)_thumbnailOptionsForImageWithMetadata:(id)a3 encodingScheme:(int)a4 requestedStillImageCaptureSettings:(id)a5 resolvedStillImageCaptureSettings:(id)a6 processingFlags:(unsigned int)a7 cropRect:(CGRect)a8 codecType:(unsigned int)a9 maxPixelSize:(unint64_t)a10
{
  v10 = *&a9;
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v17 = *&a4;
  v20 = [MEMORY[0x1E695DF90] dictionary];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (!CGRectIsEmpty(v27))
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v28);
    [v20 setObject:DictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E6991998]];
    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }
  }

  LOWORD(v26) = 0;
  -[BWPhotoEncoderController _addQualityOptionsToDictionary:codecType:pixelBuffer:imageDimensions:metadata:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:enableHEIFTiling:enableHEIFOrientation:auxImageType:](self, "_addQualityOptionsToDictionary:codecType:pixelBuffer:imageDimensions:metadata:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:enableHEIFTiling:enableHEIFOrientation:auxImageType:", v20, v10, 0, [a5 thumbnailWidth] | (objc_msgSend(a5, "thumbnailHeight") << 32), a3, a5, a6, v26);
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
  [v20 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69918D0]];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a10];
  [v20 setObject:v23 forKeyedSubscript:*MEMORY[0x1E6991940]];
  if ([(BWPhotoEncoderControllerConfiguration *)self->_configuration usesHighEncodingPriority])
  {
    [v20 setObject:&unk_1F2246540 forKeyedSubscript:*MEMORY[0x1E6991960]];
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BWStillImageProcessorControllerConfiguration figThreadPriority](self->_configuration, "figThreadPriority")}];
  [v20 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69919A0]];
  [(BWPhotoEncoderController *)self _addOrientationOptionsToDictionary:v20 encodingScheme:v17 metadata:a3 allowSensorOrientationRotation:1];
  if ([a5 outputFormat] == 1785750887)
  {
    [v20 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991938]];
    if (![a5 payloadType])
    {
      [v20 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991910]];
    }
  }

  return v20;
}

- (CGImageMetadata)_newAuxiliaryImagePropertiesFromPortraitEffectsMatteMetadata:(id)a3
{
  Mutable = CGImageMetadataCreateMutable();
  v6 = Mutable;
  if (!Mutable)
  {
    [BWPhotoEncoderController _newAuxiliaryImagePropertiesFromPortraitEffectsMatteMetadata:];
    return v6;
  }

  v7 = *off_1E798D200;
  v8 = *off_1E798D208;
  if (!CGImageMetadataRegisterNamespaceForPrefix(Mutable, *off_1E798D200, *off_1E798D208, 0))
  {
    if ([BWPhotoEncoderController _newAuxiliaryImagePropertiesFromPortraitEffectsMatteMetadata:])
    {
      return v6;
    }

LABEL_9:
    CFRelease(v6);
    return 0;
  }

  v9 = [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798D218), "intValue"}];
  if (-[BWPhotoEncoderController _addValue:toAuxiliaryImageProperties:namespace:prefix:key:](self, "_addValue:toAuxiliaryImageProperties:namespace:prefix:key:", [MEMORY[0x1E696AD98] numberWithInt:v9], v6, v7, v8, *off_1E798D210))
  {
    [BWPhotoEncoderController _newAuxiliaryImagePropertiesFromPortraitEffectsMatteMetadata:];
    goto LABEL_9;
  }

  return v6;
}

- (int)_updateSmartStyleDeltaMapForSampleBufferIfNeeded:(opaqueCMSampleBuffer *)a3 decompressedStyledPixelBuffer:(__CVBuffer *)a4 stillImageSettings:(id)a5 encodingScheme:(int)a6 processingFlags:(unsigned int)a7
{
  v13 = objc_alloc_init(NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMI%@V%d", @"SmartStyleProcessorInputOutput", -[BWPhotoEncoderControllerConfiguration smartStyleRenderingVersion](self->_configuration, "smartStyleRenderingVersion")]));
  v75 = a5;
  v14 = BWPhotoEncoderDeltaMapPixelFormat([objc_msgSend(a5 "requestedSettings")], a6);
  ImageBuffer = a4;
  if (!a4)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a3);
    if (!ImageBuffer)
    {
      [BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:];
      v67 = -12783;
      goto LABEL_53;
    }
  }

  v74 = a7;
  v76 = v13;
  Width = CVPixelBufferGetWidth(ImageBuffer);
  v73 = ImageBuffer;
  Height = CVPixelBufferGetHeight(ImageBuffer);
  v18 = Width | (Height << 32);
  smartStyleDeltaMapPixelBuffer = self->_smartStyleDeltaMapPixelBuffer;
  if (smartStyleDeltaMapPixelBuffer)
  {
    v20 = CVPixelBufferGetWidth(self->_smartStyleDeltaMapPixelBuffer);
    v21 = CVPixelBufferGetHeight(smartStyleDeltaMapPixelBuffer);
    PixelFormatType = CVPixelBufferGetPixelFormatType(self->_smartStyleDeltaMapPixelBuffer);
    v23 = self->_smartStyleDeltaMapPixelBuffer;
    if (v20 == Width && v21 == Height && PixelFormatType == v14)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else if (v23)
    {
      CFRelease(v23);
      self->_smartStyleDeltaMapPixelBuffer = 0;
    }
  }

  v26 = [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] delegate] processorController:self newOutputPixelBufferForProcessorInput:[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] type:48 dimensions:v18];
  self->_smartStyleDeltaMapPixelBuffer = v26;
  if (!v26)
  {
LABEL_44:
    v67 = -12780;
    goto LABEL_45;
  }

LABEL_15:
  AttachedMedia = BWSampleBufferGetAttachedMedia(a3, 0x1F21AAFF0);
  if (!AttachedMedia)
  {
    goto LABEL_44;
  }

  v28 = CMSampleBufferGetImageBuffer(AttachedMedia);
  if (!v28)
  {
    [BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:];
    goto LABEL_42;
  }

  v29 = v28;
  v30 = BWSampleBufferGetAttachedMedia(a3, 0x1F21AAFB0);
  if (v30)
  {
    v31 = CMSampleBufferGetImageBuffer(v30);
    if (!v31)
    {
      [BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:];
LABEL_42:
      v67 = -12783;
LABEL_45:
      v13 = v76;
      goto LABEL_53;
    }
  }

  else
  {
    v31 = 0;
  }

  v72 = v29;
  v32 = *off_1E798A3C8;
  v33 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  if (!v33)
  {
    [BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:];
    goto LABEL_44;
  }

  if (a4)
  {
    v34 = Width;
    v35 = Height;
    v36 = 0.0;
    v37 = 0.0;
    v38 = v75;
    v39 = v74;
  }

  else
  {
    v40 = v33;
    v38 = v75;
    v41 = [v75 requestedSettings];
    v42 = [objc_msgSend(v75 "requestedSettings")];
    v43 = v18;
    v39 = v74;
    [(BWPhotoEncoderController *)self _cropRectForRequestedSettings:v41 inputDimensions:v43 outputDimensions:v42 metadata:v40 processingFlags:v74];
    v36 = v44;
    v37 = v45;
    v34 = v46;
    v35 = v47;
  }

  v48 = BWSampleBufferGetAttachedMedia(a3, 0x1F21AAF90);
  v13 = v76;
  if (!v48)
  {
    [BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:];
LABEL_49:
    v67 = -12783;
    goto LABEL_53;
  }

  v49 = v48;
  v50 = CMGetAttachment(v48, v32, 0);
  if (!v50)
  {
    [BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:];
    goto LABEL_49;
  }

  v51 = v50;
  v52 = CMSampleBufferGetImageBuffer(v49);
  if (!v52)
  {
    [BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:];
    goto LABEL_49;
  }

  v53 = v52;
  v54 = CVPixelBufferGetWidth(v52);
  -[BWPhotoEncoderController _cropRectForRequestedSettings:inputDimensions:outputDimensions:metadata:processingFlags:](self, "_cropRectForRequestedSettings:inputDimensions:outputDimensions:metadata:processingFlags:", [v38 requestedSettings], v54 | (CVPixelBufferGetHeight(v53) << 32), objc_msgSend(objc_msgSend(v38, "requestedSettings"), "outputDimensions"), v51, v39);
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor resetState];
  if (v63)
  {
    goto LABEL_50;
  }

  [v76 setInputUnstyledPixelBuffer:v73];
  [v76 setInputUnstyledCropRect:{v36, v37, v34, v35}];
  if (v31)
  {
    [v76 setInputUnstyledThumbnailPixelBuffer:v31];
  }

  [v76 setInputStyleCoefficientsPixelBuffer:v72];
  [v76 setInputReferenceForDeltaMapComputationPixelBuffer:v53];
  [v76 setInputReferenceForDeltaMapComputationCropRect:{v56, v58, v60, v62}];
  [v76 setOutputStyledCropRect:{v36, v37, v34, v35}];
  [v76 setOutputDeltaMapPixelBuffer:self->_smartStyleDeltaMapPixelBuffer];
  [v76 setOutputDeltaMapCropRect:{v36, v37, v34, v35}];
  [(CMISmartStyleProcessor *)self->_smartStyleProcessor setInputOutput:v76];
  v64 = BWAspectRatioValueFromAspectRatio([objc_msgSend(v38 "requestedSettings")]);
  v65 = objc_opt_class();
  if (v64 == 0.0 || v64 >= 1.0)
  {
    v66 = [v65 getDefaultProcessorConfigurationForStillsReversibility];
  }

  else
  {
    v66 = [v65 getDefaultProcessorConfigurationForStillsReversibility3x4];
  }

  [(CMISmartStyleProcessor *)self->_smartStyleProcessor setConfiguration:v66];
  v63 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor prepareToProcess:4];
  if (v63 || (v63 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor process]) != 0)
  {
LABEL_50:
    v67 = v63;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  }

  else
  {
    v67 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor finishProcessing];
    if (!v67)
    {
      [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] setDeltaMapIsValid:1];

      return v67;
    }

    v70 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_53:

  v71 = self->_smartStyleDeltaMapPixelBuffer;
  if (v71)
  {
    CFRelease(v71);
    self->_smartStyleDeltaMapPixelBuffer = 0;
  }

  return v67;
}

- (int)_computeAndAddSmartStyleDeltaMapToClosedSurfaceContainer:(__IOSurface *)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 encodingScheme:(int)a5 stillImageSettings:(id)a6 processingFlags:(unsigned int)a7
{
  v7 = *&a7;
  v9 = *&a5;
  v13 = [(BWPhotoEncoderController *)self _decompressSmartStylePhotoSurface:?];
  if (v13 || (v13 = [(BWPhotoEncoderController *)self _updateSmartStyleDeltaMapForSampleBufferIfNeeded:a4 decompressedStyledPixelBuffer:self->_smartStyleDecompressedStyledPixelBuffer stillImageSettings:a6 encodingScheme:v9 processingFlags:v7]) != 0)
  {
    v18 = v13;
    v31 = 0;
    v30 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  }

  else
  {
    v14 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:v9];
    if (!v14)
    {
      v31 = 0;
      v30 = OS_LOG_TYPE_DEFAULT;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v18 = 0;
      goto LABEL_6;
    }

    v15 = v14;
    v16 = BWPhotoEncoderContainerFormatForEncodingScheme(v9);
    v28[0] = *MEMORY[0x1E6991870];
    v17 = [MEMORY[0x1E696AD98] numberWithInt:v16];
    v28[1] = *MEMORY[0x1E6991860];
    v29[0] = v17;
    v29[1] = &unk_1F2246570;
    v18 = [v15 openExistingContainer:a3 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v29, v28, 2)}];
    if (!v18)
    {
      [(BWPhotoEncoderController *)self _primaryOutputAspectRatioForSettings:a6];
      [(BWPhotoEncoderController *)self _addSmartStyleDeltaMapForEncodingScheme:v9 sampleBuffer:a4 stillImageSettings:a6 primaryOutputAspectRatio:?];
      goto LABEL_6;
    }

    v31 = 0;
    v30 = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v26 = v31;
    if (os_log_type_enabled(v25, v30))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFE;
    }

    if (v27)
    {
      _os_log_send_and_compose_impl();
    }
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_6:
  if (dword_1EB58E320)
  {
    v31 = 0;
    v30 = OS_LOG_TYPE_DEFAULT;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v20 = v31;
    if (os_log_type_enabled(v19, v30))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFE;
    }

    if (v21)
    {
      BWPhotoEncoderStringFromEncodingScheme(v9);
      [objc_msgSend(a6 "requestedSettings")];
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v18;
}

- (CGImageMetadata)_newAuxiliaryImagePropertiesFromSemanticMatteSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v4 = CMGetAttachment(a3, *off_1E798D2E0, 0);
  if (!v4)
  {
    [BWPhotoEncoderController _newAuxiliaryImagePropertiesFromSemanticMatteSampleBuffer:];
    return 0;
  }

  v5 = v4;
  Mutable = CGImageMetadataCreateMutable();
  v7 = Mutable;
  if (!Mutable)
  {
    [BWPhotoEncoderController _newAuxiliaryImagePropertiesFromSemanticMatteSampleBuffer:];
    return v7;
  }

  v8 = *off_1E798D300;
  v9 = *off_1E798D308;
  err = 0;
  if (!CGImageMetadataRegisterNamespaceForPrefix(Mutable, v8, v9, &err))
  {
LABEL_9:
    CFRelease(v7);
    return 0;
  }

  v10 = [objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798D318), "intValue"}];
  if (-[BWPhotoEncoderController _addValue:toAuxiliaryImageProperties:namespace:prefix:key:](self, "_addValue:toAuxiliaryImageProperties:namespace:prefix:key:", [MEMORY[0x1E696AD98] numberWithInt:v10], v7, v8, v9, *off_1E798D310))
  {
    [BWPhotoEncoderController _newAuxiliaryImagePropertiesFromSemanticMatteSampleBuffer:];
    goto LABEL_9;
  }

  return v7;
}

- (int)_generatePhotoSurfaceFromEncodedImageBuffer:(opaqueCMSampleBuffer *)a3 photoSurfaceOut:(__IOSurface *)a4 photoSurfaceSizeOut:(unint64_t *)a5
{
  blockBufferOut = 0;
  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  if (a4 && DataBuffer)
  {
    v8 = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], DataBuffer, *MEMORY[0x1E695E480], 0, 0, 0, 0, &blockBufferOut);
    if (v8)
    {
      LODWORD(v11) = v8;
      [BWPhotoEncoderController _generatePhotoSurfaceFromEncodedImageBuffer:photoSurfaceOut:photoSurfaceSizeOut:];
    }

    else
    {
      totalLengthOut = 0;
      dataPointerOut = 0;
      DataPointer = CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, &totalLengthOut, &dataPointerOut);
      if (DataPointer)
      {
        LODWORD(v11) = DataPointer;
        [BWPhotoEncoderController _generatePhotoSurfaceFromEncodedImageBuffer:photoSurfaceOut:photoSurfaceSizeOut:];
      }

      else
      {
        v15 = *MEMORY[0x1E696CE30];
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:totalLengthOut];
        v10 = IOSurfaceCreate([MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1]);
        v11 = v10;
        if (v10)
        {
          BaseAddress = IOSurfaceGetBaseAddress(v10);
          memcpy(BaseAddress, dataPointerOut, totalLengthOut);
          v13 = totalLengthOut;
          *a4 = v11;
          LODWORD(v11) = 0;
          if (a5)
          {
            *a5 = v13;
          }
        }

        else
        {
          [BWPhotoEncoderController _generatePhotoSurfaceFromEncodedImageBuffer:photoSurfaceOut:photoSurfaceSizeOut:];
        }
      }
    }
  }

  else
  {
    [BWPhotoEncoderController _generatePhotoSurfaceFromEncodedImageBuffer:photoSurfaceOut:photoSurfaceSizeOut:];
    LODWORD(v11) = -12780;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v11;
}

- (int)_generatePreviewForSampleBuffer:(opaqueCMSampleBuffer *)a3 requestedStillImageCaptureSettings:(id)a4 cropRect:(CGRect)a5 previewPixelBuffer:(__CVBuffer *)a6
{
  if (!self->_previewPixelConverter)
  {
    [BWPhotoEncoderController _generatePreviewForSampleBuffer:requestedStillImageCaptureSettings:cropRect:previewPixelBuffer:];
    return -12786;
  }

  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (!ImageBuffer)
  {
    [BWPhotoEncoderController _generatePreviewForSampleBuffer:requestedStillImageCaptureSettings:cropRect:previewPixelBuffer:];
    return -12780;
  }

  v14 = ImageBuffer;
  PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
  v16 = CVPixelBufferGetWidth(v14);
  v17 = CVPixelBufferGetHeight(v14);
  v26 = [a4 previewWidth];
  v18 = [a4 previewHeight];
  v19 = [a4 payloadType];
  if (v19 >= 2)
  {
    [BWPhotoEncoderController _generatePreviewForSampleBuffer:requestedStillImageCaptureSettings:cropRect:previewPixelBuffer:];
    return -12780;
  }

  v20 = v19;
  v25 = a6;
  if (v19)
  {
    v21 = 0;
  }

  else if ([a4 bracketType])
  {
    v21 = [a4 bracketImageCount];
  }

  else
  {
    v21 = 1;
  }

  v22 = -[FigCapturePixelConverter updateOutputPixelFormat:dimensions:poolCapacity:colorSpaceProperties:](self->_previewPixelConverter, "updateOutputPixelFormat:dimensions:poolCapacity:colorSpaceProperties:", [a4 previewFormat], v26 | (v18 << 32), v21, -[BWPhotoEncoderController _getColorSpacePropertiesForSourcePixelFormat:sourceWidth:sourceHeight:destinationPixelFormat:](self, "_getColorSpacePropertiesForSourcePixelFormat:sourceWidth:sourceHeight:destinationPixelFormat:", PixelFormatType, v16, v17, objc_msgSend(a4, "previewFormat")));
  if (v22)
  {
    v23 = v22;
    [BWPhotoEncoderController _generatePreviewForSampleBuffer:requestedStillImageCaptureSettings:cropRect:previewPixelBuffer:];
  }

  else
  {
    v27 = 0;
    v23 = [(FigCapturePixelConverter *)self->_previewPixelConverter convertPixelBuffer:v14 cropRect:v20 == 0 allocateOutputFromBufferPool:&v27 outputPixelBuffer:x, y, width, height];
    if (v23)
    {
      [BWPhotoEncoderController _generatePreviewForSampleBuffer:requestedStillImageCaptureSettings:cropRect:previewPixelBuffer:];
    }

    else
    {
      *v25 = v27;
    }
  }

  return v23;
}

- (int)_getColorSpacePropertiesForSourcePixelFormat:(unsigned int)a3 sourceWidth:(int)a4 sourceHeight:(int)a5 destinationPixelFormat:(unsigned int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v9 = *&a3;
  v10 = [-[NSDictionary objectForKeyedSubscript:](self->_resolvedVideoFormatsByAttachedMediaKey objectForKeyedSubscript:{@"PrimaryFormat", "colorSpaceProperties"}];
  if (!a4 || !v7)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(7, v12, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotoEncoderController.m", 5540, @"LastShownDate:BWPhotoEncoderController.m:5540", @"LastShownBuild:BWPhotoEncoderController.m:5540", 0);
    free(v12);
  }

  if ((v10 & 0xFFFFFFFD) == 5)
  {
    v13 = 5;
  }

  else
  {
    v13 = 0;
  }

  if ((v10 - 3) < 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  return [BWVideoFormat colorSpacePropertiesWithSourceColorSpace:v14 sourcePixelFormat:v9 sourceDimensions:a4 | (v7 << 32) requestedPixelFormat:v6];
}

- (void)_waitForPrewarmingQueueToComplete
{
  if (self->_prewarmQueue)
  {
    if (!_FigIsNotCurrentDispatchQueue())
    {
      [BWPhotoEncoderController _waitForPrewarmingQueueToComplete];
    }

    prewarmQueue = self->_prewarmQueue;

    dispatch_sync(prewarmQueue, &__block_literal_global_617_0);
  }
}

- (void)_waitForPiecemealEncodingGroupToComplete
{
  encodingGroup = self->_encodingGroup;
  if (encodingGroup)
  {
    dispatch_group_wait(encodingGroup, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)_waitForPiecemealEncodingQueueToComplete
{
  if (self->_encodingQueue)
  {
    if (!_FigIsNotCurrentDispatchQueue())
    {
      [BWPhotoEncoderController _waitForPiecemealEncodingQueueToComplete];
    }

    encodingQueue = self->_encodingQueue;

    dispatch_sync(encodingQueue, &__block_literal_global_620);
  }
}

- (void)_waitForPreviewGenerationGroupToComplete
{
  previewGenerationGroup = self->_previewGenerationGroup;
  if (previewGenerationGroup)
  {
    dispatch_group_wait(previewGenerationGroup, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)_waitForPreviewGenerationQueueToComplete
{
  if (!_FigIsNotCurrentDispatchQueue())
  {
    [BWPhotoEncoderController _waitForPreviewGenerationQueueToComplete];
  }

  previewGenerationQueue = self->_previewGenerationQueue;

  dispatch_sync(previewGenerationQueue, &__block_literal_global_623);
}

- (id)inputInferenceVideoFormatForAttachedMediaKey:(id)a3
{
  result = self->_inferenceInputVideoFormat;
  if (!result)
  {
    v5 = [(BWVideoFormatRequirements *)[BWInferenceVideoFormatRequirements alloc] initWithPixelBufferAttributes:[(BWVideoFormat *)[(FigCapturePixelConverter *)self->_previewPixelConverter outputFormat] pixelBufferAttributes]];
    [(BWInferenceVideoFormatRequirements *)v5 setIncludesInvalidContent:0];
    v6 = v5;
    result = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1]);
    self->_inferenceInputVideoFormat = result;
  }

  return result;
}

- (void)inputReceivedNewInputData:(id)a3
{
  if (-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self, "currentRequest"), "input") == a3 && ([a3 receivedAllFramesInSingleContainer] & 1) == 0)
  {
    [(BWPhotoEncoderController *)self _processSbuf];
  }

  [(BWStillImageProcessorController *)self currentRequestChanged];
}

void __125__BWPhotoEncoderController_inputReceivedSbufForPiecemealEncoding_sbuf_attachedMediaKey_primaryImageMetadata_processingFlags___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, __int16 a34, char a35, os_log_type_t a36, unsigned int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  OUTLINED_FUNCTION_59_0();
  a48 = v49;
  a49 = v50;
  v52 = v51;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Receiving sbuf media {%@}"];
  v53 = *(v52 + 40);
  if (v53 == [objc_msgSend(*(v52 + 48) "currentRequest")])
  {
    if (dword_1EB58E320)
    {
      v54 = OUTLINED_FUNCTION_32_13();
      v55 = a37;
      if (os_log_type_enabled(v54, a36))
      {
        v56 = v55;
      }

      else
      {
        v56 = v55 & 0xFFFFFFFE;
      }

      if (v56)
      {
        [objc_msgSend(objc_msgSend(*(v52 + 48) "currentRequest")];
        BWStillImageSampleBufferToDisplayString(*(v52 + 64));
        OUTLINED_FUNCTION_47_13();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v57 = *(v52 + 48);
    if (v57[192] == 1)
    {
      [v57 _waitForPrewarmingQueueToComplete];
      if (![objc_msgSend(*(v52 + 48) "currentRequest")])
      {
        v58 = [objc_msgSend(objc_msgSend(*(v52 + 48) "currentRequest")];
        v59 = BWPhotoEncoderResolveEncodingSchemeForRequestedSettings([v58 requestedSettings]);
        v60 = [*(v52 + 40) reservedPrimaryImageHandle];
        a18 = v60;
        if ([*(v52 + 32) isEqualToString:@"PrimaryFormat"])
        {
          [*(v52 + 48) _encodePrimarySbuf:*(v52 + 64) metadata:*(v52 + 56) processingFlags:*(v52 + 72) primaryImageHandleInOut:&a18];
        }

        else
        {
          if (v60 != -1)
          {
LABEL_16:
            v61 = [*(v52 + 48) _newAuxImageEncodingTriggerSbufForSettings:v58 metadata:*(v52 + 56)];
            if (v61)
            {
              v62 = v61;
              BWSampleBufferSetAttachedMedia(v61, *(v52 + 32), *(v52 + 64));
              [*(v52 + 48) _addOrPrewarmAuxImagesIfNeededForEncodingScheme:v59 sampleBuffer:v62 metadata:*(v52 + 56) stillImageSettings:v58 processingFlags:*(v52 + 72) parentImageHandle:a18];
              CFRelease(v62);
            }

            goto LABEL_18;
          }

          [*(v52 + 48) _prewarmAndReserveMainImageHandleForEncodingScheme:v59 prewarmingMetadata:*(v52 + 56) stillImageSettings:v58 reservedPrimaryImageHandleOut:&a18];
        }

        if (a18 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      if (dword_1EB58E320)
      {
        v64 = OUTLINED_FUNCTION_32_13();
        v65 = a37;
        if (os_log_type_enabled(v64, a36))
        {
          v66 = v65;
        }

        else
        {
          v66 = v65 & 0xFFFFFFFE;
        }

        if (v66)
        {
          OUTLINED_FUNCTION_47_13();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

LABEL_18:
  v63 = *(v52 + 64);
  if (v63)
  {
    CFRelease(v63);
  }

  OUTLINED_FUNCTION_58_0();
}

- (int)prepare
{
  v3 = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] stillImageSettings];
  v4 = [(BWStillImageSettings *)v3 requestedSettings];
  if (![(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] sbufToProcess]&& self->_allowHEIFPrewarming && (BWPhotoEncoderResolveEncodingSchemeForRequestedSettings(v4) == 2 || BWPhotoEncoderResolveEncodingSchemeForCompressedPhotoWithLinDNG(v4) == 2))
  {
    [(BWPhotoEncoderController *)self _waitForPiecemealEncodingGroupToComplete];
    prewarmQueue = self->_prewarmQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__BWPhotoEncoderController_prepare__block_invoke;
    block[3] = &unk_1E7997358;
    v8 = 2;
    block[4] = self;
    block[5] = v3;
    dispatch_async(prewarmQueue, block);
  }

  return 0;
}

void __35__BWPhotoEncoderController_prepare__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_59_0();
  a41 = v42;
  a42 = v43;
  v45 = v44;
  [*(v44 + 32) _encoderManagerForEncodingScheme:*(v44 + 48)];
  if ([*(v45 + 32) _postponeSelectResourceAllocations] && objc_msgSend(*(v45 + 32), "_ensureSetupForPostponedResources"))
  {
    goto LABEL_16;
  }

  v46 = [objc_msgSend(objc_msgSend(*(v45 + 32) "currentRequest")];
  v47 = [objc_msgSend(objc_msgSend(*(v45 + 32) "currentRequest")];
  v48 = [objc_msgSend(objc_msgSend(*(v45 + 32) "currentRequest")];
  a30 = v48;
  if (-[os_unfair_lock_s containsObject:](-[BWPhotoEncoderControllerInput stashedAttachedMediaKeys]([objc_msgSend(*(v45 + 32) "currentRequest")]), "containsObject:", @"PrimaryFormat"))
  {
    [*(v45 + 32) _encodePrimarySbuf:-[BWPhotoEncoderControllerInput stashedSampleBufferForAttachedMediaKey:](objc_msgSend(objc_msgSend(*(v45 + 32) metadata:"currentRequest") processingFlags:"input") primaryImageHandleInOut:{@"PrimaryFormat", v46, v47, &a30}];
LABEL_6:
    if (a30 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  if (v48 == -1)
  {
    [*(v45 + 32) _prewarmAndReserveMainImageHandleForEncodingScheme:*(v45 + 48) prewarmingMetadata:v46 stillImageSettings:*(v45 + 40) reservedPrimaryImageHandleOut:&a30];
    goto LABEL_6;
  }

LABEL_7:
  v49 = [*(v45 + 32) _newAuxImageEncodingTriggerSbufForSettings:*(v45 + 40) metadata:v46];
  if (v49)
  {
    v50 = v49;
    a27 = 0u;
    a28 = 0u;
    a25 = 0u;
    a26 = 0u;
    v51 = -[BWPhotoEncoderControllerInput stashedAttachedMediaKeys]([objc_msgSend(*(v45 + 32) "currentRequest")]);
    v52 = [(os_unfair_lock_s *)v51 countByEnumeratingWithState:&a25 objects:&a9 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *a26;
      do
      {
        v55 = 0;
        do
        {
          if (*a26 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&a25 + 1) + 8 * v55);
          v57 = -[BWPhotoEncoderControllerInput stashedSampleBufferForAttachedMediaKey:]([objc_msgSend(*(v45 + 32) "currentRequest")], v56);
          BWSampleBufferSetAttachedMedia(v50, v56, v57);
          ++v55;
        }

        while (v53 != v55);
        v53 = [(os_unfair_lock_s *)v51 countByEnumeratingWithState:&a25 objects:&a9 count:16];
      }

      while (v53);
    }

    -[BWPhotoEncoderControllerInput releaseStashedAttachedMediaSampleBuffers]([objc_msgSend(*(v45 + 32) "currentRequest")]);
    [*(v45 + 32) _addOrPrewarmAuxImagesIfNeededForEncodingScheme:*(v45 + 48) sampleBuffer:v50 metadata:v46 stillImageSettings:*(v45 + 40) processingFlags:v47 parentImageHandle:a30];
    CFRelease(v50);
  }

LABEL_16:
  OUTLINED_FUNCTION_58_0();
}

- (void)_addOrPrewarmAuxImagesIfNeededForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 metadata:(id)a5 stillImageSettings:(id)a6 processingFlags:(unsigned int)a7 parentImageHandle:(int64_t)a8
{
  HIDWORD(v55) = a3;
  if ((a7 & 0x40) == 0 || ![(BWPhotoEncoderControllerConfiguration *)self->_configuration portraitRenderQuality])
  {
    v12 = BWIsDeferredPhotoProxyImage(a7);
    v13 = [MEMORY[0x1E695DF70] array];
    v115[0] = 0;
    v113 = 0;
    v114 = 0;
    v14 = BWPhotoEncoderThumbnailEnabled(SHIDWORD(v55), [a6 requestedSettings], v115, &v114, &v113);
    AttachedMedia = BWSampleBufferGetAttachedMedia(a4, 0x1F217BF50);
    [(BWPhotoEncoderController *)self mainImageDownscalingFactorForAttachedMediaKey:0x1F217BF50 attachedMediaMetadata:CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0)];
    if (v16 != 0.0 && v14 & 1 | !BWPhotoEncoderIsLinDNGEncodingScheme(SHIDWORD(v55)))
    {
      [v13 addObject:0x1F217BF50];
    }

    if ([(BWPhotoEncoderController *)self _depthEncodingNeededForSettings:a6 deferredPhotoProxy:v12])
    {
      [v13 addObject:@"Depth"];
    }

    v17 = (a7 >> 3) & 1;
    v18 = BWSmartStylePersonMasksValidHint(a5);
    if ([OUTLINED_FUNCTION_33_17() _personMaskEncodingNeededForSettings:? encodingScheme:? deferredPhotoProxy:? adjustedPhoto:? personMaskValidHint:?])
    {
      [v13 addObject:0x1F21AABB0];
    }

    v19 = OUTLINED_FUNCTION_33_17();
    *&v20 = v18;
    v21 = [v19 _semanticSegmentationMatteMediaKeysEncodingNeededForSettings:v20 encodingScheme:? deferredPhotoProxy:? adjustedPhoto:? personMaskValidHint:?];
    if ([v21 count])
    {
      [v13 addObjectsFromArray:v21];
    }

    if ([(BWPhotoEncoderController *)self _smartStyleReversibilityDataNeededForSettings:a6 adjustedPhoto:v17 deferredPhotoProxy:v12])
    {
      [v13 addObject:0x1F21AAF70];
    }

    if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] deltaMapIsValid])
    {
      [(BWPhotoEncoderController *)self _primaryOutputAspectRatioForSettings:a6];
      [(BWPhotoEncoderController *)self _addSmartStyleDeltaMapForEncodingScheme:HIDWORD(v55) sampleBuffer:a4 stillImageSettings:a6 primaryOutputAspectRatio:?];
    }

    if ([objc_msgSend(a6 "requestedSettings")] && BWIsConstantColorPrimaryFrame(a4))
    {
      [v13 addObject:0x1F21AB170];
    }

    v22 = [MEMORY[0x1E695DF70] array];
    v23 = [MEMORY[0x1E695DF70] array];
    v24 = [MEMORY[0x1E695DF70] array];
    v32 = OUTLINED_FUNCTION_51_14(v24, v25, v26, v27, v28, v29, v30, v31, v48, v50, v24, a8, v55, a6, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111);
    if (v32)
    {
      v33 = v32;
      v34 = MEMORY[0];
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (MEMORY[0] != v34)
          {
            objc_enumerationMutation(v13);
          }

          v36 = *(8 * i);
          v37 = [-[BWStillImageProcessorControllerInput encodedAttachedMediaKeys](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self "currentRequest")];
          v38 = v22;
          if ((v37 & 1) == 0)
          {
            v46 = [(BWPhotoEncoderController *)self _addOrPrewarmForAttachedMediaKey:v36 encodingScheme:HIDWORD(v56) sampleBuffer:a4 metadata:a5 stillImageSettings:v58 parentImageHandle:v54];
            v38 = v23;
            if (v46 != 2)
            {
              if (v46 != 1)
              {
                continue;
              }

              v38 = v52;
            }
          }

          v38 = [v38 addObject:v36];
        }

        v33 = OUTLINED_FUNCTION_51_14(v38, v39, v40, v41, v42, v43, v44, v45, v49, v51, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112);
      }

      while (v33);
    }

    if (dword_1EB58E320)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (int)_ensureSetupForPostponedResources
{
  if (self->_smartStyleProcessor || ![(BWPhotoEncoderControllerConfiguration *)self->_configuration smartStyleReversibilityEnabled]|| [(BWPhotoEncoderControllerConfiguration *)self->_configuration smartStyleRenderingVersion]< 1)
  {
    return 0;
  }

  v3 = [(BWPhotoEncoderController *)self _loadCreateAndSetupSmartStyleRenderingProcessor];
  if (v3)
  {
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3();
  }

  return v3;
}

- (void)_handlePrewarmForMainImageForEncodingScheme:(int)a3 prewarmingMetadata:(id)a4 stillImageSettings:(id)a5 reservedPrimaryImageHandleOut:(int64_t *)a6
{
  v8 = *&a3;
  formatDescriptionOut = 0;
  v57 = 0;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v55 = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] reservedPrimaryImageHandle];
  v49 = v8;
  v47 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:v8];
  if (v47)
  {
    v11 = [a5 requestedSettings];
    v12 = [v11 outputWidth];
    v13 = [v11 outputHeight];
    codecType = [-[NSDictionary objectForKeyedSubscript:](self->_resolvedVideoFormatsByAttachedMediaKey objectForKeyedSubscript:{@"PrimaryFormat", "pixelFormat"}];
    v14 = [-[NSDictionary objectForKeyedSubscript:](self->_resolvedVideoFormatsByAttachedMediaKey objectForKeyedSubscript:{@"PrimaryFormat", "colorSpaceProperties"}];
    if (!v14)
    {
      v14 = -[BWPhotoEncoderController _getColorSpacePropertiesForSourcePixelFormat:sourceWidth:sourceHeight:destinationPixelFormat:](self, "_getColorSpacePropertiesForSourcePixelFormat:sourceWidth:sourceHeight:destinationPixelFormat:", codecType, [v11 outputWidth], objc_msgSend(v11, "outputHeight"), codecType);
    }

    v15 = [BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:v14];
    v16 = v12 | (v13 << 32);
    -[BWPhotoEncoderController _cropRectForRequestedSettings:inputDimensions:outputDimensions:metadata:processingFlags:](self, "_cropRectForRequestedSettings:inputDimensions:outputDimensions:metadata:processingFlags:", v11, v16, [v11 outputDimensions], a4, -[BWStillImageProcessorControllerInput processingFlagsForPrewarming](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self, "currentRequest"), "input"), "processingFlagsForPrewarming"));
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] requiresPhotosAdjustment])
    {
      v58.origin.x = v18;
      v58.origin.y = v20;
      v58.size.width = v22;
      v58.size.height = v24;
      if (!CGRectIsEmpty(v58))
      {
        LODWORD(v13) = v24;
        v12 = v22;
      }
    }

    v25 = *MEMORY[0x1E695E480];
    if (!CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], codecType, v12, v13, v15, &formatDescriptionOut))
    {
      v45 = *MEMORY[0x1E69918F0];
      [v10 setObject:formatDescriptionOut forKeyedSubscript:?];
      v26 = BWPhotoEncoderCodecTypeForEncodingScheme(v49);
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v26];
      v44 = *MEMORY[0x1E69918D0];
      [v10 setObject:v27 forKeyedSubscript:?];
      if ([(BWPhotoEncoderControllerConfiguration *)self->_configuration usesHighEncodingPriority])
      {
        [v10 setObject:&unk_1F2246540 forKeyedSubscript:*MEMORY[0x1E6991960]];
      }

      v28 = a6;
      v29 = [objc_msgSend(a5 "captureSettings")];
      v30 = v29;
      if (a4 || v29)
      {
        if (v29)
        {
          [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991958]];
        }

        [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991988]];
      }

      v46 = v30;
      [(BWPhotoEncoderController *)self _addOrientationOptionsToDictionary:v10 encodingScheme:v49 metadata:a4 allowSensorOrientationRotation:1];
      v31 = [a5 captureSettings];
      BYTE1(v42) = 1;
      LOBYTE(v42) = self->_heifUseTiling;
      [BWPhotoEncoderController _addQualityOptionsToDictionary:"_addQualityOptionsToDictionary:codecType:pixelBuffer:imageDimensions:metadata:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:enableHEIFTiling:enableHEIFOrientation:auxImageType:" codecType:v10 pixelBuffer:v26 imageDimensions:0 metadata:v16 requestedStillImageCaptureSettings:a4 resolvedStillImageCaptureSettings:v11 enableHEIFTiling:v31 enableHEIFOrientation:v42 auxImageType:?];
      v54 = 0;
      v52 = 0;
      v53 = 0;
      a6 = v28;
      if (BWPhotoEncoderThumbnailEnabled(v49, v11, &v54, &v53, &v52))
      {
        if (([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] requiresPhotosAdjustment]& 1) == 0)
        {
          v32 = FigCaptureUncompressedPixelFormatForPixelFormat(codecType);
          if (!CMVideoFormatDescriptionCreate(v25, v32, v53, SHIDWORD(v53), v15, &v57))
          {
            v33 = [MEMORY[0x1E695DF90] dictionary];
            [v33 setObject:v57 forKeyedSubscript:v45];
            [v33 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v54), v44}];
            if ([(BWPhotoEncoderControllerConfiguration *)self->_configuration usesHighEncodingPriority])
            {
              [v33 setObject:&unk_1F2246540 forKeyedSubscript:*MEMORY[0x1E6991960]];
            }

            v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BWStillImageProcessorControllerConfiguration figThreadPriority](self->_configuration, "figThreadPriority")}];
            [v33 setObject:v34 forKeyedSubscript:*MEMORY[0x1E69919A0]];
            v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v52];
            [v33 setObject:v35 forKeyedSubscript:*MEMORY[0x1E6991940]];
            v36 = v54;
            v37 = [a5 captureSettings];
            LOWORD(v43) = 0;
            [BWPhotoEncoderController _addQualityOptionsToDictionary:"_addQualityOptionsToDictionary:codecType:pixelBuffer:imageDimensions:metadata:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:enableHEIFTiling:enableHEIFOrientation:auxImageType:" codecType:v33 pixelBuffer:v36 imageDimensions:0 metadata:v53 requestedStillImageCaptureSettings:0 resolvedStillImageCaptureSettings:v11 enableHEIFTiling:v37 enableHEIFOrientation:v43 auxImageType:?];
            [v10 setObject:v33 forKeyedSubscript:*MEMORY[0x1E6991928]];
          }
        }
      }

      if (![v47 addMainImage:0 metadata:0 options:v10 imageHandleOut:&v55])
      {
        [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] setReservedPrimaryImageHandle:v55];
        [-[NSDictionary objectForKeyedSubscript:](-[BWPhotoEncoderControllerConfiguration attachedMediaConfigurationByAttachedMediaKey](self->_configuration "attachedMediaConfigurationByAttachedMediaKey")];
        v39 = v38;
        v40 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters gainMapVersion];
        if (v39 != 0.0 && v46 && v40 >= 2)
        {
          v51 = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] toneMapAlternateGroupHandle];
          OUTLINED_FUNCTION_17_14();
          [v41 addAlternateImageWithDerivedImageHandles:? options:? parentImageHandle:? alternateGroupHandleInOut:?];
          [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] setToneMapAlternateGroupHandle:v51];
        }
      }
    }
  }

  if (a6)
  {
    *a6 = v55;
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }
}

- (void)_handlePrewarmForDepthForEncodingScheme:(int)a3 requestedStillImageCaptureSettings:(id)a4 prewarmingMetadata:(id)a5
{
  OUTLINED_FUNCTION_27_18();
  v24 = v5;
  v25 = v9;
  formatDescriptionOut = 0;
  if (v10 == 2)
  {
    v11 = v8;
    v12 = v7;
    v13 = v6;
    if ([v6 _encoderManagerForEncodingScheme:?])
    {
      if ([v12 depthDataDeliveryEnabled])
      {
        if ([v12 embedsDepthDataInImage])
        {
          v14 = [v13[21] objectForKeyedSubscript:@"Depth"];
          if (BWPhotoEncoderAuxImageTypeForDepthPixelFormat([v14 pixelFormat]))
          {
            v15 = [MEMORY[0x1E695DF90] dictionary];
            if (([v12 depthDataFiltered] & 1) == 0)
            {
              if (FigDepthFormatIs16Bit([v14 pixelFormat]))
              {
                v16 = [MEMORY[0x1E696AD98] numberWithShort:0x7FFFLL];
              }

              else
              {
                v16 = [MEMORY[0x1E696AD98] numberWithInt:2143289344];
              }

              [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69918B8]];
            }

            v17 = [v14 width];
            v18 = [v14 height];
            v19 = CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], [v14 pixelFormat], v17, v18, 0, &formatDescriptionOut);
            v20 = formatDescriptionOut;
            if (!v19)
            {
              [v15 setObject:formatDescriptionOut forKeyedSubscript:*MEMORY[0x1E69918F0]];
              [v13 _addOrientationOptionsToDictionary:v15 encodingScheme:2 metadata:v11 allowSensorOrientationRotation:1];
              if ([v13[8] usesHighEncodingPriority])
              {
                [v15 setObject:&unk_1F2246540 forKeyedSubscript:*MEMORY[0x1E6991960]];
              }

              v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v13[8], "figThreadPriority")}];
              [v15 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69919A0]];
              OUTLINED_FUNCTION_4_3();
              OUTLINED_FUNCTION_24_21();
              [v22 addAuxImage:? type:? auxImageMetadata:? options:? parentImageHandle:? auxImageHandleOut:?];
              v20 = formatDescriptionOut;
            }

            if (v20)
            {
              CFRelease(v20);
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_25_20();
}

- (void)_handlePrewarmForGainMapForEncodingScheme:(int)a3 requestedStillImageCaptureSettings:(id)a4 prewarmingMetadata:(id)a5
{
  formatDescriptionOut = 0;
  if (a3 == 2 && [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:?])
  {
    v8 = [(NSDictionary *)self->_resolvedVideoFormatsByAttachedMediaKey objectForKeyedSubscript:0x1F217BF50];
    [-[NSDictionary objectForKeyedSubscript:](-[BWPhotoEncoderControllerConfiguration attachedMediaConfigurationByAttachedMediaKey](self->_configuration "attachedMediaConfigurationByAttachedMediaKey")];
    v9 = OUTLINED_FUNCTION_92([a4 outputWidth]);
    v10 = OUTLINED_FUNCTION_92([a4 outputHeight]);
    v11 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{BWPhotoEncoderEncodingOptionsForAuxiliaryImage(v9, v10, objc_msgSend(v8, "pixelBufferAttributes"), -[BWPhotoEncoderControllerConfiguration usesHighEncodingPriority](self->_configuration, "usesHighEncodingPriority"), -[BWStillImageProcessorControllerConfiguration figThreadPriority](self->_configuration, "figThreadPriority"))}];
    [(BWPhotoEncoderController *)self _addOrientationOptionsToDictionary:v11 encodingScheme:2 metadata:a5 allowSensorOrientationRotation:1];
    if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] requiresPhotosAdjustment])
    {
      v16 = *MEMORY[0x1E6965F30];
      v17 = *MEMORY[0x1E6965F88];
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    else
    {
      v12 = 0;
    }

    v13 = CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], [v8 pixelFormat], v9, v10, v12, &formatDescriptionOut);
    v14 = formatDescriptionOut;
    if (!v13)
    {
      [v11 setObject:formatDescriptionOut forKeyedSubscript:*MEMORY[0x1E69918F0]];
      BWPhotoEncoderAddGainMapQualityControllerParametersToEncodingOptions(v11);
      OUTLINED_FUNCTION_24_21();
      [v15 addAuxImage:? type:? auxImageMetadata:? options:? parentImageHandle:? auxImageHandleOut:?];
      v14 = formatDescriptionOut;
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }
}

- (void)_handlePrewarmForPortraitEffectsMatteForEncodingScheme:(int)a3 requestedStillImageCaptureSettings:(id)a4
{
  formatDescriptionOut = 0;
  if (a3 == 2 && [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:?])
  {
    v6 = [(NSDictionary *)self->_resolvedVideoFormatsByAttachedMediaKey objectForKeyedSubscript:0x1F21AABB0];
    [-[NSDictionary objectForKeyedSubscript:](-[BWPhotoEncoderControllerConfiguration attachedMediaConfigurationByAttachedMediaKey](self->_configuration "attachedMediaConfigurationByAttachedMediaKey")];
    v7 = OUTLINED_FUNCTION_92([a4 outputWidth]);
    v8 = OUTLINED_FUNCTION_92([a4 outputHeight]);
    v9 = MEMORY[0x1E695DF90];
    [v6 pixelBufferAttributes];
    [(BWPhotoEncoderControllerConfiguration *)self->_configuration usesHighEncodingPriority];
    v10 = [v9 dictionaryWithDictionary:{OUTLINED_FUNCTION_41_14(-[BWStillImageProcessorControllerConfiguration figThreadPriority](self->_configuration, "figThreadPriority"))}];
    v15 = *MEMORY[0x1E6965F30];
    v16 = *MEMORY[0x1E6965F60];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], [v6 pixelFormat], v7, v8, v11, &formatDescriptionOut);
    v13 = formatDescriptionOut;
    if (!v12)
    {
      [v10 setObject:formatDescriptionOut forKeyedSubscript:*MEMORY[0x1E69918F0]];
      OUTLINED_FUNCTION_24_21();
      [v14 addAuxImage:? type:? auxImageMetadata:? options:? parentImageHandle:? auxImageHandleOut:?];
      v13 = formatDescriptionOut;
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }
}

- (void)_handlePrewarmForConstantColorConfidenceMapForEncodingScheme:(int)a3 requestedStillImageCaptureSettings:(id)a4 confidenceMapDimensions:(id)a5
{
  OUTLINED_FUNCTION_27_18();
  v17 = v5;
  v18 = v8;
  formatDescriptionOut = 0;
  if (v9 == 2)
  {
    v10 = v7;
    v11 = v6;
    if ([v6 _encoderManagerForEncodingScheme:?])
    {
      v12 = [v11[21] objectForKeyedSubscript:0x1F21AB170];
      v13 = MEMORY[0x1E695DF90];
      [v12 pixelBufferAttributes];
      [v11[8] usesHighEncodingPriority];
      v14 = [v13 dictionaryWithDictionary:{OUTLINED_FUNCTION_41_14(objc_msgSend(v11[8], "figThreadPriority"))}];
      if (!CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], [v12 pixelFormat], v10, SHIDWORD(v10), 0, &formatDescriptionOut))
      {
        [v14 setObject:formatDescriptionOut forKeyedSubscript:*MEMORY[0x1E69918F0]];
        OUTLINED_FUNCTION_24_21();
        [v15 addAuxImage:? type:? auxImageMetadata:? options:? parentImageHandle:? auxImageHandleOut:?];
      }
    }
  }

  OUTLINED_FUNCTION_25_20();
}

- (void)_prewarmAndReserveMainImageHandleForEncodingScheme:(int)a3 prewarmingMetadata:(id)a4 stillImageSettings:(id)a5 reservedPrimaryImageHandleOut:(int64_t *)a6
{
  v11 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [a5 settingsID];
    OUTLINED_FUNCTION_18_32();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  if (a3 == 2)
  {
    v12 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:2];
    v13 = v12;
    if (v12)
    {
      if (([v12 isContainerOpen] & 1) == 0)
      {
        v14 = *MEMORY[0x1E6991860];
        v18[0] = *MEMORY[0x1E6991870];
        v18[1] = v14;
        v19[0] = &unk_1F2246558;
        v19[1] = &unk_1F2246570;
        v15 = [v13 openContainerWithOptions:objc_msgSend(MEMORY[0x1E695DF20] settingsID:{"dictionaryWithObjects:forKeys:count:", v19, v18, 2), objc_msgSend(objc_msgSend(a5, "requestedSettings"), "settingsID")}];
        if (v15)
        {
          v16 = v15;
          goto LABEL_10;
        }
      }

      [(BWPhotoEncoderController *)self _handlePrewarmForMainImageForEncodingScheme:2 prewarmingMetadata:a4 stillImageSettings:a5 reservedPrimaryImageHandleOut:a6];
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = 0;
LABEL_10:
  if (dword_1EB58E320)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_52_15(os_log_and_send_and_compose_flags_and_os_log_type);
    OUTLINED_FUNCTION_30_14();
    if (v11)
    {
      if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] reservedPrimaryImageHandle]!= -1)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"and reserved main image handle primaryImageHandle:%ld toneMapAlternateGroupHandle %ld ", -[BWStillImageProcessorControllerInput reservedPrimaryImageHandle](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self, "currentRequest"), "input"), "reservedPrimaryImageHandle"), -[BWStillImageProcessorControllerInput toneMapAlternateGroupHandle](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self, "currentRequest"), "input"), "toneMapAlternateGroupHandle")];
      }

      [a5 settingsID];
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = MEMORY[0x1E695FF58];
  }

  if ((v16 || -[BWStillImageProcessorControllerInput reservedPrimaryImageHandle](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self, "currentRequest"), "input"), "reservedPrimaryImageHandle") == -1) && [v13 isContainerOpen])
  {
    [v13 closeContainer];
  }

  if (*v11 == 1)
  {
    [a5 settingsID];
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }
}

- (int)_loadCreateAndSetupSmartStyleRenderingProcessor
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__BWPhotoEncoderController__loadCreateAndSetupSmartStyleRenderingProcessor__block_invoke;
  v5[3] = &unk_1E7991C78;
  v5[4] = self;
  p_smartStyleProcessor = &self->_smartStyleProcessor;
  v3 = BWLoadCreateAndSetupMetalImageBufferProcessor(@"SmartStyle", [(BWPhotoEncoderControllerConfiguration *)self->_configuration smartStyleRenderingVersion], @"CMI", @"SmartStyle", [(BWPhotoEncoderControllerConfiguration *)self->_configuration smartStyleRenderingVersion], &unk_1F22C45C8, 0, 0, 0, v5, &self->_smartStyleProcessor);
  if (!v3)
  {
    [(CMISmartStyleProcessor *)*p_smartStyleProcessor setUseLiveMetalAllocations:1];
    [(CMISmartStyleProcessor *)*p_smartStyleProcessor setShouldFlushCVMTLTextureCacheAfterProcessing:1];
  }

  return v3;
}

- (BOOL)_finalImageExpectingSmartStyleReversibilityDataForDeferredPhotoProxy:(BOOL)a3 settings:(id)a4 adjustedPhoto:(BOOL)a5
{
  if (a3)
  {
    v7 = [(BWPhotoEncoderControllerConfiguration *)self->_configuration smartStyleReversibilityEnabled];
    if (v7)
    {
      LOBYTE(v7) = [objc_msgSend(a4 "requestedSettings")] & !a5;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_performInferenceWithBuffer:(opaqueCMSampleBuffer *)a3
{
  if (a3)
  {
    CFRetain(a3);
    inferenceGroup = self->_inferenceGroup;
    previewGenerationQueue = self->_previewGenerationQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__BWPhotoEncoderController__performInferenceWithBuffer___block_invoke;
    v7[3] = &unk_1E7990178;
    v7[4] = self;
    v7[5] = a3;
    dispatch_group_async(inferenceGroup, previewGenerationQueue, v7);
  }
}

void __56__BWPhotoEncoderController__performInferenceWithBuffer___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 208))
  {
    goto LABEL_5;
  }

  if (![*(v2 + 200) prepareForInputVideoFormat:objc_msgSend(*(v2 + 96) attachedMediaKey:"outputFormat"), @"PrimaryFormat"] && !objc_msgSend(*(*(a1 + 32) + 200), "prepareForInferenceWithFormatProvider:"))
  {
    *(*(a1 + 32) + 208) = 1;
    v2 = *(a1 + 32);
LABEL_5:
    [*(v2 + 200) performInferencesOnSampleBuffer:*(a1 + 40) attachingResultsToSampleBuffer:*(a1 + 40)];
  }

  atomic_store(1u, (*(a1 + 32) + 209));
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

- (int)_desiredOrientationForOrientation:(int)a3 encodingScheme:(int)a4
{
  OUTLINED_FUNCTION_59_0();
  v17 = v5;
  v18 = v8;
  v10 = v9;
  v16[0] = 0;
  v15 = 0;
  if (v7)
  {
    v11 = v6;
    FigCaptureMetadataUtilitiesRotationDegreesAndMirroredFromExifOrientation(v7, v16, &v15);
    v12 = [v11 _exifExtraRotationDegreesForEncodingScheme:v10];
    if (v12)
    {
      v16[0] -= v12;
      FigCaptureMetadataUtilitiesStillImageExifOrientationFromRotationDegreesAndMirrored(v16[0], v15, 0, [objc_msgSend(objc_msgSend(objc_msgSend(v11 "currentRequest")]);
    }
  }

  if (dword_1EB58E320)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_30_14();
    if (v4)
    {
      BWPhotoEncoderStringFromEncodingScheme(v10);
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  OUTLINED_FUNCTION_58_0();
  return result;
}

- (int)_optionsForEncodingScheme:(int)a3 pixelBuffer:(__CVBuffer *)a4 imageDimensions:(id)a5 processingFlags:(unsigned int)a6 metadata:(id)a7 thumbnailOptions:(id)a8 requestedStillImageCaptureSettings:(id)a9 resolvedStillImageCaptureSettings:(id)a10 cropRect:(CGRect)a11 usePixelsOutsideCrop:(BOOL)a12 allowSensorOrientationRotation:(BOOL)a13 containerOptionsOut:(id *)a14 encodingOptionsOut:(id *)a15
{
  OUTLINED_FUNCTION_56_13();
  OUTLINED_FUNCTION_9_7();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v39;
  v27 = v40;
  v35 = [MEMORY[0x1E695DF90] dictionary];
  v29 = [MEMORY[0x1E695DF90] dictionary];
  if ([v26 _encoderManagerForEncodingScheme:v24])
  {
    v41.origin.x = OUTLINED_FUNCTION_3_1();
    if (!CGRectIsEmpty(v41))
    {
      v42.origin.x = OUTLINED_FUNCTION_3_1();
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v42);
      [v29 setObject:DictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E6991998]];
      if (DictionaryRepresentation)
      {
        CFRelease(DictionaryRepresentation);
      }
    }

    if (v37)
    {
      [v29 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69919C0]];
    }

    v31 = BWPhotoEncoderCodecTypeForEncodingScheme(v24);
    [v26 _addQualityOptionsToDictionary:v29 codecType:v31 pixelBuffer:v22 imageDimensions:v20 metadata:v18 requestedStillImageCaptureSettings:v36 resolvedStillImageCaptureSettings:? enableHEIFTiling:? enableHEIFOrientation:? auxImageType:?];
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v31];
    [v29 setObject:v32 forKeyedSubscript:*MEMORY[0x1E69918D0]];
    if ([v26[8] usesHighEncodingPriority])
    {
      [v29 setObject:&unk_1F2246540 forKeyedSubscript:*MEMORY[0x1E6991960]];
    }

    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v26[8], "figThreadPriority")}];
    [v29 setObject:v33 forKeyedSubscript:*MEMORY[0x1E69919A0]];
    [v35 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", BWPhotoEncoderContainerFormatForEncodingScheme(v24)), *MEMORY[0x1E6991870]}];
    [v35 setObject:&unk_1F2246570 forKeyedSubscript:*MEMORY[0x1E6991860]];
    if (v24 == 1)
    {
      [v29 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991938]];
      if (![v36 payloadType])
      {
        [v29 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991910]];
      }
    }

    [v26 _addOrientationOptionsToDictionary:v29 encodingScheme:v24 metadata:v18 allowSensorOrientationRotation:v38];
    [v29 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6991928]];
    v28 = v39;
    v27 = v40;
  }

  if (v28)
  {
    *v28 = v35;
  }

  if (v27)
  {
    *v27 = v29;
  }

  OUTLINED_FUNCTION_57_13();
  return result;
}

- (int)_encodePrimarySbuf:(opaqueCMSampleBuffer *)a3 metadata:(id)a4 processingFlags:(unsigned int)a5 primaryImageHandleInOut:(int64_t *)a6
{
  v6 = *&a5;
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  v12 = CMSampleBufferGetImageBuffer(a3);
  Height = CVPixelBufferGetHeight(v12);
  v14 = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] stillImageSettings];
  v15 = [(BWStillImageSettings *)v14 requestedSettings];
  v34 = BWPhotoEncoderResolveEncodingSchemeForRequestedSettings(v15);
  [(BWPhotoEncoderController *)self _cropRectForRequestedSettings:v15 inputDimensions:Width | (Height << 32) outputDimensions:[(BWPhotoEncoderController *)self _outputDimensionsForSbuf:a3 primaryImageMetadata:a4 sourceDimensions:Width | (Height << 32) requestedStillImageCaptureSettings:v15 isStereoPhotoCapture:[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] isStereoPhotoCapture] isPrimaryFrame:BWPhotoEncoderIsPrimaryFrame(v6)] metadata:a4 processingFlags:v6];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_53_11(v16, v17, v18, v19);
  v39 = 0;
  v20 = OUTLINED_FUNCTION_3();
  if (OUTLINED_FUNCTION_53_11(v20, v21, v22, v23))
  {
    v24 = CMSampleBufferGetImageBuffer(a3);
    pen_clapDimensionsFromPixelBuffer(v24, &v39);
  }

  v38 = 0;
  v36 = 0;
  v37 = 0;
  if (BWPhotoEncoderThumbnailEnabled(v34, v15, &v38, &v37, &v36))
  {
    [(BWStillImageSettings *)v14 captureSettings];
    v31 = v36;
    v25 = OUTLINED_FUNCTION_3();
    [v26 _thumbnailOptionsForImageWithMetadata:v25 encodingScheme:v31 requestedStillImageCaptureSettings:? resolvedStillImageCaptureSettings:? processingFlags:? cropRect:? codecType:? maxPixelSize:?];
  }

  CMSampleBufferGetImageBuffer(a3);
  LOWORD(v33) = 256;
  v32 = [(BWStillImageSettings *)v14 captureSettings];
  v27 = OUTLINED_FUNCTION_3();
  v29 = [v28 _encodePhotoForEncodingScheme:v27 pixelBuffer:v15 imageDimensions:v32 processingFlags:v33 metadata:a6 thumbnailOptions:? requestedStillImageCaptureSettings:? resolvedStillImageCaptureSettings:? cropRect:? usePixelsOutsideCrop:? allowSensorOrientationRotation:? mainImageHandleInOut:?];
  if (!v29)
  {
    [(BWPhotoEncoderControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] releaseStashedSamplebufferForAttachedMediaKey:?];
  }

  return v29;
}

- (int)_encodePhotoForEncodingScheme:(int)a3 pixelBuffer:(__CVBuffer *)a4 imageDimensions:(id)a5 processingFlags:(unsigned int)a6 metadata:(id)a7 thumbnailOptions:(id)a8 requestedStillImageCaptureSettings:(id)a9 resolvedStillImageCaptureSettings:(id)a10 cropRect:(CGRect)a11 usePixelsOutsideCrop:(BOOL)a12 allowSensorOrientationRotation:(BOOL)a13 mainImageHandleInOut:(int64_t *)a14
{
  OUTLINED_FUNCTION_9_7();
  v16 = v15;
  v18 = v17;
  v19 = a14;
  v20 = a9;
  OUTLINED_FUNCTION_16_2();
  if (v21)
  {
    [a9 settingsID];
    OUTLINED_FUNCTION_18_32();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  v112 = 0;
  v113[0] = 0;
  if (a14)
  {
    v22 = *a14;
  }

  else
  {
    v22 = -1;
  }

  v111 = v22;
  if (BWPhotoEncoderIsPrimaryFrame(a6) && [objc_msgSend(objc_msgSend(objc_msgSend(v18 "currentRequest")] && (!objc_msgSend(a9, "rawOutputFormat") || !objc_msgSend(a9, "outputFileType")))
  {
    goto LABEL_81;
  }

  v23 = [v18 _encoderManagerForEncodingScheme:v16];
  if (!v23)
  {
    goto LABEL_81;
  }

  v24 = v23;
  LOWORD(v81) = __PAIR16__(a13, a12);
  v25 = OUTLINED_FUNCTION_3_1();
  v27 = [v26 _optionsForEncodingScheme:v25 pixelBuffer:a9 imageDimensions:a10 processingFlags:v81 metadata:v113 thumbnailOptions:&v112 requestedStillImageCaptureSettings:? resolvedStillImageCaptureSettings:? cropRect:? usePixelsOutsideCrop:? allowSensorOrientationRotation:? containerOptionsOut:? encodingOptionsOut:?];
  if (!v27)
  {
    v28 = [v24 isContainerOpen];
    v29 = v28;
    v30 = 0x1E696A000uLL;
    if (v28 && v22 != -1)
    {
      v31 = [MEMORY[0x1E696AD98] numberWithLong:v22];
      [v112 setObject:v31 forKeyedSubscript:*MEMORY[0x1E6991968]];
LABEL_29:
      if ([objc_msgSend(objc_msgSend(v18 "currentRequest")])
      {
        if (BWPhotoEncoderIsPrimaryFrame(a6))
        {
          [v112 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991958]];
          v88 = 0;
          IsLeftEyeFrameForCurrentRequest = 0;
          v45 = 1;
        }

        else
        {
          IsLeftEyeFrameForCurrentRequest = BWPhotoEncoderIsLeftEyeFrameForCurrentRequest(a7);
          v46 = *off_1E798B540;
          v47 = [a7 objectForKeyedSubscript:*off_1E798B540];
          v48 = *off_1E798A0C0;
          if ([v47 isEqual:*off_1E798A0C0])
          {
            if (IsLeftEyeFrameForCurrentRequest)
            {
              v49 = 1;
            }

            else
            {
              v49 = 2;
            }

            [objc_msgSend(objc_msgSend(v18 "currentRequest")];
          }

          v50 = [a7 objectForKeyedSubscript:v46];
          v51 = *off_1E798A0D0;
          v52 = [v50 isEqual:*off_1E798A0D0];
          v53 = 0.0;
          if (v52)
          {
            v82 = v51;
            v83 = v48;
            v84 = a6;
            v54 = [MEMORY[0x1E695DF90] dictionary];
            v95 = 0u;
            v96 = 0u;
            v97 = 0u;
            v98 = 0u;
            v55 = [v18[8] sensorConfigurationsByPortType];
            v56 = [v55 countByEnumeratingWithState:&v95 objects:v94 count:16];
            if (v56)
            {
              v57 = v56;
              v58 = *v96;
              do
              {
                for (i = 0; i != v57; ++i)
                {
                  if (*v96 != v58)
                  {
                    objc_enumerationMutation(v55);
                  }

                  [v54 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v18[8] forKeyedSubscript:{"sensorConfigurationsByPortType"), "objectForKeyedSubscript:", *(*(&v95 + 1) + 8 * i)), "cameraInfo"), *(*(&v95 + 1) + 8 * i)}];
                }

                v57 = [v55 countByEnumeratingWithState:&v95 objects:v94 count:16];
              }

              while (v57);
            }

            LODWORD(v107) = 0;
            v60 = BWStereoUtilitiesComputeStereoBaseline(v83, v82, v54, &v107);
            if (v60)
            {
              v75 = v60;
              OUTLINED_FUNCTION_1_5();
              FigDebugAssert3();
              goto LABEL_70;
            }

            v61 = *&v107;
            if (IsLeftEyeFrameForCurrentRequest)
            {
              v61 = -*&v107;
            }

            *&v53 = v61 / 1000.0;
            a6 = v84;
            v30 = 0x1E696A000uLL;
          }

          v93[0] = [*(v30 + 3480) numberWithFloat:v53];
          v93[1] = &unk_1F224A900;
          v93[2] = &unk_1F224A900;
          v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:3];
          v63 = [a7 objectForKeyedSubscript:*off_1E798A940];
          if (!v63 || (v64 = [v63 objectForKeyedSubscript:*off_1E798AA18]) == 0)
          {
            OUTLINED_FUNCTION_0();
            FigDebugAssert3();
            v75 = -12783;
            goto LABEL_70;
          }

          v88 = IsLeftEyeFrameForCurrentRequest ^ 1;
          [v64 doubleValue];
          v66 = __tanpi(v65 / 360.0);
          v67 = a5.var0 / (v66 + v66);
          v92[0] = [*(v30 + 3480) numberWithDouble:v67];
          v92[1] = &unk_1F224A900;
          v92[2] = [*(v30 + 3480) numberWithDouble:{vcvtd_n_f64_s32(a5.var0, 1uLL)}];
          v92[3] = &unk_1F224A900;
          v92[4] = [*(v30 + 3480) numberWithDouble:v67];
          v92[5] = [*(v30 + 3480) numberWithDouble:{vcvtd_n_f64_s32(a5.var1, 1uLL)}];
          v92[6] = &unk_1F224A900;
          v92[7] = &unk_1F224A900;
          v92[8] = &unk_1F224A910;
          v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:9];
          [v112 setObject:v62 forKeyedSubscript:*MEMORY[0x1E69918F8]];
          [v112 setObject:&unk_1F22498D0 forKeyedSubscript:*MEMORY[0x1E6991900]];
          [v112 setObject:v68 forKeyedSubscript:*MEMORY[0x1E6991930]];
          v45 = 0;
        }
      }

      else
      {
        v88 = 0;
        IsLeftEyeFrameForCurrentRequest = 0;
        v45 = 0;
      }

      v69 = [*(v30 + 3480) numberWithUnsignedInt:{objc_msgSend(v18[8], "figThreadPriority")}];
      [v112 setObject:v69 forKeyedSubscript:*MEMORY[0x1E69919A0]];
      if ([v18 legacySensorOrientationRotationDegreesForCapture] && dword_1EB58E320)
      {
        v110 = 0;
        v109 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (OUTLINED_FUNCTION_54_11(os_log_and_send_and_compose_flags_and_os_log_type))
        {
          v71 = &OBJC_IVAR___BWAudioSourceNode__keepAudioSessionActiveOnStop;
        }

        else
        {
          v71 = &OBJC_IVAR___BWAudioSourceNode__keepAudioSessionActiveOnStop & 0xFFFFFFFE;
        }

        if (v71)
        {
          v72 = [v18 legacySensorOrientationRotationDegreesForCapture];
          v99 = 136315394;
          v100 = "[BWPhotoEncoderController _encodePhotoForEncodingScheme:pixelBuffer:imageDimensions:processingFlags:metadata:thumbnailOptions:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:cropRect:usePixelsOutsideCrop:allowSensorOrientationRotation:mainImageHandleInOut:]";
          v101 = 1024;
          v102 = v72;
          LODWORD(v80) = 18;
          v79 = &v99;
          OUTLINED_FUNCTION_7_4();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v22 == -1)
      {
        v73 = &v111;
      }

      else
      {
        v73 = 0;
      }

      v74 = [v24 addMainImage:a4 metadata:0 options:v112 imageHandleOut:{v73, v79, v80}];
      if (v74 == -17109 || (v75 = v74) == 0)
      {
        v90 = 0uLL;
        v91 = 0;
        v76 = [objc_msgSend(v18 "currentRequest")];
        if (v76)
        {
          [v76 stereoPhotoImageHandles];
        }

        else
        {
          v90 = 0uLL;
          v91 = 0;
        }

        if (v45)
        {
          *&v90 = v111;
        }

        else
        {
          if (!IsLeftEyeFrameForCurrentRequest)
          {
            v19 = a14;
            if (v88)
            {
              v91 = v111;
            }

            goto LABEL_79;
          }

          *(&v90 + 1) = v111;
        }

        v19 = a14;
LABEL_79:
        v77 = [objc_msgSend(v18 "currentRequest")];
        v107 = v90;
        v108 = v91;
        [v77 setStereoPhotoImageHandles:&v107];
        [objc_msgSend(objc_msgSend(v18 "currentRequest")];
        if (BWPhotoEncoderIsPrimaryFrame(a6))
        {
          [objc_msgSend(objc_msgSend(objc_msgSend(v18 "currentRequest")];
        }

LABEL_81:
        v75 = 0;
        goto LABEL_82;
      }

      OUTLINED_FUNCTION_1_8();
      LODWORD(v79) = v75;
LABEL_69:
      FigDebugAssert3();
LABEL_70:
      v19 = a14;
      goto LABEL_71;
    }

    if (v28)
    {
      if ([objc_msgSend(objc_msgSend(v18 "currentRequest")] > 1 || (objc_msgSend(objc_msgSend(objc_msgSend(v18, "currentRequest"), "input"), "isStereoPhotoCapture") & 1) != 0)
      {
        goto LABEL_29;
      }
    }

    else if (v22 == -1)
    {
LABEL_28:
      v44 = v113[0];
      [v20 settingsID];
      v43 = [OUTLINED_FUNCTION_40_9() openContainerWithOptions:v44 settingsID:?];
      if (!v43)
      {
        goto LABEL_29;
      }

LABEL_91:
      v75 = v43;
      OUTLINED_FUNCTION_1_5();
      goto LABEL_69;
    }

    v110 = 0;
    v109 = 0;
    v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_54_11(v32))
    {
      v33 = v16;
    }

    else
    {
      v33 = v16 & 0xFFFFFFFE;
    }

    v34 = v22 != -1;
    if (v33)
    {
      v99 = 136315906;
      v100 = "[BWPhotoEncoderController _encodePhotoForEncodingScheme:pixelBuffer:imageDimensions:processingFlags:metadata:thumbnailOptions:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:cropRect:usePixelsOutsideCrop:allowSensorOrientationRotation:mainImageHandleInOut:]";
      v101 = 1024;
      v102 = v29;
      v103 = 1024;
      v104 = v34;
      v105 = 2048;
      v106 = [a9 settingsID];
      OUTLINED_FUNCTION_7_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_43_16();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LODWORD(v107) = 67109632;
    DWORD1(v107) = v29;
    WORD4(v107) = 1024;
    *(&v107 + 10) = v34;
    HIWORD(v107) = 2048;
    v108 = [a9 settingsID];
    v35 = OUTLINED_FUNCTION_6_0();
    v80 = 0;
    v36 = OUTLINED_FUNCTION_42_14();
    FigCapturePleaseFileRadar(v36, v37, v38, v39, v40, 3488, v41, v42, 0);
    free(v35);
    v20 = a9;
    v30 = 0x1E696A000;
    if (v29)
    {
      v43 = [v24 closeContainer];
      if (v43)
      {
        goto LABEL_91;
      }
    }

    goto LABEL_28;
  }

  v75 = v27;
  OUTLINED_FUNCTION_1_5();
  FigDebugAssert3();
LABEL_71:
  if ([v24 isContainerOpen])
  {
    [v24 closeContainer];
  }

LABEL_82:
  if (v19)
  {
    *v19 = v111;
  }

  OUTLINED_FUNCTION_16_2();
  if (v21)
  {
    [v20 settingsID];
    OUTLINED_FUNCTION_16_38();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v75;
}

- (int)_encodeDNGForEncodingScheme:(int)a3 rawSampleBuffer:(opaqueCMSampleBuffer *)a4 dngDictionary:(id)a5 requestedSettings:(id)a6 captureType:(int)a7 cropRect:(CGRect)a8 dngContainsDepthData:(BOOL)a9 dngContainsSemanticSegmentationMattes:(BOOL)a10 processingFlags:(unsigned int)a11
{
  OUTLINED_FUNCTION_21_31();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  OUTLINED_FUNCTION_9_7();
  v18 = v17;
  v20 = v19;
  v21 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [v12 settingsID];
    OUTLINED_FUNCTION_18_32();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  v22 = [v20 _encoderManagerForEncodingScheme:v18];
  if (!v22)
  {
    v38 = 0;
    goto LABEL_24;
  }

  v23 = v22;
  v24 = [MEMORY[0x1E695DF90] dictionary];
  v25 = [v12 rawOutputFileBitDepth];
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v20[18];
  }

  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v26];
  [v24 setObject:v27 forKeyedSubscript:*MEMORY[0x1E6991A30]];
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v20[19]];
  [v24 setObject:v28 forKeyedSubscript:*MEMORY[0x1E6991A58]];
  [v24 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991A68]];
  v29 = [v14 objectForKeyedSubscript:*off_1E798A720];
  if (v29)
  {
    [v24 setObject:v29 forKeyedSubscript:*MEMORY[0x1E6991A28]];
  }

  if (v18 != 4)
  {
    [v12 rawOutputFileCodecQuality];
    if (v34 == 0.0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  [v24 setObject:&unk_1F22465D0 forKeyedSubscript:*MEMORY[0x1E6991A40]];
  v30 = BWIsDeferredPhotoProxyImage(v40);
  v31 = *MEMORY[0x1E6991A48];
  if (!v30)
  {
    [v24 setObject:&unk_1F2246588 forKeyedSubscript:v31];
LABEL_15:
    v35 = MEMORY[0x1E696AD98];
    [v12 rawOutputFileCodecQuality];
    v33 = [v35 numberWithFloat:?];
    v32 = *MEMORY[0x1E6991A50];
    goto LABEL_16;
  }

  [v24 setObject:&unk_1F22465B8 forKeyedSubscript:v31];
  v32 = *MEMORY[0x1E6991A50];
  v33 = &unk_1F224CAD0;
LABEL_16:
  [v24 setObject:v33 forKeyedSubscript:v32];
LABEL_17:
  v41.origin.x = OUTLINED_FUNCTION_3_1();
  if (!CGRectIsEmpty(v41))
  {
    v42.origin.x = OUTLINED_FUNCTION_3_1();
    [v24 setObject:CGRectCreateDictionaryRepresentation(v42) forKeyedSubscript:*MEMORY[0x1E6991A70]];
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(v16);
  if (ImageBuffer)
  {
    v37 = ImageBuffer;
    v38 = [OUTLINED_FUNCTION_46_17() _newRawMetadataAttachmentsForEncodingScheme:? sampleBuffer:? dngDictionary:? requestedSettings:? captureType:? dngContainsDepthData:? dngContainsSemanticSegmentationMattes:?];
    if (v38)
    {
      [v12 settingsID];
      if ([OUTLINED_FUNCTION_40_9() openContainerWithOptions:0 settingsID:?])
      {
        OUTLINED_FUNCTION_1_5();
      }

      else
      {
        if (![v23 addMainImage:v37 metadata:v38 options:v24 imageHandleOut:0])
        {
          v21 = MEMORY[0x1E695FF58];
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_1_8();
      }

      FigDebugAssert3();
    }
  }

  else
  {
    v38 = 0;
  }

  v21 = MEMORY[0x1E695FF58];
  if ([v23 isContainerOpen])
  {
    [v23 closeContainer];
  }

LABEL_24:

  if (*v21 == 1)
  {
    [v12 settingsID];
    OUTLINED_FUNCTION_16_38();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  OUTLINED_FUNCTION_20_27();
  return result;
}

- (int)_addThumbnailForEncodingScheme:(int)a3 thumbnailPixelBuffer:(__CVBuffer *)a4 metadata:(id)a5 requestedStillImageCaptureSettings:(id)a6 resolvedStillImageCaptureSettings:(id)a7 processingFlags:(unsigned int)a8 cropRect:(CGRect)a9 codecType:(unsigned int)a10 maxPixelSize:(unint64_t)a11 parentImageHandle:(int64_t)a12
{
  OUTLINED_FUNCTION_21_31();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  OUTLINED_FUNCTION_9_7();
  v19 = v18;
  v21 = v20;
  OUTLINED_FUNCTION_16_2();
  if (v22)
  {
    [v13 settingsID];
    OUTLINED_FUNCTION_18_32();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  v23 = [v21 _encoderManagerForEncodingScheme:v19];
  if (v23)
  {
    v24 = v23;
    if ([v23 isContainerOpen])
    {
      if ((v19 - 3) < 2)
      {
        v34.origin.x = OUTLINED_FUNCTION_3_1();
        if (!CGRectIsEmpty(v34))
        {
          v35.origin.x = OUTLINED_FUNCTION_3_1();
          if (CGRectCreateDictionaryRepresentation(v35))
          {
            v27 = OUTLINED_FUNCTION_41(MEMORY[0x1E695DF20], v28, v29, v30);
            goto LABEL_13;
          }
        }
      }

      else
      {
        if (v19 == 5)
        {
LABEL_16:
          OUTLINED_FUNCTION_1_8();
          FigDebugAssert3();
          goto LABEL_17;
        }

        if (v19 == 1)
        {
          v25 = OUTLINED_FUNCTION_3_1();
          v27 = [v26 _thumbnailOptionsForImageWithMetadata:v25 encodingScheme:? requestedStillImageCaptureSettings:? resolvedStillImageCaptureSettings:? processingFlags:? cropRect:? codecType:? maxPixelSize:?];
LABEL_13:
          v31 = v27;
          goto LABEL_15;
        }
      }

      v31 = 0;
LABEL_15:
      if (![v24 addThumbnailImage:v17 options:v31 parentImageHandle:v33])
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }

LABEL_17:
  OUTLINED_FUNCTION_16_2();
  if (v22)
  {
    [v15 settingsID];
    OUTLINED_FUNCTION_16_38();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  OUTLINED_FUNCTION_20_27();
  return result;
}

- (int)_addCompressedThumbnailForEncodingScheme:(int)a3 thumbnailSurface:(__IOSurface *)a4 thumbnailSurfaceSize:(unint64_t)a5
{
  v7 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:*&a3];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (([v7 isContainerOpen] & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  v9 = [v8 addCompressedThumbnailImage:a4 thumbnailImageSize:a5 options:0];
  if (v9)
  {
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3();
  }

  return v9;
}

- (BOOL)_addDepthForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 primaryOutputAspectRatio:(double)a5 parentImageHandle:(int64_t)a6
{
  OUTLINED_FUNCTION_21_31();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v14 _encoderManagerForEncodingScheme:?];
  if (v16)
  {
    v17 = v16;
    if ([v16 isContainerOpen])
    {
      v18 = OUTLINED_FUNCTION_29_18();
      if (CMGetAttachment(v18, v19, v20))
      {
        AttachedMedia = BWSampleBufferGetAttachedMedia(v11, @"Depth");
        if (AttachedMedia)
        {
          v22 = AttachedMedia;
          ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
          if (ImageBuffer)
          {
            v24 = ImageBuffer;
            PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
            v26 = BWPhotoEncoderAuxImageTypeForDepthPixelFormat(PixelFormatType);
            if (v26)
            {
              v51 = v26;
              v52 = v24;
              v27 = OUTLINED_FUNCTION_29_18();
              v30 = CMGetAttachment(v27, v28, v29);
              if (v30 && ((v31 = v30, v32 = OUTLINED_FUNCTION_29_18(), v35 = CMGetAttachment(v32, v33, v34), v50 = v7, v35) && (AuxiliaryImagePropertiesFromDepthMetadata = CFRetain(v35)) != 0 || (AuxiliaryImagePropertiesFromDepthMetadata = FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata(v31)) != 0))
              {
                v37 = AuxiliaryImagePropertiesFromDepthMetadata;
                v38 = [MEMORY[0x1E695DF90] dictionary];
                if (([objc_msgSend(v31 objectForKeyedSubscript:{*off_1E798CFD0), "BOOLValue"}] & 1) == 0)
                {
                  if (FigDepthFormatIs16Bit(PixelFormatType))
                  {
                    v39 = [MEMORY[0x1E696AD98] numberWithShort:0x7FFFLL];
                  }

                  else
                  {
                    v39 = [MEMORY[0x1E696AD98] numberWithInt:2143289344];
                  }

                  [v38 setObject:v39 forKeyedSubscript:*MEMORY[0x1E69918B8]];
                }

                v40 = OUTLINED_FUNCTION_29_18();
                v43 = [CMGetAttachment(v40 v41];
                BWPhotoEncoderDenormalizedZoomRectForAttachedMedia(v22, v9, 1.0);
                if ((v43 & 1) == 0)
                {
                  OUTLINED_FUNCTION_2_3();
                  if (!CGRectIsNull(v53))
                  {
                    v54.origin.x = OUTLINED_FUNCTION_3();
                    [v38 setObject:CGRectCreateDictionaryRepresentation(v54) forKeyedSubscript:*MEMORY[0x1E6991998]];
                    [v38 setObject:0 forKeyedSubscript:*MEMORY[0x1E69919C0]];
                  }
                }

                v44 = OUTLINED_FUNCTION_29_18();
                [v15 _addOrientationOptionsToDictionary:v38 encodingScheme:v13 metadata:CMGetAttachment(v44 allowSensorOrientationRotation:{v45, v46), 1}];
                if (v13 == 4)
                {
                  v47 = [MEMORY[0x1E696AD98] numberWithInt:0];
                  [v38 setObject:v47 forKeyedSubscript:*MEMORY[0x1E6991A40]];
                }

                if (v38)
                {
                  if ([v15[8] usesHighEncodingPriority])
                  {
                    [v38 setObject:&unk_1F2246540 forKeyedSubscript:*MEMORY[0x1E6991960]];
                  }

                  v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v15[8], "figThreadPriority")}];
                  [v38 setObject:v48 forKeyedSubscript:*MEMORY[0x1E69919A0]];
                  if (![v17 addAuxImage:v52 type:v51 auxImageMetadata:v37 options:v38 parentImageHandle:v50 auxImageHandleOut:0])
                  {
                    [objc_msgSend(objc_msgSend(objc_msgSend(v15 "currentRequest")];
                  }
                }

                else
                {
                  FigSignalErrorAtGM();
                }

                CFRelease(v37);
              }

              else
              {
                FigSignalErrorAtGM();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_20_27();
  return result;
}

- (id)_depthEncodingOptionsFromDepthMetadata:(id)a3 pixelFormat:(unsigned int)a4
{
  if ([objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798CFD0), "BOOLValue"}])
  {
    result = 0;
    v8 = 1;
  }

  else
  {
    if (FigDepthFormatIs16Bit(a4))
    {
      if ([MEMORY[0x1E696AD98] numberWithShort:0x7FFFLL])
      {
LABEL_4:
        v8 = 1;
        result = OUTLINED_FUNCTION_41(MEMORY[0x1E695DF20], v5, v6, v7);
        goto LABEL_5;
      }
    }

    else if ([MEMORY[0x1E696AD98] numberWithInt:2143289344])
    {
      goto LABEL_4;
    }

    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v8 = 0;
    result = 0;
  }

LABEL_5:
  if ((v8 & (result == 0)) != 0)
  {
    return MEMORY[0x1E695E0F8];
  }

  return result;
}

- (BOOL)_addPortraitEffectsMatteForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 primaryOutputAspectRatio:(double)a5 parentImageHandle:(int64_t)a6
{
  OUTLINED_FUNCTION_38_13();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v14 _encoderManagerForEncodingScheme:?];
  if (v16)
  {
    v17 = v16;
    if ([v16 isContainerOpen])
    {
      AttachedMedia = BWSampleBufferGetAttachedMedia(v11, 0x1F21AABB0);
      v19 = AttachedMedia;
      if (AttachedMedia)
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
        if (ImageBuffer)
        {
          v21 = ImageBuffer;
          Width = CVPixelBufferGetWidth(ImageBuffer);
          Height = CVPixelBufferGetHeight(v21);
          CVPixelBufferGetPixelFormatType(v21);
          OUTLINED_FUNCTION_31_19();
          if (v24)
          {
            v42 = Height;
            v25 = [CMGetAttachment(v11 *off_1E798A5E0];
            v26 = OUTLINED_FUNCTION_4_3();
            v29 = CMGetAttachment(v26, v27, v28);
            if (v29 && (v30 = [v15 _newAuxiliaryImagePropertiesFromPortraitEffectsMatteMetadata:v29]) != 0)
            {
              v40 = v30;
              v41 = v7;
              Attributes = CVPixelBufferGetAttributes();
              v32 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{BWPhotoEncoderEncodingOptionsForAuxiliaryImage(Width, v42, Attributes, objc_msgSend(v15[8], "usesHighEncodingPriority"), objc_msgSend(v15[8], "figThreadPriority"))}];
              v33 = *off_1E798A3C8;
              CMGetAttachment(v19, *off_1E798A3C8, 0);
              [OUTLINED_FUNCTION_40_9() mainImageDownscalingFactorForAttachedMediaKey:0x1F21AABB0 attachedMediaMetadata:?];
              BWPhotoEncoderDenormalizedZoomRectForAttachedMedia(v19, v9, v34);
              if ((v25 & 1) == 0)
              {
                OUTLINED_FUNCTION_2_3();
                if (!CGRectIsNull(v43))
                {
                  v44.origin.x = OUTLINED_FUNCTION_3();
                  v35 = CGRectCreateDictionaryRepresentation(v44);
                  IsLinDNGEncodingScheme = BWPhotoEncoderIsLinDNGEncodingScheme(v13);
                  v37 = MEMORY[0x1E6991A70];
                  if (!IsLinDNGEncodingScheme)
                  {
                    v37 = MEMORY[0x1E6991998];
                  }

                  [v32 setObject:v35 forKeyedSubscript:*v37];
                  [OUTLINED_FUNCTION_29_18() setObject:? forKeyedSubscript:?];
                }
              }

              [v15 _addOrientationOptionsToDictionary:v32 encodingScheme:v13 metadata:CMGetAttachment(v11 allowSensorOrientationRotation:{v33, 0), 1}];
              if (v17 == [v15 _encoderManagerForEncodingScheme:4])
              {
                v38 = [MEMORY[0x1E696AD98] numberWithInt:0];
                [v32 setObject:v38 forKeyedSubscript:*MEMORY[0x1E6991A40]];
              }

              if ([v17 addAuxImage:v21 type:4 auxImageMetadata:v40 options:v32 parentImageHandle:v41 auxImageHandleOut:0])
              {
                OUTLINED_FUNCTION_1_5();
                FigDebugAssert3();
              }

              else
              {
                [objc_msgSend(objc_msgSend(objc_msgSend(v15 "currentRequest")];
              }

              CFRelease(v40);
            }

            else
            {
              OUTLINED_FUNCTION_15_38();
              FigSignalErrorAtGM();
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }
  }

  OUTLINED_FUNCTION_37_13();
  return result;
}

- (BOOL)_addGainMapForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 outputDimensions:(id)a5 primaryOutputAspectRatio:(double)a6 parentImageHandle:(int64_t)a7
{
  v13 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:?];
  if (!v13)
  {
    goto LABEL_29;
  }

  v14 = v13;
  if (([v13 isContainerOpen] & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    goto LABEL_29;
  }

  AttachedMedia = BWSampleBufferGetAttachedMedia(a4, 0x1F217BF50);
  v16 = AttachedMedia;
  if (!AttachedMedia)
  {
    return v16;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
  if (!ImageBuffer)
  {
    goto LABEL_29;
  }

  v18 = ImageBuffer;
  CVPixelBufferGetPixelFormatType(ImageBuffer);
  OUTLINED_FUNCTION_31_19();
  v20 = v19;
  if (!v19)
  {
    goto LABEL_29;
  }

  v39 = v20;
  v40 = a7;
  Width = CVPixelBufferGetWidth(v18);
  Height = CVPixelBufferGetHeight(v18);
  if ([CMGetAttachment(a4 *off_1E798A5E0])
  {
    if ((Width | (Height << 32)) != a5)
    {
      v62 = 0;
      v61 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v30 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_5_2(v30))
      {
        v43 = 136316162;
        v44 = "[BWPhotoEncoderController _addGainMapForEncodingScheme:sampleBuffer:outputDimensions:primaryOutputAspectRatio:parentImageHandle:]";
        v45 = 1024;
        v46 = Width;
        v47 = 1024;
        v48 = Height;
        v49 = 1024;
        var0 = a5.var0;
        v51 = 1024;
        var1 = a5.var1;
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_43_16();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v53 = 67109888;
      v54 = Width;
      v55 = 1024;
      v56 = Height;
      v57 = 1024;
      v58 = a5.var0;
      v59 = 1024;
      v60 = a5.var1;
      v31 = OUTLINED_FUNCTION_6_0();
      v32 = OUTLINED_FUNCTION_42_14();
      FigCapturePleaseFileRadar(v32, v33, v34, v35, v36, 4178, v37, v38, 0);
      free(v31);
      goto LABEL_29;
    }
  }

  else
  {
    [(BWPhotoEncoderController *)self mainImageDownscalingFactorForAttachedMediaKey:0x1F217BF50 attachedMediaMetadata:CMGetAttachment(v16, *off_1E798A3C8, 0)];
    if (v23 <= 0.0)
    {
LABEL_29:
      LOBYTE(v16) = 0;
      return v16;
    }

    BWPhotoEncoderDenormalizedZoomRectForAttachedMedia(v16, a6, v23);
  }

  v42 = 0;
  [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] requiresPhotosAdjustment];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_24_21();
  v25 = [v24 _newGainMapAuxiliaryImagePropertiesForEncodingScheme:0 sampleBuffer:? denormalizedCropRect:? requiresPhotosAdjustment:? encodingOptionsOut:? flexGTCColorSpaceOut:? tonemapItemMetadataOut:? isP3PrimariesOut:?];
  if (!v25)
  {
    goto LABEL_29;
  }

  v26 = v25;
  if (![v42 count])
  {
    LOBYTE(v16) = 0;
LABEL_22:
    CFRelease(v26);
    return v16;
  }

  v41 = -1;
  if (BWPhotoEncoderSupportsAddingAuxiliaryMetadataSeparately(a3))
  {
    CFRelease(v26);
    v26 = 0;
  }

  v27 = [v14 addAuxImage:v18 type:v39 auxImageMetadata:v26 options:v42 parentImageHandle:v40 auxImageHandleOut:&v41];
  LOBYTE(v16) = v27 == 0;
  if (!v27)
  {
    [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] setGainMapHandle:v41];
    [-[BWStillImageProcessorControllerInput encodedAttachedMediaKeys](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self "currentRequest")];
  }

  if (v26)
  {
    goto LABEL_22;
  }

  return v16;
}

- (CGImageMetadata)_newGainMapAuxiliaryImagePropertiesForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 denormalizedCropRect:(CGRect)a5 requiresPhotosAdjustment:(BOOL)a6 encodingOptionsOut:(id *)a7 flexGTCColorSpaceOut:(CGColorSpace *)a8 tonemapItemMetadataOut:(id *)a9 isP3PrimariesOut:(BOOL *)a10
{
  OUTLINED_FUNCTION_38_13();
  v53 = v10;
  v54 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  OUTLINED_FUNCTION_9_7();
  v21 = v20;
  v23 = v22;
  cf = 0;
  v52[0] = 0;
  v25 = CMGetAttachment(v24, @"StillSettings", 0);
  if (!v25)
  {
    goto LABEL_28;
  }

  v26 = v25;
  AttachedMedia = BWSampleBufferGetAttachedMedia(v19, 0x1F217BF50);
  v28 = AttachedMedia;
  if (!AttachedMedia)
  {
    v42 = 0;
    goto LABEL_30;
  }

  target = v19;
  ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
  if (!ImageBuffer)
  {
LABEL_28:
    v42 = 0;
LABEL_30:
    v34 = 0;
    goto LABEL_37;
  }

  v30 = ImageBuffer;
  v48 = v17;
  v49 = v13;
  v50 = v15;
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(v30);
  Attributes = CVPixelBufferGetAttributes();
  v34 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{BWPhotoEncoderEncodingOptionsForAuxiliaryImage(Width, Height, Attributes, objc_msgSend(v23[8], "usesHighEncodingPriority"), objc_msgSend(v23[8], "figThreadPriority"))}];
  [objc_msgSend(v26 "captureSettings")];
  v35 = *off_1E798A3C8;
  v36 = CMGetAttachment(v28, *off_1E798A3C8, 0);
  if (!FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromGainMapSampleBuffer(v36))
  {
    OUTLINED_FUNCTION_15_38();
LABEL_34:
    FigSignalErrorAtGM();
    goto LABEL_35;
  }

  v37 = v21 - 3;
  v38 = [v36 objectForKeyedSubscript:*off_1E798A640];
  v39 = v38;
  if ((v21 - 1) >= 2 && v37 > 1 || !v38 || !BWPhotoEncoderTonemapItemMetadataFromGainMapMetadata(v38, v52))
  {
    v55.origin.x = OUTLINED_FUNCTION_3_1();
    if (!CGRectIsNull(v55))
    {
      v56.origin.x = OUTLINED_FUNCTION_3_1();
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v56);
      [v34 setObject:DictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E6991998]];
      [v34 setObject:0 forKeyedSubscript:*MEMORY[0x1E69919C0]];
      if (DictionaryRepresentation)
      {
        CFRelease(DictionaryRepresentation);
      }
    }

    BWPhotoEncoderAddGainMapQualityControllerParametersToEncodingOptions(v34);
    if (BWPhotoEncoderIsLinDNGEncodingScheme(v21))
    {
      [v34 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991A20]];
    }

    [v23 _addOrientationOptionsToDictionary:v34 encodingScheme:v21 metadata:CMGetAttachment(target allowSensorOrientationRotation:{v35, 0), 1}];
    if ((v21 == 1 || v37 <= 1) && v52[0])
    {
      [v34 setObject:v52[0] forKeyedSubscript:*MEMORY[0x1E69918C0]];
    }

    v41 = *off_1E798A6E0;
    if (![v36 objectForKeyedSubscript:*off_1E798A6E0])
    {
      goto LABEL_35;
    }

    if (v21 != 2 || !v50)
    {
      v42 = 0;
      if (v21 > 4 || ((1 << v21) & 0x1A) == 0)
      {
        goto LABEL_36;
      }
    }

    v43 = CMSampleBufferGetImageBuffer(target);
    if (v43)
    {
      v44 = CVBufferCopyAttachment(v43, *MEMORY[0x1E6965D88], 0);
      v45 = FigCFEqual();
      v42 = v45 != 0;
      if (v44)
      {
        CFRelease(v44);
      }

      if (!BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata(v39, [v36 objectForKeyedSubscript:v41], v45 != 0, &cf))
      {
        [v34 setObject:cf forKeyedSubscript:*MEMORY[0x1E69918D8]];
      }

      goto LABEL_36;
    }

    OUTLINED_FUNCTION_15_38();
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_1_5();
  FigDebugAssert3();
LABEL_35:
  v42 = 0;
LABEL_36:
  v13 = v49;
  v15 = v50;
  v17 = v48;
LABEL_37:
  if (v17)
  {
    *v17 = v34;
  }

  if (v15)
  {
    *v15 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    *v13 = v52[0];
  }

  if (a10)
  {
    *a10 = v42;
  }

  OUTLINED_FUNCTION_37_13();
  return result;
}

- (BOOL)_addAlternateImageForEncodingScheme:(int)a3 flexGTCColorSpace:(CGColorSpace *)a4 isP3primaries:(BOOL)a5 tonemapItemMetadata:(id)a6 parentImageHandle:(int64_t)a7 gainMapHandle:(int64_t)a8
{
  if (a8 == -1)
  {
    return 0;
  }

  v11 = a5;
  v14 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:*&a3];
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  if (([v14 isContainerOpen] & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  if (a4)
  {
    v16 = CFRetain(a4);
  }

  else
  {
    v17 = MEMORY[0x1E695F0C8];
    if (!v11)
    {
      v17 = MEMORY[0x1E695F190];
    }

    v16 = CGColorSpaceCreateWithName(*v17);
  }

  v18 = v16;
  if (v16)
  {
    v31[0] = *MEMORY[0x1E69918E0];
    v19 = *MEMORY[0x1E6991B30];
    v29[0] = *MEMORY[0x1E6991B38];
    v29[1] = v19;
    v30[0] = &unk_1F22465B8;
    v30[1] = a6;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v21 = *MEMORY[0x1E69918D8];
    v32[0] = v20;
    v32[1] = v18;
    v22 = *MEMORY[0x1E69918C8];
    v31[1] = v21;
    v31[2] = v22;
    v31[3] = *MEMORY[0x1E6991918];
    v32[2] = &unk_1F22465E8;
    v32[3] = &unk_1F22465B8;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];
    v28 = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] toneMapAlternateGroupHandle];
    v27[0] = [MEMORY[0x1E696AD98] numberWithLong:a7];
    v27[1] = [MEMORY[0x1E696AD98] numberWithLong:a8];
    v24 = [v15 addAlternateImageWithDerivedImageHandles:objc_msgSend(MEMORY[0x1E695DEC8] options:"arrayWithObjects:count:" parentImageHandle:v27 alternateGroupHandleInOut:{2), v23, a7, &v28}];
    v25 = v24 != 0;
    if (!v24)
    {
      [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] setToneMapAlternateGroupHandle:v28];
    }

    CFRelease(v18);
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 1;
  }

  return v25;
}

- (BOOL)_addGainMapMetadataForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 parentImageHandle:(int64_t)a5
{
  v7 = *&a3;
  cf = 0;
  v9 = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] gainMapHandle];
  if (v9 == -1)
  {
    LOBYTE(v12) = 0;
    return v12;
  }

  v10 = v9;
  v11 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:v7];
  v12 = v11;
  if (v11)
  {
    if ([v11 isContainerOpen])
    {
      if (CMGetAttachment(a4, @"StillSettings", 0))
      {
        AttachedMedia = BWSampleBufferGetAttachedMedia(a4, 0x1F217BF50);
        if (AttachedMedia)
        {
          if (CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0))
          {
            v19 = 0;
            v20 = 0;
            v18 = 0;
            v14 = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] requiresPhotosAdjustment];
            v15 = [(BWPhotoEncoderController *)self _newGainMapAuxiliaryImagePropertiesForEncodingScheme:v7 sampleBuffer:a4 denormalizedCropRect:v14 requiresPhotosAdjustment:&v20 encodingOptionsOut:&cf flexGTCColorSpaceOut:&v19 tonemapItemMetadataOut:*MEMORY[0x1E695F050] isP3PrimariesOut:*(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), &v18];
            if (v15)
            {
              v16 = v15;
              if (![v20 count] || objc_msgSend(v12, "addAuxImageMetadata:type:auxImageHandle:options:parentImageHandle:", v16, 1, v10, v20, a5))
              {
                LOBYTE(v12) = 0;
              }

              else
              {
                LOBYTE(v12) = 1;
                if (v7 == 2 && v19)
                {
                  [(BWPhotoEncoderController *)self _addAlternateImageForEncodingScheme:2 flexGTCColorSpace:cf isP3primaries:v18 tonemapItemMetadata:v19 parentImageHandle:a5 gainMapHandle:v10];
                }
              }

              CFRelease(v16);
              goto LABEL_14;
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    LOBYTE(v12) = 0;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

- (BOOL)_addSemanticMattesForEncodingScheme:(int)a3 attachedMediaKey:(id)a4 sampleBuffer:(opaqueCMSampleBuffer *)a5 primaryOutputAspectRatio:(double)a6 settingsID:(int64_t)a7 orientation:(int)a8 parentImageHandle:(int64_t)a9
{
  v11 = *&a8;
  v15 = *&a3;
  v17 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:?];
  if (!v17)
  {
    goto LABEL_26;
  }

  v9 = v17;
  if (([v17 isContainerOpen] & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    goto LABEL_26;
  }

  IsLinDNGEncodingScheme = BWPhotoEncoderIsLinDNGEncodingScheme(v15);
  v19 = MEMORY[0x1E6991A70];
  if (!IsLinDNGEncodingScheme)
  {
    v19 = MEMORY[0x1E6991998];
  }

  v40 = v19;
  AttachedMedia = BWSampleBufferGetAttachedMedia(a5, a4);
  v21 = BWPhotoEncoderNodeAuxImageTypeForSemanticMatteAttachedMediaKey(a4);
  ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
  v23 = ImageBuffer;
  if (!ImageBuffer)
  {
    goto LABEL_27;
  }

  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(v23);
  CVPixelBufferGetPixelFormatType(v23);
  OUTLINED_FUNCTION_31_19();
  if (!v24)
  {
LABEL_26:
    v23 = 0;
LABEL_27:
    v37 = 0;
    goto LABEL_17;
  }

  v44 = [(BWPhotoEncoderController *)self _newAuxiliaryImagePropertiesFromSemanticMatteSampleBuffer:AttachedMedia];
  if (!v44)
  {
    OUTLINED_FUNCTION_15_38();
    FigSignalErrorAtGM();
    goto LABEL_26;
  }

  v42 = v21;
  v41 = v23;
  v25 = v15;
  Attributes = CVPixelBufferGetAttributes();
  v43 = MEMORY[0x1E695DF90];
  v27 = v9;
  v9 = a4;
  v28 = [(BWPhotoEncoderControllerConfiguration *)self->_configuration usesHighEncodingPriority];
  v29 = [(BWStillImageProcessorControllerConfiguration *)self->_configuration figThreadPriority];
  v30 = Attributes;
  v15 = v25;
  v31 = [v43 dictionaryWithDictionary:{BWPhotoEncoderEncodingOptionsForAuxiliaryImage(Width, Height, v30, v28, v29)}];
  [(BWPhotoEncoderController *)self mainImageDownscalingFactorForAttachedMediaKey:v9 attachedMediaMetadata:OUTLINED_FUNCTION_55_14(v31, *off_1E798A3C8)];
  BWPhotoEncoderDenormalizedZoomRectForAttachedMedia(AttachedMedia, a6, v32);
  OUTLINED_FUNCTION_2_3();
  if (([OUTLINED_FUNCTION_55_14(v33 *off_1E798A5E0)] & 1) != 0 || (v47.origin.x = OUTLINED_FUNCTION_3(), CGRectIsNull(v47)))
  {
LABEL_13:
    [(BWPhotoEncoderController *)self _addOrientationOptionsToDictionary:v31 encodingScheme:v15 orientation:v11 allowSensorOrientationRotation:1];
    if (v27 == [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:4])
    {
      v35 = [MEMORY[0x1E696AD98] numberWithInt:0];
      [v31 setObject:v35 forKeyedSubscript:*MEMORY[0x1E6991A40]];
    }

    v36 = v27;
    v23 = v44;
    if (![v36 addAuxImage:v41 type:v42 auxImageMetadata:v44 options:v31 parentImageHandle:a9 auxImageHandleOut:0])
    {
      [-[BWStillImageProcessorControllerInput encodedAttachedMediaKeys](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self "currentRequest")];
      v37 = 1;
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  v34 = *v40;
  if (*v40)
  {
    v48.origin.x = OUTLINED_FUNCTION_3();
    [v31 setObject:CGRectCreateDictionaryRepresentation(v48) forKeyedSubscript:v34];
    [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_15_38();
  FigSignalErrorAtGM();
  v37 = 0;
  v23 = v44;
LABEL_17:
  if (dword_1EB58E320)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_52_15(os_log_and_send_and_compose_flags_and_os_log_type);
    OUTLINED_FUNCTION_30_14();
    if (v9)
    {
      BWPhotoEncoderStringFromEncodingScheme(v15);
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return v37;
}

- (int)_decompressSmartStylePhotoSurface:(__IOSurface *)a3
{
  result = CMPhotoDecompressionSessionCreate();
  if (!result)
  {
    return CMPhotoDecompressionSessionCreateContainer();
  }

  return result;
}

- (int)_addUnstyledImageForEncodingScheme:(int)a3 sbuf:(opaqueCMSampleBuffer *)a4 imageDimensions:(id)a5 processingFlags:(unsigned int)a6 metadata:(id)a7 requestedStillImageCaptureSettings:(id)a8 resolvedStillImageCaptureSettings:(id)a9 cropRect:(CGRect)a10 usePixelsOutsideCrop:(BOOL)a11
{
  OUTLINED_FUNCTION_21_31();
  if (v11 == 2)
  {
    OUTLINED_FUNCTION_9_7();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v20 _encoderManagerForEncodingScheme:?];
    if (v22)
    {
      v23 = v22;
      AttachedMedia = BWSampleBufferGetAttachedMedia(v19, 0x1F21AAF90);
      if (AttachedMedia)
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
        if (ImageBuffer)
        {
          v26 = ImageBuffer;
          v27 = [MEMORY[0x1E695DF90] dictionary];
          v34.origin.x = OUTLINED_FUNCTION_3_1();
          if (!CGRectIsEmpty(v34))
          {
            v35.origin.x = OUTLINED_FUNCTION_3_1();
            DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v35);
            [v27 setObject:DictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E6991998]];
            if (DictionaryRepresentation)
            {
              CFRelease(DictionaryRepresentation);
            }
          }

          if (v33)
          {
            [v27 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69919C0]];
          }

          v29 = BWPhotoEncoderCodecTypeForEncodingScheme(2u);
          [v21 _addQualityOptionsToDictionary:v27 codecType:v29 pixelBuffer:v26 imageDimensions:v17 metadata:v15 requestedStillImageCaptureSettings:v13 resolvedStillImageCaptureSettings:? enableHEIFTiling:? enableHEIFOrientation:? auxImageType:?];
          v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v29];
          [v27 setObject:v30 forKeyedSubscript:*MEMORY[0x1E69918D0]];
          if ([v21[8] usesHighEncodingPriority])
          {
            [v27 setObject:&unk_1F2246540 forKeyedSubscript:*MEMORY[0x1E6991960]];
          }

          v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v21[8], "figThreadPriority")}];
          [v27 setObject:v31 forKeyedSubscript:*MEMORY[0x1E69919A0]];
          [v21 _addOrientationOptionsToDictionary:v27 encodingScheme:2 metadata:v15 allowSensorOrientationRotation:1];
          if ([v23 addMainImage:v26 metadata:0 options:v27 imageHandleOut:0])
          {
            OUTLINED_FUNCTION_1_8();
            FigDebugAssert3();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_20_27();
  return result;
}

- (BOOL)_addSmartStyleLinearThumbnailForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 primaryOutputAspectRatio:(double)a5
{
  OUTLINED_FUNCTION_56_13();
  v36 = v5;
  v37 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v13 _encoderManagerForEncodingScheme:?];
  if (v15)
  {
    if ([v15 isContainerOpen])
    {
      AttachedMedia = BWSampleBufferGetAttachedMedia(v10, 0x1F21AAF70);
      if (AttachedMedia)
      {
        v17 = AttachedMedia;
        v33 = v12;
        ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
        if (ImageBuffer)
        {
          v19 = ImageBuffer;
          Width = CVPixelBufferGetWidth(ImageBuffer);
          Height = CVPixelBufferGetHeight(v19);
          Attributes = CVPixelBufferGetAttributes();
          v23 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{BWPhotoEncoderEncodingOptionsForAuxiliaryImage(Width, Height, Attributes, objc_msgSend(v14[8], "usesHighEncodingPriority"), objc_msgSend(v14[8], "figThreadPriority"))}];
          PixelFormatType = CVPixelBufferGetPixelFormatType(v19);
          if (PixelFormatType == 2019963440)
          {
            if (v33 == 3)
            {
              v25 = MEMORY[0x1E6991A70];
            }

            else
            {
              v25 = MEMORY[0x1E6991998];
            }

            v26 = [OUTLINED_FUNCTION_55_14(PixelFormatType *off_1E798A5E0)];
            BWPhotoEncoderDenormalizedZoomRectForAttachedMedia(v17, v8, 1.0);
            if ((v26 & 1) == 0)
            {
              OUTLINED_FUNCTION_2_3();
              IsNull = CGRectIsNull(v38);
              if ((IsNull & 1) == 0)
              {
                v28 = *v25;
                v39.origin.x = OUTLINED_FUNCTION_3();
                [v23 setObject:CGRectCreateDictionaryRepresentation(v39) forKeyedSubscript:v28];
                IsNull = [v23 setObject:0 forKeyedSubscript:*MEMORY[0x1E69919C0]];
              }
            }

            [v14 _addOrientationOptionsToDictionary:v23 encodingScheme:v33 metadata:OUTLINED_FUNCTION_55_14(IsNull allowSensorOrientationRotation:{*off_1E798A3C8), 1}];
            [v23 setObject:&unk_1F2246588 forKeyedSubscript:*MEMORY[0x1E6991978]];
            v34 = *MEMORY[0x1E6991B90];
            LODWORD(v29) = 1050253722;
            v35[0] = [MEMORY[0x1E696AD98] numberWithFloat:v29];
            v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
            [v23 setObject:v30 forKeyedSubscript:*MEMORY[0x1E6991970]];
            OUTLINED_FUNCTION_24_21();
            if (![v31 addAuxImage:? type:? auxImageMetadata:? options:? parentImageHandle:? auxImageHandleOut:?])
            {
              [objc_msgSend(objc_msgSend(objc_msgSend(v14 "currentRequest")];
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_57_13();
  return result;
}

- (BOOL)_addSmartStyleDeltaMapForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 stillImageSettings:(id)a5 primaryOutputAspectRatio:(double)a6
{
  OUTLINED_FUNCTION_38_13();
  v8 = v7;
  v46 = v6;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [v6 settingsID];
    OUTLINED_FUNCTION_18_32();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  v16 = [v14 _encoderManagerForEncodingScheme:v12];
  if (v16)
  {
    if ([v16 isContainerOpen])
    {
      v17 = *(v14 + 256);
      if (v17)
      {
        Width = CVPixelBufferGetWidth(v17);
        v19 = v10;
        Height = CVPixelBufferGetHeight(v17);
        v44 = v17;
        Attributes = CVPixelBufferGetAttributes();
        v22 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{BWPhotoEncoderEncodingOptionsForAuxiliaryImage(Width, Height, Attributes, objc_msgSend(*(v14 + 64), "usesHighEncodingPriority"), objc_msgSend(*(v14 + 64), "figThreadPriority"))}];
        v24 = *MEMORY[0x1E695F058];
        v23 = *(MEMORY[0x1E695F058] + 8);
        v25 = *(MEMORY[0x1E695F058] + 16);
        v26 = *(MEMORY[0x1E695F058] + 24);
        v27 = BWStillImageProcessingFlagsForSampleBuffer(v19);
        v28 = BWIsDeferredPhotoProxyImage(v27);
        v29 = v26;
        v30 = v25;
        if ((BWPhotoEncoderDecompressStyledImageForDeltaMap([objc_msgSend(v46 "requestedSettings")], v28) & 1) == 0)
        {
          BWPhotoEncoderDenormalizedZoomRectForAttachedMedia(v19, v8, 1.0);
          v30 = v31;
          v29 = v32;
          if (([CMGetAttachment(v19 *off_1E798A5E0] & 1) == 0)
          {
            v47.origin.x = OUTLINED_FUNCTION_1_10();
            if (!CGRectIsNull(v47))
            {
              v33 = MEMORY[0x1E6991A70];
              if (v12 != 3)
              {
                v33 = MEMORY[0x1E6991998];
              }

              v34 = *v33;
              v48.origin.x = OUTLINED_FUNCTION_1_10();
              [v22 setObject:CGRectCreateDictionaryRepresentation(v48) forKeyedSubscript:v34];
              [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
            }
          }
        }

        v35 = CMGetAttachment(v19, *off_1E798A3C8, 0);
        v45 = v22;
        [v14 _addOrientationOptionsToDictionary:v22 encodingScheme:v12 metadata:v35 allowSensorOrientationRotation:1];
        v36 = BWPhotoEncoderCodecTypeForEncodingScheme(v12);
        v49.origin.x = OUTLINED_FUNCTION_1_10();
        v50.origin.x = v24;
        v50.origin.y = v23;
        v50.size.width = v25;
        v50.size.height = v26;
        v37 = CGRectEqualToRect(v49, v50);
        if (v37)
        {
          v38 = Width;
        }

        else
        {
          v38 = v30;
        }

        if (v37)
        {
          v39 = Height;
        }

        else
        {
          v39 = v29;
        }

        if (v12 == 2)
        {
          v40 = *(v14 + 181);
        }

        else
        {
          v40 = 0;
        }

        HIDWORD(v43) = 12;
        LOWORD(v43) = v40 & 1;
        [v14 _addQualityOptionsToDictionary:v45 codecType:v36 pixelBuffer:v44 imageDimensions:v38 | (v39 << 32) metadata:v35 requestedStillImageCaptureSettings:objc_msgSend(v46 resolvedStillImageCaptureSettings:"requestedSettings") enableHEIFTiling:objc_msgSend(v46 enableHEIFOrientation:"captureSettings") auxImageType:v43];
        OUTLINED_FUNCTION_24_21();
        if (![v41 addAuxImage:? type:? auxImageMetadata:? options:? parentImageHandle:? auxImageHandleOut:?])
        {
          [objc_msgSend(objc_msgSend(objc_msgSend(v14 "currentRequest")];
        }

        v15 = MEMORY[0x1E695FF58];
      }
    }
  }

  if (*v15 == 1)
  {
    [v46 settingsID];
    OUTLINED_FUNCTION_16_38();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  OUTLINED_FUNCTION_37_13();
  return result;
}

- (BOOL)_addConstantColorConfidenceMapForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4
{
  OUTLINED_FUNCTION_27_18();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v8 _encoderManagerForEncodingScheme:?];
  if (v10)
  {
    if ([v10 isContainerOpen])
    {
      AttachedMedia = BWSampleBufferGetAttachedMedia(v5, 0x1F21AB170);
      if (AttachedMedia)
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
        if (ImageBuffer)
        {
          v13 = ImageBuffer;
          Width = CVPixelBufferGetWidth(ImageBuffer);
          Height = CVPixelBufferGetHeight(v13);
          Attributes = CVPixelBufferGetAttributes();
          v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{BWPhotoEncoderEncodingOptionsForAuxiliaryImage(Width, Height, Attributes, objc_msgSend(v9[8], "usesHighEncodingPriority"), objc_msgSend(v9[8], "figThreadPriority"))}];
          [v9 _addOrientationOptionsToDictionary:v17 encodingScheme:v7 metadata:CMGetAttachment(v5 allowSensorOrientationRotation:{*off_1E798A3C8, 0), 1}];
          OUTLINED_FUNCTION_24_21();
          [v18 addAuxImage:? type:? auxImageMetadata:? options:? parentImageHandle:? auxImageHandleOut:?];
        }
      }
    }
  }

  OUTLINED_FUNCTION_25_20();
  return result;
}

- (void)_tagStereoPairGroupForEncodingScheme:(int)a3 stereoPhotoImageHandles:(id *)a4 groupMetadata:(id)a5
{
  v7 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:*&a3];
  if (v7)
  {
    v8 = v7;
    if ([v7 isContainerOpen])
    {
      v9 = *&a4->var0;
      var2 = a4->var2;
      [v8 tagStereoPairGroupWithStereoPhotoImageHandles:&v9 groupMetadata:a5];
    }
  }
}

- (int)_addValue:(id)a3 toAuxiliaryImageProperties:(CGImageMetadata *)a4 namespace:(__CFString *)a5 prefix:(__CFString *)a6 key:(__CFString *)a7
{
  if (a3)
  {
    v10 = CGImageMetadataTagCreate(a5, a6, a7, kCGImageMetadataTypeDefault, a3);
    if (v10)
    {
      v11 = v10;
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@", a6, a7];
      if (v12)
      {
        if (CGImageMetadataSetTagWithPath(a4, 0, v12, v11))
        {
          v13 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3();
          v13 = -16992;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
        v13 = -16991;
      }

      CFRelease(v11);
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      v12 = 0;
      v13 = -16991;
    }
  }

  else
  {
    v12 = 0;
    v13 = -17102;
  }

  return v13;
}

- (int)_addMetadataAttachmentsForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 requestedSettings:(id)a5 captureType:(int)a6 parentImageHandle:(int64_t)a7 exifExtraRotationDegrees:(int)a8
{
  OUTLINED_FUNCTION_27_18();
  v9 = v8;
  v11 = [v10 _encoderManagerForEncodingScheme:?];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  if (([v11 isContainerOpen] & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
LABEL_7:
    v13 = 0;
    goto LABEL_5;
  }

  v13 = [OUTLINED_FUNCTION_46_17() _newMetadataAttachmentsForEncodingScheme:? sampleBuffer:? requestedSettings:? captureType:? exifExtraRotationDegrees:?];
  if (v13)
  {
    [v12 addMetadata:v13 parentImageHandle:v9];
  }

LABEL_5:

  OUTLINED_FUNCTION_25_20();
  return result;
}

- (id)_newMetadataAttachmentsForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 requestedSettings:(id)a5 captureType:(int)a6 exifExtraRotationDegrees:(int)a7
{
  v26 = 5;
  if (a3 == 1)
  {
    v24 = 0;
  }

  else
  {
    v10 = *&a6;
    ImageBuffer = CMSampleBufferGetImageBuffer(a4);
    v12 = CMGetAttachment(a4, *off_1E798A3C8, 0);
    [(BWPhotoEncoderControllerConfiguration *)self->_configuration zeroShutterLagEnabled];
    if (BWPhotoEncoderDefaultJPEGIndexedQTable(ImageBuffer, v12, v10, &v26, 0))
    {
      return 0;
    }

    v24 = BWPhotoEncoderTranscodeQualityHintFromQuantizationTableIndex(v26);
  }

  v13 = [CMGetAttachment(a4 @"PhotoManifest"];
  BWStillImageProcessingFlagsForSampleBuffer(a4);
  v23 = [a5 outputFileType];
  v14 = [a5 outputRotationDegrees];
  v15 = [a5 outputMirroring];
  v16 = [(BWPhotoEncoderControllerConfiguration *)self->_configuration cameraSupportsFlash];
  v17 = self;
  v18 = [a5 flashMode];
  StillImageMetadataInSettingsForSampleBuffer = FigCaptureMetadataUtilitiesGetStillImageMetadataInSettingsForSampleBuffer(a5, a4);
  IrisAssetIdentifierForSettingsAndSampleBuffer = FigCaptureMetadataUtilitiesGetIrisAssetIdentifierForSettingsAndSampleBuffer(a5, a4);
  MetadataAttachments = FigCaptureMetadataUtilitiesCreateMetadataAttachments(a4, v23, v14, v15, v16, 1, v18, 0, 1, 0, 1, 0, 0, 0, 0, StillImageMetadataInSettingsForSampleBuffer, IrisAssetIdentifierForSettingsAndSampleBuffer, [a5 imageGroupIdentifier], v24, objc_msgSend(v13, "time"), a7);
  if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)v17 currentRequest] input] requiresPhotosAdjustment])
  {
    [MetadataAttachments setObject:&unk_1F2246528 forKeyedSubscript:*MEMORY[0x1E696DE78]];
  }

  return MetadataAttachments;
}

- (id)_newRawMetadataAttachmentsForEncodingScheme:(int)a3 sampleBuffer:(opaqueCMSampleBuffer *)a4 dngDictionary:(id)a5 requestedSettings:(id)a6 captureType:(int)a7 dngContainsDepthData:(BOOL)a8 dngContainsSemanticSegmentationMattes:(BOOL)a9
{
  v12 = [(BWPhotoEncoderController *)self _newMetadataAttachmentsForEncodingScheme:*&a3 sampleBuffer:a4 requestedSettings:a6 captureType:*&a7 exifExtraRotationDegrees:0];
  if (v12)
  {
    v13 = CMGetAttachment(a4, *off_1E798A3C8, 0);
    [a6 rawOutputFileCodec];
    [v13 objectForKeyedSubscript:*off_1E798B1E0];
    v14 = OUTLINED_FUNCTION_40_9();
    v16 = BWCreateRawMetadataFromMetadata(v14, a5, 0x10000u, v15);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (__IOSurface)_closeContainerAndCopySurfaceForEncodingScheme:(int)a3
{
  v6 = 0;
  result = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:*&a3];
  if (result)
  {
    v5 = result;
    if ([(__IOSurface *)result isContainerOpen])
    {
      [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] setReservedPrimaryImageHandle:-1];
      [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] setToneMapAlternateGroupHandle:-1];
      [(__IOSurface *)v5 closeContainerAndCopySurfaceOut:&v6];
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_getAssetsSizeForEncodingScheme:(int)a3 containerSizeOut:(unint64_t *)a4 thumbnailSizeOut:(unint64_t *)a5 auxiliaryImagesSizeOut:(unint64_t *)a6
{
  v9 = *&a3;
  v11 = [MEMORY[0x1E696AD60] string];
  v12 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:v9];
  if (v12)
  {
    if (a4)
    {
      v13 = v12;
      *a4 = [v12 containerSize];
      [v11 appendFormat:@" containerSize:%.3lf MB, ", vcvtd_n_f64_u64(objc_msgSend(v13, "containerSize"), 0x14uLL)];
    }

    if ((v9 - 3) <= 1)
    {
      if (a5)
      {
        *a5 = [(BWDNGEncoderManager *)self->_dngEncoderManager thumbnailImageSize];
        [v11 appendFormat:@" thumbnailImageSize:%.3lf MB, ", vcvtd_n_f64_u64(-[BWDNGEncoderManager thumbnailImageSize](self->_dngEncoderManager, "thumbnailImageSize"), 0x14uLL)];
      }

      if (a6)
      {
        *a6 = [(BWDNGEncoderManager *)self->_dngEncoderManager auxiliaryImagesSize];
        [v11 appendFormat:@" auxiliaryImagesSize:%.3lf MB", vcvtd_n_f64_u64(-[BWDNGEncoderManager auxiliaryImagesSize](self->_dngEncoderManager, "auxiliaryImagesSize"), 0x14uLL)];
      }
    }
  }

  [v11 length];
}

- (void)_closeContainerForEncodingScheme:(int)a3
{
  v4 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:*&a3];
  if (v4)
  {
    v5 = v4;
    if ([v4 isContainerOpen])
    {
      [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] setReservedPrimaryImageHandle:-1];
      [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] setToneMapAlternateGroupHandle:-1];

      [v5 closeContainer];
    }
  }
}

- (double)_adjustAspectRatio:(double)a3 settings:(id)a4
{
  if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] requiresPhotosAdjustment])
  {
    [a4 nonDestructiveCropSize];
    if (v6 > 0.0 && v7 > 0.0)
    {
      if (a3 <= 1.0)
      {
        v8 = v7 / v6;
      }

      else
      {
        v8 = v6 / v7;
      }

      return v8 * a3;
    }
  }

  return a3;
}

- (opaqueCMSampleBuffer)_newAuxImageEncodingTriggerSbufForSettings:(id)a3 metadata:(id)a4
{
  v15 = 0;
  memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(a3 "processingSettings")];
  if (v6)
  {
    [v6 presentationTimeStamp];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  __dst.presentationTimeStamp = v13;
  OUTLINED_FUNCTION_17_14();
  if (!CMSampleBufferCreate(v7, v8, v9, v10, v11, 0, 0, 1, &__dst, 0, 0, &v15))
  {
    CMSetAttachment(v15, *off_1E798A3C8, a4, 1u);
    CMSetAttachment(v15, @"StillSettings", a3, 1u);
    CMSetAttachment(v15, @"PhotoManifest", [objc_msgSend(a3 "processingSettings")], 1u);
  }

  return v15;
}

- (void)_updateStillImageProcessingFlagsWithDepthMetadataForSbuf:(opaqueCMSampleBuffer *)a3 stillImageSettings:(id)a4
{
  if ([-[BWStillImageProcessorControllerInput encodedAttachedMediaKeys](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self "currentRequest")])
  {
    v6 = OUTLINED_FUNCTION_4_3();
    v9 = CMGetAttachment(v6, v7, v8);
    if (v9)
    {
      v10 = v9;
      v11 = BWStillImageProcessingFlagsForSampleBuffer(a3);
      if ([objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798CFD0), "BOOLValue"}])
      {
        v12 = 32;
      }

      else
      {
        v12 = 16;
      }

      v13 = v12 | v11;
      if (BWCIFilterArrayContainsPortraitFilters([objc_msgSend(a4 "requestedSettings")]))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 | 0x1000000;
      }

      BWStillImageSetProcessingFlagsForSampleBuffer(a3, v14);
    }
  }
}

- (BOOL)_waitUntilTimeoutForInferenceGroupToCompleteAndReturnSuccess
{
  if (!self->_inferenceGroup)
  {
    return 0;
  }

  if ([(BWPhotoEncoderControllerConfiguration *)self->_configuration alwaysAwaitInference])
  {
    v3 = dispatch_time(0, 1000000000);
  }

  else
  {
    v3 = 0;
  }

  return dispatch_group_wait(self->_inferenceGroup, v3) == 0;
}

- (void)inputForStillImageSettings:(uint64_t)a1 portType:(void *)a2 portraitAdjustedImage:(const void *)a3 optionalSampleBuffer:(const void *)a4 forEarlyEncoding:(void *)a5 .cold.1(uint64_t a1, void *a2, const void *a3, const void *a4, void *a5)
{
  *a5 = *(*a1 + 40);
  _Block_object_dispose(a2, 8);
  _Block_object_dispose(a3, 8);
  _Block_object_dispose(a4, 8);
}

uint64_t __40__BWPhotoEncoderController__processSbuf__block_invoke_273_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:.cold.1()
{
  v0 = OUTLINED_FUNCTION_9_58();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:]");
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_6_2();
  }

  return OUTLINED_FUNCTION_1_118();
}

- (uint64_t)_updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:.cold.2()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  v0 = OUTLINED_FUNCTION_13_38();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, 0, *v13, v13[2], OS_LOG_TYPE_DEFAULT);
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:]");
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_6_2();
  }

  return OUTLINED_FUNCTION_1_118();
}

- (uint64_t)_updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:.cold.3()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  v0 = OUTLINED_FUNCTION_13_38();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, 0, *v13, v13[2], OS_LOG_TYPE_DEFAULT);
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:]");
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_6_2();
  }

  return OUTLINED_FUNCTION_1_118();
}

- (uint64_t)_updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:.cold.4()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  v0 = OUTLINED_FUNCTION_13_38();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, 0, *v13, v13[2], OS_LOG_TYPE_DEFAULT);
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:]");
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_6_2();
  }

  return OUTLINED_FUNCTION_1_118();
}

- (uint64_t)_updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:.cold.5()
{
  v0 = OUTLINED_FUNCTION_9_58();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:]");
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_6_2();
  }

  return OUTLINED_FUNCTION_1_118();
}

- (uint64_t)_updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:.cold.6()
{
  v0 = OUTLINED_FUNCTION_9_58();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:]");
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_6_2();
  }

  return OUTLINED_FUNCTION_1_118();
}

- (uint64_t)_updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:.cold.7()
{
  v0 = OUTLINED_FUNCTION_9_58();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:]");
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_6_2();
  }

  return OUTLINED_FUNCTION_1_118();
}

- (uint64_t)_waitForPrewarmingQueueToComplete
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_waitForPiecemealEncodingQueueToComplete
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_waitForPreviewGenerationQueueToComplete
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

@end