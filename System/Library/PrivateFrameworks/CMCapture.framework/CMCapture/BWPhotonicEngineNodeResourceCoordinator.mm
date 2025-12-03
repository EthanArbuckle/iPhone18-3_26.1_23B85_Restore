@interface BWPhotonicEngineNodeResourceCoordinator
+ (void)initialize;
- (BOOL)hasSuccessfullySetupProcessorControllersAndMemoryResources;
- (BWPhotonicEngineNodeResourceCoordinator)initWithNodeConfiguration:(id)configuration nodeInput:(id)input nodeOutput:(id)output;
- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)type;
- (id)attachedMediaFromInferencesOrSampleBuffer:(opaqueCMSampleBuffer *)buffer attachedMediaKeys:(id)keys;
- (id)pixelBufferProviderForInferencesWithResolutionFlavor:(int)flavor;
- (id)pixelBufferProviderForProcessorController:(id)controller processorInput:(id)input type:(unint64_t)type dimensions:(id)dimensions pixelFormat:(unsigned int)format attachedMediaKey:(id)key;
- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)key format:(id)format;
- (id)processorControllersForSharedExternalMemoryResource;
- (id)syncGetInferencesForInferenceInputBufferType:(unint64_t)type;
- (id)waitAndSafelyGetProcessorControllerForType:(unint64_t)type;
- (int)liveReconfigureIfNeeded;
- (int)setupProcessorControllersAndMemoryResources;
- (uint64_t)_inferenceOutputPixelBufferPoolForAttachedMediaKey:(void *)key output:;
- (uint64_t)_requiredResolutionFlavorsForSharedExternalMemoryResourceWithSettings:(uint64_t)result;
- (unint64_t)_deepFusionEnhancedResolutionOutputDimensionsForOutput:(uint64_t)output;
- (unint64_t)_disparityProcessorInputDimensionsForInputVideoFormat:(uint64_t)format;
- (unint64_t)_resolvedAdditionalProcessingDimensionsWithAdditionalSourceDimensions:(unint64_t)dimensions standardSoftISPOutputDimensions:;
- (void)_ensureProcessorCoordinatorSetupForPostponedProcessors;
- (void)asyncSetInference:(id)inference inferenceAttachmentKey:(id)key;
- (void)asyncSetInferenceAttachedMediaMetadata:(id)metadata;
- (void)asyncSetInferenceBuffer:(__CVBuffer *)buffer metadata:(id)metadata inferenceAttachedMediaKey:(id)key;
- (void)cancelAllProcessing;
- (void)clearEnhancedResolutionPortraitSemaphoreWithError:(int)error;
- (void)createAndWaitOnEnhancedResolutionPortraitSemaphore;
- (void)dealloc;
- (void)flushSoftISPOutputBufferPools;
- (void)flushUltraHighResolutionBufferPools;
- (void)kickoffAnyPostonedResourceAllocations;
- (void)postponedProcessorForType:(unint64_t)type safelyExecuteBlockWhenReady:(id)ready;
- (void)prepareSharedExternalMemoryResourceForProcessorControllersIfNeededWithSettings:(id)settings;
- (void)purgeProcessorAndSharedExternalMemoryResourceBackendMemoryIfNeededWithSettings:(id)settings;
- (void)releaseResources;
- (void)releaseResourcesWithSettings:(id)settings;
- (void)syncMergeInferencesWithSampleBuffer:(opaqueCMSampleBuffer *)buffer stillImageSettings:(id)settings;
- (void)syncReleaseInferencesForInferenceInputBufferType:(unint64_t)type;
- (void)unsafeSetInferences:(id)inferences forInferenceInputBufferType:(unint64_t)type;
@end

@implementation BWPhotonicEngineNodeResourceCoordinator

- (BOOL)hasSuccessfullySetupProcessorControllersAndMemoryResources
{
  os_unfair_lock_lock(&self->_resourceCoordinatorLock);
  hasSuccessfullySetupProcessorControllersAndMemoryResources = self->_hasSuccessfullySetupProcessorControllersAndMemoryResources;
  os_unfair_lock_unlock(&self->_resourceCoordinatorLock);
  return hasSuccessfullySetupProcessorControllersAndMemoryResources;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWPhotonicEngineNodeResourceCoordinator)initWithNodeConfiguration:(id)configuration nodeInput:(id)input nodeOutput:(id)output
{
  v11.receiver = self;
  v11.super_class = BWPhotonicEngineNodeResourceCoordinator;
  v8 = [(BWStillImageProcessorCoordinator *)&v11 initWithProcessorControllers:0];
  if (v8)
  {
    v8->_output = output;
    v8->_input = input;
    v8->_resourceCoordinatorLock._os_unfair_lock_opaque = 0;
    configurationCopy = configuration;
    v8->_nodeConfiguration = configurationCopy;
    [(BWStillImageNodeConfiguration *)configurationCopy figThreadPriority];
    v8->_workerQueue = FigDispatchQueueCreateWithPriority();
    [(BWStillImageNodeConfiguration *)v8->_nodeConfiguration figThreadPriority];
    v8->_emitQueue = FigDispatchQueueCreateWithPriority();
    if ([(BWPhotonicEngineNodeConfiguration *)v8->_nodeConfiguration postponeSelectResourceAlloctions])
    {
      [(BWStillImageNodeConfiguration *)v8->_nodeConfiguration figThreadPriority];
      v8->_postponedResourceSetupQueue = FigDispatchQueueCreateWithPriority();
      v8->_postponedResourceSetupGroup = dispatch_group_create();
    }

    [(BWStillImageNodeConfiguration *)v8->_nodeConfiguration figThreadPriority];
    v8->_inferenceControllerQueue = FigDispatchQueueCreateWithPriority();
    if ([(BWPhotonicEngineNodeConfiguration *)v8->_nodeConfiguration inferenceControllerConfiguration])
    {
      v8->_inferenceControllerGroup = dispatch_group_create();
    }

    if ([(BWPhotonicEngineNodeConfiguration *)v8->_nodeConfiguration stereoDisparityProcessorControllerConfiguration])
    {
      [(BWStillImageNodeConfiguration *)v8->_nodeConfiguration figThreadPriority];
      v8->_stereoDisparityProcessorControllerQueue = FigDispatchQueueCreateWithPriority();
    }

    if ([(BWPhotonicEngineNodeConfiguration *)v8->_nodeConfiguration deferredProcessorControllerConfiguration])
    {
      [(BWStillImageNodeConfiguration *)v8->_nodeConfiguration figThreadPriority];
      v8->_deferredProcessorControllerQueue = FigDispatchQueueCreateWithPriority();
    }

    v8->_useSharedExternalMemoryResourceForProcessorControllers = 1;
    v8->_postponedProcessorTypes = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_enhancedResolutionPortraitSemaphoreLock._os_unfair_lock_opaque = 0;
    v8->_inferenceAttachedMediaFormatDescriptionByAttachedMediaKey = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v8;
}

- (void)cancelAllProcessing
{
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{12), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{6), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{2), "cancelProcessing"}];
  inferenceControllerQueue = self->_inferenceControllerQueue;
  if (inferenceControllerQueue)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__BWPhotonicEngineNodeResourceCoordinator_cancelAllProcessing__block_invoke;
    v8[3] = &unk_1E798F870;
    v8[4] = self;
    ubn_dispatch_sync(inferenceControllerQueue, v8);
  }

  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{7), "cancelProcessing"}];
  [-[BWPhotonicEngineNodeResourceCoordinator waitAndSafelyGetProcessorControllerForType:](self waitAndSafelyGetProcessorControllerForType:{10), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{18), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{16), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{15), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{4), "cancelProcessing"}];
  stereoDisparityProcessorControllerQueue = self->_stereoDisparityProcessorControllerQueue;
  if (stereoDisparityProcessorControllerQueue)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__BWPhotonicEngineNodeResourceCoordinator_cancelAllProcessing__block_invoke_2;
    v7[3] = &unk_1E798F870;
    v7[4] = self;
    ubn_dispatch_sync(stereoDisparityProcessorControllerQueue, v7);
  }

  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{9), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{13), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{11), "cancelProcessing"}];
  [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{14), "cancelProcessing"}];
  v5 = self->_inferenceControllerQueue;
  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__BWPhotonicEngineNodeResourceCoordinator_cancelAllProcessing__block_invoke_3;
    v6[3] = &unk_1E798F870;
    v6[4] = self;
    ubn_dispatch_sync(v5, v6);
  }
}

uint64_t __62__BWPhotonicEngineNodeResourceCoordinator_cancelAllProcessing__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) controllerForType:3];

  return [v1 cancelProcessing];
}

uint64_t __62__BWPhotonicEngineNodeResourceCoordinator_cancelAllProcessing__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) controllerForType:8];

  return [v1 cancelProcessing];
}

void __62__BWPhotonicEngineNodeResourceCoordinator_cancelAllProcessing__block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 336) = 0;

  *(*(a1 + 32) + 344) = 0;
  *(*(a1 + 32) + 352) = 0;
}

- (void)releaseResources
{
  self->_nodeConfiguration = 0;

  self->_input = 0;
  self->_output = 0;
  [(BWPhotonicEngineNodeResourceCoordinator *)self clearEnhancedResolutionPortraitSemaphoreWithError:0];

  self->_noiseReductionAndFusionProcessorOutputIntermediatePool = 0;
  self->_deepFusionEnhancedResolutionGainMapPool = 0;

  self->_deepZoomTransferHighResolutionInputPool = 0;
  self->_deepZoomTransferEnhancedResolutionOutputPool = 0;

  self->_deepFusionEnhancedResolutionOutputPool = 0;
  self->_deepFusionEnhancedResolutionSemanticStyleOutputPool = 0;

  self->_smartStyleEnhancedResolutionOutputPool = 0;
  self->_smartStyleUltraHighResolutionOutputPool = 0;

  self->_distortionCorrectionEnhancedResolutionOutputPool = 0;
  self->_softISPOutputPoolByPixelFormat = 0;

  self->_rawNightModeDenoisedImagePool = 0;
  self->_rawNightModeNoiseMapPool = 0;

  self->_syntheticIntermediatesPool = 0;
  self->_fusionMapPool = 0;

  self->_inferenceOutputPixelBufferProvidersByAttachedMediaKey = 0;
  self->_intermediateInferenceInputPool = 0;

  self->_inferenceInputPixelBufferProviderByResolutionFlavor = 0;
  self->_stereoPhotoOutputPool = 0;

  self->_pixelBufferProviderByPixelFormatByResolutionFlavor = 0;
  os_unfair_lock_lock(&self->_resourceCoordinatorLock);

  self->_adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderByPortType = 0;
  os_unfair_lock_unlock(&self->_resourceCoordinatorLock);

  self->_postponedResourceSetupQueue = 0;
  self->_postponedResourceSetupGroup = 0;

  self->_inferenceControllerQueue = 0;
  self->_inferenceControllerGroup = 0;

  self->_workerQueue = 0;
  self->_stereoDisparityProcessorControllerQueue = 0;
  deferredProcessorControllerQueue = self->_deferredProcessorControllerQueue;
  if (deferredProcessorControllerQueue)
  {
    ubn_dispatch_sync(deferredProcessorControllerQueue, &__block_literal_global_75);

    self->_deferredProcessorControllerQueue = 0;
  }

  self->_sharedExternalMemoryResourceSetUpForResolutionFlavors = 0;
  self->_sharedExternalMemoryResource = 0;

  [(BWStillImageProcessorCoordinator *)self releaseControllers];
}

- (void)dealloc
{
  [(BWPhotonicEngineNodeResourceCoordinator *)self releaseResources];

  v3.receiver = self;
  v3.super_class = BWPhotonicEngineNodeResourceCoordinator;
  [(BWStillImageProcessorCoordinator *)&v3 dealloc];
}

- (int)setupProcessorControllersAndMemoryResources
{
  selfCopy = self;
  if ([(BWPhotonicEngineNodeResourceCoordinator *)self hasSuccessfullySetupProcessorControllersAndMemoryResources])
  {
    return 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (dword_1EB58E040)
  {
    v844 = 0;
    v843 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigDebugIsInternalBuild();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 0];
  mach_absolute_time();
  [array addObject:v4];
  v665 = [MEMORY[0x1E695DFA8] set];
  p_output = &selfCopy->_output;
  memoryPool = [(BWNodeOutput *)selfCopy->_output memoryPool];
  if (![(BWNodeInput *)selfCopy->_input videoFormat])
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v624 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v624, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(v841) = 0;
    v627 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v627, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNodeResourceCoordinator.m", 370, @"LastShownDate:BWPhotonicEngineNodeResourceCoordinator.m:370", @"LastShownBuild:BWPhotonicEngineNodeResourceCoordinator.m:370", 0);
    goto LABEL_813;
  }

  v661 = v4;
  p_input = &selfCopy->_input;
  if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration requiresResizedOutputDimensionsWithInputDimensions:[(BWVideoFormat *)[(BWNodeInput *)selfCopy->_input videoFormat] width]| ([(BWVideoFormat *)[(BWNodeInput *)selfCopy->_input videoFormat] height]<< 32)])
  {
    FigDebugIsInternalBuild();
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 2];
    mach_absolute_time();
    [array addObject:v5];
    if ([objc_msgSend(-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "intelligentDistortionCorrectionProcessorControllerConfiguration")])
    {
      v6 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [objc_msgSend(*p_output "videoFormat")]);
      -[BWVideoFormatRequirements setWidth:](v6, "setWidth:", [objc_msgSend(*p_input "videoFormat")]);
      -[BWVideoFormatRequirements setHeight:](v6, "setHeight:", [objc_msgSend(*p_input "videoFormat")]);
      -[BWVideoFormatRequirements setWidthAlignment:](v6, "setWidthAlignment:", [objc_msgSend(*p_input "videoFormat")]);
      -[BWVideoFormatRequirements setHeightAlignment:](v6, "setHeightAlignment:", [objc_msgSend(*p_input "videoFormat")]);
      v840 = v6;
      v7 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v840 count:1]);
      v8 = [objc_msgSend(*p_input "videoFormat")];
      if (v8 != [v7 extendedWidth])
      {
        goto LABEL_681;
      }

      v9 = [objc_msgSend(*p_input "videoFormat")];
      if (v9 != [v7 extendedHeight])
      {
        goto LABEL_681;
      }

      v10 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v7, [objc_msgSend(*p_output "preparedPixelBufferPool")], @"Noise Reduction and Fusion Processor Output Intermediate Pool", memoryPool);
      selfCopy->_noiseReductionAndFusionProcessorOutputIntermediatePool = v10;
      if (!v10)
      {
        goto LABEL_681;
      }

      if (dword_1EB58E040)
      {
        v844 = 0;
        v843 = OS_LOG_TYPE_DEFAULT;
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v12 = v844;
        if (os_log_type_enabled(v11, v843))
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFE;
        }

        if (v13)
        {
          mach_absolute_time();
          v14 = FigHostTimeToNanoseconds();
          v763 = 136315650;
          v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
          v765 = 2114;
          v766 = v5;
          v767 = 2048;
          v768 = (v14 / 1000) / 1000.0;
          LODWORD(v656) = 32;
          v631 = &v763;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [array removeLastObject];
      goto LABEL_18;
    }

    v625 = FigCaptureGetFrameworkRadarComponent();
    v844 = 0;
    v843 = OS_LOG_TYPE_DEFAULT;
    v626 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v626, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    outputDimensions = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration outputDimensions];
    outputDimensions2 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration outputDimensions];
    v841 = 67109376;
    *v842 = outputDimensions;
    *&v842[4] = 1024;
    *&v842[6] = HIDWORD(outputDimensions2);
    v627 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v625, v627, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNodeResourceCoordinator.m", 382, @"LastShownDate:BWPhotonicEngineNodeResourceCoordinator.m:382", @"LastShownBuild:BWPhotonicEngineNodeResourceCoordinator.m:382", 0);
LABEL_813:
    free(v627);
    goto LABEL_681;
  }

