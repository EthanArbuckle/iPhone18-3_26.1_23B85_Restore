@interface BWCinematicPerceptionNode
- (BOOL)_attachISPDetectionsFromSampleBuffer:(void *)buffer toTrackingInput:(uint64_t)input withFrameTimestamp:;
- (BOOL)intermediateResourceTrackingAllowedForAttachedMediaKey:(id)key;
- (BWCinematicPerceptionNode)initWithConvEngineSupportWithCaptureDevice:(id)device scheduler:(id)scheduler priority:(unsigned int)priority depthInferenceEnabled:(BOOL)enabled aspectRatio:(int)ratio;
- (id)inputVideoFormatForAttachedMediaKey:(id)key;
- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)key format:(id)format;
- (void)dealloc;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)willEmitSampleBufferAlways:(opaqueCMSampleBuffer *)always;
@end

@implementation BWCinematicPerceptionNode

- (void)dealloc
{
  depthFormatDescription = self->_depthFormatDescription;
  if (depthFormatDescription)
  {
    CFRelease(depthFormatDescription);
  }

  initialColorFeaturesPixelBuffer = self->_initialColorFeaturesPixelBuffer;
  if (initialColorFeaturesPixelBuffer)
  {
    CFRelease(initialColorFeaturesPixelBuffer);
  }

  initialDisparityFeaturesPixelBuffer = self->_initialDisparityFeaturesPixelBuffer;
  if (initialDisparityFeaturesPixelBuffer)
  {
    CFRelease(initialDisparityFeaturesPixelBuffer);
  }

  previousColorFeaturesSampleBuffer = self->_previousColorFeaturesSampleBuffer;
  if (previousColorFeaturesSampleBuffer)
  {
    CFRelease(previousColorFeaturesSampleBuffer);
  }

  previousDisparityFeaturesSampleBuffer = self->_previousDisparityFeaturesSampleBuffer;
  if (previousDisparityFeaturesSampleBuffer)
  {
    CFRelease(previousDisparityFeaturesSampleBuffer);
  }

  currentFeaturesMinPixelBuffer = self->_currentFeaturesMinPixelBuffer;
  if (currentFeaturesMinPixelBuffer)
  {
    CFRelease(currentFeaturesMinPixelBuffer);
  }

  previousFeaturesMinPixelBuffer = self->_previousFeaturesMinPixelBuffer;
  if (previousFeaturesMinPixelBuffer)
  {
    CFRelease(previousFeaturesMinPixelBuffer);
  }

  currentFeaturesMinSampleBuffer = self->_currentFeaturesMinSampleBuffer;
  if (currentFeaturesMinSampleBuffer)
  {
    CFRelease(currentFeaturesMinSampleBuffer);
  }

  previousFeaturesMinSampleBuffer = self->_previousFeaturesMinSampleBuffer;
  if (previousFeaturesMinSampleBuffer)
  {
    CFRelease(previousFeaturesMinSampleBuffer);
  }

  v12.receiver = self;
  v12.super_class = BWCinematicPerceptionNode;
  [(BWInferenceNode *)&v12 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v4.receiver = self;
  v4.super_class = BWCinematicPerceptionNode;
  [(BWInferenceNode *)&v4 prepareForCurrentConfigurationToBecomeLive];
  v3 = [objc_alloc(getFTCinematicConfigClass()) init];
  self->_cinematicTracker = [objc_alloc(getFTCinematicTrackerClass()) initWithConfig:v3];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if ([key isEqualToString:@"SynchronizedSlaveFrame"])
  {
    v9 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWInferenceVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [format pixelBufferAttributes]);
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(format, "colorSpaceProperties")}];
    -[BWVideoFormatRequirements setSupportedColorSpaceProperties:](v9, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1]);
    [(BWInferenceVideoFormatRequirements *)v9 setIncludesInvalidContent:0];
    v12 = v9;
    v11.receiver = self;
    v11.super_class = BWCinematicPerceptionNode;
    -[BWInferenceEngine prepareForInputInferenceVideoFormat:attachedMediaKey:](-[BWInferenceNode inferenceEngine](&v11, sel_inferenceEngine), "prepareForInputInferenceVideoFormat:attachedMediaKey:", +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1]), @"SynchronizedSlaveFrame");
  }

  v10.receiver = self;
  v10.super_class = BWCinematicPerceptionNode;
  [(BWInferenceNode *)&v10 didSelectFormat:format forInput:input forAttachedMediaKey:key];
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  ++self->_framesSinceLastDDR;
  v4.receiver = self;
  v4.super_class = BWCinematicPerceptionNode;
  [(BWNode *)&v4 handleDroppedSample:sample forInput:input];
}

