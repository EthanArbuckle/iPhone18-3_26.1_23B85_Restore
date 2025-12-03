@interface BWPhotoEncoderController
- ($2825F4736939C4A6D3AD43837233062D)_outputDimensionsForSbuf:(opaqueCMSampleBuffer *)sbuf primaryImageMetadata:(id)metadata sourceDimensions:(id)dimensions requestedStillImageCaptureSettings:(id)settings isStereoPhotoCapture:(BOOL)capture isPrimaryFrame:(BOOL)frame;
- (BOOL)_addAlternateImageForEncodingScheme:(int)scheme flexGTCColorSpace:(CGColorSpace *)space isP3primaries:(BOOL)p3primaries tonemapItemMetadata:(id)metadata parentImageHandle:(int64_t)handle gainMapHandle:(int64_t)mapHandle;
- (BOOL)_addConstantColorConfidenceMapForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (BOOL)_addDepthForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer primaryOutputAspectRatio:(double)ratio parentImageHandle:(int64_t)handle;
- (BOOL)_addGainMapForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer outputDimensions:(id)dimensions primaryOutputAspectRatio:(double)ratio parentImageHandle:(int64_t)handle;
- (BOOL)_addGainMapMetadataForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer parentImageHandle:(int64_t)handle;
- (BOOL)_addPortraitEffectsMatteForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer primaryOutputAspectRatio:(double)ratio parentImageHandle:(int64_t)handle;
- (BOOL)_addSemanticMattesForEncodingScheme:(int)scheme attachedMediaKey:(id)key sampleBuffer:(opaqueCMSampleBuffer *)buffer primaryOutputAspectRatio:(double)ratio settingsID:(int64_t)d orientation:(int)orientation parentImageHandle:(int64_t)handle;
- (BOOL)_addSmartStyleDeltaMapForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer stillImageSettings:(id)settings primaryOutputAspectRatio:(double)ratio;
- (BOOL)_addSmartStyleLinearThumbnailForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer primaryOutputAspectRatio:(double)ratio;
- (BOOL)_depthEncodingNeededForSettings:(id)settings deferredPhotoProxy:(BOOL)proxy;
- (BOOL)_finalImageExpectingSmartStyleReversibilityDataForDeferredPhotoProxy:(BOOL)proxy settings:(id)settings adjustedPhoto:(BOOL)photo;
- (BOOL)_personMaskEncodingNeededForSettings:(id)settings encodingScheme:(int)scheme deferredPhotoProxy:(BOOL)proxy adjustedPhoto:(BOOL)photo personMaskValidHint:(float)hint;
- (BOOL)_smartStyleReversibilityDataNeededForSettings:(id)settings adjustedPhoto:(BOOL)photo deferredPhotoProxy:(BOOL)proxy;
- (BOOL)_waitUntilTimeoutForInferenceGroupToCompleteAndReturnSuccess;
- (BWPhotoEncoderController)initWithConfiguration:(id)configuration;
- (CGImageMetadata)_newAuxiliaryImagePropertiesFromPortraitEffectsMatteMetadata:(id)metadata;
- (CGImageMetadata)_newAuxiliaryImagePropertiesFromSemanticMatteSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (CGImageMetadata)_newGainMapAuxiliaryImagePropertiesForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer denormalizedCropRect:(CGRect)rect requiresPhotosAdjustment:(BOOL)adjustment encodingOptionsOut:(id *)out flexGTCColorSpaceOut:(CGColorSpace *)spaceOut tonemapItemMetadataOut:(id *)metadataOut isP3PrimariesOut:(BOOL *)self0;
- (CGRect)_cropRectForRequestedSettings:(id)settings inputDimensions:(id)dimensions outputDimensions:(id)outputDimensions metadata:(id)metadata processingFlags:(unsigned int)flags;
- (NSString)currentInputsCaptureRequestIdentifier;
- (__IOSurface)_closeContainerAndCopySurfaceForEncodingScheme:(int)scheme;
- (double)_adjustAspectRatio:(double)ratio settings:(id)settings;
- (double)_primaryOutputAspectRatioForSettings:(id)settings;
- (float)mainImageDownscalingFactorForAttachedMediaKey:(id)key attachedMediaMetadata:(id)metadata;
- (id)_depthEncodingOptionsFromDepthMetadata:(id)metadata pixelFormat:(unsigned int)format;
- (id)_encoderManagerForEncodingScheme:(int)scheme;
- (id)_newMetadataAttachmentsForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer requestedSettings:(id)settings captureType:(int)type exifExtraRotationDegrees:(int)degrees;
- (id)_newRawMetadataAttachmentsForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer dngDictionary:(id)dictionary requestedSettings:(id)settings captureType:(int)type dngContainsDepthData:(BOOL)data dngContainsSemanticSegmentationMattes:(BOOL)mattes;
- (id)_semanticSegmentationMatteMediaKeysEncodingNeededForSettings:(id)settings encodingScheme:(int)scheme deferredPhotoProxy:(BOOL)proxy adjustedPhoto:(BOOL)photo personMaskValidHint:(float)hint;
- (id)_thumbnailOptionsForImageWithMetadata:(id)metadata encodingScheme:(int)scheme requestedStillImageCaptureSettings:(id)settings resolvedStillImageCaptureSettings:(id)captureSettings processingFlags:(unsigned int)flags cropRect:(CGRect)rect codecType:(unsigned int)type maxPixelSize:(unint64_t)self0;
- (id)inputForStillImageSettings:(id)settings portType:(id)type portraitAdjustedImage:(BOOL)image optionalSampleBuffer:(opaqueCMSampleBuffer *)buffer forEarlyEncoding:(BOOL)encoding;
- (id)inputInferenceVideoFormatForAttachedMediaKey:(id)key;
- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out;
- (int)_addCompressedThumbnailForEncodingScheme:(int)scheme thumbnailSurface:(__IOSurface *)surface thumbnailSurfaceSize:(unint64_t)size;
- (int)_addMetadataAttachmentsForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer requestedSettings:(id)settings captureType:(int)type parentImageHandle:(int64_t)handle exifExtraRotationDegrees:(int)degrees;
- (int)_addOrPrewarmForAttachedMediaKey:(id)key encodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer metadata:(id)metadata stillImageSettings:(id)settings parentImageHandle:(int64_t)handle;
- (int)_addThumbnailForEncodingScheme:(int)scheme thumbnailPixelBuffer:(__CVBuffer *)buffer metadata:(id)metadata requestedStillImageCaptureSettings:(id)settings resolvedStillImageCaptureSettings:(id)captureSettings processingFlags:(unsigned int)flags cropRect:(CGRect)rect codecType:(unsigned int)self0 maxPixelSize:(unint64_t)self1 parentImageHandle:(int64_t)self2;
- (int)_addUnstyledImageForEncodingScheme:(int)scheme sbuf:(opaqueCMSampleBuffer *)sbuf imageDimensions:(id)dimensions processingFlags:(unsigned int)flags metadata:(id)metadata requestedStillImageCaptureSettings:(id)settings resolvedStillImageCaptureSettings:(id)captureSettings cropRect:(CGRect)self0 usePixelsOutsideCrop:(BOOL)self1;
- (int)_addValue:(id)value toAuxiliaryImageProperties:(CGImageMetadata *)properties namespace:(__CFString *)namespace prefix:(__CFString *)prefix key:(__CFString *)key;
- (int)_computeAndAddSmartStyleDeltaMapToClosedSurfaceContainer:(__IOSurface *)container sampleBuffer:(opaqueCMSampleBuffer *)buffer encodingScheme:(int)scheme stillImageSettings:(id)settings processingFlags:(unsigned int)flags;
- (int)_decompressSmartStylePhotoSurface:(__IOSurface *)surface;
- (int)_desiredOrientationForOrientation:(int)orientation encodingScheme:(int)scheme;
- (int)_encodeDNGForEncodingScheme:(int)scheme rawSampleBuffer:(opaqueCMSampleBuffer *)buffer dngDictionary:(id)dictionary requestedSettings:(id)settings captureType:(int)type cropRect:(CGRect)rect dngContainsDepthData:(BOOL)data dngContainsSemanticSegmentationMattes:(BOOL)self0 processingFlags:(unsigned int)self1;
- (int)_encodePhotoForEncodingScheme:(int)scheme pixelBuffer:(__CVBuffer *)buffer imageDimensions:(id)dimensions processingFlags:(unsigned int)flags metadata:(id)metadata thumbnailOptions:(id)options requestedStillImageCaptureSettings:(id)settings resolvedStillImageCaptureSettings:(id)self0 cropRect:(CGRect)self1 usePixelsOutsideCrop:(BOOL)self2 allowSensorOrientationRotation:(BOOL)self3 mainImageHandleInOut:(int64_t *)self4;
- (int)_encodePrimarySbuf:(opaqueCMSampleBuffer *)sbuf metadata:(id)metadata processingFlags:(unsigned int)flags primaryImageHandleInOut:(int64_t *)out;
- (int)_ensureSetupForPostponedResources;
- (int)_exifExtraRotationDegreesForEncodingScheme:(int)scheme;
- (int)_generatePhotoSurfaceFromEncodedImageBuffer:(opaqueCMSampleBuffer *)buffer photoSurfaceOut:(__IOSurface *)out photoSurfaceSizeOut:(unint64_t *)sizeOut;
- (int)_generatePreviewForSampleBuffer:(opaqueCMSampleBuffer *)buffer requestedStillImageCaptureSettings:(id)settings cropRect:(CGRect)rect previewPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)_getColorSpacePropertiesForSourcePixelFormat:(unsigned int)format sourceWidth:(int)width sourceHeight:(int)height destinationPixelFormat:(unsigned int)pixelFormat;
- (int)_loadCreateAndSetupSmartStyleRenderingProcessor;
- (int)_optionsForEncodingScheme:(int)scheme pixelBuffer:(__CVBuffer *)buffer imageDimensions:(id)dimensions processingFlags:(unsigned int)flags metadata:(id)metadata thumbnailOptions:(id)options requestedStillImageCaptureSettings:(id)settings resolvedStillImageCaptureSettings:(id)self0 cropRect:(CGRect)self1 usePixelsOutsideCrop:(BOOL)self2 allowSensorOrientationRotation:(BOOL)self3 containerOptionsOut:(id *)self4 encodingOptionsOut:(id *)self5;
- (int)_processSbuf;
- (int)_updateSmartStyleDeltaMapForSampleBufferIfNeeded:(opaqueCMSampleBuffer *)needed decompressedStyledPixelBuffer:(__CVBuffer *)buffer stillImageSettings:(id)settings encodingScheme:(int)scheme processingFlags:(unsigned int)flags;
- (int)legacySensorOrientationRotationDegreesForCapture;
- (int)prepare;
- (int)prepareForCurrentConfigurationToBecomeLive;
- (opaqueCMSampleBuffer)_newAuxImageEncodingTriggerSbufForSettings:(id)settings metadata:(id)metadata;
- (uint64_t)_waitForPiecemealEncodingQueueToComplete;
- (uint64_t)_waitForPreviewGenerationQueueToComplete;
- (uint64_t)_waitForPrewarmingQueueToComplete;
- (void)_addOrPrewarmAuxImagesIfNeededForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer metadata:(id)metadata stillImageSettings:(id)settings processingFlags:(unsigned int)flags parentImageHandle:(int64_t)handle;
- (void)_addOrientationOptionsToDictionary:(id)dictionary encodingScheme:(int)scheme metadata:(id)metadata allowSensorOrientationRotation:(BOOL)rotation;
- (void)_addOrientationOptionsToDictionary:(id)dictionary encodingScheme:(int)scheme orientation:(int)orientation allowSensorOrientationRotation:(BOOL)rotation;
- (void)_addQualityOptionsToDictionary:(id)dictionary codecType:(unsigned int)type pixelBuffer:(__CVBuffer *)buffer imageDimensions:(id)dimensions metadata:(id)metadata requestedStillImageCaptureSettings:(id)settings resolvedStillImageCaptureSettings:(id)captureSettings enableHEIFTiling:(BOOL)self0 enableHEIFOrientation:(BOOL)self1 auxImageType:(int)self2;
- (void)_closeContainerForEncodingScheme:(int)scheme;
- (void)_flushCurrentRequest;
- (void)_flushInputsByCaptureIdentifier;
- (void)_getAssetsSizeForEncodingScheme:(int)scheme containerSizeOut:(unint64_t *)out thumbnailSizeOut:(unint64_t *)sizeOut auxiliaryImagesSizeOut:(unint64_t *)imagesSizeOut;
- (void)_handlePrewarmForConstantColorConfidenceMapForEncodingScheme:(int)scheme requestedStillImageCaptureSettings:(id)settings confidenceMapDimensions:(id)dimensions;
- (void)_handlePrewarmForDepthForEncodingScheme:(int)scheme requestedStillImageCaptureSettings:(id)settings prewarmingMetadata:(id)metadata;
- (void)_handlePrewarmForGainMapForEncodingScheme:(int)scheme requestedStillImageCaptureSettings:(id)settings prewarmingMetadata:(id)metadata;
- (void)_handlePrewarmForMainImageForEncodingScheme:(int)scheme prewarmingMetadata:(id)metadata stillImageSettings:(id)settings reservedPrimaryImageHandleOut:(int64_t *)out;
- (void)_handlePrewarmForPortraitEffectsMatteForEncodingScheme:(int)scheme requestedStillImageCaptureSettings:(id)settings;
- (void)_performInferenceWithBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_prewarmAndReserveMainImageHandleForEncodingScheme:(int)scheme prewarmingMetadata:(id)metadata stillImageSettings:(id)settings reservedPrimaryImageHandleOut:(int64_t *)out;
- (void)_propagateSampleBufferGainMapMetadata:(opaqueCMSampleBuffer *)metadata toSampleBufferMetadata:(opaqueCMSampleBuffer *)bufferMetadata;
- (void)_releaseResources;
- (void)_removeCurrentRequestFromInputsByCaptureIdentifier;
- (void)_tagStereoPairGroupForEncodingScheme:(int)scheme stereoPhotoImageHandles:(id *)handles groupMetadata:(id)metadata;
- (void)_updateStillImageProcessingFlagsWithDepthMetadataForSbuf:(opaqueCMSampleBuffer *)sbuf stillImageSettings:(id)settings;
- (void)_waitForPiecemealEncodingGroupToComplete;
- (void)_waitForPiecemealEncodingQueueToComplete;
- (void)_waitForPreviewGenerationGroupToComplete;
- (void)_waitForPreviewGenerationQueueToComplete;
- (void)_waitForPrewarmingQueueToComplete;
- (void)cancelProcessing;
- (void)dealloc;
- (void)inputReceivedNewInputData:(id)data;
- (void)inputReceivedSbufForPiecemealEncoding:(id)encoding sbuf:(opaqueCMSampleBuffer *)sbuf attachedMediaKey:(id)key primaryImageMetadata:(id)metadata processingFlags:(unsigned int)flags;
- (void)reset;
- (void)waitForAllAsynchronousProcessingToComplete;
@end

@implementation BWPhotoEncoderController

