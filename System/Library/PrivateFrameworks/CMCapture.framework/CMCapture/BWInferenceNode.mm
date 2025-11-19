@interface BWInferenceNode
+ (void)initialize;
- (BWInferenceNode)initWithConvEngineSupportWithCaptureDevice:(id)a3 scheduler:(id)a4 priority:(unsigned int)a5;
- (BWInferenceNode)initWithConvEngineSupportWithCaptureDevice:(id)a3 scheduler:(id)a4 priority:(unsigned int)a5 processingConfiguration:(id)a6;
- (BWInferenceNode)initWithScheduler:(id)a3 priority:(unsigned int)a4;
- (BWInferenceNode)initWithScheduler:(id)a3 priority:(unsigned int)a4 processingConfiguration:(id)a5 name:(id)a6;
- (CMSampleBufferRef)createOutputSampleBufferFromInput:(CMSampleBufferRef)result;
- (NSString)description;
- (id)inputInferenceVideoFormatForAttachedMediaKey:(id)a3;
- (id)inputVideoFormatForAttachedMediaKey:(id)a3;
- (id)outputFormatForAttachedMediaKey:(id)a3;
- (id)outputVideoFormatForAttachedMediaKey:(id)a3;
- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)a3 format:(id)a4;
- (int)addInferenceOfType:(int)a3 version:(id)a4;
- (int)addInferenceOfType:(int)a3 version:(id)a4 configuration:(id)a5;
- (void)_commonInit;
- (void)_releaseResources;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setInferencesToSkip:(id)a3;
@end

@implementation BWInferenceNode

- (void)_commonInit
{
  if (result)
  {
    v1 = result;
    [result setSupportsLiveReconfiguration:1];
    *(v1 + 20) = objc_alloc_init(MEMORY[0x1E695DFD8]);
    *(v1 + 42) = 0;
    atomic_store(0, v1 + 172);
    *(v1 + 53) = 0;
    v2 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v1];
    v3 = [(BWNodeInput *)v2 primaryMediaConfiguration];
    v4 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInputMediaConfiguration *)v3 setFormatRequirements:v4];
    [(BWNodeInputMediaConfiguration *)v3 setPassthroughMode:1];
    v5 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v5 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInputMediaConfiguration *)v5 setPassthroughMode:1];
    [(BWNodeInput *)v2 setUnspecifiedAttachedMediaConfiguration:v5];
    v6 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v1];
    v7 = [(BWNodeOutput *)v6 primaryMediaConfiguration];
    [(BWNodeOutputMediaConfiguration *)v7 setFormatRequirements:v4];
    [(BWNodeOutputMediaConfiguration *)v7 setPassthroughMode:1];
    [v1 addInput:v2];
    result = [v1 addOutput:v6];
    *(v1 + 200) = 1;
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWInferenceNode)initWithConvEngineSupportWithCaptureDevice:(id)a3 scheduler:(id)a4 priority:(unsigned int)a5
{
  v5 = *&a5;
  v10.receiver = self;
  v10.super_class = BWInferenceNode;
  v8 = [(BWNode *)&v10 init];
  if (v8)
  {
    v8->_captureDevice = a3;
    v8->_inferenceEngine = [[BWInferenceEngine alloc] initWithScheduler:a4 priority:v5];
    [(BWInferenceNode *)v8 _commonInit];
  }

  return v8;
}

- (BWInferenceNode)initWithConvEngineSupportWithCaptureDevice:(id)a3 scheduler:(id)a4 priority:(unsigned int)a5 processingConfiguration:(id)a6
{
  v7 = *&a5;
  v12.receiver = self;
  v12.super_class = BWInferenceNode;
  v10 = [(BWNode *)&v12 init];
  if (v10)
  {
    v10->_captureDevice = a3;
    v10->_inferenceEngine = [[BWInferenceEngine alloc] initWithScheduler:a4 priority:v7 processingConfiguration:a6 name:0];
    [(BWInferenceNode *)v10 _commonInit];
  }

  return v10;
}

