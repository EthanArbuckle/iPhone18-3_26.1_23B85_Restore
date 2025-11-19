@interface BWUBNode
+ (void)initialize;
- (BOOL)_generateDisparityForSettings:(_BOOL8)result;
- (BOOL)_requiresResizedOutputDimensionsWithInputWidth:(uint64_t)a3 inputHeight:;
- (BOOL)demosaicedRawSupportedForCaptureType:(int)a3;
- (BOOL)idcSupportedForCaptureType:(int)a3 captureFlags:(unint64_t)a4 portType:(id)a5;
- (BWUBNode)initWithNodeConfiguration:(id)a3 captureDevice:(id)a4;
- (BWVideoFormatRequirements)_demosaicedRawFormatRequirementsWithDimensions:(int)a3 colorSpaceProperties:;
- (id)_bufferTypesForCaptureSettings:(uint64_t)a1;
- (id)_nextNRInputForPortType:(id *)result;
- (id)_nrOutputSbufRouter;
- (id)_setupProcessorControllerConfigurations;
- (id)_standardNROutputRouterWithExpectedQueue:(id)result;
- (id)_ubInferenceInputRouter;
- (id)_ubRERRouter;
- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)a3 wait:(BOOL)a4;
- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)a3 frameStatistics:(id)a4 stationary:(BOOL)a5 sphereOffsetEnabled:(BOOL)a6 detectedObjects:(id)a7;
- (id)processorController:(id)a3 newInferencesForProcessorInput:(id)a4 inferenceInputBufferType:(unint64_t)a5;
- (uint64_t)_handleLidarDepthPointCloudSampleBuffer:(uint64_t)result;
- (uint64_t)_handlePointCloudSampleBuffer:(uint64_t)result;
- (uint64_t)_handleSampleBuffer:(id *)a1 input:(void *)a2;
- (uint64_t)_inferenceAttachedMediaRequiredForDepthProcessing:(void *)a3 stillImageSettings:;
- (uint64_t)_inferenceOutputPixelBufferPoolForAttachedMediaKey:(uint64_t)result;
- (uint64_t)_inferencesRequiredByProcessorControllersForSettings:(uint64_t)a1;
- (uint64_t)_inferencesRequiredForSettings:(uint64_t)result;
- (uint64_t)_infoForCaptureType:(uint64_t)result isSupportedCaptureTypeOut:isFusionCaptureTypeOut:;
- (uint64_t)_isDemosaicedRawCaptureNeedingInferencesWithSettigs:(uint64_t)a1;
- (uint64_t)_isDepthCaptureNeedingPersonSegmentationMasksWithSettings:(uint64_t)a1;
- (uint64_t)_isInferenceInputImageRequiredForSettings:(uint64_t)result;
- (uint64_t)_isSemanticRenderingCapture:(uint64_t)result;
- (uint64_t)_isSemanticStylesCaptureNeedingInferencesWithSettings:(uint64_t)a1;
- (uint64_t)_nrProcessorInputNeededForSettings:(uint64_t)a3 portType:;
- (uint64_t)_processingNeededForSettings:(uint64_t)a1 portType:(void *)a2;
- (uint64_t)_provideInferenceAttachedMediaWithSettings:(uint64_t)result;
- (uint64_t)_provideInferencesForAttachedMediaMode:(void *)a3 settings:;
- (uint64_t)_scaleInferenceInputForRedEyeReductionFromPixelBuffer:(CVPixelBufferRef)destinationBuffer outputPixelBuffer:;
- (uint64_t)_setupProcessingStateForClientBracketWithSettings:(void *)a3 processingPlan:;
- (uint64_t)_setupProcessingStateForDeepFusionWithSettings:(void *)a3 processingPlan:;
- (uint64_t)_setupProcessingStateForDeferredCaptureIfNeededWithSettings:(uint64_t)a1;
- (uint64_t)_setupProcessingStateForDisparityIfNeededWithSettings:(uint64_t)a3 sequenceNumber:(void *)a4 processingPlan:;
- (uint64_t)_setupProcessingStateForFlashCaptureWithSettings:(uint64_t)a3 processingPlan:;
- (uint64_t)_setupProcessingStateForInferenceWithSettings:(uint64_t)a3 portType:;
- (uint64_t)_setupProcessingStateForJasperDisparityIfNeededWithSettings:(uint64_t)a1 processingPlan:;
- (uint64_t)_setupProcessingStateIfNeededWithBeginMomentSettings:(uint64_t)result;
- (uint64_t)_shouldPassthroughWithStillImageSettings:(uint64_t)result;
- (uint64_t)_singleImageProcessSampleBuffer:(uint64_t)a1 settings:portType:;
- (uint64_t)_waitForInferenceIfNeededForProcessorInput:(uint64_t)result;
- (uint64_t)processorController:(uint64_t)a3 newOutputPixelBufferForProcessorInput:(uint64_t)a4 type:dimensions:attachedMediaKey:;
- (void)_deepFusionDispatch:(int)a3 direction:(uint64_t)a4 block:;
- (void)_dispatch:(int)a3 direction:(NSObject *)a4 processingQueue:(uint64_t)a5 block:;
- (void)_emitError:(void *)a3 processorInput:(uint64_t)a4 metadata:(uint64_t)a5 description:;
- (void)_emitSampleBuffer:(uint64_t)a1 description:;
- (void)_errorRecoveryBufferTypesForBufferTypes:(uint64_t)a3;
- (void)_flushBufferPoolsWhenPossibleWithSettings:(uint64_t)a1;
- (void)_handleClientBracketFrameEmissionForProcessorInput:(void *)a3 clientBracketFrame:;
- (void)_handleClientBracketFrameEmissionForSampleBuffer:(void *)a3 stillImageSettings:(uint64_t)a4 portType:;
- (void)_handleDeepFusionError:(void *)a3 processorInput:;
- (void)_handleReferenceFrameEmissionForProcessorInput:(uint64_t)a1;
- (void)_handleReferenceFrameEmissionForSampleBuffer:(uint64_t)a1 stillImageSettings:portType:;
- (void)_handleReferenceFrameEmissionForSettings:(uint64_t)a3 portType:(const void *)a4 referenceFrame:(const void *)a5 evMinusReferenceFrame:(uint64_t)a6 errorRecoveryFrame:;
- (void)_handleSupplementalPointCloudSampleBuffer:(uint64_t)a1;
- (void)_inferenceAttachedMediaRequiredForDemosaicedRawCaptureWithInferenceOutputSampleBuffer:(uint64_t)a3 stillImageSettings:(uint64_t)a4;
- (void)_inferenceProcessRedEyeReductionSampleBuffer:(void *)a3 settings:(uint64_t)a4 portType:;
- (void)_prepareSharedExternalMemoryResourceForProcessorControllersIfNeeded;
- (void)_processingOrderByPortTypeForSettings:(uint64_t)a3;
- (void)_processorControllerDidFinishProcessingInputForPortType:(uint64_t)a3 processorType:;
- (void)_releaseNodeResourcesIfNeededBeforeEmittingSampleBuffer:(uint64_t)a1;
- (void)_releaseResources;
- (void)_removeNonPropagatedAttachedMediaFromSampleBuffer:(uint64_t)a1;
- (void)_resetProcessingState;
- (void)_resetProcessingStateIfDone;
- (void)_setupDeferredProcessingWithSettings:(uint64_t)a1 portType:;
- (void)_setupProcessingStateForDeepZoomWithSettings:(uint64_t)a1 sequenceNumber:portType:queueProvidingInput:processingPlan:;
- (void)_setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:queueProvidingInput:processingPlan:;
- (void)_setupProcessingStateForPointCloudDepthIfNeededWithSettings:(uint64_t)a1 processingPlan:;
- (void)_setupProcessingStateForSingleImageCaptureWithSettings:processingPlan:;
- (void)_setupProcessingStateWithSettings:;
- (void)_setupProcessorCoordinator;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)didSelectFormat:(id)a3 forOutput:(id)a4;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)handleStillImagePrewarmWithSettings:(id)a3 resourceConfig:(id)a4 forInput:(id)a5;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)processorController:(id)a3 didDetermineReferenceFrame:(opaqueCMSampleBuffer *)a4 processorInput:(id)a5 err:(int)a6;
- (void)processorController:(id)a3 didFinishProcessingBuffer:(__CVBuffer *)a4 metadata:(id)a5 type:(unint64_t)a6 captureFrameFlags:(unint64_t)a7 processorInput:(id)a8 err:(int)a9;
- (void)processorController:(id)a3 didFinishProcessingInference:(id)a4 inferenceAttachmentKey:(id)a5 processorInput:(id)a6 err:(int)a7;
- (void)processorController:(id)a3 didFinishProcessingInferenceAttachedMediaMetadata:(id)a4 processorInput:(id)a5;
- (void)processorController:(id)a3 didFinishProcessingInferenceBuffer:(__CVBuffer *)a4 metadata:(id)a5 inferenceAttachedMediaKey:(id)a6 processorInput:(id)a7 err:(int)a8;
- (void)processorController:(id)a3 didFinishProcessingInput:(id)a4 err:(int)a5;
- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7;
- (void)processorController:(id)a3 didSelectFusionMode:(int)a4 processorInput:(id)a5;
- (void)processorController:(id)a3 didSelectLowLightReferenceFrame:(opaqueCMSampleBuffer *)a4 processorInput:(id)a5;
- (void)processorController:(id)a3 didSelectNewReferenceFrameWithPTS:(id *)a4 transform:(id)a5 processorInput:(id)a6;
- (void)processorController:(id)a3 willAddBuffer:(__CVBuffer *)a4 metadata:(id)a5 bufferType:(unint64_t)a6 processorInput:(id)a7;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)stopAdaptiveBracketingForSettings:(id)a3 withGroup:(int)a4;
@end

@implementation BWUBNode

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWUBNode)initWithNodeConfiguration:(id)a3 captureDevice:(id)a4
{
  v20.receiver = self;
  v20.super_class = BWUBNode;
  v6 = [(BWNode *)&v20 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  if (!a3)
  {

    return 0;
  }

  v6->_nodeConfiguration = a3;
  v8 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v7 index:0];
  v9 = objc_alloc_init(BWVideoFormatRequirements);
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [(BWUBNodeConfiguration *)v7->_nodeConfiguration generateLiDARDepth];
  if ([(BWUBNodeConfiguration *)v7->_nodeConfiguration inputIs10Bit])
  {
    [v10 addObject:&unk_1F2244F98];
    if ((v11 & 1) == 0)
    {
      [v10 addObject:&unk_1F2244FB0];
    }

    if (([(BWUBNodeConfiguration *)a3 semanticStyleRenderingEnabled]& 1) != 0)
    {
      goto LABEL_12;
    }

    [v10 addObject:&unk_1F2244FC8];
    if (v11)
    {
      goto LABEL_12;
    }

    v12 = &unk_1F2244FE0;
    goto LABEL_11;
  }

  [v10 addObject:&unk_1F2244FF8];
  if ((v11 & 1) == 0)
  {
    v12 = &unk_1F2245010;
LABEL_11:
    [v10 addObject:v12];
  }

LABEL_12:
  if ([(BWUBNodeConfiguration *)v7->_nodeConfiguration stillImageFusionScheme]== 4)
  {
    v13 = [(BWStillImageNodeConfiguration *)v7->_nodeConfiguration maxLossyCompressionLevel];
    v14 = [(BWUBNodeConfiguration *)v7->_nodeConfiguration inputIs10Bit];
    v15 = [(BWUBNodeConfiguration *)v7->_nodeConfiguration inputIs10Bit];
    [v10 addObjectsFromArray:{FigCaptureSupportedCompressedPixelFormatsForSettings(4, v13, v11 ^ 1u, 1, 0, v14 ^ 1u, v15, 0)}];
  }

  [(BWVideoFormatRequirements *)v9 setSupportedPixelFormats:v10];
  if ([(BWUBNodeConfiguration *)v7->_nodeConfiguration inputIs10Bit])
  {
    v16 = 64;
  }

  else
  {
    v16 = 16;
  }

  [(BWVideoFormatRequirements *)v9 setBytesPerRowAlignment:v16];
  [(BWVideoFormatRequirements *)v9 setHeightAlignment:16];
  [(BWVideoFormatRequirements *)v9 setWidthAlignment:16];
  [(BWNodeInput *)v8 setFormatRequirements:v9];
  [(BWNodeInput *)v8 setPassthroughMode:0];
  [(BWNodeInput *)v8 setRetainedBufferCount:[(BWUBNodeConfiguration *)v7->_nodeConfiguration retainedBufferCount]];
  [(BWNode *)v7 addInput:v8];
  if ((-[BWUBNodeConfiguration generateLiDARDepth](a3) & 1) != 0 || [a4 supplementalPointCloudCaptureDevice])
  {
    if (-[BWUBNodeConfiguration generateLiDARDepth](a3) && [a4 supplementalPointCloudCaptureDevice])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"We should not be generating LiDAR depth and using the ToF camera in the supplemental mode at the same time" userInfo:0]);
    }

    v7->_pointCloudInput = [[BWNodeInput alloc] initWithMediaType:1885564004 node:v7 index:1];
    [(BWNodeInput *)v7->_pointCloudInput setFormatRequirements:objc_alloc_init(BWPointCloudFormatRequirements)];
    [(BWNodeInput *)v7->_pointCloudInput setRetainedBufferCount:1000];
    [(BWNode *)v7 addInput:v7->_pointCloudInput];
    v7->_pointCloudLock._os_unfair_lock_opaque = 0;
    v7->_discardPointClouds = 1;
  }

  v17 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v7];
  [(BWNodeOutput *)v17 setOwningNodeRetainedBufferCount:[(BWUBNodeConfiguration *)v7->_nodeConfiguration outputBufferCount]- 1];
  [(BWNodeOutput *)v17 setPixelBufferPoolProvidesBackPressure:[(BWUBNodeConfiguration *)v7->_nodeConfiguration outputPoolBackPressureEnabled]];
  [(BWNodeOutput *)v17 setPixelBufferPoolReportSlowBackPressureAllocations:[(BWUBNodeConfiguration *)v7->_nodeConfiguration outputPoolBackPressureEnabled]];
  [(BWNodeOutput *)v17 setPassthroughMode:0];
  [(BWNode *)v7 addOutput:v17];
  v18 = a4;
  v7->_device = v18;
  [(BWFigVideoCaptureDevice *)v18 setAdaptiveUnifiedBracketingController:v7];
  [(BWUBNode *)v7 _setupProcessorControllerConfigurations];
  return v7;
}

- (void)dealloc
{
  [(BWUBNode *)self _releaseResources];

  self->_emitQueue = 0;
  v3.receiver = self;
  v3.super_class = BWUBNode;
  [(BWNode *)&v3 dealloc];
}

- (BOOL)demosaicedRawSupportedForCaptureType:(int)a3
{
  if (a3 <= 0xD && ((1 << a3) & 0x3C86) != 0)
  {
    return [(BWNoiseReductionAndFusionProcessorControllerConfiguration *)self->_nrProcessorControllerConfiguration demosaicedRawEnabled];
  }

  else
  {
    return 0;
  }
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  if (self->_pointCloudInput != a4)
  {
    v111[2] = v7;
    v111[3] = v6;
    v111[14] = v4;
    v111[15] = v5;
    v10 = -[BWUBNode _requiresResizedOutputDimensionsWithInputWidth:inputHeight:](self, [a3 width], objc_msgSend(a3, "height"));
    if (v10)
    {
      [(NSArray *)[(BWIntelligentDistortionCorrectionProcessorControllerConfiguration *)self->_intelligentDistortionCorrectionControllerConfiguration portTypesWithGeometricDistortionCorrectionEnabled] count];
    }

    v11 = [(BWNodeOutput *)self->super._output owningNodeRetainedBufferCount];
    v12 = v11;
    v13 = v11 + 1;
    if (self->_intelligentDistortionCorrectionControllerConfiguration)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    v15 = v11 + 1;
    if ((v14 & 1) == 0)
    {
      v15 = 2 * v13;
      self->_dcOutputBufferCount = 2 * v13;
    }

    v73 = v14;
    if ([(BWNoiseReductionAndFusionProcessorControllerConfiguration *)self->_nrProcessorControllerConfiguration demosaicedRawEnabled])
    {
      self->_demosaicedRawOutputBufferCount = v13;
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
    }

    deepZoomProcessorControllerConfiguration = self->_deepZoomProcessorControllerConfiguration;
    v78 = [(BWStillImageNodeConfiguration *)self->_nodeConfiguration deferredPhotoProcessorEnabled];
    v72 = v15;
    if (deepZoomProcessorControllerConfiguration)
    {
      v17 = v15 + 1;
    }

    else
    {
      v17 = v15;
    }

    v74 = objc_alloc_init(BWVideoFormatRequirements);
    if (FigCapturePixelFormatIsFullRange([a3 pixelFormat]))
    {
      v18 = 875704422;
    }

    else
    {
      v18 = 875704438;
    }

    v111[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v18];
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:1];
    if (FigCapturePlatformSupportsUniversalCompression())
    {
      v20 = self;
      if (!self->_deepZoomProcessorControllerConfiguration && self->_nrProcessorControllerType == 6)
      {
        v21 = [(BWStillImageNodeConfiguration *)self->_nodeConfiguration maxLossyCompressionLevel];
        if (self->_deepFusionProcessorControllerConfiguration)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21;
        }

        v19 = FigCapturePixelFormatsByAddingCompressedVariants(v19, v22);
      }
    }

    else
    {
      v20 = self;
    }

    v23 = (v17 - 1);
    if ([a3 colorSpaceProperties])
    {
      v110 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a3, "colorSpaceProperties")}];
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
    }

    else
    {
      v24 = 0;
    }

    [(BWVideoFormatRequirements *)v74 setSupportedColorSpaceProperties:v24];
    [(BWVideoFormatRequirements *)v74 setSupportedPixelFormats:v19];
    if (v10)
    {
      [(BWVideoFormatRequirements *)v74 setWidth:[(BWUBNodeConfiguration *)v20->_nodeConfiguration outputDimensions]];
      v25 = [(BWUBNodeConfiguration *)v20->_nodeConfiguration outputDimensions]>> 32;
    }

    else
    {
      -[BWVideoFormatRequirements setWidth:](v74, "setWidth:", [a3 width]);
      v25 = [a3 height];
    }

    [(BWVideoFormatRequirements *)v74 setHeight:v25];
    [(BWVideoFormatRequirements *)v74 setBytesPerRowAlignment:64];
    [(BWVideoFormatRequirements *)v74 setHeightAlignment:16];
    [(BWVideoFormatRequirements *)v74 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v74 setPlaneAlignment:64];
    [(BWVideoFormatRequirements *)v74 setSupportedCacheModes:+[BWVideoFormatRequirements cacheModesForOptimizedHWAccess]];
    [(BWNodeOutput *)v20->super._output setFormatRequirements:v74];
    [(BWNodeOutput *)v20->super._output setOwningNodeRetainedBufferCount:v23];
    v26 = [a3 width];
    v27 = [a3 height];
    [(BWNoiseReductionAndFusionProcessorControllerConfiguration *)v20->_nrProcessorControllerConfiguration setInputFormat:a3];
    [(BWNoiseReductionAndFusionProcessorControllerConfiguration *)v20->_nrProcessorControllerConfiguration setDeepFusionInputFormat:a3];
    [(BWDeepFusionProcessorControllerConfiguration *)v20->_deepFusionProcessorControllerConfiguration setMaxInputDimensions:v26 | (v27 << 32)];
    [(BWDeepZoomProcessorControllerConfiguration *)v20->_deepZoomProcessorControllerConfiguration setInputFormat:a3];
    v79 = [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v20->super._output primaryMediaConfiguration] pixelBufferPoolProvidesBackPressure];
    if ([(BWNoiseReductionAndFusionProcessorControllerConfiguration *)v20->_nrProcessorControllerConfiguration demosaicedRawEnabled])
    {
      v70 = -[BWUBNode _demosaicedRawFormatRequirementsWithDimensions:colorSpaceProperties:](v20, -[BWVideoFormatRequirements width](v74, "width") | (-[BWVideoFormatRequirements height](v74, "height") << 32), [-[NSArray firstObject](-[BWVideoFormatRequirements supportedColorSpaceProperties](v74 "supportedColorSpaceProperties")]);
      v71 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      [(BWNodeOutputMediaConfiguration *)v71 setFormatRequirements:v70];
      [(BWNodeOutputMediaConfiguration *)v71 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v71 setProvidesPixelBufferPool:1];
      [(BWNodeOutputMediaConfiguration *)v71 setOwningNodeRetainedBufferCount:v12];
      [(BWNodeOutputMediaConfiguration *)v71 setPixelBufferPoolProvidesBackPressure:v79];
      [(BWNodeOutputMediaConfiguration *)v71 setPixelBufferPoolReportSlowBackPressureAllocations:v79];
      [(BWNodeOutput *)v20->super._output setMediaConfiguration:v71 forAttachedMediaKey:0x1F21AAE10];
    }

    v107 = a3;
    v108 = &unk_1F2245028;
    v109 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
    -[BWLearnedNRProcessorControllerConfiguration setInputFormatsByResolutionFlavor:](v20->_learnedNRProcessorControllerConfiguration, "setInputFormatsByResolutionFlavor:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1]);
    [(BWLearnedNRProcessorControllerConfiguration *)v20->_learnedNRProcessorControllerConfiguration setOutputFormat:a3];
    v28 = [MEMORY[0x1E695DF90] dictionary];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v86 = v20;
    obj = [(BWUBNodeConfiguration *)v20->_nodeConfiguration providedInferenceAttachedMediaByMode];
    v82 = [obj countByEnumeratingWithState:&v103 objects:v102 count:16];
    if (v82)
    {
      v80 = *v104;
      do
      {
        v29 = 0;
        do
        {
          if (*v104 != v80)
          {
            objc_enumerationMutation(obj);
          }

          v84 = v29;
          v30 = *(*(&v103 + 1) + 8 * v29);
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v101 = 0u;
          v31 = [-[BWUBNodeConfiguration providedInferenceAttachedMediaByMode](v86->_nodeConfiguration) objectForKeyedSubscript:v30];
          v32 = [v31 countByEnumeratingWithState:&v98 objects:v97 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v99;
            do
            {
              for (i = 0; i != v33; ++i)
              {
                if (*v99 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v98 + 1) + 8 * i);
                v37 = [v28 objectForKeyedSubscript:v36];
                if (v37)
                {
                  [v37 addObject:v30];
                }

                else
                {
                  [v28 setObject:objc_msgSend(MEMORY[0x1E695DF70] forKeyedSubscript:{"arrayWithObject:", v30), v36}];
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v98 objects:v97 count:16];
            }

            while (v33);
          }

          v29 = v84 + 1;
        }

        while (v84 + 1 != v82);
        v82 = [obj countByEnumeratingWithState:&v103 objects:v102 count:16];
      }

      while (v82);
    }

    v38 = [v28 copy];
    v86->_providedInferenceAttachedMediaModesByAttachedMediaKey = v38;
    v39 = v86;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v75 = v38;
    v81 = [(NSDictionary *)v38 countByEnumeratingWithState:&v93 objects:v92 count:16];
    if (v81)
    {
      obja = *v94;
      do
      {
        v40 = 0;
        do
        {
          if (*v94 != obja)
          {
            objc_enumerationMutation(v75);
          }

          v41 = *(*(&v93 + 1) + 8 * v40);
          v85 = v40;
          if ([BWMattingV2InferenceConfiguration isMattingOutputAttachedMediaKey:v41])
          {
            v42 = [(BWUBNodeConfiguration *)v39->_nodeConfiguration inferenceMainImageDownscalingFactor];
            if (*&v42 == 0.0)
            {
              v43 = 0;
            }

            else
            {
              v43 = objc_alloc_init(BWVideoFormatRequirements);
              v44 = [(BWVideoFormatRequirements *)v74 width];
              v45 = [(BWUBNodeConfiguration *)v39->_nodeConfiguration inferenceMainImageDownscalingFactor];
              [(BWVideoFormatRequirements *)v43 setWidth:(v44 / *&v45)];
              v46 = [(BWVideoFormatRequirements *)v74 height];
              v47 = [(BWUBNodeConfiguration *)v39->_nodeConfiguration inferenceMainImageDownscalingFactor];
              [(BWVideoFormatRequirements *)v43 setHeight:(v46 / *&v47)];
              [(BWVideoFormatRequirements *)v43 setSupportedPixelFormats:&unk_1F2248DA8];
              [(BWVideoFormatRequirements *)v43 setBytesPerRowAlignment:64];
              [(BWVideoFormatRequirements *)v43 setPlaneAlignment:64];
              [(BWVideoFormatRequirements *)v43 setWidthAlignment:16];
              [(BWVideoFormatRequirements *)v43 setHeightAlignment:16];
              [(BWVideoFormatRequirements *)v43 setMemoryPoolUseAllowed:0];
            }
          }

          else
          {
            v43 = objc_alloc_init(BWVideoFormatRequirements);
            [(BWVideoFormatRequirements *)v43 setWidth:512];
            [(BWVideoFormatRequirements *)v43 setHeight:384];
            [(BWVideoFormatRequirements *)v43 setSupportedPixelFormats:&unk_1F2248DC0];
            [(BWVideoFormatRequirements *)v43 setBytesPerRowAlignment:64];
          }

          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v83 = v41;
          v48 = [v28 objectForKeyedSubscript:v41];
          v49 = [v48 countByEnumeratingWithState:&v88 objects:v87 count:16];
          if (v49)
          {
            v50 = v49;
            LODWORD(v51) = 0;
            v52 = *v89;
            do
            {
              for (j = 0; j != v50; ++j)
              {
                if (*v89 != v52)
                {
                  objc_enumerationMutation(v48);
                }

                v54 = [*(*(&v88 + 1) + 8 * j) intValue];
                if (v54 == 2)
                {
                  v55 = [(BWNodeOutput *)v39->super._output owningNodeRetainedBufferCount];
                }

                else if (v54 == 1)
                {
                  v55 = v12;
                }

                else
                {
                  v55 = 0;
                }

                if (v51 <= v55)
                {
                  v51 = v55;
                }

                else
                {
                  v51 = v51;
                }
              }

              v50 = [v48 countByEnumeratingWithState:&v88 objects:v87 count:16];
            }

            while (v50);
          }

          else
          {
            v51 = 0;
          }

          v56 = v79 | [(BWStillImageNodeConfiguration *)v39->_nodeConfiguration deferredCaptureSupportEnabled];
          v57 = objc_alloc_init(BWNodeOutputMediaConfiguration);
          [(BWNodeOutputMediaConfiguration *)v57 setFormatRequirements:v43];
          [(BWNodeOutputMediaConfiguration *)v57 setPassthroughMode:0];
          [(BWNodeOutputMediaConfiguration *)v57 setProvidesPixelBufferPool:!v78];
          [(BWNodeOutputMediaConfiguration *)v57 setOwningNodeRetainedBufferCount:v51];
          [(BWNodeOutputMediaConfiguration *)v57 setPixelBufferPoolProvidesBackPressure:v56 & 1];
          v58 = v56 & 1;
          v39 = v86;
          [(BWNodeOutputMediaConfiguration *)v57 setPixelBufferPoolReportSlowBackPressureAllocations:v58];
          [(BWNodeOutput *)v86->super._output setMediaConfiguration:v57 forAttachedMediaKey:v83];
          v40 = v85 + 1;
        }

        while (v85 + 1 != v81);
        v81 = [(NSDictionary *)v75 countByEnumeratingWithState:&v93 objects:v92 count:16];
      }

      while (v81);
    }

    [(BWNoiseReductionAndFusionProcessorControllerConfiguration *)v39->_nrProcessorControllerConfiguration gainMapMainImageDownscalingFactor];
    if (v59 != 0.0)
    {
      v60 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      v61 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v61 setSupportedPixelFormats:&unk_1F2248DD8];
      v62 = [(BWVideoFormatRequirements *)v74 width];
      [(BWNoiseReductionAndFusionProcessorControllerConfiguration *)v39->_nrProcessorControllerConfiguration gainMapMainImageDownscalingFactor];
      [(BWVideoFormatRequirements *)v61 setWidth:(v62 / v63)];
      v64 = [(BWVideoFormatRequirements *)v74 height];
      [(BWNoiseReductionAndFusionProcessorControllerConfiguration *)v39->_nrProcessorControllerConfiguration gainMapMainImageDownscalingFactor];
      [(BWVideoFormatRequirements *)v61 setHeight:(v64 / v65)];
      [(BWNodeOutputMediaConfiguration *)v60 setFormatRequirements:v61];
      [(BWNodeOutputMediaConfiguration *)v60 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v60 setProvidesPixelBufferPool:v78 & v73 ^ 1u];
      [(BWNodeOutputMediaConfiguration *)v60 setOwningNodeRetainedBufferCount:(v72 >> (v78 & (v73 ^ 1))) - 1];
      [(BWNodeOutputMediaConfiguration *)v60 setPixelBufferPoolProvidesBackPressure:v79];
      [(BWNodeOutputMediaConfiguration *)v60 setPixelBufferPoolReportSlowBackPressureAllocations:v79];
      [(BWNodeOutput *)v39->super._output setMediaConfiguration:v60 forAttachedMediaKey:0x1F217BF50];
    }

    if (v39->_stereoDisparityProcessorControllerConfiguration || [(BWUBNodeConfiguration *)v39->_nodeConfiguration generateLiDARDepth])
    {
      v66 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      v67 = objc_alloc_init(BWVideoFormatRequirements);
      stereoDisparityProcessorControllerConfiguration = v39->_stereoDisparityProcessorControllerConfiguration;
      if (stereoDisparityProcessorControllerConfiguration)
      {
        [(BWVideoFormatRequirements *)v67 setWidth:[(BWStereoDisparityProcessorControllerConfiguration *)stereoDisparityProcessorControllerConfiguration disparityOutputDimensions]];
        [(BWVideoFormatRequirements *)v67 setHeight:[(BWStereoDisparityProcessorControllerConfiguration *)v39->_stereoDisparityProcessorControllerConfiguration disparityOutputDimensions]>> 32];
        if ([(BWStereoDisparityProcessorControllerConfiguration *)v39->_stereoDisparityProcessorControllerConfiguration stillImageDepthDataType]== 2)
        {
          v69 = objc_alloc_init(BWNodeInputMediaConfiguration);
          [(BWNodeInputMediaConfiguration *)v69 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
          [(BWNodeInputMediaConfiguration *)v69 setPassthroughMode:0];
          [(BWNodeInput *)v39->super._input setMediaConfiguration:v69 forAttachedMediaKey:0x1F21AAB10];
        }
      }

      else if ([(BWUBNodeConfiguration *)v39->_nodeConfiguration generateLiDARDepth])
      {
        [(BWVideoFormatRequirements *)v67 setWidth:[(BWUBNodeConfiguration *)v39->_nodeConfiguration disparityOutputDimensions]];
        [(BWVideoFormatRequirements *)v67 setHeight:[(BWUBNodeConfiguration *)v39->_nodeConfiguration disparityOutputDimensions]>> 32];
      }

      [(BWVideoFormatRequirements *)v67 setSupportedPixelFormats:&unk_1F2248DF0];
      [(BWNodeOutputMediaConfiguration *)v66 setFormatRequirements:v67];
      [(BWNodeOutputMediaConfiguration *)v66 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v66 setProvidesPixelBufferPool:1];
      [(BWNodeOutputMediaConfiguration *)v66 setOwningNodeRetainedBufferCount:[(BWNodeOutput *)v39->super._output owningNodeRetainedBufferCount]];
      [(BWNodeOutput *)v39->super._output setMediaConfiguration:v66 forAttachedMediaKey:@"Depth"];
    }
  }
}

- (void)didSelectFormat:(id)a3 forOutput:(id)a4
{
  v6 = [a3 width];
  v7 = [a3 height];
  [(BWNoiseReductionAndFusionProcessorControllerConfiguration *)self->_nrProcessorControllerConfiguration setOutputFormat:a3];
  [(BWDeepFusionProcessorControllerConfiguration *)self->_deepFusionProcessorControllerConfiguration setMaxOutputDimensions:v6 | (v7 << 32)];
  deepZoomProcessorControllerConfiguration = self->_deepZoomProcessorControllerConfiguration;

  [(BWDeepZoomProcessorControllerConfiguration *)deepZoomProcessorControllerConfiguration setOutputFormat:a3];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  if (![a5 isEqualToString:0x1F21AAB10] || !self->_stereoDisparityProcessorControllerConfiguration)
  {
    v9.receiver = self;
    v9.super_class = BWUBNode;
    [(BWNode *)&v9 didSelectFormat:a3 forInput:a4 forAttachedMediaKey:a5];
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  if (dword_1EB58E340)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6.receiver = self;
  v6.super_class = BWUBNode;
  [(BWNode *)&v6 prepareForCurrentConfigurationToBecomeLive];
  processorCoordinatorWorkerQueue = self->_processorCoordinatorWorkerQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__BWUBNode_prepareForCurrentConfigurationToBecomeLive__block_invoke;
  v5[3] = &unk_1E798F870;
  v5[4] = self;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ubn_dispatch_sync_block_invoke;
  block[3] = &unk_1E798FEA0;
  block[4] = v5;
  dispatch_sync(processorCoordinatorWorkerQueue, block);
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(BWNode *)self inputs:a3];
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if (self->_pointCloudInput == a5 && ![*(*(&v13 + 1) + 8 * v11) liveFormat])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    if (![(BWNodeOutput *)self->super._output liveFormat])
    {
      [(BWNodeOutput *)self->super._output makeConfiguredFormatLive];
    }
  }
}

- (void)didReachEndOfDataForInput:(id)a3
{
  if (dword_1EB58E340)
  {
    v19 = 0;
    v18 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(BWNode *)self input:self->super._input hasReachedState:0, v9, v10]&& self->_pointCloudInput != a3 && !self->_resourcesReleased)
  {

    self->_device = 0;
    deferredProcessorControllerQueue = self->_deferredProcessorControllerQueue;
    if (deferredProcessorControllerQueue)
    {
      block = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __ubn_dispatch_sync_block_invoke;
      v16 = &unk_1E798FEA0;
      v17 = &__block_literal_global_80;
      dispatch_sync(deferredProcessorControllerQueue, &block);
    }

    processorCoordinatorWorkerQueue = self->_processorCoordinatorWorkerQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __38__BWUBNode_didReachEndOfDataForInput___block_invoke_2;
    v12[3] = &unk_1E798F870;
    v12[4] = self;
    block = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __ubn_dispatch_sync_block_invoke;
    v16 = &unk_1E798FEA0;
    v17 = v12;
    dispatch_sync(processorCoordinatorWorkerQueue, &block);
    v8 = self->_processorCoordinatorWorkerQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__BWUBNode_didReachEndOfDataForInput___block_invoke_6;
    v11[3] = &unk_1E798F870;
    v11[4] = self;
    block = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __ubn_dispatch_sync_block_invoke;
    v16 = &unk_1E798FEA0;
    v17 = v11;
    dispatch_sync(v8, &block);
  }

  if ([(BWNode *)self allInputsHaveReachedState:0])
  {
    [BWUBNode didReachEndOfDataForInput:];
  }
}

void __38__BWUBNode_didReachEndOfDataForInput___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[39])
  {
    [(BWUBNode *)v2 _deepFusionDispatch:1 direction:&__block_literal_global_66_0 block:?];
    v2 = *(a1 + 32);
  }

  v3 = v2[44];
  if (v3)
  {
    block = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __ubn_dispatch_sync_block_invoke;
    v8 = &unk_1E798FEA0;
    v9 = &__block_literal_global_68;
    dispatch_sync(v3, &block);
    v2 = *(a1 + 32);
  }

  v4 = v2[66];
  if (v4)
  {
    block = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __ubn_dispatch_sync_block_invoke;
    v8 = &unk_1E798FEA0;
    v9 = &__block_literal_global_70_0;
    dispatch_sync(v4, &block);
  }
}

- (void)_deepFusionDispatch:(int)a3 direction:(uint64_t)a4 block:
{
  if (a1)
  {
    v7 = *(a1 + 312);
    if (!v7)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Attempting to dispatch onto a nil _deepFusionProcessorControllerQueue" userInfo:{0, v4, v5}]);
    }

    [(BWUBNode *)a1 _dispatch:a2 direction:a3 processingQueue:v7 block:a4];
  }
}