- (BWPhotoEncoderController)initWithConfiguration:(id)configuration
{
  v14.receiver = self;
  v14.super_class = BWPhotoEncoderController;
  v4 = [(BWStillImageProcessorController *)&v14 initWithName:@"PhotoEncoder" type:19 configuration:configuration];
  if (v4)
  {
    configurationCopy = configuration;
    v4->_configuration = configurationCopy;
    [(BWStillImageProcessorControllerConfiguration *)configurationCopy figThreadPriority];
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

- (id)inputForStillImageSettings:(id)settings portType:(id)type portraitAdjustedImage:(BOOL)image optionalSampleBuffer:(opaqueCMSampleBuffer *)buffer forEarlyEncoding:(BOOL)encoding
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
  if (!settings)
  {
    goto LABEL_10;
  }

  if (!encoding || BWPhotoEncoderSupportsPiecemealEnocding(settings))
  {
    inputsByCaptureIdentifierQueue = self->_inputsByCaptureIdentifierQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __124__BWPhotoEncoderController_inputForStillImageSettings_portType_portraitAdjustedImage_optionalSampleBuffer_forEarlyEncoding___block_invoke;
    v15[3] = &unk_1E799BC68;
    imageCopy = image;
    v15[4] = settings;
    v15[5] = self;
    v15[6] = type;
    v15[7] = &v27;
    v15[8] = &v17;
    v15[9] = &v21;
    dispatch_sync(inputsByCaptureIdentifierQueue, v15);
    if (buffer)
    {
      [*(v28[0] + 40) addSampleBuffer:buffer];
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
  requestedSettings = [(BWStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] stillImageSettings] requestedSettings];

  return [(FigCaptureStillImageSettings *)requestedSettings captureRequestIdentifier];
}

- (void)inputReceivedSbufForPiecemealEncoding:(id)encoding sbuf:(opaqueCMSampleBuffer *)sbuf attachedMediaKey:(id)key primaryImageMetadata:(id)metadata processingFlags:(unsigned int)flags
{
  sampleBufferOut = 0;
  if (BWCMSampleBufferCreateCopyIncludingMetadata(sbuf, &sampleBufferOut))
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
    block[4] = key;
    block[5] = encoding;
    block[7] = metadata;
    block[8] = sampleBufferOut;
    block[6] = self;
    flagsCopy = flags;
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

- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out
{
  v6 = [(BWStillImageProcessorControllerRequest *)[BWPhotoEncoderControllerRequest alloc] initWithInput:input delegate:delegate];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -12786;
  }

  if (out)
  {
    *out = v7;
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
  currentRequest = [(BWStillImageProcessorController *)self currentRequest];
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
    settingsID = 0;
    v215 = 0;
    _ensureSetupForPostponedResources = 4294954516;
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

  -[NSString isEqualToString:](-[FigCaptureStillImageSettings captureRequestIdentifier](-[BWStillImageSettings requestedSettings](-[BWStillImageProcessorControllerInput stillImageSettings](-[BWStillImageProcessorControllerRequest input](currentRequest, "input"), "stillImageSettings"), "requestedSettings"), "captureRequestIdentifier"), "isEqualToString:", [objc_msgSend(v215 "requestedSettings")]);
  if (dword_1EB58E320)
  {
    LODWORD(v237) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  requestedSettings = [v215 requestedSettings];
  captureSettings = [v215 captureSettings];
  settingsID = [requestedSettings settingsID];
  v210 = BWStillImageProcessingFlagsForSampleBuffer(target);
  IsPrimaryFrame = BWPhotoEncoderIsPrimaryFrame(v210);
  v5 = BWIsDeferredPhotoProxyImage(v210);
  v190 = BWPhotoEncoderDecompressStyledImageForDeltaMap([requestedSettings smartStyle], v5);
  if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] fatalErrorOccurred])
  {
    LODWORD(v237) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LODWORD(_ensureSetupForPostponedResources) = 0;
    goto LABEL_322;
  }

  key = *off_1E798A3C8;
  v7 = [CMGetAttachment(target *off_1E798A3C8];
  v212 = BWPhotoEncoderResolveEncodingSchemeForRequestedSettings(requestedSettings);
  v8 = BWPhotoEncoderResolveEncodingSchemeForCompressedPhotoWithLinDNG(requestedSettings);
  IsLinDNGEncodingScheme = BWPhotoEncoderIsLinDNGEncodingScheme(v212);
  previewEnabled = [requestedSettings previewEnabled];
  v270 = 0;
  ShouldGenerateClientThumbnail = BWPhotoEncoderShouldGenerateClientThumbnail(requestedSettings, v212, &v270);
  v11 = IsPrimaryFrame;
  HIDWORD(v195) = previewEnabled & IsPrimaryFrame;
  v206 = ShouldGenerateClientThumbnail && IsPrimaryFrame;
  if (!previewEnabled)
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
  v202 = BWPhotoEncoderThumbnailEnabled(v212, requestedSettings, &v268, &v267, &v266);
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
    _ensureSetupForPostponedResources = 4294954516;
    goto LABEL_342;
  }

  cf = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(v13);
  v14 = cf | (Height << 32);
  v191 = [(BWPhotoEncoderController *)self _outputDimensionsForSbuf:target primaryImageMetadata:v7 sourceDimensions:v14 requestedStillImageCaptureSettings:requestedSettings isStereoPhotoCapture:[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] isStereoPhotoCapture] isPrimaryFrame:IsPrimaryFrame];
  v310.width = v191.var0;
  v310.height = v191.var1;
  value = CGSizeCreateDictionaryRepresentation(v310);
  [(BWPhotoEncoderController *)self _cropRectForRequestedSettings:requestedSettings inputDimensions:v14 outputDimensions:v191 metadata:v7 processingFlags:v210];
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
    _ensureSetupForPostponedResources = CopyIncludingMetadata;
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
    block[5] = requestedSettings;
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
    _ensureSetupForPostponedResources = 0;
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
    _ensureSetupForPostponedResources = 4294954510;
LABEL_342:
    v38 = target;
    goto LABEL_225;
  }

  v184 = BWPhotoEncoderCodecTypeForEncodingScheme(v212);
  v189 = BWPhotoEncoderFileTypeForEncodingScheme(v212);
  if (!BWPhotoEncoderIsLinDNGEncodingScheme(v212))
  {
    if ([requestedSettings outputFormat] == v184 && objc_msgSend(requestedSettings, "outputFileType") == v189)
    {
      v48 = 0;
      goto LABEL_89;
    }

    goto LABEL_340;
  }

  if ([requestedSettings rawOutputFileType] != v189)
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
  if ([requestedSettings outputFormat] != v184 || objc_msgSend(requestedSettings, "outputFileType") != v47)
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
    _ensureSetupForPostponedResources = [(BWPhotoEncoderController *)self _ensureSetupForPostponedResources];
    if (_ensureSetupForPostponedResources)
    {
      goto LABEL_345;
    }
  }

  reservedPrimaryImageHandle = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] reservedPrimaryImageHandle];
  isStereoPhotoCapture = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] isStereoPhotoCapture];
  if (reservedPrimaryImageHandle == -1)
  {
    v50 = isStereoPhotoCapture;
  }

  else
  {
    v50 = 0;
  }

  if (v50 == 1)
  {
    [(BWPhotoEncoderController *)self _prewarmAndReserveMainImageHandleForEncodingScheme:v212 prewarmingMetadata:v7 stillImageSettings:v215 reservedPrimaryImageHandleOut:&reservedPrimaryImageHandle];
  }

  if (IsPrimaryFrame)
  {
    v269 = reservedPrimaryImageHandle;
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
    v58 = BWPhotoEncoderThumbnailEnabled(1, requestedSettings, &v238, &v237, type);
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
    v61 = [(BWPhotoEncoderController *)self _encodePhotoForEncodingScheme:1 pixelBuffer:pixelBuffer imageDimensions:v197 | (v196 << 32) processingFlags:v210 metadata:v7 thumbnailOptions:0 requestedStillImageCaptureSettings:x resolvedStillImageCaptureSettings:y cropRect:width usePixelsOutsideCrop:v18 allowSensorOrientationRotation:requestedSettings mainImageHandleInOut:captureSettings, v176, &v269];
    _ensureSetupForPostponedResources = v61;
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
      v269 = [(BWPhotoEncoderController *)self _addThumbnailForEncodingScheme:1 thumbnailPixelBuffer:v290[3] metadata:v7 requestedStillImageCaptureSettings:requestedSettings resolvedStillImageCaptureSettings:captureSettings processingFlags:v210 cropRect:0.0 codecType:0.0 maxPixelSize:v237 parentImageHandle:SHIDWORD(v237), v171, *type, v269];
      *(v294 + 6) = v269;
      if (!v269)
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
    v62 = BWPhotoEncoderThumbnailEnabled(v56, requestedSettings, &v237, destination, v240) ? [(BWPhotoEncoderController *)self _thumbnailOptionsForImageWithMetadata:v7 encodingScheme:v212 requestedStillImageCaptureSettings:requestedSettings resolvedStillImageCaptureSettings:captureSettings processingFlags:v210 cropRect:v237 codecType:x maxPixelSize:y, width, v18, *v240]: 0;
    LOWORD(v176) = 256;
    _ensureSetupForPostponedResources = [(BWPhotoEncoderController *)self _encodePhotoForEncodingScheme:v56 pixelBuffer:pixelBuffer imageDimensions:v197 | (v196 << 32) processingFlags:v210 metadata:v7 thumbnailOptions:v62 requestedStillImageCaptureSettings:x resolvedStillImageCaptureSettings:y cropRect:width usePixelsOutsideCrop:v18 allowSensorOrientationRotation:requestedSettings mainImageHandleInOut:captureSettings, v176, &v269];
    if (_ensureSetupForPostponedResources)
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
    if (self->_addUnstyledImageToHEIF && (LOBYTE(v174) = 0, v71 = -[BWPhotoEncoderController _addUnstyledImageForEncodingScheme:sbuf:imageDimensions:processingFlags:metadata:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:cropRect:usePixelsOutsideCrop:](self, "_addUnstyledImageForEncodingScheme:sbuf:imageDimensions:processingFlags:metadata:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:cropRect:usePixelsOutsideCrop:", v187, target, v197 | (v196 << 32), v210, v7, requestedSettings, x, y, width, v18, captureSettings, v174), v71) || ([v70 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798A918], v71 = -[BWPhotoEncoderController _addSmartStyleMetadataForEncodingScheme:sampleBuffer:requestedStillImageCaptureSettings:](self, "_addSmartStyleMetadataForEncodingScheme:sampleBuffer:requestedStillImageCaptureSettings:", v187, target, requestedSettings), v71))
    {
      v174 = v181;
      _ensureSetupForPostponedResources = v71;
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
  if ([requestedSettings payloadType] == 1)
  {
    captureType = [captureSettings captureType];
    _ensureSetupForPostponedResources = [(BWPhotoEncoderController *)self _addMetadataAttachmentsForEncodingScheme:v187 sampleBuffer:target requestedSettings:requestedSettings captureType:captureType parentImageHandle:v269 exifExtraRotationDegrees:[(BWPhotoEncoderController *)self legacySensorOrientationRotationDegreesForCapture]];
    if (_ensureSetupForPostponedResources)
    {
      v64 = 0;
      pixelBuffera = 0;
      cfa = 0;
      goto LABEL_225;
    }
  }

  if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] isStereoPhotoCapture]&& [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] receivedAllFramesInSingleContainer])
  {
    input = [(BWStillImageProcessorControllerRequest *)currentRequest input];
    if (input)
    {
      [(BWStillImageProcessorControllerInput *)input stereoPhotoImageHandles];
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

    input2 = [(BWStillImageProcessorControllerRequest *)currentRequest input];
    if (input2)
    {
      [(BWStillImageProcessorControllerInput *)input2 stereoPhotoImageHandles];
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:&unk_1F2246510 forKeyedSubscript:*MEMORY[0x1E6991B60]];
    array = [MEMORY[0x1E695DF70] array];
    v77 = [objc_msgSend(v186 objectForKeyedSubscript:{0x1F21A9D70), "intValue"}];
    if ((v77 & 4) != 0)
    {
      v227 = *MEMORY[0x1E6973960];
      v228[0] = *MEMORY[0x1E6973958];
      [array addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v228, &v227, 1)}];
    }

    if ((v77 & 2) != 0)
    {
      v225 = *MEMORY[0x1E6973960];
      v226 = *MEMORY[0x1E6973950];
      [array addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v226, &v225, 1)}];
    }

    [dictionary setObject:array forKeyedSubscript:*MEMORY[0x1E6991B68]];
    v78 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BWStillImageProcessorControllerInput monoImageLocationType](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self, "currentRequest"), "input"), "monoImageLocationType")}];
    [dictionary setObject:v78 forKeyedSubscript:*MEMORY[0x1E6973988]];
    input3 = [(BWStillImageProcessorControllerRequest *)currentRequest input];
    if (input3)
    {
      [(BWStillImageProcessorControllerInput *)input3 stereoPhotoImageHandles];
    }

    else
    {
      memset(destination, 0, 24);
    }

    [(BWPhotoEncoderController *)self _tagStereoPairGroupForEncodingScheme:v187 stereoPhotoImageHandles:destination groupMetadata:dictionary];
    v7 = v186;
  }

LABEL_161:
  if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] receivedAllFramesInSingleContainer])
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
    _ensureSetupForPostponedResources = 4294954516;
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
  v81 = [(BWPhotoEncoderController *)self _encodePhotoForEncodingScheme:IsLinDNGEncodingScheme pixelBuffer:pixelBuffer imageDimensions:v267 processingFlags:v210 metadata:v7 thumbnailOptions:0 requestedStillImageCaptureSettings:x resolvedStillImageCaptureSettings:y cropRect:width usePixelsOutsideCrop:v18 allowSensorOrientationRotation:requestedSettings mainImageHandleInOut:captureSettings, v176, &v269];
  *(v294 + 6) = v81;
  if (v81 || (BWPhotoEncoderApplyCropRectOnSampleBufferMetadata(target), CMSetAttachment(target, @"EncodedImageSurfaceCGSize", value, 1u), v82 = [captureSettings captureType], v83 = -[BWPhotoEncoderController _addMetadataAttachmentsForEncodingScheme:sampleBuffer:requestedSettings:captureType:parentImageHandle:exifExtraRotationDegrees:](self, "_addMetadataAttachmentsForEncodingScheme:sampleBuffer:requestedSettings:captureType:parentImageHandle:exifExtraRotationDegrees:", IsLinDNGEncodingScheme, target, requestedSettings, v82, v269, 0), (*(v294 + 6) = v83) != 0))
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
  [(BWPhotoEncoderController *)self _cropRectForRequestedSettings:requestedSettings inputDimensions:BWPixelBufferDimensionsFromSampleBuffer(AttachedMedia) outputDimensions:v191 metadata:v87 processingFlags:v210];
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
    _ensureSetupForPostponedResources = -[BWPhotoEncoderController _encodeDNGForEncodingScheme:rawSampleBuffer:dngDictionary:requestedSettings:captureType:cropRect:dngContainsDepthData:dngContainsSemanticSegmentationMattes:processingFlags:](self, "_encodeDNGForEncodingScheme:rawSampleBuffer:dngDictionary:requestedSettings:captureType:cropRect:dngContainsDepthData:dngContainsSemanticSegmentationMattes:processingFlags:", v212, AttachedMedia, v84, requestedSettings, [captureSettings captureType], v200, v89, v91, v93, v95, v171);
    if (!_ensureSetupForPostponedResources)
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
        primarySampleBuffer = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input:v171] primarySampleBuffer];
        v107 = primarySampleBuffer;
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
            _ensureSetupForPostponedResources = 0;
          }

          else
          {
            _ensureSetupForPostponedResources = 0;
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
          v108 = primarySampleBuffer;
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
          v108 = primarySampleBuffer;
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
          v2692 = [(BWPhotoEncoderController *)self _addThumbnailForEncodingScheme:v212 thumbnailPixelBuffer:v290[3] metadata:v7 requestedStillImageCaptureSettings:requestedSettings resolvedStillImageCaptureSettings:captureSettings processingFlags:v210 cropRect:x codecType:y maxPixelSize:width parentImageHandle:v18, v171, v266, v269];
          *(v294 + 6) = v2692;
          if (v2692)
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
    _ensureSetupForPostponedResources = 0;
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
      if ([requestedSettings payloadType] == 1)
      {
        IOSurface = CVPixelBufferGetIOSurface(v298[3]);
        if (IOSurface)
        {
          CMSetAttachment(v38, @"PreviewSurface", IOSurface, 1u);
        }
      }

      else if (![requestedSettings payloadType])
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
    v308 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[enabled:1 %@ size:%lu]", BWStringFromSurface(), v308];
    if (v118)
    {
LABEL_275:
      v307 = [MEMORY[0x1E696AEC0] stringWithFormat:@"linDNG:[enabled:1 %@ size:%lu]", BWStringFromSurface(), v307];
      goto LABEL_278;
    }
  }

  else
  {
    v308 = @"[enabled:0]";
    if (v118)
    {
      goto LABEL_275;
    }
  }

  v307 = @"linDNG:[enabled:0]";
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
      if (!_ensureSetupForPostponedResources)
      {
        v159 = "succeeded";
      }

      v242 = v159;
      v243 = 2050;
      v244 = settingsID;
      v245 = 1026;
      v246 = _ensureSetupForPostponedResources;
      v247 = 2113;
      v248 = v308;
      v249 = 2113;
      v250 = v307;
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

  receivedAllFramesInSingleContainer = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] receivedAllFramesInSingleContainer];
  if (_ensureSetupForPostponedResources != 0 && IsPrimaryFrame)
  {
    [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] setFatalErrorOccurred:1];