- (BWInferenceNode)initWithScheduler:(id)a3 priority:(unsigned int)a4
{
  v8.receiver = self;
  v8.super_class = BWInferenceNode;
  v6 = [(BWNode *)&v8 init];
  if (v6)
  {
    [(BWInferenceNode *)a3 initWithScheduler:v6 priority:a4];
  }

  return v6;
}

- (BWInferenceNode)initWithScheduler:(id)a3 priority:(unsigned int)a4 processingConfiguration:(id)a5 name:(id)a6
{
  v12.receiver = self;
  v12.super_class = BWInferenceNode;
  v10 = [(BWNode *)&v12 init];
  if (v10)
  {
    v10->_inferenceScheduler = a3;
    v10->_priority = a4;
    [(BWNode *)v10 setName:a6];
    v10->_inferenceEngine = [[BWInferenceEngine alloc] initWithScheduler:v10->_inferenceScheduler priority:v10->_priority processingConfiguration:a5 name:a6];
    [(BWInferenceNode *)v10 _commonInit];
  }

  return v10;
}

- (void)dealloc
{
  [(BWInferenceNode *)&self->super.super.isa _releaseResources];

  v3.receiver = self;
  v3.super_class = BWInferenceNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  if ((self->_endOfDataBehavior | 2) == 2)
  {
    if (a3)
    {
      v7 = [objc_msgSend(a4 "videoFormat")];
      v8 = [objc_msgSend(a4 "videoFormat")];
      if (self->_endOfDataBehavior == 2 && v7 != v8)
      {
        if (dword_1EB58E3C0)
        {
          v15 = 0;
          v14 = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [(BWInferenceEngine *)self->_inferenceEngine reconfigure:v11];
        self->_inferenceEnginePrepared = 0;
      }
    }

    else
    {
      [(BWInferenceNode *)&self->super.super.isa _releaseResources];
    }
  }

  v13.receiver = self;
  v13.super_class = BWInferenceNode;
  [(BWNode *)&v13 didReachEndOfDataForConfigurationID:a3 input:a4];
}

- (void)setInferencesToSkip:(id)a3
{
  os_unfair_lock_lock(&self->_inferenceTypesToSkipLock);
  inferenceTypesToSkip = self->_inferenceTypesToSkip;
  if (inferenceTypesToSkip != a3)
  {

    self->_inferenceTypesToSkip = [a3 copy];
  }

  os_unfair_lock_unlock(&self->_inferenceTypesToSkipLock);
}

- (NSString)description
{
  v3 = [(BWNode *)self name];
  if (v3 && [(NSString *)v3 length])
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", -[BWNode name](self, "name"), self];
  }

  v5.receiver = self;
  v5.super_class = BWInferenceNode;
  return [(BWNode *)&v5 description];
}

- (int)addInferenceOfType:(int)a3 version:(id)a4
{
  v4 = *&a4.var0;
  v5 = *&a3;
  v7 = [[BWInferenceConfiguration alloc] initWithInferenceType:0];

  return [(BWInferenceNode *)self addInferenceOfType:v5 version:v4 & 0xFFFFFFFFFFFFLL configuration:v7];
}

- (int)addInferenceOfType:(int)a3 version:(id)a4 configuration:(id)a5
{
  result = [(BWInferenceEngine *)self->_inferenceEngine addInferenceOfType:*&a3 version:*&a4.var0 & 0xFFFFFFFFFFFFLL configuration:a5];
  if (result)
  {
    return -12780;
  }

  return result;
}