uint64_t __38__BWUBNode_didReachEndOfDataForInput___block_invoke_7(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) liveFormat];
  if (result)
  {
    v3 = *(*(a1 + 32) + 16);

    return [v3 markEndOfLiveOutput];
  }

  return result;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (self->_resourcesReleased)
  {
    v20 = -12780;
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v16 = 0;
    v15 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(block[0]) = 0;
    v12 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v12, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWUBNode.m", 871, @"LastShownDate:BWUBNode.m:871", @"LastShownBuild:BWUBNode.m:871", 0);
    free(v12);
  }

  else if (self->_pointCloudInput == a4)
  {
    [BWUBNode _handlePointCloudSampleBuffer:?];
  }

  else
  {
    processorCoordinatorWorkerQueue = self->_processorCoordinatorWorkerQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40__BWUBNode_renderSampleBuffer_forInput___block_invoke;
    v13[3] = &unk_1E7999228;
    v13[6] = &v17;
    v13[7] = a3;
    v13[4] = self;
    v13[5] = a4;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __ubn_dispatch_sync_block_invoke;
    block[3] = &unk_1E798FEA0;
    block[4] = v13;
    dispatch_sync(processorCoordinatorWorkerQueue, block);
  }

  if (*(v18 + 6))
  {
    v8 = CMGetAttachment(a3, @"StillSettings", 0);
    v9 = CMGetAttachment(a3, *off_1E798A3C8, 0);
    [(BWUBNode *)self handleNodeError:[BWNodeError forInput:"newError:sourceNode:stillImageSettings:metadata:" newError:self sourceNode:v8 stillImageSettings:v9 metadata:?], a4];
  }

  _Block_object_dispose(&v17, 8);
}

uint64_t __40__BWUBNode_renderSampleBuffer_forInput___block_invoke(uint64_t a1)
{
  result = [BWUBNode _handleSampleBuffer:*(a1 + 56) input:?];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __38__BWUBNode__handleSampleBuffer_input___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) photoIdentifier];

  return [v1 setContainer:v2 photoIdentifier:v3];
}

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  if (self->_pointCloudInput != a4)
  {
    v15[7] = v4;
    v15[8] = v5;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 1;
    if (self->_resourcesReleased || (processorCoordinatorWorkerQueue = self->_processorCoordinatorWorkerQueue, v10[0] = MEMORY[0x1E69E9820], v10[1] = 3221225472, v10[2] = __37__BWUBNode_handleNodeError_forInput___block_invoke, v10[3] = &unk_1E79906C0, v10[4] = a3, v10[5] = self, v10[6] = &v11, v15[0] = MEMORY[0x1E69E9820], v15[1] = 3221225472, v15[2] = __ubn_dispatch_sync_block_invoke, v15[3] = &unk_1E798FEA0, v15[4] = v10, dispatch_sync(processorCoordinatorWorkerQueue, v15), (v12[3] & 1) != 0))
    {
      [(BWUBNode *)self handleNodeError:v9 forInput:a3];
    }

    _Block_object_dispose(&v11, 8);
  }
}

void __37__BWUBNode_handleNodeError_forInput___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) errorCode] == -16800 || objc_msgSend(*(a1 + 32), "errorCode") == -16802)
  {
    v2 = [*(*(a1 + 40) + 576) count];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = *(*(a1 + 40) + 576);
    v4 = [v3 countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [objc_msgSend(*(*(a1 + 40) + 576) objectForKeyedSubscript:{*(*(&v20 + 1) + 8 * i)), "setSkipProcessing:", 1}];
        }

        v5 = [v3 countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v5);
    }

    v8 = [*(*(a1 + 40) + 592) count];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = *(*(a1 + 40) + 592);
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [objc_msgSend(*(*(a1 + 40) + 592) objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * j)), "setSkipProcessing:", 1}];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v11);
    }

    *(*(*(a1 + 48) + 8) + 24) = [objc_msgSend(*(*(a1 + 40) + 184) controllerForType:{*(*(a1 + 40) + 240)), "finishProcessingCurrentInputNow"}] ^ 1;
    if (v2 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = [objc_msgSend(*(*(a1 + 40) + 184) controllerForType:{9), "finishProcessingCurrentInputNow"}] ^ 1;
    }

    if (v8 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = [objc_msgSend(*(*(a1 + 40) + 184) controllerForType:{13), "finishProcessingCurrentInputNow"}] ^ 1;
    }
  }

  if ([*(a1 + 32) errorCode] == -16806)
  {
    *(*(*(a1 + 48) + 8) + 24) = [objc_msgSend(objc_msgSend(*(a1 + 32) "stillImageSettings")] ^ 1;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [(BWUBNode *)*(a1 + 40) _resetProcessingState];
  }
}

- (void)handleStillImagePrewarmWithSettings:(id)a3 resourceConfig:(id)a4 forInput:(id)a5
{
  if (self->_resourcesReleased)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v8, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWUBNode.m", 1155, @"LastShownDate:BWUBNode.m:1155", @"LastShownBuild:BWUBNode.m:1155", 0);
    free(v8);
  }

  else
  {
    processorCoordinatorWorkerQueue = self->_processorCoordinatorWorkerQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__BWUBNode_handleStillImagePrewarmWithSettings_resourceConfig_forInput___block_invoke;
    v9[3] = &unk_1E798FD58;
    v9[4] = self;
    v9[5] = a3;
    v9[6] = a4;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __ubn_dispatch_sync_block_invoke;
    block[3] = &unk_1E798FEA0;
    block[4] = v9;
    dispatch_sync(processorCoordinatorWorkerQueue, block);
  }
}

void __72__BWUBNode_handleStillImagePrewarmWithSettings_resourceConfig_forInput___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 160) isEqualToString:{objc_msgSend(objc_msgSend(*(a1 + 40), "requestedSettings"), "captureRequestIdentifier")}] & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 176);
    if (v2 && ([v2 isEqualToString:{objc_msgSend(objc_msgSend(*(a1 + 40), "requestedSettings"), "captureRequestIdentifier")}] & 1) == 0)
    {
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      v19 = 0;
      v18 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v9 = [*(a1 + 40) settingsID];
      v10 = *(*(a1 + 32) + 168);
      *block = 134349312;
      *&block[4] = v9;
      *&block[12] = 2050;
      *&block[14] = v10;
      v11 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v11, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWUBNode.m", 1164, @"LastShownDate:BWUBNode.m:1164", @"LastShownBuild:BWUBNode.m:1164", 0);
      free(v11);
      [(BWUBNode *)*(a1 + 32) _resetProcessingState];
    }

    v3 = *(a1 + 32);
    if (*(v3 + 176))
    {
      v4 = 0;
    }

    else
    {
      if (([objc_msgSend(*(a1 + 40) "captureSettings")] & 0x200) != 0)
      {
        os_unfair_lock_lock((*(a1 + 32) + 560));
        *(*(a1 + 32) + 564) = 0;
        os_unfair_lock_unlock((*(a1 + 32) + 560));
      }

      if ([objc_msgSend(*(a1 + 40) "requestedSettings")])
      {
        v6 = [BWUBNode _setupProcessingStateIfNeededWithBeginMomentSettings:?];
      }

      else
      {
        [BWUBNode _setupProcessingStateWithSettings:];
      }

      v4 = v6;
      v3 = *(a1 + 32);
      if (v4 == -16808)
      {
        [(BWUBNode *)v3 _resetProcessingState];
        v3 = *(a1 + 32);
        v4 = -16808;
      }
    }

    v5 = *(v3 + 208);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__BWUBNode_handleStillImagePrewarmWithSettings_resourceConfig_forInput___block_invoke_126;
    v12[3] = &unk_1E7999250;
    v14 = v4;
    v12[4] = v3;
    v13 = *(a1 + 40);
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = __ubn_dispatch_async_block_invoke;
    v16 = &unk_1E798FEA0;
    v17 = v12;
    dispatch_async(v5, block);
  }
}

void __72__BWUBNode_handleStillImagePrewarmWithSettings_resourceConfig_forInput___block_invoke_126(uint64_t a1)
{
  if (*(a1 + 56) == -16808)
  {
    v5 = [BWNodeError newError:4294950488 sourceNode:*(a1 + 32) stillImageSettings:*(a1 + 40) metadata:0];
    [*(*(a1 + 32) + 16) emitNodeError:v5];
  }

  else
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 16);
    v4 = *(a1 + 48);

    [v3 emitStillImagePrewarmMessageWithSettings:v2 resourceConfig:v4];
  }
}

- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7
{
  v7 = *&a7;
  v10 = a4;
  v11 = self;
  if (dword_1EB58E340)
  {
    v89 = 0;
    v88 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = self;
    v10 = a4;
  }

  v66 = a6;
  if (([objc_msgSend(objc_msgSend(a6 settings] & 1) == 0)
  {
    v65 = a5;
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v89 = 0;
    v88 = OS_LOG_TYPE_DEFAULT;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v16 = v89;
    if (os_log_type_enabled(v15, v88))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      v18 = self;
      currentCaptureRequestIdentifier = self->_currentCaptureRequestIdentifier;
      v20 = a6;
      v21 = [objc_msgSend(a6 "settings")];
      v79 = 136315650;
      v80 = "[BWUBNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:]";
      v81 = 2112;
      v82 = currentCaptureRequestIdentifier;
      v83 = 2112;
      v84 = v21;
      _os_log_send_and_compose_impl();
    }

    else
    {
      v20 = a6;
      v18 = self;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v22 = v18->_currentCaptureRequestIdentifier;
    v23 = [objc_msgSend(v20 "settings")];
    LODWORD(block.value) = 138412546;
    *(&block.value + 4) = v22;
    LOWORD(block.flags) = 2112;
    *(&block.flags + 2) = v23;
    v24 = _os_log_send_and_compose_impl();
    v63 = 0;
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v24, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWUBNode.m", 1432, @"LastShownDate:BWUBNode.m:1432", @"LastShownBuild:BWUBNode.m:1432", 0);
    free(v24);
    v11 = v18;
    a5 = v65;
  }

  if (!v7 && -[BWStillImageNodeConfiguration deferredPhotoProcessorEnabled](v11->_nodeConfiguration, "deferredPhotoProcessorEnabled") && ([a3 type] == 2 || objc_msgSend(a3, "type") == 6))
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(v10, @"StillImageProcessingFlags", 0), "unsignedIntValue") | 0x2000}];
    CMSetAttachment(v10, @"StillImageProcessingFlags", v25, 1u);
    AttachedMedia = BWSampleBufferGetAttachedMedia(v10, 0x1F21AAE10);
    if (AttachedMedia)
    {
      v27 = AttachedMedia;
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(AttachedMedia, @"StillImageProcessingFlags", 0), "unsignedIntValue") | 0x2000}];
      CMSetAttachment(v27, @"StillImageProcessingFlags", v28, 1u);
    }
  }

  v29 = [a3 type];
  if (v29 > 4)
  {
    v30 = v66;
    if (v29 != 6)
    {
      if (v29 == 5 && !_FigIsCurrentDispatchQueue())
      {
        [BWUBNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:];
      }

      goto LABEL_43;
    }

LABEL_29:
    if (!_FigIsCurrentDispatchQueue())
    {
      [BWUBNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:];
    }

    if (a5 == 7 && !v7)
    {
      if ([(BWUBNodeConfiguration *)v11->_nodeConfiguration deepZoomVersion]>= 1)
      {
        v33 = [(BWUBNodeConfiguration *)v11->_nodeConfiguration sensorConfigurationsByPortType];
        v34 = [v66 portType];
        v35 = v33;
        v30 = v66;
        if (+[BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForSampleBuffer:type:sensorConfiguration:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:](BWDeepZoomProcessorControllerConfiguration, "doDeepZoomStandardOrLiteForSampleBuffer:type:sensorConfiguration:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:", v10, 1, [v35 objectForKeyedSubscript:v34], 0, 0))
        {
          [(BWDeferredPipelineParameters *)[(BWDeferredCaptureControllerInput *)v11->_deferredCaptureControllerInput pipelineParameters] setDeepZoomVersion:[(BWUBNodeConfiguration *)v11->_nodeConfiguration deepZoomVersion]];
        }
      }

      v36 = [CMGetAttachment(v10 @"PhotoManifest"];
      CMSampleBufferGetPresentationTimeStamp(&v78, v10);
      block = v78;
      [v36 setPresentationTimeStamp:&block];
      [v36 setTime:{objc_msgSend(MEMORY[0x1E695DF00], "now")}];
      [v36 setTimeZone:{objc_msgSend(MEMORY[0x1E695DFE8], "systemTimeZone")}];
      [(BWDeferredCaptureControllerInput *)v11->_deferredCaptureControllerInput addPhotoDescriptor:v36];
      if ([objc_msgSend(v30 "processingSettings")])
      {
        v37 = BWSampleBufferGetAttachedMedia(v10, 0x1F21AAE10);
        v38 = CMGetAttachment(v37, @"RawDNGDictionary", 0);
        v39 = [v30 settings];
        if (v38)
        {
          v40 = BWCreateDNGDictionaryWithUpdatedDimensionsIfNeeded(v38, [v39 deferredPhotoProxyWidth] | (objc_msgSend(v39, "deferredPhotoProxyHeight") << 32), objc_msgSend(v39, "deferredPhotoFinalWidth") | (objc_msgSend(v39, "deferredPhotoFinalHeight") << 32));
          if (v40)
          {
            v38 = v40;
          }

          v30 = v66;
          -[BWDeferredCaptureControllerInput addDictionary:tag:](v11->_deferredCaptureControllerInput, "addDictionary:tag:", v38, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagDNGDictionaryPrefix, objc_msgSend(v66, "portType")]);
        }

        else if (![v39 outputFormat])
        {
          [(BWDeferredCaptureControllerInput *)v11->_deferredCaptureControllerInput encounteredProcessingError:0];
          v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(v10, @"StillImageProcessingFlags", 0), "unsignedIntValue") ^ 0x1000}];
          CMSetAttachment(v10, @"StillImageProcessingFlags", v41, 1u);
        }
      }
    }

    goto LABEL_43;
  }

  v30 = v66;
  if (v29 == 1)
  {
    goto LABEL_29;
  }

  if (v29 != 2)
  {
    goto LABEL_43;
  }

  if (_FigIsCurrentDispatchQueue())
  {
    if (v7)
    {
      goto LABEL_43;
    }
  }

  else
  {
    [BWUBNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:];
    if (v7)
    {
      goto LABEL_43;
    }
  }

  v31 = [(BWUBNodeConfiguration *)v11->_nodeConfiguration deepFusionSupportEnabled];
  if (a5 != 15 && v31)
  {
    v32 = [v66 portType];
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __88__BWUBNode_processorController_didFinishProcessingSampleBuffer_type_processorInput_err___block_invoke;
    v77[3] = &unk_1E798F898;
    v77[4] = v11;
    v77[5] = v32;
    [(BWUBNode *)v11 _deepFusionDispatch:3 direction:v77 block:?];
  }

LABEL_43:
  v42 = [v30 outputSampleBufferRouterForBufferType:a5];
  if (![v42 outputSampleBufferRouter])
  {
    v58 = MEMORY[0x1E696AEC0];
    v59 = BWStillImageProcessorTypeToShortString([a3 type]);
    v57 = [v58 stringWithFormat:@"No output router for output sample buffer of %@ (buffer type: %@, err: %d)", v59, BWStillImageBufferTypeToShortString(a5), v7];
LABEL_68:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v57 userInfo:0]);
  }

  v43 = objc_autoreleasePoolPush();
  v44 = [v42 outputSampleBufferRouter];
  (*(v44 + 16))(v44, v10, a5, v30, v7);
  objc_autoreleasePoolPop(v43);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obja = [v42 bypassedProcessorsTypes];
  v45 = [obja countByEnumeratingWithState:&v73 objects:v72 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v74;
    do
    {
      v48 = 0;
      do
      {
        if (*v74 != v47)
        {
          objc_enumerationMutation(obja);
        }

        v49 = [*(*(&v73 + 1) + 8 * v48) intValue];
        if (dword_1EB58E340)
        {
          v89 = 0;
          v88 = OS_LOG_TYPE_DEFAULT;
          v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v51 = v89;
          if (os_log_type_enabled(v50, v88))
          {
            v52 = v51;
          }

          else
          {
            v52 = v51 & 0xFFFFFFFE;
          }

          if (v52)
          {
            v53 = BWStillImageProcessorTypeToShortString(v49);
            v79 = 136315650;
            v80 = "[BWUBNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:]";
            v81 = 2112;
            v82 = v53;
            v83 = 2112;
            v84 = v66;
            LODWORD(v63) = 32;
            v61 = &v79;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v11 = self;
        }

        if (v49 <= 0x13)
        {
          if (v49 == 7)
          {
            processorCoordinatorWorkerQueue = v11->_processorCoordinatorWorkerQueue;
            v55 = v71;
            v71[0] = MEMORY[0x1E69E9820];
            v71[1] = 3221225472;
            v71[2] = __88__BWUBNode_processorController_didFinishProcessingSampleBuffer_type_processorInput_err___block_invoke_145;
            v71[3] = &unk_1E798F870;
            v71[4] = v11;
            goto LABEL_61;
          }

          if (v49 == 10)
          {
            processorCoordinatorWorkerQueue = v11->_processorCoordinatorWorkerQueue;
            v55 = v70;
            v70[0] = MEMORY[0x1E69E9820];
            v70[1] = 3221225472;
            v70[2] = __88__BWUBNode_processorController_didFinishProcessingSampleBuffer_type_processorInput_err___block_invoke_2;
            v70[3] = &unk_1E798F870;
            v70[4] = v11;
LABEL_61:
            block.value = MEMORY[0x1E69E9820];
            *&block.timescale = 3221225472;
            block.epoch = __ubn_dispatch_async_block_invoke;
            v86 = &unk_1E798FEA0;
            v87 = v55;
            dispatch_async(processorCoordinatorWorkerQueue, &block);
            goto LABEL_62;
          }

          if (((1 << v49) & 0xFFB7E) != 0)
          {
            v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Processor bypassing support has not been implemented for %@", BWStillImageProcessorTypeToShortString(v49), v63, v64];
            goto LABEL_68;
          }
        }

LABEL_62:
        ++v48;
      }

      while (v46 != v48);
      v56 = [obja countByEnumeratingWithState:&v73 objects:v72 count:16];
      v46 = v56;
    }

    while (v56);
  }
}

uint64_t __88__BWUBNode_processorController_didFinishProcessingSampleBuffer_type_processorInput_err___block_invoke_145(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 184) controllerForType:7];

  return [v1 cancelProcessing];
}

uint64_t __88__BWUBNode_processorController_didFinishProcessingSampleBuffer_type_processorInput_err___block_invoke_2(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 184) controllerForType:10];

  return [v1 cancelProcessing];
}

void __59__BWUBNode__emitError_processorInput_metadata_description___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) emitNodeError:*(a1 + 40)];
  v2 = *(a1 + 40);
}

- (void)processorController:(id)a3 didFinishProcessingInput:(id)a4 err:(int)a5
{
  v5 = *&a5;
  v9 = [a4 portType];
  v10 = [a3 type];
  v11 = [a4 stillImageSettings];
  switch(v10)
  {
    case 1:
    case 6:
    case 11:
      if (!_FigIsCurrentDispatchQueue())
      {
        [BWUBNode processorController:didFinishProcessingInput:err:];
      }

      [(BWUBNode *)self _processorControllerDidFinishProcessingInputForPortType:v9 processorType:v10];
      v20 = [objc_msgSend(a4 "captureSettings")];
      if (v5 && v20 == 12)
      {
        if ([objc_msgSend(a4 "captureSettings")])
        {
          deferredCaptureControllerInput = self->_deferredCaptureControllerInput;

          [(BWDeferredCaptureControllerInput *)deferredCaptureControllerInput encounteredProcessingError:v5];
        }

        else if (self->_deepFusionProcessorControllerConfiguration)
        {
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke;
          v36[3] = &unk_1E798F870;
          v36[4] = self;
          v15 = v36;
          v16 = self;
          v17 = 1;
          v18 = 1;
          goto LABEL_12;
        }
      }

      return;
    case 2:
      if (!_FigIsCurrentDispatchQueue())
      {
        [BWUBNode processorController:didFinishProcessingInput:err:];
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_2;
      v34[3] = &unk_1E7998560;
      v35 = v5;
      v34[4] = self;
      v34[5] = a4;
      v34[6] = v9;
      v34[7] = 2;
      v15 = v34;
      v16 = self;
      v17 = 2;
      v18 = 3;
LABEL_12:
      [(BWUBNode *)v16 _deepFusionDispatch:v17 direction:v18 block:v15];
      return;
    case 3:
      if (!_FigIsCurrentDispatchQueue())
      {
        [BWUBNode processorController:didFinishProcessingInput:err:];
      }

      processorCoordinatorWorkerQueue = self->_processorCoordinatorWorkerQueue;
      v13 = v33;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_3;
      v33[3] = &unk_1E798FE50;
      v33[4] = self;
      v33[5] = v9;
      v33[6] = 3;
      goto LABEL_19;
    case 4:
    case 7:
    case 10:
    case 12:
    case 15:
    case 16:
    case 17:
      if (!_FigIsCurrentDispatchQueue())
      {
        [BWUBNode processorController:didFinishProcessingInput:err:];
      }

      [(BWUBNode *)self _processorControllerDidFinishProcessingInputForPortType:v9 processorType:v10];

      [(BWUBNode *)self _resetProcessingStateIfDone];
      return;
    case 5:
      if (!_FigIsCurrentDispatchQueue())
      {
        [BWUBNode processorController:didFinishProcessingInput:err:];
      }

      processorCoordinatorWorkerQueue = self->_processorCoordinatorWorkerQueue;
      v13 = v30;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_5;
      v30[3] = &unk_1E7999278;
      v31 = v5;
      v30[4] = self;
      v30[5] = a4;
      v30[7] = v11;
      v30[8] = 5;
      v30[6] = v9;
      goto LABEL_19;
    case 8:
      if (!_FigIsCurrentDispatchQueue())
      {
        [BWUBNode processorController:didFinishProcessingInput:err:];
      }

      processorCoordinatorWorkerQueue = self->_processorCoordinatorWorkerQueue;
      v13 = v32;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_4;
      v32[3] = &unk_1E798FE50;
      v32[4] = self;
      v32[5] = v9;
      v32[6] = 8;
      goto LABEL_19;
    case 9:
    case 13:
      if (!_FigIsCurrentDispatchQueue())
      {
        [BWUBNode processorController:didFinishProcessingInput:err:];
      }

      processorCoordinatorWorkerQueue = self->_processorCoordinatorWorkerQueue;
      v13 = v29;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_7;
      v29[3] = &unk_1E798FE50;
      v29[4] = self;
      v29[5] = v9;
      v29[6] = v10;
LABEL_19:
      *&block = MEMORY[0x1E69E9820];
      *(&block + 1) = 3221225472;
      v23 = __ubn_dispatch_async_block_invoke;
      v24 = &unk_1E798FEA0;
      v25 = v13;
      dispatch_async(processorCoordinatorWorkerQueue, &block);
      return;
    case 14:
      if (_FigIsCurrentDispatchQueue())
      {
        if (!v5)
        {
LABEL_36:
          [(BWUBNode *)self processorController:a4 didFinishProcessingInput:v28 err:v11];
          goto LABEL_42;
        }
      }

      else
      {
        [BWUBNode processorController:didFinishProcessingInput:err:];
        if (!v5)
        {
          goto LABEL_36;
        }
      }

      if (!self->_deferredCaptureProxyOrErrorRecoverySbuf)
      {
        [BWUBNode processorController:a4 didFinishProcessingInput:self err:v5];
        return;
      }

LABEL_42:
      [BWUBNode processorController:v5 == 0 didFinishProcessingInput:v11 err:?];
      return;
    case 18:
    case 19:
      v27 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      LODWORD(block) = 138412290;
      *(&block + 4) = BWStillImageProcessorTypeToShortString([a3 type]);
      v19 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(7, v19, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWUBNode.m", 1882, @"LastShownDate:BWUBNode.m:1882", @"LastShownBuild:BWUBNode.m:1882", 0);
      free(v19);
      return;
    default:
      return;
  }
}

uint64_t __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 184) controllerForType:2];

  return [v1 cancelProcessing];
}

void __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 72))
  {
    __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_5_cold_1();
  }

  else
  {
    __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_5_cold_2();
  }
}

uint64_t __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_6(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 304) objectForKeyedSubscript:{objc_msgSend(*(a1 + 40), "portType")}];

  return [v1 allInferencesDelivered];
}

uint64_t __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_8(uint64_t a1)
{
  ubn_mergeInferenceMetadata(*(*(a1 + 32) + 392), *(*(a1 + 32) + 616), *(*(a1 + 32) + 616));
  [(BWUBNode *)*(a1 + 32) _inferenceAttachedMediaRequiredForDemosaicedRawCaptureWithInferenceOutputSampleBuffer:*(a1 + 40) stillImageSettings:v2, v3, v4, v5, v6, v18, v20, v21, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14]];
  v8 = v7;
  result = [v7 count];
  if (result)
  {
    ubn_mergeInferenceAttachedMedia(*(*(a1 + 32) + 392), v8, *(*(a1 + 32) + 616));
    v19 = *MEMORY[0x1E695F050];
    v22 = *(MEMORY[0x1E695F050] + 16);
    AttachedMedia = BWSampleBufferGetAttachedMedia(*(*(a1 + 32) + 616), 0x1F21AAE10);
    if (AttachedMedia)
    {
      CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0);
    }

    result = FigCFDictionaryGetCGRectIfPresent();
    if (result)
    {
      v11 = *(*(a1 + 32) + 616);
      [objc_msgSend(*(a1 + 48) captureSettings];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      result = [v8 countByEnumeratingWithState:&v25 objects:v24 count:16];
      if (result)
      {
        v12 = result;
        v13 = *v26;
        v14 = *off_1E798A3C8;
        do
        {
          v15 = 0;
          do
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v8);
            }

            v16 = *(*(&v25 + 1) + 8 * v15);
            v17 = BWSampleBufferGetAttachedMedia(v11, v16);
            if (v17)
            {
              CMGetAttachment(v17, v14, 0);
              if (FigCFDictionarySetCGRect())
              {
                BWSampleBufferRemoveAttachedMedia(v11, v16);
              }
            }

            ++v15;
          }

          while (v12 != v15);
          result = [v8 countByEnumeratingWithState:&v25 objects:v24 count:16];
          v12 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (void)processorController:(id)a3 didSelectNewReferenceFrameWithPTS:(id *)a4 transform:(id)a5 processorInput:(id)a6
{
  if ([a6 isMaster])
  {
    v10 = [(BWUBNodeConfiguration *)self->_nodeConfiguration referenceFrameSelectionDelegate];
    v11 = [a6 stillImageSettings];
    v12 = *&a4->var0;
    var3 = a4->var3;
    [v10 node:self didSelectNewReferenceFrameWithPTS:&v12 transform:a5 forSettings:v11];
  }
}

- (void)processorController:(id)a3 didSelectFusionMode:(int)a4 processorInput:(id)a5
{
  v5 = *&a4;
  if ([a5 isMaster])
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_nrfusionModeByCaptureRequestIdentifier, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v5], self->_currentCaptureRequestIdentifier);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(NSMutableDictionary *)self->_nrProcessorInputsByPortType allValues];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          [objc_msgSend(v12 "firstObject")];
          -[BWUBNode _handleReferenceFrameEmissionForProcessorInput:](self, [v12 firstObject]);
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v9);
    }
  }
}

id __88__BWUBNode_processorController_newInferencesForProcessorInput_inferenceInputBufferType___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 384);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)processorController:(id)a3 didDetermineReferenceFrame:(opaqueCMSampleBuffer *)a4 processorInput:(id)a5 err:(int)a6
{
  memset(&v12, 0, sizeof(v12));
  CMSampleBufferGetPresentationTimeStamp(&v12, a4);
  v9 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a4, 1u);
  v10 = -[NSMutableDictionary objectForKeyedSubscript:](self->_deepFusionProcessorInputByPortType, "objectForKeyedSubscript:", [a5 portType]);
  [v10 setEvZeroReferenceFrameAttachments:v9];
  v11 = v12;
  [v10 setEvZeroReferenceFramePTS:&v11];
}

- (void)processorController:(id)a3 didFinishProcessingInferenceBuffer:(__CVBuffer *)a4 metadata:(id)a5 inferenceAttachedMediaKey:(id)a6 processorInput:(id)a7 err:(int)a8
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWUBNode processorController:didFinishProcessingInferenceBuffer:metadata:inferenceAttachedMediaKey:processorInput:err:];
  }

  if (dword_1EB58E340)
  {
    v16 = 0;
    v15 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    CFRetain(a4);
  }

  processorCoordinatorWorkerQueue = self->_processorCoordinatorWorkerQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __121__BWUBNode_processorController_didFinishProcessingInferenceBuffer_metadata_inferenceAttachedMediaKey_processorInput_err___block_invoke;
  v13[3] = &unk_1E798FE50;
  v13[5] = a6;
  v13[6] = a4;
  v13[4] = self;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ubn_dispatch_async_block_invoke;
  block[3] = &unk_1E798FEA0;
  block[4] = v13;
  dispatch_async(processorCoordinatorWorkerQueue, block);
}

void __121__BWUBNode_processorController_didFinishProcessingInferenceBuffer_metadata_inferenceAttachedMediaKey_processorInput_err___block_invoke(void *a1)
{
  v2 = *(a1[4] + 384);
  if (!v2)
  {
    *(a1[4] + 384) = objc_alloc_init(BWStillImageInferences);
    v2 = *(a1[4] + 384);
  }

  [v2 addInferenceBuffer:a1[6] metadata:0 inferenceAttachedMediaKey:a1[5]];
  v3 = a1[6];
  if (v3)
  {

    CFRelease(v3);
  }
}

- (void)processorController:(id)a3 didFinishProcessingInference:(id)a4 inferenceAttachmentKey:(id)a5 processorInput:(id)a6 err:(int)a7
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWUBNode processorController:didFinishProcessingInference:inferenceAttachmentKey:processorInput:err:];
  }

  if (dword_1EB58E340)
  {
    v15 = 0;
    v14 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  processorCoordinatorWorkerQueue = self->_processorCoordinatorWorkerQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__BWUBNode_processorController_didFinishProcessingInference_inferenceAttachmentKey_processorInput_err___block_invoke;
  v12[3] = &unk_1E798FD58;
  v12[4] = self;
  v12[5] = a4;
  v12[6] = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ubn_dispatch_async_block_invoke;
  block[3] = &unk_1E798FEA0;
  block[4] = v12;
  dispatch_async(processorCoordinatorWorkerQueue, block);
}

uint64_t __103__BWUBNode_processorController_didFinishProcessingInference_inferenceAttachmentKey_processorInput_err___block_invoke(void *a1)
{
  v2 = *(a1[4] + 384);
  if (!v2)
  {
    *(a1[4] + 384) = objc_alloc_init(BWStillImageInferences);
    v2 = *(a1[4] + 384);
  }

  v3 = a1[5];
  v4 = a1[6];

  return [v2 addInference:v3 inferenceAttachmentKey:v4];
}

- (void)processorController:(id)a3 didFinishProcessingInferenceAttachedMediaMetadata:(id)a4 processorInput:(id)a5
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWUBNode processorController:didFinishProcessingInferenceAttachedMediaMetadata:processorInput:];
  }

  processorCoordinatorWorkerQueue = self->_processorCoordinatorWorkerQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__BWUBNode_processorController_didFinishProcessingInferenceAttachedMediaMetadata_processorInput___block_invoke;
  v9[3] = &unk_1E798FD58;
  v9[4] = self;
  v9[5] = a4;
  v9[6] = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ubn_dispatch_async_block_invoke;
  block[3] = &unk_1E798FEA0;
  block[4] = v9;
  dispatch_async(processorCoordinatorWorkerQueue, block);
}

void __97__BWUBNode_processorController_didFinishProcessingInferenceAttachedMediaMetadata_processorInput___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 384);
  if (!v2)
  {
    *(*(a1 + 32) + 384) = objc_alloc_init(BWStillImageInferences);
    v2 = *(*(a1 + 32) + 384);
  }

  [v2 addInferenceAttachedMediaMetadata:*(a1 + 40)];
  if ([objc_msgSend(*(a1 + 48) "captureSettings")] == 12)
  {
    v3 = *(a1 + 32);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __97__BWUBNode_processorController_didFinishProcessingInferenceAttachedMediaMetadata_processorInput___block_invoke_2;
    v4[3] = &unk_1E798FD58;
    v4[4] = v3;
    v5 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    [(BWUBNode *)v3 _deepFusionDispatch:1 direction:v4 block:?];
  }
}

uint64_t __97__BWUBNode_processorController_didFinishProcessingInferenceAttachedMediaMetadata_processorInput___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 304) objectForKeyedSubscript:{objc_msgSend(*(a1 + 40), "portType")}];
  v3 = [*(a1 + 48) allKeys];

  return [v2 setProvidedInferenceAttachedMedia:v3];
}

void __109__BWUBNode_processorController_didFinishProcessingBuffer_metadata_type_captureFrameFlags_processorInput_err___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 8)
  {
    v3 = [*(a1 + 32) referenceFrame];
    v4 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], v3, 1u);
    [*(a1 + 40) setEvZeroReferenceFrameAttachments:v4];
    CMSampleBufferGetPresentationTimeStamp(&v8, v3);
    v5 = *(a1 + 40);
    v7 = v8;
    [v5 setEvZeroReferenceFramePTS:&v7];

    v2 = *(a1 + 56);
  }

  [*(a1 + 40) addBuffer:*(a1 + 64) metadata:*(a1 + 48) bufferType:v2 captureFrameFlags:*(a1 + 72)];
  v6 = *(a1 + 64);
  if (v6)
  {
    CFRelease(v6);
  }
}

void __109__BWUBNode_processorController_didFinishProcessingBuffer_metadata_type_captureFrameFlags_processorInput_err___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) addBuffer:*(a1 + 48) metadata:*(a1 + 40) bufferType:*(a1 + 56) captureFrameFlags:*(a1 + 64)];
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)a3 frameStatistics:(id)a4 stationary:(BOOL)a5 sphereOffsetEnabled:(BOOL)a6 detectedObjects:(id)a7
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__28;
  v18 = __Block_byref_object_dispose__28;
  v19 = 0;
  processorCoordinatorWorkerQueue = self->_processorCoordinatorWorkerQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __123__BWUBNode_adaptiveBracketingParametersForDigitalFlashMode_frameStatistics_stationary_sphereOffsetEnabled_detectedObjects___block_invoke;
  v10[3] = &unk_1E79992A0;
  v11 = a3;
  v10[4] = self;
  v10[5] = a4;
  v12 = a5;
  v13 = a6;
  v10[6] = a7;
  v10[7] = &v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ubn_dispatch_sync_block_invoke;
  block[3] = &unk_1E798FEA0;
  block[4] = v10;
  dispatch_sync(processorCoordinatorWorkerQueue, block);
  v8 = v15[5];
  _Block_object_dispose(&v14, 8);
  return v8;
}

- (void)stopAdaptiveBracketingForSettings:(id)a3 withGroup:(int)a4
{
  processorCoordinatorWorkerQueue = self->_processorCoordinatorWorkerQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__BWUBNode_stopAdaptiveBracketingForSettings_withGroup___block_invoke;
  v5[3] = &unk_1E7991CF0;
  v5[4] = self;
  v6 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ubn_dispatch_async_block_invoke;
  block[3] = &unk_1E798FEA0;
  block[4] = v5;
  dispatch_async(processorCoordinatorWorkerQueue, block);
}