LABEL_318:
    [(BWPhotoEncoderController *)self _closeContainerForEncodingScheme:v213, v172, v175];
    -[BWStillImageProcessorControllerDelegate processorController:didFinishProcessingSampleBuffer:type:processorInput:err:](-[BWStillImageProcessorControllerRequest delegate](currentRequest, "delegate"), "processorController:didFinishProcessingSampleBuffer:type:processorInput:err:", self, targeta, [CMGetAttachment(targeta @"StillImageBufferFrameType"], -[BWStillImageProcessorControllerRequest input](currentRequest, "input"), _ensureSetupForPostponedResources);
    v164 = 1;
    goto LABEL_320;
  }

  if (receivedAllFramesInSingleContainer)
  {
    goto LABEL_318;
  }

  v164 = 0;
LABEL_320:
  [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] finishedProcessingSbuf];
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
  return _ensureSetupForPostponedResources;
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

  input = [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest:v15] input];
  isContainerOpen = [(BWCMPhotoEncoderManager *)self->_cmPhotoEncoderManager isContainerOpen];
  isContainerOpen2 = [(BWDNGEncoderManager *)self->_dngEncoderManager isContainerOpen];
  v7 = BWPhotoEncoderResolveEncodingSchemeForRequestedSettings([(BWStillImageSettings *)[(BWStillImageProcessorControllerInput *)input stillImageSettings] requestedSettings]);
  if (BWPhotoEncoderResolveEncodingSchemeForCompressedPhotoWithLinDNG([(BWStillImageSettings *)[(BWStillImageProcessorControllerInput *)input stillImageSettings] requestedSettings]) == 2 || v7 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  if (([(BWStillImageProcessorControllerInput *)input fatalErrorOccurred]& 1) != 0 || ![(BWStillImageProcessorControllerInput *)input primarySampleBuffer])
  {
    if (isContainerOpen)
    {
      [(BWPhotoEncoderController *)self _closeContainerForEncodingScheme:v9];
    }

    if (isContainerOpen2)
    {
      [(BWPhotoEncoderController *)self _closeContainerForEncodingScheme:v7];
    }
  }

  else
  {
    if (isContainerOpen)
    {
      v21[0] = 0;
      v10 = [(BWPhotoEncoderController *)self _closeContainerAndCopySurfaceForEncodingScheme:v9];
      if (v10)
      {
        v11 = v10;
        [(BWPhotoEncoderController *)self _getAssetsSizeForEncodingScheme:v9 containerSizeOut:v21 thumbnailSizeOut:0 auxiliaryImagesSizeOut:0];
        CMSetAttachment([(BWStillImageProcessorControllerInput *)input primarySampleBuffer], @"EncodedImageSurface", v11, 1u);
        primarySampleBuffer = [(BWStillImageProcessorControllerInput *)input primarySampleBuffer];
        CMSetAttachment(primarySampleBuffer, @"EncodedImageSurfaceSize", [MEMORY[0x1E696AD98] numberWithUnsignedLong:v21[0]], 1u);
      }
    }

    if (isContainerOpen2)
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
        CMSetAttachment(-[BWStillImageProcessorControllerInput primarySampleBuffer](input, "primarySampleBuffer"), @"RawImageAssetSizes", [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3], 1u);
      }
    }

    -[BWStillImageProcessorControllerDelegate processorController:didFinishProcessingSampleBuffer:type:processorInput:err:](-[BWStillImageProcessorControllerRequest delegate](-[BWStillImageProcessorController currentRequest](self, "currentRequest"), "delegate"), "processorController:didFinishProcessingSampleBuffer:type:processorInput:err:", self, -[BWStillImageProcessorControllerInput primarySampleBuffer](input, "primarySampleBuffer"), [CMGetAttachment(-[BWStillImageProcessorControllerInput primarySampleBuffer](input "primarySampleBuffer")], -[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self, "currentRequest"), "input"), 4294950496);
  }

  [(BWPhotoEncoderController *)self _removeCurrentRequestFromInputsByCaptureIdentifier];
  [(BWPhotoEncoderController *)self reset];
}

- (void)_propagateSampleBufferGainMapMetadata:(opaqueCMSampleBuffer *)metadata toSampleBufferMetadata:(opaqueCMSampleBuffer *)bufferMetadata
{
  AttachedMedia = BWSampleBufferGetAttachedMedia(metadata, 0x1F217BF50);
  v6 = *off_1E798A3C8;
  v7 = CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0);
  value = [CMGetAttachment(bufferMetadata v6];
  [value setObject:v7 forKeyedSubscript:*off_1E798A680];
  CMSetAttachment(bufferMetadata, v6, value, 1u);
}

- (double)_primaryOutputAspectRatioForSettings:(id)settings
{
  v5 = FigCaptureAspectRatioForDimensions([objc_msgSend(settings "requestedSettings")]);
  requestedSettings = [settings requestedSettings];

  [(BWPhotoEncoderController *)self _adjustAspectRatio:requestedSettings settings:v5];
  return result;
}

- (int)_addOrPrewarmForAttachedMediaKey:(id)key encodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer metadata:(id)metadata stillImageSettings:(id)settings parentImageHandle:(int64_t)handle
{
  v12 = *&scheme;
  AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, key);
  v16 = @"Adding";
  if (!AttachedMedia)
  {
    v16 = @"Prewarming";
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ aux image {%@}", v16, key];
  [(BWPhotoEncoderController *)self _primaryOutputAspectRatioForSettings:settings];
  v18 = v17;
  v32 = [objc_msgSend(metadata objectForKeyedSubscript:{*off_1E798A5B0), "intValue"}];
  if (![key isEqualToString:0x1F217BF50])
  {
    v21 = 0;
LABEL_10:
    if (([key isEqualToString:@"Depth"] & 1) == 0)
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
        [settings settingsID];
        kdebug_trace();
      }

      v21 = [(BWPhotoEncoderController *)self _addDepthForEncodingScheme:v12 sampleBuffer:buffer primaryOutputAspectRatio:handle parentImageHandle:v18];
      if (*v22 == 1)
      {
        [settings settingsID];
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
      [settings settingsID];
      kdebug_trace();
    }

    v19 = BWSampleBufferGetAttachedMedia(buffer, key);
    [(BWPhotoEncoderController *)self mainImageDownscalingFactorForAttachedMediaKey:key attachedMediaMetadata:CMGetAttachment(v19, *off_1E798A3C8, 0)];
    v21 = -[BWPhotoEncoderController _addGainMapForEncodingScheme:sampleBuffer:outputDimensions:primaryOutputAspectRatio:parentImageHandle:](self, "_addGainMapForEncodingScheme:sampleBuffer:outputDimensions:primaryOutputAspectRatio:parentImageHandle:", v12, buffer, ([objc_msgSend(settings "requestedSettings")] / v20) | ((objc_msgSend(objc_msgSend(settings, "requestedSettings"), "outputHeight") / v20) << 32), handle, v18);
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [settings settingsID];
      kdebug_trace();
    }

    goto LABEL_10;
  }

  -[BWPhotoEncoderController _handlePrewarmForGainMapForEncodingScheme:requestedStillImageCaptureSettings:prewarmingMetadata:](self, "_handlePrewarmForGainMapForEncodingScheme:requestedStillImageCaptureSettings:prewarmingMetadata:", v12, [settings requestedSettings], metadata);
  v21 = 0;
  if ([key isEqualToString:@"Depth"])
  {
LABEL_18:
    -[BWPhotoEncoderController _handlePrewarmForDepthForEncodingScheme:requestedStillImageCaptureSettings:prewarmingMetadata:](self, "_handlePrewarmForDepthForEncodingScheme:requestedStillImageCaptureSettings:prewarmingMetadata:", v12, [settings requestedSettings], metadata);
  }

  v23 = 1;
LABEL_20:
  if ([key isEqualToString:0x1F21AABB0])
  {
    if (AttachedMedia)
    {
      v24 = MEMORY[0x1E695FF58];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        [settings settingsID];
        kdebug_trace();
      }

      v21 = [(BWPhotoEncoderController *)self _addPortraitEffectsMatteForEncodingScheme:v12 sampleBuffer:buffer primaryOutputAspectRatio:handle parentImageHandle:v18];
      if (*v24 == 1)
      {
        [settings settingsID];
        kdebug_trace();
      }
    }

    else
    {
      -[BWPhotoEncoderController _handlePrewarmForPortraitEffectsMatteForEncodingScheme:requestedStillImageCaptureSettings:](self, "_handlePrewarmForPortraitEffectsMatteForEncodingScheme:requestedStillImageCaptureSettings:", v12, [settings requestedSettings]);
      v23 = 1;
    }
  }

  if ([key isEqualToString:@"PersonSemanticsHair"] & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"PersonSemanticsSkin") & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"PersonSemanticsTeeth") & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"PersonSemanticsGlasses"))
  {
    if (!AttachedMedia)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v31 = [key isEqualToString:0x1F21AAD30];
    if (!AttachedMedia || !v31)
    {
      goto LABEL_36;
    }
  }

  v25 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [settings settingsID];
    kdebug_trace();
  }

  v21 = -[BWPhotoEncoderController _addSemanticMattesForEncodingScheme:attachedMediaKey:sampleBuffer:primaryOutputAspectRatio:settingsID:orientation:parentImageHandle:](self, "_addSemanticMattesForEncodingScheme:attachedMediaKey:sampleBuffer:primaryOutputAspectRatio:settingsID:orientation:parentImageHandle:", v12, key, buffer, [objc_msgSend(settings "requestedSettings")], v32, handle, v18);
  if (*v25 == 1)
  {
    [settings settingsID];
    kdebug_trace();
  }