- (id)inputVideoFormatForAttachedMediaKey:(id)a3
{
  v5 = [-[BWNodeInput mediaPropertiesForAttachedMediaKey:](self->super._input "mediaPropertiesForAttachedMediaKey:"resolvedVideoFormat"")];
  if ([a3 isEqualToString:@"PrimaryFormat"])
  {
    p_maxInputDimensions = &self->_maxInputDimensions;
    v7 = [v5 dimensions];
    if (self->_maxInputDimensions.width > v7 || self->_maxInputDimensions.height > SHIDWORD(v7))
    {
      v9 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [v5 pixelBufferAttributes]);
      v10 = [(BWVideoFormatRequirements *)v9 width];
      if (v10 <= p_maxInputDimensions->width)
      {
        width = p_maxInputDimensions->width;
      }

      else
      {
        width = v10;
      }

      [(BWVideoFormatRequirements *)v9 setWidth:width];
      v12 = [(BWVideoFormatRequirements *)v9 height];
      if (v12 <= self->_maxInputDimensions.height)
      {
        height = self->_maxInputDimensions.height;
      }

      else
      {
        height = v12;
      }

      [(BWVideoFormatRequirements *)v9 setHeight:height];
      v15 = v9;
      return +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1]);
    }
  }

  return v5;
}

- (id)inputInferenceVideoFormatForAttachedMediaKey:(id)a3
{
  if (!self->_ignoreInvalidContentInformationForPrimaryMedia)
  {
    return 0;
  }

  v9[3] = v3;
  v9[4] = v4;
  if (![a3 isEqualToString:@"PrimaryFormat"])
  {
    return 0;
  }

  result = [(BWInferenceNode *)self inputVideoFormatForAttachedMediaKey:a3];
  if (result)
  {
    v8 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWInferenceVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [result pixelBufferAttributes]);
    [(BWInferenceVideoFormatRequirements *)v8 setIncludesInvalidContent:0];
    v9[0] = v8;
    return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1]);
  }

  return result;
}

- (id)outputFormatForAttachedMediaKey:(id)a3
{
  v3 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:a3];

  return [v3 resolvedFormat];
}

- (id)outputVideoFormatForAttachedMediaKey:(id)a3
{
  v3 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:a3];

  return [v3 resolvedVideoFormat];
}

- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)a3 format:(id)a4
{
  v4 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:a3, a4];

  return [v4 preparedPixelBufferPool];
}