LABEL_18:
  smartStyleRenderingProcessorControllerConfiguration = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration smartStyleRenderingProcessorControllerConfiguration];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dimensionsByResolutionFlavorByPortType = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
  v17 = BWCommonDimensionsForResolutionFlavor(dimensionsByResolutionFlavorByPortType, 2);
  v18 = HIDWORD(v17);
  v20 = v17 > 0 && SHIDWORD(v17) > 0;
  obj = v20;
  v686 = v17;
  v687 = HIDWORD(v17);
  if (v20)
  {
    v692 = FigCaptureRoundFloatToMultipleOf(2, (([objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")] / objc_msgSend(objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "nrfProcessorControllerConfiguration"), "inputFormat"), "height")) / (v17 / HIDWORD(v17))) * v17);
    if (dword_1EB58E040)
    {
      v844 = 0;
      v843 = OS_LOG_TYPE_DEFAULT;
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v22 = v844;
      if (os_log_type_enabled(v21, v843))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        v24 = BWStringFromDimensions();
        v763 = 136315394;
        v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
        v765 = 2114;
        v766 = v24;
        LODWORD(v656) = 22;
        v630 = &v763;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      LODWORD(v18) = v687;
    }

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v680 = v18;
  }

  else
  {
    v680 = 0;
    v692 = 0;
    dictionary3 = 0;
  }

  v664 = [(BWPhotonicEngineNodeResourceCoordinator *)selfCopy _deepFusionEnhancedResolutionOutputDimensionsForOutput:?];
  array2 = [MEMORY[0x1E695DF70] array];
  v836 = 0u;
  v837 = 0u;
  v838 = 0u;
  v839 = 0u;
  v26 = [&unk_1F2248C28 countByEnumeratingWithState:&v836 objects:v835 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v837;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v837 != v28)
        {
          objc_enumerationMutation(&unk_1F2248C28);
        }

        v30 = *(*(&v836 + 1) + 8 * i);
        dimensionsByResolutionFlavorByPortType2 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
        if (BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType2, [v30 intValue]))
        {
          [array2 addObject:v30];
        }
      }

      v27 = [&unk_1F2248C28 countByEnumeratingWithState:&v836 objects:v835 count:16];
    }

    while (v27);
  }

  dimensionsByResolutionFlavorByPortType3 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
  v33 = BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType3, 5);
  if (v33)
  {
    [array2 addObject:&unk_1F2244B18];
  }

  dimensionsByResolutionFlavorByPortType4 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
  v35 = BWDimensionsWithResolutionFlavor(dimensionsByResolutionFlavorByPortType4, 1);
  v36 = 0x1E696A000uLL;
  v37 = array;
  v698 = array2;
  v662 = dictionary;
  if (![(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration softISPProcessorControllerConfiguration])
  {
    v51 = 0;
    goto LABEL_355;
  }

  FigDebugIsInternalBuild();
  v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 3];
  mach_absolute_time();
  v659 = v38;
  [array addObject:v38];
  v688 = [[BWSoftISPProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration softISPProcessorControllerConfiguration]];
  if (!v688)
  {
    [BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources];
    goto LABEL_681;
  }

  FigDebugIsInternalBuild();
  v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 4];
  mach_absolute_time();
  v658 = v39;
  [array addObject:v39];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  if (v33)
  {
    [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")];
  }

  if (([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")] & 1) != 0 || (objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "nrfProcessorControllerConfiguration"), "lowLightFusionEnabled") & 1) != 0 || (objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "nrfProcessorControllerConfiguration"), "rawNightModeEnabled") & 1) != 0 || objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "nrfProcessorControllerConfiguration"), "demosaicedRawEnabled") && !-[BWStillImageNodeConfiguration deferredPhotoProcessorEnabled](selfCopy->_nodeConfiguration, "deferredPhotoProcessorEnabled"))
  {
    v40 = [(BWSoftISPProcessorController *)v688 outputPixelFormatForCaptureType:10 processingMode:0];
    v41 = objc_alloc_init(BWVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v41, "setWidth:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
    -[BWVideoFormatRequirements setHeight:](v41, "setHeight:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")] >> 32);
    [(BWVideoFormatRequirements *)v41 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v41 setHeightAlignment:16];
    v834 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v40];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v41, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v834 count:1]);
    v833 = v41;
    v42 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v833 count:1]);
    v43 = [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
    v44 = [BWPixelBufferPool alloc];
    if (v43)
    {
      v45 = 8;
    }

    else
    {
      v45 = 1;
    }

    v46 = [(BWPixelBufferPool *)v44 initWithVideoFormat:v42 capacity:v45 name:@"YUV SoftISP output pool" memoryPool:memoryPool];
    if (!v46)
    {
      [BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources];
      goto LABEL_681;
    }

    v47 = v46;
    [dictionary4 setObject:v46 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v40)}];
  }

  else
  {
    LODWORD(v40) = 0;
  }

  if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration swfrProcessorControllerConfiguration])
  {
    v48 = [(BWSoftISPProcessorController *)v688 outputPixelFormatForCaptureType:2 processingMode:0];
    v49 = [dictionary4 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v48)}];
    if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration redEyeProcessorControllerConfiguration])
    {
      capacity = 4;
    }

    else
    {
      capacity = 3;
    }

    if (v49)
    {
      if ([v49 capacity] > capacity)
      {
        capacity = [v49 capacity];
      }

      if (capacity != [v49 capacity])
      {
        [v49 setCapacity:capacity];
      }
    }

    else
    {
      v52 = objc_alloc_init(BWVideoFormatRequirements);
      -[BWVideoFormatRequirements setWidth:](v52, "setWidth:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
      -[BWVideoFormatRequirements setHeight:](v52, "setHeight:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")] >> 32);
      [(BWVideoFormatRequirements *)v52 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v52 setHeightAlignment:16];
      v832 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v48];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v52, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v832 count:1]);
      v831 = v52;
      v36 = 0x1E696A000uLL;
      v53 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v831 count:1]);
      v54 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v53, capacity, [MEMORY[0x1E696AEC0] stringWithFormat:@"SoftISP output pool (%@)", BWStringForOSType()], memoryPool);
      if (!v54)
      {
        goto LABEL_681;
      }

      v55 = v54;
      [dictionary4 setObject:v54 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v48)}];
    }
  }

  if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRProcessorControllerConfiguration])
  {
    v56 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRMode]& 1;
  }

  else
  {
    v56 = 0;
  }

  v660 = v40;
  if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRProcessorControllerConfiguration])
  {
    v57 = 0;
  }

  else
  {
    v57 = [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")] & 1;
  }

  v666 = v56 | v57;
  if ((v56 | v57))
  {
    v58 = [(BWSoftISPProcessorController *)v688 outputPixelFormatForCaptureType:1 captureFlags:128 processingMode:0];
    v59 = objc_alloc_init(BWVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v59, "setWidth:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
    -[BWVideoFormatRequirements setHeight:](v59, "setHeight:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")] >> 32);
    [(BWVideoFormatRequirements *)v59 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v59 setHeightAlignment:16];
    v675 = v58;
    v830 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v58];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v59, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v830 count:1]);
    v829 = v59;
    v60 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v829 count:1]);
    v61 = objc_alloc_init(BWVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v61, "setWidth:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
    -[BWVideoFormatRequirements setHeight:](v61, "setHeight:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")] >> 32);
    [(BWVideoFormatRequirements *)v61 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v61 setHeightAlignment:16];
    v828 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1751527984];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v61, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v828 count:1]);
    v827 = v61;
    v62 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v827 count:1]);
    [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
    [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
    v826 = 0u;
    v825 = 0u;
    v824 = 0u;
    v823 = 0u;
    v63 = [v35 countByEnumeratingWithState:&v823 objects:v822 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v824;
      do
      {
        for (j = 0; j != v64; ++j)
        {
          if (*v824 != v65)
          {
            objc_enumerationMutation(v35);
          }

          v67 = FigCaptureDimensionsFromDictionaryRepresentation(*(*(&v823 + 1) + 8 * j));
          if (v67 == [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration rawSensorDimensions])
          {
            [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
          }
        }

        v64 = [v35 countByEnumeratingWithState:&v823 objects:v822 count:16];
      }

      while (v64);
    }

    if (v57)
    {
      [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
    }

    learnedNRMode = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRMode];
    v69 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration outputBufferCount]<< ((learnedNRMode & 0x10) != 0);
    v36 = 0x1E696A000uLL;
    v70 = [dictionary4 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v675)}];
    if (v70)
    {
      v71 = v70;
      if ([v70 capacity] <= v69)
      {
        capacity2 = v69;
      }

      else
      {
        capacity2 = [v71 capacity];
      }

      if (capacity2 != [v71 capacity])
      {
        [v71 setCapacity:capacity2];
      }
    }

    else
    {
      v73 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v60, v69, [MEMORY[0x1E696AEC0] stringWithFormat:@"SoftISP output pool (%@)", BWStringForOSType()], memoryPool);
      if (!v73)
      {
        goto LABEL_681;
      }

      v74 = v73;
      [dictionary4 setObject:v73 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v675)}];
    }
  }

  if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
  {
    v75 = [(BWSoftISPProcessorController *)v688 outputPixelFormatForCaptureType:11 captureFlags:0x800000000 processingMode:0];
    v76 = objc_alloc_init(BWVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v76, "setWidth:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
    -[BWVideoFormatRequirements setHeight:](v76, "setHeight:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")] >> 32);
    [(BWVideoFormatRequirements *)v76 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v76 setHeightAlignment:16];
    v821 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v75];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v76, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v821 count:1]);
    v820 = v76;
    v77 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v820 count:1]);
    [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
    v78 = [dictionary4 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v75)}];
    if (v78)
    {
      v79 = v78;
      if ([v78 capacity] < 8)
      {
        capacity3 = 7;
      }

      else
      {
        capacity3 = [v79 capacity];
      }

      if (capacity3 != [v79 capacity])
      {
        [v79 setCapacity:capacity3];
      }
    }

    else
    {
      v81 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v77, 7, [MEMORY[0x1E696AEC0] stringWithFormat:@"SoftISP output pool (%@)", BWStringForOSType()], memoryPool);
      if (!v81)
      {
        goto LABEL_681;
      }

      v82 = v81;
      [dictionary4 setObject:v81 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v75)}];
    }
  }

  if (([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")] & 1) != 0 || -[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "deepFusionProcessorControllerConfiguration"))
  {
    v83 = [(BWSoftISPProcessorController *)v688 outputPixelFormatForCaptureType:12 processingMode:0];
    v84 = objc_alloc_init(BWVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v84, "setWidth:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
    -[BWVideoFormatRequirements setHeight:](v84, "setHeight:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")] >> 32);
    [(BWVideoFormatRequirements *)v84 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v84 setHeightAlignment:16];
    v819 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v83];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v84, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v819 count:1]);
    v818 = v84;
    v85 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v818 count:1]);
    if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
    {
      [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
    }

    if ([(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredPhotoProcessorEnabled])
    {
      ultraHighResolutionProcessingEnabled = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration ultraHighResolutionProcessingEnabled];
    }

    else
    {
      ultraHighResolutionProcessingEnabled = 0;
    }

    stereoPhotoOutputDimensions = [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration stereoPhotoOutputDimensions];
    v88 = 1;
    if (stereoPhotoOutputDimensions >= 1 && SHIDWORD(stereoPhotoOutputDimensions) >= 1)
    {
      v88 = ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRMode]& 4) == 0;
    }

    deferredCaptureSupportEnabled = [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredCaptureSupportEnabled];
    v90 = 5;
    if ((ultraHighResolutionProcessingEnabled & v88) != 0)
    {
      v90 = 0;
    }

    if (deferredCaptureSupportEnabled)
    {
      capacity4 = 2;
    }

    else
    {
      capacity4 = v90;
    }

    v92 = [dictionary4 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v83)}];
    if (v92)
    {
      v93 = v92;
      if ([v92 capacity] > capacity4)
      {
        capacity4 = [v93 capacity];
      }

      v36 = 0x1E696A000;
      if (capacity4 != [v93 capacity])
      {
        [v93 setCapacity:capacity4];
      }
    }

    else
    {
      v94 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v85, capacity4, [MEMORY[0x1E696AEC0] stringWithFormat:@"SoftISP output pool (%@)", BWStringForOSType()], memoryPool);
      v36 = 0x1E696A000uLL;
      if (!v94)
      {
        goto LABEL_681;
      }

      v95 = v94;
      [dictionary4 setObject:v94 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v83)}];
    }

    gainMapMainImageDownscalingFactor = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
    if (*&gainMapMainImageDownscalingFactor != 0.0 && v664 >= 1 && SHIDWORD(v664) >= 1)
    {
      v97 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v97 setSupportedPixelFormats:&unk_1F2248C40];
      gainMapMainImageDownscalingFactor2 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
      [(BWVideoFormatRequirements *)v97 setWidth:(v664 / *&gainMapMainImageDownscalingFactor2)];
      gainMapMainImageDownscalingFactor3 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
      [(BWVideoFormatRequirements *)v97 setHeight:(HIDWORD(v664) / *&gainMapMainImageDownscalingFactor3)];
      [(BWVideoFormatRequirements *)v97 setWidthAlignment:8];
      [(BWVideoFormatRequirements *)v97 setHeightAlignment:8];
      v817 = v97;
      v100 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v817 count:1]);
      v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Deep Fusion Enhanced Resolution Gain Map pool (%@)", BWStringForOSType()];
      v102 = [[BWPixelBufferPool alloc] initWithVideoFormat:v100 capacity:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration outputBufferCount] name:v101 memoryPool:memoryPool];
      selfCopy->_deepFusionEnhancedResolutionGainMapPool = v102;
      if (!v102)
      {
        goto LABEL_681;
      }
    }
  }

  if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
  {
    v103 = [(BWSoftISPProcessorController *)v688 outputPixelFormatForCaptureType:13 processingMode:0];
    v104 = objc_alloc_init(BWVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v104, "setWidth:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
    -[BWVideoFormatRequirements setHeight:](v104, "setHeight:", [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")] >> 32);
    [(BWVideoFormatRequirements *)v104 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v104 setHeightAlignment:16];
    v816 = [*(v36 + 3480) numberWithUnsignedInt:v103];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v104, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v816 count:1]);
    v815 = v104;
    v105 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v815 count:1]);
    [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
    if ([(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredCaptureSupportEnabled])
    {
      capacity5 = 2;
    }

    else
    {
      capacity5 = 3;
    }

    v107 = [dictionary4 objectForKeyedSubscript:{objc_msgSend(*(v36 + 3480), "numberWithUnsignedInt:", v103)}];
    if (v107)
    {
      v108 = v107;
      if ([v107 capacity] > capacity5)
      {
        capacity5 = [v108 capacity];
      }

      if (capacity5 != [v108 capacity])
      {
        [v108 setCapacity:capacity5];
      }
    }

    else
    {
      v109 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v105, capacity5, [MEMORY[0x1E696AEC0] stringWithFormat:@"SoftISP output pool (%@)", BWStringForOSType()], memoryPool);
      if (!v109)
      {
        goto LABEL_681;
      }

      v110 = v109;
      [dictionary4 setObject:v109 forKeyedSubscript:{objc_msgSend(*(v36 + 3480), "numberWithUnsignedInt:", v103)}];
    }
  }

  if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration stereoDisparityProcessorControllerConfiguration])
  {
    v127 = -[BWPhotonicEngineNodeResourceCoordinator _disparityProcessorInputDimensionsForInputVideoFormat:](selfCopy, [*p_input videoFormat]);
    v128 = [(BWSoftISPProcessorController *)v688 outputPixelFormatForCaptureType:10 processingMode:3];
    v129 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v129 setWidth:v127];
    [(BWVideoFormatRequirements *)v129 setHeight:v127 >> 32];
    v814 = [*(v36 + 3480) numberWithUnsignedInt:v128];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v129, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v814 count:1]);
    v813 = v129;
    v130 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v813 count:1]);
    v131 = 2 * [*p_output owningNodeRetainedBufferCount] + 2;
    v132 = [objc_msgSend(*p_output "primaryMediaConfiguration")];
    LOBYTE(v632) = v132;
    v133 = [[BWPixelBufferPool alloc] initWithVideoFormat:v130 capacity:v131 name:@"Disparity Processor Input SoftISP output pool" clientProvidesPool:0 memoryPool:memoryPool providesBackPressure:v132 reportSlowBackPressureAllocations:v632];
    if (!v133)
    {
      goto LABEL_681;
    }

    v134 = v133;
    [dictionary4 setObject:v133 forKeyedSubscript:{objc_msgSend(*(v36 + 3480), "numberWithUnsignedInt:", v128)}];
  }

  dictionary5 = [MEMORY[0x1E695DF90] dictionary];
  dictionary6 = [MEMORY[0x1E695DF90] dictionary];
  if (obj)
  {
    FigDebugIsInternalBuild();
    v111 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 5];
    mach_absolute_time();
    v671 = v111;
    [array addObject:v111];
    v112 = v692 | (v680 << 32);
    [dictionary5 setObject:FigCaptureDictionaryRepresentationForDimensions(v112) forKeyedSubscript:&unk_1F2244B48];
    if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deepFusionProcessorControllerConfiguration]&& v664 >= 1 && SHIDWORD(v664) >= 1)
    {
      v113 = [(BWSoftISPProcessorController *)v688 outputPixelFormatForCaptureType:12 processingMode:0];
      v114 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v114 setWidth:v692];
      [(BWVideoFormatRequirements *)v114 setHeight:v680];
      [(BWVideoFormatRequirements *)v114 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v114 setHeightAlignment:16];
      v812 = [*(v36 + 3480) numberWithUnsignedInt:v113];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v114, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v812 count:1]);
      v811 = v114;
      v115 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v811 count:1]), 1, @"Deep Fusion Ultra High Resolution SoftISP output pool", memoryPool);
      if (!v115)
      {
        goto LABEL_681;
      }

      v116 = v115;
      [dictionary3 setObject:v115 forKeyedSubscript:{objc_msgSend(*(v36 + 3480), "numberWithUnsignedInt:", v113)}];

      if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration semanticStyleRenderingEnabled])
      {
        v117 = [-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepZoomProcessorControllerConfiguration")];
        v118 = v117 < 1 || SHIDWORD(v117) < 1;
        v119 = v118;
      }

      else
      {
        v119 = 0;
      }

      v120 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v120 setWidth:v664 & 0x7FFFFFFF];
      v121 = v664 >> 32;
      [(BWVideoFormatRequirements *)v120 setHeight:v664 >> 32];
      [(BWVideoFormatRequirements *)v120 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v120 setHeightAlignment:16];
      [(BWVideoFormatRequirements *)v120 setSupportedPixelFormats:&unk_1F2248C58];
      v810 = v120;
      v122 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v810 count:1]);
      v123 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v122, 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"Deep Zoom Transfer high resolution input pool (%@)", BWStringForOSType()], memoryPool);
      selfCopy->_deepZoomTransferHighResolutionInputPool = v123;
      if (!v123)
      {
        goto LABEL_681;
      }

      v124 = 1751527984;
      if (!v119)
      {
        v124 = [objc_msgSend(*p_output "videoFormat")];
      }

      v125 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v125 setWidth:v664 & 0x7FFFFFFF];
      [(BWVideoFormatRequirements *)v125 setHeight:v121];
      [(BWVideoFormatRequirements *)v125 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v125 setHeightAlignment:16];
      v809 = [*(v36 + 3480) numberWithUnsignedInt:v124];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v125, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v809 count:1]);
      if ([objc_msgSend(*p_input "videoFormat")])
      {
        v808 = [*(v36 + 3480) numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
        v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v808 count:1];
      }

      else
      {
        v126 = 0;
      }

      [(BWVideoFormatRequirements *)v125 setSupportedColorSpaceProperties:v126];
      v807 = v125;
      v135 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v807 count:1]);
      v136 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Deep Zoom Transfer output pool (%@)", BWStringForOSType()];
      v137 = [[BWPixelBufferPool alloc] initWithVideoFormat:v135 capacity:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration maxDeepFusionOutputCount] name:v136 memoryPool:memoryPool];
      selfCopy->_deepZoomTransferEnhancedResolutionOutputPool = v137;
      v36 = 0x1E696A000uLL;
      if (!v137)
      {
        goto LABEL_681;
      }

      if (v119)
      {
        v138 = [objc_msgSend(*p_output "videoFormat")];
        v139 = objc_alloc_init(BWVideoFormatRequirements);
        -[BWVideoFormatRequirements setWidth:](v139, "setWidth:", [objc_msgSend(*p_output "videoFormat")]);
        -[BWVideoFormatRequirements setHeight:](v139, "setHeight:", [objc_msgSend(*p_output "videoFormat")]);
        [(BWVideoFormatRequirements *)v139 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v139 setHeightAlignment:16];
        v806 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v138];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v139, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v806 count:1]);
        if ([objc_msgSend(*p_input "videoFormat")])
        {
          v805 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
          v140 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v805 count:1];
        }

        else
        {
          v140 = 0;
        }

        [(BWVideoFormatRequirements *)v139 setSupportedColorSpaceProperties:v140];
        v804 = v139;
        v141 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v804 count:1]);
        v142 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v141, 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"Deep Fusion Enhanced Resolution output pool (%@)", BWStringForOSType()], memoryPool);
        selfCopy->_deepFusionEnhancedResolutionOutputPool = v142;
        if (!v142)
        {
          goto LABEL_681;
        }

        v143 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v143 setWidth:v664 & 0x7FFFFFFF];
        [(BWVideoFormatRequirements *)v143 setHeight:v121];
        [(BWVideoFormatRequirements *)v143 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v143 setHeightAlignment:16];
        v803 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(*p_output, "videoFormat"), "pixelFormat")}];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v143, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v803 count:1]);
        if ([objc_msgSend(*p_input "videoFormat")])
        {
          v802 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
          v144 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v802 count:1];
        }

        else
        {
          v144 = 0;
        }

        [(BWVideoFormatRequirements *)v143 setSupportedColorSpaceProperties:v144];
        v801 = v143;
        v145 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v801 count:1]);
        v146 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v145, 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"Deep Fusion Enhanced Resolution Semantic Style output pool (%@)", BWStringForOSType()], memoryPool);
        selfCopy->_deepFusionEnhancedResolutionSemanticStyleOutputPool = v146;
        v36 = 0x1E696A000uLL;
        if (!v146)
        {
          goto LABEL_681;
        }
      }

      [-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepZoomProcessorControllerConfiguration")];
      [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
      [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
      if (smartStyleRenderingProcessorControllerConfiguration)
      {
        v147 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v147 setWidth:v664 & 0x7FFFFFFF];
        [(BWVideoFormatRequirements *)v147 setHeight:v121];
        [(BWVideoFormatRequirements *)v147 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v147 setHeightAlignment:16];
        v800 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(*p_output, "videoFormat"), "pixelFormat")}];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v147, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v800 count:1]);
        if ([objc_msgSend(*p_input "videoFormat")])
        {
          v799 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
          v148 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v799 count:1];
        }

        else
        {
          v148 = 0;
        }

        [(BWVideoFormatRequirements *)v147 setSupportedColorSpaceProperties:v148];
        v798 = v147;
        v149 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v798 count:1]);
        v150 = MEMORY[0x1E696AEC0];
        [objc_msgSend(*p_output "videoFormat")];
        v151 = [v150 stringWithFormat:@"Smart Style Enhanced Resolution output pool (%@)", BWStringForOSType()];
        v152 = [[BWPixelBufferPool alloc] initWithVideoFormat:v149 capacity:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration maxDeepFusionOutputCount] name:v151 memoryPool:memoryPool];
        selfCopy->_smartStyleEnhancedResolutionOutputPool = v152;
        if (!v152)
        {
          goto LABEL_681;
        }
      }

      if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration])
      {
        v153 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v153 setWidth:v664 & 0x7FFFFFFF];
        [(BWVideoFormatRequirements *)v153 setHeight:v121];
        [(BWVideoFormatRequirements *)v153 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v153 setHeightAlignment:16];
        v797 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(*p_output, "videoFormat"), "pixelFormat")}];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v153, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v797 count:1]);
        if ([objc_msgSend(*p_input "videoFormat")])
        {
          v796 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
          v154 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v796 count:1];
        }

        else
        {
          v154 = 0;
        }

        [(BWVideoFormatRequirements *)v153 setSupportedColorSpaceProperties:v154];
        v795 = v153;
        v155 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v795 count:1]);
        v156 = MEMORY[0x1E696AEC0];
        [objc_msgSend(*p_output "videoFormat")];
        v157 = [v156 stringWithFormat:@"Distortion Correction Enhanced Resolution output pool (%@)", BWStringForOSType()];
        v158 = [[BWPixelBufferPool alloc] initWithVideoFormat:v155 capacity:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration maxDeepFusionOutputCount] name:v157 memoryPool:memoryPool];
        selfCopy->_distortionCorrectionEnhancedResolutionOutputPool = v158;
        if (!v158)
        {
          goto LABEL_681;
        }
      }
    }

    if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration ultraHighResolutionProcessingEnabled])
    {
      v794 = 0u;
      v793 = 0u;
      v792 = 0u;
      v791 = 0u;
      dimensionsByResolutionFlavorByPortType5 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
      v160 = BWPortTypesWithResolutionFlavor(dimensionsByResolutionFlavorByPortType5, 2);
      v161 = [v160 countByEnumeratingWithState:&v791 objects:v790 count:16];
      if (v161)
      {
        v162 = v161;
        v163 = *v792;
        while (2)
        {
          for (k = 0; k != v162; ++k)
          {
            if (*v792 != v163)
            {
              objc_enumerationMutation(v160);
            }

            v165 = *(*(&v791 + 1) + 8 * k);
            if ([-[BWPhotonicEngineNodeConfiguration portTypesWithGeometricDistortionCorrectionEnabled](selfCopy->_nodeConfiguration) containsObject:v165] & 1) != 0 || (objc_msgSend(-[BWPhotonicEngineNodeConfiguration portTypesWithIntelligentDistortionCorrectionEnabled](selfCopy->_nodeConfiguration), "containsObject:", v165))
            {
              v166 = 1;
              v36 = 0x1E696A000;
              goto LABEL_200;
            }

            v36 = 0x1E696A000;
          }

          v162 = [v160 countByEnumeratingWithState:&v791 objects:v790 count:16];
          v166 = 0;
          if (v162)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v166 = 0;
      }

LABEL_200:
      v167 = [objc_msgSend(*p_output "videoFormat")];
      v168 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v168 setWidth:v692];
      [(BWVideoFormatRequirements *)v168 setHeight:v680];
      [(BWVideoFormatRequirements *)v168 setBytesPerRowAlignment:16];
      [(BWVideoFormatRequirements *)v168 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v168 setHeightAlignment:16];
      v789 = [*(v36 + 3480) numberWithUnsignedInt:v167];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v168, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v789 count:1]);
      if ([objc_msgSend(*p_input "videoFormat")])
      {
        v788 = [*(v36 + 3480) numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
        v169 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v788 count:1];
      }

      else
      {
        v169 = 0;
      }

      [(BWVideoFormatRequirements *)v168 setSupportedColorSpaceProperties:v169];
      v787 = v168;
      v170 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v787 count:1]), -[BWPhotonicEngineNodeConfiguration outputBufferCount](selfCopy->_nodeConfiguration) << v166, @"Ultra High Resolution output pool", memoryPool);
      if (!v170)
      {
        [BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources];
        goto LABEL_681;
      }

      v171 = v170;
      v36 = 0x1E696A000uLL;
      [dictionary3 setObject:v170 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v167)}];

      if (![(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredPhotoProcessorEnabled])
      {
        v172 = [(BWSoftISPProcessorController *)v688 outputPixelFormatForCaptureType:1 processingMode:0];
        v173 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v173 setWidth:v692];
        [(BWVideoFormatRequirements *)v173 setHeight:v680];
        [(BWVideoFormatRequirements *)v173 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v173 setHeightAlignment:16];
        v786 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v172];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v173, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v786 count:1]);
        v785 = v173;
        v174 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v785 count:1]), 1, @"Ultra High Resolution YUV SoftISP output pool", memoryPool);
        if (!v174)
        {
          [BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources];
          goto LABEL_681;
        }

        v175 = v174;
        [dictionary3 setObject:v174 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v172)}];
      }

      [dictionary6 setObject:FigCaptureDictionaryRepresentationForDimensions(v112) forKeyedSubscript:&unk_1F2244B48];
      if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRProcessorControllerConfiguration])
      {
        v176 = ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRMode]>> 2) & 1;
      }

      else
      {
        v176 = 0;
      }

      if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRProcessorControllerConfiguration])
      {
        v177 = 0;
      }

      else
      {
        v177 = ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")] >> 2) & 1;
      }

      if ((v176 | v177))
      {
        v178 = [(BWSoftISPProcessorController *)v688 outputPixelFormatForCaptureType:1 captureFlags:128 processingMode:0 isQuadra:1];
        v179 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v179 setWidth:v692];
        [(BWVideoFormatRequirements *)v179 setHeight:v680];
        [(BWVideoFormatRequirements *)v179 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v179 setHeightAlignment:16];
        v784 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v178];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v179, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v784 count:1]);
        v783 = v179;
        v180 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v783 count:1]);
        v181 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v181 setWidth:v692];
        [(BWVideoFormatRequirements *)v181 setHeight:v680];
        [(BWVideoFormatRequirements *)v181 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v181 setHeightAlignment:16];
        v782 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1751527984];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v181, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v782 count:1]);
        v781 = v181;
        v36 = 0x1E696A000uLL;
        v182 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v781 count:1]);
        v183 = [dictionary3 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v178)}];
        if (v183)
        {
          v184 = v183;
          if ([v183 capacity] < 2)
          {
            capacity6 = 1;
          }

          else
          {
            capacity6 = [v184 capacity];
          }

          if (capacity6 != [v184 capacity])
          {
            [v184 setCapacity:capacity6];
          }
        }

        else
        {
          v186 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v180, 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"Ultra High Resolution SoftISP output pool (%@)", BWStringForOSType()], memoryPool);
          if (!v186)
          {
            goto LABEL_681;
          }

          v187 = v186;
          [dictionary3 setObject:v186 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v178)}];
        }

        [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
        [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
        if (v177)
        {
          v188 = [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
          if (v188)
          {
            v189 = v188;
          }

          else
          {
            v189 = v182;
          }

          [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
        }
      }

      if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
      {
        v190 = -[BWPhotonicEngineNodeConfiguration demosaicedRawFormatRequirementsWithDimensions:colorSpaceProperties:](selfCopy->_nodeConfiguration, "demosaicedRawFormatRequirementsWithDimensions:colorSpaceProperties:", v112, [objc_msgSend(objc_msgSend(objc_msgSend(*p_output "formatRequirements")]);
        [v190 setWidthAlignment:16];
        [v190 setHeightAlignment:16];
        v780 = v190;
        v191 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v780 count:1]);
        v192 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration outputBufferCount]<< v166;
        v193 = [dictionary3 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v191, "pixelFormat"))}];
        if (v193)
        {
          [v193 setCapacity:{objc_msgSend(v193, "capacity") + v192}];
        }

        else
        {
          v194 = [[BWPixelBufferPool alloc] initWithVideoFormat:v191 capacity:v192 name:@"Ultra High Resolution Demosaiced RAW pool" memoryPool:memoryPool];
          if (!v194)
          {
            goto LABEL_681;
          }

          v195 = v194;
          [dictionary3 setObject:v194 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v191, "pixelFormat"))}];
        }
      }

      gainMapMainImageDownscalingFactor4 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
      if (*&gainMapMainImageDownscalingFactor4 != 0.0)
      {
        v197 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v197 setSupportedPixelFormats:&unk_1F2248C70];
        gainMapMainImageDownscalingFactor5 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
        [(BWVideoFormatRequirements *)v197 setWidth:(v692 / *&gainMapMainImageDownscalingFactor5)];
        gainMapMainImageDownscalingFactor6 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
        [(BWVideoFormatRequirements *)v197 setHeight:(v680 / *&gainMapMainImageDownscalingFactor6)];
        v779 = v197;
        v200 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v779 count:1]), -[BWPhotonicEngineNodeConfiguration outputBufferCount](selfCopy->_nodeConfiguration) << v166, @"Ultra High Resolution Gain Map pool", memoryPool);
        if (!v200)
        {
          goto LABEL_681;
        }

        v201 = v200;
        [dictionary3 setObject:v200 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", -[BWPixelBufferPool pixelFormat](v200, "pixelFormat"))}];
      }

      if (smartStyleRenderingProcessorControllerConfiguration)
      {
        v202 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v202 setWidth:v692];
        [(BWVideoFormatRequirements *)v202 setHeight:v680];
        [(BWVideoFormatRequirements *)v202 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v202 setHeightAlignment:16];
        v778 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(*p_output, "videoFormat"), "pixelFormat")}];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v202, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v778 count:1]);
        if ([objc_msgSend(*p_input "videoFormat")])
        {
          v777 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
          v203 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v777 count:1];
        }

        else
        {
          v203 = 0;
        }

        [(BWVideoFormatRequirements *)v202 setSupportedColorSpaceProperties:v203];
        v776 = v202;
        v204 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v776 count:1]);
        v205 = MEMORY[0x1E696AEC0];
        [objc_msgSend(*p_output "videoFormat")];
        v206 = [v205 stringWithFormat:@"Smart Style Ultra High Resolution output pool (%@)", BWStringForOSType()];
        v207 = [[BWPixelBufferPool alloc] initWithVideoFormat:v204 capacity:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration maxDeepFusionOutputCount] name:v206 memoryPool:memoryPool];
        selfCopy->_smartStyleUltraHighResolutionOutputPool = v207;
        if (!v207)
        {
          goto LABEL_681;
        }
      }
    }

    if (dword_1EB58E040)
    {
      v844 = 0;
      v843 = OS_LOG_TYPE_DEFAULT;
      v208 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v209 = v844;
      if (os_log_type_enabled(v208, v843))
      {
        v210 = v209;
      }

      else
      {
        v210 = v209 & 0xFFFFFFFE;
      }

      if (v210)
      {
        mach_absolute_time();
        v211 = FigHostTimeToNanoseconds();
        v763 = 136315650;
        v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
        v765 = 2114;
        v766 = v671;
        v767 = 2048;
        v768 = (v211 / 1000) / 1000.0;
        LODWORD(v656) = 32;
        v633 = &v763;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [array removeLastObject];
  }

  selfCopy->_softISPOutputPoolByPixelFormat = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:dictionary4];
  v772 = 0u;
  v773 = 0u;
  v774 = 0u;
  v775 = 0u;
  v212 = v698;
  v678 = [v698 countByEnumeratingWithState:&v772 objects:v771 count:16];
  if (!v678)
  {
    goto LABEL_340;
  }

  v672 = *v773;
  v668 = selfCopy;
  do
  {
    for (m = 0; m != v678; ++m)
    {
      if (*v773 != v672)
      {
        objc_enumerationMutation(v212);
      }

      v214 = *(*(&v772 + 1) + 8 * m);
      intValue = [v214 intValue];
      dimensionsByResolutionFlavorByPortType6 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
      v217 = BWDimensionsWithResolutionFlavor(dimensionsByResolutionFlavorByPortType6, intValue);
      v218 = FigCaptureLargestDimensionsFromDimensionsArray(v217);
      v220 = v218 == [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration rawSensorDimensions]&& intValue != 5;
      v696 = -[BWPhotonicEngineNodeResourceCoordinator _resolvedAdditionalProcessingDimensionsWithAdditionalSourceDimensions:standardSoftISPOutputDimensions:](selfCopy, v218, [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
      if (dword_1EB58E040)
      {
        v221 = m;
        v222 = intValue;
        v844 = 0;
        v843 = OS_LOG_TYPE_DEFAULT;
        v223 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v224 = v844;
        if (os_log_type_enabled(v223, v843))
        {
          v225 = v224;
        }

        else
        {
          v225 = v224 & 0xFFFFFFFE;
        }

        if (v225)
        {
          v226 = BWPhotoEncoderStringFromEncodingScheme(v222);
          v227 = BWStringFromDimensions();
          v228 = BWStringFromDimensions();
          v763 = 136315906;
          v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
          v765 = 2112;
          v766 = v226;
          v767 = 2114;
          v768 = *&v227;
          v36 = 0x1E696A000;
          v769 = 2114;
          v770 = v228;
          LODWORD(v656) = 42;
          v632 = &v763;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v212 = v698;
        intValue = v222;
        m = v221;
        selfCopy = v668;
      }

      [dictionary5 setObject:FigCaptureDictionaryRepresentationForDimensions(v696) forKeyedSubscript:v214];
      [dictionary6 setObject:FigCaptureDictionaryRepresentationForDimensions(v696) forKeyedSubscript:v214];
      if (v220)
      {
        continue;
      }

      dictionary7 = [MEMORY[0x1E695DF90] dictionary];
      v230 = [objc_msgSend(*p_output "videoFormat")];
      v231 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v231 setWidth:?];
      v681 = v696 >> 32;
      [(BWVideoFormatRequirements *)v231 setHeight:?];
      [(BWVideoFormatRequirements *)v231 setBytesPerRowAlignment:16];
      [(BWVideoFormatRequirements *)v231 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v231 setHeightAlignment:16];
      v762 = [*(v36 + 3480) numberWithUnsignedInt:v230];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v231, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v762 count:1]);
      if ([objc_msgSend(*p_input "videoFormat")])
      {
        v761 = [*(v36 + 3480) numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
        v232 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v761 count:1];
      }

      else
      {
        v232 = 0;
      }

      [(BWVideoFormatRequirements *)v231 setSupportedColorSpaceProperties:v232, v632, v656];
      v760 = v231;
      v233 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v760 count:1]);
      v234 = MEMORY[0x1E696AEC0];
      v632 = BWPhotoEncoderStringFromEncodingScheme(intValue);
      v656 = BWStringForOSType();
      v235 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", v233, [v234 stringWithFormat:@"Additional output on-demand allocator (%@, %@)"], memoryPool, 0);
      v36 = 0x1E696A000uLL;
      if (!v235)
      {
        goto LABEL_681;
      }

      v236 = v235;
      [dictionary7 setObject:v235 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v230)}];

      if (([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")] & 1) != 0 || (objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "nrfProcessorControllerConfiguration"), "lowLightFusionEnabled") & 1) != 0 || (objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "nrfProcessorControllerConfiguration"), "rawNightModeEnabled") & 1) != 0 || objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "nrfProcessorControllerConfiguration"), "deepFusionEnabled") && !-[BWStillImageNodeConfiguration deferredPhotoProcessorEnabled](selfCopy->_nodeConfiguration, "deferredPhotoProcessorEnabled") || objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "nrfProcessorControllerConfiguration"), "demosaicedRawEnabled") && !-[BWStillImageNodeConfiguration deferredPhotoProcessorEnabled](selfCopy->_nodeConfiguration, "deferredPhotoProcessorEnabled"))
      {
        v237 = [(BWSoftISPProcessorController *)v688 outputPixelFormatForCaptureType:10 processingMode:0];
        if (![dictionary7 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v237)}])
        {
          v238 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWVideoFormatRequirements *)v238 setWidth:v696];
          [(BWVideoFormatRequirements *)v238 setHeight:v681];
          [(BWVideoFormatRequirements *)v238 setWidthAlignment:16];
          [(BWVideoFormatRequirements *)v238 setHeightAlignment:16];
          v759 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v237];
          -[BWVideoFormatRequirements setSupportedPixelFormats:](v238, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v759 count:1]);
          v758 = v238;
          v239 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v758 count:1]);
          v240 = MEMORY[0x1E696AEC0];
          v632 = BWPhotoEncoderStringFromEncodingScheme(intValue);
          v656 = BWStringForOSType();
          v241 = [v240 stringWithFormat:@"Additional YUV SoftISP output on-demand allocator (%@, %@)"];
          v242 = [BWOnDemandPixelBufferAllocator alloc];
          v243 = v241;
          v36 = 0x1E696A000uLL;
          v244 = [(BWOnDemandPixelBufferAllocator *)v242 initWithVideoFormat:v239 name:v243 memoryPool:memoryPool additionalPixelBufferAttributes:0];
          if (!v244)
          {
            goto LABEL_681;
          }

          v245 = v244;
          [dictionary7 setObject:v244 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v237)}];
        }
      }

      if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration swfrProcessorControllerConfiguration])
      {
        v246 = [(BWSoftISPProcessorController *)v688 outputPixelFormatForCaptureType:2 processingMode:0];
        if (![dictionary7 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v246)}])
        {
          v247 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWVideoFormatRequirements *)v247 setWidth:v696];
          [(BWVideoFormatRequirements *)v247 setHeight:v681];
          [(BWVideoFormatRequirements *)v247 setWidthAlignment:16];
          [(BWVideoFormatRequirements *)v247 setHeightAlignment:16];
          v757 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v246];
          -[BWVideoFormatRequirements setSupportedPixelFormats:](v247, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v757 count:1]);
          v756 = v247;
          v248 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v756 count:1]);
          v249 = MEMORY[0x1E696AEC0];
          v632 = BWPhotoEncoderStringFromEncodingScheme(intValue);
          v656 = BWStringForOSType();
          v250 = [v249 stringWithFormat:@"Additional SWFR SoftISP output on-demand allocator (%@, %@)"];
          v251 = [BWOnDemandPixelBufferAllocator alloc];
          v252 = v250;
          v36 = 0x1E696A000uLL;
          v253 = [(BWOnDemandPixelBufferAllocator *)v251 initWithVideoFormat:v248 name:v252 memoryPool:memoryPool additionalPixelBufferAttributes:0];
          if (!v253)
          {
            goto LABEL_681;
          }

          v254 = v253;
          [dictionary7 setObject:v253 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v246)}];
        }
      }

      v255 = 0x1E695D000uLL;
      if (v666)
      {
        v256 = [(BWSoftISPProcessorController *)v688 outputPixelFormatForCaptureType:1 captureFlags:128 processingMode:0];
        v257 = +[BWVideoFormatRequirements formatRequirements];
        [v257 setWidth:v696];
        [v257 setHeight:v681];
        [v257 setWidthAlignment:16];
        [v257 setHeightAlignment:16];
        v755 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v256];
        [v257 setSupportedPixelFormats:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v755, 1)}];
        v754 = v257;
        v258 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v754 count:1]);
        v259 = +[BWVideoFormatRequirements formatRequirements];
        [v259 setWidth:v696];
        [v259 setHeight:v681];
        [v259 setWidthAlignment:16];
        [v259 setHeightAlignment:16];
        [v259 setSupportedPixelFormats:&unk_1F2248C88];
        v753 = v259;
        v260 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v753 count:1]);
        [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
        if (intValue <= 3)
        {
          if (intValue != 1)
          {
            v255 = 0x1E695D000;
            v36 = 0x1E696A000;
            if (intValue == 3)
            {
              [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
            }

LABEL_299:
            if (![dictionary7 objectForKeyedSubscript:{objc_msgSend(*(v36 + 3480), "numberWithUnsignedInt:", v256)}])
            {
              v261 = MEMORY[0x1E696AEC0];
              v632 = BWPhotoEncoderStringFromEncodingScheme(intValue);
              v656 = BWStringForOSType();
              v36 = 0x1E696A000uLL;
              v262 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", v258, [v261 stringWithFormat:@"Additional LearnedNR SoftISP output pool (%@, %@)"], memoryPool, 0);
              if (!v262)
              {
                goto LABEL_681;
              }

              [dictionary7 setObject:v262 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v256)}];
            }

            goto LABEL_302;
          }

          [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
        }

        else
        {
          if (intValue != 4)
          {
            v255 = 0x1E695D000;
            v36 = 0x1E696A000;
            if (intValue == 5)
            {
              [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
            }

            else if (intValue == 6)
            {
              [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
            }

            goto LABEL_299;
          }

          [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")];
        }

        v255 = 0x1E695D000uLL;
        v36 = 0x1E696A000uLL;
        goto LABEL_299;
      }

LABEL_302:
      if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
      {
        v263 = [(BWSoftISPProcessorController *)v688 outputPixelFormatForCaptureType:11 captureFlags:0x800000000 processingMode:0];
        if (![dictionary7 objectForKeyedSubscript:{objc_msgSend(*(v36 + 3480), "numberWithUnsignedInt:", v263)}])
        {
          v264 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWVideoFormatRequirements *)v264 setWidth:v696];
          [(BWVideoFormatRequirements *)v264 setHeight:v681];
          [(BWVideoFormatRequirements *)v264 setWidthAlignment:16];
          [(BWVideoFormatRequirements *)v264 setHeightAlignment:16];
          v752 = [*(v36 + 3480) numberWithUnsignedInt:v263];
          -[BWVideoFormatRequirements setSupportedPixelFormats:](v264, "setSupportedPixelFormats:", [*(v255 + 3784) arrayWithObjects:&v752 count:1]);
          v751 = v264;
          v265 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [*(v255 + 3784) arrayWithObjects:&v751 count:1]);
          v266 = MEMORY[0x1E696AEC0];
          v632 = BWPhotoEncoderStringFromEncodingScheme(intValue);
          v656 = BWStringForOSType();
          v267 = [v266 stringWithFormat:@"Additional RawNightMode SoftISP output on-demand allocator (%@, %@)"];
          v268 = [BWOnDemandPixelBufferAllocator alloc];
          v269 = v267;
          v36 = 0x1E696A000uLL;
          v270 = [(BWOnDemandPixelBufferAllocator *)v268 initWithVideoFormat:v265 name:v269 memoryPool:memoryPool additionalPixelBufferAttributes:0];
          if (!v270)
          {
            goto LABEL_681;
          }

          v271 = v270;
          [dictionary7 setObject:v270 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v263)}];
        }
      }

      v272 = v696;
      if (([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")] & 1) != 0 || -[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "deepFusionProcessorControllerConfiguration"))
      {
        v273 = [(BWSoftISPProcessorController *)v688 outputPixelFormatForCaptureType:12 processingMode:0];
        v274 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v274 setWidth:v696];
        [(BWVideoFormatRequirements *)v274 setHeight:v681];
        [(BWVideoFormatRequirements *)v274 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v274 setHeightAlignment:16];
        v750 = [*(v36 + 3480) numberWithUnsignedInt:v273];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v274, "setSupportedPixelFormats:", [*(v255 + 3784) arrayWithObjects:&v750 count:1]);
        v749 = v274;
        v275 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [*(v255 + 3784) arrayWithObjects:&v749 count:1]);
        v276 = MEMORY[0x1E696AEC0];
        v632 = BWPhotoEncoderStringFromEncodingScheme(intValue);
        v656 = BWStringForOSType();
        v277 = v276;
        v36 = 0x1E696A000uLL;
        v278 = [v277 stringWithFormat:@"Additional DeepFusion SoftISP output on-demand allocator (%@, %@)"];
        if (![dictionary7 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v273)}])
        {
          v279 = [[BWOnDemandPixelBufferAllocator alloc] initWithVideoFormat:v275 name:v278 memoryPool:memoryPool additionalPixelBufferAttributes:0];
          if (!v279)
          {
            goto LABEL_681;
          }

          v280 = v279;
          [dictionary7 setObject:v279 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v273)}];

          v272 = v696;
        }

        v281 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
        if (v272 > v281 || SHIDWORD(v696) > SHIDWORD(v281))
        {
          v282 = v272;
          if ([-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")] > v272)
          {
            v282 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
          }

          v283 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
          LODWORD(v284) = HIDWORD(v696);
          if (SHIDWORD(v283) > SHIDWORD(v696))
          {
            v284 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")] >> 32;
          }

          [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
        }

        v285 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
        if (v272 > v285 || SHIDWORD(v696) > SHIDWORD(v285))
        {
          v286 = v272;
          if ([-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")] > v272)
          {
            v286 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
          }

          v287 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
          LODWORD(v288) = HIDWORD(v696);
          if (SHIDWORD(v287) > SHIDWORD(v696))
          {
            v288 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")] >> 32;
          }

          [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
        }
      }

      if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
      {
        v289 = [(BWSoftISPProcessorController *)v688 outputPixelFormatForCaptureType:13 processingMode:0];
        v290 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v290 setWidth:v696];
        [(BWVideoFormatRequirements *)v290 setHeight:v681];
        [(BWVideoFormatRequirements *)v290 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v290 setHeightAlignment:16];
        v748 = [*(v36 + 3480) numberWithUnsignedInt:v289];
        -[BWVideoFormatRequirements setSupportedPixelFormats:](v290, "setSupportedPixelFormats:", [*(v255 + 3784) arrayWithObjects:&v748 count:1]);
        v747 = v290;
        v291 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [*(v255 + 3784) arrayWithObjects:&v747 count:1]);
        v292 = MEMORY[0x1E696AEC0];
        v632 = BWPhotoEncoderStringFromEncodingScheme(intValue);
        v656 = BWStringForOSType();
        v36 = 0x1E696A000uLL;
        v293 = [v292 stringWithFormat:@"Additional LearnedFusion SoftISP output on-demand allocator (%@, %@)"];
        if (![dictionary7 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v289)}])
        {
          v294 = [[BWOnDemandPixelBufferAllocator alloc] initWithVideoFormat:v291 name:v293 memoryPool:memoryPool additionalPixelBufferAttributes:0];
          if (!v294)
          {
            goto LABEL_681;
          }

          v295 = v294;
          [dictionary7 setObject:v294 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v289)}];
        }

        [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
        v272 = v696;
      }

      if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
      {
        v296 = -[BWPhotonicEngineNodeConfiguration demosaicedRawFormatRequirementsWithDimensions:colorSpaceProperties:](selfCopy->_nodeConfiguration, "demosaicedRawFormatRequirementsWithDimensions:colorSpaceProperties:", v272, [objc_msgSend(objc_msgSend(objc_msgSend(*p_output "formatRequirements")]);
        [v296 setWidthAlignment:16];
        [v296 setHeightAlignment:16];
        v746 = v296;
        v297 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [*(v255 + 3784) arrayWithObjects:&v746 count:1]);
        v272 = *(v36 + 3480);
        linearYUVPixelFormat = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration linearYUVPixelFormat];
        v299 = v272;
        LODWORD(v272) = v696;
        if (![dictionary7 objectForKeyedSubscript:{objc_msgSend(v299, "numberWithUnsignedInt:", linearYUVPixelFormat)}])
        {
          v300 = MEMORY[0x1E696AEC0];
          v301 = BWPhotoEncoderStringFromEncodingScheme(intValue);
          [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration linearYUVPixelFormat];
          v632 = v301;
          v656 = BWStringForOSType();
          v302 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", v297, [v300 stringWithFormat:@"Additional Linear YUV output on-demand allocator (%@, %@)"], memoryPool, 0);
          if (!v302)
          {
            goto LABEL_681;
          }

          v303 = v302;
          [dictionary7 setObject:v302 forKeyedSubscript:{objc_msgSend(*(v36 + 3480), "numberWithUnsignedInt:", -[BWPhotonicEngineNodeConfiguration linearYUVPixelFormat](selfCopy->_nodeConfiguration))}];

          LODWORD(v272) = v696;
        }
      }

      gainMapMainImageDownscalingFactor7 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
      if (*&gainMapMainImageDownscalingFactor7 != 0.0)
      {
        v305 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v305 setSupportedPixelFormats:&unk_1F2248CA0];
        gainMapMainImageDownscalingFactor8 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
        [(BWVideoFormatRequirements *)v305 setWidth:(v272 / *&gainMapMainImageDownscalingFactor8)];
        gainMapMainImageDownscalingFactor9 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration gainMapMainImageDownscalingFactor];
        [(BWVideoFormatRequirements *)v305 setHeight:(SHIDWORD(v696) / *&gainMapMainImageDownscalingFactor9)];
        [(BWVideoFormatRequirements *)v305 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v305 setHeightAlignment:16];
        v745 = v305;
        v308 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v745 count:1]);
        v309 = MEMORY[0x1E696AEC0];
        v632 = BWPhotoEncoderStringFromEncodingScheme(intValue);
        v656 = BWStringForOSType();
        v310 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", v308, [v309 stringWithFormat:@"Additional gain map on-demand allocator (%@, %@)"], memoryPool, 0);
        if (!v310)
        {
          goto LABEL_681;
        }

        v311 = v310;
        [dictionary7 setObject:v310 forKeyedSubscript:&unk_1F2244B30];
      }

      [dictionary2 setObject:dictionary7 forKeyedSubscript:{objc_msgSend(*(v36 + 3480), "numberWithInt:", intValue)}];
      v212 = v698;
    }

    v678 = [v212 countByEnumeratingWithState:&v772 objects:v771 count:16];
  }

  while (v678);