uint64_t __56__BWUBNode_stopAdaptiveBracketingForSettings_withGroup___block_invoke(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 256) allValues];
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [objc_msgSend(*(*(&v8 + 1) + 8 * v6++) "firstObject")];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)a3 wait:(BOOL)a4
{
  v4 = a4;
  os_unfair_lock_lock(&self->_processorCoordinatorLock);
  processorCoordinator = self->_processorCoordinator;
  os_unfair_lock_unlock(&self->_processorCoordinatorLock);
  if (processorCoordinator)
  {
    v8 = 0;
  }

  else
  {
    v8 = !v4;
  }

  if (v8)
  {
    return 0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__28;
  v17 = __Block_byref_object_dispose__28;
  v18 = 0;
  processorCoordinatorWorkerQueue = self->_processorCoordinatorWorkerQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__BWUBNode_adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType_wait___block_invoke;
  v12[3] = &unk_1E79907B0;
  v12[5] = a3;
  v12[6] = &v13;
  v12[4] = self;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ubn_dispatch_sync_block_invoke;
  block[3] = &unk_1E798FEA0;
  block[4] = v12;
  dispatch_sync(processorCoordinatorWorkerQueue, block);
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v10;
}

void __89__BWUBNode__handleClientBracketFrameEmissionForSampleBuffer_stillImageSettings_portType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addSampleBuffer:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __85__BWUBNode__handleReferenceFrameEmissionForSampleBuffer_stillImageSettings_portType___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 512) addSampleBuffer:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (uint64_t)_setupProcessingStateForInferenceWithSettings:(uint64_t)a3 portType:
{
  if (!a1)
  {
    return 0;
  }

  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v37 = [*(a1 + 184) controllerForType:3];
  if (v37)
  {
    v5 = [BWUBNode _isSemanticRenderingCapture:a1];
    if (*(a1 + 432))
    {
      v34 = ([objc_msgSend(a2 "captureSettings")] >> 16) & 1;
    }

    else
    {
      LODWORD(v34) = 0;
    }

    v6 = [(BWUBNode *)a1 _isSemanticStylesCaptureNeedingInferencesWithSettings:a2];
    v7 = [BWUBNode _provideInferenceAttachedMediaWithSettings:a1];
    v35 = [BWUBNode _inferencesRequiredByProcessorControllersForSettings:a1];
    v8 = *(a1 + 352);
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __67__BWUBNode__setupProcessingStateForInferenceWithSettings_portType___block_invoke;
    v61[3] = &unk_1E798F870;
    v61[4] = v37;
    block = MEMORY[0x1E69E9820];
    v67 = 3221225472;
    v68 = __ubn_dispatch_sync_block_invoke;
    v69 = &unk_1E798FEA0;
    v70 = v61;
    dispatch_sync(v8, &block);
    v9 = [*(a1 + 344) objectForKeyedSubscript:a3];
    if ([v9 inferenceImage])
    {
      v10 = BWSampleBufferCopyDictionaryOfAttachedMedia([v9 inferenceImage]);
      v39 = v7;
      v11 = v6;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v12 = [v10 countByEnumeratingWithState:&v57 objects:v56 count:16];
      if (v12)
      {
        v13 = *v58;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v58 != v13)
            {
              objc_enumerationMutation(v10);
            }

            ImageBuffer = CMSampleBufferGetImageBuffer([v10 objectForKeyedSubscript:*(*(&v57 + 1) + 8 * i)]);
            if (ImageBuffer)
            {
              IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
              v17 = IOSurface;
              if (IOSurface)
              {
                IOSurfaceLock(IOSurface, 5u, 0);
                IOSurfaceUnlock(v17, 5u, 0);
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v57 objects:v56 count:16];
        }

        while (v12);
      }

      v7 = v39;
      v6 = v11;
      BWSampleBufferRemoveAllAttachedMedia([v9 inferenceImage]);
    }

    if ((v7 | v35) == 1)
    {
      v18 = *(a1 + 352);
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __67__BWUBNode__setupProcessingStateForInferenceWithSettings_portType___block_invoke_2;
      v55[3] = &unk_1E798F870;
      v55[4] = a1;
      block = MEMORY[0x1E69E9820];
      v67 = 3221225472;
      v68 = __ubn_dispatch_sync_block_invoke;
      v69 = &unk_1E798FEA0;
      v70 = v55;
      dispatch_sync(v18, &block);
    }

    v19 = [[BWInferenceEngineControllerInput alloc] initWithSettings:a2 portType:a3];
    v40 = [MEMORY[0x1E695DFA8] set];
    if (v34)
    {
      if (([*(a1 + 336) enabledVisionInferences] & 2) != 0)
      {
        [(BWInferenceEngineControllerInput *)v19 setEnabledVisionInferences:[(BWInferenceEngineControllerInput *)v19 enabledVisionInferences]| 2];
      }

      if (([*(a1 + 336) enabledVisionInferences] & 4) != 0)
      {
        [(BWInferenceEngineControllerInput *)v19 setEnabledVisionInferences:[(BWInferenceEngineControllerInput *)v19 enabledVisionInferences]| 4];
      }

      if (([*(a1 + 336) enabledVisionInferences] & 8) != 0)
      {
        [(BWInferenceEngineControllerInput *)v19 setEnabledVisionInferences:[(BWInferenceEngineControllerInput *)v19 enabledVisionInferences]| 8];
      }
    }

    if (v5)
    {
      [v40 addObjectsFromArray:{objc_msgSend(*(a1 + 336), "enabledInferenceMasks")}];
      if (([*(a1 + 336) enabledVisionInferences] & 2) != 0)
      {
        [(BWInferenceEngineControllerInput *)v19 setEnabledVisionInferences:[(BWInferenceEngineControllerInput *)v19 enabledVisionInferences]| 2];
      }

      if (([*(a1 + 336) enabledVisionInferences] & 8) != 0)
      {
        [(BWInferenceEngineControllerInput *)v19 setEnabledVisionInferences:[(BWInferenceEngineControllerInput *)v19 enabledVisionInferences]| 8];
      }

      if (([*(a1 + 336) enabledVisionInferences] & 0x10) != 0)
      {
        [(BWInferenceEngineControllerInput *)v19 setEnabledVisionInferences:[(BWInferenceEngineControllerInput *)v19 enabledVisionInferences]| 0x10];
      }
    }

    if (v6)
    {
      [v40 addObject:@"PersonSemanticsSkin"];
      [v40 addObject:0x1F21AAD30];
      [v40 addObject:0x1F219E750];
      if ([*(a1 + 336) smartCameraClassificationsEnabled])
      {
        v20 = [objc_msgSend(objc_msgSend(a2 "captureSettings")] == 0;
      }

      else
      {
        v20 = 0;
      }

      [(BWInferenceEngineControllerInput *)v19 setSmartCameraClassificationsEnabled:v20];
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = *(a1 + 424);
    v21 = [obj countByEnumeratingWithState:&v51 objects:v50 count:16];
    v33 = v19;
    if (v21)
    {
      v22 = *v52;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v52 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v51 + 1) + 8 * j);
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v25 = [*(a1 + 424) objectForKeyedSubscript:v24];
          v26 = [v25 countByEnumeratingWithState:&v46 objects:v45 count:16];
          if (v26)
          {
            v27 = *v47;
            while (2)
            {
              for (k = 0; k != v26; ++k)
              {
                if (*v47 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                if (-[BWUBNode _provideInferencesForAttachedMediaMode:settings:](a1, [*(*(&v46 + 1) + 8 * k) intValue], a2))
                {
                  [v40 addObject:v24];
                  goto LABEL_54;
                }
              }

              v26 = [v25 countByEnumeratingWithState:&v46 objects:v45 count:16];
              if (v26)
              {
                continue;
              }

              break;
            }
          }

LABEL_54:
          ;
        }

        v21 = [obj countByEnumeratingWithState:&v51 objects:v50 count:16];
      }

      while (v21);
    }

    v29 = v33;
    -[BWInferenceEngineControllerInput setEnabledInferenceMasks:](v33, "setEnabledInferenceMasks:", [v40 allObjects]);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __67__BWUBNode__setupProcessingStateForInferenceWithSettings_portType___block_invoke_3;
    v42[3] = &unk_1E79993B8;
    v42[4] = a1;
    v43 = v35;
    v44 = v34;
    [(BWStillImageProcessorControllerInput *)v33 addOutputSampleBufferRouter:v42 forBufferTypes:&unk_1F2248EC8];
    v30 = *(a1 + 352);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __67__BWUBNode__setupProcessingStateForInferenceWithSettings_portType___block_invoke_302;
    v41[3] = &unk_1E79992F0;
    v41[4] = v37;
    v41[5] = v33;
    v41[6] = a1;
    v41[7] = &v62;
    block = MEMORY[0x1E69E9820];
    v67 = 3221225472;
    v68 = __ubn_dispatch_sync_block_invoke;
    v69 = &unk_1E798FEA0;
    v70 = v41;
    dispatch_sync(v30, &block);
    if (!*(v63 + 6))
    {
      [*(a1 + 344) setObject:v33 forKeyedSubscript:a3];
    }
  }

  else
  {
    v29 = 0;
  }

  v31 = *(v63 + 6);
  _Block_object_dispose(&v62, 8);
  return v31;
}

void __75__BWUBNode__inferenceProcessRedEyeReductionSampleBuffer_settings_portType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addInferenceImage:*(a1 + 40) propagationImage:*(a1 + 48)];
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t __33__BWUBNode__resetProcessingState__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 184) controllerForType:2];

  return [v1 cancelProcessing];
}

void __33__BWUBNode__resetProcessingState__block_invoke_2(uint64_t a1)
{
  [objc_msgSend(*(*(a1 + 32) + 184) controllerForType:{3), "cancelProcessing"}];
  v2 = *(a1 + 32);
  v3 = *(v2 + 392);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 392) = 0;
    v2 = *(a1 + 32);
  }

  *(*(a1 + 32) + 384) = 0;
}

uint64_t __33__BWUBNode__resetProcessingState__block_invoke_3(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 184) controllerForType:8];

  return [v1 cancelProcessing];
}

void __58__BWUBNode__setupDeferredProcessingWithSettings_portType___block_invoke(uint64_t a1, CMAttachmentBearerRef target, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5)
  {
    v10 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"type '%@' requested for '%@'", BWStillImageBufferTypeToShortString(a3), a4];

    [(BWUBNode *)v11 _emitError:a5 processorInput:a4 metadata:v10 description:v12];
  }
}

- (uint64_t)_setupProcessingStateForDisparityIfNeededWithSettings:(uint64_t)a3 sequenceNumber:(void *)a4 processingPlan:
{
  v4 = a1;
  if (a1)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    if ([(BWUBNode *)a1 _generateDisparityForSettings:a2])
    {
      v8 = [*(v4 + 184) controllerForType:8];
      if (v8)
      {
        v9 = -[BWStereoDisparityProcessorInput initWithSettings:portType:]([BWStereoDisparityProcessorInput alloc], "initWithSettings:portType:", a2, [objc_msgSend(a2 "captureSettings")]);
        ++*(v4 + 520);
        v10 = *(v4 + 528);
        block = MEMORY[0x1E69E9820];
        v19 = 3221225472;
        v20 = __53__BWUBNode__standardNROutputRouterWithExpectedQueue___block_invoke;
        v21 = &unk_1E7999390;
        v22 = v10;
        v23 = v4;
        -[BWStillImageProcessorControllerInput addOutputSampleBufferRouter:forBufferTypes:](v9, "addOutputSampleBufferRouter:forBufferTypes:", [&block copy], &unk_1F2248EE0);
        [a4 addInput:v9 sequenceNumber:a3 portType:objc_msgSend(objc_msgSend(a2 bufferType:{"captureSettings"), "masterPortType"), 20}];
        if ([objc_msgSend(a2 "captureSettings")] == 7)
        {
          [*(v4 + 544) setObject:v9 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", a3)}];
        }

        else
        {
          *(v4 + 512) = v9;
        }

        v11 = *(v4 + 528);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __96__BWUBNode__setupProcessingStateForDisparityIfNeededWithSettings_sequenceNumber_processingPlan___block_invoke;
        v13[3] = &unk_1E79992F0;
        v13[4] = v8;
        v13[5] = v9;
        v13[6] = v4;
        v13[7] = &v14;
        block = MEMORY[0x1E69E9820];
        v19 = 3221225472;
        v20 = __ubn_dispatch_sync_block_invoke;
        v21 = &unk_1E798FEA0;
        v22 = v13;
        dispatch_sync(v11, &block);
      }
    }

    v4 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
  }

  return v4;
}

- (uint64_t)_setupProcessingStateForDeepFusionWithSettings:(void *)a3 processingPlan:
{
  if (!a1)
  {
    return 0;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v22 = [a1[23] controllerForType:2];
  if (!_FigIsCurrentDispatchQueue())
  {
    v19 = v20;
    LODWORD(v18) = 0;
    FigDebugAssert3();
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __74__BWUBNode__setupProcessingStateForDeepFusionWithSettings_processingPlan___block_invoke;
  v29[3] = &unk_1E79992C8;
  v29[4] = a1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [objc_msgSend(a2 captureSettings];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v24 count:16];
  obj = v6;
  if (v7)
  {
    v8 = *v26;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v25 + 1) + 8 * v9);
      v11 = -[BWDeepFusionProcessorInput initWithSettings:portType:processInferenceInputImage:processQuadraForEnhancedResolutionInferenceInputImage:processSmartStyleRenderingInput:]([BWDeepFusionProcessorInput alloc], "initWithSettings:portType:processInferenceInputImage:processQuadraForEnhancedResolutionInferenceInputImage:processSmartStyleRenderingInput:", a2, [v10 portType], 0, 0, 0);
      v12 = -[BWUBNode _bufferTypesForCaptureSettings:](a1, [a2 captureSettings]);
      [(BWStillImageProcessorControllerInput *)v11 addOutputSampleBufferRouter:v29 forBufferTypes:v12];
      [a3 addInput:v11 sequenceNumber:0 portType:objc_msgSend(v10 bufferTypes:{"portType"), v12}];
      [a1[38] setObject:v11 forKeyedSubscript:{-[BWStillImageProcessorControllerInput portType](v11, "portType")}];
      v13 = [objc_msgSend(a1[32] objectForKeyedSubscript:{-[BWStillImageProcessorControllerInput portType](v11, "portType")), "firstObject"}];
      [v13 setRemainingProcessingCount:{objc_msgSend(v13, "remainingProcessingCount") + 1}];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __74__BWUBNode__setupProcessingStateForDeepFusionWithSettings_processingPlan___block_invoke_2;
      v23[3] = &unk_1E79992F0;
      v23[4] = v22;
      v23[5] = v11;
      v23[6] = a1;
      v23[7] = &v30;
      [(BWUBNode *)a1 _deepFusionDispatch:1 direction:v23 block:?];
      if (*(v31 + 6))
      {
        break;
      }

      [(BWStillImageProcessorControllerInput *)v11 portType];
      [BWUBNode _setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:queueProvidingInput:processingPlan:];
      *(v31 + 6) = v14;
      if (v14 || ([(BWStillImageProcessorControllerInput *)v11 portType], [BWUBNode _setupProcessingStateForDeepZoomWithSettings:a1 sequenceNumber:? portType:? queueProvidingInput:? processingPlan:?], (*(v31 + 6) = v15) != 0))
      {
        FigDebugAssert3();
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
        if (v7)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v16 = *(v31 + 6);
  _Block_object_dispose(&v30, 8);
  return v16;
}

void __74__BWUBNode__setupProcessingStateForDeepFusionWithSettings_processingPlan___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a5)
  {
    __74__BWUBNode__setupProcessingStateForDeepFusionWithSettings_processingPlan___block_invoke_cold_1();
  }
}

void __74__BWUBNode__setupProcessingStateForDeepFusionWithSettings_processingPlan___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) enqueueInputForProcessing:*(a1 + 40) delegate:*(a1 + 48)];
  v2 = *(a1 + 40);
}

void __82__BWUBNode__setupProcessingStateForSingleImageCaptureWithSettings_processingPlan___block_invoke(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!_FigIsCurrentDispatchQueue())
  {
    __82__BWUBNode__setupProcessingStateForSingleImageCaptureWithSettings_processingPlan___block_invoke_cold_1();
  }

  v10 = [objc_msgSend(*(*(a1 + 32) + 256) objectForKeyedSubscript:{objc_msgSend(a4, "portType")), "firstObject"}];
  if (!a2)
  {
    if (!a5)
    {
      return;
    }

    goto LABEL_10;
  }

  if (a5)
  {
    v12 = [*(*(a1 + 32) + 184) controllerForType:*(*(a1 + 32) + 240)];
    [v12 cancelProcessing];
    LOWORD(v16) = 0;
    v11 = [v12 enqueueInputForProcessing:v10 delegate:*(a1 + 32) processErrorRecoveryFrame:1 processOriginalImage:0 clientBracketSequenceNumber:0 processSemanticRendering:0 provideInferenceInputImageForProcessing:v16 inferencesAvailable:?];
  }

  else
  {
    v11 = 0;
  }

  [v10 addFrame:a2];
  [(BWUBNode *)*(a1 + 32) _handleReferenceFrameEmissionForProcessorInput:v10];
  if (v11)
  {
LABEL_10:
    v13 = CMGetAttachment(a2, *off_1E798A3C8, 0);
    -[BWUBNode _processorControllerDidFinishProcessingInputForPortType:processorType:](*(a1 + 32), [v10 portType], *(*(a1 + 32) + 240));
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"type '%@' requested for '%@'", BWStillImageBufferTypeToShortString(a3), a4];

    [(BWUBNode *)v14 _emitError:a5 processorInput:a4 metadata:v13 description:v15];
  }
}

void __76__BWUBNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!_FigIsCurrentDispatchQueue())
  {
    __76__BWUBNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_cold_1();
  }

  v10 = [objc_msgSend(*(*(a1 + 32) + 256) objectForKeyedSubscript:{objc_msgSend(a4, "portType")), "firstObject"}];
  if (!a2)
  {
    if (!a5)
    {
      return;
    }

    goto LABEL_10;
  }

  if (a5)
  {
    v12 = [*(*(a1 + 32) + 184) controllerForType:*(*(a1 + 32) + 240)];
    [v12 cancelProcessing];
    LOWORD(v16) = 0;
    v11 = [v12 enqueueInputForProcessing:v10 delegate:*(a1 + 32) processErrorRecoveryFrame:1 processOriginalImage:0 clientBracketSequenceNumber:0 processSemanticRendering:0 provideInferenceInputImageForProcessing:v16 inferencesAvailable:?];
  }

  else
  {
    v11 = 0;
  }

  [v10 addFrame:a2];
  [(BWUBNode *)*(a1 + 32) _handleReferenceFrameEmissionForProcessorInput:v10];
  if (v11)
  {
LABEL_10:
    v13 = CMGetAttachment(a2, *off_1E798A3C8, 0);
    -[BWUBNode _processorControllerDidFinishProcessingInputForPortType:processorType:](*(a1 + 32), [v10 portType], *(*(a1 + 32) + 240));
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"type '%@' requested for '%@'", BWStillImageBufferTypeToShortString(a3), a4];

    [(BWUBNode *)v14 _emitError:a5 processorInput:a4 metadata:v13 description:v15];
  }
}

void __76__BWUBNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_2(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = (a1 + 32);
  if (!_FigIsCurrentDispatchQueue())
  {
    __76__BWUBNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_2_cold_1();
  }

  if (dword_1EB58E340)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a5)
  {
    v11 = CMGetAttachment(a2, *off_1E798A3C8, 0);
    v12 = *v9;
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"type '%@' requested for '%@'", BWStillImageBufferTypeToShortString(a3), a4];
    [(BWUBNode *)v12 _emitError:a5 processorInput:a4 metadata:v11 description:v13];
  }

  else
  {
    __76__BWUBNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_2_cold_2(v9, a4, a2);
  }
}

void __147__BWUBNode__setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings_sequenceNumber_portType_queueProvidingInput_processingPlan___block_invoke(uint64_t a1, CFTypeRef cf, uint64_t a3, void *a4, uint64_t a5)
{
  if (dword_1EB58E340)
  {
    v30 = 0;
    v29 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a5)
  {
    if (a3 != 14)
    {
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
      [a4 addBypassedProcessorType:7 forBufferTypes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v21, 1)}];
      v11 = CMGetAttachment(cf, *off_1E798A3C8, 0);
      v12 = *(a1 + 32);
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"type '%@' requested for '%@'", BWStillImageBufferTypeToShortString(a3), a4];
      [(BWUBNode *)v12 _emitError:a5 processorInput:a4 metadata:v11 description:v13];
    }
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v24 = __147__BWUBNode__setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings_sequenceNumber_portType_queueProvidingInput_processingPlan___block_invoke_281;
    v25 = &unk_1E7999318;
    v14 = *(a1 + 32);
    v26 = v14;
    v27 = cf;
    if (a3 == 13)
    {
      if (cf)
      {
        CFRetain(cf);
      }

      v15 = [a4 portType];
      v16 = *(a1 + 32);
      v17 = *(v16 + 192);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __147__BWUBNode__setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings_sequenceNumber_portType_queueProvidingInput_processingPlan___block_invoke_2;
      v22[3] = &unk_1E7999340;
      v22[4] = v16;
      v22[5] = v15;
      v22[6] = *(a1 + 48);
      v22[7] = v23;
      v22[8] = 13;
      v22[9] = cf;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __ubn_dispatch_async_block_invoke;
      block[3] = &unk_1E798FEA0;
      block[4] = v22;
      dispatch_async(v17, block);
    }

    else
    {
      v18 = [*(v14 + 456) objectForKeyedSubscript:{objc_msgSend(a4, "portType")}];
      [v18 setApplyZoom:v24(v23)];
      if ([v18 processIntelligentDistortionCorrection] && objc_msgSend(*(a1 + 48), "containsObject:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", a3)))
      {
        [v18 setProcessIntelligentDistortionCorrection:0];
      }

      [v18 addImage:cf imageBufferType:{a3, v19, v20}];
    }
  }
}

uint64_t __147__BWUBNode__setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings_sequenceNumber_portType_queueProvidingInput_processingPlan___block_invoke_281(void *a1)
{
  if (!_FigIsCurrentDispatchQueue())
  {
    __147__BWUBNode__setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings_sequenceNumber_portType_queueProvidingInput_processingPlan___block_invoke_281_cold_1();
  }

  if (![*(a1[4] + 496) objectForKeyedSubscript:a1[5]])
  {
    return 1;
  }

  v2 = +[BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForSampleBuffer:type:sensorConfiguration:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:](BWDeepZoomProcessorControllerConfiguration, "doDeepZoomStandardOrLiteForSampleBuffer:type:sensorConfiguration:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:", a1[6], [*(a1[4] + 488) type], objc_msgSend(-[BWUBNodeConfiguration sensorConfigurationsByPortType](*(a1[4] + 144)), "objectForKeyedSubscript:", a1[5]), 0, 0);
  return +[BWDeepZoomProcessorControllerConfiguration deepZoomProcessingModeForType:sensorConfiguration:](BWDeepZoomProcessorControllerConfiguration, "deepZoomProcessingModeForType:sensorConfiguration:", [*(a1[4] + 488) type], objc_msgSend(-[BWUBNodeConfiguration sensorConfigurationsByPortType](*(a1[4] + 144)), "objectForKeyedSubscript:", a1[5])) == 2 || !v2;
}

void __147__BWUBNode__setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings_sequenceNumber_portType_queueProvidingInput_processingPlan___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 456) objectForKeyedSubscript:*(a1 + 40)];
  [v2 setApplyZoom:(*(*(a1 + 56) + 16))()];
  if ([v2 processIntelligentDistortionCorrection] && objc_msgSend(*(a1 + 48), "containsObject:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *(a1 + 64))))
  {
    [v2 setProcessIntelligentDistortionCorrection:0];
  }

  [v2 addImage:*(a1 + 72) imageBufferType:*(a1 + 64)];
  v3 = *(a1 + 72);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __116__BWUBNode__setupProcessingStateForDeepZoomWithSettings_sequenceNumber_portType_queueProvidingInput_processingPlan___block_invoke(uint64_t a1, CFTypeRef cf, uint64_t a3, void *a4, uint64_t a5)
{
  if (dword_1EB58E340)
  {
    v23 = 0;
    v22 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a5)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    [a4 addBypassedProcessorType:10 forBufferTypes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v16, 1)}];
    v13 = CMGetAttachment(cf, *off_1E798A3C8, 0);
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"type '%@' requested for '%@'", BWStillImageBufferTypeToShortString(a3), a4];
    [(BWUBNode *)v14 _emitError:a5 processorInput:a4 metadata:v13 description:v15];
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
    }

    v11 = *(a1 + 32);
    v12 = *(*(a1 + 32) + 192);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __116__BWUBNode__setupProcessingStateForDeepZoomWithSettings_sequenceNumber_portType_queueProvidingInput_processingPlan___block_invoke_292;
    v17[3] = &unk_1E7998380;
    v18 = v11;
    v19 = cf;
    v20 = a3;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __ubn_dispatch_async_block_invoke;
    block[3] = &unk_1E798FEA0;
    block[4] = v17;
    dispatch_async(v12, block);
  }
}

void __116__BWUBNode__setupProcessingStateForDeepZoomWithSettings_sequenceNumber_portType_queueProvidingInput_processingPlan___block_invoke_292(void *a1)
{
  [objc_msgSend(*(a1[4] + 496) objectForKeyedSubscript:{a1[5]), "addSampleBuffer:bufferType:", a1[6], a1[7]}];
  v2 = a1[6];
  if (v2)
  {

    CFRelease(v2);
  }
}

void __67__BWUBNode__setupProcessingStateForInferenceWithSettings_portType___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 392);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 392) = 0;
    v2 = *(a1 + 32);
  }

  *(*(a1 + 32) + 384) = 0;
}

uint64_t __67__BWUBNode__setupProcessingStateForInferenceWithSettings_portType___block_invoke_4(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 304) objectForKeyedSubscript:{objc_msgSend(*(a1 + 40), "portType")}];

  return [v1 allInferencesDelivered];
}

uint64_t __67__BWUBNode__setupProcessingStateForInferenceWithSettings_portType___block_invoke_302(uint64_t a1)
{
  result = [*(a1 + 32) enqueueInputForProcessing:*(a1 + 40) delegate:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

uint64_t __96__BWUBNode__setupProcessingStateForDisparityIfNeededWithSettings_sequenceNumber_processingPlan___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) enqueueInputForProcessing:*(a1 + 40) delegate:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void __87__BWUBNode__setupProcessingStateForJasperDisparityIfNeededWithSettings_processingPlan___block_invoke(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v7 = [a4 portType];
  if (!_FigIsCurrentDispatchQueue())
  {
    __87__BWUBNode__setupProcessingStateForJasperDisparityIfNeededWithSettings_processingPlan___block_invoke_cold_1();
  }

  if (a3 == 13)
  {
    if (a2)
    {
      CFRetain(a2);
    }

    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__BWUBNode__setupProcessingStateForJasperDisparityIfNeededWithSettings_processingPlan___block_invoke_2;
    v11[3] = &unk_1E79993E0;
    v11[4] = v8;
    v11[5] = v7;
    v11[7] = a2;
    v11[8] = 13;
    v11[6] = *(a1 + 40);
    [(BWUBNode *)v8 _deepFusionDispatch:3 direction:v11 block:?];
  }

  else if (a2)
  {
    v9 = [*(*(a1 + 32) + 592) objectForKeyedSubscript:v7];

    [v9 setColorBuffer:a2 type:a3];
  }

  else
  {
    v10 = *(a1 + 40);

    [v10 cancelProcessing];
  }
}

void __87__BWUBNode__setupProcessingStateForJasperDisparityIfNeededWithSettings_processingPlan___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56))
  {
    [objc_msgSend(*(*(a1 + 32) + 592) objectForKeyedSubscript:{*(a1 + 40)), "setColorBuffer:type:", *(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    [*(a1 + 48) cancelProcessing];
  }

  v2 = *(a1 + 56);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __87__BWUBNode__setupProcessingStateForPointCloudDepthIfNeededWithSettings_processingPlan___block_invoke(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v7 = [a4 portType];
  if (!_FigIsCurrentDispatchQueue())
  {
    __87__BWUBNode__setupProcessingStateForPointCloudDepthIfNeededWithSettings_processingPlan___block_invoke_cold_1();
  }

  if (a3 == 13)
  {
    if (a2)
    {
      CFRetain(a2);
    }

    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__BWUBNode__setupProcessingStateForPointCloudDepthIfNeededWithSettings_processingPlan___block_invoke_2;
    v11[3] = &unk_1E79993E0;
    v11[4] = v8;
    v11[5] = v7;
    v11[7] = a2;
    v11[8] = 13;
    v11[6] = *(a1 + 40);
    [(BWUBNode *)v8 _deepFusionDispatch:3 direction:v11 block:?];
  }

  else if (a2)
  {
    v9 = [*(*(a1 + 32) + 576) objectForKeyedSubscript:v7];

    [v9 setColorBuffer:a2 type:a3];
  }

  else
  {
    v10 = *(a1 + 40);

    [v10 cancelProcessing];
  }
}

void __87__BWUBNode__setupProcessingStateForPointCloudDepthIfNeededWithSettings_processingPlan___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56))
  {
    [objc_msgSend(*(*(a1 + 32) + 576) objectForKeyedSubscript:{*(a1 + 40)), "setColorBuffer:type:", *(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    [*(a1 + 48) cancelProcessing];
  }

  v2 = *(a1 + 56);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __31__BWUBNode__nrOutputSbufRouter__block_invoke(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!_FigIsCurrentDispatchQueue())
  {
    __31__BWUBNode__nrOutputSbufRouter__block_invoke_cold_1();
  }

  if (dword_1EB58E340)
  {
    v51 = 0;
    v50 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a5)
  {
    v31 = CMGetAttachment(a2, *off_1E798A3C8, 0);
    v32 = *(a1 + 32);
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"type '%@' requested for '%@'", BWStillImageBufferTypeToShortString(a3), a4];
    [(BWUBNode *)v32 _emitError:a5 processorInput:a4 metadata:v31 description:v33];
  }

  else if ((a3 == 7 || (v11 = [objc_msgSend(a4 "captureSettings")], a3 == 14) && v11) && (v12 = *(a1 + 32), *(v12 + 608)))
  {
    v13 = *(v12 + 616);
    if (v13)
    {
      CFRelease(v13);
      *(*(a1 + 32) + 616) = 0;
    }

    if (a2)
    {
      v14 = CFRetain(a2);
    }

    else
    {
      v14 = 0;
    }

    *(*(a1 + 32) + 616) = v14;
    if (dword_1EB58E340)
    {
      v51 = 0;
      v50 = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v16 = v51;
      if (os_log_type_enabled(v15, v50))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = @"proxy";
        if (a3 == 14)
        {
          v18 = @"error recovery frame";
        }

        v44 = 136315394;
        v45 = "[BWUBNode _nrOutputSbufRouter]_block_invoke";
        v46 = 2112;
        v47 = v18;
        LODWORD(v37) = 22;
        v36 = &v44;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [*(*(a1 + 32) + 608) proxyReadyWithFPNREnabled:{0, v36, v37}];
  }

  else
  {
    if ([a4 isMaster] && (a3 == 6 || a3 == 3))
    {
      v19 = [*(*(a1 + 32) + 264) objectForKeyedSubscript:{objc_msgSend(a4, "portType")}];
      if (v19)
      {
        [CMGetAttachment(a2 *off_1E798A3C8];
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v20 = [*(*(a1 + 32) + 256) allValues];
      v21 = [v20 countByEnumeratingWithState:&v40 objects:v39 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v41;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v41 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = [*(*(&v40 + 1) + 8 * i) firstObject];
            [v25 setEmitErrorRecoveryFrame:1];
            [(BWUBNode *)*(a1 + 32) _handleReferenceFrameEmissionForProcessorInput:v25];
          }

          v22 = [v20 countByEnumeratingWithState:&v40 objects:v39 count:16];
        }

        while (v22);
      }
    }

    v26 = [(BWUBNode *)*(a1 + 32) _waitForInferenceIfNeededForProcessorInput:a4];
    v27 = *(a1 + 32);
    if (v26 && *(v27 + 392))
    {
      if (dword_1EB58E340)
      {
        v51 = 0;
        v50 = OS_LOG_TYPE_DEFAULT;
        v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v29 = v51;
        if (os_log_type_enabled(v28, v50))
        {
          v30 = v29;
        }

        else
        {
          v30 = v29 & 0xFFFFFFFE;
        }

        if (v30)
        {
          v34 = BWStillImageBufferTypeToShortString(a3);
          v44 = 136315650;
          v45 = "[BWUBNode _nrOutputSbufRouter]_block_invoke";
          v46 = 2112;
          v47 = v34;
          v48 = 2112;
          v49 = a4;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v27 = *(a1 + 32);
      }

      v35 = *(v27 + 352);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __31__BWUBNode__nrOutputSbufRouter__block_invoke_360;
      block[3] = &unk_1E798FE50;
      block[5] = a4;
      block[6] = a2;
      block[4] = v27;
      dispatch_sync(v35, block);
      v27 = *(a1 + 32);
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"buffer of type '%@' requested for '%@'", BWStillImageBufferTypeToShortString(a3), a4];
    [BWUBNode _emitSampleBuffer:v27 description:?];
  }
}

void __35__BWUBNode__ubInferenceInputRouter__block_invoke(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!_FigIsCurrentDispatchQueue())
  {
    __35__BWUBNode__ubInferenceInputRouter__block_invoke_cold_1();
  }

  v7 = [a4 portType];
  if (-[BWUBNode _setupProcessingStateForInferenceWithSettings:portType:](*(a1 + 32), [a4 stillImageSettings], v7) || (v8 = objc_msgSend(*(*(a1 + 32) + 344), "objectForKeyedSubscript:", v7)) == 0)
  {
    __35__BWUBNode__ubInferenceInputRouter__block_invoke_cold_2(a4);
  }

  else
  {
    v9 = v8;
    v10 = *(a1 + 32);
    [a4 stillImageSettings];
    LOBYTE(v10) = [BWUBNode _isSemanticRenderingCapture:v10];
    v11 = -[BWUBNode _isSemanticStylesCaptureNeedingInferencesWithSettings:](*(a1 + 32), [a4 stillImageSettings]);
    if (((v10 & 1) != 0 || v11) && !+[BWInferenceEngine isNeuralEngineSupported](BWInferenceEngine, "isNeuralEngineSupported") && ([objc_msgSend(CMGetAttachment(a2 @"StillSettings"] & 0x2000) != 0 && (BWSampleBufferHasDetectedFaces(a2, 0, 0, 0, 1, 0) & 1) == 0)
    {
      [v9 setEnabledVisionInferences:{objc_msgSend(v9, "enabledVisionInferences") ^ 0x13}];
    }

    if (a2)
    {
      CFRetain(a2);
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 360);
    v14 = *(v12 + 352);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __35__BWUBNode__ubInferenceInputRouter__block_invoke_2;
    v15[3] = &unk_1E7990178;
    v15[4] = v9;
    v15[5] = a2;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __ubn_dispatch_group_async_block_invoke;
    block[3] = &unk_1E798FEA0;
    block[4] = v15;
    dispatch_group_async(v13, v14, block);
  }
}

void __35__BWUBNode__ubInferenceInputRouter__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) addInferenceImage:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __24__BWUBNode__ubRERRouter__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  if (!_FigIsCurrentDispatchQueue())
  {
    __24__BWUBNode__ubRERRouter__block_invoke_cold_1();
  }

  v10 = [*(*(a1 + 32) + 440) objectForKeyedSubscript:{objc_msgSend(a4, "portType")}];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3052000000;
  v37 = __Block_byref_object_copy__28;
  v38 = __Block_byref_object_dispose__28;
  v39 = 0;
  if (![v10 faceObservations])
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 352);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __24__BWUBNode__ubRERRouter__block_invoke_2;
    v33[3] = &unk_1E798FAF8;
    v33[4] = v11;
    v33[5] = &v34;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __ubn_dispatch_sync_block_invoke;
    block[3] = &unk_1E798FEA0;
    block[4] = v33;
    dispatch_sync(v12, block);
  }

  if (dword_1EB58E340)
  {
    v32 = 0;
    v31 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v14 = v32;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v31))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v16 = BWStillImageBufferTypeToShortString(a3);
      v17 = [v35[5] count];
      v20 = 136316163;
      v21 = "[BWUBNode _ubRERRouter]_block_invoke";
      v22 = 2114;
      v23 = v16;
      v24 = 2113;
      v25 = a4;
      v26 = 1026;
      v27 = a5;
      v28 = 2050;
      v29 = v17;
      LODWORD(v19) = 48;
      v18 = &v20;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [v10 addFrame:a2 faceObservations:{v35[5], v18, v19}];
  _Block_object_dispose(&v34, 8);
}