- (void)willEmitSampleBufferAlways:(opaqueCMSampleBuffer *)always
{
  target = 0;
  if (!self->_depthInferenceEnabled)
  {
    goto LABEL_14;
  }

  memset(&v17, 0, sizeof(v17));
  CMSampleBufferGetPresentationTimeStamp(&v17, always);
  AttachedMedia = BWSampleBufferGetAttachedMedia(always, @"Depth");
  if (AttachedMedia)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
    v16 = v17;
    if (BWSampleBufferCreateFromPixelBuffer(ImageBuffer, &v16, &self->_depthFormatDescription, &target))
    {
      goto LABEL_11;
    }

LABEL_7:
    v10 = *off_1E798A3C8;
    v11 = CMGetAttachment(always, *off_1E798A3C8, 0);
    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    [v12 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B540), *off_1E798B540}];
    [v12 setObject:objc_msgSend(v11 forKeyedSubscript:{"objectForKeyedSubscript:", @"MirroredHorizontal", @"MirroredHorizontal"}];
    CMSetAttachment(target, v10, v12, 1u);

    BWSampleBufferSetAttachedMedia(always, @"Depth", target);
    v13 = BWSampleBufferGetAttachedMedia(always, @"depthFeaturesOut");
    self->_previousDisparityFeaturesSampleBuffer = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    v14 = BWSampleBufferGetAttachedMedia(always, @"colorFeaturesOut");
    self->_previousColorFeaturesSampleBuffer = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    goto LABEL_11;
  }

  v7 = [objc_msgSend(-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->super.super._output mediaPropertiesForAttachedMediaKey:{@"Depth", "livePixelBufferPool"), "newPixelBuffer"}];
  if (v7)
  {
    v8 = v7;
    v16 = v17;
    v9 = BWSampleBufferCreateFromPixelBuffer(v7, &v16, &self->_depthFormatDescription, &target);
    CFRelease(v8);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

LABEL_11:
  if (self->_depthInferenceEnabled)
  {
    BWSampleBufferRemoveAttachedMedia(always, @"espressoOutput");
    BWSampleBufferRemoveAttachedMedia(always, @"colorFeaturesIn");
    BWSampleBufferRemoveAttachedMedia(always, @"colorFeaturesOut");
    BWSampleBufferRemoveAttachedMedia(always, @"depthFeaturesIn");
    BWSampleBufferRemoveAttachedMedia(always, @"depthFeaturesOut");
    BWSampleBufferRemoveAttachedMedia(always, @"refIntermediate");
    BWSampleBufferRemoveAttachedMedia(always, @"auxIntermediate");
    BWSampleBufferRemoveAttachedMedia(always, @"currentFeaturesMin");
    BWSampleBufferRemoveAttachedMedia(always, @"previousFeaturesMin");
    BWSampleBufferRemoveAttachedMedia(always, @"SynchronizedSlaveFrame");
    if (target)
    {
      CFRelease(target);
    }
  }

LABEL_14:
  v15 = CMGetAttachment(always, @"FusionTrackerInput", 0);
  if (([objc_msgSend(v15 "highPriorityTrackerState")] & 1) == 0)
  {
    [objc_msgSend(v15 "highPriorityTrackerState")];
  }

  CMSetAttachment(always, @"FTCinematicTrackingResult", [v15 commit], 1u);
}

- (BOOL)intermediateResourceTrackingAllowedForAttachedMediaKey:(id)key
{
  if ([key isEqualToString:@"PrimaryFormat"])
  {
    return 1;
  }

  return [key isEqualToString:@"SynchronizedSlaveFrame"];
}