LABEL_340:
  [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration softISPProcessorControllerConfiguration];
  [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
  [v665 addObject:v688];
  if (dword_1EB58E040)
  {
    v844 = 0;
    v843 = OS_LOG_TYPE_DEFAULT;
    v312 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v313 = v844;
    if (os_log_type_enabled(v312, v843))
    {
      v314 = v313;
    }

    else
    {
      v314 = v313 & 0xFFFFFFFE;
    }

    if (v314)
    {
      mach_absolute_time();
      v315 = FigHostTimeToNanoseconds();
      v763 = 136315650;
      v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
      v765 = 2114;
      v766 = v658;
      v767 = 2048;
      v768 = (v315 / 1000) / 1000.0;
      LODWORD(v656) = 32;
      v634 = &v763;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [array removeLastObject];
  if (dword_1EB58E040)
  {
    v844 = 0;
    v843 = OS_LOG_TYPE_DEFAULT;
    v316 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v317 = v844;
    if (os_log_type_enabled(v316, v843))
    {
      v318 = v317;
    }

    else
    {
      v318 = v317 & 0xFFFFFFFE;
    }

    if (v318)
    {
      mach_absolute_time();
      v319 = FigHostTimeToNanoseconds();
      v763 = 136315650;
      v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
      v765 = 2114;
      v766 = v659;
      v767 = 2048;
      v768 = (v319 / 1000) / 1000.0;
      LODWORD(v657) = 32;
      v635 = &v763;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v37 = array;
  [array removeLastObject];
  v51 = v660;
LABEL_355:
  if (-[BWStillImageNodeConfiguration deferredPhotoProcessorEnabled](selfCopy->_nodeConfiguration, "deferredPhotoProcessorEnabled") && !-[BWPhotonicEngineNodeConfiguration learnedNRMode](selfCopy->_nodeConfiguration) && ![-[BWPhotonicEngineNodeConfiguration portTypesWithLearnedFusionEnabled](selfCopy->_nodeConfiguration) count])
  {
LABEL_389:
    if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deepFusionProcessorControllerConfiguration])
    {
      FigDebugIsInternalBuild();
      v346 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 6];
      mach_absolute_time();
      [v37 addObject:v346];
      v347 = [[BWDeepFusionProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deepFusionProcessorControllerConfiguration]];
      if (!v347)
      {
        goto LABEL_681;
      }

      [v665 addObject:v347];
      if (dword_1EB58E040)
      {
        v844 = 0;
        v843 = OS_LOG_TYPE_DEFAULT;
        v348 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v349 = v844;
        if (os_log_type_enabled(v348, v843))
        {
          v350 = v349;
        }

        else
        {
          v350 = v349 & 0xFFFFFFFE;
        }

        if (v350)
        {
          mach_absolute_time();
          v351 = FigHostTimeToNanoseconds();
          v763 = 136315650;
          v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
          v765 = 2114;
          v766 = v346;
          v767 = 2048;
          v768 = (v351 / 1000) / 1000.0;
          LODWORD(v656) = 32;
          v638 = &v763;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v37 = array;
      [array removeLastObject];
    }

    if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deferredCaptureControllerConfiguration])
    {
      FigDebugIsInternalBuild();
      v352 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 8];
      mach_absolute_time();
      [v37 addObject:v352];
      v353 = [[BWDeferredCaptureController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deferredCaptureControllerConfiguration]];
      if (!v353)
      {
        goto LABEL_681;
      }

      [v665 addObject:v353];
      if (dword_1EB58E040)
      {
        v844 = 0;
        v843 = OS_LOG_TYPE_DEFAULT;
        v354 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v355 = v844;
        if (os_log_type_enabled(v354, v843))
        {
          v356 = v355;
        }

        else
        {
          v356 = v355 & 0xFFFFFFFE;
        }

        if (v356)
        {
          mach_absolute_time();
          v357 = FigHostTimeToNanoseconds();
          v763 = 136315650;
          v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
          v765 = 2114;
          v766 = v352;
          v767 = 2048;
          v768 = (v357 / 1000) / 1000.0;
          LODWORD(v656) = 32;
          v639 = &v763;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v37 = array;
      [array removeLastObject];
    }

    if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deferredProcessorControllerConfiguration])
    {
      FigDebugIsInternalBuild();
      v358 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 9];
      mach_absolute_time();
      [v37 addObject:v358];
      v359 = [[BWDeferredProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deferredProcessorControllerConfiguration]];
      if (!v359)
      {
        goto LABEL_681;
      }

      [v665 addObject:v359];
      if (dword_1EB58E040)
      {
        v844 = 0;
        v843 = OS_LOG_TYPE_DEFAULT;
        v360 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v361 = v844;
        if (os_log_type_enabled(v360, v843))
        {
          v362 = v361;
        }

        else
        {
          v362 = v361 & 0xFFFFFFFE;
        }

        if (v362)
        {
          mach_absolute_time();
          v363 = FigHostTimeToNanoseconds();
          v763 = 136315650;
          v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
          v765 = 2114;
          v766 = v358;
          v767 = 2048;
          v768 = (v363 / 1000) / 1000.0;
          LODWORD(v656) = 32;
          v640 = &v763;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v37 = array;
      [array removeLastObject];
    }

    if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deepFusionSyntheticsInNRSupportEnabled])
    {
      FigDebugIsInternalBuild();
      v364 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 7];
      mach_absolute_time();
      [v37 addObject:v364];
      v365 = objc_alloc_init(BWVideoFormatRequirements);
      v366 = [objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
      v367 = [objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
      v368 = v366 + 15;
      v369 = v367 + 15;
      [(BWVideoFormatRequirements *)v365 setWidth:(v368 >> 1) & 0x7FFFFFFFFFFFFFF8];
      [(BWVideoFormatRequirements *)v365 setHeight:(v369 >> 1) & 0x7FFFFFFFFFFFFFF8];
      [(BWVideoFormatRequirements *)v365 setSupportedPixelFormats:&unk_1F2248CB8];
      v735 = v365;
      v370 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v735 count:1]);
      maxDeepFusionOutputCount = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration maxDeepFusionOutputCount];
      maxDeepFusionOutputCount2 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration maxDeepFusionOutputCount];
      LODWORD(v365) = [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredCaptureSupportEnabled];
      v373 = [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")];
      v374 = v373;
      if (v365)
      {
        v375 = [objc_msgSend(v373 "pixelBufferAttributes")];
        [v375 setObject:&unk_1F2248CD0 forKeyedSubscript:*MEMORY[0x1E6966038]];
        v376 = [[BWVideoFormatRequirements alloc] initWithPixelBufferAttributes:v375];
        [(BWVideoFormatRequirements *)v376 setSupportedPixelFormats:&unk_1F2248CE8];
        v734 = v376;
        v374 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v734 count:1]);
      }

      if (!v374 || !maxDeepFusionOutputCount || !maxDeepFusionOutputCount2)
      {
        goto LABEL_681;
      }

      v377 = 2 * maxDeepFusionOutputCount;
      v378 = 3 * maxDeepFusionOutputCount2;
      if ([(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredCaptureSupportEnabled])
      {
        v379 = [[BWDeferredContainerPixelBufferPool alloc] initWithVideoFormat:v374 capacity:v377 name:@"DeepFusion deferred synthetic intermediate pool"];
        v380 = [[BWDeferredContainerPixelBufferPool alloc] initWithVideoFormat:v370 capacity:v378 name:@"DeepFusion deferred fusion map pool"];
      }

      else
      {
        v379 = [[BWPixelBufferPool alloc] initWithVideoFormat:v374 capacity:v377 name:@"Deep Fusion synthetic intermediate pool" memoryPool:memoryPool];
        v380 = [[BWPixelBufferPool alloc] initWithVideoFormat:v370 capacity:v378 name:@"Deep Fusion synthetic fusion map pool" memoryPool:memoryPool];
      }

      v381 = v380;
      v36 = 0x1E696A000uLL;
      if (!v379)
      {
        goto LABEL_681;
      }

      v382 = v381;
      selfCopy->_syntheticIntermediatesPool = v379;
      selfCopy->_fusionMapPool = v382;
      if (dword_1EB58E040)
      {
        v844 = 0;
        v843 = OS_LOG_TYPE_DEFAULT;
        v383 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v384 = v844;
        if (os_log_type_enabled(v383, v843))
        {
          v385 = v384;
        }

        else
        {
          v385 = v384 & 0xFFFFFFFE;
        }

        if (v385)
        {
          mach_absolute_time();
          v386 = FigHostTimeToNanoseconds();
          v763 = 136315650;
          v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
          v765 = 2114;
          v766 = v364;
          v767 = 2048;
          v768 = (v386 / 1000) / 1000.0;
          LODWORD(v656) = 32;
          v641 = &v763;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [array removeLastObject];
    }

    v387 = v698;
    if (![(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRProcessorControllerConfiguration])
    {
      goto LABEL_471;
    }

    FigDebugIsInternalBuild();
    v388 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 10];
    mach_absolute_time();
    [array addObject:v388];
    v389 = [[BWLearnedNRProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration learnedNRProcessorControllerConfiguration]];
    if (!v389)
    {
      v393 = 0;
      goto LABEL_463;
    }

    v390 = v389;
    v391 = objc_alloc(MEMORY[0x1E695DF90]);
    if (selfCopy->_inferenceOutputPixelBufferProvidersByAttachedMediaKey)
    {
      inferenceOutputPixelBufferProvidersByAttachedMediaKey = selfCopy->_inferenceOutputPixelBufferProvidersByAttachedMediaKey;
    }

    else
    {
      inferenceOutputPixelBufferProvidersByAttachedMediaKey = MEMORY[0x1E695E0F8];
    }

    v393 = [v391 initWithDictionary:inferenceOutputPixelBufferProvidersByAttachedMediaKey];
    if ([-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")])
    {
      v394 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")], 1, @"LearnedNR output pool", memoryPool);
      if (!v394)
      {
        goto LABEL_463;
      }

      v395 = v394;
      [(NSDictionary *)v393 setObject:v394 forKeyedSubscript:0x1F219ED10];
    }

    if ([-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")])
    {
      v396 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")], @"Zoom based LearnedNR output allocator", memoryPool, 0);
      if (!v396)
      {
        goto LABEL_463;
      }

      [(NSDictionary *)v393 setObject:v396 forKeyedSubscript:0x1F219ED30];
    }

    if ([-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")])
    {
      v397 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")], @"Aspect ratio crop landscape LearnedNR output allocator", memoryPool, 0);
      if (!v397)
      {
        goto LABEL_463;
      }

      [(NSDictionary *)v393 setObject:v397 forKeyedSubscript:0x1F219ED50];
    }

    if ([-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")])
    {
      v398 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")], @"Aspect ratio crop portrait LearnedNR output allocator", memoryPool, 0);
      if (!v398)
      {
        goto LABEL_463;
      }

      [(NSDictionary *)v393 setObject:v398 forKeyedSubscript:0x1F219ED70];
    }

    if ([-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")])
    {
      v399 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")], @"Aspect ratio crop square LearnedNR output allocator", memoryPool, 0);
      if (!v399)
      {
        goto LABEL_463;
      }

      [(NSDictionary *)v393 setObject:v399 forKeyedSubscript:0x1F219ED90];
    }

    if (![-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")])
    {
LABEL_460:

      selfCopy->_inferenceOutputPixelBufferProvidersByAttachedMediaKey = v393;
      if (![(BWLearnedNRProcessorController *)v390 prepareWithPixelBufferPoolProvider:selfCopy])
      {
        [v665 addObject:v390];
      }

      v393 = 0;
      goto LABEL_463;
    }

    v400 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", [-[BWPhotonicEngineNodeConfiguration learnedNRProcessorControllerConfiguration](selfCopy->_nodeConfiguration "learnedNRProcessorControllerConfiguration")], 1, @"Ultra High Resolution LearnedNR output pool", memoryPool);
    if (v400)
    {
      v401 = v400;
      [(NSDictionary *)v393 setObject:v400 forKeyedSubscript:0x1F219EDB0];

      goto LABEL_460;
    }

LABEL_463:

    if (dword_1EB58E040)
    {
      v844 = 0;
      v843 = OS_LOG_TYPE_DEFAULT;
      v402 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v403 = v844;
      if (os_log_type_enabled(v402, v843))
      {
        v404 = v403;
      }

      else
      {
        v404 = v403 & 0xFFFFFFFE;
      }

      if (v404)
      {
        mach_absolute_time();
        v405 = FigHostTimeToNanoseconds();
        v763 = 136315650;
        v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
        v765 = 2114;
        v766 = v388;
        v767 = 2048;
        v768 = (v405 / 1000) / 1000.0;
        LODWORD(v656) = 32;
        v642 = &v763;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [array removeLastObject];
LABEL_471:
    if (![(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration inferenceControllerConfiguration])
    {
      height4 = 0;
      width4 = 0;
      v460 = array;
      goto LABEL_586;
    }

    FigDebugIsInternalBuild();
    v406 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 11];
    mach_absolute_time();
    [array addObject:v406];
    inferenceMainImageDownscalingFactor = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration inferenceMainImageDownscalingFactor];
    v674 = v406;
    if (*&inferenceMainImageDownscalingFactor == 0.0)
    {
      goto LABEL_805;
    }

    v408 = +[BWVideoFormatRequirements formatRequirements];
    v409 = +[BWVideoFormatRequirements formatRequirements];
    if (![(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration processingAspectRatio]|| (v410 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration processingAspectRatio], v411 = p_output, v410 == 6))
    {
      v411 = p_input;
    }

    v412 = 875704422;
    videoFormat = [*v411 videoFormat];
    width = [videoFormat width];
    inferenceMainImageDownscalingFactor2 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration inferenceMainImageDownscalingFactor];
    v416 = FigCaptureRoundFloatToMultipleOf(2, width / *&inferenceMainImageDownscalingFactor2);
    height = [videoFormat height];
    inferenceMainImageDownscalingFactor3 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration inferenceMainImageDownscalingFactor];
    v689 = FigCaptureRoundFloatToMultipleOf(2, height / *&inferenceMainImageDownscalingFactor3);
    if (FigCapturePlatformSupportsUniversalCompression())
    {
      v412 = FigCaptureCompressedPixelFormatForPixelFormat(875704422, 4, 0);
    }

    [v408 setWidth:v416];
    [v408 setHeight:v689];
    [v408 setWidthAlignment:8];
    [v408 setHeightAlignment:8];
    v733 = [*(v36 + 3480) numberWithUnsignedInt:v412];
    v693 = v408;
    [v408 setSupportedPixelFormats:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v733, 1)}];
    if (v416 <= 0x200)
    {
      v419 = 512;
    }

    else
    {
      v419 = v416;
    }

    [v409 setWidth:v419];
    if (v689 <= 0x180)
    {
      v420 = 384;
    }

    else
    {
      v420 = v689;
    }

    [v409 setHeight:v420];
    [v409 setWidthAlignment:8];
    [v409 setHeightAlignment:8];
    v697 = v412;
    v732 = [*(v36 + 3480) numberWithUnsignedInt:v412];
    [v409 setSupportedPixelFormats:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v732, 1)}];
    v731 = v409;
    v421 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v731 count:1]);
    v422 = [-[BWPhotonicEngineNodeConfiguration providedInferenceAttachedMediaByMode](selfCopy->_nodeConfiguration) objectForKeyedSubscript:&unk_1F2244B48];
    outputBufferCount = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration outputBufferCount];
    if (v422)
    {
      v424 = 2;
    }

    else
    {
      v424 = 1;
    }

    v425 = [[BWPixelBufferPool alloc] initWithVideoFormat:v421 capacity:(outputBufferCount << v424) name:@"Inference input pool for standard resolution" memoryPool:memoryPool];
    selfCopy->_intermediateInferenceInputPool = v425;
    if (!v425)
    {
      v473 = 0;
      height4 = 0;
      width4 = 0;
      goto LABEL_572;
    }

    obja = v416;
    dictionary8 = [MEMORY[0x1E695DF90] dictionary];
    v727 = 0u;
    v728 = 0u;
    v729 = 0u;
    v730 = 0u;
    v427 = [v698 countByEnumeratingWithState:&v727 objects:v726 count:16];
    if (!v427)
    {
      goto LABEL_517;
    }

    v428 = v427;
    v429 = *v728;
LABEL_490:
    v430 = 0;
    while (1)
    {
      if (*v728 != v429)
      {
        objc_enumerationMutation(v387);
      }

      intValue2 = [*(*(&v727 + 1) + 8 * v430) intValue];
      dimensionsByResolutionFlavorByPortType7 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
      v433 = BWDimensionsWithResolutionFlavor(dimensionsByResolutionFlavorByPortType7, intValue2);
      v434 = FigCaptureLargestDimensionsFromDimensionsArray(v433);
      rawSensorDimensions = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration rawSensorDimensions];
      v436 = -[BWPhotonicEngineNodeResourceCoordinator _resolvedAdditionalProcessingDimensionsWithAdditionalSourceDimensions:standardSoftISPOutputDimensions:](selfCopy, v434, [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
      if (v434 != rawSensorDimensions || intValue2 == 5)
      {
        break;
      }

LABEL_515:
      if (v428 == ++v430)
      {
        v428 = [v387 countByEnumeratingWithState:&v727 objects:v726 count:16];
        if (v428)
        {
          goto LABEL_490;
        }

LABEL_517:
        v457 = [dictionary8 count];
        if (v457)
        {
          v457 = [dictionary8 copy];
        }

        v458 = obja;
        selfCopy->_inferenceInputPixelBufferProviderByResolutionFlavor = v457;
        if ([v693 width] < 0x201)
        {
          width2 = 512;
        }

        else
        {
          width2 = [v693 width];
        }

        [v693 setWidth:width2];
        if ([v693 height] < 0x181)
        {
          height2 = 384;
        }

        else
        {
          height2 = [v693 height];
        }

        [v693 setHeight:height2];
        v723 = v693;
        [-[BWPhotonicEngineNodeConfiguration inferenceControllerConfiguration](selfCopy->_nodeConfiguration "inferenceControllerConfiguration")];
        width3 = [v693 width];
        if (width3 <= [v693 height])
        {
          height3 = [v693 height];
          v458 = v689;
        }

        else
        {
          height3 = [v693 width];
        }

        v464 = height3 / v458;
        inferenceControllerConfiguration = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration inferenceControllerConfiguration];
        *&v466 = v464;
        [inferenceControllerConfiguration setMainImageDownscalingFactor:v466];
        v467 = [BWInferenceEngineController alloc];
        inferenceControllerConfiguration2 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration inferenceControllerConfiguration];
        v469 = -[BWInferenceEngineController initWithConfiguration:contextName:](v467, "initWithConfiguration:contextName:", inferenceControllerConfiguration2, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-PhotonicEngine", -[BWStillImageNodeConfiguration pipelineProcessingContext](selfCopy->_nodeConfiguration, "pipelineProcessingContext")]);
        if (v469)
        {
          v470 = v469;
          v471 = objc_alloc(MEMORY[0x1E695DF90]);
          if (selfCopy->_inferenceOutputPixelBufferProvidersByAttachedMediaKey)
          {
            v472 = selfCopy->_inferenceOutputPixelBufferProvidersByAttachedMediaKey;
          }

          else
          {
            v472 = MEMORY[0x1E695E0F8];
          }

          v473 = [v471 initWithDictionary:v472];
          v719 = 0u;
          v720 = 0u;
          v721 = 0u;
          v722 = 0u;
          objb = [(BWInferenceEngineController *)v470 providedAttachedMediaKeys];
          v474 = [(NSArray *)objb countByEnumeratingWithState:&v719 objects:v718 count:16];
          if (v474)
          {
            v475 = v474;
            height4 = 0;
            v476 = *v720;
            width4 = 0;
            v679 = *v720;
            while (2)
            {
              v477 = 0;
              v682 = v475;
              do
              {
                if (*v720 != v476)
                {
                  objc_enumerationMutation(objb);
                }

                v478 = *(*(&v719 + 1) + 8 * v477);
                v479 = [*p_output mediaPropertiesForAttachedMediaKey:v478];
                if ([v479 preparedPixelBufferPool])
                {
                  resolvedVideoFormat = [v479 resolvedVideoFormat];
                  if (([resolvedVideoFormat isEqual:{-[BWInferenceEngineController outputVideoFormatForAttachedMediaKey:](v470, "outputVideoFormatForAttachedMediaKey:", v478)}] & 1) == 0)
                  {
                    goto LABEL_572;
                  }
                }

                else
                {
                  v481 = [(BWInferenceEngineController *)v470 outputVideoFormatForAttachedMediaKey:v478];
                  if (!v481)
                  {
                    goto LABEL_572;
                  }

                  resolvedVideoFormat = v481;
                  v482 = v470;
                  v483 = v473;
                  deferredCaptureSupportEnabled2 = [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredCaptureSupportEnabled];
                  stereoPhotoOutputDimensions2 = [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration stereoPhotoOutputDimensions];
                  if (SHIDWORD(stereoPhotoOutputDimensions2) <= 0 || stereoPhotoOutputDimensions2 <= 0)
                  {
                    v487 = 2;
                  }

                  else
                  {
                    v487 = 3;
                  }

                  v488 = [BWPixelBufferPool alloc];
                  v478 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UB %@ Output Pool", v478];
                  LOBYTE(v644) = deferredCaptureSupportEnabled2;
                  v490 = [(BWPixelBufferPool *)v488 initWithVideoFormat:resolvedVideoFormat capacity:v487 name:v478 clientProvidesPool:0 memoryPool:memoryPool providesBackPressure:deferredCaptureSupportEnabled2 reportSlowBackPressureAllocations:v644];
                  if (!v490)
                  {
                    v473 = v483;
                    goto LABEL_572;
                  }

                  v491 = v490;
                  v473 = v483;
                  [(NSDictionary *)v483 setObject:v490 forKeyedSubscript:v478];

                  v470 = v482;
                  v476 = v679;
                  v475 = v682;
                }

                if (-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "intelligentDistortionCorrectionProcessorControllerConfiguration") && (([v478 isEqualToString:0x1F219E750] & 1) != 0 || objc_msgSend(v478, "isEqualToString:", 0x1F21AADF0)))
                {
                  width4 = [resolvedVideoFormat width];
                  height4 = [resolvedVideoFormat height];
                }

                ++v477;
              }

              while (v475 != v477);
              v475 = [(NSArray *)objb countByEnumeratingWithState:&v719 objects:v718 count:16];
              if (v475)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            height4 = 0;
            width4 = 0;
          }

          if ([(NSDictionary *)v473 count])
          {

            selfCopy->_inferenceOutputPixelBufferProvidersByAttachedMediaKey = v473;
            v473 = 0;
          }

          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration postponeInferenceControllerPreparation])
          {
            [(NSMutableArray *)selfCopy->_postponedProcessorTypes addObject:&unk_1F2244B90];
            goto LABEL_570;
          }

          FigDebugIsInternalBuild();
          v492 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 12];
          mach_absolute_time();
          [array addObject:v492];
          v493 = [(BWInferenceEngineController *)v470 prepareWithPixelBufferPoolProvider:selfCopy];
          if (dword_1EB58E040)
          {
            v844 = 0;
            v843 = OS_LOG_TYPE_DEFAULT;
            v494 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v495 = v844;
            if (os_log_type_enabled(v494, v843))
            {
              v496 = v495;
            }

            else
            {
              v496 = v495 & 0xFFFFFFFE;
            }

            if (v496)
            {
              mach_absolute_time();
              v497 = FigHostTimeToNanoseconds();
              v763 = 136315650;
              v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
              v765 = 2114;
              v766 = v492;
              v767 = 2048;
              v768 = (v497 / 1000) / 1000.0;
              LODWORD(v656) = 32;
              v645 = &v763;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [array removeLastObject];
          if (!v493)
          {
LABEL_570:
            [v665 addObject:v470];
            goto LABEL_578;
          }

LABEL_572:
          v844 = 0;
          v843 = OS_LOG_TYPE_DEFAULT;
          v498 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v499 = v844;
          if (os_log_type_enabled(v498, v843))
          {
            v500 = v499;
          }

          else
          {
            v500 = v499 & 0xFFFFFFFE;
          }

          if (v500)
          {
            v763 = 136315138;
            v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
            LODWORD(v656) = 12;
            v643 = &v763;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_578:

          if (dword_1EB58E040)
          {
            v844 = 0;
            v843 = OS_LOG_TYPE_DEFAULT;
            v501 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v502 = v844;
            if (os_log_type_enabled(v501, v843))
            {
              v503 = v502;
            }

            else
            {
              v503 = v502 & 0xFFFFFFFE;
            }

            if (v503)
            {
              mach_absolute_time();
              v504 = FigHostTimeToNanoseconds();
              v763 = 136315650;
              v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
              v765 = 2114;
              v766 = v674;
              v767 = 2048;
              v768 = (v504 / 1000) / 1000.0;
              LODWORD(v656) = 32;
              v643 = &v763;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v460 = array;
          [array removeLastObject];
LABEL_586:
          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration swfrProcessorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v505 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 13];
            mach_absolute_time();
            [v460 addObject:v505];
            v506 = [[BWSWFRProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration swfrProcessorControllerConfiguration]];
            if (v506)
            {
              [v665 addObject:v506];
              if (dword_1EB58E040)
              {
                v844 = 0;
                v843 = OS_LOG_TYPE_DEFAULT;
                v507 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v508 = v844;
                if (os_log_type_enabled(v507, v843))
                {
                  v509 = v508;
                }

                else
                {
                  v509 = v508 & 0xFFFFFFFE;
                }

                if (v509)
                {
                  mach_absolute_time();
                  v510 = FigHostTimeToNanoseconds();
                  v763 = 136315650;
                  v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                  v765 = 2114;
                  v766 = v505;
                  v767 = 2048;
                  v768 = (v510 / 1000) / 1000.0;
                  LODWORD(v656) = 32;
                  v646 = &v763;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v460 = array;
              [array removeLastObject];
              goto LABEL_596;
            }

            goto LABEL_681;
          }

LABEL_596:
          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration colorConstancyProcessorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v511 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 22];
            mach_absolute_time();
            [v460 addObject:v511];
            v512 = [[BWColorConstancyProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration colorConstancyProcessorControllerConfiguration]];
            if (!v512)
            {
              goto LABEL_681;
            }

            [v665 addObject:v512];
            if (dword_1EB58E040)
            {
              v844 = 0;
              v843 = OS_LOG_TYPE_DEFAULT;
              v513 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v514 = v844;
              if (os_log_type_enabled(v513, v843))
              {
                v515 = v514;
              }

              else
              {
                v515 = v514 & 0xFFFFFFFE;
              }

              if (v515)
              {
                mach_absolute_time();
                v516 = FigHostTimeToNanoseconds();
                v763 = 136315650;
                v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                v765 = 2114;
                v766 = v511;
                v767 = 2048;
                v768 = (v516 / 1000) / 1000.0;
                LODWORD(v656) = 32;
                v647 = &v763;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v460 = array;
            [array removeLastObject];
          }

          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration redEyeProcessorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v517 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 14];
            mach_absolute_time();
            [v460 addObject:v517];
            v518 = [[BWRedEyeReductionController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration redEyeProcessorControllerConfiguration]];
            if (!v518)
            {
              goto LABEL_681;
            }

            [v665 addObject:v518];
            if (dword_1EB58E040)
            {
              v844 = 0;
              v843 = OS_LOG_TYPE_DEFAULT;
              v519 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v520 = v844;
              if (os_log_type_enabled(v519, v843))
              {
                v521 = v520;
              }

              else
              {
                v521 = v520 & 0xFFFFFFFE;
              }

              if (v521)
              {
                mach_absolute_time();
                v522 = FigHostTimeToNanoseconds();
                v763 = 136315650;
                v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                v765 = 2114;
                v766 = v517;
                v767 = 2048;
                v768 = (v522 / 1000) / 1000.0;
                LODWORD(v656) = 32;
                v648 = &v763;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v460 = array;
            [array removeLastObject];
          }

          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v523 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 15];
            mach_absolute_time();
            [v460 addObject:v523];
            if ([objc_msgSend(-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "intelligentDistortionCorrectionProcessorControllerConfiguration")])
            {
              if ([(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredPhotoProcessorEnabled])
              {
                width4 = 512;
                height4 = 384;
              }

              else if (![(BWPhotonicEngineNodeResourceCoordinator *)selfCopy _inferenceOutputPixelBufferPoolForAttachedMediaKey:*p_output output:?]&& ![(BWPhotonicEngineNodeResourceCoordinator *)selfCopy _inferenceOutputPixelBufferPoolForAttachedMediaKey:*p_output output:?]|| !width4 || !height4)
              {
                goto LABEL_681;
              }
            }

            v524 = [objc_msgSend(*p_output "videoFormat")];
            v525 = [objc_msgSend(*p_output "videoFormat")];
            v526 = width4 | (height4 << 32);
            if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deepFusionProcessorControllerConfiguration]&& v664 >= 1 && SHIDWORD(v664) >= 1)
            {
              if (v524 <= v664)
              {
                v524 = v664;
              }

              if (v525 <= HIDWORD(v664))
              {
                v525 = HIDWORD(v664);
              }

              else
              {
                v525 = v525;
              }
            }

            IsEqualForDimensions = FigCaptureOrientationIsEqualForDimensions([objc_msgSend(*p_output "videoFormat")], v526);
            v528 = __ROR8__(v526, 32);
            v714 = 0u;
            v715 = 0u;
            if (IsEqualForDimensions)
            {
              v529 = width4 | (height4 << 32);
            }

            else
            {
              v529 = v528;
            }

            v716 = 0uLL;
            v717 = 0uLL;
            v530 = [v698 countByEnumeratingWithState:&v714 objects:v713 count:16];
            if (v530)
            {
              v531 = v530;
              v532 = *v715;
              do
              {
                for (n = 0; n != v531; ++n)
                {
                  if (*v715 != v532)
                  {
                    objc_enumerationMutation(v698);
                  }

                  intValue3 = [*(*(&v714 + 1) + 8 * n) intValue];
                  dimensionsByResolutionFlavorByPortType8 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
                  v536 = BWDimensionsWithResolutionFlavor(dimensionsByResolutionFlavorByPortType8, intValue3);
                  v537 = FigCaptureLargestDimensionsFromDimensionsArray(v536);
                  if ((intValue3 - 3) < 4)
                  {
                    if (!FigCaptureOrientationIsEqualForDimensions([objc_msgSend(*p_output "videoFormat")], v537))
                    {
                      continue;
                    }

                    v538 = HIDWORD(v537);
                    if (v524 <= v537)
                    {
                      v524 = v537;
                    }

LABEL_640:
                    if (v525 <= v538)
                    {
                      v525 = v538;
                    }

                    else
                    {
                      v525 = v525;
                    }

                    continue;
                  }

                  if (intValue3 != 2)
                  {
                    if (intValue3 != 1)
                    {
                      continue;
                    }

                    v539 = -[BWPhotonicEngineNodeResourceCoordinator _resolvedAdditionalProcessingDimensionsWithAdditionalSourceDimensions:standardSoftISPOutputDimensions:](selfCopy, v537, [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration "softISPProcessorControllerConfiguration")]);
                    v538 = HIDWORD(v539);
                    if (v524 <= v539)
                    {
                      v524 = v539;
                    }

                    goto LABEL_640;
                  }

                  ultraHighResolutionProcessingEnabled2 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration ultraHighResolutionProcessingEnabled];
                  if (v524 <= v686)
                  {
                    v541 = v686;
                  }

                  else
                  {
                    v541 = v524;
                  }

                  if (v525 <= v687)
                  {
                    v542 = v687;
                  }

                  else
                  {
                    v542 = v525;
                  }

                  if (ultraHighResolutionProcessingEnabled2)
                  {
                    v525 = v542;
                  }

                  else
                  {
                    v525 = v525;
                  }

                  if (ultraHighResolutionProcessingEnabled2)
                  {
                    v524 = v541;
                  }
                }

                v531 = [v698 countByEnumeratingWithState:&v714 objects:v713 count:16];
              }

              while (v531);
            }

            [-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "intelligentDistortionCorrectionProcessorControllerConfiguration")];
            if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration depthDataDeliveryEnabled]&& [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration depthDataType]== 3 && [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration dcProcessingWithDepthSupported])
            {
              if ([(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration pearlModuleType]== 3)
              {
                v543 = 0;
              }

              else
              {
                v543 = FigCaptureFrontDepthDataToRGBRotationAngle();
              }

              [-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "intelligentDistortionCorrectionProcessorControllerConfiguration")];
            }

            v544 = [[BWIntelligentDistortionCorrectionProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration]];
            if (!v544)
            {
              goto LABEL_681;
            }

            [v665 addObject:v544];
            stereoPhotoOutputDimensions3 = [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration stereoPhotoOutputDimensions];
            if (stereoPhotoOutputDimensions3 >= 1 && SHIDWORD(stereoPhotoOutputDimensions3) >= 1)
            {
              deepFusionEnhancedResolutionDimensions = [(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deepFusionEnhancedResolutionDimensions];
              v548 = deepFusionEnhancedResolutionDimensions > 0 && SHIDWORD(deepFusionEnhancedResolutionDimensions) > 0;
              v549 = [objc_msgSend(-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](selfCopy->_nodeConfiguration "intelligentDistortionCorrectionProcessorControllerConfiguration")];
              v550 = [objc_msgSend(*p_output "videoFormat")];
              v551 = objc_alloc_init(BWVideoFormatRequirements);
              [(BWVideoFormatRequirements *)v551 setWidth:[(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration stereoPhotoOutputDimensions]];
              [(BWVideoFormatRequirements *)v551 setHeight:[(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration stereoPhotoOutputDimensions]>> 32];
              [(BWVideoFormatRequirements *)v551 setWidthAlignment:16];
              [(BWVideoFormatRequirements *)v551 setHeightAlignment:16];
              v712 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v550];
              -[BWVideoFormatRequirements setSupportedPixelFormats:](v551, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v712 count:1]);
              if ([objc_msgSend(*p_input "videoFormat")])
              {
                v711 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(*p_input, "videoFormat"), "colorSpaceProperties")}];
                v552 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v711 count:1];
              }

              else
              {
                v552 = 0;
              }

              [(BWVideoFormatRequirements *)v551 setSupportedColorSpaceProperties:v552];
              v710 = v551;
              v553 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v710 count:1]);
              v554 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v553, v549 + 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"Stereo photo output pool (%@)", BWStringForOSType()], memoryPool);
              selfCopy->_stereoPhotoOutputPool = v554;
              if (v554 == 0 || v548)
              {
                if (!v554)
                {
                  goto LABEL_681;
                }
              }

              else
              {
                [-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepZoomProcessorControllerConfiguration")];
                [-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](selfCopy->_nodeConfiguration "deepZoomProcessorControllerConfiguration")];
              }
            }

            if (dword_1EB58E040)
            {
              v844 = 0;
              v843 = OS_LOG_TYPE_DEFAULT;
              v559 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v560 = v844;
              if (os_log_type_enabled(v559, v843))
              {
                v561 = v560;
              }

              else
              {
                v561 = v560 & 0xFFFFFFFE;
              }

              if (v561)
              {
                mach_absolute_time();
                v562 = FigHostTimeToNanoseconds();
                v763 = 136315650;
                v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                v765 = 2114;
                v766 = v523;
                v767 = 2048;
                v768 = (v562 / 1000) / 1000.0;
                LODWORD(v656) = 32;
                v649 = &v763;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v460 = array;
            [array removeLastObject];
          }

          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deepZoomProcessorControllerConfiguration])
          {
            if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration postponeSelectResourceAlloctions])
            {
              [(NSMutableArray *)selfCopy->_postponedProcessorTypes addObject:&unk_1F2244BA8];
            }

            else
            {
              FigDebugIsInternalBuild();
              v563 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 16];
              mach_absolute_time();
              [v460 addObject:v563];
              v564 = [[BWDeepZoomProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration deepZoomProcessorControllerConfiguration]];
              if (!v564)
              {
                goto LABEL_681;
              }

              v565 = v564;
              if ([(BWDeepZoomProcessorController *)v564 prepareWithPixelBufferPoolProvider:selfCopy])
              {
                goto LABEL_681;
              }

              [v665 addObject:v565];
              if (dword_1EB58E040)
              {
                v844 = 0;
                v843 = OS_LOG_TYPE_DEFAULT;
                v566 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v567 = v844;
                if (os_log_type_enabled(v566, v843))
                {
                  v568 = v567;
                }

                else
                {
                  v568 = v567 & 0xFFFFFFFE;
                }

                if (v568)
                {
                  mach_absolute_time();
                  v569 = FigHostTimeToNanoseconds();
                  v763 = 136315650;
                  v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                  v765 = 2114;
                  v766 = v563;
                  v767 = 2048;
                  v768 = (v569 / 1000) / 1000.0;
                  LODWORD(v656) = 32;
                  v650 = &v763;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v460 = array;
              [array removeLastObject];
            }
          }

          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration scalerProcessorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v573 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 17];
            mach_absolute_time();
            [v460 addObject:v573];
            v574 = [[BWScalerProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration scalerProcessorControllerConfiguration]];
            if (!v574)
            {
              goto LABEL_681;
            }

            [v665 addObject:v574];
            if (dword_1EB58E040)
            {
              v844 = 0;
              v843 = OS_LOG_TYPE_DEFAULT;
              v575 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v576 = v844;
              if (os_log_type_enabled(v575, v843))
              {
                v577 = v576;
              }

              else
              {
                v577 = v576 & 0xFFFFFFFE;
              }

              if (v577)
              {
                mach_absolute_time();
                v578 = FigHostTimeToNanoseconds();
                v763 = 136315650;
                v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                v765 = 2114;
                v766 = v573;
                v767 = 2048;
                v768 = (v578 / 1000) / 1000.0;
                LODWORD(v656) = 32;
                v651 = &v763;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v460 = array;
            [array removeLastObject];
          }

          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration smartStyleRenderingProcessorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v579 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 21];
            mach_absolute_time();
            [v460 addObject:v579];
            v580 = [[BWSmartStyleRenderingProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration smartStyleRenderingProcessorControllerConfiguration]];
            if (!v580)
            {
              goto LABEL_681;
            }

            [v665 addObject:v580];
            if (dword_1EB58E040)
            {
              v844 = 0;
              v843 = OS_LOG_TYPE_DEFAULT;
              v581 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v582 = v844;
              if (os_log_type_enabled(v581, v843))
              {
                v583 = v582;
              }

              else
              {
                v583 = v582 & 0xFFFFFFFE;
              }

              if (v583)
              {
                mach_absolute_time();
                v584 = FigHostTimeToNanoseconds();
                v763 = 136315650;
                v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                v765 = 2114;
                v766 = v579;
                v767 = 2048;
                v768 = (v584 / 1000) / 1000.0;
                LODWORD(v656) = 32;
                v652 = &v763;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v460 = array;
            [array removeLastObject];
          }

          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration stereoDisparityProcessorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v585 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 18];
            mach_absolute_time();
            [v460 addObject:v585];
            if ([-[BWPhotonicEngineNodeConfiguration stereoDisparityProcessorControllerConfiguration](selfCopy->_nodeConfiguration "stereoDisparityProcessorControllerConfiguration")] == 8 && !-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](selfCopy->_nodeConfiguration, "softISPProcessorControllerConfiguration"))
            {
              goto LABEL_681;
            }

            [-[BWPhotonicEngineNodeConfiguration stereoDisparityProcessorControllerConfiguration](selfCopy->_nodeConfiguration "stereoDisparityProcessorControllerConfiguration")];
            v586 = [[BWStereoDisparityProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration stereoDisparityProcessorControllerConfiguration]];
            if (!v586)
            {
              goto LABEL_681;
            }

            [v665 addObject:v586];
            if (dword_1EB58E040)
            {
              v844 = 0;
              v843 = OS_LOG_TYPE_DEFAULT;
              v587 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v588 = v844;
              if (os_log_type_enabled(v587, v843))
              {
                v589 = v588;
              }

              else
              {
                v589 = v588 & 0xFFFFFFFE;
              }

              if (v589)
              {
                mach_absolute_time();
                v590 = FigHostTimeToNanoseconds();
                v763 = 136315650;
                v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                v765 = 2114;
                v766 = v585;
                v767 = 2048;
                v768 = (v590 / 1000) / 1000.0;
                LODWORD(v656) = 32;
                v653 = &v763;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v460 = array;
            [array removeLastObject];
          }

          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration jasperColorStillsExecutorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v591 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 19];
            mach_absolute_time();
            [v460 addObject:v591];
            [-[BWPhotonicEngineNodeConfiguration jasperColorStillsExecutorControllerConfiguration](selfCopy->_nodeConfiguration "jasperColorStillsExecutorControllerConfiguration")];
            [-[BWPhotonicEngineNodeConfiguration jasperColorStillsExecutorControllerConfiguration](selfCopy->_nodeConfiguration "jasperColorStillsExecutorControllerConfiguration")];
            v592 = [[BWJasperColorStillsExecutorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration jasperColorStillsExecutorControllerConfiguration]];
            if (!v592)
            {
              goto LABEL_681;
            }

            [v665 addObject:v592];
            if (dword_1EB58E040)
            {
              v844 = 0;
              v843 = OS_LOG_TYPE_DEFAULT;
              v593 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v594 = v844;
              if (os_log_type_enabled(v593, v843))
              {
                v595 = v594;
              }

              else
              {
                v595 = v594 & 0xFFFFFFFE;
              }

              if (v595)
              {
                mach_absolute_time();
                v596 = FigHostTimeToNanoseconds();
                v763 = 136315650;
                v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                v765 = 2114;
                v766 = v591;
                v767 = 2048;
                v768 = (v596 / 1000) / 1000.0;
                LODWORD(v656) = 32;
                v654 = &v763;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v460 = array;
            [array removeLastObject];
          }

          v597 = dictionary2;
          if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration jasperDisparityProcessorControllerConfiguration])
          {
            FigDebugIsInternalBuild();
            v598 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 20];
            mach_absolute_time();
            [v460 addObject:v598];
            [-[BWPhotonicEngineNodeConfiguration jasperDisparityProcessorControllerConfiguration](selfCopy->_nodeConfiguration "jasperDisparityProcessorControllerConfiguration")];
            [-[BWPhotonicEngineNodeConfiguration jasperDisparityProcessorControllerConfiguration](selfCopy->_nodeConfiguration "jasperDisparityProcessorControllerConfiguration")];
            [-[BWPhotonicEngineNodeConfiguration jasperDisparityProcessorControllerConfiguration](selfCopy->_nodeConfiguration "jasperDisparityProcessorControllerConfiguration")];
            v599 = [[BWJasperDisparityProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration jasperDisparityProcessorControllerConfiguration]];
            if (!v599)
            {
              [BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources];
              goto LABEL_681;
            }

            [v665 addObject:v599];
            if (dword_1EB58E040)
            {
              v844 = 0;
              v843 = OS_LOG_TYPE_DEFAULT;
              v600 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v601 = v844;
              if (os_log_type_enabled(v600, v843))
              {
                v602 = v601;
              }

              else
              {
                v602 = v601 & 0xFFFFFFFE;
              }

              if (v602)
              {
                mach_absolute_time();
                v603 = FigHostTimeToNanoseconds();
                v763 = 136315650;
                v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
                v765 = 2114;
                v766 = v598;
                v767 = 2048;
                v768 = (v603 / 1000) / 1000.0;
                LODWORD(v656) = 32;
                v655 = &v763;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v460 = array;
              v597 = dictionary2;
            }

            [v460 removeLastObject];
          }

          v708 = 0u;
          v709 = 0u;
          v706 = 0u;
          v707 = 0u;
          v604 = [v665 countByEnumeratingWithState:&v706 objects:v705 count:16];
          if (v604)
          {
            v605 = v604;
            v606 = *v707;
            do
            {
              for (ii = 0; ii != v605; ++ii)
              {
                if (*v707 != v606)
                {
                  objc_enumerationMutation(v665);
                }

                [(BWStillImageProcessorCoordinator *)selfCopy addController:*(*(&v706 + 1) + 8 * ii)];
              }

              v605 = [v665 countByEnumeratingWithState:&v706 objects:v705 count:16];
            }

            while (v605);
          }

          if ([dictionary3 count])
          {
            v608 = dictionary3;
          }

          else
          {
            v608 = 0;
          }

          [v662 setObject:v608 forKeyedSubscript:&unk_1F2244B48];
          v703 = 0u;
          v704 = 0u;
          v701 = 0u;
          v702 = 0u;
          v609 = [v597 countByEnumeratingWithState:&v701 objects:v700 count:16];
          if (v609)
          {
            v610 = v609;
            v611 = *v702;
            do
            {
              for (jj = 0; jj != v610; ++jj)
              {
                if (*v702 != v611)
                {
                  objc_enumerationMutation(v597);
                }

                v613 = *(*(&v701 + 1) + 8 * jj);
                v614 = [v597 objectForKeyedSubscript:v613];
                if ([v614 count])
                {
                  v615 = v614;
                }

                else
                {
                  v615 = 0;
                }

                [v662 setObject:v615 forKeyedSubscript:v613];
              }

              v610 = [v597 countByEnumeratingWithState:&v701 objects:v700 count:16];
            }

            while (v610);
          }

          selfCopy->_pixelBufferProviderByPixelFormatByResolutionFlavor = [v662 copy];
          if (![(BWStillImageNodeConfiguration *)selfCopy->_nodeConfiguration deferredPhotoProcessorEnabled])
          {
            [(BWPhotonicEngineNodeResourceCoordinator *)selfCopy prepareSharedExternalMemoryResourceForProcessorControllersIfNeededWithSettings:0];
          }

          os_unfair_lock_lock(&selfCopy->_resourceCoordinatorLock);
          selfCopy->_hasSuccessfullySetupProcessorControllersAndMemoryResources = 1;
          os_unfair_lock_unlock(&selfCopy->_resourceCoordinatorLock);
          if (dword_1EB58E040)
          {
            v844 = 0;
            v843 = OS_LOG_TYPE_DEFAULT;
            v616 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v617 = v844;
            if (os_log_type_enabled(v616, v843))
            {
              v618 = v617;
            }

            else
            {
              v618 = v617 & 0xFFFFFFFE;
            }

            if (v618)
            {
              mach_absolute_time();
              v619 = FigHostTimeToNanoseconds();
              v763 = 136315650;
              v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
              v765 = 2114;
              v766 = v661;
              v767 = 2048;
              v768 = (v619 / 1000) / 1000.0;
              LODWORD(v656) = 32;
              v630 = &v763;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [array removeLastObject];
          if (dword_1EB58E040)
          {
            v844 = 0;
            v843 = OS_LOG_TYPE_DEFAULT;
            v620 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v621 = v844;
            if (os_log_type_enabled(v620, v843))
            {
              v622 = v621;
            }

            else
            {
              v622 = v621 & 0xFFFFFFFE;
            }

            if (v622)
            {
              v763 = 136315394;
              v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
              v765 = 2114;
              v766 = selfCopy;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          return 0;
        }

LABEL_805:
        v473 = 0;
        height4 = 0;
        width4 = 0;
        goto LABEL_572;
      }
    }

    v438 = HIDWORD(v436);
    v439 = v436;
    inferenceMainImageDownscalingFactor4 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration inferenceMainImageDownscalingFactor];
    v441 = FigCaptureRoundFloatToMultipleOf(2, v439 / *&inferenceMainImageDownscalingFactor4);
    inferenceMainImageDownscalingFactor5 = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration inferenceMainImageDownscalingFactor];
    v443 = FigCaptureRoundFloatToMultipleOf(2, v438 / *&inferenceMainImageDownscalingFactor5);
    v444 = v443;
    if (intValue2 != 1)
    {
      height5 = v443;
      processingAspectRatio = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration processingAspectRatio];
      if (intValue2 == BWResolutionFlavorForAspectRatio(processingAspectRatio))
      {
        v447 = v693;
        [v693 setWidth:v441];
      }

      else
      {
        if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration processingAspectRatio]!= 6)
        {
          goto LABEL_507;
        }

        v447 = v693;
        width5 = [v693 width];
        width6 = v441;
        if (width5 > v441)
        {
          width6 = [v693 width];
        }

        [v693 setWidth:width6];
        if ([v693 height] > v444)
        {
          height5 = [v693 height];
        }
      }

      [v447 setHeight:height5];
    }