id __24__BWUBNode__ubRERRouter__block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 384) inferenceForAttachmentKey:0x1F219E5F0];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_setupProcessorControllerConfigurations
{
  if (result)
  {
    v1 = result;
    if (dword_1EB58E340)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v3 = OUTLINED_FUNCTION_8_5(os_log_and_send_and_compose_flags_and_os_log_type);
      if (OUTLINED_FUNCTION_6(v3))
      {
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_8_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      result = OUTLINED_FUNCTION_17_8();
    }

    if (!*(v1 + 19))
    {
      v4 = objc_alloc(MEMORY[0x1E695DFD8]);
      v5 = OUTLINED_FUNCTION_46_12();
      [-[BWUBNodeConfiguration sensorConfigurationsByPortType](v5) allKeys];
      *(v1 + 19) = [OUTLINED_FUNCTION_4() initWithArray:?];
      *(v1 + 50) = 0;
      [OUTLINED_FUNCTION_46_12() figThreadPriority];
      v6 = FigDispatchQueueCreateWithPriority();
      [OUTLINED_FUNCTION_42_11(v6 192)];
      *(v1 + 26) = FigDispatchQueueCreateWithPriority();
      *(v1 + 216) = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion]> 2;
      v7 = OUTLINED_FUNCTION_46_12();
      v8 = BWUBCreateNRProcessorControllerConfiguration(v7, v1 + 30);
      *(v1 + 31) = v8;
      if (v8)
      {
        *(v1 + 32) = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v9 = OUTLINED_FUNCTION_162(objc_alloc_init(MEMORY[0x1E695DF90]), 264);
      v10 = OUTLINED_FUNCTION_162(v9, 272);
      v11 = OUTLINED_FUNCTION_42_11(v10, 536);
      v12 = BWUBCreateDeferredProcessorControllerConfiguration(v11);
      *(v1 + 79) = v12;
      if (v12)
      {
        [OUTLINED_FUNCTION_46_12() figThreadPriority];
        v13 = FigDispatchQueueCreateWithPriority();
        *(v1 + 80) = OUTLINED_FUNCTION_162(v13, 624);
      }

      v14 = OUTLINED_FUNCTION_46_12();
      v15 = BWUBCreateDeferredContainerControllerConfiguration(v14);
      v16 = OUTLINED_FUNCTION_42_11(v15, 600);
      v17 = BWUBCreateDeepFusionProcessorControllerConfiguration(v16);
      *(v1 + 37) = v17;
      if (v17)
      {
        [OUTLINED_FUNCTION_42_11(objc_alloc_init(MEMORY[0x1E695DF90]) 304)];
        *(v1 + 39) = FigDispatchQueueCreateWithPriority();
        [*(v1 + 37) setDelayPrepareAndCacheBuffers:0];
      }

      v18 = OUTLINED_FUNCTION_46_12();
      v19 = BWUBCreateLearnedNRProcessorControllerConfiguration(v18);
      *(v1 + 35) = v19;
      if (v19)
      {
        *(v1 + 36) = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v20 = OUTLINED_FUNCTION_46_12();
      v21 = BWUBCreateInferenceControllerConfiguration(v20);
      [OUTLINED_FUNCTION_42_11(v21 336)];
      *(v1 + 44) = FigDispatchQueueCreateWithPriority();
      if (*(v1 + 42))
      {
        *(v1 + 43) = objc_alloc_init(MEMORY[0x1E695DF90]);
        *(v1 + 45) = dispatch_group_create();
      }

      v22 = OUTLINED_FUNCTION_46_12();
      v23 = BWUBCreateRedEyeProcessorControllerConfiguration(v22);
      *(v1 + 54) = v23;
      if (v23)
      {
        *(v1 + 55) = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v24 = OUTLINED_FUNCTION_46_12();
      v25 = BWUBCreateIntelligentDistortionCorrectionProcessorControllerConfiguration(v24);
      *(v1 + 56) = v25;
      if (v25)
      {
        *(v1 + 58) = OUTLINED_FUNCTION_162(objc_alloc_init(MEMORY[0x1E695DF90]), 456);
      }

      v26 = OUTLINED_FUNCTION_46_12();
      v27 = BWUBCreateDeepZoomProcessorControllerConfiguration(v26);
      *(v1 + 61) = v27;
      if (v27)
      {
        *(v1 + 62) = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v28 = OUTLINED_FUNCTION_46_12();
      v29 = BWUBCreateStereoDisparityProcessorControllerConfiguration(v28);
      *(v1 + 63) = v29;
      if (v29)
      {
        [OUTLINED_FUNCTION_42_11(objc_alloc_init(MEMORY[0x1E695DF90]) 544)];
        *(v1 + 66) = FigDispatchQueueCreateWithPriority();
      }

      if ([*(v1 + 17) supplementalPointCloudCaptureDevice])
      {
        v30 = OUTLINED_FUNCTION_46_12();
        v31 = BWUBCreateJasperColorStillsExecutorControllerConfiguration(v30);
        *(v1 + 71) = v31;
        if (v31)
        {
          *(v1 + 72) = objc_alloc_init(MEMORY[0x1E695DF90]);
        }
      }

      v32 = OUTLINED_FUNCTION_46_12();
      result = BWUBCreateJasperDisparityProcessorControllerConfiguration(v32);
      *(v1 + 73) = result;
      if (result)
      {
        result = objc_alloc_init(MEMORY[0x1E695DF90]);
        *(v1 + 74) = result;
      }
    }
  }

  return result;
}

- (void)_releaseResources
{
  if (a1)
  {
    if (!_FigIsNotCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if ((*(a1 + 128) & 1) == 0)
    {
      if (*(a1 + 624))
      {
        OUTLINED_FUNCTION_15_26();
        OUTLINED_FUNCTION_140_0();
        dispatch_sync(v2, v3);

        *(a1 + 624) = 0;
      }

      if (*(a1 + 192))
      {
        OUTLINED_FUNCTION_33_1();
        OUTLINED_FUNCTION_30_7();
        OUTLINED_FUNCTION_14_27();
        OUTLINED_FUNCTION_140_0();
        dispatch_sync(v4, v5);
      }

      *(a1 + 152) = 0;
      *(a1 + 232) = 0;

      *(a1 + 248) = 0;
      *(a1 + 256) = 0;

      *(a1 + 608) = 0;
      *(a1 + 600) = 0;

      *(a1 + 264) = 0;
      *(a1 + 272) = 0;

      *(a1 + 536) = 0;
      *(a1 + 192) = 0;

      *(a1 + 224) = 0;
      *(a1 + 144) = 0;

      *(a1 + 136) = 0;
      *(a1 + 296) = 0;

      *(a1 + 312) = 0;
      *(a1 + 320) = 0;

      *(a1 + 328) = 0;
      *(a1 + 304) = 0;

      *(a1 + 344) = 0;
      *(a1 + 280) = 0;

      *(a1 + 288) = 0;
      *(a1 + 336) = 0;

      *(a1 + 352) = 0;
      *(a1 + 360) = 0;

      *(a1 + 368) = 0;
      *(a1 + 376) = 0;
      v6 = *(a1 + 392);
      if (v6)
      {
        CFRelease(v6);
        *(a1 + 392) = 0;
      }

      *(a1 + 384) = 0;
      v7 = *(a1 + 400);
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 400) = 0;
      }

      v8 = *(a1 + 408);
      if (v8)
      {
        CFRelease(v8);
        *(a1 + 408) = 0;
      }

      v9 = *(a1 + 416);
      if (v9)
      {
        CFRelease(v9);
        *(a1 + 416) = 0;
      }

      *(a1 + 424) = 0;
      *(a1 + 448) = 0;

      *(a1 + 456) = 0;
      *(a1 + 464) = 0;

      *(a1 + 480) = 0;
      *(a1 + 488) = 0;

      *(a1 + 496) = 0;
      *(a1 + 504) = 0;

      *(a1 + 512) = 0;
      *(a1 + 544) = 0;

      *(a1 + 528) = 0;
      *(a1 + 568) = 0;

      *(a1 + 576) = 0;
      *(a1 + 584) = 0;

      *(a1 + 592) = 0;
      *(a1 + 432) = 0;

      *(a1 + 440) = 0;
      *(a1 + 624) = 0;

      *(a1 + 632) = 0;
      *(a1 + 640) = 0;
      v10 = *(a1 + 616);
      if (v10)
      {
        CFRelease(v10);
        *(a1 + 616) = 0;
      }

      *(a1 + 552) = 0;
      *(a1 + 184) = 0;
      v11 = *(a1 + 656);
      if (v11)
      {
        CFRelease(v11);
        *(a1 + 656) = 0;
      }

      *(a1 + 128) = 1;
    }
  }
}

- (BOOL)idcSupportedForCaptureType:(int)a3 captureFlags:(unint64_t)a4 portType:(id)a5
{
  if (!self->_intelligentDistortionCorrectionControllerConfiguration)
  {
    return 0;
  }

  v6 = *&a3;
  if (![-[BWUBNodeConfiguration portTypesWithIntelligentDistortionCorrectionEnabled](self->_nodeConfiguration) containsObject:a5])
  {
    return 0;
  }

  return [BWIntelligentDistortionCorrectionProcessorController idcSupportedForCaptureType:v6 captureFlags:a4];
}

- (BOOL)_requiresResizedOutputDimensionsWithInputWidth:(uint64_t)a3 inputHeight:
{
  if (result)
  {
    OUTLINED_FUNCTION_135_3();
    v6 = [(BWUBNodeConfiguration *)*(v5 + 144) outputDimensions];
    if (v6 < 1 || SHIDWORD(v6) < 1)
    {
      return 0;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_138_1();
      v9 = [(BWUBNodeConfiguration *)v8 outputDimensions];
      if (v3 == v9)
      {
        v10 = OUTLINED_FUNCTION_138_1();
        return a3 != [(BWUBNodeConfiguration *)v10 outputDimensions]>> 32;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

- (BWVideoFormatRequirements)_demosaicedRawFormatRequirementsWithDimensions:(int)a3 colorSpaceProperties:
{
  if (!a1)
  {
    return 0;
  }

  if ((a3 & 0xFFFFFFFD) == 1)
  {
    v5 = 9;
  }

  else
  {
    v5 = 0;
  }

  v6 = a3 == 2 || a3 == 4;
  v7 = !v6 && (a3 & 0xFFFFFFFD) != 1;
  if (v6)
  {
    v8 = 8;
  }

  else
  {
    v8 = v5;
  }

  v9 = objc_alloc_init(BWVideoFormatRequirements);
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(a1 + 248), "demosaicedRawPixelFormat")}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [OUTLINED_FUNCTION_17() setSupportedPixelFormats:?];
  [(BWVideoFormatRequirements *)v9 setWidth:a2];
  [(BWVideoFormatRequirements *)v9 setHeight:a2 >> 32];
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:v8];
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    [OUTLINED_FUNCTION_17() setSupportedColorSpaceProperties:?];
  }

  return v9;
}

- (void)_setupProcessorCoordinator
{
  if (!a1 || *(a1 + 184))
  {
    return;
  }

  v255 = v2;
  v4 = &dword_1EB58E000;
  v5 = &off_1ACF06000;
  if (dword_1EB58E340)
  {
    OUTLINED_FUNCTION_4_57();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v7 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v279);
    if (OUTLINED_FUNCTION_6(v7))
    {
      v269 = 136315138;
      v270 = "[BWUBNode _setupProcessorCoordinator]";
      OUTLINED_FUNCTION_17_25();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_3_68();
    OUTLINED_FUNCTION_17_8();
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  FigDebugIsInternalBuild();
  v257 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 0];
  v256 = mach_absolute_time();
  v260 = [MEMORY[0x1E695DFA8] set];
  v261 = [*(a1 + 16) memoryPool];
  v8 = [*(a1 + 8) videoFormat];
  [v8 width];
  [v8 height];
  v9 = OUTLINED_FUNCTION_3_19();
  v12 = [(BWUBNode *)v9 _requiresResizedOutputDimensionsWithInputWidth:v10 inputHeight:v11];
  v13 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
  if (v12)
  {
    FigDebugIsInternalBuild();
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 2];
    mach_absolute_time();
    if (![objc_msgSend(*(a1 + 448) "portTypesWithGeometricDistortionCorrectionEnabled")])
    {
      FigCaptureGetFrameworkRadarComponent();
      OUTLINED_FUNCTION_4_57();
      v238 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_148(v238);
      OUTLINED_FUNCTION_4_0();
      if (v1)
      {
        v239 = OUTLINED_FUNCTION_120_1();
        v240 = [(BWUBNodeConfiguration *)v239 outputDimensions];
        v241 = OUTLINED_FUNCTION_120_1();
        v269 = 136315650;
        v270 = "[BWUBNode _setupProcessorCoordinator]";
        v271 = 1024;
        v272 = v240;
        v273 = 1024;
        v274 = [(BWUBNodeConfiguration *)v241 outputDimensions]>> 32;
        OUTLINED_FUNCTION_17_25();
        OUTLINED_FUNCTION_5_0();
      }

      OUTLINED_FUNCTION_8_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v242 = [(BWUBNodeConfiguration *)*(a1 + 144) outputDimensions];
      v243 = [(BWUBNodeConfiguration *)*(a1 + 144) outputDimensions];
      v276[0] = 67109376;
      v276[1] = v242;
      v277 = 1024;
      v278 = HIDWORD(v243);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_12();
      v244 = OUTLINED_FUNCTION_8_9();
      FigCapturePleaseFileRadar(v244, v245, v246, v247, v248, 5522, v249, v250, v276);
      free(v242);
      goto LABEL_170;
    }

    v15 = [BWVideoFormatRequirements alloc];
    [objc_msgSend(*(a1 + 16) "videoFormat")];
    v16 = [OUTLINED_FUNCTION_7() initWithPixelBufferAttributes:?];
    [OUTLINED_FUNCTION_25_0() width];
    [OUTLINED_FUNCTION_7() setWidth:?];
    [v8 height];
    [OUTLINED_FUNCTION_7() setHeight:?];
    [v8 extendedWidth];
    [OUTLINED_FUNCTION_7() setWidthAlignment:?];
    [v8 extendedHeight];
    [OUTLINED_FUNCTION_7() setHeightAlignment:?];
    v275 = v15;
    +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v275 count:1]);
    v17 = [OUTLINED_FUNCTION_25_0() extendedWidth];
    if (v17 != [(BWVideoFormatRequirements *)v15 extendedWidth])
    {
      goto LABEL_170;
    }

    v18 = [v8 extendedHeight];
    if (v18 != [(BWVideoFormatRequirements *)v15 extendedHeight])
    {
      goto LABEL_170;
    }

    v19 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v15, [objc_msgSend(*(a1 + 16) "preparedPixelBufferPool")], @"Noise Reduction and Fusion Processor Output Intermediate Pool", v261);
    *(a1 + 232) = v19;
    if (!v19)
    {
      goto LABEL_170;
    }

    v13 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_4_57();
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_148(v20);
      OUTLINED_FUNCTION_4_0();
      if (v17)
      {
        mach_absolute_time();
        v21 = FigHostTimeToNanoseconds();
        v22 = OUTLINED_FUNCTION_16_27(v21);
        v269 = 136315650;
        OUTLINED_FUNCTION_10_33("[BWUBNode _setupProcessorCoordinator]", v22, 1000.0);
        *(v23 + 14) = v14;
        OUTLINED_FUNCTION_1_83();
        OUTLINED_FUNCTION_5_0();
      }

      OUTLINED_FUNCTION_3_18();
      LODWORD(v4) = v24;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v13 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    }
  }

  v25 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
  if (![*(a1 + v13[112]) deferredPhotoProcessorEnabled] || *(a1 + 280))
  {
    FigDebugIsInternalBuild();
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d"];
    mach_absolute_time();
    v26 = *(a1 + 240);
    if (v26 == 1)
    {
      v27 = off_1E79895A8;
    }

    else
    {
      if (v26 != 6)
      {
        goto LABEL_170;
      }

      v27 = off_1E7989590;
    }

    v28 = [objc_alloc(*v27) initWithConfiguration:*(a1 + 248)];
    if (!v28)
    {
      goto LABEL_170;
    }

    OUTLINED_FUNCTION_107_2(v28, v29, v30, v31, v32, v33, v34, v35, 1, v252, v253, v254, v2, v256, v257, v258, v259, v260);
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_4_57();
      v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_33_13(v36);
      OUTLINED_FUNCTION_30();
      if (v4)
      {
        mach_absolute_time();
        v37 = FigHostTimeToNanoseconds();
        v38 = OUTLINED_FUNCTION_16_27(v37);
        v269 = 136315650;
        OUTLINED_FUNCTION_0_74("[BWUBNode _setupProcessorCoordinator]", v38, 1000.0);
        OUTLINED_FUNCTION_16_28();
        OUTLINED_FUNCTION_66_5();
      }

      LODWORD(v4) = -346497024;
      OUTLINED_FUNCTION_3_68();
      OUTLINED_FUNCTION_56_0();
      v25 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    }
  }

  if (*(a1 + 296))
  {
    FigDebugIsInternalBuild();
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d"];
    mach_absolute_time();
    v39 = [[BWDeepFusionProcessorController alloc] initWithConfiguration:*(a1 + 296)];
    if (!v39)
    {
      goto LABEL_170;
    }

    OUTLINED_FUNCTION_107_2(v39, v40, v41, v42, v43, v44, v45, v46, 6, v252, v253, v254, v255, v256, v257, v258, v259, v260);
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_4_57();
      v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_33_13(v47);
      OUTLINED_FUNCTION_30();
      if (v4)
      {
        mach_absolute_time();
        v48 = FigHostTimeToNanoseconds();
        v49 = OUTLINED_FUNCTION_16_27(v48);
        v269 = 136315650;
        OUTLINED_FUNCTION_0_74("[BWUBNode _setupProcessorCoordinator]", v49, 1000.0);
        OUTLINED_FUNCTION_16_28();
        OUTLINED_FUNCTION_66_5();
      }

      LODWORD(v4) = -346497024;
      OUTLINED_FUNCTION_3_68();
      OUTLINED_FUNCTION_56_0();
      v25 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    }
  }

  if (*(a1 + 600))
  {
    FigDebugIsInternalBuild();
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d"];
    mach_absolute_time();
    v50 = [[BWDeferredCaptureController alloc] initWithConfiguration:*(a1 + 600)];
    if (!v50)
    {
      goto LABEL_170;
    }

    OUTLINED_FUNCTION_107_2(v50, v51, v52, v53, v54, v55, v56, v57, 8, v252, v253, v254, v255, v256, v257, v258, v259, v260);
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_4_57();
      v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_33_13(v58);
      OUTLINED_FUNCTION_30();
      if (v4)
      {
        mach_absolute_time();
        v59 = FigHostTimeToNanoseconds();
        v60 = OUTLINED_FUNCTION_16_27(v59);
        v269 = 136315650;
        OUTLINED_FUNCTION_0_74("[BWUBNode _setupProcessorCoordinator]", v60, 1000.0);
        OUTLINED_FUNCTION_16_28();
        OUTLINED_FUNCTION_66_5();
      }

      LODWORD(v4) = -346497024;
      OUTLINED_FUNCTION_3_68();
      OUTLINED_FUNCTION_56_0();
      v25 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    }
  }

  if (*(a1 + 632))
  {
    FigDebugIsInternalBuild();
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d"];
    mach_absolute_time();
    v61 = [[BWDeferredProcessorController alloc] initWithConfiguration:*(a1 + 632)];
    if (!v61)
    {
      goto LABEL_170;
    }

    OUTLINED_FUNCTION_107_2(v61, v62, v63, v64, v65, v66, v67, v68, 9, v252, v253, v254, v255, v256, v257, v258, v259, v260);
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_4_57();
      v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_33_13(v69);
      OUTLINED_FUNCTION_30();
      if (v4)
      {
        mach_absolute_time();
        v70 = FigHostTimeToNanoseconds();
        v71 = OUTLINED_FUNCTION_16_27(v70);
        v269 = 136315650;
        OUTLINED_FUNCTION_0_74("[BWUBNode _setupProcessorCoordinator]", v71, 1000.0);
        OUTLINED_FUNCTION_16_28();
        OUTLINED_FUNCTION_66_5();
      }

      LODWORD(v4) = -346497024;
      OUTLINED_FUNCTION_3_68();
      OUTLINED_FUNCTION_56_0();
      v25 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    }
  }

  if ([(BWUBNodeConfiguration *)*(a1 + 144) deepFusionSyntheticsInNRSupportEnabled])
  {
    FigDebugIsInternalBuild();
    v262 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 7];
    v259 = mach_absolute_time();
    v72 = objc_alloc_init(BWVideoFormatRequirements);
    v73 = [OUTLINED_FUNCTION_125_2() width];
    v74 = [OUTLINED_FUNCTION_125_2() height];
    v75 = v73 + 15;
    v76 = v74 + 15;
    [(BWVideoFormatRequirements *)v72 setWidth:(v75 >> 1) & 0x7FFFFFFFFFFFFFF8];
    [(BWVideoFormatRequirements *)v72 setHeight:(v76 >> 1) & 0x7FFFFFFFFFFFFFF8];
    [(BWVideoFormatRequirements *)v72 setSupportedPixelFormats:&unk_1F2248FD0];
    v268 = v72;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v268 count:1];
    v77 = [OUTLINED_FUNCTION_8() formatByResolvingRequirements:?];
    v78 = [(BWUBNodeConfiguration *)*(a1 + 144) maxDeepFusionOutputCount];
    v79 = [(BWUBNodeConfiguration *)*(a1 + 144) maxDeepFusionOutputCount];
    v80 = [*(a1 + 144) deferredCaptureSupportEnabled];
    v81 = OUTLINED_FUNCTION_125_2();
    v82 = v81;
    if (v80)
    {
      v83 = [objc_msgSend(v81 "pixelBufferAttributes")];
      [v83 setObject:&unk_1F2248FE8 forKeyedSubscript:*MEMORY[0x1E6966038]];
      v84 = [[BWVideoFormatRequirements alloc] initWithPixelBufferAttributes:v83];
      v85 = [OUTLINED_FUNCTION_125_2() pixelFormat];
      if (FigCapturePixelFormatGetCompressionType(v85))
      {
        v86 = [OUTLINED_FUNCTION_125_2() pixelFormat];
        v267 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:FigCaptureUncompressedPixelFormatForPixelFormat(v86)];
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v267 count:1];
        [OUTLINED_FUNCTION_7() setSupportedPixelFormats:?];
      }

      v266 = v84;
      v82 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v266 count:1]);
    }

    v25 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    v5 = &off_1ACF06000;
    if (!v82 || !v78 || !v79)
    {
      goto LABEL_170;
    }

    v87 = 3 * v79;
    v88 = 2 * v78;
    v89 = v87;
    if ([*(a1 + 144) deferredCaptureSupportEnabled])
    {
      v90 = [[BWDeferredContainerPixelBufferPool alloc] initWithVideoFormat:v82 capacity:v88 name:@"DeepFusion deferred synthetic intermediate pool"];
      v91 = [[BWDeferredContainerPixelBufferPool alloc] initWithVideoFormat:v77 capacity:v89 name:@"DeepFusion deferred fusion map pool"];
    }

    else
    {
      v92 = [BWPixelBufferPool alloc];
      v93 = v82;
      LODWORD(v82) = v261;
      v90 = [(BWPixelBufferPool *)v92 initWithVideoFormat:v93 capacity:v88 name:@"Deep Fusion synthetic intermediate pool" memoryPool:v261];
      v91 = [[BWPixelBufferPool alloc] initWithVideoFormat:v77 capacity:v89 name:@"Deep Fusion synthetic fusion map pool" memoryPool:v261];
    }

    v94 = v91;
    if (!v90)
    {
      goto LABEL_170;
    }

    v95 = v94;
    *(a1 + 320) = v90;
    *(a1 + 328) = v95;
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_4_57();
      v96 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_91_6(v96);
      OUTLINED_FUNCTION_43_12();
      if (v82)
      {
        mach_absolute_time();
        v97 = FigHostTimeToNanoseconds();
        v98 = OUTLINED_FUNCTION_16_27(v97);
        v269 = 136315650;
        OUTLINED_FUNCTION_10_33("[BWUBNode _setupProcessorCoordinator]", v98, 1000.0);
        *(v99 + 14) = v262;
        OUTLINED_FUNCTION_1_83();
        OUTLINED_FUNCTION_8_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_3_68();
      OUTLINED_FUNCTION_13_0();
    }
  }

  v100 = MEMORY[0x1E695E0F8];
  if (*(a1 + v25[126]))
  {
    FigDebugIsInternalBuild();
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 10];
    mach_absolute_time();
    v101 = [[BWLearnedNRProcessorController alloc] initWithConfiguration:*(a1 + v25[126])];
    if (v101)
    {
      v102 = v101;
      v103 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", [*(a1 + v25[126]) outputFormat], 1, @"LearnedNR output pool", v261);
      if (v103)
      {
        v104 = v103;
        v105 = objc_alloc(MEMORY[0x1E695DF90]);
        v106 = *(a1 + 376) ? *(a1 + 376) : v100;
        v107 = [v105 initWithDictionary:v106];
        [v107 setObject:v104 forKeyedSubscript:0x1F219ED10];

        *(a1 + 376) = v107;
        if (![(BWLearnedNRProcessorController *)v102 prepareWithPixelBufferPoolProvider:a1])
        {
          [v260 addObject:v102];
        }
      }
    }

    LODWORD(v4) = -346497024;
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_4_57();
      v108 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_33_13(v108);
      OUTLINED_FUNCTION_30();
      mach_absolute_time();
      v109 = FigHostTimeToNanoseconds();
      v110 = OUTLINED_FUNCTION_16_27(v109);
      v269 = 136315650;
      OUTLINED_FUNCTION_0_74("[BWUBNode _setupProcessorCoordinator]", v110, 1000.0);
      OUTLINED_FUNCTION_16_28();
      OUTLINED_FUNCTION_66_5();
      LODWORD(v4) = -346497024;
      OUTLINED_FUNCTION_3_68();
      OUTLINED_FUNCTION_56_0();
    }
  }

  v111 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
  if (*(a1 + 336))
  {
    FigDebugIsInternalBuild();
    v254 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 11];
    v253 = mach_absolute_time();
    v112 = OUTLINED_FUNCTION_120_1();
    v113 = [(BWUBNodeConfiguration *)v112 inferenceMainImageDownscalingFactor];
    if (*&v113 == 0.0)
    {
      goto LABEL_184;
    }

    v114 = 875704422;
    v115 = objc_alloc_init(BWVideoFormatRequirements);
    v116 = [objc_msgSend(*(a1 + 248) "inputFormat")];
    v117 = OUTLINED_FUNCTION_120_1();
    v118 = [(BWUBNodeConfiguration *)v117 inferenceMainImageDownscalingFactor];
    v119 = v116 / *&v118;
    if (v119 < 512.0)
    {
      v119 = 512.0;
    }

    [(BWVideoFormatRequirements *)v115 setWidth:v119];
    v120 = [objc_msgSend(*(a1 + 248) "inputFormat")];
    v121 = OUTLINED_FUNCTION_120_1();
    v122 = [(BWUBNodeConfiguration *)v121 inferenceMainImageDownscalingFactor];
    v123 = v120 / *&v122;
    if (v123 < 384.0)
    {
      v123 = 384.0;
    }

    [(BWVideoFormatRequirements *)v115 setHeight:v123];
    if (FigCapturePlatformSupportsUniversalCompression())
    {
      v124 = 0x1E695D000;
      if (*(a1 + 240) == 6)
      {
        v114 = FigCaptureCompressedPixelFormatForPixelFormat(875704422, 4, 0);
      }
    }

    else
    {
      v124 = 0x1E695D000uLL;
    }

    v265 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v114];
    [*(v124 + 3784) arrayWithObjects:&v265 count:1];
    [OUTLINED_FUNCTION_4() setSupportedPixelFormats:?];
    v264 = v115;
    [*(v124 + 3784) arrayWithObjects:&v264 count:1];
    [*(a1 + 336) setInputFormat:objc_msgSend(OUTLINED_FUNCTION_8(), "formatByResolvingRequirements:")];
    v125 = [BWInferenceEngineController alloc];
    [a1 name];
    v263 = [OUTLINED_FUNCTION_40() initWithConfiguration:? contextName:?];
    if (!v263)
    {
LABEL_184:
      v148 = 0;
    }

    else
    {
      if ([-[BWUBNodeConfiguration providedInferenceAttachedMediaByMode](*(a1 + 144)) objectForKeyedSubscript:&unk_1F22450D0])
      {
        v126 = 4;
      }

      else
      {
        v126 = 2;
      }

      v127 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", [*(a1 + 336) inputFormat], v126, @"UB Inference Input Pool", v261);
      *(a1 + 368) = v127;
      if (v127)
      {
        v128 = objc_alloc(MEMORY[0x1E695DF90]);
        if (*(a1 + 376))
        {
          v129 = *(a1 + 376);
        }

        else
        {
          v129 = v100;
        }

        v259 = [v128 initWithDictionary:v129];
        v130 = [v263 providedAttachedMediaKeys];
        OUTLINED_FUNCTION_98_5();
        v132 = [v131 countByEnumeratingWithState:? objects:? count:?];
        v133 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
        if (v132)
        {
          v134 = v132;
          v135 = MEMORY[0];
          v258 = 0x1F21AADF0;
          while (2)
          {
            for (i = 0; i != v134; ++i)
            {
              if (MEMORY[0] != v135)
              {
                objc_enumerationMutation(v130);
              }

              v137 = *(8 * i);
              v111 = [*(a1 + 16) mediaPropertiesForAttachedMediaKey:v137];
              if ([v111 preparedPixelBufferPool])
              {
                v111 = [v111 resolvedVideoFormat];
                [v263 outputVideoFormatForAttachedMediaKey:v137];
                if (([OUTLINED_FUNCTION_7() isEqual:?] & 1) == 0)
                {
                  goto LABEL_117;
                }
              }

              else
              {
                v138 = [v263 outputVideoFormatForAttachedMediaKey:v137];
                if (!v138 || (v111 = v138, v139 = [*(a1 + 144) deferredCaptureSupportEnabled], v140 = [BWPixelBufferPool alloc], v141 = objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"UB %@ Output Pool", v137), LOBYTE(v251) = v139, (v142 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:clientProvidesPool:memoryPool:providesBackPressure:reportSlowBackPressureAllocations:](v140, "initWithVideoFormat:capacity:name:clientProvidesPool:memoryPool:providesBackPressure:reportSlowBackPressureAllocations:", v111, 2, v141, 0, v261, v139, v251)) == 0))
                {
LABEL_117:
                  LODWORD(v4) = -346497024;
                  v148 = v259;
                  goto LABEL_122;
                }

                v143 = v142;
                [v259 setObject:v142 forKeyedSubscript:v137];

                v133 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
              }

              if (*(a1 + v133[118]) && (([v137 isEqualToString:0x1F219E750] & 1) != 0 || objc_msgSend(v137, "isEqualToString:", 0x1F21AADF0)))
              {
                *(a1 + 472) = [v111 width];
                *(a1 + 476) = [v111 height];
              }
            }

            OUTLINED_FUNCTION_98_5();
            v134 = OUTLINED_FUNCTION_37(v144, v145, v146, v147);
            if (v134)
            {
              continue;
            }

            break;
          }
        }

        v148 = v259;
        if ([v259 count])
        {

          *(a1 + 376) = v259;
          v148 = 0;
        }

        FigDebugIsInternalBuild();
        v149 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 12];
        mach_absolute_time();
        v150 = [v263 prepareWithPixelBufferPoolProvider:a1];
        if (dword_1EB58E340)
        {
          v280 = 0;
          v279 = OS_LOG_TYPE_DEFAULT;
          v151 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          LODWORD(v111) = v151;
          v152 = v280;
          os_log_type_enabled(v151, v279);
          OUTLINED_FUNCTION_97_0();
          if (v154)
          {
            v155 = v153;
          }

          else
          {
            v155 = v152;
          }

          if (v155)
          {
            mach_absolute_time();
            v156 = FigHostTimeToNanoseconds();
            v157 = OUTLINED_FUNCTION_16_27(v156);
            v269 = 136315650;
            OUTLINED_FUNCTION_10_33("[BWUBNode _setupProcessorCoordinator]", v157, 1000.0);
            *(v158 + 14) = v149;
            OUTLINED_FUNCTION_1_83();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_3_18();
          OUTLINED_FUNCTION_128();
        }

        if (!v150)
        {
          [v260 addObject:v263];
        }
      }

      else
      {
        v148 = 0;
      }

      LODWORD(v4) = -346497024;
    }

LABEL_122:

    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_4_57();
      v159 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_91_6(v159);
      OUTLINED_FUNCTION_43_12();
      if (v111)
      {
        mach_absolute_time();
        v160 = FigHostTimeToNanoseconds();
        v161 = OUTLINED_FUNCTION_16_27(v160);
        v269 = 136315650;
        OUTLINED_FUNCTION_10_33("[BWUBNode _setupProcessorCoordinator]", v161, 1000.0);
        *(v162 + 14) = v254;
        OUTLINED_FUNCTION_1_83();
        OUTLINED_FUNCTION_8_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_3_68();
      OUTLINED_FUNCTION_13_0();
    }
  }

  v5 = &off_1ACF06000;
  if (*(a1 + 432))
  {
    FigDebugIsInternalBuild();
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d"];
    mach_absolute_time();
    v163 = [[BWRedEyeReductionController alloc] initWithConfiguration:*(a1 + 432)];
    if (!v163)
    {
      goto LABEL_170;
    }

    OUTLINED_FUNCTION_107_2(v163, v164, v165, v166, v167, v168, v169, v170, 14, v252, v253, v254, v255, v256, v257, v258, v259, v260);
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_4_57();
      v171 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_33_13(v171);
      OUTLINED_FUNCTION_30();
      if (v4)
      {
        mach_absolute_time();
        v172 = FigHostTimeToNanoseconds();
        v173 = OUTLINED_FUNCTION_16_27(v172);
        v269 = 136315650;
        OUTLINED_FUNCTION_0_74("[BWUBNode _setupProcessorCoordinator]", v173, 1000.0);
        OUTLINED_FUNCTION_16_28();
        OUTLINED_FUNCTION_66_5();
      }

      LODWORD(v4) = -346497024;
      OUTLINED_FUNCTION_3_68();
      OUTLINED_FUNCTION_56_0();
    }
  }

  if (*(a1 + 448))
  {
    FigDebugIsInternalBuild();
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d"];
    mach_absolute_time();
    if ([objc_msgSend(*(a1 + 448) "portTypesWithIntelligentDistortionCorrectionEnabled")])
    {
      if ([*(a1 + 144) deferredPhotoProcessorEnabled])
      {
        *(a1 + 472) = 512;
        *(a1 + 476) = 384;
      }

      else if (![(BWUBNode *)a1 _inferenceOutputPixelBufferPoolForAttachedMediaKey:?]&& ![(BWUBNode *)a1 _inferenceOutputPixelBufferPoolForAttachedMediaKey:?]|| !*(a1 + 472) || !*(a1 + 476))
      {
        goto LABEL_170;
      }
    }

    [objc_msgSend(*(a1 + 16) "videoFormat")];
    [objc_msgSend(*(a1 + 16) "videoFormat")];
    [OUTLINED_FUNCTION_89_4(448) setProcessorConfig:?];
    v174 = [[BWIntelligentDistortionCorrectionProcessorController alloc] initWithConfiguration:*(a1 + 448)];
    if (!v174)
    {
      goto LABEL_170;
    }

    OUTLINED_FUNCTION_107_2(v174, v175, v176, v177, v178, v179, v180, v181, 15, v252, v253, v254, v255, v256, v257, v258, v259, v260);
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_4_57();
      v182 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_33_13(v182);
      OUTLINED_FUNCTION_30();
      if (v4)
      {
        mach_absolute_time();
        v183 = FigHostTimeToNanoseconds();
        v184 = OUTLINED_FUNCTION_16_27(v183);
        v269 = 136315650;
        OUTLINED_FUNCTION_0_74("[BWUBNode _setupProcessorCoordinator]", v184, 1000.0);
        OUTLINED_FUNCTION_16_28();
        OUTLINED_FUNCTION_66_5();
      }

      LODWORD(v4) = -346497024;
      OUTLINED_FUNCTION_3_68();
      OUTLINED_FUNCTION_56_0();
    }
  }

  if (*(a1 + 488))
  {
    FigDebugIsInternalBuild();
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 16];
    mach_absolute_time();
    v185 = [[BWDeepZoomProcessorController alloc] initWithConfiguration:*(a1 + 488)];
    if (!v185)
    {
      goto LABEL_170;
    }

    v186 = v185;
    if ([(BWDeepZoomProcessorController *)v185 prepareWithPixelBufferPoolProvider:a1])
    {
      goto LABEL_170;
    }

    [v260 addObject:v186];
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_4_57();
      v187 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_33_13(v187);
      OUTLINED_FUNCTION_30();
      if (v4)
      {
        mach_absolute_time();
        v188 = FigHostTimeToNanoseconds();
        v189 = OUTLINED_FUNCTION_16_27(v188);
        v269 = 136315650;
        OUTLINED_FUNCTION_0_74("[BWUBNode _setupProcessorCoordinator]", v189, 1000.0);
        OUTLINED_FUNCTION_16_28();
        OUTLINED_FUNCTION_66_5();
      }

      LODWORD(v4) = -346497024;
      OUTLINED_FUNCTION_3_68();
      OUTLINED_FUNCTION_56_0();
    }
  }

  if (*(a1 + 504))
  {
    FigDebugIsInternalBuild();
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d"];
    mach_absolute_time();
    [*(a1 + 504) setInputDimensions:{objc_msgSend(objc_msgSend(*(a1 + 8), "videoFormat"), "width") | (objc_msgSend(objc_msgSend(*(a1 + 8), "videoFormat"), "height") << 32)}];
    v190 = [[BWStereoDisparityProcessorController alloc] initWithConfiguration:*(a1 + 504)];
    if (!v190)
    {
      goto LABEL_170;
    }

    OUTLINED_FUNCTION_107_2(v190, v191, v192, v193, v194, v195, v196, v197, 17, v252, v253, v254, v255, v256, v257, v258, v259, v260);
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_4_57();
      v198 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_33_13(v198);
      OUTLINED_FUNCTION_30();
      if (v4)
      {
        mach_absolute_time();
        v199 = FigHostTimeToNanoseconds();
        v200 = OUTLINED_FUNCTION_16_27(v199);
        v269 = 136315650;
        OUTLINED_FUNCTION_0_74("[BWUBNode _setupProcessorCoordinator]", v200, 1000.0);
        OUTLINED_FUNCTION_16_28();
        OUTLINED_FUNCTION_66_5();
      }

      LODWORD(v4) = -346497024;
      OUTLINED_FUNCTION_3_68();
      OUTLINED_FUNCTION_56_0();
    }
  }

  if (*(a1 + 568))
  {
    FigDebugIsInternalBuild();
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d"];
    mach_absolute_time();
    [*(a1 + 568) setInputColorFormat:objc_msgSend(*(a1 + 248), "outputFormat")];
    [*(a1 + 568) setOutputDepthFormat:objc_msgSend(objc_msgSend(*(a1 + 16), "mediaPropertiesForAttachedMediaKey:", @"Depth", "resolvedVideoFormat")];
    v201 = [[BWJasperColorStillsExecutorController alloc] initWithConfiguration:*(a1 + 568)];
    if (!v201)
    {
      goto LABEL_170;
    }

    OUTLINED_FUNCTION_107_2(v201, v202, v203, v204, v205, v206, v207, v208, 18, v252, v253, v254, v255, v256, v257, v258, v259, v260);
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_4_57();
      v209 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_33_13(v209);
      OUTLINED_FUNCTION_30();
      if (v4)
      {
        mach_absolute_time();
        v210 = FigHostTimeToNanoseconds();
        v211 = OUTLINED_FUNCTION_16_27(v210);
        v269 = 136315650;
        OUTLINED_FUNCTION_0_74("[BWUBNode _setupProcessorCoordinator]", v211, 1000.0);
        OUTLINED_FUNCTION_16_28();
        OUTLINED_FUNCTION_66_5();
      }

      v4 = &dword_1EB58E000;
      OUTLINED_FUNCTION_3_68();
      OUTLINED_FUNCTION_56_0();
    }
  }

  if (!*(a1 + 584))
  {
LABEL_166:
    os_unfair_lock_lock((a1 + 200));
    *(a1 + 184) = [[BWStillImageProcessorCoordinator alloc] initWithProcessorControllers:v260];
    os_unfair_lock_unlock((a1 + 200));
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_4_57();
      v223 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_91_6(v223);
      OUTLINED_FUNCTION_43_12();
      if (&OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported)
      {
        mach_absolute_time();
        v224 = FigHostTimeToNanoseconds();
        v225 = OUTLINED_FUNCTION_16_27(v224);
        v269 = 136315650;
        OUTLINED_FUNCTION_10_33("[BWUBNode _setupProcessorCoordinator]", v225, 1000.0);
        *(v226 + 14) = v257;
        OUTLINED_FUNCTION_1_83();
        OUTLINED_FUNCTION_8_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_3_68();
      OUTLINED_FUNCTION_13_0();
    }

    goto LABEL_170;
  }

  FigDebugIsInternalBuild();
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%d"];
  mach_absolute_time();
  [*(a1 + 584) setInputColorFormat:objc_msgSend(*(a1 + 248), "outputFormat")];
  [*(a1 + 584) setOutputDepthFormat:objc_msgSend(objc_msgSend(*(a1 + 16), "mediaPropertiesForAttachedMediaKey:", @"Depth", "resolvedVideoFormat")];
  [*(a1 + 584) setPointCloudTimeMachineCapacity:{objc_msgSend(*(a1 + 552), "retainedBufferCount")}];
  v212 = [[BWJasperDisparityProcessorController alloc] initWithConfiguration:*(a1 + 584)];
  if (v212)
  {
    OUTLINED_FUNCTION_107_2(v212, v213, v214, v215, v216, v217, v218, v219, 19, v252, v253, v254, v255, v256, v257, v258, v259, v260);
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_4_57();
      v220 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_33_13(v220);
      OUTLINED_FUNCTION_30();
      if (v4)
      {
        mach_absolute_time();
        v221 = FigHostTimeToNanoseconds();
        v222 = OUTLINED_FUNCTION_16_27(v221);
        v269 = 136315650;
        OUTLINED_FUNCTION_0_74("[BWUBNode _setupProcessorCoordinator]", v222, 1000.0);
        OUTLINED_FUNCTION_16_28();
        OUTLINED_FUNCTION_66_5();
      }

      OUTLINED_FUNCTION_3_68();
      OUTLINED_FUNCTION_56_0();
    }

    goto LABEL_166;
  }

  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