LABEL_36:
  v26 = [key isEqualToString:0x1F21AAF70];
  if (AttachedMedia && v26)
  {
    v27 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [settings settingsID];
      kdebug_trace();
    }

    v21 = [(BWPhotoEncoderController *)self _addSmartStyleLinearThumbnailForEncodingScheme:v12 sampleBuffer:buffer primaryOutputAspectRatio:v18];
    if (*v27 == 1)
    {
      [settings settingsID];
      kdebug_trace();
    }
  }

  if ([key isEqualToString:0x1F21AB170])
  {
    if (!AttachedMedia)
    {
      -[BWPhotoEncoderController _handlePrewarmForConstantColorConfidenceMapForEncodingScheme:requestedStillImageCaptureSettings:confidenceMapDimensions:](self, "_handlePrewarmForConstantColorConfidenceMapForEncodingScheme:requestedStillImageCaptureSettings:confidenceMapDimensions:", v12, [settings requestedSettings], -[BWPhotoEncoderControllerConfiguration constantColorConfidenceMapDimensions](self->_configuration, "constantColorConfidenceMapDimensions"));
      goto LABEL_52;
    }

    v28 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [settings settingsID];
      kdebug_trace();
    }

    v21 = [(BWPhotoEncoderController *)self _addConstantColorConfidenceMapForEncodingScheme:v12 sampleBuffer:buffer];
    if (*v28 == 1)
    {
      [settings settingsID];
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

- (float)mainImageDownscalingFactorForAttachedMediaKey:(id)key attachedMediaMetadata:(id)metadata
{
  [objc_msgSend(metadata objectForKeyedSubscript:{*off_1E798A788), "floatValue"}];
  if (!self->_preferMainImageDownscalingFactorByAttachedMediaKeyFromSampleBuffer || result == 0.0)
  {
    v7 = [(NSDictionary *)[(BWPhotoEncoderControllerConfiguration *)self->_configuration attachedMediaConfigurationByAttachedMediaKey] objectForKeyedSubscript:key];

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

- (id)_encoderManagerForEncodingScheme:(int)scheme
{
  if ((scheme - 1) > 4)
  {
    return 0;
  }

  else
  {
    return *(&self->super.super.isa + *off_1E799BD00[scheme - 1]);
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

- (BOOL)_depthEncodingNeededForSettings:(id)settings deferredPhotoProxy:(BOOL)proxy
{
  proxyCopy = proxy;
  v6 = [-[BWStillImageProcessorControllerInput encodedAttachedMediaKeys](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self "currentRequest")];
  if ([objc_msgSend(settings "requestedSettings")])
  {
    v7 = [objc_msgSend(settings "requestedSettings")];
  }

  else
  {
    v7 = 0;
  }

  v8 = BWCIFilterArrayContainsPortraitFilters([objc_msgSend(settings "requestedSettings")]);
  v9 = [objc_msgSend(settings "captureSettings")];
  if (v6)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    return v7 & (!proxyCopy | v8) | (v9 >> 38) & 1;
  }

  return v10;
}

- (BOOL)_personMaskEncodingNeededForSettings:(id)settings encodingScheme:(int)scheme deferredPhotoProxy:(BOOL)proxy adjustedPhoto:(BOOL)photo personMaskValidHint:(float)hint
{
  photoCopy = photo;
  proxyCopy = proxy;
  v13 = [-[BWStillImageProcessorControllerInput encodedAttachedMediaKeys](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self "currentRequest")];
  if ([objc_msgSend(settings "requestedSettings")])
  {
    v14 = [objc_msgSend(settings "requestedSettings")];
  }

  else
  {
    v14 = 0;
  }

  v15 = BWCIFilterArrayContainsPortraitFilters([objc_msgSend(settings "requestedSettings")]);
  IsLinDNGEncodingScheme = BWPhotoEncoderIsLinDNGEncodingScheme(scheme);
  if ([(BWPhotoEncoderController *)self _smartStyleReversibilityDataNeededForSettings:settings adjustedPhoto:photoCopy deferredPhotoProxy:proxyCopy])
  {
    [(NSDictionary *)[(BWPhotoEncoderControllerConfiguration *)self->_configuration attachedMediaConfigurationByAttachedMediaKey] objectForKeyedSubscript:0x1F21AABB0];
  }

  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = v14 & (!proxyCopy | v15) | IsLinDNGEncodingScheme;
  }

  smartStyleRenderingVersion = [(BWPhotoEncoderControllerConfiguration *)self->_configuration smartStyleRenderingVersion];
  v19 = (hint > 0.0) & (v13 ^ 1);
  if (smartStyleRenderingVersion < 1)
  {
    v19 = v17;
  }

  return v19 & 1;
}

- (id)_semanticSegmentationMatteMediaKeysEncodingNeededForSettings:(id)settings encodingScheme:(int)scheme deferredPhotoProxy:(BOOL)proxy adjustedPhoto:(BOOL)photo personMaskValidHint:(float)hint
{
  photoCopy = photo;
  proxyCopy = proxy;
  array = [MEMORY[0x1E695DF70] array];
  if ([objc_msgSend(objc_msgSend(settings "requestedSettings")])
  {
    v14 = [objc_msgSend(settings "requestedSettings")];
  }

  else
  {
    v14 = 0;
  }

  v15 = BWCIFilterArrayContainsPortraitFilters([objc_msgSend(settings "requestedSettings")]);
  IsLinDNGEncodingScheme = BWPhotoEncoderIsLinDNGEncodingScheme(scheme);
  v17 = [(BWPhotoEncoderController *)self _smartStyleReversibilityDataNeededForSettings:settings adjustedPhoto:photoCopy deferredPhotoProxy:proxyCopy];
  if (v14)
  {
    if (!proxyCopy | v15)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v18 = [objc_msgSend(settings "requestedSettings")];
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
              [array addObject:v23];
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
    attachedMediaConfigurationByAttachedMediaKey = [(BWPhotoEncoderControllerConfiguration *)self->_configuration attachedMediaConfigurationByAttachedMediaKey];
    v25 = [(NSDictionary *)attachedMediaConfigurationByAttachedMediaKey countByEnumeratingWithState:&v33 objects:v32 count:16];
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
            objc_enumerationMutation(attachedMediaConfigurationByAttachedMediaKey);
          }

          v29 = *(*(&v33 + 1) + 8 * v28);
          if (([-[BWStillImageProcessorControllerInput encodedAttachedMediaKeys](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self "currentRequest")] & 1) == 0 && objc_msgSend(-[NSDictionary objectForKeyedSubscript:](-[BWPhotoEncoderControllerConfiguration attachedMediaConfigurationByAttachedMediaKey](self->_configuration, "attachedMediaConfigurationByAttachedMediaKey"), "objectForKeyedSubscript:", v29), "requiresEncoding") && BWPhotoEncoderSemanticSegmentationMatteURNForAttachedMediaKey(v29))
          {
            [array addObject:v29];
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = [(NSDictionary *)attachedMediaConfigurationByAttachedMediaKey countByEnumeratingWithState:&v33 objects:v32 count:16];
      }

      while (v26);
    }
  }

  smartStyleRenderingVersion = [(BWPhotoEncoderControllerConfiguration *)self->_configuration smartStyleRenderingVersion];
  if (hint <= 0.0 && smartStyleRenderingVersion >= 1)
  {
    [array removeObject:@"PersonSemanticsSkin"];
  }

  return array;
}

- (BOOL)_smartStyleReversibilityDataNeededForSettings:(id)settings adjustedPhoto:(BOOL)photo deferredPhotoProxy:(BOOL)proxy
{
  smartStyleReversibilityEnabled = [(BWPhotoEncoderControllerConfiguration *)self->_configuration smartStyleReversibilityEnabled];
  if (smartStyleReversibilityEnabled)
  {
    if ([objc_msgSend(settings "requestedSettings")])
    {
      LOBYTE(smartStyleReversibilityEnabled) = !photo && !proxy;
    }

    else
    {
      LOBYTE(smartStyleReversibilityEnabled) = 0;
    }
  }

  return smartStyleReversibilityEnabled;
}

- (CGRect)_cropRectForRequestedSettings:(id)settings inputDimensions:(id)dimensions outputDimensions:(id)outputDimensions metadata:(id)metadata processingFlags:(unsigned int)flags
{
  v11 = MEMORY[0x1E695F058];
  v13 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  if (![objc_msgSend(settings "bravoConstituentImageDeliveryDeviceTypes")])
  {
    v30 = width;
    v31 = height;
    v32 = *v11;
    v33 = v11[1];
    FigCFDictionaryGetCGRectIfPresent();
    v16 = FigCaptureAspectRatioForDimensions(*&outputDimensions);
    [(BWPhotoEncoderController *)self _adjustAspectRatio:settings settings:?];
    v18 = v17;
    if (v17 == v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = v17;
    }

    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(dimensions.var0, *&dimensions >> 32, *&v32, *(&v32 + 1), *&v33, *(&v33 + 1), v19);
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
      if (v22 == outputDimensions && dimensions != outputDimensions || v18 != v16)
      {
        v12 = y;
        v13 = x;
        goto LABEL_14;
      }

      if (v22 != dimensions)
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
  settings = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] settings];
  legacySensorOrientationRotationDegrees = [(BWPhotoEncoderControllerConfiguration *)self->_configuration legacySensorOrientationRotationDegrees];
  clientIsCameraOrDerivative = [(BWPhotoEncoderControllerConfiguration *)self->_configuration clientIsCameraOrDerivative];

  return BWCameraSensorOrientationCompensationDegreesCWForRequestedSettings(settings, legacySensorOrientationRotationDegrees, clientIsCameraOrDerivative);
}

- (int)_exifExtraRotationDegreesForEncodingScheme:(int)scheme
{
  if ((scheme - 1) > 1)
  {
    return 0;
  }

  else
  {
    return [(BWPhotoEncoderController *)self legacySensorOrientationRotationDegreesForCapture];
  }
}

- (void)_addOrientationOptionsToDictionary:(id)dictionary encodingScheme:(int)scheme orientation:(int)orientation allowSensorOrientationRotation:(BOOL)rotation
{
  rotationCopy = rotation;
  v7 = *&orientation;
  v8 = *&scheme;
  requiresPhotosAdjustment = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] requiresPhotosAdjustment];
  if (v8 == 5 || requiresPhotosAdjustment)
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69918A8]];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x1E6991918]];
    if (!rotationCopy)
    {
      return;
    }
  }

  else if (!rotationCopy)
  {
    return;
  }

  v13 = [(BWPhotoEncoderController *)self _desiredOrientationForOrientation:v7 encodingScheme:v8];
  if (v13 != v7)
  {
    v14 = v13;
    v15 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x1E6991918]];
    v16 = [MEMORY[0x1E696AD98] numberWithInt:v14];
    v17 = *MEMORY[0x1E69918E8];

    [dictionary setObject:v16 forKeyedSubscript:v17];
  }
}

- (void)_addOrientationOptionsToDictionary:(id)dictionary encodingScheme:(int)scheme metadata:(id)metadata allowSensorOrientationRotation:(BOOL)rotation
{
  rotationCopy = rotation;
  v7 = *&scheme;
  v10 = [objc_msgSend(metadata objectForKeyedSubscript:{*off_1E798A5B0), "intValue"}];
  if (v10)
  {

    [(BWPhotoEncoderController *)self _addOrientationOptionsToDictionary:dictionary encodingScheme:v7 orientation:v10 allowSensorOrientationRotation:rotationCopy];
  }
}

- (void)_addQualityOptionsToDictionary:(id)dictionary codecType:(unsigned int)type pixelBuffer:(__CVBuffer *)buffer imageDimensions:(id)dimensions metadata:(id)metadata requestedStillImageCaptureSettings:(id)settings resolvedStillImageCaptureSettings:(id)captureSettings enableHEIFTiling:(BOOL)self0 enableHEIFOrientation:(BOOL)self1 auxImageType:(int)self2
{
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991938]];
  if (type == 1752589105)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:tiling];
    [dictionary setObject:v24 forKeyedSubscript:*MEMORY[0x1E69919A8]];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    adaptiveQualityValueForHEIF = self->_adaptiveQualityValueForHEIF;
    if (adaptiveQualityValueForHEIF)
    {
      if (dimensions.var1 * dimensions.var0 <= 11999999)
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
      [dictionary setObject:v31 forKeyedSubscript:*MEMORY[0x1E6991B90]];
    }

    else
    {
      v30 = 0.85;
    }

    v40 = 0;
    if (imageType == 12)
    {
      *&v26 = self->_heifQualityOverride;
      [settings smartStyle];
      v41 = BWPhotoEncoderHEIFDeltaMapDownscalingFactor();
      if (v41 > 1.0)
      {
        if (dimensions.var0 <= dimensions.var1)
        {
          var1 = dimensions.var1;
        }

        else
        {
          var1 = dimensions.var0;
        }

        v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{vcvts_n_u32_f32(floorf(((var1 / v41) + 63.0) * 0.015625), 6uLL)}];
        [dictionary setObject:v43 forKeyedSubscript:*MEMORY[0x1E6991940]];
      }

      v30 = BWPhotoEncoderHEIFDeltaMapQuality([settings smartStyle]);
      v40 = 1;
    }

    if (v30 < 0.0)
    {
      v30 = 0.0;
    }

    v44 = [objc_msgSend(metadata objectForKeyedSubscript:{*off_1E798A5C0), "intValue"}];
    if (metadata)
    {
      v45 = 1;
    }

    else
    {
      v45 = buffer == 0;
    }

    if (!v45 || (v40 & 1) != 0 || v44 == 4)
    {
      v50 = fminf(v30, 1.0);
      v48 = *MEMORY[0x1E6991978];
      if (v50 != 1.0)
      {
        [dictionary setObject:&unk_1F2246588 forKeyedSubscript:v48];
        *&v53 = v50;
        v54 = [MEMORY[0x1E696AD98] numberWithFloat:v53];
        [dictionary setObject:v54 forKeyedSubscript:*MEMORY[0x1E6991B90]];
        goto LABEL_50;
      }

      v47 = &unk_1F22465A0;
      dictionaryCopy = dictionary;
    }

    else
    {
      [captureSettings captureType];
      [(BWPhotoEncoderControllerConfiguration *)self->_configuration zeroShutterLagEnabled];
      IsHighGainImage = BWPhotoEncoderIsHighGainImage(metadata);
      [dictionary setObject:&unk_1F22465B8 forKeyedSubscript:*MEMORY[0x1E6991978]];
      if (IsHighGainImage)
      {
        v47 = &unk_1F2246570;
      }

      else
      {
        v47 = &unk_1F2246588;
      }

      v48 = *MEMORY[0x1E6991B88];
      dictionaryCopy = dictionary;
    }

    [dictionaryCopy setObject:v47 forKeyedSubscript:v48];
LABEL_50:
    if ([dictionary count])
    {
      [dictionary setObject:dictionary forKeyedSubscript:*MEMORY[0x1E6991970]];
    }

    if (orientation)
    {
      v51 = [MEMORY[0x1E696AD98] numberWithInt:{FigCaptureMetadataUtilitiesStillImageExifOrientationFromRotationDegreesAndMirrored(objc_msgSend(settings, "outputRotationDegrees"), objc_msgSend(settings, "outputMirroring"), 0, objc_msgSend(settings, "metadata"))}];
      v52 = *MEMORY[0x1E6991918];

      [dictionary setObject:v51 forKeyedSubscript:v52];
    }

    return;
  }

  if (type != 1785750887)
  {
    return;
  }

  vtCompressionProperties = [settings vtCompressionProperties];
  v20 = [vtCompressionProperties objectForKeyedSubscript:*MEMORY[0x1E69837E0]];
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

  v32 = [objc_msgSend(metadata objectForKeyedSubscript:{*off_1E798A5C0), "intValue"}];
  if (metadata)
  {
    v33 = 1;
  }

  else
  {
    v33 = buffer == 0;
  }

  if (!v33 || (!v21 ? (v34 = v32 == 4) : (v34 = 1), v34))
  {
    v37 = 0.0;
    if (v23 >= 0.0)
    {
      v37 = v23;
    }

    v38 = fminf(v37, 1.0);
    [dictionary setObject:&unk_1F2246588 forKeyedSubscript:*MEMORY[0x1E6991978]];
    v57 = *MEMORY[0x1E6991B90];
    *&v39 = v38;
    v58 = [MEMORY[0x1E696AD98] numberWithFloat:v39];
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    goto LABEL_25;
  }

  v56 = 0;
  v55 = 0;
  captureType = [captureSettings captureType];
  [(BWPhotoEncoderControllerConfiguration *)self->_configuration zeroShutterLagEnabled];
  if (!BWPhotoEncoderDefaultJPEGIndexedQTable(buffer, metadata, captureType, &v55, &v56))
  {
    [dictionary setObject:&unk_1F2246570 forKeyedSubscript:*MEMORY[0x1E6991978]];
    v36 = [MEMORY[0x1E696AD98] numberWithInt:v55];
LABEL_25:
    [dictionary setObject:v36 forKeyedSubscript:*MEMORY[0x1E6991970]];
    return;
  }

  [BWPhotoEncoderController _addQualityOptionsToDictionary:codecType:pixelBuffer:imageDimensions:metadata:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:enableHEIFTiling:enableHEIFOrientation:auxImageType:];
}

- ($2825F4736939C4A6D3AD43837233062D)_outputDimensionsForSbuf:(opaqueCMSampleBuffer *)sbuf primaryImageMetadata:(id)metadata sourceDimensions:(id)dimensions requestedStillImageCaptureSettings:(id)settings isStereoPhotoCapture:(BOOL)capture isPrimaryFrame:(BOOL)frame
{
  captureCopy = capture;
  outputDimensions = [settings outputDimensions];
  if (captureCopy && !frame)
  {
    outputDimensions = [(BWPhotoEncoderControllerConfiguration *)self->_configuration stereoPhotoOutputDimensions];
  }

  v15 = HIDWORD(outputDimensions);
  v16 = [metadata objectForKeyedSubscript:*off_1E798A780];
  if (v16)
  {
    v17 = v16;
    [v16 floatValue];
    v19 = FigCaptureScaledDimensions(outputDimensions, v18);
    [v17 floatValue];
    v21 = FigCaptureScaledDimensions(outputDimensions, v20);
    if (outputDimensions >= SHIDWORD(outputDimensions))
    {
      v22 = HIDWORD(v21);
    }

    else
    {
      v22 = HIDWORD(outputDimensions);
    }

    if (outputDimensions < SHIDWORD(outputDimensions))
    {
      LODWORD(outputDimensions) = v21;
    }

    v23 = FigCaptureAspectRatioForDimensions([settings outputDimensions]);
    v24 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(outputDimensions | (v22 << 32), v23);
    if (v19 != 2016 && dimensions == 0x5E8000007E0 && HIDWORD(v19) == 1512)
    {
      outputDimensions = 0x5E8000007E0;
    }

    else
    {
      outputDimensions = v24;
    }

    v15 = HIDWORD(outputDimensions);
  }

  return (outputDimensions | (v15 << 32));
}

- (id)_thumbnailOptionsForImageWithMetadata:(id)metadata encodingScheme:(int)scheme requestedStillImageCaptureSettings:(id)settings resolvedStillImageCaptureSettings:(id)captureSettings processingFlags:(unsigned int)flags cropRect:(CGRect)rect codecType:(unsigned int)type maxPixelSize:(unint64_t)self0
{
  v10 = *&type;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v17 = *&scheme;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
    [dictionary setObject:DictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E6991998]];
    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }
  }

  LOWORD(v26) = 0;
  -[BWPhotoEncoderController _addQualityOptionsToDictionary:codecType:pixelBuffer:imageDimensions:metadata:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:enableHEIFTiling:enableHEIFOrientation:auxImageType:](self, "_addQualityOptionsToDictionary:codecType:pixelBuffer:imageDimensions:metadata:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:enableHEIFTiling:enableHEIFOrientation:auxImageType:", dictionary, v10, 0, [settings thumbnailWidth] | (objc_msgSend(settings, "thumbnailHeight") << 32), metadata, settings, captureSettings, v26);
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
  [dictionary setObject:v22 forKeyedSubscript:*MEMORY[0x1E69918D0]];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:size];
  [dictionary setObject:v23 forKeyedSubscript:*MEMORY[0x1E6991940]];
  if ([(BWPhotoEncoderControllerConfiguration *)self->_configuration usesHighEncodingPriority])
  {
    [dictionary setObject:&unk_1F2246540 forKeyedSubscript:*MEMORY[0x1E6991960]];
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BWStillImageProcessorControllerConfiguration figThreadPriority](self->_configuration, "figThreadPriority")}];
  [dictionary setObject:v24 forKeyedSubscript:*MEMORY[0x1E69919A0]];
  [(BWPhotoEncoderController *)self _addOrientationOptionsToDictionary:dictionary encodingScheme:v17 metadata:metadata allowSensorOrientationRotation:1];
  if ([settings outputFormat] == 1785750887)
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991938]];
    if (![settings payloadType])
    {
      [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991910]];
    }
  }

  return dictionary;
}