LABEL_507:
    v450 = +[BWVideoFormatRequirements formatRequirements];
    v451 = v450;
    if (v441 <= 0x200)
    {
      v452 = 512;
    }

    else
    {
      v452 = v441;
    }

    [v450 setWidth:v452];
    if (v444 <= 0x180)
    {
      v453 = 384;
    }

    else
    {
      v453 = v444;
    }

    [v451 setHeight:v453];
    [v451 setWidthAlignment:8];
    [v451 setHeightAlignment:8];
    v725 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v697];
    [v451 setSupportedPixelFormats:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v725, 1)}];
    v724 = v451;
    v454 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v724 count:1]);
    v455 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:]([BWOnDemandPixelBufferAllocator alloc], "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", v454, [MEMORY[0x1E696AEC0] stringWithFormat:@"Additional inference input on-demand allocator (%@)", BWPhotoEncoderStringFromEncodingScheme(intValue2)], memoryPool, 0);
    if (!v455)
    {
      v473 = 0;
      height4 = 0;
      width4 = 0;
      goto LABEL_572;
    }

    v456 = v455;
    [dictionary8 setObject:v455 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", intValue2)}];

    v387 = v698;
    goto LABEL_515;
  }

  FigDebugIsInternalBuild();
  v320 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 1];
  mach_absolute_time();
  [v37 addObject:v320];
  v321 = [[BWNRFProcessorController alloc] initWithConfiguration:[(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration nrfProcessorControllerConfiguration]];
  if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration softISPProcessorControllerConfiguration])
  {
    if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
    {
      v322 = -[NSDictionary objectForKeyedSubscript:](selfCopy->_softISPOutputPoolByPixelFormat, "objectForKeyedSubscript:", [*(v36 + 3480) numberWithUnsignedInt:v51]);
      capacity7 = [v322 capacity];
      if (capacity7 <= [(BWNRFProcessorController *)v321 progressiveLowLightFusionBatchSize]+ 2)
      {
        capacity8 = [(BWNRFProcessorController *)v321 progressiveLowLightFusionBatchSize]+ 2;
      }

      else
      {
        capacity8 = [v322 capacity];
      }

      [v322 setCapacity:capacity8];
    }

    if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")])
    {
      v325 = [(BWNRFProcessorController *)v321 rawNightModeOutputPixelFormatByBufferType:31];
      v326 = objc_alloc_init(BWVideoFormatRequirements);
      -[BWVideoFormatRequirements setWidth:](v326, "setWidth:", [objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")]);
      -[BWVideoFormatRequirements setHeight:](v326, "setHeight:", [objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")]);
      [(BWVideoFormatRequirements *)v326 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v326 setHeightAlignment:16];
      v744 = [*(v36 + 3480) numberWithUnsignedInt:v325];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v326, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v744 count:1]);
      v743 = v326;
      v327 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v743 count:1]);
      v328 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v327, 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"Raw Night Mode Denoised Image pool (%@)", BWStringForOSType()], memoryPool);
      if (!v328)
      {
        goto LABEL_681;
      }

      selfCopy->_rawNightModeDenoisedImagePool = v328;
      v329 = [(BWNRFProcessorController *)v321 rawNightModeOutputPixelFormatByBufferType:32];
      v330 = objc_alloc_init(BWVideoFormatRequirements);
      -[BWVideoFormatRequirements setWidth:](v330, "setWidth:", [objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")]);
      -[BWVideoFormatRequirements setHeight:](v330, "setHeight:", [objc_msgSend(-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](selfCopy->_nodeConfiguration "nrfProcessorControllerConfiguration")]);
      [(BWVideoFormatRequirements *)v330 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v330 setHeightAlignment:16];
      v742 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v329];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v330, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v742 count:1]);
      v741 = v330;
      v331 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v741 count:1]);
      v332 = MEMORY[0x1E696AEC0];
      v637 = BWStringForOSType();
      v333 = v332;
      v36 = 0x1E696A000;
      v334 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v331, 1, [v333 stringWithFormat:@"Raw Night Mode Noise Map pool (%@)", v637], memoryPool);
      if (!v334)
      {
        goto LABEL_681;
      }

      selfCopy->_rawNightModeNoiseMapPool = v334;
    }
  }

  if ([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration digitalFlashSupportEnabled])
  {
    dictionary9 = [MEMORY[0x1E695DF90] dictionary];
    v737 = 0u;
    v738 = 0u;
    v739 = 0u;
    v740 = 0u;
    sensorConfigurationsByPortType = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration sensorConfigurationsByPortType];
    v337 = [sensorConfigurationsByPortType countByEnumeratingWithState:&v737 objects:v736 count:16];
    if (v337)
    {
      v338 = v337;
      v339 = *v738;
      do
      {
        for (kk = 0; kk != v338; ++kk)
        {
          if (*v738 != v339)
          {
            objc_enumerationMutation(sensorConfigurationsByPortType);
          }

          v341 = *(*(&v737 + 1) + 8 * kk);
          if (BWPortTypeIsColorCamera(v341))
          {
            [dictionary9 setObject:-[BWNRFProcessorController adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:](v321 forKeyedSubscript:{"adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:", v341), v341}];
          }
        }

        v338 = [sensorConfigurationsByPortType countByEnumeratingWithState:&v737 objects:v736 count:16];
      }

      while (v338);
    }

    v36 = 0x1E696A000;
    if ([dictionary9 count])
    {
      os_unfair_lock_lock(&selfCopy->_resourceCoordinatorLock);
      selfCopy->_adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderByPortType = [dictionary9 copy];
      os_unfair_lock_unlock(&selfCopy->_resourceCoordinatorLock);
    }
  }

  if (v321)
  {
    [v665 addObject:v321];
    if (dword_1EB58E040)
    {
      v844 = 0;
      v843 = OS_LOG_TYPE_DEFAULT;
      v342 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v343 = v844;
      if (os_log_type_enabled(v342, v843))
      {
        v344 = v343;
      }

      else
      {
        v344 = v343 & 0xFFFFFFFE;
      }

      if (v344)
      {
        mach_absolute_time();
        v345 = FigHostTimeToNanoseconds();
        v763 = 136315650;
        v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
        v765 = 2114;
        v766 = v320;
        v767 = 2048;
        v768 = (v345 / 1000) / 1000.0;
        LODWORD(v656) = 32;
        v636 = &v763;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v37 = array;
    [array removeLastObject];
    goto LABEL_389;
  }

LABEL_681:
  v844 = 0;
  v843 = OS_LOG_TYPE_DEFAULT;
  v555 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v556 = v844;
  if (os_log_type_enabled(v555, v843))
  {
    v557 = v556;
  }

  else
  {
    v557 = v556 & 0xFFFFFFFE;
  }

  if (v557)
  {
    v558 = [array componentsJoinedByString:@"->"];
    v763 = 136315394;
    v764 = "[BWPhotonicEngineNodeResourceCoordinator setupProcessorControllersAndMemoryResources]";
    v765 = 2114;
    v766 = v558;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v570 = [array componentsJoinedByString:@"->"];
  v841 = 138543362;
  *v842 = v570;
  v571 = _os_log_send_and_compose_impl();
  FigCapturePleaseFileRadar(7, v571, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNodeResourceCoordinator.m", 2355, @"LastShownDate:BWPhotonicEngineNodeResourceCoordinator.m:2355", @"LastShownBuild:BWPhotonicEngineNodeResourceCoordinator.m:2355", 0);
  free(v571);
  return -12786;
}

- (int)liveReconfigureIfNeeded
{
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  if (dword_1EB58E040)
  {
    v49 = 0;
    v48 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration inferenceControllerConfiguration:v42])
  {
    if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration processingAspectRatio]&& [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration processingAspectRatio])
    {
      v4 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__output;
    }

    else
    {
      v4 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__input;
    }

    videoFormat = [*(&self->super.super.isa + *v4) videoFormat];
    width = [videoFormat width];
    inferenceMainImageDownscalingFactor = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration inferenceMainImageDownscalingFactor];
    v8 = FigCaptureRoundFloatToMultipleOf(2, width / *&inferenceMainImageDownscalingFactor);
    height = [videoFormat height];
    inferenceMainImageDownscalingFactor2 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration inferenceMainImageDownscalingFactor];
    v11 = FigCaptureRoundFloatToMultipleOf(2, height / *&inferenceMainImageDownscalingFactor2);
    if ((v8 | (v11 << 32)) != -[BWPixelBufferPool dimensions](self->_intermediateInferenceInputPool, "dimensions") && ((self->_intermediateInferenceInputPool, self->_intermediateInferenceInputPool = 0, !FigCapturePlatformSupportsUniversalCompression()) ? (v12 = 875704422) : (v12 = FigCaptureCompressedPixelFormatForPixelFormat(875704422, 4, 0)), (v13 = +[BWVideoFormatRequirements formatRequirements](BWVideoFormatRequirements, "formatRequirements"), v14 = v13, v8 <= 0x200) ? (v15 = 512) : (v15 = v8), ([v13 setWidth:v15], v11 <= 0x180) ? (v16 = 384) : (v16 = v11), (objc_msgSend(v14, "setHeight:", v16), objc_msgSend(v14, "setWidthAlignment:", 8), objc_msgSend(v14, "setHeightAlignment:", 8), v47 = objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v12), objc_msgSend(v14, "setSupportedPixelFormats:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v47, 1)), v46 = v14, v17 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v46, 1)), v18 = objc_msgSend(-[BWPhotonicEngineNodeConfiguration providedInferenceAttachedMediaByMode](self->_nodeConfiguration), "objectForKeyedSubscript:", &unk_1F2244B48), v19 = -[BWPhotonicEngineNodeConfiguration outputBufferCount](self->_nodeConfiguration), !v18) ? (v20 = 1) : (v20 = 2), v21 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v17, (v19 << v20), @"Inference input pool for standard resolution", -[BWNodeOutput memoryPool](self->_output, "memoryPool")), (self->_intermediateInferenceInputPool = v21) == 0) || (v22 = -[BWPhotonicEngineNodeResourceCoordinator waitAndSafelyGetProcessorControllerForType:](self, "waitAndSafelyGetProcessorControllerForType:", 3)) == 0)
    {
      v40 = v51;
      v39 = -12780;
      goto LABEL_44;
    }

    v23 = objc_alloc(MEMORY[0x1E695DF90]);
    if (self->_inferenceOutputPixelBufferProvidersByAttachedMediaKey)
    {
      inferenceOutputPixelBufferProvidersByAttachedMediaKey = self->_inferenceOutputPixelBufferProvidersByAttachedMediaKey;
    }

    else
    {
      inferenceOutputPixelBufferProvidersByAttachedMediaKey = MEMORY[0x1E695E0F8];
    }

    v25 = [v23 initWithDictionary:inferenceOutputPixelBufferProvidersByAttachedMediaKey];
    inferenceControllerQueue = self->_inferenceControllerQueue;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __66__BWPhotonicEngineNodeResourceCoordinator_liveReconfigureIfNeeded__block_invoke;
    v45[3] = &unk_1E79989D0;
    v45[4] = v22;
    v45[5] = self;
    v45[6] = v25;
    v45[7] = &v50;
    ubn_dispatch_sync(inferenceControllerQueue, v45);

    self->_inferenceOutputPixelBufferProvidersByAttachedMediaKey = 0;
    if ([(NSDictionary *)v25 count])
    {
      self->_inferenceOutputPixelBufferProvidersByAttachedMediaKey = v25;
    }

    v27 = self->_inferenceControllerQueue;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __66__BWPhotonicEngineNodeResourceCoordinator_liveReconfigureIfNeeded__block_invoke_2;
    v44[3] = &unk_1E79907B0;
    v44[5] = self;
    v44[6] = &v50;
    v44[4] = v22;
    ubn_dispatch_sync(v27, v44);
  }

  if (![(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration])
  {
    v39 = *(v51 + 6);
    goto LABEL_46;
  }

  if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration processingAspectRatio]&& [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration processingAspectRatio])
  {
    v28 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__output;
  }

  else
  {
    v28 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__input;
  }

  videoFormat2 = [*(&self->super.super.isa + *v28) videoFormat];
  v30 = [-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](self->_nodeConfiguration "intelligentDistortionCorrectionProcessorControllerConfiguration")];
  v32 = v31;
  IsEqualForDimensions = FigCaptureOrientationIsEqualForDimensions([videoFormat2 dimensions], v30);
  v34 = [(BWPhotonicEngineNodeResourceCoordinator *)self waitAndSafelyGetProcessorControllerForType:7];
  v35 = __ROR8__(v32, 32);
  if (IsEqualForDimensions)
  {
    v36 = v32;
  }

  else
  {
    v36 = v35;
  }

  if (IsEqualForDimensions)
  {
    v37 = HIDWORD(v30);
  }

  else
  {
    LODWORD(v37) = v30;
  }

  if (IsEqualForDimensions)
  {
    LODWORD(v38) = v30;
  }

  else
  {
    v38 = HIDWORD(v30);
  }

  v39 = [v34 determineWorkingBufferRequirementsWithProcessorConfig:{v38 | (v37 << 32), v36}];
  v40 = v51;