LABEL_170:
  if (*(a1 + 184))
  {
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_4_57();
      v227 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v228 = OUTLINED_FUNCTION_156(v227);
      if (OUTLINED_FUNCTION_5_2(v228))
      {
        v269 = *(v5 + 102);
        v270 = "[BWUBNode _setupProcessorCoordinator]";
        OUTLINED_FUNCTION_17_25();
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_124();
      }

      OUTLINED_FUNCTION_3_68();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_57();
    v229 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v230 = OUTLINED_FUNCTION_156(v229);
    if (OUTLINED_FUNCTION_5_2(v230))
    {
      v269 = *(v5 + 102);
      v270 = "[BWUBNode _setupProcessorCoordinator]";
      OUTLINED_FUNCTION_17_25();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_124();
    }

    OUTLINED_FUNCTION_8_1();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(v276[0]) = 0;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_52_11();
    FigCapturePleaseFileRadar(v231, v232, v233, v234, v235, 5923, v236, v237, v276);
    free(v276);
  }
}

- (void)_resetProcessingState
{
  if (a1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (*(a1 + 216) == 1 && *(a1 + 176) && dword_1EB58E340)
    {
      OUTLINED_FUNCTION_23_16();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v25);
      OUTLINED_FUNCTION_43_12();
      if (v1)
      {
        v4 = [objc_msgSend(*(a1 + 224) "allocatorBackend")] >> 20;
        v5 = [objc_msgSend(*(a1 + 224) "allocatorBackend")];
        v14 = 136315650;
        v15 = "[BWUBNode _resetProcessingState]";
        v16 = 2048;
        v17 = v4;
        v18 = 2048;
        v19 = v5 >> 20;
        OUTLINED_FUNCTION_29_12();
        OUTLINED_FUNCTION_8_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0();
    }

    [objc_msgSend(OUTLINED_FUNCTION_59_8() controllerForType:{*(a1 + 240)), "cancelProcessing"}];
    if (*(a1 + 312))
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __33__BWUBNode__resetProcessingState__block_invoke;
      v13[3] = &unk_1E798F870;
      v13[4] = a1;
      [(BWUBNode *)a1 _deepFusionDispatch:1 direction:v13 block:?];
      [*(a1 + 304) removeAllObjects];
    }

    if (*(a1 + 352))
    {
      block = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      OUTLINED_FUNCTION_14_27();
      v22 = v6;
      v23 = &unk_1E798FEA0;
      v24 = v7;
      dispatch_sync(v8, &block);
      [*(a1 + 344) removeAllObjects];
    }

    [objc_msgSend(OUTLINED_FUNCTION_59_8() controllerForType:{7), "cancelProcessing"}];
    [*(a1 + 456) removeAllObjects];
    [*(a1 + 464) removeAllObjects];
    [objc_msgSend(OUTLINED_FUNCTION_59_8() controllerForType:{10), "cancelProcessing"}];
    [*(a1 + 496) removeAllObjects];
    [objc_msgSend(OUTLINED_FUNCTION_59_8() controllerForType:{4), "cancelProcessing"}];
    [*(a1 + 440) removeAllObjects];
    if (*(a1 + 528))
    {
      OUTLINED_FUNCTION_8_7();
      block = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      OUTLINED_FUNCTION_14_27();
      v22 = v9;
      v23 = &unk_1E798FEA0;
      v24 = v10;
      dispatch_sync(v11, &block);

      *(a1 + 512) = 0;
      [*(a1 + 544) removeAllObjects];
      *(a1 + 520) = 0;
    }

    [objc_msgSend(OUTLINED_FUNCTION_59_8() controllerForType:{9), "cancelProcessing"}];
    [*(a1 + 576) removeAllObjects];
    [objc_msgSend(OUTLINED_FUNCTION_59_8() controllerForType:{13), "cancelProcessing"}];
    [*(a1 + 592) removeAllObjects];
    [objc_msgSend(OUTLINED_FUNCTION_59_8() controllerForType:{11), "cancelProcessing"}];
    [*(a1 + 288) removeAllObjects];
    v12 = *(a1 + 616);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 616) = 0;
    }

    [objc_msgSend(OUTLINED_FUNCTION_59_8() controllerForType:{14), "cancelProcessing"}];

    *(a1 + 608) = 0;
    [*(a1 + 256) removeAllObjects];
    [*(a1 + 264) removeAllObjects];
    [*(a1 + 272) removeAllObjects];
    [*(a1 + 536) removeAllObjects];
    if (*(a1 + 176))
    {

      *(a1 + 160) = *(a1 + 176);
    }

    *(a1 + 168) = 0;

    *(a1 + 176) = 0;
  }
}

- (uint64_t)_handlePointCloudSampleBuffer:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    if (_FigIsNotCurrentDispatchQueue())
    {
      if (v1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
      if (v1)
      {
LABEL_4:
        if ([(BWUBNodeConfiguration *)*(v2 + 144) generateLiDARDepth])
        {
          v3 = OUTLINED_FUNCTION_44();
          [BWUBNode _handleLidarDepthPointCloudSampleBuffer:v3];
        }

        else
        {
          result = [*(v2 + 136) supplementalPointCloudCaptureDevice];
          if (!result)
          {
            return result;
          }

          v4 = OUTLINED_FUNCTION_44();
          [BWUBNode _handleSupplementalPointCloudSampleBuffer:v4];
        }

        return 0;
      }
    }

    FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = OUTLINED_FUNCTION_8_5(os_log_and_send_and_compose_flags_and_os_log_type);
    if (OUTLINED_FUNCTION_6(v6))
    {
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_17_8();
    v7 = OUTLINED_FUNCTION_6_0();
    v8 = OUTLINED_FUNCTION_3_19();
    FigCapturePleaseFileRadar(v8, v9, 0, 0, v10, 898, v11, v12, 0);
    free(v7);
    return 4294954516;
  }

  return result;
}

- (uint64_t)_handleSampleBuffer:(id *)a1 input:(void *)a2
{
  if (!a1)
  {
    return 0;
  }

  IsCurrentDispatchQueue = _FigIsCurrentDispatchQueue();
  if (IsCurrentDispatchQueue)
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_27:
    FigCaptureGetFrameworkRadarComponent();
    v31 = OUTLINED_FUNCTION_47_10();
    OUTLINED_FUNCTION_90_4(v31);
    OUTLINED_FUNCTION_115_0();
    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v34 = v2;
    }

    if (v34)
    {
      v55 = 136315138;
      v56 = "[BWUBNode _handleSampleBuffer:input:]";
      OUTLINED_FUNCTION_43_0();
      v54 = &v55;
      OUTLINED_FUNCTION_5_0();
    }

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_80_5();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_51_12();
    v46 = OUTLINED_FUNCTION_8_9();
    v53 = 993;
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  IsCurrentDispatchQueue = FigDebugAssert3();
  if (!a2)
  {
    goto LABEL_27;
  }

LABEL_4:
  v6 = OUTLINED_FUNCTION_7_24(IsCurrentDispatchQueue, @"StillSettings");
  if (!v6)
  {
    FigCaptureGetFrameworkRadarComponent();
    v35 = OUTLINED_FUNCTION_47_10();
    OUTLINED_FUNCTION_90_4(v35);
    OUTLINED_FUNCTION_115_0();
    if (v33)
    {
      v37 = v36;
    }

    else
    {
      v37 = v2;
    }

    if (v37)
    {
      v55 = 136315138;
      v56 = "[BWUBNode _handleSampleBuffer:input:]";
      OUTLINED_FUNCTION_43_0();
      v54 = &v55;
      OUTLINED_FUNCTION_5_0();
    }

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_80_5();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_51_12();
    v46 = OUTLINED_FUNCTION_8_9();
    v53 = 996;
    goto LABEL_53;
  }

  v7 = v6;
  v8 = OUTLINED_FUNCTION_7_24(v6, *off_1E798A3C8);
  if (!v8)
  {
    FigCaptureGetFrameworkRadarComponent();
    v38 = OUTLINED_FUNCTION_47_10();
    OUTLINED_FUNCTION_90_4(v38);
    OUTLINED_FUNCTION_115_0();
    if (v33)
    {
      v40 = v39;
    }

    else
    {
      v40 = v7;
    }

    if (v40)
    {
      v55 = 136315138;
      v56 = "[BWUBNode _handleSampleBuffer:input:]";
      OUTLINED_FUNCTION_43_0();
      v54 = &v55;
      OUTLINED_FUNCTION_5_0();
    }

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_80_5();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_51_12();
    v46 = OUTLINED_FUNCTION_8_9();
    v53 = 1013;
LABEL_53:
    FigCapturePleaseFileRadar(v46, v47, v48, v49, v50, v53, v51, v52, v54);
    free(block);
    v22 = 4294954516;
    goto LABEL_17;
  }

  v9 = v8;
  v10 = [v8 objectForKeyedSubscript:*off_1E798B540];
  v11 = OUTLINED_FUNCTION_95();
  if (([(BWUBNode *)v11 _shouldPassthroughWithStillImageSettings:v12]& 1) != 0)
  {
    if (FigCaptureSushiRawDNGDictionaryCreatedInGraph() && FigCapturePixelFormatIsBayerRaw([objc_msgSend(v7 "requestedSettings")]))
    {
      [objc_msgSend(v7 "requestedSettings")];
      [objc_msgSend(v7 "requestedSettings")];
      [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798A698), "intValue"}];
      [objc_msgSend(a1[56] "portTypesWithGeometricDistortionCorrectionEnabled")];
      v41 = OUTLINED_FUNCTION_3_19();
      [(BWUBNode *)v41 _propagateSushiRawDNGDictionaryWithOutputSampleBuffer:v42 requestedDimensions:v43 requiresGDCInformation:v44];
    }

    v45 = OUTLINED_FUNCTION_3_19();
    [BWUBNode _emitSampleBuffer:v45 description:?];
    goto LABEL_16;
  }

  [objc_msgSend(v7 "captureSettings")];
  [BWUBNode _infoForCaptureType:a1 isSupportedCaptureTypeOut:? isFusionCaptureTypeOut:?];
  [a1[18] deferredPhotoProcessorEnabled];
  OUTLINED_FUNCTION_95();
  [BWUBNode _setupProcessingStateWithSettings:];
  if (v13)
  {
    v22 = v13;
    goto LABEL_17;
  }

  v14 = [OUTLINED_FUNCTION_89_4(640) objectForKeyedSubscript:?];
  v15 = [OUTLINED_FUNCTION_89_4(440) objectForKeyedSubscript:?];
  v16 = [OUTLINED_FUNCTION_89_4(288) objectForKeyedSubscript:?];
  v17 = [objc_msgSend(OUTLINED_FUNCTION_89_4(256) "objectForKeyedSubscript:"firstObject"")];
  if (v14)
  {
    v23 = OUTLINED_FUNCTION_7_24(v17, @"DeferredProcessingContainer");
    [objc_msgSend(OUTLINED_FUNCTION_7_24(v23 @"PhotoManifest")];
    OUTLINED_FUNCTION_11_34();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    OUTLINED_FUNCTION_63_10();
    block[2] = v24;
    block[3] = &unk_1E798FEA0;
    block[4] = v25;
    dispatch_async(v26, block);
    goto LABEL_16;
  }

  if (v15)
  {
    if ([BWRedEyeReductionControllerInput requiresInferencesFromFrame:a2])
    {
      v28 = OUTLINED_FUNCTION_3_19();
      [(BWUBNode *)v28 _inferenceProcessRedEyeReductionSampleBuffer:v29 settings:v7 portType:v10];
    }

    else
    {
      v30 = [(BWUBNode *)a1 _ubRERRouter];
      v30[2](v30, a2, 1, v15, 0);
    }

    goto LABEL_16;
  }

  if (v16)
  {
    [v16 setInputFrame:a2];
    goto LABEL_16;
  }

  v18 = v17;
  if (v17)
  {
    [v17 addFrame:a2];
    if ([objc_msgSend(v7 "captureSettings")] == 7)
    {
      [(BWUBNode *)a1 _handleClientBracketFrameEmissionForProcessorInput:v18 clientBracketFrame:a2];
    }

    else
    {
      [(BWUBNode *)a1 _handleReferenceFrameEmissionForProcessorInput:v18];
    }

    goto LABEL_16;
  }

  v19 = OUTLINED_FUNCTION_95();
  if (![BWUBNode _processingNeededForSettings:v19 portType:v20])
  {
LABEL_16:
    v22 = 0;
LABEL_17:
    [(BWUBNode *)a1 _resetProcessingStateIfDone];
    return v22;
  }

  v21 = OUTLINED_FUNCTION_3_19();
  v22 = [BWUBNode _singleImageProcessSampleBuffer:v21 settings:? portType:?];
  if (v22)
  {
    FigDebugAssert3();
  }

  return v22;
}

- (uint64_t)_handleLidarDepthPointCloudSampleBuffer:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    if (!_FigIsNotCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v3 = [*(v2 + 184) controllerForType:13];

    return [v3 addPointCloudToTimeMachine:v1];
  }

  return result;
}

- (void)_handleSupplementalPointCloudSampleBuffer:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_80();
    if (!_FigIsNotCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    os_unfair_lock_lock((v2 + 560));
    v3 = *(v2 + 564);
    os_unfair_lock_unlock((v2 + 560));
    if ((v3 & 1) == 0)
    {
      if (v1)
      {
        CFRetain(v1);
      }

      OUTLINED_FUNCTION_8_7();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      OUTLINED_FUNCTION_8_40();
      block[2] = v4;
      block[3] = &unk_1E798FEA0;
      block[4] = v5;
      dispatch_async(v6, block);
    }
  }
}

void __54__BWUBNode__handleSupplementalPointCloudSampleBuffer___block_invoke(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_143_0(*(a1 + 32));
  os_unfair_lock_lock(v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 564);
  v5 = OUTLINED_FUNCTION_143_0(v3);
  os_unfair_lock_unlock(v5);
  if ((v4 & 1) == 0)
  {
    v6 = *(*(a1 + 32) + 576);
    OUTLINED_FUNCTION_43();
    v11 = OUTLINED_FUNCTION_37(v7, v8, v9, v10);
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = v11;
    v13 = 1;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        OUTLINED_FUNCTION_142_0();
        if (!v15)
        {
          objc_enumerationMutation(v6);
        }

        v16 = [*(*(a1 + 32) + 576) objectForKeyedSubscript:*(8 * i)];
        [v16 addPointCloud:*(a1 + 40)];
        v13 &= [v16 needMorePointClouds] ^ 1;
      }

      OUTLINED_FUNCTION_43();
      v12 = OUTLINED_FUNCTION_37(v17, v18, v19, v20);
    }

    while (v12);
    if (!v13)
    {
      v21 = 0;
    }

    else
    {
LABEL_10:
      [*(*(a1 + 32) + 136) stopPointCloudCaptureForStillImageCaptureWithSettingsID:*(*(a1 + 32) + 168)];
      v21 = 1;
    }

    v22 = OUTLINED_FUNCTION_143_0(*(a1 + 32));
    os_unfair_lock_lock(v22);
    *(*(a1 + 32) + 564) = v21;
    v23 = OUTLINED_FUNCTION_143_0(*(a1 + 32));
    os_unfair_lock_unlock(v23);
  }

  v24 = *(a1 + 40);
  if (v24)
  {
    CFRelease(v24);
  }

  [(BWUBNode *)*(a1 + 32) _resetProcessingStateIfDone];
}

- (void)_resetProcessingStateIfDone
{
  if (a1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (*(a1 + 176) && !*(a1 + 608) && ![*(a1 + 256) count] && !objc_msgSend(*(a1 + 304), "count") && !objc_msgSend(*(a1 + 464), "count") && !objc_msgSend(*(a1 + 496), "count") && !objc_msgSend(*(a1 + 440), "count") && !objc_msgSend(*(a1 + 640), "count") && *(a1 + 520) <= 0 && !objc_msgSend(*(a1 + 576), "count") && !objc_msgSend(*(a1 + 592), "count"))
    {

      [(BWUBNode *)a1 _resetProcessingState];
    }
  }
}

- (uint64_t)_shouldPassthroughWithStillImageSettings:(uint64_t)result
{
  if (result)
  {
    v3 = [objc_msgSend(a2 "captureSettings")];
    v4 = [objc_msgSend(a2 "requestedSettings")];
    v5 = [objc_msgSend(a2 "requestedSettings")];
    v6 = [objc_msgSend(a2 "requestedSettings")];
    v7 = (v6 == 0) & ([objc_msgSend(a2 "requestedSettings")] ^ 1);
    if (v5)
    {
      v7 = 0;
    }

    if (v4)
    {
      v7 = 0;
    }

    if (v3)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)_infoForCaptureType:(uint64_t)result isSupportedCaptureTypeOut:isFusionCaptureTypeOut:
{
  if (result)
  {
    OUTLINED_FUNCTION_113();
    v4 = v3;
    result = 0;
    v5 = 0;
    switch(v6)
    {
      case 1:
      case 2:
      case 6:
      case 7:
        v5 = 0;
        result = 1;
        goto LABEL_4;
      case 10:
        result = [*(v4 + 248) unifiedBracketingFusionSupportEnabled];
        goto LABEL_12;
      case 11:
        result = [*(v4 + 248) lowLightFusionEnabled];
        goto LABEL_12;
      case 12:
        result = [(BWUBNodeConfiguration *)*(v4 + 144) deepFusionSupportEnabled];
LABEL_12:
        v5 = 1;
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      default:
LABEL_4:
        if (v2)
        {
LABEL_5:
          *v2 = result;
        }

LABEL_6:
        if (v1)
        {
          *v1 = v5;
        }

        break;
    }
  }

  return result;
}

- (void)_setupProcessingStateWithSettings:
{
  OUTLINED_FUNCTION_84();
  if (!v2)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_134_3();
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (!*(v1 + 184))
  {
    OUTLINED_FUNCTION_35_13();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v10 = OUTLINED_FUNCTION_157(os_log_and_send_and_compose_flags_and_os_log_type);
    if (OUTLINED_FUNCTION_5_2(v10))
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  if (!v0)
  {
    OUTLINED_FUNCTION_35_13();
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v12 = OUTLINED_FUNCTION_157(v11);
    if (OUTLINED_FUNCTION_5_2(v12))
    {
LABEL_20:
      v24 = 136315138;
      v25 = "[BWUBNode _setupProcessingStateWithSettings:]";
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_137_2();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_124();
    }

LABEL_24:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_15:
    [v3 drain];
    goto LABEL_16;
  }

  v4 = [v0 requestedSettings];
  v5 = [v0 captureSettings];
  [v4 captureRequestIdentifier];
  if ([OUTLINED_FUNCTION_4() isEqualToString:?])
  {
    goto LABEL_15;
  }

  if (dword_1EB58E340)
  {
    v6 = v5;
    OUTLINED_FUNCTION_35_13();
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(v7, v30))
    {
      v8 = v31;
    }

    else
    {
      v8 = v31 & 0xFFFFFFFE;
    }

    if (v8)
    {
      v24 = 136315394;
      v25 = "[BWUBNode _setupProcessingStateWithSettings:]";
      v26 = 2048;
      v27 = [v6 settingsID];
      OUTLINED_FUNCTION_137_2();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = v6;
  }

  v23 = 0;
  [v5 captureType];
  [BWUBNode _infoForCaptureType:v1 isSupportedCaptureTypeOut:? isFusionCaptureTypeOut:?];
  FigCaptureGetFrameworkRadarComponent();
  OUTLINED_FUNCTION_35_13();
  v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v13, v30);
  OUTLINED_FUNCTION_43_12();
  if (v1)
  {
    v24 = 136315394;
    v25 = "[BWUBNode _setupProcessingStateWithSettings:]";
    v26 = 2112;
    v27 = BWPhotoEncoderStringFromEncodingScheme([v5 captureType]);
    OUTLINED_FUNCTION_137_2();
    OUTLINED_FUNCTION_8_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_13_0();
  v28 = 138412290;
  v29 = BWPhotoEncoderStringFromEncodingScheme([v5 captureType]);
  OUTLINED_FUNCTION_43_0();
  v14 = OUTLINED_FUNCTION_6_0();
  v15 = OUTLINED_FUNCTION_3_19();
  FigCapturePleaseFileRadar(v15, v16, 0, 0, v17, 3556, v18, v19, 0);
  free(v14);
  [v3 drain];
LABEL_16:
  OUTLINED_FUNCTION_81();
}

- (void)_inferenceProcessRedEyeReductionSampleBuffer:(void *)a3 settings:(uint64_t)a4 portType:
{
  if (!a1)
  {
    return;
  }

  OUTLINED_FUNCTION_80();
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  cf = 0;
  dispatch_group_wait(*(v5 + 360), 0xFFFFFFFFFFFFFFFFLL);
  ImageBuffer = CMSampleBufferGetImageBuffer(v4);
  if (ImageBuffer)
  {
    v9 = ImageBuffer;
    v10 = [*(v5 + 368) newPixelBuffer];
    if (v10)
    {
      if (![(BWUBNode *)v5 _scaleInferenceInputForRedEyeReductionFromPixelBuffer:v9 outputPixelBuffer:v10]&& !BWCMSampleBufferCreateCopyWithNewPixelBuffer(v4, v10, (v5 + 400), &cf) && ![(BWUBNode *)v5 _setupProcessingStateForInferenceWithSettings:a3 portType:a4])
      {
        v11 = [*(v5 + 344) objectForKeyedSubscript:a4];
        if (v11)
        {
          v12 = v11;
          if (v4)
          {
            CFRetain(v4);
          }

          if (cf)
          {
            CFRetain(cf);
            v13 = cf;
          }

          else
          {
            v13 = 0;
          }

          v14 = *(v5 + 360);
          v15 = *(v5 + 352);
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __75__BWUBNode__inferenceProcessRedEyeReductionSampleBuffer_settings_portType___block_invoke;
          v16[3] = &unk_1E7991EF8;
          v16[4] = v12;
          v16[5] = v13;
          v16[6] = v4;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __ubn_dispatch_group_async_block_invoke;
          block[3] = &unk_1E798FEA0;
          block[4] = v16;
          dispatch_group_async(v14, v15, block);
          CVPixelBufferRelease(v10);
          if (cf)
          {
            CFRelease(cf);
          }

          return;
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  CVPixelBufferRelease(v10);
  if (cf)
  {
    CFRelease(cf);
  }

  [objc_msgSend(*(v5 + 440) objectForKeyedSubscript:{a4), "addFrame:faceObservations:", v4, 0}];
}

- (id)_ubRERRouter
{
  if (result)
  {
    OUTLINED_FUNCTION_7_1();
    v3 = 3221225472;
    v4 = __24__BWUBNode__ubRERRouter__block_invoke;
    v5 = &unk_1E79992C8;
    v6 = v1;
    return [v2 copy];
  }

  return result;
}

- (void)_handleClientBracketFrameEmissionForProcessorInput:(void *)a3 clientBracketFrame:
{
  if (a1)
  {
    [OUTLINED_FUNCTION_76_5(a1 a2)];
    [OUTLINED_FUNCTION_133() portType];
    v7 = OUTLINED_FUNCTION_70();
    [(BWUBNode *)v7 _handleClientBracketFrameEmissionForSampleBuffer:v8 stillImageSettings:v5 portType:v9];
    [v4 stillImageSettings];
    [OUTLINED_FUNCTION_18_0() portType];
    v10 = OUTLINED_FUNCTION_17();
    if (([BWUBNode _processingNeededForSettings:v10 portType:a3]& 1) == 0)
    {
      if ([v4 receivedAllFrames])
      {
        v11 = [v4 portType];
        v12 = *(v3 + 240);

        [(BWUBNode *)v3 _processorControllerDidFinishProcessingInputForPortType:v11 processorType:v12];
      }
    }
  }
}

- (void)_handleReferenceFrameEmissionForProcessorInput:(uint64_t)a1
{
  if (a1)
  {
    [OUTLINED_FUNCTION_76_5(a1 a2)];
    [OUTLINED_FUNCTION_18_0() portType];
    if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_25_0() "captureSettings")] & 0x20000) != 0 || v2[63])
    {
      v5 = v2[33];
      [v3 portType];
      if ([OUTLINED_FUNCTION_8() objectForKeyedSubscript:?])
      {
        v4 = 0;
        v6 = 0;
        v5 = 0;
      }

      else
      {
        [v3 referenceFrame];
        [OUTLINED_FUNCTION_18_0() evMinusReferenceFrame];
        v6 = [OUTLINED_FUNCTION_133() emitErrorRecoveryFrame] ? objc_msgSend(v3, "errorRecoveryFrame") : 0;
      }

      v7 = [v3 stillImageSettings];
      [v3 portType];
      v8 = OUTLINED_FUNCTION_17();
      [(BWUBNode *)v8 _handleReferenceFrameEmissionForSettings:v7 portType:v9 referenceFrame:v5 evMinusReferenceFrame:v4 errorRecoveryFrame:v6];
      [v3 stillImageSettings];
      [OUTLINED_FUNCTION_18_0() portType];
      v10 = OUTLINED_FUNCTION_17();
      if (([BWUBNode _processingNeededForSettings:v10 portType:v5]& 1) == 0)
      {
        if ([v3 receivedAllFrames])
        {
          [v3 portType];
          if ([OUTLINED_FUNCTION_8() objectForKeyedSubscript:?])
          {
            v11 = [v3 portType];
            v12 = v2[30];

            [(BWUBNode *)v2 _processorControllerDidFinishProcessingInputForPortType:v11 processorType:v12];
          }
        }
      }
    }
  }
}

- (uint64_t)_processingNeededForSettings:(uint64_t)a1 portType:(void *)a2
{
  if (a1)
  {
    if (*(a1 + 504))
    {
      v3 = 0;
    }

    else
    {
      v3 = ([objc_msgSend(a2 "captureSettings")] & 0x20800) == 2048;
    }

    [objc_msgSend(a2 "captureSettings")];
    v4 = ([OUTLINED_FUNCTION_4() isEqualToString:?] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(a2, "requestedSettings"), "bravoConstituentImageDeliveryDeviceTypes"), "count") != 0 || v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (uint64_t)_singleImageProcessSampleBuffer:(uint64_t)a1 settings:portType:
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_131_3();
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v4 = [[BWStillImageProcessingPlan alloc] initWithSettings:v2];
  v5 = objc_alloc(OUTLINED_FUNCTION_83_4());
  OUTLINED_FUNCTION_17_3();
  v7 = [v6 initWithSettings:? portType:?];
  v8 = OUTLINED_FUNCTION_70();
  v9 = [BWUBNode _isInferenceInputImageRequiredForSettings:v8];
  v10 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_33_1();
    v22 = 3221225472;
    OUTLINED_FUNCTION_31_14();
    v23 = v11;
    v24 = &unk_1E79992C8;
    v25 = v1;
    [v7 addOutputSampleBufferRouter:objc_msgSend(v21 forBufferTypes:{"copy"), &unk_1F2248E20}];
    [OUTLINED_FUNCTION_139_0() addInput:? sequenceNumber:? portType:? bufferType:?];
  }

  OUTLINED_FUNCTION_11_34();
  v22 = 3221225472;
  v23 = __53__BWUBNode__standardNROutputRouterWithExpectedQueue___block_invoke;
  v24 = &unk_1E7999390;
  v25 = v12;
  v26 = v1;
  [v7 addOutputSampleBufferRouter:objc_msgSend(v21 forBufferTypes:{"copy"), &unk_1F2248E38}];
  [v7 addFrame:v3];
  [OUTLINED_FUNCTION_139_0() addInput:? sequenceNumber:? portType:? bufferType:?];
  v13 = OUTLINED_FUNCTION_70();
  v14 = [BWUBNode _inferencesRequiredByProcessorControllersForSettings:v13];
  v15 = OUTLINED_FUNCTION_70();
  [BWUBNode _setupProcessingStateForJasperDisparityIfNeededWithSettings:v15 processingPlan:?];
  OUTLINED_FUNCTION_70();
  [BWUBNode _setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:queueProvidingInput:processingPlan:];
  if (!v16)
  {
    [*(v1 + 184) controllerForType:*(v1 + 240)];
    BYTE1(v20) = v14;
    LOBYTE(v20) = v10;
    OUTLINED_FUNCTION_72();
    v16 = [v17 enqueueInputForProcessing:v20 delegate:? processErrorRecoveryFrame:? processOriginalImage:? clientBracketSequenceNumber:? processSemanticRendering:? provideInferenceInputImageForProcessing:? inferencesAvailable:?];
  }

  v18 = v16;

  return v18;
}

- (void)_emitSampleBuffer:(uint64_t)a1 description:
{
  if (a1)
  {
    OUTLINED_FUNCTION_135_3();
    [(BWUBNode *)v2 _removeNonPropagatedAttachedMediaFromSampleBuffer:v3];
    if (v1)
    {
      CFRetain(v1);
    }

    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_30_7();
    OUTLINED_FUNCTION_8_40();
    OUTLINED_FUNCTION_140_0();
    dispatch_async(v4, v5);
  }
}

- (uint64_t)_setupProcessingStateIfNeededWithBeginMomentSettings:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_80();
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  if (!v2[23])
  {
    OUTLINED_FUNCTION_23_16();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v9 = OUTLINED_FUNCTION_155(os_log_and_send_and_compose_flags_and_os_log_type);
    if (OUTLINED_FUNCTION_5_2(v9))
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (([objc_msgSend(v1 "requestedSettings")] & 1) == 0)
  {
    OUTLINED_FUNCTION_23_16();
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v11 = OUTLINED_FUNCTION_155(v10);
    if (OUTLINED_FUNCTION_5_2(v11))
    {
LABEL_21:
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_124();
    }

LABEL_24:
    OUTLINED_FUNCTION_74_6();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294950488;
  }

  [v1 captureSettings];
  if (([OUTLINED_FUNCTION_4() processingOnBeginMomentSupportedForCaptureSettings:?] & 1) == 0)
  {
    OUTLINED_FUNCTION_23_16();
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v13 = os_log_type_enabled(v12, v14);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    goto LABEL_24;
  }

  [objc_msgSend(OUTLINED_FUNCTION_118_3() "requestedSettings")];
  if (([OUTLINED_FUNCTION_8() isEqualToString:?] & 1) == 0)
  {
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_23_16();
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v3, v14);
      OUTLINED_FUNCTION_115_0();
      if (v5)
      {
        v6 = v4;
      }

      else
      {
        v6 = v15;
      }

      if (v6)
      {
        [v1 settingsID];
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_11_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0();
    }

    [(BWUBNode *)v2 _resetProcessingState];
    v2[21] = [v1 settingsID];
    v2[22] = [objc_msgSend(v1 "requestedSettings")];
    v7 = OUTLINED_FUNCTION_44();
    [BWUBNode _flushBufferPoolsWhenPossibleWithSettings:v7];
    [(BWUBNode *)v2 _prepareSharedExternalMemoryResourceForProcessorControllersIfNeeded];
  }

  return 0;
}