- (void)_releaseResources
{
  if (a1)
  {
    if (dword_1EB58E3C0)
    {
      v25 = 0;
      v24 = OS_LOG_TYPE_DEFAULT;
      v1 = OUTLINED_FUNCTION_2_122();
      os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_0_117();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v2 = [a1[18] preparedWorkloadDescription];
    v3 = [v2 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "newlineCharacterSet")}];
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

          if (dword_1EB58E3C0)
          {
            v8 = *(*(&v20 + 1) + 8 * i);
            v25 = 0;
            v24 = OS_LOG_TYPE_DEFAULT;
            v9 = OUTLINED_FUNCTION_2_122();
            v10 = v25;
            if (os_log_type_enabled(v9, v24))
            {
              v11 = v10;
            }

            else
            {
              v11 = v10 & 0xFFFFFFFE;
            }

            if (v11)
            {
              [a1 name];
              v16 = 136315650;
              OUTLINED_FUNCTION_1_130();
              v17 = v12;
              v18 = v8;
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_0_117();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v5);
    }

    a1[16] = 0;
    a1[18] = 0;

    a1[22] = 0;
    a1[24] = 0;
  }
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  v6 = self;
  v44 = [(BWNode *)self output];
  if ([a4 mediaType] == 1986618469 && -[BWNodeOutput mediaType](v44, "mediaType") == 1986618469)
  {
    v7 = a3;
    if ([a5 isEqualToString:@"PrimaryFormat"])
    {
      p_maxInputDimensions = &v6->_maxInputDimensions;
      v9 = v6->_maxInputDimensions.width < 1 || v6->_maxInputDimensions.height < 1;
      v7 = a3;
      if (!v9)
      {
        v10 = [a3 dimensions];
        v11 = p_maxInputDimensions->width <= v10 && v6->_maxInputDimensions.height <= SHIDWORD(v10);
        v7 = a3;
        if (!v11)
        {
          v12 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [a3 pixelBufferAttributes]);
          v13 = [(BWVideoFormatRequirements *)v12 width];
          if (v13 <= p_maxInputDimensions->width)
          {
            width = p_maxInputDimensions->width;
          }

          else
          {
            width = v13;
          }

          [(BWVideoFormatRequirements *)v12 setWidth:width];
          v15 = [(BWVideoFormatRequirements *)v12 height];
          if (v15 <= v6->_maxInputDimensions.height)
          {
            height = v6->_maxInputDimensions.height;
          }

          else
          {
            height = v15;
          }

          [(BWVideoFormatRequirements *)v12 setHeight:height];
          v50 = v12;
          v7 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1]);
        }
      }
    }

    inferenceEnginePrepared = v6->_inferenceEnginePrepared;
    v18 = [objc_msgSend(a4 "videoFormat")];
    v19 = [objc_msgSend(a4 "videoFormat")];
    if (!inferenceEnginePrepared || (v6->_endOfDataBehavior == 2 ? (v20 = v18 == v19) : (v20 = 1), v20))
    {
      v21 = 0;
    }

    else
    {
      if ([a5 isEqualToString:@"PrimaryFormat"])
      {
        [(BWInferenceEngine *)v6->_inferenceEngine prepareForReconfigurationWithInputFormat:v7];
      }

      v21 = 1;
    }

    [(BWInferenceEngine *)v6->_inferenceEngine prepareForInputVideoFormat:v7 attachedMediaKey:a5];
    v23 = [(BWInferenceEngine *)v6->_inferenceEngine providedVideoRequirementsByAttachedMediaKey];
    if (v23)
    {
      v24 = v23;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v25 = [(NSDictionary *)v23 countByEnumeratingWithState:&v46 objects:v45 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v47;
        do
        {
          v28 = 0;
          v29 = v44;
          do
          {
            if (*v47 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v30 = *(*(&v46 + 1) + 8 * v28);
            if ((([(BWNodeOutput *)v29 mediaConfigurationForAttachedMediaKey:v30]!= 0) & ~v21) == 0)
            {
              v31 = [(NSDictionary *)v24 objectForKeyedSubscript:v30];
              if (!v31)
              {
                goto LABEL_43;
              }

              v32 = [v31 videoFormat];
              if (!v32)
              {
                goto LABEL_43;
              }

              v33 = v32;
              v34 = objc_alloc_init(BWNodeOutputMediaConfiguration);
              v35 = v6;
              v36 = [BWVideoFormatRequirements alloc];
              v37 = [v33 pixelBufferAttributes];
              v38 = v36;
              v6 = v35;
              [(BWNodeOutputMediaConfiguration *)v34 setFormatRequirements:[(BWVideoFormatRequirements *)v38 initWithPixelBufferAttributes:v37]];
              [(BWNodeOutputMediaConfiguration *)v34 setPassthroughMode:0];
              [(BWNodeOutputMediaConfiguration *)v34 setProvidesPixelBufferPool:1];
              [(BWNodeOutputMediaConfiguration *)v34 setPixelBufferPoolProvidesBackPressure:v35->_backPressureDrivenPipelining];
              [(BWNodeOutputMediaConfiguration *)v34 setPixelBufferPoolReportSlowBackPressureAllocations:v35->_backPressureDrivenPipelining];
              if (v35->_additionalOutputPoolRetainedBufferCount)
              {
                [(BWNodeOutputMediaConfiguration *)v34 setOwningNodeRetainedBufferCount:?];
              }

              v29 = v44;
              [(BWNodeOutput *)v44 setMediaConfiguration:v34 forAttachedMediaKey:v30];
              [-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](v44 mediaPropertiesForAttachedMediaKey:{v30), "setResolvedFormat:", 0}];
            }

            ++v28;
          }

          while (v26 != v28);
          v26 = [(NSDictionary *)v24 countByEnumeratingWithState:&v46 objects:v45 count:16];
        }

        while (v26);
      }
    }
  }