- (CGImageMetadata)_newAuxiliaryImagePropertiesFromPortraitEffectsMatteMetadata:(id)metadata
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

  v9 = [objc_msgSend(metadata objectForKeyedSubscript:{*off_1E798D218), "intValue"}];
  if (-[BWPhotoEncoderController _addValue:toAuxiliaryImageProperties:namespace:prefix:key:](self, "_addValue:toAuxiliaryImageProperties:namespace:prefix:key:", [MEMORY[0x1E696AD98] numberWithInt:v9], v6, v7, v8, *off_1E798D210))
  {
    [BWPhotoEncoderController _newAuxiliaryImagePropertiesFromPortraitEffectsMatteMetadata:];
    goto LABEL_9;
  }

  return v6;
}

- (int)_updateSmartStyleDeltaMapForSampleBufferIfNeeded:(opaqueCMSampleBuffer *)needed decompressedStyledPixelBuffer:(__CVBuffer *)buffer stillImageSettings:(id)settings encodingScheme:(int)scheme processingFlags:(unsigned int)flags
{
  v13 = objc_alloc_init(NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMI%@V%d", @"SmartStyleProcessorInputOutput", -[BWPhotoEncoderControllerConfiguration smartStyleRenderingVersion](self->_configuration, "smartStyleRenderingVersion")]));
  settingsCopy = settings;
  v14 = BWPhotoEncoderDeltaMapPixelFormat([objc_msgSend(settings "requestedSettings")], scheme);
  ImageBuffer = buffer;
  if (!buffer)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(needed);
    if (!ImageBuffer)
    {
      [BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:];
      finishProcessing = -12783;
      goto LABEL_53;
    }
  }

  flagsCopy = flags;
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
    finishProcessing = -12780;
    goto LABEL_45;
  }

LABEL_15:
  AttachedMedia = BWSampleBufferGetAttachedMedia(needed, 0x1F21AAFF0);
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
  v30 = BWSampleBufferGetAttachedMedia(needed, 0x1F21AAFB0);
  if (v30)
  {
    v31 = CMSampleBufferGetImageBuffer(v30);
    if (!v31)
    {
      [BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:];
LABEL_42:
      finishProcessing = -12783;
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
  v33 = CMGetAttachment(needed, *off_1E798A3C8, 0);
  if (!v33)
  {
    [BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:];
    goto LABEL_44;
  }

  if (buffer)
  {
    v34 = Width;
    v35 = Height;
    v36 = 0.0;
    v37 = 0.0;
    v38 = settingsCopy;
    v39 = flagsCopy;
  }

  else
  {
    v40 = v33;
    v38 = settingsCopy;
    requestedSettings = [settingsCopy requestedSettings];
    v42 = [objc_msgSend(settingsCopy "requestedSettings")];
    v43 = v18;
    v39 = flagsCopy;
    [(BWPhotoEncoderController *)self _cropRectForRequestedSettings:requestedSettings inputDimensions:v43 outputDimensions:v42 metadata:v40 processingFlags:flagsCopy];
    v36 = v44;
    v37 = v45;
    v34 = v46;
    v35 = v47;
  }

  v48 = BWSampleBufferGetAttachedMedia(needed, 0x1F21AAF90);
  v13 = v76;
  if (!v48)
  {
    [BWPhotoEncoderController _updateSmartStyleDeltaMapForSampleBufferIfNeeded:decompressedStyledPixelBuffer:stillImageSettings:encodingScheme:processingFlags:];
LABEL_49:
    finishProcessing = -12783;
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
  resetState = [(CMISmartStyleProcessor *)self->_smartStyleProcessor resetState];
  if (resetState)
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
    getDefaultProcessorConfigurationForStillsReversibility = [v65 getDefaultProcessorConfigurationForStillsReversibility];
  }

  else
  {
    getDefaultProcessorConfigurationForStillsReversibility = [v65 getDefaultProcessorConfigurationForStillsReversibility3x4];
  }

  [(CMISmartStyleProcessor *)self->_smartStyleProcessor setConfiguration:getDefaultProcessorConfigurationForStillsReversibility];
  resetState = [(CMISmartStyleProcessor *)self->_smartStyleProcessor prepareToProcess:4];
  if (resetState || (resetState = [(CMISmartStyleProcessor *)self->_smartStyleProcessor process]) != 0)
  {
LABEL_50:
    finishProcessing = resetState;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  }

  else
  {
    finishProcessing = [(CMISmartStyleProcessor *)self->_smartStyleProcessor finishProcessing];
    if (!finishProcessing)
    {
      [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] setDeltaMapIsValid:1];

      return finishProcessing;
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

  return finishProcessing;
}

- (int)_computeAndAddSmartStyleDeltaMapToClosedSurfaceContainer:(__IOSurface *)container sampleBuffer:(opaqueCMSampleBuffer *)buffer encodingScheme:(int)scheme stillImageSettings:(id)settings processingFlags:(unsigned int)flags
{
  v7 = *&flags;
  v9 = *&scheme;
  v13 = [(BWPhotoEncoderController *)self _decompressSmartStylePhotoSurface:?];
  if (v13 || (v13 = [(BWPhotoEncoderController *)self _updateSmartStyleDeltaMapForSampleBufferIfNeeded:buffer decompressedStyledPixelBuffer:self->_smartStyleDecompressedStyledPixelBuffer stillImageSettings:settings encodingScheme:v9 processingFlags:v7]) != 0)
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
    v18 = [v15 openExistingContainer:container options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v29, v28, 2)}];
    if (!v18)
    {
      [(BWPhotoEncoderController *)self _primaryOutputAspectRatioForSettings:settings];
      [(BWPhotoEncoderController *)self _addSmartStyleDeltaMapForEncodingScheme:v9 sampleBuffer:buffer stillImageSettings:settings primaryOutputAspectRatio:?];
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
      [objc_msgSend(settings "requestedSettings")];
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v18;
}

- (CGImageMetadata)_newAuxiliaryImagePropertiesFromSemanticMatteSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v4 = CMGetAttachment(buffer, *off_1E798D2E0, 0);
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

- (int)_generatePhotoSurfaceFromEncodedImageBuffer:(opaqueCMSampleBuffer *)buffer photoSurfaceOut:(__IOSurface *)out photoSurfaceSizeOut:(unint64_t *)sizeOut
{
  blockBufferOut = 0;
  DataBuffer = CMSampleBufferGetDataBuffer(buffer);
  if (out && DataBuffer)
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
          *out = v11;
          LODWORD(v11) = 0;
          if (sizeOut)
          {
            *sizeOut = v13;
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

- (int)_generatePreviewForSampleBuffer:(opaqueCMSampleBuffer *)buffer requestedStillImageCaptureSettings:(id)settings cropRect:(CGRect)rect previewPixelBuffer:(__CVBuffer *)pixelBuffer
{
  if (!self->_previewPixelConverter)
  {
    [BWPhotoEncoderController _generatePreviewForSampleBuffer:requestedStillImageCaptureSettings:cropRect:previewPixelBuffer:];
    return -12786;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer)
  {
    [BWPhotoEncoderController _generatePreviewForSampleBuffer:requestedStillImageCaptureSettings:cropRect:previewPixelBuffer:];
    return -12780;
  }

  v14 = ImageBuffer;
  PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
  v16 = CVPixelBufferGetWidth(v14);
  v17 = CVPixelBufferGetHeight(v14);
  previewWidth = [settings previewWidth];
  previewHeight = [settings previewHeight];
  payloadType = [settings payloadType];
  if (payloadType >= 2)
  {
    [BWPhotoEncoderController _generatePreviewForSampleBuffer:requestedStillImageCaptureSettings:cropRect:previewPixelBuffer:];
    return -12780;
  }

  v20 = payloadType;
  pixelBufferCopy = pixelBuffer;
  if (payloadType)
  {
    bracketImageCount = 0;
  }

  else if ([settings bracketType])
  {
    bracketImageCount = [settings bracketImageCount];
  }

  else
  {
    bracketImageCount = 1;
  }

  v22 = -[FigCapturePixelConverter updateOutputPixelFormat:dimensions:poolCapacity:colorSpaceProperties:](self->_previewPixelConverter, "updateOutputPixelFormat:dimensions:poolCapacity:colorSpaceProperties:", [settings previewFormat], previewWidth | (previewHeight << 32), bracketImageCount, -[BWPhotoEncoderController _getColorSpacePropertiesForSourcePixelFormat:sourceWidth:sourceHeight:destinationPixelFormat:](self, "_getColorSpacePropertiesForSourcePixelFormat:sourceWidth:sourceHeight:destinationPixelFormat:", PixelFormatType, v16, v17, objc_msgSend(settings, "previewFormat")));
  if (v22)
  {
    height = v22;
    [BWPhotoEncoderController _generatePreviewForSampleBuffer:requestedStillImageCaptureSettings:cropRect:previewPixelBuffer:];
  }

  else
  {
    v27 = 0;
    height = [(FigCapturePixelConverter *)self->_previewPixelConverter convertPixelBuffer:v14 cropRect:v20 == 0 allocateOutputFromBufferPool:&v27 outputPixelBuffer:x, y, width, height];
    if (height)
    {
      [BWPhotoEncoderController _generatePreviewForSampleBuffer:requestedStillImageCaptureSettings:cropRect:previewPixelBuffer:];
    }

    else
    {
      *pixelBufferCopy = v27;
    }
  }

  return height;
}

- (int)_getColorSpacePropertiesForSourcePixelFormat:(unsigned int)format sourceWidth:(int)width sourceHeight:(int)height destinationPixelFormat:(unsigned int)pixelFormat
{
  v6 = *&pixelFormat;
  v7 = *&height;
  v9 = *&format;
  v10 = [-[NSDictionary objectForKeyedSubscript:](self->_resolvedVideoFormatsByAttachedMediaKey objectForKeyedSubscript:{@"PrimaryFormat", "colorSpaceProperties"}];
  if (!width || !v7)
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

  return [BWVideoFormat colorSpacePropertiesWithSourceColorSpace:v14 sourcePixelFormat:v9 sourceDimensions:width | (v7 << 32) requestedPixelFormat:v6];
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

- (id)inputInferenceVideoFormatForAttachedMediaKey:(id)key
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

- (void)inputReceivedNewInputData:(id)data
{
  if (-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self, "currentRequest"), "input") == data && ([data receivedAllFramesInSingleContainer] & 1) == 0)
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
  stillImageSettings = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] stillImageSettings];
  requestedSettings = [(BWStillImageSettings *)stillImageSettings requestedSettings];
  if (![(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] sbufToProcess]&& self->_allowHEIFPrewarming && (BWPhotoEncoderResolveEncodingSchemeForRequestedSettings(requestedSettings) == 2 || BWPhotoEncoderResolveEncodingSchemeForCompressedPhotoWithLinDNG(requestedSettings) == 2))
  {
    [(BWPhotoEncoderController *)self _waitForPiecemealEncodingGroupToComplete];
    prewarmQueue = self->_prewarmQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__BWPhotoEncoderController_prepare__block_invoke;
    block[3] = &unk_1E7997358;
    v8 = 2;
    block[4] = self;
    block[5] = stillImageSettings;
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

- (void)_addOrPrewarmAuxImagesIfNeededForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer metadata:(id)metadata stillImageSettings:(id)settings processingFlags:(unsigned int)flags parentImageHandle:(int64_t)handle
{
  HIDWORD(v55) = scheme;
  if ((flags & 0x40) == 0 || ![(BWPhotoEncoderControllerConfiguration *)self->_configuration portraitRenderQuality])
  {
    v12 = BWIsDeferredPhotoProxyImage(flags);
    array = [MEMORY[0x1E695DF70] array];
    v115[0] = 0;
    v113 = 0;
    v114 = 0;
    v14 = BWPhotoEncoderThumbnailEnabled(SHIDWORD(v55), [settings requestedSettings], v115, &v114, &v113);
    AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, 0x1F217BF50);
    [(BWPhotoEncoderController *)self mainImageDownscalingFactorForAttachedMediaKey:0x1F217BF50 attachedMediaMetadata:CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0)];
    if (v16 != 0.0 && v14 & 1 | !BWPhotoEncoderIsLinDNGEncodingScheme(SHIDWORD(v55)))
    {
      [array addObject:0x1F217BF50];
    }

    if ([(BWPhotoEncoderController *)self _depthEncodingNeededForSettings:settings deferredPhotoProxy:v12])
    {
      [array addObject:@"Depth"];
    }

    v17 = (flags >> 3) & 1;
    v18 = BWSmartStylePersonMasksValidHint(metadata);
    if ([OUTLINED_FUNCTION_33_17() _personMaskEncodingNeededForSettings:? encodingScheme:? deferredPhotoProxy:? adjustedPhoto:? personMaskValidHint:?])
    {
      [array addObject:0x1F21AABB0];
    }

    v19 = OUTLINED_FUNCTION_33_17();
    *&v20 = v18;
    v21 = [v19 _semanticSegmentationMatteMediaKeysEncodingNeededForSettings:v20 encodingScheme:? deferredPhotoProxy:? adjustedPhoto:? personMaskValidHint:?];
    if ([v21 count])
    {
      [array addObjectsFromArray:v21];
    }

    if ([(BWPhotoEncoderController *)self _smartStyleReversibilityDataNeededForSettings:settings adjustedPhoto:v17 deferredPhotoProxy:v12])
    {
      [array addObject:0x1F21AAF70];
    }

    if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] deltaMapIsValid])
    {
      [(BWPhotoEncoderController *)self _primaryOutputAspectRatioForSettings:settings];
      [(BWPhotoEncoderController *)self _addSmartStyleDeltaMapForEncodingScheme:HIDWORD(v55) sampleBuffer:buffer stillImageSettings:settings primaryOutputAspectRatio:?];
    }

    if ([objc_msgSend(settings "requestedSettings")] && BWIsConstantColorPrimaryFrame(buffer))
    {
      [array addObject:0x1F21AB170];
    }

    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    array4 = [MEMORY[0x1E695DF70] array];
    v32 = OUTLINED_FUNCTION_51_14(array4, v25, v26, v27, v28, v29, v30, v31, v48, v50, array4, handle, v55, settings, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111);
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
            objc_enumerationMutation(array);
          }

          v36 = *(8 * i);
          v37 = [-[BWStillImageProcessorControllerInput encodedAttachedMediaKeys](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self "currentRequest")];
          v38 = array2;
          if ((v37 & 1) == 0)
          {
            v46 = [(BWPhotoEncoderController *)self _addOrPrewarmForAttachedMediaKey:v36 encodingScheme:HIDWORD(v56) sampleBuffer:buffer metadata:metadata stillImageSettings:v58 parentImageHandle:v54];
            v38 = array3;
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

  _loadCreateAndSetupSmartStyleRenderingProcessor = [(BWPhotoEncoderController *)self _loadCreateAndSetupSmartStyleRenderingProcessor];
  if (_loadCreateAndSetupSmartStyleRenderingProcessor)
  {
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3();
  }

  return _loadCreateAndSetupSmartStyleRenderingProcessor;
}