- (uint64_t)processorController:(uint64_t)a3 newOutputPixelBufferForProcessorInput:(uint64_t)a4 type:dimensions:attachedMediaKey:
{
  if (!a1)
  {
    return 0;
  }

  mach_absolute_time();
  v6 = 0;
  switch([OUTLINED_FUNCTION_133() type])
  {
    case 1:
    case 6:
      v6 = 0;
      switch(a4)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 14:
          goto LABEL_6;
        case 8:
        case 10:
          v11 = 320;
          goto LABEL_22;
        case 9:
        case 11:
        case 12:
          v11 = 328;
          goto LABEL_22;
        case 15:
          goto LABEL_13;
        case 19:
          goto LABEL_15;
        case 21:
          goto LABEL_16;
        default:
          goto LABEL_24;
      }

      break;
    case 2:
      v6 = 0;
      switch(a4)
      {
        case 13:
LABEL_6:
          v9 = *(a1 + 232);
          if (!v9)
          {
            goto LABEL_11;
          }

          goto LABEL_19;
        case 15:
LABEL_13:
          v11 = 368;
LABEL_22:
          v9 = *(a1 + v11);
          if (!v9)
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        case 19:
          goto LABEL_15;
        case 21:
          goto LABEL_16;
        default:
          goto LABEL_24;
      }

      break;
    case 7:
      if (a4 == 21)
      {
LABEL_16:
        v7 = *(a1 + 16);
        v8 = @"DemosaicedRaw";
        goto LABEL_17;
      }

      if (a4 == 19)
      {
LABEL_15:
        v7 = *(a1 + 16);
        v8 = @"GainMap";
        goto LABEL_17;
      }

      if (a4 != 1)
      {
        goto LABEL_23;
      }

LABEL_11:
      v10 = [*(a1 + 16) primaryMediaProperties];
      goto LABEL_18;
    case 8:
    case 9:
    case 13:
      if (a4 == 2001)
      {
        v7 = *(a1 + 16);
        v8 = @"Depth";
LABEL_17:
        v10 = [v7 mediaPropertiesForAttachedMediaKey:v8];
LABEL_18:
        v9 = [v10 livePixelBufferPool];
        if (v9)
        {
          goto LABEL_19;
        }
      }

LABEL_23:
      v6 = 0;
      break;
    case 10:
      v9 = [objc_msgSend(*(a1 + 16) "primaryMediaProperties")];
LABEL_19:
      v6 = [v9 newPixelBuffer];
      break;
    default:
      break;
  }

LABEL_24:
  mach_absolute_time();
  FigHostTimeToNanoseconds();
  if (v6 && dword_1EB58E340)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v6;
}

- (void)_processorControllerDidFinishProcessingInputForPortType:(uint64_t)a3 processorType:
{
  if (a1)
  {
    OUTLINED_FUNCTION_80();
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    switch(a3)
    {
      case 1:
      case 6:
        v15 = [objc_msgSend(OUTLINED_FUNCTION_86_4(256) "objectForKeyedSubscript:"firstObject"")];
        if (!v15)
        {
          goto LABEL_31;
        }

        v16 = v15;
        if ([v15 remainingProcessingCount] <= 1)
        {
          [v16 setRemainingProcessingCount:0];
          [objc_msgSend(OUTLINED_FUNCTION_86_4(256) "objectForKeyedSubscript:{"removeObject:", v16}")];
          if (![objc_msgSend(OUTLINED_FUNCTION_86_4(256) "objectForKeyedSubscript:"count"")])
          {
            [OUTLINED_FUNCTION_111_4(256) setObject:? forKeyedSubscript:?];
          }

          if (dword_1EB58E340)
          {
            OUTLINED_FUNCTION_109_2();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v27);
            OUTLINED_FUNCTION_30();
            if (v4)
            {
              BWStillImageProcessorTypeToShortString(a3);
              [objc_msgSend(OUTLINED_FUNCTION_86_4(256) "objectForKeyedSubscript:"count"")];
              OUTLINED_FUNCTION_78();
              OUTLINED_FUNCTION_5();
              OUTLINED_FUNCTION_11_0();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_56_0();
          }

          goto LABEL_31;
        }

        OUTLINED_FUNCTION_90_3();

        [v23 setRemainingProcessingCount:?];
        break;
      case 2:
        v18 = 304;
        goto LABEL_33;
      case 3:
        v18 = 344;
        goto LABEL_33;
      case 4:
        v18 = 440;
        goto LABEL_33;
      case 5:
        v18 = 640;
        goto LABEL_33;
      case 7:
        if (![OUTLINED_FUNCTION_86_4(464) objectForKeyedSubscript:?])
        {
          goto LABEL_31;
        }

        v20 = [objc_msgSend(OUTLINED_FUNCTION_86_4(464) "objectForKeyedSubscript:"intValue"")];
        if (v20 > 1)
        {
          [MEMORY[0x1E696AD98] numberWithInt:(v20 - 1)];
        }

        else
        {
          [OUTLINED_FUNCTION_111_4(456) setObject:? forKeyedSubscript:?];
          v18 = 464;
LABEL_33:
          OUTLINED_FUNCTION_111_4(v18);
        }

        OUTLINED_FUNCTION_90_3();

        [v21 setObject:? forKeyedSubscript:?];
        return;
      case 8:
        --*(v3 + 520);

        v19 = 512;
        goto LABEL_30;
      case 9:
        v18 = 576;
        goto LABEL_33;
      case 10:
        v18 = 496;
        goto LABEL_33;
      case 11:
        v18 = 288;
        goto LABEL_33;
      case 12:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
        OUTLINED_FUNCTION_109_2();
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (os_log_type_enabled(v6, v27))
        {
          v7 = v28;
        }

        else
        {
          v7 = v28 & 0xFFFFFFFE;
        }

        if (v7)
        {
          BWStillImageProcessorTypeToShortString(a3);
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_13();
          OUTLINED_FUNCTION_124();
        }

        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_17_8();
        v25 = 138412290;
        v26 = BWStillImageProcessorTypeToShortString(a3);
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_52_11();
        FigCapturePleaseFileRadar(v8, v9, v10, v11, v12, 2490, v13, v14, &v25);
        free(&v25);
        goto LABEL_31;
      case 13:
        v18 = 592;
        goto LABEL_33;
      case 14:

        v19 = 608;
LABEL_30:
        *(v3 + v19) = 0;
        goto LABEL_31;
      default:
        goto LABEL_31;
    }
  }

  else
  {
LABEL_31:
    OUTLINED_FUNCTION_90_3();
  }
}

- (void)_removeNonPropagatedAttachedMediaFromSampleBuffer:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 504))
    {
      BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAB10);
    }

    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAE70);

    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAE90);
  }
}

- (void)_releaseNodeResourcesIfNeededBeforeEmittingSampleBuffer:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_80();
    if (!_FigIsNotCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if ([*(v2 + 144) deferredPhotoProcessorEnabled])
    {
      v3 = CMGetAttachment(v1, @"StillSettings", 0);
      if (v3)
      {
        if (([objc_msgSend(v3 "captureSettings")] & 0x100000000) != 0)
        {

          [(BWUBNode *)v2 _releaseResources];
        }
      }

      else
      {
        FigCaptureGetFrameworkRadarComponent();
        v18 = 0;
        v17 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_115_0();
        if (v6)
        {
          v7 = v5;
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          BWStillImageSampleBufferToShortDisplayString(v1);
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_11_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_13_0();
        v15 = 138412290;
        v16 = BWStillImageSampleBufferToShortDisplayString(v1);
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_52_11();
        FigCapturePleaseFileRadar(v8, v9, v10, v11, v12, 1648, v13, v14, &v15);
        free(v1);
      }
    }
  }
}

void __42__BWUBNode__emitSampleBuffer_description___block_invoke(uint64_t a1)
{
  if (dword_1EB58E340)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_43_12();
    if (v1)
    {
      BWStillImageSampleBufferToShortDisplayString(*(a1 + 48));
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_13_0();
  }

  [BWUBNode _releaseNodeResourcesIfNeededBeforeEmittingSampleBuffer:?];
  [*(*(a1 + 40) + 16) emitSampleBuffer:*(a1 + 48)];
  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }
}

- (void)_emitError:(void *)a3 processorInput:(uint64_t)a4 metadata:(uint64_t)a5 description:
{
  if (a1)
  {
    if (dword_1EB58E340)
    {
      v27 = 0;
      v26 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_97_0();
      if (v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        v19 = 136315651;
        v20 = "[BWUBNode _emitError:processorInput:metadata:description:]";
        v21 = 1024;
        v22 = a2;
        v23 = 2113;
        v24 = a5;
        LODWORD(v18) = 28;
        v17 = &v19;
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_128();
    }

    +[BWNodeError newError:sourceNode:stillImageSettings:metadata:](BWNodeError, "newError:sourceNode:stillImageSettings:metadata:", a2, a1, [a3 stillImageSettings], a4);
    OUTLINED_FUNCTION_11_34();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    OUTLINED_FUNCTION_63_10();
    block[2] = v14;
    block[3] = &unk_1E798FEA0;
    block[4] = v15;
    dispatch_async(v16, block);
  }
}

void __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = [*(*(a1 + 32) + 144) deferredPhotoProcessorEnabled];
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (v2)
    {
      [(BWUBNode *)v4 _emitError:v3 processorInput:v5 metadata:0 description:@"Deferred Deep Fusion"];
    }

    else
    {
      [(BWUBNode *)v4 _handleDeepFusionError:v3 processorInput:v5];
    }
  }

  [(BWUBNode *)*(a1 + 32) _processorControllerDidFinishProcessingInputForPortType:*(a1 + 56) processorType:?];
  v6 = *(a1 + 32);

  [(BWUBNode *)v6 _resetProcessingStateIfDone];
}

- (void)_handleDeepFusionError:(void *)a3 processorInput:
{
  if (a1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    [a3 portType];
    v5 = [objc_msgSend(OUTLINED_FUNCTION_7() "objectForKeyedSubscript:"firstObject"")];
    if (!v5)
    {
      v5 = [objc_alloc(OUTLINED_FUNCTION_83_4()) initWithSettings:objc_msgSend(a3 portType:{"stillImageSettings"), objc_msgSend(a3, "portType")}];
      [a3 stillImageSettings];
      if ([BWUBNode _isInferenceInputImageRequiredForSettings:a1])
      {
        OUTLINED_FUNCTION_25_16();
        v26 = 3221225472;
        OUTLINED_FUNCTION_31_14();
        v27 = v6;
        v28 = &unk_1E79992C8;
        v29 = a1;
        [v5 addOutputSampleBufferRouter:objc_msgSend(v25 forBufferTypes:{"copy"), &unk_1F2248E08}];
      }

      v7 = [MEMORY[0x1E695DF70] arrayWithObject:v5];
      [a3 portType];
      [OUTLINED_FUNCTION_121_1() setObject:v7 forKeyedSubscript:?];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = -[BWUBNode _bufferTypesForCaptureSettings:](a1, [a3 captureSettings]);
    OUTLINED_FUNCTION_47_0();
    v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [objc_msgSend(a3 outputSampleBufferRouterForBufferType:{objc_msgSend(v14, "intValue")), "outputSampleBufferRouter"}];
          v20 = v14;
          [v5 addOutputSampleBufferRouter:v15 forBufferTypes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v20, 1)}];
        }

        OUTLINED_FUNCTION_47_0();
        v11 = [v8 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v11);
    }

    v16 = a2;
    if (a2 && v5)
    {
      [v5 setRemainingProcessingCount:{objc_msgSend(v5, "remainingProcessingCount") + 1}];
      LOWORD(v18) = 0;
      v17 = [objc_msgSend(*(a1 + 184) controllerForType:{*(a1 + 240)), "enqueueInputForProcessing:delegate:processErrorRecoveryFrame:processOriginalImage:clientBracketSequenceNumber:processSemanticRendering:provideInferenceInputImageForProcessing:inferencesAvailable:", v5, a1, 1, 0, 0, 0, v18}];
      if (v17)
      {
        v16 = v17;
        -[BWUBNode _processorControllerDidFinishProcessingInputForPortType:processorType:](a1, [v5 portType], *(a1 + 240));
LABEL_21:
        -[BWUBNode _emitError:processorInput:metadata:description:](a1, v16, a3, 0, [a3 description]);
      }
    }

    else if (a2)
    {
      goto LABEL_21;
    }
  }
}

void __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_86_3(a1);
  [(BWUBNode *)v2 _processorControllerDidFinishProcessingInputForPortType:v1[6] processorType:?];
  v3 = v1[4];

  [(BWUBNode *)v3 _resetProcessingStateIfDone];
}

void __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_7(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_86_3(a1);
  [(BWUBNode *)v2 _processorControllerDidFinishProcessingInputForPortType:v1[6] processorType:?];
  v3 = v1[4];

  [(BWUBNode *)v3 _resetProcessingStateIfDone];
}

- (uint64_t)_waitForInferenceIfNeededForProcessorInput:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [a2 stillImageSettings];
    v4 = [BWUBNode _isSemanticRenderingCapture:v3];
    [a2 stillImageSettings];
    v5 = [BWUBNode _provideInferenceAttachedMediaWithSettings:v3];
    result = 0;
    if (*(v3 + 360))
    {
      if (v4 | v5)
      {
        dispatch_group_wait(*(v3 + 360), 0xFFFFFFFFFFFFFFFFLL);
        return 1;
      }
    }
  }

  return result;
}