LABEL_43:
  if ([(BWNodeOutput *)v44 _passthroughModeForAttachedMediaKey:a5])
  {
    v39 = [(BWNodeOutput *)v44 mediaConfigurationForAttachedMediaKey:a5];
    v40 = [(BWNodeOutput *)v44 primaryMediaConfiguration];
    if (!v39 || v39 == v40)
    {
      v41 = [(BWNodeOutput *)v44 mediaPropertiesForAttachedMediaKey:a5];
      if (!v41)
      {
        v41 = objc_alloc_init(BWNodeOutputMediaProperties);
        [(BWNodeOutput *)v44 _setMediaProperties:v41 forAttachedMediaKey:a5];
      }

      [(BWNodeOutputMediaProperties *)v41 setResolvedFormat:a3];
    }
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v4.receiver = self;
  v4.super_class = BWInferenceNode;
  [(BWNode *)&v4 prepareForCurrentConfigurationToBecomeLive];
  if ([(BWInferenceEngine *)self->_inferenceEngine isConfiguredForInference]&& !self->_inferenceEnginePrepared)
  {
    [(BWInferenceEngine *)self->_inferenceEngine setBackPressureDrivenPipelining:self->_backPressureDrivenPipelining];
    if ([(BWInferenceEngine *)self->_inferenceEngine prepareForInferenceWithFormatProvider:self pixelBufferPoolProvider:self])
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      self->_inferenceEngine = 0;
    }

    else
    {
      if (![(BWFigVideoCaptureDevice *)self->_captureDevice attachesUprightExifOrientationMetadataToStreamingFrames])
      {
        [(BWFigVideoCaptureDevice *)self->_captureDevice setAttachesUprightExifOrientationMetadataToStreamingFrames:[(BWInferenceEngine *)self->_inferenceEngine requiresDeviceOrientationMetadata]];
      }

      self->_inferenceEnginePrepared = 1;
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v6 = CMGetAttachment(a3, *off_1E798A340, 0);
  v7 = v6;
  if (v6)
  {
    dispatch_group_enter(v6);
  }

  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  if (self->_inferenceEngine)
  {
    v9 = atomic_load(&self->_tearDown);
    if (v9)
    {
      [(BWInferenceNode *)&self->super.super.isa _releaseResources];
    }

    if (self->_inferenceEngine)
    {
      if (BWSampleBufferIsMarkerBuffer(a3))
      {
        v10 = CMGetAttachment(a3, @"FileWriterAction", 0);
        v11 = CMGetAttachment(a3, @"RecordingSettings", 0);
        if (v11)
        {
          if (v10)
          {
            v12 = v11;
            if (CFEqual(v10, @"Start"))
            {
              if ([v12 personSegmentationRenderingEnabled])
              {
                v13 = 0;
              }

              else
              {
                v13 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2246F30, &unk_1F2246F48, 0}];
              }

              [(BWInferenceNode *)self setInferencesToSkip:v13];
            }
          }
        }

        goto LABEL_18;
      }

      if (self->_applyRecommendedMasterPortType)
      {
        AttachedMedia = BWSampleBufferGetAttachedMedia(a3, @"SynchronizedSlaveFrame");
        if (AttachedMedia)
        {
          v15 = AttachedMedia;
          v16 = [CMGetAttachment(AttachedMedia *off_1E798A3C8];
          v17 = CMGetAttachment(a3, @"RecommendedMasterPortType", 0);
          if (v17)
          {
            recommendedMasterPortType = v17;
          }

          else
          {
            v18 = CMGetAttachment(v15, @"RecommendedMasterPortType", 0);
            if (v18)
            {
              recommendedMasterPortType = v18;
            }

            else
            {
              recommendedMasterPortType = self->_recommendedMasterPortType;
            }
          }

          v20 = self->_recommendedMasterPortType;
          if (recommendedMasterPortType != v20)
          {

            v20 = recommendedMasterPortType;
            self->_recommendedMasterPortType = v20;
          }

          if ([(NSString *)v20 isEqualToString:v16])
          {
            goto LABEL_35;
          }

          BWSampleBufferRemoveAllAttachedMedia(a3);
        }
      }

      v15 = a3;
LABEL_35:
      if (v8)
      {
        CFRelease(v8);
      }

      v8 = [(BWInferenceNode *)self createOutputSampleBufferFromInput:v15];
      inferenceEngine = self->_inferenceEngine;
      if (inferenceEngine && [(BWInferenceEngine *)inferenceEngine isConfiguredForInference])
      {
        v22 = [MEMORY[0x1E695DFD8] set];
        inferenceTypesToSkipResolver = self->_inferenceTypesToSkipResolver;
        if (inferenceTypesToSkipResolver)
        {
          v22 = [v22 setByAddingObjectsFromSet:{inferenceTypesToSkipResolver[2](inferenceTypesToSkipResolver, v15)}];
        }

        os_unfair_lock_lock(&self->_inferenceTypesToSkipLock);
        v24 = [v22 setByAddingObjectsFromSet:self->_inferenceTypesToSkip];
        os_unfair_lock_unlock(&self->_inferenceTypesToSkipLock);
        [v24 count];
        if (![(BWInferenceEngine *)self->_inferenceEngine performInferencesOnSampleBuffer:v15 attachingResultsToSampleBuffer:v8 skippingInferencesWithTypes:v24])
        {
          if (self->_awaitAsynchronousOutputs)
          {
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v25 = [(BWInferenceEngine *)self->_inferenceEngine providedVideoRequirementsByAttachedMediaKey];
            v26 = [(NSDictionary *)v25 countByEnumeratingWithState:&v36 objects:v35 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v37;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v37 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = BWSampleBufferGetAttachedMedia(v8, *(*(&v36 + 1) + 8 * i));
                  ImageBuffer = CMSampleBufferGetImageBuffer(v30);
                  if (ImageBuffer)
                  {
                    IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
                    if (IOSurface)
                    {
                      v33 = IOSurface;
                      IOSurfaceLock(IOSurface, 5u, 0);
                      IOSurfaceUnlock(v33, 5u, 0);
                    }
                  }
                }

                v27 = [(NSDictionary *)v25 countByEnumeratingWithState:&v36 objects:v35 count:16];
              }

              while (v27);
            }
          }

          postprocessFilter = self->_postprocessFilter;
          if (postprocessFilter && (postprocessFilter[2](postprocessFilter, v15, v8) & 1) == 0)
          {
            if (v8)
            {
              CFRelease(v8);
              v8 = 0;
            }
          }

          else
          {
            [(BWInferenceNode *)self willEmitSampleBuffer:v8];
          }
        }
      }
    }
  }