LABEL_44:
  *(v40 + 6) = v39;
LABEL_46:
  _Block_object_dispose(&v50, 8);
  return v39;
}

uint64_t __66__BWPhotonicEngineNodeResourceCoordinator_liveReconfigureIfNeeded__block_invoke(uint64_t a1)
{
  v1 = a1;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [*(a1 + 32) providedAttachedMediaKeys];
  result = [obj countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v25;
    v5 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
    while (2)
    {
      v6 = 0;
      v21 = v3;
      do
      {
        if (*v25 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v8 = v5[947];
        if (![objc_msgSend(*(*(v1 + 40) + v8) mediaPropertiesForAttachedMediaKey:{v7), "preparedPixelBufferPool"}])
        {
          result = [*(v1 + 32) outputVideoFormatForAttachedMediaKey:v7];
          if (!result)
          {
            v19 = -12780;
LABEL_21:
            *(*(*(v1 + 56) + 8) + 24) = v19;
            return result;
          }

          v9 = result;
          v10 = v4;
          v11 = v1;
          v12 = [*(*(v1 + 40) + 32) deferredCaptureSupportEnabled];
          v13 = [*(*(v1 + 40) + 32) stereoPhotoOutputDimensions];
          if (SHIDWORD(v13) <= 0 || v13 <= 0)
          {
            v15 = 2;
          }

          else
          {
            v15 = 3;
          }

          v16 = [BWPixelBufferPool alloc];
          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UB %@ Output Pool", v7];
          LOBYTE(v20) = v12;
          result = -[BWPixelBufferPool initWithVideoFormat:capacity:name:clientProvidesPool:memoryPool:providesBackPressure:reportSlowBackPressureAllocations:](v16, "initWithVideoFormat:capacity:name:clientProvidesPool:memoryPool:providesBackPressure:reportSlowBackPressureAllocations:", v9, v15, v17, 0, [*(*(v11 + 40) + v8) memoryPool], v12, v20);
          if (!result)
          {
            v19 = -12786;
            v1 = v11;
            goto LABEL_21;
          }

          v18 = result;
          [*(v11 + 48) setObject:result forKeyedSubscript:v7];

          v4 = v10;
          v5 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
          v1 = v11;
          v3 = v21;
        }

        ++v6;
      }

      while (v3 != v6);
      result = [obj countByEnumeratingWithState:&v24 objects:v23 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t __66__BWPhotonicEngineNodeResourceCoordinator_liveReconfigureIfNeeded__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) inferenceEnginePrepared];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) prepareWithPixelBufferPoolProvider:*(a1 + 40)];
    *(*(*(a1 + 48) + 8) + 24) = result;
  }

  return result;
}