- (void)_inferenceAttachedMediaRequiredForDemosaicedRawCaptureWithInferenceOutputSampleBuffer:(uint64_t)a3 stillImageSettings:(uint64_t)a4
{
  OUTLINED_FUNCTION_58_2();
  v30 = v29;
  if (v29)
  {
    v31 = v27;
    if ([objc_msgSend(v28 "processingSettings")])
    {
      if ([BWUBNode _isSemanticRenderingCapture:v30])
      {
        v32 = [(BWUBNodeConfiguration *)*(v30 + 144) inferenceMainImageDownscalingFactor];
        if (*&v32 != 0.0)
        {
          v33 = [-[BWUBNodeConfiguration providedInferenceAttachedMediaByMode](*(v30 + 144)) objectForKeyedSubscript:&unk_1F22450B8];
          if ([v33 count])
          {
            v34 = [MEMORY[0x1E695DF70] arrayWithArray:v33];
            OUTLINED_FUNCTION_7_42();
            OUTLINED_FUNCTION_43();
            v39 = OUTLINED_FUNCTION_64(v35, v36, v37, v38);
            if (v39)
            {
              v40 = v39;
              v41 = *a27;
              do
              {
                for (i = 0; i != v40; ++i)
                {
                  if (*a27 != v41)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v43 = *(a26 + 8 * i);
                  v44 = [BWInferenceGetAttachedInference(v31 201];
                  if (v44 && ([v44 BOOLValue] & 1) == 0)
                  {
                    [v34 removeObject:v43];
                  }
                }

                OUTLINED_FUNCTION_43();
                v40 = OUTLINED_FUNCTION_64(v45, v46, v47, v48);
              }

              while (v40);
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_56();
}

- (void)processorController:(id)a3 willAddBuffer:(__CVBuffer *)a4 metadata:(id)a5 bufferType:(unint64_t)a6 processorInput:(id)a7
{
  if (a5 && a3 && a4 && a7 && [a3 type] == 2 && -[BWUBNodeConfiguration deepZoomVersion](self->_nodeConfiguration) >= 1 && a6 <= 0x1B && ((1 << a6) & 0x9C00000) != 0)
  {
    v14 = *(MEMORY[0x1E695F050] + 16);
    v18.origin = *MEMORY[0x1E695F050];
    v18.size = v14;
    v17.origin = v18.origin;
    v17.size = v14;
    [(BWUBNodeConfiguration *)self->_nodeConfiguration sensorConfigurationsByPortType];
    [OUTLINED_FUNCTION_133() portType];
    [OUTLINED_FUNCTION_7() objectForKeyedSubscript:?];
    v15 = OUTLINED_FUNCTION_25_0();
    Width = CVPixelBufferGetWidth(v15);
    if (+[BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForType:sensorConfiguration:dimensions:metadata:stillImageSettings:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:](BWDeepZoomProcessorControllerConfiguration, "doDeepZoomStandardOrLiteForType:sensorConfiguration:dimensions:metadata:stillImageSettings:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:", 1, self, Width | (CVPixelBufferGetHeight(a4) << 32), a5, [a7 stillImageSettings], &v18, &v17))
    {
      if (!CGRectIsNull(v18) && !CGRectIsNull(v17))
      {
        FigCFDictionarySetCGRect();
        FigCFDictionarySetCGRect();
      }
    }
  }
}

- (id)processorController:(id)a3 newInferencesForProcessorInput:(id)a4 inferenceInputBufferType:(unint64_t)a5
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__28;
  v14 = __Block_byref_object_dispose__28;
  v15 = 0;
  if (a5 == 15)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    OUTLINED_FUNCTION_14_27();
    block[2] = v5;
    block[3] = &unk_1E798FEA0;
    block[4] = v6;
    dispatch_sync(v7, block);
    v8 = v11[5];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v8;
}

- (void)processorController:(id)a3 didSelectLowLightReferenceFrame:(opaqueCMSampleBuffer *)a4 processorInput:(id)a5
{
  v7 = v6;
  IsCurrentDispatchQueue = _FigIsCurrentDispatchQueue();
  if (!IsCurrentDispatchQueue)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    IsCurrentDispatchQueue = FigDebugAssert3();
  }

  v11 = OUTLINED_FUNCTION_158(IsCurrentDispatchQueue, *off_1E798A3C8);
  memset(&v22, 0, sizeof(v22));
  CMTimeMakeFromDictionary(&v22, [v11 objectForKeyedSubscript:*off_1E798A420]);
  [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B2A8), "doubleValue"}];
  v13 = v12;
  if (dword_1EB58E340)
  {
    v21 = 0;
    v20 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v7 = 0;
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_4_0();
    if (v5)
    {
      OUTLINED_FUNCTION_73_4();
      CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_5_0();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (([objc_msgSend(a5 "captureSettings")] & 0x200) != 0)
  {
    [OUTLINED_FUNCTION_118_3() portType];
    [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
    OUTLINED_FUNCTION_73_4();
    [v15 setColorBufferPTS:&time exposureTime:v13];
    [OUTLINED_FUNCTION_118_3() portType];
    [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
    OUTLINED_FUNCTION_73_4();
    [v16 setColorBufferPTS:&time exposureTime:v13];
  }

  [a5 stillImageSettings];
  [a5 portType];
  if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_25_0() "captureSettings")] & 0x20000) != 0 || self->_stereoDisparityProcessorControllerConfiguration)
  {
    v17 = OUTLINED_FUNCTION_44();
    [(BWUBNode *)v17 _handleReferenceFrameEmissionForProcessorInput:v18];
  }
}

- (void)processorController:(id)a3 didFinishProcessingBuffer:(__CVBuffer *)a4 metadata:(id)a5 type:(unint64_t)a6 captureFrameFlags:(unint64_t)a7 processorInput:(id)a8 err:(int)a9
{
  OUTLINED_FUNCTION_84();
  v56 = v9;
  v11 = v10;
  cf = v12;
  v59 = v13;
  v57 = v14;
  v16 = v15;
  v18 = v17;
  if (dword_1EB58E340)
  {
    OUTLINED_FUNCTION_81_2();
    OUTLINED_FUNCTION_68_4();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v84))
    {
      v20 = v85;
    }

    else
    {
      v20 = v85 & 0xFFFFFFFE;
    }

    if (v20)
    {
      BWStillImageBufferTypeToShortString(v59);
      BWStillImageProcessorTypeToShortString([v16 type]);
      v70 = 136316162;
      OUTLINED_FUNCTION_132_3("[BWUBNode processorController:didFinishProcessingBuffer:metadata:type:captureFrameFlags:processorInput:err:]");
      v74 = v21;
      v75 = v11;
      v76 = v21;
      v77 = v22;
      v78 = 1024;
      v79 = v86;
      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v86)
  {
    OUTLINED_FUNCTION_19_21();
    FigDebugAssert3();
    goto LABEL_28;
  }

  if (([objc_msgSend(objc_msgSend(v11 "settings")] & 1) == 0)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    OUTLINED_FUNCTION_81_2();
    OUTLINED_FUNCTION_68_4();
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v23, v84);
    OUTLINED_FUNCTION_115_0();
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = v85;
    }

    if (v26)
    {
      [objc_msgSend(v11 "settings")];
      v70 = 136315650;
      v27 = v18;
      OUTLINED_FUNCTION_132_3("[BWUBNode processorController:didFinishProcessingBuffer:metadata:type:captureFrameFlags:processorInput:err:]");
      v74 = v28;
      v75 = v29;
      OUTLINED_FUNCTION_29_12();
      OUTLINED_FUNCTION_11_0();
      _os_log_send_and_compose_impl();
    }

    else
    {
      v27 = v18;
    }

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_13_0();
    v30 = *(v27 + 176);
    v31 = [objc_msgSend(v11 "settings")];
    v80 = 138412546;
    v81 = v30;
    v82 = 2112;
    v83 = v31;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_51_12();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, &v80, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWUBNode.m", 2089, @"LastShownDate:BWUBNode.m:2089", @"LastShownBuild:BWUBNode.m:2089", &v80);
    free(&v80);
    v18 = v27;
  }

  if ([objc_msgSend(v11 "captureSettings")] != 12 && (objc_msgSend(objc_msgSend(v11, "captureSettings"), "captureFlags") & 0x80) == 0)
  {
    FigCaptureGetFrameworkRadarComponent();
    OUTLINED_FUNCTION_81_2();
    OUTLINED_FUNCTION_68_4();
    v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v52 = v85;
    os_log_type_enabled(v51, v84);
    OUTLINED_FUNCTION_115_0();
    if (v25)
    {
      v54 = v53;
    }

    else
    {
      v54 = v52;
    }

    if (v54)
    {
      v70 = 136315394;
      v71 = "[BWUBNode processorController:didFinishProcessingBuffer:metadata:type:captureFrameFlags:processorInput:err:]";
      v72 = 2112;
      v73 = v11;
      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_5_0();
    }

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_13_0();
    v80 = 138412290;
    v81 = v11;
    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_52_11();
    v44 = 2092;
    goto LABEL_27;
  }

  v32 = [v16 type];
  if (v32 <= 0x13)
  {
    if (((1 << v32) & 0xFFF9C) != 0)
    {
      OUTLINED_FUNCTION_81_2();
      OUTLINED_FUNCTION_68_4();
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v34 = v85;
      if (os_log_type_enabled(v33, v84))
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 & 0xFFFFFFFE;
      }

      if (v35)
      {
        v70 = 136315394;
        v71 = "[BWUBNode processorController:didFinishProcessingBuffer:metadata:type:captureFrameFlags:processorInput:err:]";
        v72 = 2112;
        v73 = BWStillImageProcessorTypeToShortString([v16 type]);
        OUTLINED_FUNCTION_76();
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_124();
      }

      v11 = &v80;
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_17_8();
      v36 = BWStillImageProcessorTypeToShortString([v16 type]);
      v80 = 138412290;
      v81 = v36;
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_11();
      v44 = 2178;
LABEL_27:
      FigCapturePleaseFileRadar(v37, v38, v39, v40, v41, v44, v42, v43, &v80);
      free(v11);
      goto LABEL_28;
    }

    if (((1 << v32) & 0x42) != 0)
    {
      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      if ([objc_msgSend(v11 "captureSettings")])
      {
        if (v59 == 8)
        {
          [*(v18 + 608) addDictionary:CMGetAttachment(objc_msgSend(v11 tag:{"referenceFrame"), *off_1E798A3C8, 0), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@-%@", BWDeferredIntermediateTagReferenceFrameMetadataByPortTypePrefix, objc_msgSend(v11, "portType"))}];
        }

        if (cf)
        {
          v45 = *(v18 + 608);
          if (v45)
          {
            [v45 addBuffer:cf bufferType:v59 captureFrameFlags:0 metadata:v57 rawThumbnailsBuffer:0 rawThumbnailsMetadata:0];
          }
        }

        goto LABEL_28;
      }

      if ([objc_msgSend(v11 "captureSettings")] != 12)
      {
        goto LABEL_28;
      }

      [OUTLINED_FUNCTION_118_3() portType];
      v50 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
      if (cf)
      {
        CFRetain(cf);
      }

      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __109__BWUBNode_processorController_didFinishProcessingBuffer_metadata_type_captureFrameFlags_processorInput_err___block_invoke;
      v69[3] = &unk_1E79974B8;
      v69[4] = v11;
      v69[5] = v50;
      v69[6] = v57;
      v69[7] = v59;
      v69[8] = cf;
      v69[9] = v56;
      v47 = v69;
      v48 = v18;
      v49 = 1;
LABEL_49:
      [(BWUBNode *)v48 _deepFusionDispatch:v49 direction:v47 block:?];
      goto LABEL_28;
    }

    if (v32 == 5)
    {
      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      if ([objc_msgSend(v11 "captureSettings")] == 12)
      {
        [OUTLINED_FUNCTION_118_3() portType];
        v46 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
        if (cf)
        {
          CFRetain(cf);
        }

        OUTLINED_FUNCTION_62_7();
        v61 = 3221225472;
        v62 = __109__BWUBNode_processorController_didFinishProcessingBuffer_metadata_type_captureFrameFlags_processorInput_err___block_invoke_2;
        v63 = &unk_1E7997200;
        v64 = v46;
        v65 = v57;
        v66 = cf;
        v67 = v59;
        v68 = v56;
        v47 = &v60;
        v48 = v18;
        v49 = 2;
        goto LABEL_49;
      }
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_81();
}

id __123__BWUBNode_adaptiveBracketingParametersForDigitalFlashMode_frameStatistics_stationary_sphereOffsetEnabled_detectedObjects___block_invoke(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_86_3(a1);
  [(BWUBNode *)v2 _setupProcessorCoordinator];
  result = [objc_msgSend(*(*(v1 + 32) + 184) controllerForType:{*(*(v1 + 32) + 240)), "adaptiveBracketingParametersForDigitalFlashMode:frameStatistics:stationary:sphereOffsetEnabled:detectedObjects:", *(v1 + 64), *(v1 + 40), *(v1 + 68), *(v1 + 69), *(v1 + 48)}];
  *(*(*(v1 + 56) + 8) + 40) = result;
  return result;
}

id __88__BWUBNode_adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType_wait___block_invoke(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_86_3(a1);
  [(BWUBNode *)v2 _setupProcessorCoordinator];
  result = [objc_msgSend(*(v1[4] + 184) controllerForType:{*(v1[4] + 240)), "adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:", v1[5]}];
  *(*(v1[6] + 8) + 40) = result;
  return result;
}

- (uint64_t)_inferenceOutputPixelBufferPoolForAttachedMediaKey:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = a2 == @"DeepZoomOutput" ? @"PrimaryFormat" : a2;
    v4 = [*(result + 16) mediaPropertiesForAttachedMediaKey:v3];
    result = [v4 livePixelBufferPool];
    if (!result)
    {
      result = [v4 preparedPixelBufferPool];
      if (!result)
      {
        v5 = *(v2 + 376);

        return [v5 objectForKeyedSubscript:v3];
      }
    }
  }

  return result;
}

- (void)_dispatch:(int)a3 direction:(NSObject *)a4 processingQueue:(uint64_t)a5 block:
{
  if (a1)
  {
    v8 = *(a1 + 192);
    if ((a3 - 1) >= 2)
    {
      if (a3 != 3)
      {
        return;
      }

      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      if (v8 != a4)
      {
        if (a2 != 2)
        {
          if (a2 != 1)
          {
            return;
          }

          OUTLINED_FUNCTION_8_7();
          OUTLINED_FUNCTION_15_26();
          OUTLINED_FUNCTION_94_3();
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_8_7();
        OUTLINED_FUNCTION_9_40();
        OUTLINED_FUNCTION_94_3();
        goto LABEL_27;
      }
    }

    else
    {
      if (v8 != a4)
      {
        if (a2 != 2)
        {
          if (a2 != 1)
          {
            return;
          }

          OUTLINED_FUNCTION_8_7();
          OUTLINED_FUNCTION_15_26();
          OUTLINED_FUNCTION_94_3();
          v10 = a4;
LABEL_24:
          dispatch_sync(v10, v9);
          return;
        }

        OUTLINED_FUNCTION_8_7();
        OUTLINED_FUNCTION_9_40();
        OUTLINED_FUNCTION_94_3();
        v13 = a4;
        goto LABEL_27;
      }

      if (a3 != 1)
      {
        if (a2 != 2)
        {
          if (a2 != 1)
          {
            return;
          }

          OUTLINED_FUNCTION_8_7();
          OUTLINED_FUNCTION_15_26();
          OUTLINED_FUNCTION_94_3();
          v10 = v8;
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_8_7();
        OUTLINED_FUNCTION_9_40();
        OUTLINED_FUNCTION_94_3();
        v13 = v8;
LABEL_27:
        dispatch_async(v13, v12);
        return;
      }

      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }
    }

    v11 = *(a5 + 16);

    v11(a5);
  }
}

- (uint64_t)_nrProcessorInputNeededForSettings:(uint64_t)a3 portType:
{
  if (!a1 || ![objc_msgSend(objc_msgSend(a2 "captureSettings")])
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_86_4(152);

  return [v3 containsObject:?];
}

- (void)_handleClientBracketFrameEmissionForSampleBuffer:(void *)a3 stillImageSettings:(uint64_t)a4 portType:
{
  if (a1)
  {
    v6 = [objc_msgSend(objc_msgSend(a3 "captureSettings")];
    if ((v6 & 0x20000) != 0 || *(a1 + 504))
    {
      v7 = OUTLINED_FUNCTION_7_24(v6, *off_1E798A3C8);
      v8 = [v7 objectForKeyedSubscript:*off_1E798B1B8];
      if (![objc_msgSend(OUTLINED_FUNCTION_89_4(536) "objectForKeyedSubscript:{"objectForKeyedSubscript:", v8}")])
      {
        [objc_msgSend(OUTLINED_FUNCTION_89_4(536) "objectForKeyedSubscript:{"setObject:forKeyedSubscript:", objc_msgSend(v7, "objectForKeyedSubscript:", *off_1E798B708), v8}")];
        v9 = OUTLINED_FUNCTION_70();
        if ([(BWUBNode *)v9 _generateDisparityForSettings:v10])
        {
          [*(a1 + 544) objectForKeyedSubscript:v8];
          sampleBufferOut[0] = 0;
          if (!BWCMSampleBufferCreateCopyIncludingMetadata(a2, sampleBufferOut))
          {
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_30_7();
            sampleBufferOut[1] = v11;
            sampleBufferOut[2] = v12;
            OUTLINED_FUNCTION_8_40();
            sampleBufferOut[3] = v13;
            sampleBufferOut[4] = &unk_1E798FEA0;
            OUTLINED_FUNCTION_140_0();
            dispatch_async(v14, v15);
          }
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"reference"];
          v16 = OUTLINED_FUNCTION_3_19();

          [BWUBNode _emitSampleBuffer:v16 description:?];
        }
      }
    }
  }
}

- (BOOL)_generateDisparityForSettings:(_BOOL8)result
{
  if (result)
  {
    if (*(result + 504))
    {
      return ([objc_msgSend(a2 "captureSettings")] & 0x800) != 0 && (objc_msgSend(objc_msgSend(a2, "captureSettings"), "captureFlags") & 0x200) == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_handleReferenceFrameEmissionForSampleBuffer:(uint64_t)a1 stillImageSettings:portType:
{
  if (a1)
  {
    OUTLINED_FUNCTION_131_3();
    cf = 0;
    v6 = [*(v4 + 264) objectForKeyedSubscript:v5];
    if (v3)
    {
      if (!v6)
      {
        [*(v1 + 264) setObject:objc_msgSend(CMGetAttachment(v3 forKeyedSubscript:{*off_1E798A3C8, 0), "objectForKeyedSubscript:", *off_1E798B708), v2}];
        if (!BWCMSampleBufferCreateCopyIncludingMetadata(v3, &cf))
        {
          v7 = OUTLINED_FUNCTION_70();
          if ([(BWUBNode *)v7 _generateDisparityForSettings:v8])
          {
            if (cf)
            {
              CFRetain(cf);
            }

            OUTLINED_FUNCTION_11_34();
            OUTLINED_FUNCTION_62_7();
            v16 = v9;
            OUTLINED_FUNCTION_9_40();
            v17 = v10;
            v18 = &unk_1E798FEA0;
            v19 = v11;
            dispatch_async(v12, block);
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"reference frame for '%@'", v2];
            v13 = OUTLINED_FUNCTION_17();
            [BWUBNode _emitSampleBuffer:v13 description:?];
          }
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (void)_handleReferenceFrameEmissionForSettings:(uint64_t)a3 portType:(const void *)a4 referenceFrame:(const void *)a5 evMinusReferenceFrame:(uint64_t)a6 errorRecoveryFrame:
{
  if (a1 && (([objc_msgSend(objc_msgSend(a2 "captureSettings")] & 0x20000) != 0 || *(a1 + 504)))
  {
    v11 = [a2 captureSettings];
    if (a6)
    {
      [v11 deliverOriginalImage];
    }

    else if (([v11 captureFlags] & 0x101000) != 0 && objc_msgSend(objc_msgSend(*(a1 + 272), "objectForKeyedSubscript:", *(a1 + 176)), "intValue") == 2)
    {
      if (a4)
      {
        v12 = *off_1E798A3C8;
        v13 = CMGetAttachment(a4, *off_1E798A3C8, 0);
        if (a5)
        {
          v14 = v13;
          CMGetAttachment(a5, v12, 0);
          [v14 objectForKeyedSubscript:*off_1E798B708];
          [OUTLINED_FUNCTION_36() setObject:? forKeyedSubscript:?];
          AttachedMedia = BWSampleBufferGetAttachedMedia(a5, 0x1F21AAB10);
          if (AttachedMedia)
          {
            [CMGetAttachment(AttachedMedia v12];
          }
        }
      }
    }

    [BWUBNode _handleReferenceFrameEmissionForSampleBuffer:a1 stillImageSettings:? portType:?];
  }
}

- (uint64_t)_isInferenceInputImageRequiredForSettings:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    v4 = [BWUBNode _inferencesRequiredByProcessorControllersForSettings:v3];
    v5 = OUTLINED_FUNCTION_44();
    result = [BWUBNode _provideInferenceAttachedMediaWithSettings:v5];
    if ((v4 & 1) != 0 || result)
    {
      return !*(v2 + 432) || ([objc_msgSend(v1 "captureSettings")] & 0x10000) == 0;
    }
  }

  return result;
}

- (id)_ubInferenceInputRouter
{
  if (result)
  {
    OUTLINED_FUNCTION_7_1();
    v4 = 3221225472;
    OUTLINED_FUNCTION_31_14();
    v5 = v1;
    v6 = &unk_1E79992C8;
    v7 = v2;
    return [v3 copy];
  }

  return result;
}

- (id)_bufferTypesForCaptureSettings:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  switch([a2 captureType])
  {
    case 0u:
    case 3u:
    case 4u:
    case 5u:
    case 0xDu:
      v3 = MEMORY[0x1E695E0F0];
      break;
    case 1u:
      v3 = &unk_1F2248EF8;
      break;
    case 2u:
    case 6u:
    case 7u:
      v3 = &unk_1F2248F10;
      break;
    case 0xAu:
      v3 = &unk_1F2248F28;
      break;
    case 0xBu:
      v3 = &unk_1F2248F40;
      break;
    case 0xCu:
      if ([a2 deliverDeferredPhotoProxyImage])
      {
        v3 = &unk_1F2248F58;
      }

      else
      {
        v3 = &unk_1F2248F70;
      }

      break;
    default:
      break;
  }

  if (![a2 deliverOriginalImage])
  {
    return v3;
  }

  v4 = [MEMORY[0x1E695DF70] arrayWithArray:v3];
  [v4 addObject:&unk_1F2245208];
  v5 = [v4 copy];

  return v5;
}

- (id)_standardNROutputRouterWithExpectedQueue:(id)result
{
  if (result)
  {
    OUTLINED_FUNCTION_33_0();
    v3[1] = 3221225472;
    v3[2] = __53__BWUBNode__standardNROutputRouterWithExpectedQueue___block_invoke;
    v3[3] = &unk_1E7999390;
    v3[4] = v2;
    v3[5] = v1;
    return [v3 copy];
  }

  return result;
}

- (uint64_t)_inferencesRequiredByProcessorControllersForSettings:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_80();
    v4 = [BWUBNode _isSemanticRenderingCapture:v3];
    if (*(v2 + 432))
    {
      v5 = ([objc_msgSend(v1 "captureSettings")] >> 16) & 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    v6 = OUTLINED_FUNCTION_44();
    v8 = v4 | v5 | [(BWUBNode *)v6 _isSemanticStylesCaptureNeedingInferencesWithSettings:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (uint64_t)_setupProcessingStateForJasperDisparityIfNeededWithSettings:(uint64_t)a1 processingPlan:
{
  if (a1)
  {
    OUTLINED_FUNCTION_84();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (([objc_msgSend(v4 "captureSettings")] & 0x200) != 0)
    {
      v7 = [*(v6 + 184) controllerForType:13];
      if (v7)
      {
        v8 = v7;
        v54 = -[BWUBNode _bufferTypesForCaptureSettings:](v6, [v4 captureSettings]);
        OUTLINED_FUNCTION_25_16();
        v103[1] = 3221225472;
        v103[2] = __87__BWUBNode__setupProcessingStateForJasperDisparityIfNeededWithSettings_processingPlan___block_invoke;
        v103[3] = &unk_1E7999390;
        v46 = v8;
        v47 = v6;
        v103[4] = v6;
        v103[5] = v8;
        v52 = [MEMORY[0x1E695DF70] array];
        obj = [objc_msgSend(v4 captureSettings];
        v51 = [obj countByEnumeratingWithState:v102 objects:v101 count:16];
        if (v51)
        {
          OUTLINED_FUNCTION_87_3();
          v49 = v9;
          v50 = v4;
          do
          {
            v10 = 0;
            do
            {
              OUTLINED_FUNCTION_87_3();
              if (v11 != v49)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(v102[1] + 8 * v10);
              v13 = [[BWJasperDisparityProcessorInput alloc] initWithSettings:v4 portType:v12];
              v97 = 0u;
              v98 = 0u;
              v99 = 0u;
              v100 = 0u;
              v21 = OUTLINED_FUNCTION_150(v13, v14, v15, v16, v17, v18, v19, v20, v43, v44, v45, v46, v47, obj, v49, v50, v51, v52, v10, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, 0);
              if (v21)
              {
                v22 = v21;
                do
                {
                  for (i = 0; i != v22; ++i)
                  {
                    OUTLINED_FUNCTION_49_7();
                    if (!v24)
                    {
                      objc_enumerationMutation(v54);
                    }

                    v25 = *(*(&v97 + 1) + 8 * i);
                    v26 = [v25 intValue];
                    v80 = v25;
                    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
                    v28 = [v2 lastAddedInputForSequenceNumber:0 portType:v12 bufferType:v26];
                    if (v28)
                    {
                      v36 = v28;
                      [objc_msgSend(v28 outputSampleBufferRouterForBufferType:{v26), "outputSampleBufferRouter"}];
                      [OUTLINED_FUNCTION_47() addOutputSampleBufferRouter:? forBufferTypes:?];
                      OUTLINED_FUNCTION_104_3();
                      [v37 addInput:? sequenceNumber:? portType:? bufferType:?];
                      v28 = [v36 addOutputSampleBufferRouter:v103 forBufferTypes:v27];
                    }
                  }

                  v22 = OUTLINED_FUNCTION_150(v28, v29, v30, v31, v32, v33, v34, v35, v43, v44, v45, v46, v47, obj, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
                }

                while (v22);
              }

              v4 = v50;
              if ([v12 isEqualToString:{objc_msgSend(objc_msgSend(v50, "captureSettings"), "masterPortType")}])
              {
                [v52 insertObject:v13 atIndex:0];
              }

              else
              {
                [v52 addObject:v13];
              }

              v10 = v53 + 1;
            }

            while (v53 + 1 != v51);
            v51 = [obj countByEnumeratingWithState:v102 objects:v101 count:16];
          }

          while (v51);
        }

        OUTLINED_FUNCTION_98_5();
        v38 = [v52 countByEnumeratingWithState:? objects:? count:?];
        if (v38)
        {
          v39 = v38;
          do
          {
            for (j = 0; j != v39; ++j)
            {
              OUTLINED_FUNCTION_49_7();
              if (!v24)
              {
                objc_enumerationMutation(v52);
              }

              v41 = *(8 * j);
              [v46 enqueueInputForProcessing:v41 delegate:v47];
              [*(v47 + 592) setObject:v41 forKeyedSubscript:{objc_msgSend(v41, "portType")}];
            }

            OUTLINED_FUNCTION_98_5();
            v39 = [v52 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v39);
        }
      }
    }

    OUTLINED_FUNCTION_81();
  }

  return 0;
}

- (void)_setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:queueProvidingInput:processingPlan:
{
  OUTLINED_FUNCTION_84();
  if (!v0)
  {
    goto LABEL_57;
  }

  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = v0;
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  if (!v9[56])
  {
    v64 = 0;
    LODWORD(v13) = 0;
    goto LABEL_45;
  }

  v10 = [v9[23] controllerForType:7];
  if ([objc_msgSend(v8 "processingSettings")])
  {
    v11 = [v9 idcSupportedForCaptureType:objc_msgSend(objc_msgSend(v8 captureFlags:"captureSettings") portType:{"captureType"), 0, v6}];
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_msgSend(v9[56] "portTypesWithGeometricDistortionCorrectionEnabled")];
  v13 = v12;
  HIDWORD(v84) = v12;
  if ((v11 & 1) == 0 && !v12)
  {
    goto LABEL_39;
  }

  LODWORD(v84) = v11;
  [v8 captureSettings];
  v14 = OUTLINED_FUNCTION_26_13();
  [BWUBNode _bufferTypesExcludingErrorRecoveryTypesForCaptureSettings:v14];
  v15 = [OUTLINED_FUNCTION_8() arrayWithArray:?];
  [(BWUBNode *)v9 _errorRecoveryBufferTypesForBufferTypes:v15, v16, v17, v18, v19, v20, v21, v69, v72, v75, v78, v80, v10, v84, v86, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115];
  v23 = v22;
  if (v13)
  {
    [v15 addObjectsFromArray:v22];
  }

  OUTLINED_FUNCTION_26_14();
  v174[1] = 3221225472;
  v174[2] = __147__BWUBNode__setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings_sequenceNumber_portType_queueProvidingInput_processingPlan___block_invoke;
  v174[3] = &unk_1E7999368;
  v174[4] = v9;
  v174[5] = v6;
  v174[6] = v23;
  if ([objc_msgSend(v8 "captureSettings")] == 7 && objc_msgSend(v9[57], "objectForKeyedSubscript:", v6))
  {
    [v9[57] objectForKeyedSubscript:v6];
    v24 = [objc_msgSend(v9[58] objectForKeyedSubscript:{v6), "intValue"}];
    OUTLINED_FUNCTION_159([MEMORY[0x1E696AD98] numberWithInt:(v24 + 1)], 464);
  }

  else
  {
    v25 = [[BWIntelligentDistortionCorrectionProcessorInput alloc] initWithSettings:v8 portType:v6];
    [(BWIntelligentDistortionCorrectionProcessorInput *)v25 setProcessIntelligentDistortionCorrection:v85];
    [(BWIntelligentDistortionCorrectionProcessorInput *)v25 setProcessGeometricDistortionCorrection:v13];
    v26 = [(BWIntelligentDistortionCorrectionProcessorInput *)v25 setApplyZoom:1];
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v34 = OUTLINED_FUNCTION_151(v26, v27, v28, v29, v30, v31, v32, v33, v70, v73, v76, v9, v8, v82, v85, v25, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169);
    if (v34)
    {
      v35 = v34;
      v36 = *v171;
      do
      {
        v37 = 0;
        do
        {
          OUTLINED_FUNCTION_87_3();
          if (v38 != v36)
          {
            objc_enumerationMutation(v15);
          }

          v39 = [*(*(&v170 + 1) + 8 * v37) intValue];
          v40 = [v5 lastAddedInputForSequenceNumber:v7 portType:v6 bufferType:v39];
          if (v40)
          {
            if (!ubn_insertOutputRouterForInputAfterPreviousInputForBufferType(v174, v87, v40, v39))
            {
              v64 = -12780;
              v8 = v81;
              LOBYTE(v11) = v85;
              LODWORD(v13) = HIDWORD(v85);
              goto LABEL_40;
            }

            v40 = [v5 addInput:v87 sequenceNumber:v7 portType:v6 bufferType:v39];
          }

          ++v37;
        }

        while (v35 != v37);
        v48 = OUTLINED_FUNCTION_151(v40, v41, v42, v43, v44, v45, v46, v47, v71, v74, v77, v79, v81, v83, v85, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169);
        v35 = v48;
      }

      while (v48);
    }

    if ((v85 & 0x100000000) == 0)
    {
      OUTLINED_FUNCTION_116_3();
      v53 = OUTLINED_FUNCTION_13_15(v49, v50, v51, v52);
      if (v53)
      {
        v54 = v53;
        do
        {
          for (i = 0; i != v54; ++i)
          {
            OUTLINED_FUNCTION_49_7();
            if (!v56)
            {
              objc_enumerationMutation(v23);
            }

            v57 = *(v166 + 8 * i);
            v58 = [v5 lastAddedInputForSequenceNumber:v7 portType:v6 bufferType:{objc_msgSend(v57, "intValue")}];
            v148 = v57;
            v59 = [v58 addBypassedProcessorType:7 forBufferTypes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v148, 1)}];
          }

          v54 = OUTLINED_FUNCTION_13_15(v59, v60, &v165, &v149);
        }

        while (v54);
      }
    }

    v9 = v79;
    [*(v79 + 456) setObject:v87 forKeyedSubscript:v6];
    [*(v79 + 464) setObject:&unk_1F2245118 forKeyedSubscript:v6];

    v8 = v81;
    v13 = HIDWORD(v85);
  }

  OUTLINED_FUNCTION_110_4();
  v62 = [v61 enqueueInputForProcessing:? delegate:?];
  LOBYTE(v11) = v85;
  if (v62)
  {
    v64 = v62;
LABEL_40:
    if ((v11 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  v63 = v9[76];
  if (!v63)
  {
LABEL_39:
    v64 = 0;
    goto LABEL_40;
  }

  [objc_msgSend(v63 "pipelineParameters")];
  [objc_msgSend(v9[76] "pipelineParameters")];
  [objc_msgSend(v9[76] "pipelineParameters")];
  v64 = 0;
  if ((v85 & 1) == 0)
  {
LABEL_45:
    if (((v64 == 0) & ~v13) != 0 || !dword_1EB58E340)
    {
      goto LABEL_57;
    }

    v65 = v8;
    goto LABEL_48;
  }

LABEL_41:
  if (!dword_1EB58E340)
  {
    goto LABEL_57;
  }

  v65 = v8;
LABEL_48:
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  OUTLINED_FUNCTION_97_0();
  if (v56)
  {
    v68 = v67;
  }

  else
  {
    v68 = 0;
  }

  if (v68)
  {
    [objc_msgSend(v65 "captureSettings")];
    if (v7)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@" seq-no:%u", v7];
    }

    OUTLINED_FUNCTION_13();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_128();
LABEL_57:
  OUTLINED_FUNCTION_81();
}

- (uint64_t)_isSemanticRenderingCapture:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_135_3();
    v4 = [objc_msgSend(v3 "captureSettings")];
    v5 = [objc_msgSend(v2 "captureSettings")];
    if ([(BWUBNodeConfiguration *)*(v1 + 144) semanticRenderingVersion]< 1)
    {
      return 0;
    }

    else
    {
      v6 = (v5 >> 7) & 1;
      if (v4 == 11)
      {
        LODWORD(v6) = 1;
      }

      if (v4 == 10 || v4 == 12)
      {
        return 1;
      }

      else
      {
        return v6;
      }
    }
  }

  return result;
}

- (uint64_t)_isSemanticStylesCaptureNeedingInferencesWithSettings:(uint64_t)a1
{
  if (a1)
  {
    [OUTLINED_FUNCTION_76_5(a1 a2)];
    objc_opt_class();
    v4 = (objc_opt_isKindOfClass() & 1) == 0 || [objc_msgSend(v3 "requestedSettings")] == 0;
    v5 = OUTLINED_FUNCTION_3_19();
    v6 = [BWUBNode _isSemanticRenderingCapture:v5];
    v7 = [objc_msgSend(v3 "captureSettings")];
    v8 = OUTLINED_FUNCTION_3_19();
    v9 = [BWUBNode _provideInferenceAttachedMediaWithSettings:v8];
    v10 = [(BWUBNodeConfiguration *)*(v2 + 144) semanticStyleRenderingEnabled];
    v11 = (v10 ^ 1 | v4) ^ 1;
    if (((v10 ^ 1 | v4) & 1) == 0 && (v6 & 1) == 0)
    {
      if (v7 == 2)
      {
        v11 = 1;
      }

      else
      {
        v11 = v9;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (uint64_t)_provideInferenceAttachedMediaWithSettings:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    v4 = [(BWUBNodeConfiguration *)*(v3 + 144) providedInferenceAttachedMediaByMode];
    OUTLINED_FUNCTION_43();
    result = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (result)
    {
      v6 = result;
      while (2)
      {
        v7 = 0;
        do
        {
          OUTLINED_FUNCTION_21_20();
          if (!v8)
          {
            objc_enumerationMutation(v4);
          }

          if (-[BWUBNode _provideInferencesForAttachedMediaMode:settings:](v2, [*(8 * v7) intValue], v1))
          {
            return 1;
          }

          ++v7;
        }

        while (v6 != v7);
        OUTLINED_FUNCTION_43();
        result = OUTLINED_FUNCTION_64(v9, v10, v11, v12);
        v6 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (uint64_t)_isDemosaicedRawCaptureNeedingInferencesWithSettigs:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_80();
  if (![objc_msgSend(v2 "processingSettings")] || !objc_msgSend(-[BWUBNodeConfiguration providedInferenceAttachedMediaByMode](*(v1 + 144)), "objectForKeyedSubscript:", &unk_1F22450B8))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_44();

  return [BWUBNode _isSemanticRenderingCapture:v4];
}

- (uint64_t)_isDepthCaptureNeedingPersonSegmentationMasksWithSettings:(uint64_t)a1
{
  if (!a1 || ![-[BWUBNodeConfiguration providedInferenceAttachedMediaByMode](*(a1 + 144)) objectForKeyedSubscript:&unk_1F22450D0] || (objc_msgSend(objc_msgSend(a2, "captureSettings"), "captureFlags") & 0x800) == 0)
  {
    return 0;
  }

  v4 = [a2 requestedSettings];

  return [v4 depthDataFiltered];
}

- (uint64_t)_inferencesRequiredForSettings:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    v2 = [BWUBNode _inferencesRequiredByProcessorControllersForSettings:v1];
    v3 = OUTLINED_FUNCTION_44();
    return v2 | [BWUBNode _provideInferenceAttachedMediaWithSettings:v3];
  }

  return result;
}

- (uint64_t)_scaleInferenceInputForRedEyeReductionFromPixelBuffer:(CVPixelBufferRef)destinationBuffer outputPixelBuffer:
{
  if (result)
  {
    v4 = result;
    result = 4294954516;
    if (sourceBuffer)
    {
      if (destinationBuffer)
      {
        v6 = *(v4 + 408);
        if (!v6)
        {
          result = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], (v4 + 408));
          if (result)
          {
            return result;
          }

          result = VTSessionSetProperty(*(v4 + 408), *MEMORY[0x1E6983E30], *MEMORY[0x1E69840F0]);
          if (result)
          {
            return result;
          }

          v6 = *(v4 + 408);
        }

        return VTPixelTransferSessionTransferImage(v6, sourceBuffer, destinationBuffer);
      }
    }
  }

  return result;
}

- (uint64_t)_provideInferencesForAttachedMediaMode:(void *)a3 settings:
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == 2)
  {
    return [(BWUBNode *)a1 _isDepthCaptureNeedingPersonSegmentationMasksWithSettings:a3];
  }

  if (a2 != 1)
  {
    return 0;
  }

  return [BWUBNode _isDemosaicedRawCaptureNeedingInferencesWithSettigs:a1];
}

- (void)_prepareSharedExternalMemoryResourceForProcessorControllersIfNeeded
{
  if (a1)
  {
    OUTLINED_FUNCTION_84();
    v2 = v1;
    if (*(v1 + 216) == 1 && (*(v1 + 217) & 1) == 0)
    {
      v3 = [MEMORY[0x1E695DF70] array];
      if ([objc_msgSend(OUTLINED_FUNCTION_59_8() controllerForType:{6), "supportsExternalMemoryResource"}])
      {
        [OUTLINED_FUNCTION_59_8() controllerForType:6];
        [OUTLINED_FUNCTION_36() addObject:?];
      }

      if ([objc_msgSend(OUTLINED_FUNCTION_59_8() controllerForType:{2), "supportsExternalMemoryResource"}])
      {
        [OUTLINED_FUNCTION_59_8() controllerForType:2];
        [OUTLINED_FUNCTION_36() addObject:?];
      }

      v4 = [v3 count];
      if (v4 < 2)
      {
        v17 = 0;
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v6 = OUTLINED_FUNCTION_37_2(v4, v5, &v35, v34);
        if (v6)
        {
          v7 = 0;
          v8 = 0;
          v9 = *v36;
LABEL_11:
          v10 = 0;
          while (1)
          {
            if (*v36 != v9)
            {
              objc_enumerationMutation(v3);
            }

            v11 = *(*(&v35 + 1) + 8 * v10);
            v12 = [v11 externalMemoryDescriptor];
            if (!v12)
            {
              goto LABEL_44;
            }

            v13 = v12;
            if ([v12 memSize] > v8)
            {
              v8 = [v13 memSize];
              [v11 type];
            }

            v14 = [v13 allocatorType];
            if (v7)
            {
              if (v7 != v14)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v7 = v14;
            }

            if ([v11 type] == 6 || (v15 = objc_msgSend(v11, "type"), v15 == 2))
            {
              v15 = [v13 memSize];
            }

            if (v6 == ++v10)
            {
              v6 = OUTLINED_FUNCTION_52(v15, v16, &v35, v34);
              if (v6)
              {
                goto LABEL_11;
              }

              v6 = v8;
              goto LABEL_29;
            }
          }
        }

        v7 = 0;
LABEL_29:
        if (dword_1EB58E340)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v19 = [objc_msgSend(*(v2 + 144) "metalCommandQueue")];
        if (!v19)
        {
          goto LABEL_44;
        }

        v17 = [objc_alloc(MEMORY[0x1E6991758]) initWithDevice:v19 allocatorType:v7];
        if (!v17)
        {
          goto LABEL_42;
        }

        v20 = objc_alloc_init(MEMORY[0x1E6991760]);
        [v20 setMemSize:v6];
        [v20 setWireMemory:1];
        [v20 setLabel:@"FigMetalAllocatorBackend-Shared-StillImage"];
        [+[BWMemoryPool sharedMemoryPool](BWMemoryPool poolIdentifier];
        [OUTLINED_FUNCTION_7() setMemoryPoolId:?];
        if ([v17 setupWithDescriptor:v20])
        {
          goto LABEL_42;
        }

        v21 = objc_alloc_init(MEMORY[0x1E69916D0]);
        *(v2 + 224) = v21;
        [v21 setAllocatorBackend:v17];
        OUTLINED_FUNCTION_47_0();
        v26 = OUTLINED_FUNCTION_37_2(v22, v23, v24, v25);
        if (v26)
        {
          v27 = v26;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              OUTLINED_FUNCTION_21_20();
              if (!v29)
              {
                objc_enumerationMutation(v3);
              }

              [*(8 * i) setExternalMemoryResource:*(v2 + 224)];
            }

            OUTLINED_FUNCTION_47_0();
            v27 = OUTLINED_FUNCTION_37_2(v30, v31, v32, v33);
          }

          while (v27);
        }
      }

      *(v2 + 217) = 1;
LABEL_42:

      OUTLINED_FUNCTION_81();
      return;
    }

LABEL_44:
    v17 = 0;
    goto LABEL_42;
  }
}

- (void)_flushBufferPoolsWhenPossibleWithSettings:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_80();
  if (([objc_msgSend(v3 "captureSettings")] & 0x200000000) != 0)
  {
    v4 = [objc_msgSend(v1 "captureSettings")] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  if (([objc_msgSend(v1 "captureSettings")] & 0x100000000) != 0)
  {
    if ([objc_msgSend(v1 "captureSettings")] == 12)
    {
      v5 = [objc_msgSend(v1 "captureSettings")] ^ 1;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  if ([objc_msgSend(v1 "captureSettings")] == 11)
  {
    [OUTLINED_FUNCTION_111_4(320) flushToMinimumCapacity:?];
    [OUTLINED_FUNCTION_111_4(328) flushToMinimumCapacity:?];
  }

  v6 = OUTLINED_FUNCTION_138_1();
  v7 = [(BWUBNodeConfiguration *)v6 minimumOutputBufferCount];
  if ([objc_msgSend(v1 "requestedSettings")])
  {
    v8 = OUTLINED_FUNCTION_138_1();
    v9 = [(BWUBNodeConfiguration *)v8 maxNumberOfBurstCapturesAllowedInFlight];
    if (v7 <= v9)
    {
      v7 = v9;
    }
  }

  if ([objc_msgSend(v1 "processingSettings")])
  {
    goto LABEL_16;
  }

  memset(v52, 0, 64);
  v21 = [objc_msgSend(v1 "captureSettings")];
  v22 = [v21 countByEnumeratingWithState:v52 objects:v51 count:16];
  if (v22)
  {
    v23 = v22;
LABEL_33:
    v24 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_142_0();
      if (!v16)
      {
        objc_enumerationMutation(v21);
      }

      v25 = [v2 idcSupportedForCaptureType:objc_msgSend(objc_msgSend(v1 captureFlags:"captureSettings") portType:{"captureType"), 0, *(v52[1] + 8 * v24)}];
      if (v25)
      {
        break;
      }

      if (v23 == ++v24)
      {
        v23 = OUTLINED_FUNCTION_52(v25, v26, v52, v51);
        if (v23)
        {
          goto LABEL_33;
        }

        goto LABEL_17;
      }
    }

LABEL_16:
    v7 = *(v2 + 648);
  }

LABEL_17:
  if (v5 && [objc_msgSend(*(v2 + 16) "livePixelBufferPool")])
  {
    v7 = 0;
  }

  v10 = [objc_msgSend(*(v2 + 16) "livePixelBufferPool")];
  memset(v50, 0, sizeof(v50));
  v11 = *(v2 + 376);
  v13 = OUTLINED_FUNCTION_64(v10, v12, v50, v49);
  if (v13)
  {
    v14 = v13;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        OUTLINED_FUNCTION_142_0();
        if (!v16)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [*(v2 + 376) objectForKeyedSubscript:*(*(&v50[0] + 1) + 8 * i)];
        v18 = [v17 usesMemoryPool];
        if (v18)
        {
          v18 = [v17 flushToMinimumCapacity:0];
        }
      }

      v14 = OUTLINED_FUNCTION_64(v18, v19, v50, v49);
    }

    while (v14);
  }

  if (v4 & 1 | (([objc_msgSend(v1 "processingSettings")] & 1) == 0) | v5 & 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v2 + 652);
  }

  [objc_msgSend(objc_msgSend(*(v2 + 16) mediaPropertiesForAttachedMediaKey:{0x1F21AAE10), "livePixelBufferPool"), "flushToMinimumCapacity:", v20}];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = *(v2 + 424);
  v42 = [obj countByEnumeratingWithState:&v45 objects:v44 count:16];
  if (v42)
  {
    v41 = *v46;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v46 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v45 + 1) + 8 * j);
        v28 = [*(v2 + 424) objectForKeyedSubscript:?];
        OUTLINED_FUNCTION_47_0();
        v30 = [v29 countByEnumeratingWithState:? objects:? count:?];
        if (v30)
        {
          v31 = v30;
          v32 = 0;
          do
          {
            v33 = 0;
            do
            {
              OUTLINED_FUNCTION_21_20();
              if (!v16)
              {
                objc_enumerationMutation(v28);
              }

              v34 = [*(8 * v33) intValue];
              v35 = v20;
              if (v34 != 1)
              {
                if (v34 == 2 && (v36 = OUTLINED_FUNCTION_44(), [(BWUBNode *)v36 _isDepthCaptureNeedingPersonSegmentationMasksWithSettings:v37]))
                {
                  v38 = [objc_msgSend(v1 "requestedSettings")];
                  if (v38)
                  {
                    v35 = v38;
                  }

                  else
                  {
                    v35 = 2;
                  }
                }

                else
                {
                  v35 = 0;
                }
              }

              if (v32 <= v35)
              {
                v32 = v35;
              }

              ++v33;
            }

            while (v31 != v33);
            OUTLINED_FUNCTION_47_0();
            v39 = [v28 countByEnumeratingWithState:? objects:? count:?];
            v31 = v39;
          }

          while (v39);
        }

        else
        {
          v32 = 0;
        }

        [objc_msgSend(objc_msgSend(*(v2 + 16) mediaPropertiesForAttachedMediaKey:{v43), "livePixelBufferPool"), "flushToMinimumCapacity:", v32}];
      }

      v42 = [obj countByEnumeratingWithState:&v45 objects:v44 count:16];
    }

    while (v42);
  }

  OUTLINED_FUNCTION_81();
}

- (void)_setupDeferredProcessingWithSettings:(uint64_t)a1 portType:
{
  if (a1)
  {
    if ([*(a1 + 184) controllerForType:5])
    {
      v2 = [BWDeferredProcessorControllerInput alloc];
      OUTLINED_FUNCTION_17_3();
      v4 = [v3 initWithSettings:? portType:?];
      OUTLINED_FUNCTION_7_1();
      v9 = 3221225472;
      v10 = __58__BWUBNode__setupDeferredProcessingWithSettings_portType___block_invoke;
      v11 = &unk_1E79992C8;
      v12 = a1;
      [v5 addOutputSampleBufferRouter:v8 forBufferTypes:&unk_1F2248E50];
      OUTLINED_FUNCTION_17_3();
      [v6 setObject:? forKeyedSubscript:?];
      [*(a1 + 184) controllerForType:5];
      OUTLINED_FUNCTION_53();
      [v7 enqueueInputForProcessing:? delegate:?];
    }
  }
}

- (uint64_t)_setupProcessingStateForClientBracketWithSettings:(void *)a3 processingPlan:
{
  if (a1)
  {
    OUTLINED_FUNCTION_134_3();
    v52 = [*(v6 + 184) controllerForType:*(v4 + 240)];
    if (v52)
    {
      v50 = OUTLINED_FUNCTION_83_4();
      OUTLINED_FUNCTION_58_11();
      v64 = 3221225472;
      v65 = __53__BWUBNode__standardNROutputRouterWithExpectedQueue___block_invoke;
      v66 = &unk_1E7999390;
      v67 = v7;
      v68 = v4;
      v48 = [v63 copy];
      [v3 captureSettings];
      [objc_msgSend(v3 "captureSettings")];
      v56 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_17() "captureStreamSettingsForPortType:{"unifiedBracketedCaptureParams"), "count"}")];
      OUTLINED_FUNCTION_106_4();
      v8 = OUTLINED_FUNCTION_39_13();
      [(BWUBNode *)v8 _processingOrderByPortTypeForSettings:v9, v10, v11, v12, v13, v14, v15, v39, v41, v42, v43, obj, v46, v48, v50, v52, v54, v56, v58, v60[0], v60[1], v60[2], v60[3], v60[4], v60[5], v60[6]];
      obja = v16;
      v55 = [v16 countByEnumeratingWithState:v61 objects:v60 count:16];
      if (v55)
      {
        OUTLINED_FUNCTION_87_3();
        v47 = v17;
        while (2)
        {
          for (i = 0; i != v55; ++i)
          {
            OUTLINED_FUNCTION_87_3();
            if (v19 != v47)
            {
              objc_enumerationMutation(obja);
            }

            v20 = *(v62 + 8 * i);
            v21 = [v51 alloc];
            OUTLINED_FUNCTION_53();
            v23 = [v22 initWithSettings:? portType:?];
            [v3 captureSettings];
            v24 = OUTLINED_FUNCTION_26_13();
            [(BWUBNode *)v24 _bufferTypesForCaptureSettings:v25];
            v26 = OUTLINED_FUNCTION_121_1();
            v59 = v27;
            [v26 addOutputSampleBufferRouter:v49 forBufferTypes:?];
            OUTLINED_FUNCTION_159([MEMORY[0x1E695DF70] arrayWithObject:v23], 256);

            v28 = [v23 stillImageSettings];
            [v23 portType];
            v29 = OUTLINED_FUNCTION_7();
            v30 = [BWUBNode _processingNeededForSettings:v29 portType:v28];
            if (v30)
            {
              v31 = v57;
            }

            else
            {
              v31 = 1;
            }

            [v23 setRemainingProcessingCount:{objc_msgSend(v23, "remainingProcessingCount") + v31}];
            OUTLINED_FUNCTION_159([MEMORY[0x1E695DF90] dictionary], 536);
            if (v57 >= 1)
            {
              v32 = 1;
              v33 = v57;
              while (1)
              {
                if (v30)
                {
                  [a3 addInput:v23 sequenceNumber:v32 portType:v20 bufferTypes:v59];
                  OUTLINED_FUNCTION_39_13();
                  [BWUBNode _setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:queueProvidingInput:processingPlan:];
                  if (v36)
                  {
                    break;
                  }

                  LOWORD(v40) = 0;
                  v36 = [v53 enqueueInputForProcessing:v23 delegate:v4 processErrorRecoveryFrame:0 processOriginalImage:0 clientBracketSequenceNumber:v32 processSemanticRendering:0 provideInferenceInputImageForProcessing:v40 inferencesAvailable:?];
                  if (v36)
                  {
                    break;
                  }
                }

                if ([v23 isMaster])
                {
                  v34 = OUTLINED_FUNCTION_39_13();
                  [(BWUBNode *)v34 _setupProcessingStateForDisparityIfNeededWithSettings:v35 sequenceNumber:v32 processingPlan:a3];
                }

                v32 = (v32 + 1);
                if (!--v33)
                {
                  goto LABEL_21;
                }
              }

              v37 = v36;
              OUTLINED_FUNCTION_1_5();
              FigDebugAssert3();
              return v37;
            }

LABEL_21:
            ;
          }

          v55 = [obja countByEnumeratingWithState:v61 objects:v60 count:16];
          if (v55)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return 0;
}

- (uint64_t)_setupProcessingStateForFlashCaptureWithSettings:(uint64_t)a3 processingPlan:
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_134_3();
  v67 = [*(v6 + 184) controllerForType:*(v4 + 240)];
  if (!v67)
  {
    return 0;
  }

  v76 = OUTLINED_FUNCTION_83_4();
  v68 = [*(v4 + 184) controllerForType:11];
  OUTLINED_FUNCTION_26_14();
  v87 = 3221225472;
  v88 = __76__BWUBNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke;
  v89 = &unk_1E79992C8;
  v90 = v4;
  v65 = [BWUBNode _standardNROutputRouterWithExpectedQueue:v4];
  [v3 captureSettings];
  v7 = OUTLINED_FUNCTION_26_13();
  v70 = [(BWUBNode *)v7 _bufferTypesForCaptureSettings:v8];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __76__BWUBNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_2;
  v85[3] = &unk_1E79992C8;
  v85[4] = v4;
  v57 = [*(v4 + 184) controllerForType:4];
  v9 = OUTLINED_FUNCTION_39_13();
  HIDWORD(v63) = [BWUBNode _isSemanticRenderingCapture:v9];
  v10 = OUTLINED_FUNCTION_39_13();
  LODWORD(v63) = [BWUBNode _isInferenceInputImageRequiredForSettings:v10];
  v11 = OUTLINED_FUNCTION_39_13();
  [BWUBNode _inferencesRequiredForSettings:v11];
  v12 = OUTLINED_FUNCTION_39_13();
  HIDWORD(v61) = [BWUBNode _inferencesRequiredByProcessorControllersForSettings:v12];
  if (*(v4 + 432))
  {
    v59 = ([objc_msgSend(v3 "captureSettings")] >> 16) & 1;
  }

  else
  {
    v59 = 0;
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v13 = OUTLINED_FUNCTION_39_13();
  [(BWUBNode *)v13 _processingOrderByPortTypeForSettings:v14, v15, v16, v17, v18, v19, v20, v53, v55, v56, v5, v57, v59, v61, v63, v65, v67, v68, v70, obj, v74, v76, a3, v80[0], v80[1], v80[2]];
  obja = v21;
  v22 = [v21 countByEnumeratingWithState:&v81 objects:v80 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0x1E695D000uLL;
    v25 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    v75 = *v82;
    while (2)
    {
      v26 = 0;
      do
      {
        if (*v82 != v75)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v81 + 1) + 8 * v26);
        v28 = [v77 alloc];
        OUTLINED_FUNCTION_53();
        v30 = [v29 initWithSettings:? portType:?];
        OUTLINED_FUNCTION_159([*(v24 + 3952) arrayWithObject:v30], v25[141]);
        OUTLINED_FUNCTION_160([v30 remainingProcessingCount]);

        v31 = [v30 stillImageSettings];
        [v30 portType];
        v32 = OUTLINED_FUNCTION_7();
        if ([BWUBNode _processingNeededForSettings:v32 portType:v31])
        {
          v33 = v24;
          if (([objc_msgSend(v3 "captureSettings")] & 0x80) != 0)
          {
            if (!v69)
            {
              return 4294954516;
            }

            v34 = [BWLearnedNRInput alloc];
            [v30 portType];
            v35 = [OUTLINED_FUNCTION_121_1() initWithSettings:v3 portType:?];
            [v35 addOutputSampleBufferRouter:v86 forBufferTypes:v71];
            [v79 addInput:v35 sequenceNumber:0 portType:objc_msgSend(v30 bufferTypes:{"portType"), v71}];
            [v35 portType];
            [OUTLINED_FUNCTION_121_1() setObject:v35 forKeyedSubscript:?];
            v36 = [v69 enqueueInputForProcessing:v35 delegate:v4];

            if (v36)
            {
              return v36;
            }
          }

          if (v64)
          {
            [(BWUBNode *)v4 _ubInferenceInputRouter];
            [OUTLINED_FUNCTION_36() addOutputSampleBufferRouter:? forBufferTypes:?];
            OUTLINED_FUNCTION_77_6();
            [v46 addInput:? sequenceNumber:? portType:? bufferType:?];
          }

          [v30 addOutputSampleBufferRouter:v66 forBufferTypes:v71];
          OUTLINED_FUNCTION_77_6();
          [v37 addInput:? sequenceNumber:? portType:? bufferTypes:?];
          BYTE1(v54) = v62;
          LOBYTE(v54) = v64;
          OUTLINED_FUNCTION_110_4();
          OUTLINED_FUNCTION_72();
          v39 = [v38 enqueueInputForProcessing:v54 delegate:? processErrorRecoveryFrame:? processOriginalImage:? clientBracketSequenceNumber:? processSemanticRendering:? provideInferenceInputImageForProcessing:? inferencesAvailable:?];
          if (v39 || (OUTLINED_FUNCTION_34_15(), [BWUBNode _setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:queueProvidingInput:processingPlan:], v39) || (v40 = OUTLINED_FUNCTION_34_15(), [BWUBNode _setupProcessingStateForDeepZoomWithSettings:v40 sequenceNumber:? portType:? queueProvidingInput:? processingPlan:?], v39))
          {
            v36 = v39;
            OUTLINED_FUNCTION_1_5();
            FigDebugAssert3();
            return v36;
          }

          v24 = v33;
          v25 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
          if (v60)
          {
            if (!v58)
            {
              return 4294954516;
            }

            v41 = [BWRedEyeReductionControllerInput alloc];
            OUTLINED_FUNCTION_53();
            v43 = [v42 initWithSettings:? portType:?];
            [v43 addOutputSampleBufferRouter:v85 forBufferTypes:&unk_1F2248EB0];
            OUTLINED_FUNCTION_77_6();
            [v44 addInput:? sequenceNumber:? portType:? bufferTypes:?];
            [*(v4 + 440) setObject:v43 forKeyedSubscript:v27];
            OUTLINED_FUNCTION_110_4();
            v36 = [v45 enqueueInputForProcessing:? delegate:?];

            if (v36)
            {
              return v36;
            }
          }
        }

        ++v26;
      }

      while (v23 != v26);
      v23 = [obja countByEnumeratingWithState:&v81 objects:v80 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v47 = OUTLINED_FUNCTION_39_13();
  [BWUBNode _setupProcessingStateForJasperDisparityIfNeededWithSettings:v47 processingPlan:?];
  v48 = OUTLINED_FUNCTION_34_15();
  return [(BWUBNode *)v48 _setupProcessingStateForDisparityIfNeededWithSettings:v49 sequenceNumber:v50 processingPlan:v51];
}

- (void)_setupProcessingStateForSingleImageCaptureWithSettings:processingPlan:
{
  OUTLINED_FUNCTION_84();
  v4 = v3;
  if (v0)
  {
    v5 = v2;
    v6 = v1;
    v7 = v0;
    v8 = [*(v0 + 184) controllerForType:*(v0 + 240)];
    if (v8)
    {
      v58 = v8;
      v9 = OUTLINED_FUNCTION_83_4();
      v51 = [v7[23] controllerForType:11];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __82__BWUBNode__setupProcessingStateForSingleImageCaptureWithSettings_processingPlan___block_invoke;
      v73[3] = &unk_1E79992C8;
      v73[4] = v7;
      v56 = [BWUBNode _standardNROutputRouterWithExpectedQueue:v7];
      obja = [MEMORY[0x1E695DF70] array];
      v10 = -[BWUBNode _bufferTypesForCaptureSettings:](v7, [v6 captureSettings]);
      memset(v72, 0, sizeof(v72));
      v11 = v7;
      v12 = v6;
      [(BWUBNode *)v7 _processingOrderByPortTypeForSettings:v6, v13, v14, v15, v16, v17, v18, v46, v48, v49, v4, v5, v51, v53, v56, v58, v10, v60, obja, v64, v65, v66, v67, v68, v69, v70];
      v20 = v19;
      v21 = [v19 countByEnumeratingWithState:v72 objects:v71 count:16];
      if (v21)
      {
        v22 = v21;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            OUTLINED_FUNCTION_142_0();
            if (!v24)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(v72[1] + 8 * i);
            v26 = [[v9 alloc] initWithSettings:v12 portType:v25];
            [*(v11 + 256) setObject:objc_msgSend(MEMORY[0x1E695DF70] forKeyedSubscript:{"arrayWithObject:", v26), v25}];
            [obj addObject:v26];
          }

          v22 = [v20 countByEnumeratingWithState:v72 objects:v71 count:16];
        }

        while (v22);
      }

      v27 = v11;
      if (([BWUBNode _isSemanticRenderingCapture:v11]& 1) == 0)
      {
        [*(v11 + 144) deferredPhotoProcessorEnabled];
      }

      v28 = OUTLINED_FUNCTION_88_4();
      v54 = [BWUBNode _isInferenceInputImageRequiredForSettings:v28];
      v29 = OUTLINED_FUNCTION_88_4();
      if (([BWUBNode _inferencesRequiredByProcessorControllersForSettings:v29]& 1) != 0)
      {
        v55 = 1;
      }

      else
      {
        v55 = [*(v11 + 144) deferredPhotoProcessorEnabled];
      }

      OUTLINED_FUNCTION_98_5();
      v30 = [obj countByEnumeratingWithState:? objects:? count:?];
      v31 = v54;
      if (v30)
      {
        v32 = v30;
        v61 = MEMORY[0];
        while (2)
        {
          for (j = 0; j != v32; ++j)
          {
            if (MEMORY[0] != v61)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(8 * j);
            v35 = [v34 stillImageSettings];
            [v34 portType];
            if ([BWUBNode _processingNeededForSettings:v27 portType:v35])
            {
              if (([objc_msgSend(v12 "captureSettings")] & 0x80) != 0)
              {
                if (!v52)
                {
                  goto LABEL_34;
                }

                v36 = -[BWStillImageProcessorControllerInput initWithSettings:portType:]([BWLearnedNRInput alloc], "initWithSettings:portType:", v12, [v34 portType]);
                [(BWStillImageProcessorControllerInput *)v36 addOutputSampleBufferRouter:v73 forBufferTypes:v59];
                [v50 addInput:v36 sequenceNumber:0 portType:objc_msgSend(v34 bufferTypes:{"portType"), v59}];
                [v27[36] setObject:v36 forKeyedSubscript:{-[BWStillImageProcessorControllerInput portType](v36, "portType")}];
                v37 = [v52 enqueueInputForProcessing:v36 delegate:v27];

                v31 = v54;
                if (v37)
                {
                  goto LABEL_34;
                }
              }

              if (v31)
              {
                [(BWUBNode *)v27 _ubInferenceInputRouter];
                [OUTLINED_FUNCTION_36() addOutputSampleBufferRouter:? forBufferTypes:?];
                [v34 portType];
                [OUTLINED_FUNCTION_141_1() addInput:? sequenceNumber:? portType:? bufferType:?];
              }

              [v34 addOutputSampleBufferRouter:v57 forBufferTypes:v59];
              [v34 portType];
              [OUTLINED_FUNCTION_141_1() addInput:? sequenceNumber:? portType:? bufferTypes:?];
              BYTE1(v47) = v55;
              LOBYTE(v47) = v31;
              OUTLINED_FUNCTION_72();
              if ([v38 enqueueInputForProcessing:v47 delegate:? processErrorRecoveryFrame:? processOriginalImage:? clientBracketSequenceNumber:? processSemanticRendering:? provideInferenceInputImageForProcessing:? inferencesAvailable:?] || (objc_msgSend(v34, "portType"), OUTLINED_FUNCTION_88_4(), -[BWUBNode _setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:queueProvidingInput:processingPlan:](), v39) || (objc_msgSend(v34, "portType"), v40 = OUTLINED_FUNCTION_88_4(), -[BWUBNode _setupProcessingStateForDeepZoomWithSettings:sequenceNumber:portType:queueProvidingInput:processingPlan:](v40), v41))
              {
                OUTLINED_FUNCTION_1_5();
                FigDebugAssert3();
                goto LABEL_34;
              }

              [v34 portType];
              v42 = OUTLINED_FUNCTION_88_4();
              [BWUBNode _setupDeferredProcessingWithSettings:v42 portType:?];
            }

            OUTLINED_FUNCTION_160([v34 remainingProcessingCount]);
          }

          OUTLINED_FUNCTION_98_5();
          v32 = [obj countByEnumeratingWithState:? objects:? count:?];
          if (v32)
          {
            continue;
          }

          break;
        }
      }

      v43 = OUTLINED_FUNCTION_88_4();
      [BWUBNode _setupProcessingStateForJasperDisparityIfNeededWithSettings:v43 processingPlan:?];
      v44 = OUTLINED_FUNCTION_88_4();
      [(BWUBNode *)v44 _setupProcessingStateForDisparityIfNeededWithSettings:v45 sequenceNumber:0 processingPlan:v50];
    }
  }

LABEL_34:
  OUTLINED_FUNCTION_81();
}

- (uint64_t)_setupProcessingStateForDeferredCaptureIfNeededWithSettings:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  if (![objc_msgSend(OUTLINED_FUNCTION_76_5(a1 a2)] || *(v2 + 608))
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v5 = [*(v2 + 184) controllerForType:14];
    if (v5)
    {
      v6 = v5;
      v7 = [BWDeferredCaptureControllerInput alloc];
      v8 = [v4 initWithSettings:v3 configuration:objc_msgSend(OUTLINED_FUNCTION_25_0() sourceNodePixelBufferAttributes:{"configuration"), objc_msgSend(objc_msgSend(*(v2 + 8), "videoFormat"), "pixelBufferAttributes")}];
      [objc_msgSend(v8 "pipelineParameters")];
      [objc_msgSend(v8 "pipelineParameters")];
      v9 = [v6 enqueueInputForProcessing:v8 delegate:v2];
      if (!v9)
      {
        *(v2 + 608) = v8;
      }
    }

    else
    {
      v8 = 0;
      v9 = 4294950488;
    }
  }

  return v9;
}

- (id)_nrOutputSbufRouter
{
  if (result)
  {
    OUTLINED_FUNCTION_7_1();
    v3 = 3221225472;
    v4 = __31__BWUBNode__nrOutputSbufRouter__block_invoke;
    v5 = &unk_1E79992C8;
    v6 = v1;
    return [v2 copy];
  }

  return result;
}

- (void)_setupProcessingStateForDeepZoomWithSettings:(uint64_t)a1 sequenceNumber:portType:queueProvidingInput:processingPlan:
{
  if (a1)
  {
    OUTLINED_FUNCTION_84();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (!*(v10 + 488) || ([objc_msgSend(v8 "requestedSettings")] & 1) != 0)
    {
      goto LABEL_31;
    }

    v11 = [objc_msgSend(v8 "captureSettings")];
    v12 = [objc_msgSend(v8 "captureSettings")];
    v13 = [*(v10 + 488) type];
    if (v11 == 1)
    {
      if ((v12 & 0x80) == 0 || v13 != 2)
      {
        goto LABEL_31;
      }
    }

    else if (v11 != 12 || v13 != 1)
    {
LABEL_31:
      OUTLINED_FUNCTION_81();
      return;
    }

    v59 = [*(v10 + 184) controllerForType:10];
    OUTLINED_FUNCTION_26_14();
    v93[1] = 3221225472;
    v93[2] = __116__BWUBNode__setupProcessingStateForDeepZoomWithSettings_sequenceNumber_portType_queueProvidingInput_processingPlan___block_invoke;
    v93[3] = &unk_1E7999390;
    v93[4] = v10;
    v93[5] = v4;
    v64 = [(BWStillImageProcessorControllerInput *)[BWDeepZoomProcessorInput alloc] initWithSettings:v8 portType:v4];
    [v8 captureSettings];
    v14 = [BWUBNode _bufferTypesExcludingErrorRecoveryTypesForCaptureSettings:v10];
    [(BWUBNode *)v10 _errorRecoveryBufferTypesForBufferTypes:v14, v15, v16, v17, v18, v19, v20, v53, v56, v59, v10, v64, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79];
    v22 = v21;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v30 = OUTLINED_FUNCTION_152(v21, v23, v24, v25, v26, v27, v28, v29, v54, v57, v60, v62, v65, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, *(&v87 + 1), v88);
    if (v30)
    {
      v32 = v30;
      do
      {
        v33 = 0;
        do
        {
          OUTLINED_FUNCTION_21_20();
          if (!v34)
          {
            objc_enumerationMutation(v14);
          }

          v35 = [*(*(&v89 + 1) + 8 * v33) intValue];
          v36 = [v2 lastAddedInputForSequenceNumber:v6 portType:v4 bufferType:v35];
          if (v36)
          {
            if (!ubn_insertOutputRouterForInputAfterPreviousInputForBufferType(v93, v66, v36, v35))
            {
              goto LABEL_31;
            }

            v36 = [v2 addInput:v66 sequenceNumber:v6 portType:v4 bufferType:v35];
          }

          ++v33;
        }

        while (v32 != v33);
        v30 = OUTLINED_FUNCTION_152(v36, v37, v38, v39, v40, v41, v42, v43, v55, v58, v61, v63, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, *(&v87 + 1), v88);
        v32 = v30;
      }

      while (v30);
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v44 = OUTLINED_FUNCTION_37_2(v30, v31, &v84, &v68);
    if (v44)
    {
      v45 = v44;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          OUTLINED_FUNCTION_21_20();
          if (!v34)
          {
            objc_enumerationMutation(v22);
          }

          v47 = *(*(&v84 + 1) + 8 * i);
          v48 = [v2 lastAddedInputForSequenceNumber:v6 portType:v4 bufferType:{objc_msgSend(v47, "intValue")}];
          v67 = v47;
          v49 = [v48 addBypassedProcessorType:10 forBufferTypes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v67, 1)}];
        }

        v45 = OUTLINED_FUNCTION_37_2(v49, v50, &v84, &v68);
      }

      while (v45);
    }

    OUTLINED_FUNCTION_17_3();
    [v51 setObject:? forKeyedSubscript:?];

    OUTLINED_FUNCTION_53();
    [v52 enqueueInputForProcessing:? delegate:?];
    goto LABEL_31;
  }
}

- (void)_setupProcessingStateForPointCloudDepthIfNeededWithSettings:(uint64_t)a1 processingPlan:
{
  if (a1)
  {
    OUTLINED_FUNCTION_84();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (([objc_msgSend(v4 "captureSettings")] & 0x200) != 0)
    {
      v7 = [*(v6 + 184) controllerForType:9];
      if (v7)
      {
        v8 = v7;
        v9 = -[BWUBNode _bufferTypesForCaptureSettings:](v6, [v4 captureSettings]);
        OUTLINED_FUNCTION_25_16();
        v99[1] = 3221225472;
        v99[2] = __87__BWUBNode__setupProcessingStateForPointCloudDepthIfNeededWithSettings_processingPlan___block_invoke;
        v99[3] = &unk_1E7999390;
        v99[4] = v6;
        v99[5] = v8;
        v50 = v8;
        v53 = [MEMORY[0x1E695DF70] array];
        obj = [objc_msgSend(v4 captureSettings];
        v10 = [obj countByEnumeratingWithState:v97 objects:v96 count:16];
        if (v10)
        {
          v12 = v10;
          v13 = *v98;
          v51 = *v98;
          v52 = v4;
          do
          {
            v14 = 0;
            v54 = v12;
            do
            {
              OUTLINED_FUNCTION_87_3();
              if (v15 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(v97[1] + 8 * v14);
              v17 = OUTLINED_FUNCTION_95();
              if ([BWUBNode _processingNeededForSettings:v17 portType:v18])
              {
                v19 = -[BWJasperColorStillsExecutorInput initWithSettings:portType:timeOfFlightCameraType:]([BWJasperColorStillsExecutorInput alloc], "initWithSettings:portType:timeOfFlightCameraType:", v4, v16, [objc_msgSend(*(v6 + 136) "supplementalPointCloudCaptureDevice")]);
                v92 = 0u;
                v93 = 0u;
                v94 = 0u;
                v95 = 0u;
                v27 = OUTLINED_FUNCTION_149(v19, v20, v21, v22, v23, v24, v25, v26, v48, v49, v50, v51, v52, v53, v54, obj, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1), v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, 0);
                if (v27)
                {
                  v28 = v27;
                  do
                  {
                    v29 = 0;
                    do
                    {
                      OUTLINED_FUNCTION_21_20();
                      if (!v30)
                      {
                        objc_enumerationMutation(v9);
                      }

                      v31 = [*(*(&v92 + 1) + 8 * v29) intValue];
                      v32 = [v2 lastAddedInputForSequenceNumber:0 portType:v16 bufferType:v31];
                      if (v32)
                      {
                        if (!ubn_insertOutputRouterForInputAfterPreviousInputForBufferType(v99, v19, v32, v31))
                        {
                          goto LABEL_36;
                        }

                        OUTLINED_FUNCTION_104_3();
                        v32 = [v40 addInput:? sequenceNumber:? portType:? bufferType:?];
                      }

                      ++v29;
                    }

                    while (v28 != v29);
                    v41 = OUTLINED_FUNCTION_149(v32, v33, v34, v35, v36, v37, v38, v39, v48, v49, v50, v51, v52, v53, v54, obj, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1), v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
                    v28 = v41;
                  }

                  while (v41);
                }

                v4 = v52;
                if ([v16 isEqualToString:{objc_msgSend(objc_msgSend(v52, "captureSettings"), "masterPortType")}])
                {
                  [v53 insertObject:v19 atIndex:0];
                }

                else
                {
                  [v53 addObject:v19];
                }

                v13 = v51;
                v12 = v54;
              }

              ++v14;
            }

            while (v14 != v12);
            v10 = [obj countByEnumeratingWithState:v97 objects:v96 count:16];
            v12 = v10;
          }

          while (v10);
        }

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v42 = OUTLINED_FUNCTION_13_15(v10, v11, &v72, &v56);
        if (v42)
        {
          v43 = v42;
          do
          {
            for (i = 0; i != v43; ++i)
            {
              OUTLINED_FUNCTION_21_20();
              if (!v30)
              {
                objc_enumerationMutation(v53);
              }

              v45 = *(*(&v72 + 1) + 8 * i);
              [v50 enqueueInputForProcessing:v45 delegate:v6];
              [v45 portType];
              v46 = [OUTLINED_FUNCTION_121_1() setObject:v45 forKeyedSubscript:?];
            }

            v43 = OUTLINED_FUNCTION_13_15(v46, v47, &v72, &v56);
          }

          while (v43);
        }
      }
    }

LABEL_36:
    OUTLINED_FUNCTION_81();
  }
}

- (void)_processingOrderByPortTypeForSettings:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_80();
    v29 = [MEMORY[0x1E695DF70] array];
    v30 = [objc_msgSend(v27 captureSettings];
    OUTLINED_FUNCTION_43();
    v32 = [v31 countByEnumeratingWithState:? objects:? count:?];
    if (v32)
    {
      v33 = v32;
      v34 = *a27;
      do
      {
        v35 = 0;
        do
        {
          if (*a27 != v34)
          {
            objc_enumerationMutation(v30);
          }

          v36 = *(a26 + 8 * v35);
          if ([objc_msgSend(objc_msgSend(v27 "captureSettings")] && objc_msgSend(*(v28 + 152), "containsObject:", v36))
          {
            if ([v36 isEqualToString:{objc_msgSend(objc_msgSend(v27, "captureSettings"), "masterPortType")}])
            {
              [v29 insertObject:v36 atIndex:0];
            }

            else
            {
              [v29 addObject:v36];
            }
          }

          ++v35;
        }

        while (v33 != v35);
        OUTLINED_FUNCTION_43();
        v33 = OUTLINED_FUNCTION_52(v37, v38, v39, v40);
      }

      while (v33);
    }

    v41 = [v29 copy];
    OUTLINED_FUNCTION_56();
  }
}

- (id)_nextNRInputForPortType:(id *)result
{
  if (result)
  {
    memset(v9, 0, sizeof(v9));
    v2 = [result[32] objectForKeyedSubscript:a2];
    v3 = [v2 countByEnumeratingWithState:v9 objects:v8 count:16];
    if (v3)
    {
      v4 = v3;
LABEL_4:
      v5 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_49_7();
        if (!v6)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9[0] + 1) + 8 * v5);
        if (![v7 receivedAllFrames] || objc_msgSend(v7, "remainingProcessingCount") > 1)
        {
          break;
        }

        if (v4 == ++v5)
        {
          v4 = [v2 countByEnumeratingWithState:v9 objects:v8 count:16];
          v7 = 0;
          if (v4)
          {
            goto LABEL_4;
          }

          return v7;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    return v7;
  }

  return result;
}

- (void)_errorRecoveryBufferTypesForBufferTypes:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_58_2();
    v27 = v26;
    v28 = [MEMORY[0x1E695DF70] array];
    OUTLINED_FUNCTION_7_42();
    OUTLINED_FUNCTION_43();
    v29 = [v27 countByEnumeratingWithState:? objects:? count:?];
    if (!v29)
    {
      goto LABEL_20;
    }

    v30 = v29;
    while (1)
    {
      v31 = 0;
      do
      {
        OUTLINED_FUNCTION_49_7();
        if (!v33)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(a26 + 8 * v31) intValue];
        if (v32 == 2)
        {
          v34 = &unk_1F2248F88;
        }

        else
        {
          v33 = v32 == 13 || v32 == 7;
          if (v33)
          {
            v34 = &unk_1F2248FB8;
          }

          else
          {
            if (v32 != 5)
            {
              goto LABEL_18;
            }

            v34 = &unk_1F2248FA0;
          }
        }

        [v28 addObjectsFromArray:v34];
LABEL_18:
        ++v31;
      }

      while (v30 != v31);
      OUTLINED_FUNCTION_43();
      v30 = [v27 countByEnumeratingWithState:? objects:? count:?];
      if (!v30)
      {
LABEL_20:
        v35 = [v28 copy];
        OUTLINED_FUNCTION_56();
        return;
      }
    }
  }
}