- (id)inputVideoFormatForAttachedMediaKey:(id)key
{
  if (([key isEqualToString:@"colorFeaturesIn"] & 1) != 0 || objc_msgSend(key, "isEqualToString:", @"colorFeaturesOut"))
  {
    v5 = 312;
    return *(&self->super.super.super.isa + v5);
  }

  if (([key isEqualToString:@"depthFeaturesIn"] & 1) != 0 || objc_msgSend(key, "isEqualToString:", @"depthFeaturesOut"))
  {
    v5 = 304;
    return *(&self->super.super.super.isa + v5);
  }

  if ([key isEqualToString:@"currentFeaturesMin"])
  {
    stereoV2inferenceDescriptor = [(BWVideoDepthInferenceConfiguration *)self->_videoDepthConfiguration stereoV2inferenceDescriptor];
    [objc_msgSend(-[ADEspressoStereoV2InferenceDescriptor temporalSmoothingCurrentFeaturesRatioMinInput](stereoV2inferenceDescriptor "temporalSmoothingCurrentFeaturesRatioMinInput")];
    v9 = v8;
    v11 = v10;
    v12 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v12 setWidth:v9];
    [(BWVideoFormatRequirements *)v12 setHeight:v11];
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(-[ADEspressoStereoV2InferenceDescriptor temporalSmoothingCurrentFeaturesRatioMinInput](stereoV2inferenceDescriptor, "temporalSmoothingCurrentFeaturesRatioMinInput"), "imageDescriptor"), "pixelFormat")}];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v12, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1]);
    [(BWVideoFormatRequirements *)v12 setBytesPerRowAlignment:64];
    v24 = v12;
    v13 = MEMORY[0x1E695DEC8];
    v14 = &v24;
    return +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [v13 arrayWithObjects:v14 count:1]);
  }

  if ([key isEqualToString:@"previousFeaturesMin"])
  {
    stereoV2inferenceDescriptor2 = [(BWVideoDepthInferenceConfiguration *)self->_videoDepthConfiguration stereoV2inferenceDescriptor];
    [objc_msgSend(-[ADEspressoStereoV2InferenceDescriptor temporalSmoothingPreviousFeaturesRatioMinInput](stereoV2inferenceDescriptor2 "temporalSmoothingPreviousFeaturesRatioMinInput")];
    v17 = v16;
    v19 = v18;
    v20 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v20 setWidth:v17];
    [(BWVideoFormatRequirements *)v20 setHeight:v19];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(-[ADEspressoStereoV2InferenceDescriptor temporalSmoothingPreviousFeaturesRatioMinInput](stereoV2inferenceDescriptor2, "temporalSmoothingPreviousFeaturesRatioMinInput"), "imageDescriptor"), "pixelFormat")}];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v20, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1]);
    [(BWVideoFormatRequirements *)v20 setBytesPerRowAlignment:64];
    v22 = v20;
    v13 = MEMORY[0x1E695DEC8];
    v14 = &v22;
    return +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [v13 arrayWithObjects:v14 count:1]);
  }

  v21.receiver = self;
  v21.super_class = BWCinematicPerceptionNode;
  return [(BWInferenceNode *)&v21 inputVideoFormatForAttachedMediaKey:key];
}

- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)key format:(id)format
{
  if (![key isEqualToString:{@"Depth", format}])
  {
    if ([key isEqualToString:@"colorFeaturesOut"])
    {
      v10 = 328;
    }

    else
    {
      if (![key isEqualToString:@"depthFeaturesOut"])
      {
        output = self->super.super._output;
        keyCopy = key;
        goto LABEL_3;
      }

      v10 = 320;
    }

    return *(&self->super.super.super.isa + v10);
  }

  output = self->super.super._output;
  keyCopy = @"Depth";
LABEL_3:
  v8 = [(BWNodeOutput *)output mediaPropertiesForAttachedMediaKey:keyCopy];

  return [v8 preparedPixelBufferPool];
}