- (id)pixelBufferProviderForInferencesWithResolutionFlavor:(int)flavor
{
  if (flavor <= 6)
  {
    if (((1 << flavor) & 0x7A) != 0)
    {
      v4 = *(self + 23);
      v5 = [MEMORY[0x1E696AD98] numberWithInt:?];

      return [v4 objectForKeyedSubscript:v5];
    }

    else
    {
      return *(self + 22);
    }
  }

  return self;
}

- (void)flushSoftISPOutputBufferPools
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  softISPOutputPoolByPixelFormat = self->_softISPOutputPoolByPixelFormat;
  v4 = [(NSDictionary *)softISPOutputPoolByPixelFormat countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(softISPOutputPoolByPixelFormat);
        }

        [-[NSDictionary objectForKeyedSubscript:](self->_softISPOutputPoolByPixelFormat objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * i)), "flushToMinimumCapacity:", 0}];
      }

      v5 = [(NSDictionary *)softISPOutputPoolByPixelFormat countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }
}

- (void)flushUltraHighResolutionBufferPools
{
  v2 = [(NSDictionary *)self->_pixelBufferProviderByPixelFormatByResolutionFlavor objectForKeyedSubscript:&unk_1F2244B48];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [v2 objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v6)];
        if (v7)
        {
          [v7 flushToMinimumCapacity:0];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v4);
  }
}

- (void)releaseResourcesWithSettings:(id)settings
{
  v5 = [objc_msgSend(settings "captureSettings")];
  if ((v5 & 0x200000000) != 0)
  {
    v6 = [objc_msgSend(settings "captureSettings")] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (([objc_msgSend(settings "captureSettings")] & 0x100000000) != 0)
  {
    if ([objc_msgSend(settings "captureSettings")] == 12)
    {
      v7 = [objc_msgSend(settings "captureSettings")] ^ 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  if ([objc_msgSend(settings "captureSettings")] != 13)
  {
    [(BWPixelBufferPool *)self->_syntheticIntermediatesPool flushToMinimumCapacity:0];
    [(BWPixelBufferPool *)self->_fusionMapPool flushToMinimumCapacity:0];
  }

  if (([objc_msgSend(settings "captureSettings")] & 0x800000000) == 0)
  {
    [(BWPixelBufferPool *)self->_rawNightModeDenoisedImagePool flushToMinimumCapacity:0];
    [(BWPixelBufferPool *)self->_rawNightModeNoiseMapPool flushToMinimumCapacity:0];
  }

  if (([objc_msgSend(settings "captureSettings")] & 0x200) == 0 && objc_msgSend(-[BWPhotonicEngineNodeConfiguration jasperColorStillsExecutorControllerConfiguration](self->_nodeConfiguration, "jasperColorStillsExecutorControllerConfiguration"), "postponeProcessorSetup"))
  {
    [-[BWStillImageProcessorCoordinator controllerForType:](self controllerForType:{9), "purgeResources"}];
  }

  [(BWPhotonicEngineNodeResourceCoordinator *)self flushSoftISPOutputBufferPools];
  if (v7)
  {
    if ((v5 & 0x200000000) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    [(BWPhotonicEngineNodeResourceCoordinator *)self flushUltraHighResolutionBufferPools];
    if ((v5 & 0x200000000) != 0)
    {
LABEL_18:
      if (v6)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  [(BWPixelBufferPool *)self->_deepFusionEnhancedResolutionGainMapPool flushToMinimumCapacity:0];
  if ((v6 & 1) == 0)
  {
LABEL_19:
    [(BWPixelBufferPool *)self->_deepFusionEnhancedResolutionOutputPool flushToMinimumCapacity:0];
    [(BWPixelBufferPool *)self->_deepFusionEnhancedResolutionSemanticStyleOutputPool flushToMinimumCapacity:0];
    [(BWPixelBufferPool *)self->_deepZoomTransferHighResolutionInputPool flushToMinimumCapacity:0];
    [(BWPixelBufferPool *)self->_deepZoomTransferEnhancedResolutionOutputPool flushToMinimumCapacity:0];
    [(BWPixelBufferPool *)self->_smartStyleEnhancedResolutionOutputPool flushToMinimumCapacity:0];
    [(BWPixelBufferPool *)self->_smartStyleUltraHighResolutionOutputPool flushToMinimumCapacity:0];
  }

LABEL_20:
  if (![objc_msgSend(settings "captureSettings")])
  {
    [(BWPixelBufferPool *)self->_stereoPhotoOutputPool flushToMinimumCapacity:0];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  inferenceOutputPixelBufferProvidersByAttachedMediaKey = self->_inferenceOutputPixelBufferProvidersByAttachedMediaKey;
  v9 = [(NSDictionary *)inferenceOutputPixelBufferProvidersByAttachedMediaKey countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(inferenceOutputPixelBufferProvidersByAttachedMediaKey);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [(NSDictionary *)self->_inferenceOutputPixelBufferProvidersByAttachedMediaKey objectForKeyedSubscript:v13];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && v14 && [v14 usesMemoryPool] && ((objc_msgSend(v13, "isEqualToString:", 0x1F219ED10) & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", 0x1F219ED30) & 1) == 0 && !objc_msgSend(v13, "isEqualToString:", 0x1F219EDB0) || (objc_msgSend(objc_msgSend(settings, "captureSettings"), "captureFlags") & 0x80) == 0))
        {
          [v14 flushToMinimumCapacity:0];
        }
      }

      v10 = [(NSDictionary *)inferenceOutputPixelBufferProvidersByAttachedMediaKey countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v10);
  }
}

- (void)kickoffAnyPostonedResourceAllocations
{
  if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration postponeSelectResourceAlloctions])
  {
    postponedResourceSetupGroup = self->_postponedResourceSetupGroup;
    postponedResourceSetupQueue = self->_postponedResourceSetupQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __80__BWPhotonicEngineNodeResourceCoordinator_kickoffAnyPostonedResourceAllocations__block_invoke;
    v5[3] = &unk_1E798F870;
    v5[4] = self;
    ubn_dispatch_group_async(postponedResourceSetupGroup, postponedResourceSetupQueue, v5);
  }
}

- (id)waitAndSafelyGetProcessorControllerForType:(unint64_t)type
{
  if (!_FigIsNotCurrentDispatchQueue())
  {
    [BWPhotonicEngineNodeResourceCoordinator waitAndSafelyGetProcessorControllerForType:];
  }

  postponedResourceSetupGroup = self->_postponedResourceSetupGroup;
  if (postponedResourceSetupGroup)
  {
    dispatch_group_wait(postponedResourceSetupGroup, 0xFFFFFFFFFFFFFFFFLL);
  }

  return [(BWStillImageProcessorCoordinator *)self controllerForType:type];
}

- (id)processorControllersForSharedExternalMemoryResource
{
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [&unk_1F2248D00 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(&unk_1F2248D00);
        }

        v8 = -[BWStillImageProcessorCoordinator controllerForType:](self, "controllerForType:", [*(*(&v11 + 1) + 8 * v7) intValue]);
        if ([v8 supportsExternalMemoryResource])
        {
          [array addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [&unk_1F2248D00 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v5);
  }

  return [array copy];
}

- (void)purgeProcessorAndSharedExternalMemoryResourceBackendMemoryIfNeededWithSettings:(id)settings
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWPhotonicEngineNodeResourceCoordinator purgeProcessorAndSharedExternalMemoryResourceBackendMemoryIfNeededWithSettings:];
  }
}

- (void)postponedProcessorForType:(unint64_t)type safelyExecuteBlockWhenReady:(id)ready
{
  postponedResourceSetupGroup = self->_postponedResourceSetupGroup;
  postponedResourceSetupQueue = self->_postponedResourceSetupQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __97__BWPhotonicEngineNodeResourceCoordinator_postponedProcessorForType_safelyExecuteBlockWhenReady___block_invoke;
  v6[3] = &unk_1E7991B98;
  v6[5] = ready;
  v6[6] = type;
  v6[4] = self;
  ubn_dispatch_group_async(postponedResourceSetupGroup, postponedResourceSetupQueue, v6);
}

uint64_t __97__BWPhotonicEngineNodeResourceCoordinator_postponedProcessorForType_safelyExecuteBlockWhenReady___block_invoke(uint64_t a1)
{
  [*(a1 + 32) controllerForType:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __97__BWPhotonicEngineNodeResourceCoordinator__ensureProcessorCoordinatorSetupForPostponedProcessors__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) inferenceEnginePrepared];
  if ((result & 1) == 0)
  {
    FigDebugIsInternalBuild();
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 12];
    mach_absolute_time();
    result = [*(a1 + 32) prepareWithPixelBufferPoolProvider:*(a1 + 40)];
    if (dword_1EB58E040)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

- (void)createAndWaitOnEnhancedResolutionPortraitSemaphore
{
  os_unfair_lock_lock(&self->_enhancedResolutionPortraitSemaphoreLock);
  self->_enhancedResolutionPortraitSemaphore = dispatch_semaphore_create(0);
  os_unfair_lock_unlock(&self->_enhancedResolutionPortraitSemaphoreLock);
  if (dword_1EB58E040)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  dispatch_semaphore_wait(self->_enhancedResolutionPortraitSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (dword_1EB58E040)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)clearEnhancedResolutionPortraitSemaphoreWithError:(int)error
{
  os_unfair_lock_lock(&self->_enhancedResolutionPortraitSemaphoreLock);
  enhancedResolutionPortraitSemaphore = self->_enhancedResolutionPortraitSemaphore;
  if (enhancedResolutionPortraitSemaphore)
  {
    if (dword_1EB58E040)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      enhancedResolutionPortraitSemaphore = self->_enhancedResolutionPortraitSemaphore;
    }

    dispatch_semaphore_signal(enhancedResolutionPortraitSemaphore);
    v6 = self->_enhancedResolutionPortraitSemaphore;
    if (v6)
    {
      CFRelease(v6);
      self->_enhancedResolutionPortraitSemaphore = 0;
    }
  }

  os_unfair_lock_unlock(&self->_enhancedResolutionPortraitSemaphoreLock);
}

- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)type
{
  os_unfair_lock_lock(&self->_resourceCoordinatorLock);
  v5 = [(NSDictionary *)self->_adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderByPortType objectForKeyedSubscript:type];
  os_unfair_lock_unlock(&self->_resourceCoordinatorLock);

  return v5;
}

- (id)syncGetInferencesForInferenceInputBufferType:(unint64_t)type
{
  if (!_FigIsNotCurrentDispatchQueue())
  {
    [BWPhotonicEngineNodeResourceCoordinator syncGetInferencesForInferenceInputBufferType:];
  }

  v5 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__26;
  v14 = __Block_byref_object_dispose__26;
  v15 = 0;
  if (type <= 0x27 && ((1 << type) & 0x9000008000) != 0)
  {
    inferenceControllerQueue = self->_inferenceControllerQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __88__BWPhotonicEngineNodeResourceCoordinator_syncGetInferencesForInferenceInputBufferType___block_invoke;
    v9[3] = &unk_1E79989F8;
    v9[5] = &v10;
    v9[6] = type;
    v9[4] = self;
    ubn_dispatch_sync(inferenceControllerQueue, v9);
    v5 = v11[5];
  }

  v7 = v5;
  _Block_object_dispose(&v10, 8);
  return v7;
}

id __88__BWPhotonicEngineNodeResourceCoordinator_syncGetInferencesForInferenceInputBufferType___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__inferences;
  if (v2 == 39)
  {
    v3 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__stereoPhotoSecondaryInferences;
  }

  if (v2 == 36)
  {
    v4 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__quadraForEnhancedResolutionInferences;
  }

  else
  {
    v4 = v3;
  }

  result = *(a1[4] + *v4);
  *(*(a1[5] + 8) + 40) = result;
  return result;
}

- (void)asyncSetInferenceBuffer:(__CVBuffer *)buffer metadata:(id)metadata inferenceAttachedMediaKey:(id)key
{
  if (buffer)
  {
    CFRetain(buffer);
  }

  inferenceControllerQueue = self->_inferenceControllerQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102__BWPhotonicEngineNodeResourceCoordinator_asyncSetInferenceBuffer_metadata_inferenceAttachedMediaKey___block_invoke;
  v10[3] = &unk_1E7998980;
  v10[4] = self;
  v10[5] = metadata;
  v10[6] = key;
  v10[7] = buffer;
  ubn_dispatch_async(inferenceControllerQueue, v10);
}

void __102__BWPhotonicEngineNodeResourceCoordinator_asyncSetInferenceBuffer_metadata_inferenceAttachedMediaKey___block_invoke(void *a1)
{
  v2 = *(a1[4] + 336);
  if (!v2)
  {
    *(a1[4] + 336) = objc_alloc_init(BWStillImageInferences);
    v2 = *(a1[4] + 336);
  }

  [v2 addInferenceBuffer:a1[7] metadata:a1[5] inferenceAttachedMediaKey:a1[6]];
  v3 = a1[7];
  if (v3)
  {

    CFRelease(v3);
  }
}

- (void)asyncSetInference:(id)inference inferenceAttachmentKey:(id)key
{
  inferenceControllerQueue = self->_inferenceControllerQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__BWPhotonicEngineNodeResourceCoordinator_asyncSetInference_inferenceAttachmentKey___block_invoke;
  v5[3] = &unk_1E798FD58;
  v5[4] = self;
  v5[5] = inference;
  v5[6] = key;
  ubn_dispatch_async(inferenceControllerQueue, v5);
}

uint64_t __84__BWPhotonicEngineNodeResourceCoordinator_asyncSetInference_inferenceAttachmentKey___block_invoke(void *a1)
{
  v2 = *(a1[4] + 336);
  if (!v2)
  {
    *(a1[4] + 336) = objc_alloc_init(BWStillImageInferences);
    v2 = *(a1[4] + 336);
  }

  v3 = a1[5];
  v4 = a1[6];

  return [v2 addInference:v3 inferenceAttachmentKey:v4];
}

- (void)asyncSetInferenceAttachedMediaMetadata:(id)metadata
{
  inferenceControllerQueue = self->_inferenceControllerQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __82__BWPhotonicEngineNodeResourceCoordinator_asyncSetInferenceAttachedMediaMetadata___block_invoke;
  v4[3] = &unk_1E798F898;
  v4[4] = self;
  v4[5] = metadata;
  ubn_dispatch_async(inferenceControllerQueue, v4);
}

uint64_t __82__BWPhotonicEngineNodeResourceCoordinator_asyncSetInferenceAttachedMediaMetadata___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 336);
  if (!v2)
  {
    *(*(a1 + 32) + 336) = objc_alloc_init(BWStillImageInferences);
    v2 = *(*(a1 + 32) + 336);
  }

  v3 = *(a1 + 40);

  return [v2 addInferenceAttachedMediaMetadata:v3];
}

- (void)syncMergeInferencesWithSampleBuffer:(opaqueCMSampleBuffer *)buffer stillImageSettings:(id)settings
{
  if (!_FigIsNotCurrentDispatchQueue())
  {
    [BWPhotonicEngineNodeResourceCoordinator syncMergeInferencesWithSampleBuffer:stillImageSettings:];
  }

  inferenceControllerQueue = self->_inferenceControllerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__BWPhotonicEngineNodeResourceCoordinator_syncMergeInferencesWithSampleBuffer_stillImageSettings___block_invoke;
  block[3] = &unk_1E798FE50;
  block[5] = self;
  block[6] = buffer;
  block[4] = settings;
  dispatch_sync(inferenceControllerQueue, block);
}

uint64_t __98__BWPhotonicEngineNodeResourceCoordinator_syncMergeInferencesWithSampleBuffer_stillImageSettings___block_invoke(uint64_t a1)
{
  if (dword_1EB58E040)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  BWPhotonicEngineUtilitiesMergeInferenceAttachmentsIfRequired(*(a1 + 48), *(*(a1 + 40) + 336));
  return BWPhotonicEngineUtilitiesMergeInferenceAttachedMedia(*(a1 + 48), [*(*(a1 + 40) + 32) inferenceAttachedMediaRequiredForSettings:*(a1 + 32) inferences:*(*(a1 + 40) + 336)], *(*(a1 + 40) + 336), *(*(a1 + 40) + 360));
}

- (void)syncReleaseInferencesForInferenceInputBufferType:(unint64_t)type
{
  if (!_FigIsNotCurrentDispatchQueue())
  {
    [BWPhotonicEngineNodeResourceCoordinator syncReleaseInferencesForInferenceInputBufferType:];
  }

  inferenceControllerQueue = self->_inferenceControllerQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __92__BWPhotonicEngineNodeResourceCoordinator_syncReleaseInferencesForInferenceInputBufferType___block_invoke;
  v6[3] = &unk_1E7990178;
  v6[4] = self;
  v6[5] = type;
  ubn_dispatch_sync(inferenceControllerQueue, v6);
}

void __92__BWPhotonicEngineNodeResourceCoordinator_syncReleaseInferencesForInferenceInputBufferType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  switch(v2)
  {
    case 15:
      v3 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__inferences;
      break;
    case 39:
      v3 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__stereoPhotoSecondaryInferences;
      break;
    case 36:
      v3 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__quadraForEnhancedResolutionInferences;
      break;
    default:
      return;
  }

  v4 = *v3;

  *(*(a1 + 32) + v4) = 0;
}

- (void)unsafeSetInferences:(id)inferences forInferenceInputBufferType:(unint64_t)type
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWPhotonicEngineNodeResourceCoordinator unsafeSetInferences:forInferenceInputBufferType:];
  }

  switch(type)
  {
    case 0xFuLL:
      v7 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__inferences;
      break;
    case 0x27uLL:
      v7 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__stereoPhotoSecondaryInferences;
      break;
    case 0x24uLL:
      v7 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__quadraForEnhancedResolutionInferences;
      break;
    default:
      return;
  }

  v8 = *v7;

  *(&self->super.super.isa + v8) = inferences;
}

- (id)attachedMediaFromInferencesOrSampleBuffer:(opaqueCMSampleBuffer *)buffer attachedMediaKeys:(id)keys
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v7 = CMGetAttachment(buffer, @"AttachedMedia", 0);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [keys countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    syncInferences = 0;
    v11 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(keys);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v7 objectForKeyedSubscript:v13];
        if (v14)
        {
          [dictionary setObject:v14 forKeyedSubscript:v13];
        }

        else
        {
          if (!syncInferences)
          {
            syncInferences = [(BWPhotonicEngineNodeResourceCoordinator *)self syncInferences];
          }

          CMSampleBufferGetPresentationTimeStamp(&v19, buffer);
          v15 = [(BWStillImageInferences *)syncInferences createSampleBufferForInferenceForAttachedMediaKey:v13 pts:&v19];
          if (v15)
          {
            v16 = v15;
            [dictionary setObject:v15 forKeyedSubscript:v13];
            CFRelease(v16);
          }
        }
      }

      v9 = [keys countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v9);
  }

  return dictionary;
}