- (void)_handlePrewarmForMainImageForEncodingScheme:(int)scheme prewarmingMetadata:(id)metadata stillImageSettings:(id)settings reservedPrimaryImageHandleOut:(int64_t *)out
{
  v8 = *&scheme;
  formatDescriptionOut = 0;
  v57 = 0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  reservedPrimaryImageHandle = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] reservedPrimaryImageHandle];
  v49 = v8;
  v47 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:v8];
  if (v47)
  {
    requestedSettings = [settings requestedSettings];
    outputWidth = [requestedSettings outputWidth];
    outputHeight = [requestedSettings outputHeight];
    codecType = [-[NSDictionary objectForKeyedSubscript:](self->_resolvedVideoFormatsByAttachedMediaKey objectForKeyedSubscript:{@"PrimaryFormat", "pixelFormat"}];
    v14 = [-[NSDictionary objectForKeyedSubscript:](self->_resolvedVideoFormatsByAttachedMediaKey objectForKeyedSubscript:{@"PrimaryFormat", "colorSpaceProperties"}];
    if (!v14)
    {
      v14 = -[BWPhotoEncoderController _getColorSpacePropertiesForSourcePixelFormat:sourceWidth:sourceHeight:destinationPixelFormat:](self, "_getColorSpacePropertiesForSourcePixelFormat:sourceWidth:sourceHeight:destinationPixelFormat:", codecType, [requestedSettings outputWidth], objc_msgSend(requestedSettings, "outputHeight"), codecType);
    }

    v15 = [BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:v14];
    v16 = outputWidth | (outputHeight << 32);
    -[BWPhotoEncoderController _cropRectForRequestedSettings:inputDimensions:outputDimensions:metadata:processingFlags:](self, "_cropRectForRequestedSettings:inputDimensions:outputDimensions:metadata:processingFlags:", requestedSettings, v16, [requestedSettings outputDimensions], metadata, -[BWStillImageProcessorControllerInput processingFlagsForPrewarming](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self, "currentRequest"), "input"), "processingFlagsForPrewarming"));
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
        LODWORD(outputHeight) = v24;
        outputWidth = v22;
      }
    }

    v25 = *MEMORY[0x1E695E480];
    if (!CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], codecType, outputWidth, outputHeight, v15, &formatDescriptionOut))
    {
      v45 = *MEMORY[0x1E69918F0];
      [dictionary setObject:formatDescriptionOut forKeyedSubscript:?];
      v26 = BWPhotoEncoderCodecTypeForEncodingScheme(v49);
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v26];
      v44 = *MEMORY[0x1E69918D0];
      [dictionary setObject:v27 forKeyedSubscript:?];
      if ([(BWPhotoEncoderControllerConfiguration *)self->_configuration usesHighEncodingPriority])
      {
        [dictionary setObject:&unk_1F2246540 forKeyedSubscript:*MEMORY[0x1E6991960]];
      }

      outCopy = out;
      v29 = [objc_msgSend(settings "captureSettings")];
      v30 = v29;
      if (metadata || v29)
      {
        if (v29)
        {
          [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991958]];
        }

        [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991988]];
      }

      v46 = v30;
      [(BWPhotoEncoderController *)self _addOrientationOptionsToDictionary:dictionary encodingScheme:v49 metadata:metadata allowSensorOrientationRotation:1];
      captureSettings = [settings captureSettings];
      BYTE1(v42) = 1;
      LOBYTE(v42) = self->_heifUseTiling;
      [BWPhotoEncoderController _addQualityOptionsToDictionary:"_addQualityOptionsToDictionary:codecType:pixelBuffer:imageDimensions:metadata:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:enableHEIFTiling:enableHEIFOrientation:auxImageType:" codecType:dictionary pixelBuffer:v26 imageDimensions:0 metadata:v16 requestedStillImageCaptureSettings:metadata resolvedStillImageCaptureSettings:requestedSettings enableHEIFTiling:captureSettings enableHEIFOrientation:v42 auxImageType:?];
      v54 = 0;
      v52 = 0;
      v53 = 0;
      out = outCopy;
      if (BWPhotoEncoderThumbnailEnabled(v49, requestedSettings, &v54, &v53, &v52))
      {
        if (([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] requiresPhotosAdjustment]& 1) == 0)
        {
          v32 = FigCaptureUncompressedPixelFormatForPixelFormat(codecType);
          if (!CMVideoFormatDescriptionCreate(v25, v32, v53, SHIDWORD(v53), v15, &v57))
          {
            dictionary2 = [MEMORY[0x1E695DF90] dictionary];
            [dictionary2 setObject:v57 forKeyedSubscript:v45];
            [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v54), v44}];
            if ([(BWPhotoEncoderControllerConfiguration *)self->_configuration usesHighEncodingPriority])
            {
              [dictionary2 setObject:&unk_1F2246540 forKeyedSubscript:*MEMORY[0x1E6991960]];
            }

            v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BWStillImageProcessorControllerConfiguration figThreadPriority](self->_configuration, "figThreadPriority")}];
            [dictionary2 setObject:v34 forKeyedSubscript:*MEMORY[0x1E69919A0]];
            v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v52];
            [dictionary2 setObject:v35 forKeyedSubscript:*MEMORY[0x1E6991940]];
            v36 = v54;
            captureSettings2 = [settings captureSettings];
            LOWORD(v43) = 0;
            [BWPhotoEncoderController _addQualityOptionsToDictionary:"_addQualityOptionsToDictionary:codecType:pixelBuffer:imageDimensions:metadata:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:enableHEIFTiling:enableHEIFOrientation:auxImageType:" codecType:dictionary2 pixelBuffer:v36 imageDimensions:0 metadata:v53 requestedStillImageCaptureSettings:0 resolvedStillImageCaptureSettings:requestedSettings enableHEIFTiling:captureSettings2 enableHEIFOrientation:v43 auxImageType:?];
            [dictionary setObject:dictionary2 forKeyedSubscript:*MEMORY[0x1E6991928]];
          }
        }
      }

      if (![v47 addMainImage:0 metadata:0 options:dictionary imageHandleOut:&reservedPrimaryImageHandle])
      {
        [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] setReservedPrimaryImageHandle:reservedPrimaryImageHandle];
        [-[NSDictionary objectForKeyedSubscript:](-[BWPhotoEncoderControllerConfiguration attachedMediaConfigurationByAttachedMediaKey](self->_configuration "attachedMediaConfigurationByAttachedMediaKey")];
        v39 = v38;
        gainMapVersion = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters gainMapVersion];
        if (v39 != 0.0 && v46 && gainMapVersion >= 2)
        {
          toneMapAlternateGroupHandle = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] toneMapAlternateGroupHandle];
          OUTLINED_FUNCTION_17_14();
          [v41 addAlternateImageWithDerivedImageHandles:? options:? parentImageHandle:? alternateGroupHandleInOut:?];
          [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] setToneMapAlternateGroupHandle:toneMapAlternateGroupHandle];
        }
      }
    }
  }

  if (out)
  {
    *out = reservedPrimaryImageHandle;
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

- (void)_handlePrewarmForDepthForEncodingScheme:(int)scheme requestedStillImageCaptureSettings:(id)settings prewarmingMetadata:(id)metadata
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
            dictionary = [MEMORY[0x1E695DF90] dictionary];
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

              [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x1E69918B8]];
            }

            width = [v14 width];
            height = [v14 height];
            v19 = CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], [v14 pixelFormat], width, height, 0, &formatDescriptionOut);
            v20 = formatDescriptionOut;
            if (!v19)
            {
              [dictionary setObject:formatDescriptionOut forKeyedSubscript:*MEMORY[0x1E69918F0]];
              [v13 _addOrientationOptionsToDictionary:dictionary encodingScheme:2 metadata:v11 allowSensorOrientationRotation:1];
              if ([v13[8] usesHighEncodingPriority])
              {
                [dictionary setObject:&unk_1F2246540 forKeyedSubscript:*MEMORY[0x1E6991960]];
              }

              v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v13[8], "figThreadPriority")}];
              [dictionary setObject:v21 forKeyedSubscript:*MEMORY[0x1E69919A0]];
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

- (void)_handlePrewarmForGainMapForEncodingScheme:(int)scheme requestedStillImageCaptureSettings:(id)settings prewarmingMetadata:(id)metadata
{
  formatDescriptionOut = 0;
  if (scheme == 2 && [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:?])
  {
    v8 = [(NSDictionary *)self->_resolvedVideoFormatsByAttachedMediaKey objectForKeyedSubscript:0x1F217BF50];
    [-[NSDictionary objectForKeyedSubscript:](-[BWPhotoEncoderControllerConfiguration attachedMediaConfigurationByAttachedMediaKey](self->_configuration "attachedMediaConfigurationByAttachedMediaKey")];
    v9 = OUTLINED_FUNCTION_92([settings outputWidth]);
    v10 = OUTLINED_FUNCTION_92([settings outputHeight]);
    v11 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{BWPhotoEncoderEncodingOptionsForAuxiliaryImage(v9, v10, objc_msgSend(v8, "pixelBufferAttributes"), -[BWPhotoEncoderControllerConfiguration usesHighEncodingPriority](self->_configuration, "usesHighEncodingPriority"), -[BWStillImageProcessorControllerConfiguration figThreadPriority](self->_configuration, "figThreadPriority"))}];
    [(BWPhotoEncoderController *)self _addOrientationOptionsToDictionary:v11 encodingScheme:2 metadata:metadata allowSensorOrientationRotation:1];
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

- (void)_handlePrewarmForPortraitEffectsMatteForEncodingScheme:(int)scheme requestedStillImageCaptureSettings:(id)settings
{
  formatDescriptionOut = 0;
  if (scheme == 2 && [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:?])
  {
    v6 = [(NSDictionary *)self->_resolvedVideoFormatsByAttachedMediaKey objectForKeyedSubscript:0x1F21AABB0];
    [-[NSDictionary objectForKeyedSubscript:](-[BWPhotoEncoderControllerConfiguration attachedMediaConfigurationByAttachedMediaKey](self->_configuration "attachedMediaConfigurationByAttachedMediaKey")];
    v7 = OUTLINED_FUNCTION_92([settings outputWidth]);
    v8 = OUTLINED_FUNCTION_92([settings outputHeight]);
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

- (void)_handlePrewarmForConstantColorConfidenceMapForEncodingScheme:(int)scheme requestedStillImageCaptureSettings:(id)settings confidenceMapDimensions:(id)dimensions
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

- (void)_prewarmAndReserveMainImageHandleForEncodingScheme:(int)scheme prewarmingMetadata:(id)metadata stillImageSettings:(id)settings reservedPrimaryImageHandleOut:(int64_t *)out
{
  v11 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [settings settingsID];
    OUTLINED_FUNCTION_18_32();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  if (scheme == 2)
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
        v15 = [v13 openContainerWithOptions:objc_msgSend(MEMORY[0x1E695DF20] settingsID:{"dictionaryWithObjects:forKeys:count:", v19, v18, 2), objc_msgSend(objc_msgSend(settings, "requestedSettings"), "settingsID")}];
        if (v15)
        {
          v16 = v15;
          goto LABEL_10;
        }
      }

      [(BWPhotoEncoderController *)self _handlePrewarmForMainImageForEncodingScheme:2 prewarmingMetadata:metadata stillImageSettings:settings reservedPrimaryImageHandleOut:out];
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

      [settings settingsID];
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
    [settings settingsID];
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

- (BOOL)_finalImageExpectingSmartStyleReversibilityDataForDeferredPhotoProxy:(BOOL)proxy settings:(id)settings adjustedPhoto:(BOOL)photo
{
  if (proxy)
  {
    smartStyleReversibilityEnabled = [(BWPhotoEncoderControllerConfiguration *)self->_configuration smartStyleReversibilityEnabled];
    if (smartStyleReversibilityEnabled)
    {
      LOBYTE(smartStyleReversibilityEnabled) = [objc_msgSend(settings "requestedSettings")] & !photo;
    }
  }

  else
  {
    LOBYTE(smartStyleReversibilityEnabled) = 0;
  }

  return smartStyleReversibilityEnabled;
}

- (void)_performInferenceWithBuffer:(opaqueCMSampleBuffer *)buffer
{
  if (buffer)
  {
    CFRetain(buffer);
    inferenceGroup = self->_inferenceGroup;
    previewGenerationQueue = self->_previewGenerationQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__BWPhotoEncoderController__performInferenceWithBuffer___block_invoke;
    v7[3] = &unk_1E7990178;
    v7[4] = self;
    v7[5] = buffer;
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

- (int)_desiredOrientationForOrientation:(int)orientation encodingScheme:(int)scheme
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

- (int)_optionsForEncodingScheme:(int)scheme pixelBuffer:(__CVBuffer *)buffer imageDimensions:(id)dimensions processingFlags:(unsigned int)flags metadata:(id)metadata thumbnailOptions:(id)options requestedStillImageCaptureSettings:(id)settings resolvedStillImageCaptureSettings:(id)self0 cropRect:(CGRect)self1 usePixelsOutsideCrop:(BOOL)self2 allowSensorOrientationRotation:(BOOL)self3 containerOptionsOut:(id *)self4 encodingOptionsOut:(id *)self5
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  if ([v26 _encoderManagerForEncodingScheme:v24])
  {
    v41.origin.x = OUTLINED_FUNCTION_3_1();
    if (!CGRectIsEmpty(v41))
    {
      v42.origin.x = OUTLINED_FUNCTION_3_1();
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v42);
      [dictionary2 setObject:DictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E6991998]];
      if (DictionaryRepresentation)
      {
        CFRelease(DictionaryRepresentation);
      }
    }

    if (v37)
    {
      [dictionary2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69919C0]];
    }

    v31 = BWPhotoEncoderCodecTypeForEncodingScheme(v24);
    [v26 _addQualityOptionsToDictionary:dictionary2 codecType:v31 pixelBuffer:v22 imageDimensions:v20 metadata:v18 requestedStillImageCaptureSettings:v36 resolvedStillImageCaptureSettings:? enableHEIFTiling:? enableHEIFOrientation:? auxImageType:?];
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v31];
    [dictionary2 setObject:v32 forKeyedSubscript:*MEMORY[0x1E69918D0]];
    if ([v26[8] usesHighEncodingPriority])
    {
      [dictionary2 setObject:&unk_1F2246540 forKeyedSubscript:*MEMORY[0x1E6991960]];
    }

    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v26[8], "figThreadPriority")}];
    [dictionary2 setObject:v33 forKeyedSubscript:*MEMORY[0x1E69919A0]];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", BWPhotoEncoderContainerFormatForEncodingScheme(v24)), *MEMORY[0x1E6991870]}];
    [dictionary setObject:&unk_1F2246570 forKeyedSubscript:*MEMORY[0x1E6991860]];
    if (v24 == 1)
    {
      [dictionary2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991938]];
      if (![v36 payloadType])
      {
        [dictionary2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991910]];
      }
    }

    [v26 _addOrientationOptionsToDictionary:dictionary2 encodingScheme:v24 metadata:v18 allowSensorOrientationRotation:v38];
    [dictionary2 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6991928]];
    v28 = v39;
    v27 = v40;
  }

  if (v28)
  {
    *v28 = dictionary;
  }

  if (v27)
  {
    *v27 = dictionary2;
  }

  OUTLINED_FUNCTION_57_13();
  return result;
}