- (BWCinematicPerceptionNode)initWithConvEngineSupportWithCaptureDevice:(id)device scheduler:(id)scheduler priority:(unsigned int)priority depthInferenceEnabled:(BOOL)enabled aspectRatio:(int)ratio
{
  v7 = *&ratio;
  enabledCopy = enabled;
  v9 = *&priority;
  v13 = objc_alloc_init(BWInferenceProcessingConfiguration);
  [(BWInferenceProcessingConfiguration *)v13 setScalingStrategy:12];
  v14 = FigCaptureOptimizedBWInferenceScalingPathSupported();
  if (v14)
  {
    [(BWInferenceProcessingConfiguration *)v13 setScalingStrategy:10];
    [(BWInferenceProcessingConfiguration *)v13 setFilterType:2];
  }

  v40.receiver = self;
  v40.super_class = BWCinematicPerceptionNode;
  v15 = [(BWInferenceNode *)&v40 initWithConvEngineSupportWithCaptureDevice:device scheduler:scheduler priority:v9 processingConfiguration:v13];
  v16 = v15;
  if (v15)
  {
    v15->_framesSinceLastDDR = 5;
    [[[BWInferenceConfiguration alloc] initWithInferenceType:150] setPriority:6];
    BWInferenceVersionMakeMajor(1);
    if (![OUTLINED_FUNCTION_38() addInferenceOfType:150 version:? configuration:?])
    {
      [[BWHumanPoseInferenceConfiguration alloc] initWithTargetAspectRatio:v7];
      BWInferenceVersionMakeMajor(1);
      if (![OUTLINED_FUNCTION_38() addInferenceOfType:151 version:? configuration:?])
      {
        v16->_humanPosePreventionSet = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2246E70, 0}];
        v17 = dispatch_semaphore_create(0);
        dispatch_semaphore_signal(v17);
        dispatch_semaphore_signal(v17);
        v16->_backpressureSemaphore = v17;
        v16->_backpressureEvent = [(BWInferenceEngine *)[(BWInferenceNode *)v16 inferenceEngine] newMetalEvent];
        v16->_backpressureEventNumber = 0;
        v16->_videoDepthConfiguration = [[BWVideoDepthInferenceConfiguration alloc] initWithConcurrencyWidth:2 videoDepthLayout:2 * (v7 != 3) captureDevice:device backpressureEvent:v16->_backpressureEvent];
        v16->_depthInferenceEnabled = enabledCopy;
        if (enabledCopy)
        {
          v18 = 2 * [(BWVideoDepthInferenceConfiguration *)v16->_videoDepthConfiguration concurrencyWidth];
          v19 = objc_alloc_init(BWNodeInputMediaConfiguration);
          [(BWNodeInputMediaConfiguration *)v19 setRetainedBufferCount:2];
          [(BWNodeInputMediaConfiguration *)v19 setPassthroughMode:0];
          [(BWNodeInput *)v16->super.super._input setMediaConfiguration:v19 forAttachedMediaKey:@"SynchronizedSlaveFrame"];
          v20 = objc_alloc_init(BWVideoFormatRequirements);
          v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BWVideoDepthInferenceConfiguration outputPixelFormat](v16->_videoDepthConfiguration, "outputPixelFormat")}];
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
          [OUTLINED_FUNCTION_8() setSupportedPixelFormats:?];
          [(BWVideoFormatRequirements *)v20 setWidth:[(BWVideoDepthInferenceConfiguration *)v16->_videoDepthConfiguration outputDimensions]];
          [(BWVideoFormatRequirements *)v20 setHeight:[(BWVideoDepthInferenceConfiguration *)v16->_videoDepthConfiguration outputDimensions]>> 32];
          v21 = objc_alloc_init(BWNodeOutputMediaConfiguration);
          [(BWNodeOutputMediaConfiguration *)v21 setPassthroughMode:0];
          [(BWNodeOutputMediaConfiguration *)v21 setProvidesPixelBufferPool:1];
          [(BWNodeOutputMediaConfiguration *)v21 setOwningNodeRetainedBufferCount:v18];
          [(BWNodeOutputMediaConfiguration *)v21 setFormatRequirements:v20];
          [(BWNodeOutput *)v16->super.super._output setMediaConfiguration:v21 forAttachedMediaKey:@"Depth"];
          featuresDimensions = [(BWVideoDepthInferenceConfiguration *)v16->_videoDepthConfiguration featuresDimensions];
          v23 = objc_alloc_init(BWVideoFormatRequirements);
          v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BWVideoDepthInferenceConfiguration featuresPixelFormat](v16->_videoDepthConfiguration, "featuresPixelFormat")}];
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
          [OUTLINED_FUNCTION_8() setSupportedPixelFormats:?];
          [(BWVideoFormatRequirements *)v23 setWidth:featuresDimensions];
          [(BWVideoFormatRequirements *)v23 setHeight:featuresDimensions >> 32];
          v37 = v23;
          v16->_disparityFeaturesVideoFormat = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1]);
          v24 = v18;
          v16->_disparityFeaturesPool = [[BWPixelBufferPool alloc] initWithVideoFormat:v16->_disparityFeaturesVideoFormat capacity:v18 name:@"FusionTrackerNodeDisparityFeaturesPool" memoryPool:[(BWNodeOutput *)v16->super.super._output memoryPool]];
          [(BWVideoDepthInferenceConfiguration *)v16->_videoDepthConfiguration featuresPixelFormat];
          v16->_initialDisparityFeaturesPixelBuffer = CreatePixelBuffer();
          v16->_previousDisparityFeaturesSampleBuffer = CreateSampleBuffer();
          stereoV2inferenceDescriptor = [(BWVideoDepthInferenceConfiguration *)v16->_videoDepthConfiguration stereoV2inferenceDescriptor];
          [objc_msgSend(-[ADEspressoStereoV2InferenceDescriptor colorFeaturesOutput](stereoV2inferenceDescriptor "colorFeaturesOutput")];
          v27 = v26;
          v29 = v28;
          v30 = [objc_msgSend(-[ADEspressoStereoV2InferenceDescriptor colorFeaturesOutput](stereoV2inferenceDescriptor "colorFeaturesOutput")];
          v31 = objc_alloc_init(BWVideoFormatRequirements);
          v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v30];
          -[BWVideoFormatRequirements setSupportedPixelFormats:](v31, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1]);
          [(BWVideoFormatRequirements *)v31 setWidth:v27];
          [(BWVideoFormatRequirements *)v31 setHeight:v29];
          v35 = v31;
          v16->_colorFeaturesVideoFormat = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1]);
          v16->_colorFeaturesPool = [[BWPixelBufferPool alloc] initWithVideoFormat:v16->_colorFeaturesVideoFormat capacity:v24 name:@"FusionTrackerNodeColorFeaturesPool" memoryPool:[(BWNodeOutput *)v16->super.super._output memoryPool]];
          v16->_initialColorFeaturesPixelBuffer = CreatePixelBuffer();
          v16->_previousColorFeaturesSampleBuffer = CreateSampleBuffer();
          [objc_msgSend(-[ADEspressoStereoV2InferenceDescriptor temporalSmoothingCurrentFeaturesRatioMinInput](stereoV2inferenceDescriptor "temporalSmoothingCurrentFeaturesRatioMinInput")];
          [objc_msgSend(-[ADEspressoStereoV2InferenceDescriptor temporalSmoothingCurrentFeaturesRatioMinInput](stereoV2inferenceDescriptor "temporalSmoothingCurrentFeaturesRatioMinInput")];
          [objc_msgSend(-[ADEspressoStereoV2InferenceDescriptor temporalSmoothingPreviousFeaturesRatioMinInput](stereoV2inferenceDescriptor "temporalSmoothingPreviousFeaturesRatioMinInput")];
          [objc_msgSend(-[ADEspressoStereoV2InferenceDescriptor temporalSmoothingPreviousFeaturesRatioMinInput](stereoV2inferenceDescriptor "temporalSmoothingPreviousFeaturesRatioMinInput")];
          v16->_currentFeaturesMinPixelBuffer = CreatePixelBuffer();
          v16->_previousFeaturesMinPixelBuffer = CreatePixelBuffer();
          v16->_currentFeaturesMinSampleBuffer = CreateSampleBuffer();
          v16->_previousFeaturesMinSampleBuffer = CreateSampleBuffer();
          CVPixelBufferLockBaseAddress(v16->_currentFeaturesMinPixelBuffer, 0);
          *CVPixelBufferGetBaseAddress(v16->_currentFeaturesMinPixelBuffer) = 13517;
          CVPixelBufferUnlockBaseAddress(v16->_currentFeaturesMinPixelBuffer, 0);
          CVPixelBufferLockBaseAddress(v16->_previousFeaturesMinPixelBuffer, 0);
          *CVPixelBufferGetBaseAddress(v16->_previousFeaturesMinPixelBuffer) = 0;
          CVPixelBufferUnlockBaseAddress(v16->_previousFeaturesMinPixelBuffer, 0);
          BWInferenceVersionMakeMajor(1);
          [OUTLINED_FUNCTION_38() addInferenceOfType:111 version:? configuration:?];
        }

        else
        {
          v32 = [(BWInferenceConfiguration *)[BWOpticalFlowInferenceConfiguration alloc] initWithInferenceType:117];
          [(BWVideoDepthInferenceConfiguration *)v16->_videoDepthConfiguration inputDimensions];
          [OUTLINED_FUNCTION_8() setInputDimensions:?];
          [(BWVideoDepthInferenceConfiguration *)v16->_videoDepthConfiguration outputDimensions];
          [OUTLINED_FUNCTION_8() setOutputDimensions:?];
          [(BWOpticalFlowInferenceConfiguration *)v32 setConcurrencyWidth:2];
          [(BWOpticalFlowInferenceConfiguration *)v32 setAttachedMediaKeyForPropagatedColorInput:0x1F219EC10];
          [(BWVideoDepthInferenceConfiguration *)v16->_videoDepthConfiguration portType];
          [OUTLINED_FUNCTION_8() setPortType:?];
          BWInferenceVersionMakeMajor(1);
          if ([OUTLINED_FUNCTION_38() addInferenceOfType:117 version:? configuration:?])
          {
            v33 = 1;
          }

          else
          {
            v33 = v14;
          }

          if ((v33 & 1) == 0)
          {
            [(BWOpticalFlowInferenceConfiguration *)v32 setForceIntermediateDimensions:0x17000000290];
          }
        }
      }
    }
  }

  return v16;
}