- (unint64_t)_deepFusionEnhancedResolutionOutputDimensionsForOutput:(uint64_t)output
{
  if (output)
  {
    if (![a2 videoFormat] || ((v3 = OUTLINED_FUNCTION_18_19(), v3 >= 1) ? (v4 = SHIDWORD(v3) < 1) : (v4 = 1), v4))
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v5 = [objc_msgSend(a2 "videoFormat")];
      v6 = v5 / [objc_msgSend(a2 "videoFormat")];
      v7 = OUTLINED_FUNCTION_18_19();
      v8 = v6 / (v7 / (OUTLINED_FUNCTION_18_19() >> 32));
      v9 = OUTLINED_FUNCTION_18_19();
      v10 = FigCaptureRoundFloatToMultipleOf(2, v8 * v9);
      v11 = OUTLINED_FUNCTION_18_19() & 0xFFFFFFFF00000000;
      v12 = v10;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  return v12 | v11;
}

- (unint64_t)_disparityProcessorInputDimensionsForInputVideoFormat:(uint64_t)format
{
  if (format)
  {
    width = [a2 width];
    height = [a2 height];
    if ([objc_msgSend(*(format + 32) "stereoDisparityProcessorControllerConfiguration")] == 8)
    {
      width = width / 2;
      height = (height / 2);
    }
  }

  else
  {
    height = 0;
    width = 0;
  }

  return width | (height << 32);
}

- (unint64_t)_resolvedAdditionalProcessingDimensionsWithAdditionalSourceDimensions:(unint64_t)dimensions standardSoftISPOutputDimensions:
{
  if (result)
  {
    dimensionsCopy = dimensions;
    v5 = result;
    v6 = HIDWORD(a2);
    v7 = HIDWORD(dimensions);
    if (a2 != [(BWPhotonicEngineNodeConfiguration *)*(result + 32) rawSensorDimensions]|| v6 != [(BWPhotonicEngineNodeConfiguration *)*(v5 + 32) rawSensorDimensions]>> 32)
    {
      v8 = a2 / v6;
      v9 = vabdd_f64(dimensionsCopy / v7, v8);
      if (dimensionsCopy != v7 && v9 > 0.1)
      {
        v8 = dimensionsCopy / v7;
      }

      v11 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(a2, v8);
      v12 = BWExtendDimensionsToConformToAlignmentRequirements(v11, 16, 16);
      if (v12 >= a2)
      {
        dimensionsCopy = a2;
      }

      else
      {
        dimensionsCopy = v12;
      }

      if (SHIDWORD(v12) >= v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = HIDWORD(v12);
      }
    }

    return dimensionsCopy | (v7 << 32);
  }

  return result;
}

- (uint64_t)_inferenceOutputPixelBufferPoolForAttachedMediaKey:(void *)key output:
{
  if (!result)
  {
    return result;
  }

  v4 = a2;
  v5 = result;
  if ([(__CFString *)a2 isEqualToString:0x1F219ECB0])
  {
    if ([objc_msgSend(*(v5 + 32) "deepZoomProcessorControllerConfiguration")] == 3)
    {
      v6 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__deepZoomTransferEnhancedResolutionOutputPool;
      goto LABEL_7;
    }

    v4 = @"PrimaryFormat";
  }

  else if ([(__CFString *)v4 isEqualToString:0x1F219ECD0])
  {
    v6 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__stereoPhotoOutputPool;
LABEL_7:
    result = *(v5 + *v6);
    if (result)
    {
      return result;
    }
  }

  v7 = [key mediaPropertiesForAttachedMediaKey:v4];
  result = [v7 livePixelBufferPool];
  if (!result)
  {
    result = [v7 preparedPixelBufferPool];
    if (!result)
    {
      v8 = *(v5 + 168);

      return [v8 objectForKeyedSubscript:v4];
    }
  }

  return result;
}

- (id)pixelBufferProviderForProcessorController:(id)controller processorInput:(id)input type:(unint64_t)type dimensions:(id)dimensions pixelFormat:(unsigned int)format attachedMediaKey:(id)key
{
  v9 = *&format;
  v15 = -[BWPhotonicEngineNodeConfiguration resolvedProcessingResolutionFlavorForSettings:portType:](self->_nodeConfiguration, "resolvedProcessingResolutionFlavorForSettings:portType:", [input stillImageSettings], objc_msgSend(input, "portType"));
  switch([controller type])
  {
    case 2:
      if (![input onlyApplyingSemanticStyle])
      {
        switch(type)
        {
          case 0xDuLL:
            if ((v15 - 1) < 6)
            {
              v33 = OUTLINED_FUNCTION_14_26();
              OUTLINED_FUNCTION_13_30(v33);
              v34 = OUTLINED_FUNCTION_13_30([*(type + 3480) numberWithUnsignedInt:{-[BWVideoFormat pixelFormat](-[BWNodeOutput videoFormat](self->_output, "videoFormat"), "pixelFormat")}]);
              if (v34)
              {
                noiseReductionAndFusionProcessorOutputIntermediatePool = v34;
              }

              else
              {
                noiseReductionAndFusionProcessorOutputIntermediatePool = self->_noiseReductionAndFusionProcessorOutputIntermediatePool;
                if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
                {
                  noiseReductionAndFusionProcessorOutputIntermediatePool = [(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool];
                  if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
                  {
                    goto LABEL_188;
                  }
                }
              }

              if ([objc_msgSend(input "processingSettings")] && -[BWPixelBufferPool dimensions](noiseReductionAndFusionProcessorOutputIntermediatePool, "dimensions") != dimensions)
              {
                v66 = MEMORY[0x1E696AEC0];
                v67 = BWStillImageProcessorTypeToShortString([controller type]);
                typeCopy = 13;
                goto LABEL_173;
              }

              goto LABEL_188;
            }

            if (v15 || ([objc_msgSend(input "captureSettings")] & 0x200000000) != 0 && self->_deepFusionEnhancedResolutionOutputPool)
            {
              goto LABEL_188;
            }

            goto LABEL_181;
          case 0xEuLL:
          case 0x10uLL:
          case 0x11uLL:
          case 0x12uLL:
          case 0x14uLL:
            goto LABEL_188;
          case 0xFuLL:
            goto LABEL_175;
          case 0x13uLL:
            switch(v15)
            {
              case 0:
                if (([objc_msgSend(input "captureSettings")] & 0x200000000) == 0 || !self->_deepFusionEnhancedResolutionGainMapPool)
                {
                  goto LABEL_57;
                }

                goto LABEL_188;
              case 1:
              case 3:
              case 4:
              case 5:
              case 6:
                [MEMORY[0x1E696AD98] numberWithInt:v15];
                if (![objc_msgSend(OUTLINED_FUNCTION_4() "objectForKeyedSubscript:{"objectForKeyedSubscript:", &unk_1F2244B30}")])
                {
                  goto LABEL_57;
                }

                goto LABEL_188;
              case 2:
                goto LABEL_57;
              default:
                goto LABEL_188;
            }

          case 0x15uLL:
            if ((v15 - 1) >= 6)
            {
              if (!v15)
              {
                goto LABEL_53;
              }
            }

            else
            {
              v62 = OUTLINED_FUNCTION_14_26();
              OUTLINED_FUNCTION_13_30(v62);
              v63 = [*(type + 3480) numberWithUnsignedInt:-[BWPhotonicEngineNodeConfiguration linearYUVPixelFormat](self->_nodeConfiguration)];
              v64 = OUTLINED_FUNCTION_13_30(v63);
              if (v64)
              {
                noiseReductionAndFusionProcessorOutputIntermediatePool = v64;
              }

              else
              {
                noiseReductionAndFusionProcessorOutputIntermediatePool = [-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->_output mediaPropertiesForAttachedMediaKey:{0x1F21AAE10), "livePixelBufferPool"}];
                if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
                {
                  goto LABEL_188;
                }
              }

              if ([objc_msgSend(input "processingSettings")] && -[BWPixelBufferPool dimensions](noiseReductionAndFusionProcessorOutputIntermediatePool, "dimensions") != dimensions)
              {
                v66 = MEMORY[0x1E696AEC0];
                v67 = BWStillImageProcessorTypeToShortString([controller type]);
                typeCopy = 21;
                goto LABEL_173;
              }
            }

            break;
          default:
            switch(type)
            {
              case 0x1EuLL:
                goto LABEL_188;
              case 0x24uLL:
                goto LABEL_175;
              case 0x29uLL:
                goto LABEL_63;
            }

            goto LABEL_188;
        }

        goto LABEL_188;
      }

      deepFusionEnhancedResolutionSemanticStyleOutputPool = self->_deepFusionEnhancedResolutionSemanticStyleOutputPool;
      if (deepFusionEnhancedResolutionSemanticStyleOutputPool && [(BWPixelBufferPool *)self->_deepFusionEnhancedResolutionSemanticStyleOutputPool width]== dimensions.var0 && [(BWPixelBufferPool *)deepFusionEnhancedResolutionSemanticStyleOutputPool height]== *&dimensions >> 32 && self->_deepFusionEnhancedResolutionSemanticStyleOutputPool)
      {
        goto LABEL_188;
      }

LABEL_181:
      if (self->_noiseReductionAndFusionProcessorOutputIntermediatePool)
      {
        goto LABEL_188;
      }

      goto LABEL_182;
    case 3:
      goto LABEL_82;
    case 6:
      switch(type)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 0xEuLL:
        case 0x21uLL:
        case 0x23uLL:
        case 0x26uLL:
        case 0x34uLL:
        case 0x35uLL:
          OUTLINED_FUNCTION_20_14();
          if (!v22)
          {
            if ([objc_msgSend(input "captureSettings")] == 10)
            {
              goto LABEL_182;
            }

            v25 = OUTLINED_FUNCTION_8_38();
            OUTLINED_FUNCTION_13_30(v25);
            v26 = OUTLINED_FUNCTION_13_30([*(v9 + 3480) numberWithUnsignedInt:{-[BWVideoFormat pixelFormat](-[BWNodeOutput videoFormat](self->_output, "videoFormat"), "pixelFormat")}]);
            if (v26)
            {
              noiseReductionAndFusionProcessorOutputIntermediatePool = v26;
            }

            else
            {
              noiseReductionAndFusionProcessorOutputIntermediatePool = self->_noiseReductionAndFusionProcessorOutputIntermediatePool;
              if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
              {
                noiseReductionAndFusionProcessorOutputIntermediatePool = [(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool];
                if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
                {
                  goto LABEL_188;
                }
              }
            }

            if (![objc_msgSend(input "processingSettings")] || -[BWPixelBufferPool dimensions](noiseReductionAndFusionProcessorOutputIntermediatePool, "dimensions") == dimensions)
            {
              goto LABEL_188;
            }

            v66 = MEMORY[0x1E696AEC0];
            v67 = BWStillImageProcessorTypeToShortString([controller type]);
            typeCopy = type;
LABEL_173:
            v81 = BWStillImageBufferTypeToShortString(typeCopy);
            v82 = BWStringFromDimensions();
            [v66 stringWithFormat:@"OptimizedProcessingForZoomFOV-OnDemand-%@-%@-%@-%@", v67, v81, v82, BWStringFromCVPixelFormatType(-[BWPixelBufferPool pixelFormat](noiseReductionAndFusionProcessorOutputIntermediatePool, "pixelFormat"))];
            goto LABEL_104;
          }

          if ((v15 - 1) >= 2)
          {
            if (!v15)
            {
              goto LABEL_181;
            }

            goto LABEL_188;
          }

          v35 = OUTLINED_FUNCTION_8_38();
          OUTLINED_FUNCTION_13_30(v35);
          v36 = OUTLINED_FUNCTION_13_30([*(v9 + 3480) numberWithUnsignedInt:{-[BWVideoFormat pixelFormat](-[BWNodeOutput videoFormat](self->_output, "videoFormat"), "pixelFormat")}]);
          if (v36)
          {
            livePixelBufferPool = v36;
          }

          else
          {
            livePixelBufferPool = self->_noiseReductionAndFusionProcessorOutputIntermediatePool;
            if (!livePixelBufferPool)
            {
              livePixelBufferPool = [(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool];
              if (!livePixelBufferPool)
              {
                goto LABEL_188;
              }
            }
          }

          if (![objc_msgSend(input "processingSettings")])
          {
            goto LABEL_188;
          }

          [(BWPixelBufferPool *)livePixelBufferPool pixelFormat];
          v69 = MEMORY[0x1E696AEC0];
          v70 = BWStillImageProcessorTypeToShortString([controller type]);
          v71 = BWStillImageBufferTypeToShortString(type);
          v72 = BWStringFromDimensions();
          [v69 stringWithFormat:@"OptimizedFusionProcessing-OnDemand-%@-%@-%@-%@", v70, v71, v72, BWStringFromCVPixelFormatType(-[BWPixelBufferPool pixelFormat](livePixelBufferPool, "pixelFormat"))];
          +[BWMemoryPool sharedMemoryPool];
          OUTLINED_FUNCTION_17_23();
          goto LABEL_105;
        case 7uLL:
        case 0x1DuLL:
        case 0x33uLL:
          if (v15 > 6)
          {
            goto LABEL_188;
          }

          if (((1 << v15) & 0x7A) == 0)
          {
            goto LABEL_181;
          }

          v60 = OUTLINED_FUNCTION_8_38();
          OUTLINED_FUNCTION_13_30(v60);
          v61 = OUTLINED_FUNCTION_13_30([*(v9 + 3480) numberWithUnsignedInt:{-[BWVideoFormat pixelFormat](-[BWNodeOutput videoFormat](self->_output, "videoFormat"), "pixelFormat")}]);
          if (v61)
          {
            noiseReductionAndFusionProcessorOutputIntermediatePool = v61;
          }

          else
          {
            noiseReductionAndFusionProcessorOutputIntermediatePool = self->_noiseReductionAndFusionProcessorOutputIntermediatePool;
            if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
            {
              noiseReductionAndFusionProcessorOutputIntermediatePool = [(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool];
              if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
              {
                goto LABEL_188;
              }
            }
          }

          if ([objc_msgSend(input "processingSettings")] && -[BWPixelBufferPool dimensions](noiseReductionAndFusionProcessorOutputIntermediatePool, "dimensions") != dimensions || objc_msgSend(objc_msgSend(input, "processingSettings"), "optimizedProcessingWithCropAndDownscaleEnabled"))
          {
            v53 = MEMORY[0x1E696AEC0];
            v54 = BWStillImageProcessorTypeToShortString([controller type]);
            typeCopy2 = type;
            goto LABEL_103;
          }

          goto LABEL_188;
        case 0xFuLL:
          OUTLINED_FUNCTION_20_14();
          if (v22)
          {
            if (v15 > 2)
            {
              goto LABEL_188;
            }
          }

          else
          {
            [objc_msgSend(input "captureSettings")];
          }

LABEL_175:
          OUTLINED_FUNCTION_6_50();

          result = [v83 pixelBufferProviderForInferencesWithResolutionFlavor:?];
          break;
        case 0x13uLL:
          switch(v15)
          {
            case 0:
              goto LABEL_207;
            case 1:
              deepFusionEnhancedResolutionGainMapPool = [OUTLINED_FUNCTION_13_30(objc_msgSend(MEMORY[0x1E696AD98] numberWithInt:{1)), "objectForKeyedSubscript:", &unk_1F2244B30}];
              if (![objc_msgSend(input "processingSettings")])
              {
                break;
              }

              inferenceMainImageDownscalingFactor = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration inferenceMainImageDownscalingFactor];
              FigCaptureRoundFloatToMultipleOf(2, dimensions.var0 / *&inferenceMainImageDownscalingFactor);
              inferenceMainImageDownscalingFactor2 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration inferenceMainImageDownscalingFactor];
              FigCaptureRoundFloatToMultipleOf(2, dimensions.var1 / *&inferenceMainImageDownscalingFactor2);
              v93 = MEMORY[0x1E696AEC0];
              v94 = BWStillImageProcessorTypeToShortString([controller type]);
              v95 = BWStillImageBufferTypeToShortString(19);
              v96 = BWStringFromDimensions();
              [v93 stringWithFormat:@"OptimizedProcessing-OnDemand-%@-%@-%@-%@", v94, v95, v96, BWStringFromCVPixelFormatType(1278226488)];
              +[BWMemoryPool sharedMemoryPool];
              OUTLINED_FUNCTION_17_23();
              v79 = [v97 onDemandAllocatorWithDimensions:? dimensionAlignment:? pixelFormat:? name:? memoryPool:?];
              goto LABEL_191;
            case 2:
              if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration ultraHighResolutionProcessingEnabled])
              {
                v87 = MEMORY[0x1E696AD98];
                v88 = 2;
                goto LABEL_190;
              }

LABEL_207:
              if (([objc_msgSend(input "captureSettings")] & 0x200000000) != 0)
              {
                deepFusionEnhancedResolutionGainMapPool = self->_deepFusionEnhancedResolutionGainMapPool;
              }

              else
              {
LABEL_208:
                deepFusionEnhancedResolutionGainMapPool = 0;
              }

              break;
            case 3:
            case 4:
            case 5:
            case 6:
              if ([objc_msgSend(input "captureSettings")] == 10)
              {
                v79 = [-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->_output mediaPropertiesForAttachedMediaKey:{0x1F217BF50), "livePixelBufferPool"}];
              }

              else
              {
                v87 = MEMORY[0x1E696AD98];
                v88 = v15;
LABEL_190:
                [v87 numberWithInt:v88];
                v79 = [objc_msgSend(OUTLINED_FUNCTION_4() "objectForKeyedSubscript:{"objectForKeyedSubscript:", &unk_1F2244B30}")];
              }

LABEL_191:
              deepFusionEnhancedResolutionGainMapPool = v79;
              break;
            default:
              goto LABEL_208;
          }

          [objc_msgSend(input "captureSettings")];
          if (!deepFusionEnhancedResolutionGainMapPool)
          {
            goto LABEL_57;
          }

          goto LABEL_188;
        case 0x15uLL:
          switch(v15)
          {
            case 0:
              goto LABEL_53;
            case 1:
            case 3:
            case 4:
            case 5:
            case 6:
              v74 = OUTLINED_FUNCTION_14_26();
              OUTLINED_FUNCTION_13_30(v74);
              v75 = [*(type + 3480) numberWithUnsignedInt:-[BWPhotonicEngineNodeConfiguration linearYUVPixelFormat](self->_nodeConfiguration)];
              v76 = OUTLINED_FUNCTION_13_30(v75);
              if (v76)
              {
                noiseReductionAndFusionProcessorOutputIntermediatePool = v76;
              }

              else
              {
                noiseReductionAndFusionProcessorOutputIntermediatePool = [-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->_output mediaPropertiesForAttachedMediaKey:{0x1F21AAE10), "livePixelBufferPool"}];
                if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
                {
                  goto LABEL_188;
                }
              }

              if ((![objc_msgSend(input "processingSettings")] || -[BWPixelBufferPool dimensions](noiseReductionAndFusionProcessorOutputIntermediatePool, "dimensions") == dimensions) && !objc_msgSend(objc_msgSend(input, "processingSettings"), "optimizedProcessingWithCropAndDownscaleEnabled"))
              {
                goto LABEL_188;
              }

              v53 = MEMORY[0x1E696AEC0];
              v54 = BWStillImageProcessorTypeToShortString([controller type]);
              typeCopy2 = 21;
              break;
            case 2:
              if (![objc_msgSend(input "captureSettings")])
              {
                goto LABEL_153;
              }

              goto LABEL_53;
            default:
              goto LABEL_188;
          }

          goto LABEL_103;
        case 0x1FuLL:
          switch(v15)
          {
            case 1:
            case 3:
            case 4:
            case 5:
            case 6:
              [OUTLINED_FUNCTION_2_72() numberWithInt:v15];
              [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
              OUTLINED_FUNCTION_15_24();
              v73 = 136;
              goto LABEL_150;
            case 2:
              if (![(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration ultraHighResolutionProcessingEnabled])
              {
                goto LABEL_188;
              }

              [OUTLINED_FUNCTION_2_72() numberWithInt:2];
              [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
              OUTLINED_FUNCTION_15_24();
              v90 = 136;
              break;
            default:
              goto LABEL_188;
          }

          goto LABEL_213;
        case 0x20uLL:
          switch(v15)
          {
            case 1:
            case 3:
            case 4:
            case 5:
            case 6:
              [OUTLINED_FUNCTION_2_72() numberWithInt:v15];
              [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
              OUTLINED_FUNCTION_15_24();
              v73 = 144;
LABEL_150:
              [input numberWithUnsignedInt:{objc_msgSend(*(&self->super.super.isa + v73), "pixelFormat")}];
              [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
              goto LABEL_188;
            case 2:
              if (![(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration ultraHighResolutionProcessingEnabled])
              {
                goto LABEL_188;
              }

              [OUTLINED_FUNCTION_2_72() numberWithInt:2];
              [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
              OUTLINED_FUNCTION_15_24();
              v90 = 144;
              break;
            default:
              goto LABEL_188;
          }

LABEL_213:
          videoFormat = *(&self->super.super.isa + v90);
          goto LABEL_214;
        case 0x27uLL:
          [(BWVideoFormat *)[(BWNodeInput *)self->_input videoFormat] width];
          [(BWVideoFormat *)[(BWNodeInput *)self->_input videoFormat] height];
          BWStillImageBufferTypeToShortString(39);
          [(BWNodeOutput *)self->_output memoryPool];
          OUTLINED_FUNCTION_17_23();
          goto LABEL_105;
        case 0x29uLL:
          -[BWPhotonicEngineNodeConfiguration smartStyleUseCaseForSettings:](self->_nodeConfiguration, "smartStyleUseCaseForSettings:", [input stillImageSettings]);
          [OUTLINED_FUNCTION_4() linearYUVIntermediateThumbnailDimensionsForUseCase:?];
          [-[BWPhotonicEngineNodeConfiguration smartStyleRenderingProcessorControllerConfiguration](self->_nodeConfiguration "smartStyleRenderingProcessorControllerConfiguration")];
          BWStillImageBufferTypeToShortString(41);
          [(BWNodeOutput *)self->_output memoryPool];
          OUTLINED_FUNCTION_6_50();

          return [v77 onDemandAllocatorWithDimensions:? pixelFormat:? name:? memoryPool:?];
        default:
          goto LABEL_188;
      }

      return result;
    case 7:
    case 18:
      switch(type)
      {
        case 0x7D2uLL:
          goto LABEL_46;
        case 0x10uLL:
          output = self->_output;
          keyCopy = key;
          goto LABEL_59;
        case 0x13uLL:
          if (v15 > 6)
          {
            goto LABEL_188;
          }

          if (v15 != 2 || ![(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration ultraHighResolutionProcessingEnabled])
          {
LABEL_57:
            output = self->_output;
            keyCopy = @"GainMap";
            goto LABEL_59;
          }

          [MEMORY[0x1E696AD98] numberWithInt:2];
          if (![objc_msgSend(OUTLINED_FUNCTION_4() "objectForKeyedSubscript:{"objectForKeyedSubscript:", &unk_1F2244B30}")])
          {
            [-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->_output mediaPropertiesForAttachedMediaKey:{0x1F217BF50), "livePixelBufferPool"}];
          }

          [-[NSDictionary objectForKeyedSubscript:](self->_pixelBufferProviderByPixelFormatByResolutionFlavor objectForKeyedSubscript:{&unk_1F2244B48), "objectForKeyedSubscript:", &unk_1F2244B30}];
          goto LABEL_188;
        case 0x15uLL:
          if (v15 > 6)
          {
            goto LABEL_188;
          }

          if (v15 != 2 || ![(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration ultraHighResolutionProcessingEnabled])
          {
LABEL_53:
            output = self->_output;
            keyCopy = @"DemosaicedRaw";
            goto LABEL_59;
          }

LABEL_153:
          [OUTLINED_FUNCTION_2_72() numberWithInt:2];
          [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
          OUTLINED_FUNCTION_15_24();
          linearYUVPixelFormat = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration linearYUVPixelFormat];
          break;
        case 0x26uLL:
          goto LABEL_188;
        case 0x29uLL:
LABEL_63:
          -[BWPhotonicEngineNodeConfiguration smartStyleUseCaseForSettings:](self->_nodeConfiguration, "smartStyleUseCaseForSettings:", [input stillImageSettings]);
          [OUTLINED_FUNCTION_4() linearYUVIntermediateThumbnailDimensionsForUseCase:?];
          [-[BWPhotonicEngineNodeConfiguration smartStyleRenderingProcessorControllerConfiguration](self->_nodeConfiguration "smartStyleRenderingProcessorControllerConfiguration")];
          BWStillImageBufferTypeToShortString(41);
          [(BWNodeOutput *)self->_output memoryPool];
          OUTLINED_FUNCTION_17_23();
          goto LABEL_105;
        case 1uLL:
          [(BWPixelBufferPool *)[(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool] dimensions];
          formatRequirements = [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)self->_output primaryMediaConfiguration] formatRequirements];
          widthAlignment = [(BWFormatRequirements *)formatRequirements widthAlignment];
          if (widthAlignment <= [(BWFormatRequirements *)formatRequirements heightAlignment])
          {
            [(BWFormatRequirements *)formatRequirements heightAlignment];
          }

          else
          {
            [(BWFormatRequirements *)formatRequirements widthAlignment];
          }

          OUTLINED_FUNCTION_20_14();
          if (!v22)
          {
            pixelFormat = v9;
            if (!v9)
            {
              pixelFormat = [(BWPixelBufferPool *)[(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool] pixelFormat];
            }

            if (pixelFormat == [(BWPixelBufferPool *)[(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool] pixelFormat])
            {
              goto LABEL_90;
            }

            goto LABEL_97;
          }

          if (v15 < 2)
          {
            if (([objc_msgSend(input "captureSettings")] & 0x200000000) == 0 || (distortionCorrectionEnhancedResolutionOutputPool = self->_distortionCorrectionEnhancedResolutionOutputPool) == 0)
            {
              distortionCorrectionEnhancedResolutionOutputPool = [(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool];
            }

            if (v9 && [(BWPixelBufferPool *)distortionCorrectionEnhancedResolutionOutputPool pixelFormat]!= v9)
            {
LABEL_97:
              v51 = MEMORY[0x1E696AEC0];
              [(BWPixelBufferPool *)[(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->_output primaryMediaProperties] livePixelBufferPool] dimensions];
              v52 = BWStringFromDimensions();
              [v51 stringWithFormat:@"On-demand allocator %@ '%@' for Scaler / DC", v52, BWStringFromCVPixelFormatType(v9)];
              +[BWMemoryPool sharedMemoryPool];
LABEL_105:
              OUTLINED_FUNCTION_6_50();

              return [v58 onDemandAllocatorWithDimensions:? dimensionAlignment:? pixelFormat:? name:? memoryPool:?];
            }

LABEL_188:
            OUTLINED_FUNCTION_6_50();
            return result;
          }

          if (v15 != 2)
          {
            goto LABEL_188;
          }

          if (![(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration ultraHighResolutionProcessingEnabled])
          {
LABEL_90:
            v49 = self->_output;
            goto LABEL_183;
          }

          [OUTLINED_FUNCTION_2_72() numberWithInt:2];
          [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
          OUTLINED_FUNCTION_15_24();
          videoFormat = [(BWNodeOutput *)self->_output videoFormat];
LABEL_214:
          linearYUVPixelFormat = [(BWVideoFormat *)videoFormat pixelFormat];
          break;
        default:
          goto LABEL_188;
      }

      [input numberWithUnsignedInt:linearYUVPixelFormat];
      OUTLINED_FUNCTION_4();
LABEL_82:
      OUTLINED_FUNCTION_6_50();

      return [v45 objectForKeyedSubscript:?];
    case 8:
    case 9:
    case 13:
      if (type != 2001)
      {
        goto LABEL_188;
      }

      output = self->_output;
      keyCopy = @"Depth";
      goto LABEL_59;
    case 10:
      goto LABEL_182;
    case 12:
      if (type != 1)
      {
        goto LABEL_188;
      }

      v29 = [controller outputPixelFormatForInput:input];
      if (v15 > 6)
      {
        goto LABEL_188;
      }

      v30 = v29;
      if (((1 << v15) & 0x5A) == 0)
      {
        if (((1 << v15) & 5) == 0 || ((-[BWPhotonicEngineNodeConfiguration dimensionsByResolutionFlavorByPortType](self->_nodeConfiguration), v38 = [OUTLINED_FUNCTION_13_30(objc_msgSend(input "portType"))], v39 = FigCaptureDimensionsFromDictionaryRepresentation(v38), v40 = FigCaptureDimensionsFromDictionaryRepresentation(objc_msgSend(objc_msgSend(-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](self->_nodeConfiguration, "softISPProcessorControllerConfiguration"), "outputDimensionsByResolutionFlavor"), "objectForKeyedSubscript:", &unk_1F2244B48)), v39 >= 1) ? (v41 = SHIDWORD(v39) < 1) : (v41 = 1), !v41 ? (v42 = v40 == dimensions) : (v42 = 0), !v42))
        {
          v43 = MEMORY[0x1E696AD98];
          v44 = v30;
          goto LABEL_81;
        }
      }

      v31 = OUTLINED_FUNCTION_8_38();
      OUTLINED_FUNCTION_13_30(v31);
      v32 = OUTLINED_FUNCTION_13_30([*(v9 + 3480) numberWithUnsignedInt:v30]);
      if (v32)
      {
        noiseReductionAndFusionProcessorOutputIntermediatePool = v32;
      }

      else
      {
        noiseReductionAndFusionProcessorOutputIntermediatePool = -[NSDictionary objectForKeyedSubscript:](self->_softISPOutputPoolByPixelFormat, "objectForKeyedSubscript:", [*(v9 + 3480) numberWithUnsignedInt:v30]);
        if (!noiseReductionAndFusionProcessorOutputIntermediatePool)
        {
          goto LABEL_188;
        }
      }

      if ((![objc_msgSend(input "processingSettings")] || -[BWPixelBufferPool dimensions](noiseReductionAndFusionProcessorOutputIntermediatePool, "dimensions") == dimensions) && !objc_msgSend(objc_msgSend(input, "processingSettings"), "optimizedProcessingWithCropAndDownscaleEnabled"))
      {
        goto LABEL_188;
      }

      v53 = MEMORY[0x1E696AEC0];
      v54 = BWStillImageProcessorTypeToShortString([controller type]);
      typeCopy2 = 1;
LABEL_103:
      v56 = BWStillImageBufferTypeToShortString(typeCopy2);
      v57 = BWStringFromDimensions();
      [v53 stringWithFormat:@"OptimizedProcessing-OnDemand-%@-%@-%@-%@", v54, v56, v57, BWStringFromCVPixelFormatType(-[BWPixelBufferPool pixelFormat](noiseReductionAndFusionProcessorOutputIntermediatePool, "pixelFormat"))];
LABEL_104:
      [(BWPixelBufferPool *)noiseReductionAndFusionProcessorOutputIntermediatePool pixelFormat];
      +[BWMemoryPool sharedMemoryPool];
      OUTLINED_FUNCTION_17_23();
      goto LABEL_105;
    case 15:
      if (type != 1)
      {
        goto LABEL_188;
      }

      outputPixelFormat = [controller outputPixelFormat];
      if ((v15 - 1) >= 6)
      {
        if (v15)
        {
          goto LABEL_188;
        }

        v43 = MEMORY[0x1E696AD98];
      }

      else
      {
        v21 = -[NSDictionary objectForKeyedSubscript:](self->_pixelBufferProviderByPixelFormatByResolutionFlavor, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v15]);
        if ([v21 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", outputPixelFormat)}])
        {
          goto LABEL_188;
        }

        v43 = MEMORY[0x1E696AD98];
      }

      v44 = outputPixelFormat;
LABEL_81:
      [v43 numberWithUnsignedInt:v44];
      goto LABEL_82;
    case 16:
      if (type == 19)
      {
        goto LABEL_57;
      }

      if (type == 1)
      {
        OUTLINED_FUNCTION_20_14();
        if (!v22)
        {
          goto LABEL_182;
        }

        if (v15 <= 2)
        {
          smartStyleEnhancedResolutionOutputPool = self->_smartStyleEnhancedResolutionOutputPool;
          if ([(BWPixelBufferPool *)smartStyleEnhancedResolutionOutputPool width]!= dimensions.var0 || [(BWPixelBufferPool *)smartStyleEnhancedResolutionOutputPool height]!= *&dimensions >> 32)
          {
            smartStyleUltraHighResolutionOutputPool = self->_smartStyleUltraHighResolutionOutputPool;
            if ([(BWPixelBufferPool *)smartStyleUltraHighResolutionOutputPool width]!= dimensions.var0 || [(BWPixelBufferPool *)smartStyleUltraHighResolutionOutputPool height]!= *&dimensions >> 32)
            {
              goto LABEL_182;
            }
          }
        }
      }

      goto LABEL_188;
    case 17:
      if (type == 2002)
      {
LABEL_46:
        output = self->_output;
        keyCopy = @"ConstantColorConfidenceMap";
LABEL_59:
        [(BWNodeOutput *)output mediaPropertiesForAttachedMediaKey:keyCopy];
      }

      else
      {
        if (type != 1)
        {
          goto LABEL_188;
        }

LABEL_182:
        v49 = self->_output;
LABEL_183:
        [(BWNodeOutput *)v49 primaryMediaProperties];
      }

      OUTLINED_FUNCTION_6_50();

      return [v85 livePixelBufferPool];
    default:
      goto LABEL_188;
  }
}

- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)key format:(id)format
{
  keyCopy = key;
  if ([key isEqualToString:{0x1F219ECB0, format}])
  {
    if ([-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](self->_nodeConfiguration "deepZoomProcessorControllerConfiguration")] == 3)
    {
      v6 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__deepZoomTransferEnhancedResolutionOutputPool;
      goto LABEL_6;
    }

    keyCopy = @"PrimaryFormat";
  }

  else if ([(__CFString *)keyCopy isEqualToString:0x1F219ECD0])
  {
    v6 = &OBJC_IVAR___BWPhotonicEngineNodeResourceCoordinator__stereoPhotoOutputPool;
LABEL_6:
    result = *(&self->super.super.isa + *v6);
    if (result)
    {
      return result;
    }
  }

  v8 = [(BWNodeOutput *)self->_output mediaPropertiesForAttachedMediaKey:keyCopy];
  result = [v8 livePixelBufferPool];
  if (!result)
  {
    result = [v8 preparedPixelBufferPool];
    if (!result)
    {
      inferenceOutputPixelBufferProvidersByAttachedMediaKey = self->_inferenceOutputPixelBufferProvidersByAttachedMediaKey;

      return [(NSDictionary *)inferenceOutputPixelBufferProvidersByAttachedMediaKey objectForKeyedSubscript:keyCopy];
    }
  }

  return result;
}

- (void)_ensureProcessorCoordinatorSetupForPostponedProcessors
{
  if (!self)
  {
    return;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  array = [MEMORY[0x1E695DF70] array];
  FigDebugIsInternalBuild();
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 25];
  mach_absolute_time();
  [array addObject:v3];
  if ([self hasSuccessfullySetupProcessorControllersAndMemoryResources])
  {
    v4 = [self controllerForType:3];
    if (v4)
    {
      v5 = v4;
      if ([*(self + 32) postponeInferenceControllerPreparation])
      {
        v6 = *(self + 248);
        v7 = *(self + 240);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __97__BWPhotonicEngineNodeResourceCoordinator__ensureProcessorCoordinatorSetupForPostponedProcessors__block_invoke;
        v24[3] = &unk_1E798F898;
        v24[4] = v5;
        v24[5] = self;
        ubn_dispatch_group_async(v6, v7, v24);
      }
    }

    if (![*(self + 32) deepZoomProcessorControllerConfiguration] || objc_msgSend(self, "controllerForType:", 10))
    {
      goto LABEL_20;
    }

    FigDebugIsInternalBuild();
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 16];
    mach_absolute_time();
    [array addObject:v8];
    v9 = -[BWDeepZoomProcessorController initWithConfiguration:]([BWDeepZoomProcessorController alloc], "initWithConfiguration:", [*(self + 32) deepZoomProcessorControllerConfiguration]);
    if (v9)
    {
      v10 = v9;
      if (![(BWDeepZoomProcessorController *)v9 prepareWithPixelBufferPoolProvider:self])
      {
        [self addController:v10];
        if (dword_1EB58E040)
        {
          OUTLINED_FUNCTION_3_64();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v22))
          {
            v12 = v23;
          }

          else
          {
            v12 = v23 & 0xFFFFFFFE;
          }

          if (v12)
          {
            mach_absolute_time();
            v13 = FigHostTimeToNanoseconds();
            v14 = OUTLINED_FUNCTION_16_27(v13);
            OUTLINED_FUNCTION_19_19(v14, 1000.0);
            OUTLINED_FUNCTION_11_32();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [array removeLastObject];
LABEL_20:
        if (dword_1EB58E040)
        {
          OUTLINED_FUNCTION_3_64();
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (os_log_type_enabled(v15, v22))
          {
            v16 = v23;
          }

          else
          {
            v16 = v23 & 0xFFFFFFFE;
          }

          if (v16)
          {
            mach_absolute_time();
            v17 = FigHostTimeToNanoseconds();
            v18 = OUTLINED_FUNCTION_16_27(v17);
            OUTLINED_FUNCTION_19_19(v18, 1000.0);
            OUTLINED_FUNCTION_11_32();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [array removeLastObject];
        return;
      }
    }
  }

  OUTLINED_FUNCTION_3_64();
  v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  if (os_log_type_enabled(v19, v22))
  {
    v20 = v23;
  }

  else
  {
    v20 = v23 & 0xFFFFFFFE;
  }

  if (v20)
  {
    [array componentsJoinedByString:@"->"];
    OUTLINED_FUNCTION_13();
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  [array componentsJoinedByString:@"->"];
  v21 = _os_log_send_and_compose_impl();
  FigCapturePleaseFileRadar(7, v21, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNodeResourceCoordinator.m", 3856, @"LastShownDate:BWPhotonicEngineNodeResourceCoordinator.m:3856", @"LastShownBuild:BWPhotonicEngineNodeResourceCoordinator.m:3856", 0);
  free(v21);
}

- (void)prepareSharedExternalMemoryResourceForProcessorControllersIfNeededWithSettings:(id)settings
{
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  if (!self->_useSharedExternalMemoryResourceForProcessorControllers || [(NSArray *)self->_sharedExternalMemoryResourceSetUpForResolutionFlavors count])
  {
    goto LABEL_83;
  }

  v79 = [(BWPhotonicEngineNodeResourceCoordinator *)self _requiredResolutionFlavorsForSharedExternalMemoryResourceWithSettings:settings];
  if (![v79 count])
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    goto LABEL_83;
  }

  FigDebugIsInternalBuild();
  v62 = 23;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d"];
  v6 = mach_absolute_time();
  processorControllersForSharedExternalMemoryResource = [(BWPhotonicEngineNodeResourceCoordinator *)self processorControllersForSharedExternalMemoryResource];
  v8 = &dword_1EB58E000;
  v70 = v6;
  if ([processorControllersForSharedExternalMemoryResource count] < 2)
  {
    if (dword_1EB58E040)
    {
      v24 = OUTLINED_FUNCTION_5_57();
      if (os_log_type_enabled(v24, type))
      {
        v25 = v114;
      }

      else
      {
        v25 = v114 & 0xFFFFFFFE;
      }

      if (v25)
      {
        if ([processorControllersForSharedExternalMemoryResource firstObject])
        {
          BWStillImageProcessorTypeToShortString([objc_msgSend(processorControllersForSharedExternalMemoryResource "firstObject")]);
        }

        OUTLINED_FUNCTION_9_37();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v26 = 0;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_75;
  }

  v66 = v5;
  array = [MEMORY[0x1E695DF70] array];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = processorControllersForSharedExternalMemoryResource;
  v10 = [processorControllersForSharedExternalMemoryResource countByEnumeratingWithState:&v116 objects:v115 count:16];
  selfCopy = self;
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    memSize = 0;
    v14 = *v117;
    memSize2 = 0;
    type = 6;
LABEL_9:
    v15 = 0;
    while (1)
    {
      if (*v117 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v116 + 1) + 8 * v15);
      v17 = [v16 externalMemoryDescriptorForResolutionFlavors:v79];
      if (!v17)
      {
        goto LABEL_83;
      }

      v18 = v17;
      if ([v17 memSize] > memSize)
      {
        memSize = [v18 memSize];
        type = [v16 type];
      }

      allocatorType = [v18 allocatorType];
      if (v12)
      {
        if (v12 != allocatorType)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v12 = allocatorType;
      }

      if ([v16 type] == 6)
      {
        memSize2 = [v18 memSize];
      }

      v20 = MEMORY[0x1E696AEC0];
      v62 = BWStillImageProcessorTypeToShortString([v16 type]);
      v64 = BWPrettyStringFromBytes([v18 memSize]);
      [array addObject:{objc_msgSend(v20, "stringWithFormat:", @"%@:%@"}];
      if (v11 == ++v15)
      {
        v11 = [obj countByEnumeratingWithState:&v116 objects:v115 count:16];
        if (v11)
        {
          goto LABEL_9;
        }

        if (type != 12)
        {
          self = selfCopy;
          v8 = &dword_1EB58E000;
          goto LABEL_41;
        }

        self = selfCopy;
        v8 = &dword_1EB58E000;
        if (([(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration ultraHighResolutionProcessingEnabled]& 1) == 0)
        {
          digitalFlashSupportEnabled = [(BWPhotonicEngineNodeConfiguration *)selfCopy->_nodeConfiguration digitalFlashSupportEnabled];
          v22 = 0.1;
          if (digitalFlashSupportEnabled)
          {
            v22 = 0.6;
          }

          memSize += (v22 * memSize2);
        }

        v23 = 12;
        goto LABEL_37;
      }
    }
  }

  v12 = 0;
  LODWORD(memSize) = 0;
  v23 = 6;
LABEL_37:
  type = v23;
LABEL_41:
  dimensionsByResolutionFlavorByPortType = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration dimensionsByResolutionFlavorByPortType];
  v28 = BWCommonDimensionsForResolutionFlavor(dimensionsByResolutionFlavorByPortType, 2);
  if (v28 >= 1 && SHIDWORD(v28) >= 1)
  {
    [(BWStillImageNodeConfiguration *)self->_nodeConfiguration deferredPhotoProcessorEnabled];
  }

  if (v8[16])
  {
    v114 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    self = selfCopy;
  }

  v31 = objc_alloc_init(MEMORY[0x1E6991760]);
  [v31 setMemSize:memSize];
  [v31 setWireMemory:1];
  [v31 setEnforceImmediateDealloc:0];
  [v31 setLabel:@"FigMetalAllocatorBackend-Shared-PhotonicEngine"];
  [v31 setMemoryPoolId:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
  sharedExternalMemoryResource = self->_sharedExternalMemoryResource;
  if (!sharedExternalMemoryResource)
  {
    device = [(MTLCommandQueue *)[(BWStillImageNodeConfiguration *)self->_nodeConfiguration metalCommandQueue] device];
    if (device)
    {
      v26 = [objc_alloc(MEMORY[0x1E6991758]) initWithDevice:device allocatorType:v12];
      if (!v26)
      {
        goto LABEL_84;
      }

      goto LABEL_54;
    }

LABEL_83:
    v26 = 0;
    goto LABEL_84;
  }

  if (![(CMIExternalMemoryResource *)sharedExternalMemoryResource allocatorBackend])
  {
    goto LABEL_83;
  }

  v26 = 0;
  if (v12 != [-[CMIExternalMemoryResource allocatorBackend](self->_sharedExternalMemoryResource "allocatorBackend")])
  {
    goto LABEL_84;
  }

LABEL_54:
  allocatorBackend = [(CMIExternalMemoryResource *)self->_sharedExternalMemoryResource allocatorBackend];
  if (allocatorBackend)
  {
    v35 = allocatorBackend;
  }

  else
  {
    v35 = v26;
  }

  if ([v35 setupWithDescriptor:v31])
  {
    goto LABEL_84;
  }

  if (!self->_sharedExternalMemoryResource)
  {
    v36 = objc_alloc_init(MEMORY[0x1E69916D0]);
    self->_sharedExternalMemoryResource = v36;
    v37 = [(CMIExternalMemoryResource *)v36 setAllocatorBackend:v35];
    v45 = OUTLINED_FUNCTION_21_21(v37, v38, v39, v40, v41, v42, v43, v44, v62, v64, v66, selfCopy, v70, 296, 32, type, obj, v79, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, 0);
    if (v45)
    {
      v46 = v45;
      v47 = MEMORY[0];
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (MEMORY[0] != v47)
          {
            objc_enumerationMutation(obja);
          }

          v49 = [*(8 * i) setExternalMemoryResource:self->_sharedExternalMemoryResource];
        }

        v46 = OUTLINED_FUNCTION_21_21(v49, v50, v51, v52, v53, v54, v55, v56, v63, v65, v67, v69, v71, v72, v74, v76, obja, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v112);
      }

      while (v46);
    }
  }

  if (dword_1EB58E040)
  {
    v57 = OUTLINED_FUNCTION_5_57();
    if (os_log_type_enabled(v57, type))
    {
      v58 = v114;
    }

    else
    {
      v58 = v114 & 0xFFFFFFFE;
    }

    if (v58)
    {
      OUTLINED_FUNCTION_9_37();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_75:

  self->_sharedExternalMemoryResourceSetUpForResolutionFlavors = [v79 copy];
  if (dword_1EB58E040)
  {
    v59 = OUTLINED_FUNCTION_5_57();
    if (os_log_type_enabled(v59, type))
    {
      v60 = v114;
    }

    else
    {
      v60 = v114 & 0xFFFFFFFE;
    }

    if (v60)
    {
      mach_absolute_time();
      v61 = FigHostTimeToNanoseconds();
      OUTLINED_FUNCTION_16_27(v61);
      OUTLINED_FUNCTION_9_37();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_84:
}

- (uint64_t)_requiredResolutionFlavorsForSharedExternalMemoryResourceWithSettings:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = OUTLINED_FUNCTION_7_45();
  dimensionsByResolutionFlavorByPortType = [(BWPhotonicEngineNodeConfiguration *)v4 dimensionsByResolutionFlavorByPortType];
  v6 = BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType, 3);
  v7 = OUTLINED_FUNCTION_7_45();
  dimensionsByResolutionFlavorByPortType2 = [(BWPhotonicEngineNodeConfiguration *)v7 dimensionsByResolutionFlavorByPortType];
  v9 = BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType2, 4);
  v10 = OUTLINED_FUNCTION_7_45();
  dimensionsByResolutionFlavorByPortType3 = [(BWPhotonicEngineNodeConfiguration *)v10 dimensionsByResolutionFlavorByPortType];
  v12 = BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType3, 6);
  v13 = OUTLINED_FUNCTION_7_45();
  dimensionsByResolutionFlavorByPortType4 = [(BWPhotonicEngineNodeConfiguration *)v13 dimensionsByResolutionFlavorByPortType];
  v15 = BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType4, 5);
  v16 = v15;
  if ((((v6 | v9) | v12) & 1) == 0 || v15)
  {
    [v3 addObject:&unk_1F2244C50];
    if (!v6)
    {
LABEL_5:
      if ((v9 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_9:
      v17 = OUTLINED_FUNCTION_7_45();
      dimensionsByResolutionFlavorByPortType5 = [(BWPhotonicEngineNodeConfiguration *)v17 dimensionsByResolutionFlavorByPortType];
      v19 = BWDimensionsWithResolutionFlavor(dimensionsByResolutionFlavorByPortType5, 3);
      v20 = FigCaptureLargestDimensionsFromDimensionsArray(v19);
      v21 = OUTLINED_FUNCTION_7_45();
      dimensionsByResolutionFlavorByPortType6 = [(BWPhotonicEngineNodeConfiguration *)v21 dimensionsByResolutionFlavorByPortType];
      v23 = BWDimensionsWithResolutionFlavor(dimensionsByResolutionFlavorByPortType6, 4);
      if (v20 == __ROR8__(FigCaptureLargestDimensionsFromDimensionsArray(v23), 32))
      {
        v24 = v6;
      }

      else
      {
        v24 = 0;
      }

      if ((v24 & 1) == 0)
      {
        [v3 addObject:&unk_1F2244AE8];
      }

      goto LABEL_14;
    }
  }

  else if (!v6)
  {
    goto LABEL_5;
  }

  [v3 addObject:&unk_1F2244AD0];
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_14:
  if (v12)
  {
    [v3 addObject:&unk_1F2244B00];
  }

  if (v16)
  {
    [v3 addObject:&unk_1F2244B18];
  }

  v25 = OUTLINED_FUNCTION_7_45();
  dimensionsByResolutionFlavorByPortType7 = [(BWPhotonicEngineNodeConfiguration *)v25 dimensionsByResolutionFlavorByPortType];
  if (BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType7, 2))
  {
    [v3 addObject:&unk_1F2244B48];
  }

  if (a2 && [objc_msgSend(OUTLINED_FUNCTION_7_45() resolvedProcessingResolutionFlavorsForSettings:{a2), "containsObject:", &unk_1F2244AB8}])
  {
    [v3 addObject:&unk_1F2244AB8];
  }

  v27 = OUTLINED_FUNCTION_7_45();
  dimensionsByResolutionFlavorByPortType8 = [(BWPhotonicEngineNodeConfiguration *)v27 dimensionsByResolutionFlavorByPortType];
  v29 = BWDimensionsWithResolutionFlavor(dimensionsByResolutionFlavorByPortType8, 1);
  v30 = FigCaptureLargestDimensionsFromDimensionsArray(v29);
  v31 = OUTLINED_FUNCTION_7_45();
  if (v30 > [(BWPhotonicEngineNodeConfiguration *)v31 rawSensorDimensions]|| (v32 = OUTLINED_FUNCTION_7_45(), SHIDWORD(v30) > ([(BWPhotonicEngineNodeConfiguration *)v32 rawSensorDimensions]>> 32)))
  {
    [v3 addObject:&unk_1F2244AB8];
  }

  return [v3 allObjects];
}

- (uint64_t)waitAndSafelyGetProcessorControllerForType:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)purgeProcessorAndSharedExternalMemoryResourceBackendMemoryIfNeededWithSettings:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)syncGetInferencesForInferenceInputBufferType:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)syncMergeInferencesWithSampleBuffer:stillImageSettings:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)syncReleaseInferencesForInferenceInputBufferType:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)unsafeSetInferences:forInferenceInputBufferType:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

@end