- (int)_encodePrimarySbuf:(opaqueCMSampleBuffer *)sbuf metadata:(id)metadata processingFlags:(unsigned int)flags primaryImageHandleInOut:(int64_t *)out
{
  v6 = *&flags;
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  v12 = CMSampleBufferGetImageBuffer(sbuf);
  Height = CVPixelBufferGetHeight(v12);
  stillImageSettings = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] stillImageSettings];
  requestedSettings = [(BWStillImageSettings *)stillImageSettings requestedSettings];
  v34 = BWPhotoEncoderResolveEncodingSchemeForRequestedSettings(requestedSettings);
  [(BWPhotoEncoderController *)self _cropRectForRequestedSettings:requestedSettings inputDimensions:Width | (Height << 32) outputDimensions:[(BWPhotoEncoderController *)self _outputDimensionsForSbuf:sbuf primaryImageMetadata:metadata sourceDimensions:Width | (Height << 32) requestedStillImageCaptureSettings:requestedSettings isStereoPhotoCapture:[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] isStereoPhotoCapture] isPrimaryFrame:BWPhotoEncoderIsPrimaryFrame(v6)] metadata:metadata processingFlags:v6];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_53_11(v16, v17, v18, v19);
  v39 = 0;
  v20 = OUTLINED_FUNCTION_3();
  if (OUTLINED_FUNCTION_53_11(v20, v21, v22, v23))
  {
    v24 = CMSampleBufferGetImageBuffer(sbuf);
    pen_clapDimensionsFromPixelBuffer(v24, &v39);
  }

  v38 = 0;
  v36 = 0;
  v37 = 0;
  if (BWPhotoEncoderThumbnailEnabled(v34, requestedSettings, &v38, &v37, &v36))
  {
    [(BWStillImageSettings *)stillImageSettings captureSettings];
    v31 = v36;
    v25 = OUTLINED_FUNCTION_3();
    [v26 _thumbnailOptionsForImageWithMetadata:v25 encodingScheme:v31 requestedStillImageCaptureSettings:? resolvedStillImageCaptureSettings:? processingFlags:? cropRect:? codecType:? maxPixelSize:?];
  }

  CMSampleBufferGetImageBuffer(sbuf);
  LOWORD(v33) = 256;
  captureSettings = [(BWStillImageSettings *)stillImageSettings captureSettings];
  v27 = OUTLINED_FUNCTION_3();
  v29 = [v28 _encodePhotoForEncodingScheme:v27 pixelBuffer:requestedSettings imageDimensions:captureSettings processingFlags:v33 metadata:out thumbnailOptions:? requestedStillImageCaptureSettings:? resolvedStillImageCaptureSettings:? cropRect:? usePixelsOutsideCrop:? allowSensorOrientationRotation:? mainImageHandleInOut:?];
  if (!v29)
  {
    [(BWPhotoEncoderControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] releaseStashedSamplebufferForAttachedMediaKey:?];
  }

  return v29;
}

- (int)_encodePhotoForEncodingScheme:(int)scheme pixelBuffer:(__CVBuffer *)buffer imageDimensions:(id)dimensions processingFlags:(unsigned int)flags metadata:(id)metadata thumbnailOptions:(id)options requestedStillImageCaptureSettings:(id)settings resolvedStillImageCaptureSettings:(id)self0 cropRect:(CGRect)self1 usePixelsOutsideCrop:(BOOL)self2 allowSensorOrientationRotation:(BOOL)self3 mainImageHandleInOut:(int64_t *)self4
{
  OUTLINED_FUNCTION_9_7();
  v16 = v15;
  v18 = v17;
  outCopy4 = out;
  settingsCopy2 = settings;
  OUTLINED_FUNCTION_16_2();
  if (v21)
  {
    [settings settingsID];
    OUTLINED_FUNCTION_18_32();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  v112 = 0;
  v113[0] = 0;
  if (out)
  {
    v22 = *out;
  }

  else
  {
    v22 = -1;
  }

  v111 = v22;
  if (BWPhotoEncoderIsPrimaryFrame(flags) && [objc_msgSend(objc_msgSend(objc_msgSend(v18 "currentRequest")] && (!objc_msgSend(settings, "rawOutputFormat") || !objc_msgSend(settings, "outputFileType")))
  {
    goto LABEL_81;
  }

  v23 = [v18 _encoderManagerForEncodingScheme:v16];
  if (!v23)
  {
    goto LABEL_81;
  }

  v24 = v23;
  LOWORD(v81) = __PAIR16__(rotation, crop);
  v25 = OUTLINED_FUNCTION_3_1();
  v27 = [v26 _optionsForEncodingScheme:v25 pixelBuffer:settings imageDimensions:captureSettings processingFlags:v81 metadata:v113 thumbnailOptions:&v112 requestedStillImageCaptureSettings:? resolvedStillImageCaptureSettings:? cropRect:? usePixelsOutsideCrop:? allowSensorOrientationRotation:? containerOptionsOut:? encodingOptionsOut:?];
  if (!v27)
  {
    isContainerOpen = [v24 isContainerOpen];
    v29 = isContainerOpen;
    v30 = 0x1E696A000uLL;
    if (isContainerOpen && v22 != -1)
    {
      v31 = [MEMORY[0x1E696AD98] numberWithLong:v22];
      [v112 setObject:v31 forKeyedSubscript:*MEMORY[0x1E6991968]];
LABEL_29:
      if ([objc_msgSend(objc_msgSend(v18 "currentRequest")])
      {
        if (BWPhotoEncoderIsPrimaryFrame(flags))
        {
          [v112 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991958]];
          v88 = 0;
          IsLeftEyeFrameForCurrentRequest = 0;
          v45 = 1;
        }

        else
        {
          IsLeftEyeFrameForCurrentRequest = BWPhotoEncoderIsLeftEyeFrameForCurrentRequest(metadata);
          v46 = *off_1E798B540;
          v47 = [metadata objectForKeyedSubscript:*off_1E798B540];
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

          v50 = [metadata objectForKeyedSubscript:v46];
          v51 = *off_1E798A0D0;
          v52 = [v50 isEqual:*off_1E798A0D0];
          v53 = 0.0;
          if (v52)
          {
            v82 = v51;
            v83 = v48;
            flagsCopy = flags;
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            v95 = 0u;
            v96 = 0u;
            v97 = 0u;
            v98 = 0u;
            sensorConfigurationsByPortType = [v18[8] sensorConfigurationsByPortType];
            v56 = [sensorConfigurationsByPortType countByEnumeratingWithState:&v95 objects:v94 count:16];
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
                    objc_enumerationMutation(sensorConfigurationsByPortType);
                  }

                  [dictionary setObject:objc_msgSend(objc_msgSend(objc_msgSend(v18[8] forKeyedSubscript:{"sensorConfigurationsByPortType"), "objectForKeyedSubscript:", *(*(&v95 + 1) + 8 * i)), "cameraInfo"), *(*(&v95 + 1) + 8 * i)}];
                }

                v57 = [sensorConfigurationsByPortType countByEnumeratingWithState:&v95 objects:v94 count:16];
              }

              while (v57);
            }

            LODWORD(v107) = 0;
            v60 = BWStereoUtilitiesComputeStereoBaseline(v83, v82, dictionary, &v107);
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
            flags = flagsCopy;
            v30 = 0x1E696A000uLL;
          }

          v93[0] = [*(v30 + 3480) numberWithFloat:v53];
          v93[1] = &unk_1F224A900;
          v93[2] = &unk_1F224A900;
          v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:3];
          v63 = [metadata objectForKeyedSubscript:*off_1E798A940];
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
          v67 = dimensions.var0 / (v66 + v66);
          v92[0] = [*(v30 + 3480) numberWithDouble:v67];
          v92[1] = &unk_1F224A900;
          v92[2] = [*(v30 + 3480) numberWithDouble:{vcvtd_n_f64_s32(dimensions.var0, 1uLL)}];
          v92[3] = &unk_1F224A900;
          v92[4] = [*(v30 + 3480) numberWithDouble:v67];
          v92[5] = [*(v30 + 3480) numberWithDouble:{vcvtd_n_f64_s32(dimensions.var1, 1uLL)}];
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
          legacySensorOrientationRotationDegreesForCapture = [v18 legacySensorOrientationRotationDegreesForCapture];
          v99 = 136315394;
          v100 = "[BWPhotoEncoderController _encodePhotoForEncodingScheme:pixelBuffer:imageDimensions:processingFlags:metadata:thumbnailOptions:requestedStillImageCaptureSettings:resolvedStillImageCaptureSettings:cropRect:usePixelsOutsideCrop:allowSensorOrientationRotation:mainImageHandleInOut:]";
          v101 = 1024;
          v102 = legacySensorOrientationRotationDegreesForCapture;
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

      v74 = [v24 addMainImage:buffer metadata:0 options:v112 imageHandleOut:{v73, v79, v80}];
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
            outCopy4 = out;
            if (v88)
            {
              v91 = v111;
            }

            goto LABEL_79;
          }

          *(&v90 + 1) = v111;
        }

        outCopy4 = out;
LABEL_79:
        v77 = [objc_msgSend(v18 "currentRequest")];
        v107 = v90;
        settingsID2 = v91;
        [v77 setStereoPhotoImageHandles:&v107];
        [objc_msgSend(objc_msgSend(v18 "currentRequest")];
        if (BWPhotoEncoderIsPrimaryFrame(flags))
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
      outCopy4 = out;
      goto LABEL_71;
    }

    if (isContainerOpen)
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
      [settingsCopy2 settingsID];
      closeContainer = [OUTLINED_FUNCTION_40_9() openContainerWithOptions:v44 settingsID:?];
      if (!closeContainer)
      {
        goto LABEL_29;
      }

LABEL_91:
      v75 = closeContainer;
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
      settingsID = [settings settingsID];
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
    settingsID2 = [settings settingsID];
    v35 = OUTLINED_FUNCTION_6_0();
    v80 = 0;
    v36 = OUTLINED_FUNCTION_42_14();
    FigCapturePleaseFileRadar(v36, v37, v38, v39, v40, 3488, v41, v42, 0);
    free(v35);
    settingsCopy2 = settings;
    v30 = 0x1E696A000;
    if (v29)
    {
      closeContainer = [v24 closeContainer];
      if (closeContainer)
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
  if (outCopy4)
  {
    *outCopy4 = v111;
  }

  OUTLINED_FUNCTION_16_2();
  if (v21)
  {
    [settingsCopy2 settingsID];
    OUTLINED_FUNCTION_16_38();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v75;
}

- (int)_encodeDNGForEncodingScheme:(int)scheme rawSampleBuffer:(opaqueCMSampleBuffer *)buffer dngDictionary:(id)dictionary requestedSettings:(id)settings captureType:(int)type cropRect:(CGRect)rect dngContainsDepthData:(BOOL)data dngContainsSemanticSegmentationMattes:(BOOL)self0 processingFlags:(unsigned int)self1
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  rawOutputFileBitDepth = [v12 rawOutputFileBitDepth];
  if (rawOutputFileBitDepth)
  {
    v26 = rawOutputFileBitDepth;
  }

  else
  {
    v26 = v20[18];
  }

  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v26];
  [dictionary setObject:v27 forKeyedSubscript:*MEMORY[0x1E6991A30]];
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v20[19]];
  [dictionary setObject:v28 forKeyedSubscript:*MEMORY[0x1E6991A58]];
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991A68]];
  v29 = [v14 objectForKeyedSubscript:*off_1E798A720];
  if (v29)
  {
    [dictionary setObject:v29 forKeyedSubscript:*MEMORY[0x1E6991A28]];
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

  [dictionary setObject:&unk_1F22465D0 forKeyedSubscript:*MEMORY[0x1E6991A40]];
  v30 = BWIsDeferredPhotoProxyImage(v40);
  v31 = *MEMORY[0x1E6991A48];
  if (!v30)
  {
    [dictionary setObject:&unk_1F2246588 forKeyedSubscript:v31];
LABEL_15:
    v35 = MEMORY[0x1E696AD98];
    [v12 rawOutputFileCodecQuality];
    v33 = [v35 numberWithFloat:?];
    v32 = *MEMORY[0x1E6991A50];
    goto LABEL_16;
  }

  [dictionary setObject:&unk_1F22465B8 forKeyedSubscript:v31];
  v32 = *MEMORY[0x1E6991A50];
  v33 = &unk_1F224CAD0;
LABEL_16:
  [dictionary setObject:v33 forKeyedSubscript:v32];
LABEL_17:
  v41.origin.x = OUTLINED_FUNCTION_3_1();
  if (!CGRectIsEmpty(v41))
  {
    v42.origin.x = OUTLINED_FUNCTION_3_1();
    [dictionary setObject:CGRectCreateDictionaryRepresentation(v42) forKeyedSubscript:*MEMORY[0x1E6991A70]];
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
        if (![v23 addMainImage:v37 metadata:v38 options:dictionary imageHandleOut:0])
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

- (int)_addThumbnailForEncodingScheme:(int)scheme thumbnailPixelBuffer:(__CVBuffer *)buffer metadata:(id)metadata requestedStillImageCaptureSettings:(id)settings resolvedStillImageCaptureSettings:(id)captureSettings processingFlags:(unsigned int)flags cropRect:(CGRect)rect codecType:(unsigned int)self0 maxPixelSize:(unint64_t)self1 parentImageHandle:(int64_t)self2
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

- (int)_addCompressedThumbnailForEncodingScheme:(int)scheme thumbnailSurface:(__IOSurface *)surface thumbnailSurfaceSize:(unint64_t)size
{
  v7 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:*&scheme];
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

  v9 = [v8 addCompressedThumbnailImage:surface thumbnailImageSize:size options:0];
  if (v9)
  {
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3();
  }

  return v9;
}

- (BOOL)_addDepthForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer primaryOutputAspectRatio:(double)ratio parentImageHandle:(int64_t)handle
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
                dictionary = [MEMORY[0x1E695DF90] dictionary];
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

                  [dictionary setObject:v39 forKeyedSubscript:*MEMORY[0x1E69918B8]];
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
                    [dictionary setObject:CGRectCreateDictionaryRepresentation(v54) forKeyedSubscript:*MEMORY[0x1E6991998]];
                    [dictionary setObject:0 forKeyedSubscript:*MEMORY[0x1E69919C0]];
                  }
                }

                v44 = OUTLINED_FUNCTION_29_18();
                [v15 _addOrientationOptionsToDictionary:dictionary encodingScheme:v13 metadata:CMGetAttachment(v44 allowSensorOrientationRotation:{v45, v46), 1}];
                if (v13 == 4)
                {
                  v47 = [MEMORY[0x1E696AD98] numberWithInt:0];
                  [dictionary setObject:v47 forKeyedSubscript:*MEMORY[0x1E6991A40]];
                }

                if (dictionary)
                {
                  if ([v15[8] usesHighEncodingPriority])
                  {
                    [dictionary setObject:&unk_1F2246540 forKeyedSubscript:*MEMORY[0x1E6991960]];
                  }

                  v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v15[8], "figThreadPriority")}];
                  [dictionary setObject:v48 forKeyedSubscript:*MEMORY[0x1E69919A0]];
                  if (![v17 addAuxImage:v52 type:v51 auxImageMetadata:v37 options:dictionary parentImageHandle:v50 auxImageHandleOut:0])
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