LABEL_18:
  [(BWInferenceNode *)self willEmitSampleBufferAlways:v8];
  if (v7)
  {
    dispatch_group_leave(v7);
  }

  if (v8)
  {
    [(BWNodeOutput *)[(BWNode *)self output] emitSampleBuffer:v8];
    CFRelease(v8);
  }
}

- (CMSampleBufferRef)createOutputSampleBufferFromInput:(CMSampleBufferRef)result
{
  if (result)
  {
    v3 = 0;
    if (*(result + 200) == 1)
    {
      if (sbuf)
      {
        return CFRetain(sbuf);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      memset(&sampleTimingArray.presentationTimeStamp, 0, 48);
      *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
      sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
      CMSampleBufferGetPresentationTimeStamp(&sampleTimingArray.presentationTimeStamp, sbuf);
      sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
      CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v3);
      return v3;
    }
  }

  return result;
}

- (void)initWithScheduler:(int)a3 priority:.cold.1(void *a1, uint64_t a2, int a3)
{
  *(a2 + 128) = a1;
  *(a2 + 136) = a3;
  *(a2 + 144) = [[BWInferenceEngine alloc] initWithScheduler:*(a2 + 128) priority:*(a2 + 136)];
  return [(BWInferenceNode *)a2 _commonInit];
}

@end