void __67__BWUBNode__setupProcessingStateForInferenceWithSettings_portType___block_invoke_3()
{
  OUTLINED_FUNCTION_84();
  v3 = v2;
  OUTLINED_FUNCTION_135_3();
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v4 = *(v0 + 32);
  v5 = *(v4 + 392);
  *(v4 + 392) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v64[0] = @"PersonSemanticsSkin";
  v64[1] = @"PersonSemanticsHair";
  v64[2] = 0x1F21AAD30;
  v64[3] = 0x1F21AABB0;
  v64[4] = 0x1F219E750;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:5];
  BWInferenceLowResPersonInstanceMaskKeys();
  v6 = [OUTLINED_FUNCTION_7() arrayByAddingObjectsFromArray:?];
  v7 = [OUTLINED_FUNCTION_158(v6 @"StillSettings")];
  if ([(BWUBNodeConfiguration *)*(*(v0 + 32) + 144) semanticStyleRenderingEnabled])
  {
    v8 = [objc_msgSend(v7 "metadata")];
    if (!v8)
    {
      v8 = [OUTLINED_FUNCTION_75_5() smartCameraClassificationsFromSbuf:?];
    }

    [objc_msgSend(v7 "metadata")];
    if ([objc_msgSend(v7 "metadata")])
    {
      [objc_msgSend(v7 "metadata")];
    }
  }

  v46 = [OUTLINED_FUNCTION_75_5() faceObservationsFromSbuf:?];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = v3;
  [v3 stillImageSettings];
  v11 = OUTLINED_FUNCTION_47();
  [(BWUBNode *)v11 _inferenceAttachedMediaRequiredForDemosaicedRawCaptureWithInferenceOutputSampleBuffer:v1 stillImageSettings:v12, v13, v14, v15, v16, v17, v43, v44, v45, v46, v3, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62[0]];
  v19 = v18;
  if ([v18 count])
  {
    [v9 addObjectsFromArray:v19];
  }

  [v3 stillImageSettings];
  v20 = OUTLINED_FUNCTION_47();
  v23 = [(BWUBNode *)v20 _inferenceAttachedMediaRequiredForDepthProcessing:v21 stillImageSettings:v22];
  if ([v23 count])
  {
    [v9 addObjectsFromArray:v23];
  }

  if (*(v0 + 40) == 1)
  {
    if ([v9 count])
    {
      v24 = [MEMORY[0x1E695DF90] dictionary];
      if ([v9 containsObject:@"PersonSemanticsSkin"])
      {
        v25 = [OUTLINED_FUNCTION_75_5() inferenceMaskSbufFromSbuf:? attachedMediaKey:?];
        if (CMGetAttachment(v25, *off_1E798D2E0, 0))
        {
          [OUTLINED_FUNCTION_47() setObject:? forKeyedSubscript:?];
        }
      }

      if ([v9 containsObject:0x1F21AAD30])
      {
        v26 = [OUTLINED_FUNCTION_75_5() inferenceMaskSbufFromSbuf:? attachedMediaKey:?];
        if (CMGetAttachment(v26, *off_1E798D2E0, 0))
        {
          [OUTLINED_FUNCTION_47() setObject:? forKeyedSubscript:?];
        }
      }

      if ([v9 containsObject:0x1F21AABB0])
      {
        v27 = [OUTLINED_FUNCTION_75_5() inferenceMaskSbufFromSbuf:? attachedMediaKey:?];
        if (CMGetAttachment(v27, *off_1E798D2D8, 0))
        {
          [OUTLINED_FUNCTION_47() setObject:? forKeyedSubscript:?];
        }
      }

      if ([v24 count])
      {
        v28 = v24;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = objc_alloc_init(BWStillImageInferences);
    *(*(v0 + 32) + 384) = v29;
    memset(v63, 0, sizeof(v63));
    v31 = OUTLINED_FUNCTION_52(v29, v30, v63, v62);
    if (v31)
    {
      v32 = v31;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          OUTLINED_FUNCTION_21_20();
          if (!v34)
          {
            objc_enumerationMutation(v6);
          }

          [OUTLINED_FUNCTION_75_5() inferenceMaskFromSbuf:? attachedMediaKey:?];
          v35 = [OUTLINED_FUNCTION_40_13() addInferenceBuffer:? metadata:? inferenceAttachedMediaKey:?];
        }

        v32 = OUTLINED_FUNCTION_52(v35, v36, v63, v62);
      }

      while (v32);
    }

    [OUTLINED_FUNCTION_75_5() lowResPersonInstanceConfidencesFromSbuf:?];
    [OUTLINED_FUNCTION_40_13() addInference:? inferenceAttachmentKey:?];
    [OUTLINED_FUNCTION_75_5() lowResPersonInstanceBoundingBoxesFromSbuf:?];
    [OUTLINED_FUNCTION_40_13() addInference:? inferenceAttachmentKey:?];
    [OUTLINED_FUNCTION_75_5() skinToneClassificationsFromSbuf:?];
    [OUTLINED_FUNCTION_40_13() addInference:? inferenceAttachmentKey:?];
    [OUTLINED_FUNCTION_40_13() addInference:v47 inferenceAttachmentKey:0x1F219E5F0];
    if (v28)
    {
      [OUTLINED_FUNCTION_40_13() addInferenceAttachedMediaMetadata:v28];
    }

    v10 = v48;
    [v48 portType];
    if ([OUTLINED_FUNCTION_8() objectForKeyedSubscript:?])
    {
      v37 = *(v0 + 32);
      v56 = MEMORY[0x1E69E9820];
      v57 = 3221225472;
      v58 = __67__BWUBNode__setupProcessingStateForInferenceWithSettings_portType___block_invoke_4;
      v59 = &unk_1E798F898;
      v60 = v37;
      v61 = v48;
      [(BWUBNode *)v37 _deepFusionDispatch:2 direction:&v56 block:?];
    }
  }

  if (*(v0 + 41) == 1)
  {
    v38 = [v10 propagationImage];
    if (v38)
    {
      CFRetain(v38);
    }

    OUTLINED_FUNCTION_58_11();
    v65[1] = v39;
    OUTLINED_FUNCTION_8_40();
    v65[2] = v40;
    v65[3] = &unk_1E798FEA0;
    v65[4] = v41;
    dispatch_async(v42, v65);
  }

  OUTLINED_FUNCTION_81();
}

- (uint64_t)_inferenceAttachedMediaRequiredForDepthProcessing:(void *)a3 stillImageSettings:
{
  if (!a1 || ([objc_msgSend(a3 "captureSettings")] & 0x800) == 0)
  {
    return 0;
  }

  v4 = [(BWUBNodeConfiguration *)*(a1 + 144) providedInferenceAttachedMediaByMode];

  return [v4 objectForKeyedSubscript:&unk_1F22450D0];
}

void __67__BWUBNode__setupProcessingStateForInferenceWithSettings_portType___block_invoke_5(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_86_3(a1);
  v3 = [(BWUBNode *)v2 _ubRERRouter];
  (*(v3 + 2))(v3, *(v1 + 48), 1, *(v1 + 40), 0);
  v4 = *(v1 + 48);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __53__BWUBNode__standardNROutputRouterWithExpectedQueue___block_invoke()
{
  OUTLINED_FUNCTION_84();
  v30 = v2;
  OUTLINED_FUNCTION_113();
  v4 = v3;
  v6 = v5;
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v7 = [(BWUBNode *)*(v6 + 40) _waitForInferenceIfNeededForProcessorInput:v0];
  v8 = *(v6 + 40);
  if (v7 && *(v8 + 392))
  {
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_81_2();
      OUTLINED_FUNCTION_68_4();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v38);
      OUTLINED_FUNCTION_97_0();
      if (v10)
      {
        v14 = v13;
      }

      else
      {
        v14 = v39;
      }

      if (v14)
      {
        v32 = 136315650;
        v33 = "[BWUBNode _standardNROutputRouterWithExpectedQueue:]_block_invoke";
        v34 = 2112;
        v35 = BWStillImageBufferTypeToShortString(v1);
        v36 = 2112;
        v37 = v0;
        OUTLINED_FUNCTION_29_12();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_128();
      v8 = *(v6 + 40);
    }

    v15 = *(v8 + 352);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__BWUBNode__standardNROutputRouterWithExpectedQueue___block_invoke_362;
    block[3] = &unk_1E798FE50;
    block[5] = v0;
    block[6] = v4;
    block[4] = v8;
    dispatch_sync(v15, block);
  }

  else if (*(v8 + 384) && [*(v8 + 144) deferredPhotoProcessorEnabled])
  {
    if (dword_1EB58E340)
    {
      OUTLINED_FUNCTION_81_2();
      OUTLINED_FUNCTION_68_4();
      v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v29, v38);
      OUTLINED_FUNCTION_97_0();
      if (v10)
      {
        v11 = v9;
      }

      else
      {
        v11 = v39;
      }

      if (v11)
      {
        v32 = 136315650;
        v33 = "[BWUBNode _standardNROutputRouterWithExpectedQueue:]_block_invoke_2";
        v34 = 2112;
        v35 = BWStillImageBufferTypeToShortString(v1);
        v36 = 2112;
        v37 = v0;
        OUTLINED_FUNCTION_29_12();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_128();
    }

    v16 = [-[BWUBNodeConfiguration providedInferenceAttachedMediaByMode](*(*(v6 + 40) + 144)) objectForKeyedSubscript:&unk_1F22450B8];
    if ([v16 count])
    {
      OUTLINED_FUNCTION_47_0();
      v17 = [v16 countByEnumeratingWithState:? objects:? count:?];
      if (v17)
      {
        v18 = v17;
        v19 = MEMORY[0];
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (MEMORY[0] != v19)
            {
              objc_enumerationMutation(v16);
            }

            BWPropagateInferenceAttachedMedia(*(*(v6 + 40) + 384), *(8 * i), (*(v6 + 40) + 416), v4);
          }

          OUTLINED_FUNCTION_47_0();
          v18 = [v16 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v18);
      }
    }
  }

  IsBayerRaw = FigCaptureSushiRawDNGDictionaryCreatedInGraph();
  if (IsBayerRaw)
  {
    IsBayerRaw = FigCapturePixelFormatIsBayerRaw([objc_msgSend(v0 "settings")]);
    if (IsBayerRaw)
    {
      v22 = [objc_msgSend(v0 "settings")];
      v23 = [objc_msgSend(v0 "settings")];
      v24 = [objc_msgSend(OUTLINED_FUNCTION_158(v23 *off_1E798A3C8)] != 0;
      IsBayerRaw = [(BWUBNode *)*(v6 + 40) _propagateSushiRawDNGDictionaryWithOutputSampleBuffer:v4 requestedDimensions:v22 | (v23 << 32) requiresGDCInformation:v24];
    }
  }

  if (v30)
  {
    v26 = OUTLINED_FUNCTION_158(IsBayerRaw, *off_1E798A3C8);
    v27 = *(v6 + 40);
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"type '%@' requested for '%@'", BWStillImageBufferTypeToShortString(v1), v0];
    [(BWUBNode *)v27 _emitError:v30 processorInput:v0 metadata:v26 description:v28];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"buffer of type '%@' requested for '%@'", BWStillImageBufferTypeToShortString(v1), v0];
    v25 = OUTLINED_FUNCTION_4();
    [BWUBNode _emitSampleBuffer:v25 description:?];
  }

  OUTLINED_FUNCTION_81();
}

void __29__BWUBNode__releaseResources__block_invoke_2(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_86_3(a1);
  [(BWUBNode *)v2 _resetProcessingState];

  *(*(v1 + 32) + 160) = 0;
}

- (void)didReachEndOfDataForInput:.cold.1()
{
  OUTLINED_FUNCTION_80();
  [(BWUBNode *)v2 _releaseResources];
  OUTLINED_FUNCTION_64_7();
  v0[1] = 3221225472;
  v0[2] = __38__BWUBNode_didReachEndOfDataForInput___block_invoke_7;
  v0[3] = &unk_1E798F870;
  v0[4] = v1;
  OUTLINED_FUNCTION_7_1();
  v7 = v3;
  OUTLINED_FUNCTION_9_40();
  v8 = v4;
  v9 = &unk_1E798FEA0;
  v10 = v0;
  dispatch_async(v5, block);
}

- (void)handleNodeError:(uint64_t)a3 forInput:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = MEMORY[0x1E69E9820];
  a2[1] = 3221225472;
  a2[2] = __37__BWUBNode_handleNodeError_forInput___block_invoke_2;
  a2[3] = &unk_1E798F898;
  a2[4] = a1;
  a2[5] = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  OUTLINED_FUNCTION_8_40();
  block[2] = v3;
  block[3] = &unk_1E798FEA0;
  block[4] = v4;
  dispatch_async(v5, block);
}

- (uint64_t)processorController:didFinishProcessingSampleBuffer:type:processorInput:err:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingSampleBuffer:type:processorInput:err:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingSampleBuffer:type:processorInput:err:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingInput:err:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (void)processorController:(void *)a1 didFinishProcessingInput:(uint64_t)a2 err:(uint64_t)a3 .cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 description];

  [(BWUBNode *)a2 _emitError:a3 processorInput:a1 metadata:0 description:v6];
}

- (void)processorController:(void *)a3 didFinishProcessingInput:(uint64_t)a4 err:.cold.3(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_134_3();
  if (([(BWUBNode *)v8 _waitForInferenceIfNeededForProcessorInput:v9]& 1) != 0)
  {
    if (*(v5 + 392))
    {
      OUTLINED_FUNCTION_64_7();
      a3[1] = 3221225472;
      a3[2] = __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_8;
      a3[3] = &unk_1E798FD58;
      a3[4] = v5;
      a3[5] = a4;
      a3[6] = v4;
      dispatch_sync(v10, a3);
    }
  }
}

- (void)processorController:(uint64_t)a1 didFinishProcessingInput:(char)a2 err:(void *)a3 .cold.4(uint64_t a1, char a2, void *a3)
{
  v6 = [CMGetAttachment(*(a1 + 616) @"StillImageProcessingFlags"];
  if (a2)
  {
    v7 = @"proxy";
  }

  else
  {
    if ((v6 & 0x1000) != 0)
    {
      CMSetAttachment(*(a1 + 616), @"StillImageProcessingFlags", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6 & 0xFFFFAFFF | 0x4000], 1u);
    }

    v7 = @"error recovery";
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", BWPhotoEncoderStringFromEncodingScheme(objc_msgSend(objc_msgSend(a3, "captureSettings"), "captureType")), v7];
  v8 = OUTLINED_FUNCTION_17();
  [BWUBNode _emitSampleBuffer:v8 description:?];
  v9 = OUTLINED_FUNCTION_3_19();
  [(BWUBNode *)v9 _processorControllerDidFinishProcessingInputForPortType:v10 processorType:14];
  [(BWUBNode *)a1 _resetProcessingStateIfDone];
}

- (uint64_t)processorController:didFinishProcessingInput:err:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingInput:err:.cold.6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingInput:err:.cold.7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingInput:err:.cold.8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingInput:err:.cold.9()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingInput:err:.cold.10()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingInput:err:.cold.11()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

void __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_113();
  v3 = v2;
  [(BWUBNode *)v4 _resetProcessingState];
  v5 = *v3;
  v6 = *v1;
  v7 = *(v0 + 40);

  [(BWUBNode *)v5 _emitError:v6 processorInput:v7 metadata:0 description:@"Deferred Processing failure"];
}

void __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_5_cold_2()
{
  OUTLINED_FUNCTION_113();
  v3 = v2;
  [(BWUBNode *)v4 _processorControllerDidFinishProcessingInputForPortType:*(v2 + 64) processorType:?];
  if ([objc_msgSend(*(v3 + 56) "captureSettings")] == 12)
  {
    *v1 = MEMORY[0x1E69E9820];
    *(v1 + 8) = 3221225472;
    *(v1 + 16) = __61__BWUBNode_processorController_didFinishProcessingInput_err___block_invoke_6;
    *(v1 + 24) = &unk_1E798F898;
    v5 = *v0;
    *(v1 + 32) = *v0;
    [(BWUBNode *)v5 _deepFusionDispatch:2 direction:v1 block:?];
  }

  [(BWUBNode *)*v0 _resetProcessingStateIfDone];
}

- (uint64_t)processorController:didFinishProcessingInferenceBuffer:metadata:inferenceAttachedMediaKey:processorInput:err:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingInference:inferenceAttachmentKey:processorInput:err:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingInferenceAttachedMediaMetadata:processorInput:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

void __74__BWUBNode__setupProcessingStateForDeepFusionWithSettings_processingPlan___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_113();
  [MEMORY[0x1E696AEC0] stringWithFormat:@"buffer of type '%@' requested for '%@'", BWStillImageBufferTypeToShortString(v1), v0];
  v2 = OUTLINED_FUNCTION_8();

  [BWUBNode _emitSampleBuffer:v2 description:?];
}

uint64_t __82__BWUBNode__setupProcessingStateForSingleImageCaptureWithSettings_processingPlan___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __76__BWUBNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __76__BWUBNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

void __76__BWUBNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_2_cold_2(id **a1, void *a2, uint64_t a3)
{
  v5 = -[BWUBNode _nextNRInputForPortType:](*a1, [a2 portType]);
  [v5 addFrame:a3];
  [(BWUBNode *)*a1 _handleReferenceFrameEmissionForProcessorInput:v5];
}

uint64_t __147__BWUBNode__setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings_sequenceNumber_portType_queueProvidingInput_processingPlan___block_invoke_281_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __87__BWUBNode__setupProcessingStateForJasperDisparityIfNeededWithSettings_processingPlan___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __87__BWUBNode__setupProcessingStateForPointCloudDepthIfNeededWithSettings_processingPlan___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __31__BWUBNode__nrOutputSbufRouter__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __35__BWUBNode__ubInferenceInputRouter__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __35__BWUBNode__ubInferenceInputRouter__block_invoke_cold_2(void *a1)
{
  v1 = [objc_msgSend(a1 "stillImageSettings")];
  result = [v1 captureType];
  if (result == 12)
  {

    return [v1 deliverDeferredPhotoProxyImage];
  }

  return result;
}

uint64_t __24__BWUBNode__ubRERRouter__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

@end