- (id)_depthEncodingOptionsFromDepthMetadata:(id)metadata pixelFormat:(unsigned int)format
{
  if ([objc_msgSend(metadata objectForKeyedSubscript:{*off_1E798CFD0), "BOOLValue"}])
  {
    result = 0;
    v8 = 1;
  }

  else
  {
    if (FigDepthFormatIs16Bit(format))
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

- (BOOL)_addPortraitEffectsMatteForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer primaryOutputAspectRatio:(double)ratio parentImageHandle:(int64_t)handle
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

- (BOOL)_addGainMapForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer outputDimensions:(id)dimensions primaryOutputAspectRatio:(double)ratio parentImageHandle:(int64_t)handle
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

  AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, 0x1F217BF50);
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
  handleCopy = handle;
  Width = CVPixelBufferGetWidth(v18);
  Height = CVPixelBufferGetHeight(v18);
  if ([CMGetAttachment(buffer *off_1E798A5E0])
  {
    if ((Width | (Height << 32)) != dimensions)
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
        var0 = dimensions.var0;
        v51 = 1024;
        var1 = dimensions.var1;
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
      v58 = dimensions.var0;
      v59 = 1024;
      v60 = dimensions.var1;
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

    BWPhotoEncoderDenormalizedZoomRectForAttachedMedia(v16, ratio, v23);
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
  if (BWPhotoEncoderSupportsAddingAuxiliaryMetadataSeparately(scheme))
  {
    CFRelease(v26);
    v26 = 0;
  }

  v27 = [v14 addAuxImage:v18 type:v39 auxImageMetadata:v26 options:v42 parentImageHandle:handleCopy auxImageHandleOut:&v41];
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

- (CGImageMetadata)_newGainMapAuxiliaryImagePropertiesForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer denormalizedCropRect:(CGRect)rect requiresPhotosAdjustment:(BOOL)adjustment encodingOptionsOut:(id *)out flexGTCColorSpaceOut:(CGColorSpace *)spaceOut tonemapItemMetadataOut:(id *)metadataOut isP3PrimariesOut:(BOOL *)self0
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

  if (primariesOut)
  {
    *primariesOut = v42;
  }

  OUTLINED_FUNCTION_37_13();
  return result;
}

- (BOOL)_addAlternateImageForEncodingScheme:(int)scheme flexGTCColorSpace:(CGColorSpace *)space isP3primaries:(BOOL)p3primaries tonemapItemMetadata:(id)metadata parentImageHandle:(int64_t)handle gainMapHandle:(int64_t)mapHandle
{
  if (mapHandle == -1)
  {
    return 0;
  }

  p3primariesCopy = p3primaries;
  v14 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:*&scheme];
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

  if (space)
  {
    v16 = CFRetain(space);
  }

  else
  {
    v17 = MEMORY[0x1E695F0C8];
    if (!p3primariesCopy)
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
    v30[1] = metadata;
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
    toneMapAlternateGroupHandle = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] toneMapAlternateGroupHandle];
    v27[0] = [MEMORY[0x1E696AD98] numberWithLong:handle];
    v27[1] = [MEMORY[0x1E696AD98] numberWithLong:mapHandle];
    v24 = [v15 addAlternateImageWithDerivedImageHandles:objc_msgSend(MEMORY[0x1E695DEC8] options:"arrayWithObjects:count:" parentImageHandle:v27 alternateGroupHandleInOut:{2), v23, handle, &toneMapAlternateGroupHandle}];
    v25 = v24 != 0;
    if (!v24)
    {
      [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] setToneMapAlternateGroupHandle:toneMapAlternateGroupHandle];
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

- (BOOL)_addGainMapMetadataForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer parentImageHandle:(int64_t)handle
{
  v7 = *&scheme;
  cf = 0;
  gainMapHandle = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] gainMapHandle];
  if (gainMapHandle == -1)
  {
    LOBYTE(v12) = 0;
    return v12;
  }

  v10 = gainMapHandle;
  v11 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:v7];
  v12 = v11;
  if (v11)
  {
    if ([v11 isContainerOpen])
    {
      if (CMGetAttachment(buffer, @"StillSettings", 0))
      {
        AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, 0x1F217BF50);
        if (AttachedMedia)
        {
          if (CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0))
          {
            v19 = 0;
            v20 = 0;
            v18 = 0;
            requiresPhotosAdjustment = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] requiresPhotosAdjustment];
            v15 = [(BWPhotoEncoderController *)self _newGainMapAuxiliaryImagePropertiesForEncodingScheme:v7 sampleBuffer:buffer denormalizedCropRect:requiresPhotosAdjustment requiresPhotosAdjustment:&v20 encodingOptionsOut:&cf flexGTCColorSpaceOut:&v19 tonemapItemMetadataOut:*MEMORY[0x1E695F050] isP3PrimariesOut:*(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), &v18];
            if (v15)
            {
              v16 = v15;
              if (![v20 count] || objc_msgSend(v12, "addAuxImageMetadata:type:auxImageHandle:options:parentImageHandle:", v16, 1, v10, v20, handle))
              {
                LOBYTE(v12) = 0;
              }

              else
              {
                LOBYTE(v12) = 1;
                if (v7 == 2 && v19)
                {
                  [(BWPhotoEncoderController *)self _addAlternateImageForEncodingScheme:2 flexGTCColorSpace:cf isP3primaries:v18 tonemapItemMetadata:v19 parentImageHandle:handle gainMapHandle:v10];
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

- (BOOL)_addSemanticMattesForEncodingScheme:(int)scheme attachedMediaKey:(id)key sampleBuffer:(opaqueCMSampleBuffer *)buffer primaryOutputAspectRatio:(double)ratio settingsID:(int64_t)d orientation:(int)orientation parentImageHandle:(int64_t)handle
{
  v11 = *&orientation;
  v15 = *&scheme;
  v17 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:?];
  if (!v17)
  {
    goto LABEL_26;
  }

  keyCopy = v17;
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
  AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, key);
  v21 = BWPhotoEncoderNodeAuxImageTypeForSemanticMatteAttachedMediaKey(key);
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
  v27 = keyCopy;
  keyCopy = key;
  usesHighEncodingPriority = [(BWPhotoEncoderControllerConfiguration *)self->_configuration usesHighEncodingPriority];
  figThreadPriority = [(BWStillImageProcessorControllerConfiguration *)self->_configuration figThreadPriority];
  v30 = Attributes;
  v15 = v25;
  v31 = [v43 dictionaryWithDictionary:{BWPhotoEncoderEncodingOptionsForAuxiliaryImage(Width, Height, v30, usesHighEncodingPriority, figThreadPriority)}];
  [(BWPhotoEncoderController *)self mainImageDownscalingFactorForAttachedMediaKey:keyCopy attachedMediaMetadata:OUTLINED_FUNCTION_55_14(v31, *off_1E798A3C8)];
  BWPhotoEncoderDenormalizedZoomRectForAttachedMedia(AttachedMedia, ratio, v32);
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
    if (![v36 addAuxImage:v41 type:v42 auxImageMetadata:v44 options:v31 parentImageHandle:handle auxImageHandleOut:0])
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
    if (keyCopy)
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

- (int)_decompressSmartStylePhotoSurface:(__IOSurface *)surface
{
  result = CMPhotoDecompressionSessionCreate();
  if (!result)
  {
    return CMPhotoDecompressionSessionCreateContainer();
  }

  return result;
}

- (int)_addUnstyledImageForEncodingScheme:(int)scheme sbuf:(opaqueCMSampleBuffer *)sbuf imageDimensions:(id)dimensions processingFlags:(unsigned int)flags metadata:(id)metadata requestedStillImageCaptureSettings:(id)settings resolvedStillImageCaptureSettings:(id)captureSettings cropRect:(CGRect)self0 usePixelsOutsideCrop:(BOOL)self1
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
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v34.origin.x = OUTLINED_FUNCTION_3_1();
          if (!CGRectIsEmpty(v34))
          {
            v35.origin.x = OUTLINED_FUNCTION_3_1();
            DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v35);
            [dictionary setObject:DictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E6991998]];
            if (DictionaryRepresentation)
            {
              CFRelease(DictionaryRepresentation);
            }
          }

          if (v33)
          {
            [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69919C0]];
          }

          v29 = BWPhotoEncoderCodecTypeForEncodingScheme(2u);
          [v21 _addQualityOptionsToDictionary:dictionary codecType:v29 pixelBuffer:v26 imageDimensions:v17 metadata:v15 requestedStillImageCaptureSettings:v13 resolvedStillImageCaptureSettings:? enableHEIFTiling:? enableHEIFOrientation:? auxImageType:?];
          v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v29];
          [dictionary setObject:v30 forKeyedSubscript:*MEMORY[0x1E69918D0]];
          if ([v21[8] usesHighEncodingPriority])
          {
            [dictionary setObject:&unk_1F2246540 forKeyedSubscript:*MEMORY[0x1E6991960]];
          }

          v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v21[8], "figThreadPriority")}];
          [dictionary setObject:v31 forKeyedSubscript:*MEMORY[0x1E69919A0]];
          [v21 _addOrientationOptionsToDictionary:dictionary encodingScheme:2 metadata:v15 allowSensorOrientationRotation:1];
          if ([v23 addMainImage:v26 metadata:0 options:dictionary imageHandleOut:0])
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

- (BOOL)_addSmartStyleLinearThumbnailForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer primaryOutputAspectRatio:(double)ratio
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

- (BOOL)_addSmartStyleDeltaMapForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer stillImageSettings:(id)settings primaryOutputAspectRatio:(double)ratio
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

- (BOOL)_addConstantColorConfidenceMapForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer
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

- (void)_tagStereoPairGroupForEncodingScheme:(int)scheme stereoPhotoImageHandles:(id *)handles groupMetadata:(id)metadata
{
  v7 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:*&scheme];
  if (v7)
  {
    v8 = v7;
    if ([v7 isContainerOpen])
    {
      v9 = *&handles->var0;
      var2 = handles->var2;
      [v8 tagStereoPairGroupWithStereoPhotoImageHandles:&v9 groupMetadata:metadata];
    }
  }
}

- (int)_addValue:(id)value toAuxiliaryImageProperties:(CGImageMetadata *)properties namespace:(__CFString *)namespace prefix:(__CFString *)prefix key:(__CFString *)key
{
  if (value)
  {
    v10 = CGImageMetadataTagCreate(namespace, prefix, key, kCGImageMetadataTypeDefault, value);
    if (v10)
    {
      v11 = v10;
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@", prefix, key];
      if (v12)
      {
        if (CGImageMetadataSetTagWithPath(properties, 0, v12, v11))
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

- (int)_addMetadataAttachmentsForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer requestedSettings:(id)settings captureType:(int)type parentImageHandle:(int64_t)handle exifExtraRotationDegrees:(int)degrees
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

- (id)_newMetadataAttachmentsForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer requestedSettings:(id)settings captureType:(int)type exifExtraRotationDegrees:(int)degrees
{
  v26 = 5;
  if (scheme == 1)
  {
    v24 = 0;
  }

  else
  {
    v10 = *&type;
    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    v12 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    [(BWPhotoEncoderControllerConfiguration *)self->_configuration zeroShutterLagEnabled];
    if (BWPhotoEncoderDefaultJPEGIndexedQTable(ImageBuffer, v12, v10, &v26, 0))
    {
      return 0;
    }

    v24 = BWPhotoEncoderTranscodeQualityHintFromQuantizationTableIndex(v26);
  }

  v13 = [CMGetAttachment(buffer @"PhotoManifest"];
  BWStillImageProcessingFlagsForSampleBuffer(buffer);
  outputFileType = [settings outputFileType];
  outputRotationDegrees = [settings outputRotationDegrees];
  outputMirroring = [settings outputMirroring];
  cameraSupportsFlash = [(BWPhotoEncoderControllerConfiguration *)self->_configuration cameraSupportsFlash];
  selfCopy = self;
  flashMode = [settings flashMode];
  StillImageMetadataInSettingsForSampleBuffer = FigCaptureMetadataUtilitiesGetStillImageMetadataInSettingsForSampleBuffer(settings, buffer);
  IrisAssetIdentifierForSettingsAndSampleBuffer = FigCaptureMetadataUtilitiesGetIrisAssetIdentifierForSettingsAndSampleBuffer(settings, buffer);
  MetadataAttachments = FigCaptureMetadataUtilitiesCreateMetadataAttachments(buffer, outputFileType, outputRotationDegrees, outputMirroring, cameraSupportsFlash, 1, flashMode, 0, 1, 0, 1, 0, 0, 0, 0, StillImageMetadataInSettingsForSampleBuffer, IrisAssetIdentifierForSettingsAndSampleBuffer, [settings imageGroupIdentifier], v24, objc_msgSend(v13, "time"), degrees);
  if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)selfCopy currentRequest] input] requiresPhotosAdjustment])
  {
    [MetadataAttachments setObject:&unk_1F2246528 forKeyedSubscript:*MEMORY[0x1E696DE78]];
  }

  return MetadataAttachments;
}

- (id)_newRawMetadataAttachmentsForEncodingScheme:(int)scheme sampleBuffer:(opaqueCMSampleBuffer *)buffer dngDictionary:(id)dictionary requestedSettings:(id)settings captureType:(int)type dngContainsDepthData:(BOOL)data dngContainsSemanticSegmentationMattes:(BOOL)mattes
{
  v12 = [(BWPhotoEncoderController *)self _newMetadataAttachmentsForEncodingScheme:*&scheme sampleBuffer:buffer requestedSettings:settings captureType:*&type exifExtraRotationDegrees:0];
  if (v12)
  {
    v13 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    [settings rawOutputFileCodec];
    [v13 objectForKeyedSubscript:*off_1E798B1E0];
    v14 = OUTLINED_FUNCTION_40_9();
    v16 = BWCreateRawMetadataFromMetadata(v14, dictionary, 0x10000u, v15);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (__IOSurface)_closeContainerAndCopySurfaceForEncodingScheme:(int)scheme
{
  v6 = 0;
  result = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:*&scheme];
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

- (void)_getAssetsSizeForEncodingScheme:(int)scheme containerSizeOut:(unint64_t *)out thumbnailSizeOut:(unint64_t *)sizeOut auxiliaryImagesSizeOut:(unint64_t *)imagesSizeOut
{
  v9 = *&scheme;
  string = [MEMORY[0x1E696AD60] string];
  v12 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:v9];
  if (v12)
  {
    if (out)
    {
      v13 = v12;
      *out = [v12 containerSize];
      [string appendFormat:@" containerSize:%.3lf MB, ", vcvtd_n_f64_u64(objc_msgSend(v13, "containerSize"), 0x14uLL)];
    }

    if ((v9 - 3) <= 1)
    {
      if (sizeOut)
      {
        *sizeOut = [(BWDNGEncoderManager *)self->_dngEncoderManager thumbnailImageSize];
        [string appendFormat:@" thumbnailImageSize:%.3lf MB, ", vcvtd_n_f64_u64(-[BWDNGEncoderManager thumbnailImageSize](self->_dngEncoderManager, "thumbnailImageSize"), 0x14uLL)];
      }

      if (imagesSizeOut)
      {
        *imagesSizeOut = [(BWDNGEncoderManager *)self->_dngEncoderManager auxiliaryImagesSize];
        [string appendFormat:@" auxiliaryImagesSize:%.3lf MB", vcvtd_n_f64_u64(-[BWDNGEncoderManager auxiliaryImagesSize](self->_dngEncoderManager, "auxiliaryImagesSize"), 0x14uLL)];
      }
    }
  }

  [string length];
}

- (void)_closeContainerForEncodingScheme:(int)scheme
{
  v4 = [(BWPhotoEncoderController *)self _encoderManagerForEncodingScheme:*&scheme];
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

- (double)_adjustAspectRatio:(double)ratio settings:(id)settings
{
  if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] requiresPhotosAdjustment])
  {
    [settings nonDestructiveCropSize];
    if (v6 > 0.0 && v7 > 0.0)
    {
      if (ratio <= 1.0)
      {
        v8 = v7 / v6;
      }

      else
      {
        v8 = v6 / v7;
      }

      return v8 * ratio;
    }
  }

  return ratio;
}

- (opaqueCMSampleBuffer)_newAuxImageEncodingTriggerSbufForSettings:(id)settings metadata:(id)metadata
{
  v15 = 0;
  memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(settings "processingSettings")];
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
    CMSetAttachment(v15, *off_1E798A3C8, metadata, 1u);
    CMSetAttachment(v15, @"StillSettings", settings, 1u);
    CMSetAttachment(v15, @"PhotoManifest", [objc_msgSend(settings "processingSettings")], 1u);
  }

  return v15;
}

- (void)_updateStillImageProcessingFlagsWithDepthMetadataForSbuf:(opaqueCMSampleBuffer *)sbuf stillImageSettings:(id)settings
{
  if ([-[BWStillImageProcessorControllerInput encodedAttachedMediaKeys](-[BWStillImageProcessorControllerRequest input](-[BWStillImageProcessorController currentRequest](self "currentRequest")])
  {
    v6 = OUTLINED_FUNCTION_4_3();
    v9 = CMGetAttachment(v6, v7, v8);
    if (v9)
    {
      v10 = v9;
      v11 = BWStillImageProcessingFlagsForSampleBuffer(sbuf);
      if ([objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798CFD0), "BOOLValue"}])
      {
        v12 = 32;
      }

      else
      {
        v12 = 16;
      }

      v13 = v12 | v11;
      if (BWCIFilterArrayContainsPortraitFilters([objc_msgSend(settings "requestedSettings")]))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 | 0x1000000;
      }

      BWStillImageSetProcessingFlagsForSampleBuffer(sbuf, v14);
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