- (BOOL)_attachISPDetectionsFromSampleBuffer:(void *)buffer toTrackingInput:(uint64_t)input withFrameTimestamp:
{
  inputCopy = input;
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [CMGetAttachment(a2 *off_1E798A3C8];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = v7;
  v65 = [v7 countByEnumeratingWithState:&v99 objects:v98 count:16];
  if (!v65)
  {
    goto LABEL_45;
  }

  v52 = selfCopy;
  bufferCopy = buffer;
  HIDWORD(v73) = 0;
  v63 = *off_1E798ACE8;
  v64 = *v100;
  v61 = *off_1E798ACD0;
  v62 = *off_1E798ACB8;
  v59 = *off_1E798ACC0;
  v60 = *off_1E798ACB0;
  v57 = *off_1E798AC98;
  v58 = *off_1E798AC90;
  v55 = *off_1E798ACA8;
  v56 = *off_1E798ACA0;
  v54 = *off_1E798ACE0;
  v8 = *off_1E798B5C0;
  v9 = *off_1E798B1F0;
  v10 = *off_1E798AC78;
  v11 = *off_1E798B2B8;
  v68 = *off_1E798AC80;
  v12 = MEMORY[0x1E695F050];
  v69 = *off_1E798B2B8;
  do
  {
    v13 = 0;
    do
    {
      if (*v100 != v64)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v99 + 1) + 8 * v13);
      v15 = [objc_msgSend(obj objectForKeyedSubscript:{v14, v52), "objectForKeyedSubscript:", v63}];
      v16 = [v14 isEqualToString:v62];
      v67 = v13;
      if (v16)
      {
        v24 = 1002;
      }

      else
      {
        v16 = [v14 isEqualToString:v61];
        if (v16)
        {
          v24 = 1001;
        }

        else
        {
          v16 = [v14 isEqualToString:v60];
          if (v16)
          {
            v24 = 1000;
          }

          else
          {
            v16 = [v14 isEqualToString:v59];
            if (v16)
            {
              v24 = 1003;
            }

            else
            {
              v16 = [v14 isEqualToString:v58];
              if (v16)
              {
                v24 = 2000;
              }

              else
              {
                v16 = [v14 isEqualToString:v57];
                if (v16)
                {
                  v24 = 2001;
                }

                else
                {
                  v16 = [v14 isEqualToString:v56];
                  if (v16)
                  {
                    v24 = 3000;
                  }

                  else
                  {
                    v16 = [v14 isEqualToString:v55];
                    if (v16)
                    {
                      v24 = 3001;
                    }

                    else
                    {
                      v16 = [v14 isEqualToString:v54];
                      if ((v16 & 1) == 0)
                      {
                        [v15 count];
                        goto LABEL_39;
                      }

                      v24 = 42001;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v25 = OUTLINED_FUNCTION_3_106(v16, v17, v18, v19, v20, v21, v22, v23, v52, bufferCopy, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, obj, v13, v68, v69, inputCopy, v71, v24, v73, v74, *(&v74 + 1), v75, v76, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, 0);
      if (v25)
      {
        v26 = v25;
        v27 = *v95;
        do
        {
          v28 = 0;
          do
          {
            if (*v95 != v27)
            {
              objc_enumerationMutation(v15);
            }

            v29 = *(*(&v94 + 1) + 8 * v28);
            v30 = [v29 objectForKeyedSubscript:v8];
            v38 = *(v12 + 16);
            rect.origin = *v12;
            rect.size = v38;
            if (v30)
            {
              CGRectMakeWithDictionaryRepresentation(v30, &rect);
              [objc_msgSend(v29 objectForKeyedSubscript:{v9), "floatValue"}];
              v40 = v39;
              v30 = [v29 objectForKeyedSubscript:v10];
              if (v30 || (v30 = [v29 objectForKeyedSubscript:v11]) != 0)
              {
                v41 = v40 / 1000.0;
                unsignedIntegerValue = [(__CFDictionary *)v30 unsignedIntegerValue];
                v43 = [objc_msgSend(v29 objectForKeyedSubscript:{v68), "intValue"}];
                v44 = HIDWORD(v73);
                if (v43 > SHIDWORD(v73))
                {
                  v44 = v43;
                }

                HIDWORD(v73) = v44;
                v45 = [BWFusionTrackerObservable alloc];
                v74 = *inputCopy;
                v75 = *(inputCopy + 16);
                v46 = [(BWFusionTrackerObservable *)v45 initWithKind:v72 box:&v74 confidence:unsignedIntegerValue timestamp:v29 identifier:rect.origin.x metadata:rect.origin.y, rect.size.width, rect.size.height, v41];
                [v71 addObject:v46];

                v11 = v69;
              }
            }

            ++v28;
          }

          while (v26 != v28);
          v47 = OUTLINED_FUNCTION_3_106(v30, v31, v32, v33, v34, v35, v36, v37, v52, bufferCopy, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, obj, v67, v68, v69, inputCopy, v71, v72, v73, v74, *(&v74 + 1), v75, v76, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
          v26 = v47;
        }

        while (v47);
      }

LABEL_39:
      v13 = v67 + 1;
    }

    while (v67 + 1 != v65);
    v48 = [obj countByEnumeratingWithState:&v99 objects:v98 count:16];
    v65 = v48;
  }

  while (v48);
  selfCopy = v52;
  buffer = bufferCopy;
  if (SHIDWORD(v73) >= 1)
  {
    [bufferCopy setDetectorDidRun:1];
    v49 = 0;
    *(v52 + 240) = 0;
    goto LABEL_47;
  }

LABEL_45:
  v49 = *(selfCopy + 240);
  if (v49 >= 5)
  {
    [buffer setDetectorDidRun:1];
    v49 = *(selfCopy + 240) % 5uLL;
    *(selfCopy + 240) = v49;
  }

LABEL_47:
  v50 = v49 == 4;
  [buffer setObservations:v71];

  return v50;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v7 = [objc_alloc(getFTCinematicInputClass()) init];
  v30 = **&MEMORY[0x1E6960CC0];
  v8 = CMGetAttachment(buffer, *off_1E798A420, 0);
  if (v8)
  {
    CMTimeMakeFromDictionary(&v30, v8);
  }

  else
  {
    CMSampleBufferGetPresentationTimeStamp(&v30, buffer);
  }

  v9 = CMGetAttachment(buffer, @"CinematicVideoFocusRequest", 0);
  if (v9)
  {
    v10 = v9;
    if ((BWIsFocusRequestForFixedPlaneFocus(v9) & 1) == 0)
    {
      v11 = BWCreateFTCinematicTapRequestFromFocusRequest(v10);
      [v7 setTapRequest:v11];
    }
  }

  [v7 setSourceFrameTimestamp:{v29, OUTLINED_FUNCTION_2_119().n128_f64[0]}];
  OUTLINED_FUNCTION_2_119();
  v12 = [(BWCinematicPerceptionNode *)self _attachISPDetectionsFromSampleBuffer:buffer toTrackingInput:v7 withFrameTimestamp:v29];
  CMSetAttachment(buffer, @"FusionTrackerInput", [(FTCinematicTracker *)self->_cinematicTracker computeTrackingStateForInput:v7], 1u);
  [MEMORY[0x1E696AD98] numberWithBool:v12];
  v13 = OUTLINED_FUNCTION_8();
  CMSetAttachment(v13, @"FTDetectorWillRun", v14, 1u);

  if (v12)
  {
    v28.receiver = self;
    v28.super_class = BWCinematicPerceptionNode;
    -[BWInferenceNode setInferencesToSkip:](&v28, sel_setInferencesToSkip_, [MEMORY[0x1E695DFD8] set]);
  }

  else
  {
    humanPosePreventionSet = self->_humanPosePreventionSet;
    v27.receiver = self;
    v27.super_class = BWCinematicPerceptionNode;
    [(BWInferenceNode *)&v27 setInferencesToSkip:humanPosePreventionSet];
  }

  v16 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(self->_backpressureSemaphore, v16);
  metalCommandBuffer = [(BWInferenceEngine *)[(BWInferenceNode *)self inferenceEngine] metalCommandBuffer];
  v18 = metalCommandBuffer;
  if (self->_depthInferenceEnabled)
  {
    if (!self->_previousColorFeaturesSampleBuffer)
    {
      self->_previousColorFeaturesSampleBuffer = CreateSampleBuffer();
    }

    previousDisparityFeaturesSampleBuffer = self->_previousDisparityFeaturesSampleBuffer;
    if (!previousDisparityFeaturesSampleBuffer)
    {
      previousDisparityFeaturesSampleBuffer = CreateSampleBuffer();
      self->_previousDisparityFeaturesSampleBuffer = previousDisparityFeaturesSampleBuffer;
    }

    BWSampleBufferSetAttachedMedia(buffer, @"depthFeaturesIn", previousDisparityFeaturesSampleBuffer);
    BWSampleBufferSetAttachedMedia(buffer, @"colorFeaturesIn", self->_previousColorFeaturesSampleBuffer);
    BWSampleBufferSetAttachedMedia(buffer, @"currentFeaturesMin", self->_currentFeaturesMinSampleBuffer);
    BWSampleBufferSetAttachedMedia(buffer, @"previousFeaturesMin", self->_previousFeaturesMinSampleBuffer);
    previousColorFeaturesSampleBuffer = self->_previousColorFeaturesSampleBuffer;
    if (previousColorFeaturesSampleBuffer)
    {
      CFRelease(previousColorFeaturesSampleBuffer);
      self->_previousColorFeaturesSampleBuffer = 0;
    }

    v21 = self->_previousDisparityFeaturesSampleBuffer;
    if (v21)
    {
      CFRelease(v21);
      self->_previousDisparityFeaturesSampleBuffer = 0;
    }
  }

  else
  {
    [metalCommandBuffer encodeWaitForEvent:self->_backpressureEvent value:self->_backpressureEventNumber];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __57__BWCinematicPerceptionNode_renderSampleBuffer_forInput___block_invoke;
    v26[3] = &unk_1E799D480;
    v26[4] = self;
    [v18 addCompletedHandler:v26];
    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_backpressureEventNumber];
    v22 = OUTLINED_FUNCTION_8();
    CMSetAttachment(v22, @"CinematicInferencesBackpressureEventNumber", v23, 1u);
    ++self->_backpressureEventNumber;
  }

  v25.receiver = self;
  v25.super_class = BWCinematicPerceptionNode;
  [(BWInferenceNode *)&v25 renderSampleBuffer:buffer forInput:input];
  if (self->_depthInferenceEnabled)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __57__BWCinematicPerceptionNode_renderSampleBuffer_forInput___block_invoke_2;
    v24[3] = &unk_1E799D480;
    v24[4] = self;
    [v18 addCompletedHandler:v24];
  }

  [v18 commit];
  ++self->_framesSinceLastDDR;
}

@end