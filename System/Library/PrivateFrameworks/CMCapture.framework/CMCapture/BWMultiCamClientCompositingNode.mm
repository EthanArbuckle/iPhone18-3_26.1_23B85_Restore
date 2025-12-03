@interface BWMultiCamClientCompositingNode
- (BOOL)_attemptMovieFileBufferPairing;
- (BWMultiCamClientCompositingNode)initWithIndexOfInputProvidingOutputSampleBuffer:(unsigned int)buffer compositingStrategy:(signed __int16)strategy gainMapSupported:(BOOL)supported clientCompositingCallback:(id)callback;
- (CMSampleBufferRef)_copyCompositionPictureInPictureRectMetadataSampleBuffer:(CMSampleBufferRef)result pts:(CMTime *)pts;
- (CMSampleBufferRef)_newSampleBufferWithOriginalPresentationTimesStamp:(CMSampleBufferRef)result;
- (double)_compositionPictureInPictureRectFromClientCompositingMetadata:(uint64_t)metadata;
- (double)_normalizedCompositionPictureInPictureRect:(uint64_t)rect;
- (uint64_t)_compressionPictureInPictureRegionFromRect:(uint64_t)rect;
- (void)_handleMovieFileSampleBuffer:(void *)buffer forInput:;
- (void)_handleStillImageSampleBuffer:(void *)buffer forInput:;
- (void)_invokeClientCompositingCallbackForSettingsID:(void *)d primarySampleBuffer:(void *)buffer secondarySampleBuffer:(void *)sampleBuffer outputSampleBufferOut:(void *)out compositingMetadataOut:;
- (void)_updateOutputSampleBufferDetectedFaces:(opaqueCMSampleBuffer *)faces withSecondarySampleBufferDetectedFaces:(double)detectedFaces compositionPictureInPictureRect:(double)rect;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)handleStillImagePrewarmWithSettings:(id)settings resourceConfig:(id)config forInput:(id)input;
- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)number forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWMultiCamClientCompositingNode

- (BWMultiCamClientCompositingNode)initWithIndexOfInputProvidingOutputSampleBuffer:(unsigned int)buffer compositingStrategy:(signed __int16)strategy gainMapSupported:(BOOL)supported clientCompositingCallback:(id)callback
{
  v37.receiver = self;
  v37.super_class = BWMultiCamClientCompositingNode;
  v10 = [(BWNode *)&v37 init];
  v11 = v10;
  if (v10)
  {
    if (v10->_compositingStrategy)
    {
      v12 = 1;
    }

    else
    {
      v12 = 50;
    }

    v10->_indexOfInputProvidingOutputSampleBuffer = buffer;
    v10->_compositingStrategy = strategy;
    v10->_gainMapSupported = supported;
    v10->_clientCompositingCallback = [callback copy];
    v11->_stillsInputLock._os_unfair_lock_opaque = 0;
    compositingStrategy = v11->_compositingStrategy;
    if (compositingStrategy != 1 && v11->_gainMapSupported)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Using compositing strategy %d with gain maps which is not supported!", compositingStrategy), 0}]);
    }

    v14 = 0;
    v15 = 1;
    bufferCopy = buffer;
    bufferCopy2 = buffer;
    do
    {
      v17 = v15;
      v18 = v14 == bufferCopy2;
      v19 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v11 index:v14];
      primaryMediaConfiguration = [(BWNodeInput *)v19 primaryMediaConfiguration];
      [(BWNodeInputMediaConfiguration *)primaryMediaConfiguration setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)primaryMediaConfiguration setPassthroughMode:v18];
      v21 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v21 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)v21 setPassthroughMode:1];
      [(BWNodeInput *)v19 setUnspecifiedAttachedMediaConfiguration:v21];
      [(BWNodeInput *)v19 setDelayedBufferCount:v12];
      [(BWNode *)v11 addInput:v19];

      v15 = 0;
      v14 = 1;
    }

    while ((v17 & 1) != 0);
    v22 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v11];
    [(BWNodeOutput *)v22 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutput *)v22 setPassthroughMode:1];
    [(BWNodeOutput *)v22 setIndexOfInputWhichDrivesThisOutput:bufferCopy];
    [(BWNode *)v11 addOutput:v22];

    if (!v11->_compositingStrategy)
    {
      v11->_bufferSynchronizer = [[BWPairedBufferSynchronizer alloc] initWithCapacity:v12];
      v23 = *MEMORY[0x1E6960348];
      v24 = *off_1E798D138;
      v25 = *MEMORY[0x1E6960338];
      v35[0] = *MEMORY[0x1E6960348];
      v35[1] = v25;
      v26 = *MEMORY[0x1E6960268];
      v36[0] = v24;
      v36[1] = v26;
      v35[2] = *MEMORY[0x1E6960358];
      v33 = *MEMORY[0x1E6960360];
      v34 = *MEMORY[0x1E695E4C0];
      v36[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
      v28 = *MEMORY[0x1E695E480];
      v32 = v27;
      if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(v28, 0x6D656278u, [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1], &v11->_compositionPictureInPictureRectMetadataFormatDescription))
      {

        return 0;
      }

      else
      {
        [v27 objectForKeyedSubscript:v23];
        [v27 objectForKeyedSubscript:v25];
        [v27 objectForKeyedSubscript:*MEMORY[0x1E6960340]];
        v11->_compositionPictureInPictureRectMetadataLocalID = FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors();
        v29 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v11];
        v11->_compositionPictureInPictureRectMetadataOutput = v29;
        [(BWNodeOutput *)v29 setName:@"CompositionPictureInPictureRectMetadata"];
        [(BWNodeOutput *)v11->_compositionPictureInPictureRectMetadataOutput setFormat:[BWMetadataFormat formatWithMetadataFormatDescription:v11->_compositionPictureInPictureRectMetadataFormatDescription]];
        [(BWNode *)v11 addOutput:v11->_compositionPictureInPictureRectMetadataOutput];
        v11->_thresholdToRemovePrimaryBufferDetectedFacesObscuredByPIP = 30.0;
      }
    }
  }

  return v11;
}

- (void)dealloc
{
  outputSampleBufferFormatDescription = self->_outputSampleBufferFormatDescription;
  if (outputSampleBufferFormatDescription)
  {
    CFRelease(outputSampleBufferFormatDescription);
  }

  outputGainMapSampleBufferFormatDescription = self->_outputGainMapSampleBufferFormatDescription;
  if (outputGainMapSampleBufferFormatDescription)
  {
    CFRelease(outputGainMapSampleBufferFormatDescription);
  }

  compositionPictureInPictureRectMetadataFormatDescription = self->_compositionPictureInPictureRectMetadataFormatDescription;
  if (compositionPictureInPictureRectMetadataFormatDescription)
  {
    CFRelease(compositionPictureInPictureRectMetadataFormatDescription);
  }

  v6.receiver = self;
  v6.super_class = BWMultiCamClientCompositingNode;
  [(BWNode *)&v6 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  v11.receiver = self;
  v11.super_class = BWMultiCamClientCompositingNode;
  [BWNode didSelectFormat:sel_didSelectFormat_forInput_forAttachedMediaKey_ forInput:? forAttachedMediaKey:?];
  if ([input index] == self->_indexOfInputProvidingOutputSampleBuffer)
  {
    if ([key isEqualToString:@"PrimaryFormat"])
    {
      [(BWNodeOutput *)self->super._output setFormat:format];
      v9 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:", format, [input delayedBufferCount], @"Multi Cam Client Compositing Output");
      v10 = &OBJC_IVAR___BWMultiCamClientCompositingNode__outputPixelBufferPool;
    }

    else
    {
      if (![key isEqualToString:0x1F217BF50])
      {
        return;
      }

      v9 = [[BWPixelBufferPool alloc] initWithVideoFormat:format capacity:1 name:@"Multi Cam Client Compositing Gain Map Output"];
      v10 = &OBJC_IVAR___BWMultiCamClientCompositingNode__outputGainMapPixelBufferPool;
    }

    *(&self->super.super.isa + *v10) = v9;
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if ([input index] == self->_indexOfInputProvidingOutputSampleBuffer)
  {
    [(BWNodeOutput *)self->super._output setFormat:format];
  }

  if ([(BWNode *)self allInputsHaveReachedState:1])
  {
    [(BWNodeOutput *)self->super._output makeConfiguredFormatLive];
    compositionPictureInPictureRectMetadataOutput = self->_compositionPictureInPictureRectMetadataOutput;

    [(BWNodeOutput *)compositionPictureInPictureRectMetadataOutput makeConfiguredFormatLive];
  }
}

- (void)didReachEndOfDataForInput:(id)input
{
  index = [input index];
  compositingStrategy = self->_compositingStrategy;
  if (index != self->_indexOfInputProvidingOutputSampleBuffer && compositingStrategy == 0)
  {
    [(BWPairedBufferSynchronizer *)self->_bufferSynchronizer setSecondaryStreamComplete:1];
  }

  if ([(BWNode *)self allInputsHaveReachedState:0])
  {
    if (!compositingStrategy)
    {
        ;
      }

      [(BWPairedBufferSynchronizer *)self->_bufferSynchronizer flush];
    }

    primaryStillSampleBuffer = self->_primaryStillSampleBuffer;
    if (primaryStillSampleBuffer)
    {
      CFRelease(primaryStillSampleBuffer);
      self->_primaryStillSampleBuffer = 0;
    }

    secondaryStillSampleBuffer = self->_secondaryStillSampleBuffer;
    if (secondaryStillSampleBuffer)
    {
      CFRelease(secondaryStillSampleBuffer);
      self->_secondaryStillSampleBuffer = 0;
    }

    self->_receivedNodeError = 0;
    [(BWNodeOutput *)self->super._output markEndOfLiveOutput];
    compositionPictureInPictureRectMetadataOutput = self->_compositionPictureInPictureRectMetadataOutput;

    [(BWNodeOutput *)compositionPictureInPictureRectMetadataOutput markEndOfLiveOutput];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (!self->_clientCompositingCallback)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@ was added to the graph but has no callback.", objc_opt_class()), 0}];
    objc_exception_throw(v5);
  }

  if (self->_compositingStrategy == 1)
  {

    [(BWMultiCamClientCompositingNode *)self _handleStillImageSampleBuffer:buffer forInput:input];
  }

  else if (!self->_compositingStrategy)
  {

    [(BWMultiCamClientCompositingNode *)self _handleMovieFileSampleBuffer:buffer forInput:input];
  }
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  if ([input index] == self->_indexOfInputProvidingOutputSampleBuffer)
  {
    output = self->super._output;

    [(BWNodeOutput *)output emitDroppedSample:sample];
  }
}

- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)number forInput:(id)input
{
  v4 = *&number;
  if ([input index] == self->_indexOfInputProvidingOutputSampleBuffer)
  {
    output = self->super._output;

    [(BWNodeOutput *)output emitStillImageReferenceFrameBracketedCaptureSequenceNumberMessageWithSequenceNumber:v4];
  }
}

- (void)handleStillImagePrewarmWithSettings:(id)settings resourceConfig:(id)config forInput:(id)input
{
  if ([input index] == self->_indexOfInputProvidingOutputSampleBuffer)
  {

    self->_stillImageSettings = settings;
    output = self->super._output;

    [(BWNodeOutput *)output emitStillImagePrewarmMessageWithSettings:settings resourceConfig:config];
  }
}

- (void)_handleMovieFileSampleBuffer:(void *)buffer forInput:
{
  if (!self)
  {
    return;
  }

  index = [buffer index];
  v6 = *(self + 128);
  IsMarkerBuffer = BWSampleBufferIsMarkerBuffer(a2);
  if (index == v6)
  {
    if (IsMarkerBuffer)
    {
      v8 = CMGetAttachment(a2, @"RecordingSettings", 0);
      if (v8)
      {
        v9 = v8;

        *(self + 152) = v9;
      }

      if (a2)
      {
        v10 = CFRetain(a2);
        v11 = CFRetain(a2);
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      v13 = CMGetAttachment(a2, @"FileWriterAction", 0);
      if (CFEqual(v13, @"Stop") || CFEqual(v13, @"Pause") || CFEqual(v13, @"Terminate"))
      {
        if ([(BWMultiCamClientCompositingNode *)self _attemptMovieFileBufferPairing])
        {
          do
          {
            v14 = 1;
          }

          while ([(BWMultiCamClientCompositingNode *)self _attemptMovieFileBufferPairing]);
        }

        else
        {
          v14 = 1;
        }
      }

      else
      {
        v14 = 0;
      }

      if (v10)
      {
        [*(self + 16) emitSampleBuffer:v10];
      }

      if (v11)
      {
        [*(self + 232) emitSampleBuffer:v11];
        if ((v14 & 1) == 0)
        {
LABEL_23:
          if (v10)
          {
            CFRelease(v10);
          }

          if (v11)
          {

            CFRelease(v11);
          }

          return;
        }
      }

      else if (!v14)
      {
        goto LABEL_23;
      }

      [*(self + 160) flush];
      goto LABEL_23;
    }

    [*(self + 160) addPrimaryBuffer:a2];
  }

  else if (IsMarkerBuffer)
  {
    v12 = CMGetAttachment(a2, @"FileWriterAction", 0);
    if (!CFEqual(v12, @"Stop") && !CFEqual(v12, @"Pause") && !CFEqual(v12, @"Terminate"))
    {
      return;
    }

    [*(self + 160) setSecondaryStreamComplete:1];
  }

  else
  {
    [*(self + 160) addSecondaryBuffer:a2];
  }

  [(BWMultiCamClientCompositingNode *)self _attemptMovieFileBufferPairing];
}

- (void)_handleStillImageSampleBuffer:(void *)buffer forInput:
{
  if (self)
  {
    cf = 0;
    v30 = 0;
    os_unfair_lock_lock((self + 168));
    index = [buffer index];
    v7 = *(self + 128);
    if (index == v7)
    {
      if (a2)
      {
        v8 = CFRetain(a2);
      }

      else
      {
        v8 = 0;
      }

      *(self + 176) = v8;
    }

    else
    {
      if (a2)
      {
        v9 = CFRetain(a2);
      }

      else
      {
        v9 = 0;
      }

      *(self + 184) = v9;
      v8 = *(self + 176);
    }

    if (v8)
    {
      v10 = *(self + 184) == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(self + 192);
    if (v11)
    {
      if (index == v7)
      {
        if (v8)
        {
          v8 = CFRetain(v8);
        }

        v12 = 0;
        cf = v8;
      }

      else
      {
        v12 = v11;
      }

      *(self + 192) = 0;
    }

    else
    {
      v12 = 0;
    }

    os_unfair_lock_unlock((self + 168));
    if (!v10)
    {
      -[BWMultiCamClientCompositingNode _invokeClientCompositingCallbackForSettingsID:primarySampleBuffer:secondarySampleBuffer:outputSampleBufferOut:compositingMetadataOut:](self, [*(self + 144) settingsID], *(self + 176), *(self + 184), &cf, &v30);
      [(BWMultiCamClientCompositingNode *)self _compositionPictureInPictureRectFromClientCompositingMetadata:v30];
      OUTLINED_FUNCTION_2_3();
      if (!CGRectIsNull(v31))
      {
        v32.origin.x = OUTLINED_FUNCTION_3();
        if (!CGRectIsEmpty(v32))
        {
          OUTLINED_FUNCTION_3();
          v33.origin.x = [BWMultiCamClientCompositingNode _normalizedCompositionPictureInPictureRect:v27];
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v33);
          BWStillImageSetProcessingFlagsForSampleBuffer(cf, 0x4000000);
          [CMGetAttachment(cf *off_1E798A3C8];
        }
      }

      v13 = [v30 objectForKeyedSubscript:FigCaptureClientCompositingMetadataCoreImageGainMapPropertiesKey];
      if (v13)
      {
        v14 = v13;
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [dictionary setObject:objc_msgSend(v14 forKeyedSubscript:{"objectForKeyedSubscript:", *MEMORY[0x1E695FA00]), *off_1E798A608}];
        v16 = *MEMORY[0x1E695FA20];
        [dictionary setObject:objc_msgSend(v14 forKeyedSubscript:{"objectForKeyedSubscript:", *MEMORY[0x1E695FA20]), *off_1E798A610}];
        [dictionary setObject:objc_msgSend(v14 forKeyedSubscript:{"objectForKeyedSubscript:", *MEMORY[0x1E695FA08]), *off_1E798A618}];
        [dictionary setObject:objc_msgSend(v14 forKeyedSubscript:{"objectForKeyedSubscript:", v16), *off_1E798A620}];
        v17 = [v14 objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapGamma"];
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = &unk_1F224CBE0;
        }

        [dictionary setObject:v18 forKeyedSubscript:*off_1E798A628];
        [dictionary setObject:objc_msgSend(v14 forKeyedSubscript:{"objectForKeyedSubscript:", *MEMORY[0x1E695FA10]), *off_1E798A638}];
        [dictionary setObject:objc_msgSend(v14 forKeyedSubscript:{"objectForKeyedSubscript:", *MEMORY[0x1E695FA18]), *off_1E798A648}];
        AttachedMedia = BWSampleBufferGetAttachedMedia(cf, 0x1F217BF50);
        v20 = *off_1E798A3C8;
        v21 = CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0);
        v22 = [v21 mutableCopy];
        v23 = *off_1E798A640;
        v24 = [objc_msgSend(v21 objectForKeyedSubscript:{*off_1E798A640), "mutableCopy"}];
        [v24 addEntriesFromDictionary:dictionary];
        [v22 setObject:v24 forKeyedSubscript:v23];
        CMSetAttachment(AttachedMedia, v20, v22, 1u);
      }
    }

    if (cf | v12)
    {
      if (cf)
      {
        [*(self + 16) emitSampleBuffer:?];
        if (v12)
        {
          OUTLINED_FUNCTION_1_9();
          FigDebugAssert3();
        }
      }

      else if (v12)
      {
        [*(self + 16) emitNodeError:v12];
      }

      v25 = *(self + 176);
      if (v25)
      {
        CFRelease(v25);
        *(self + 176) = 0;
      }

      v26 = *(self + 184);
      if (v26)
      {
        CFRelease(v26);
        *(self + 184) = 0;
      }

      *(self + 144) = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  index = [input index];
  indexOfInputProvidingOutputSampleBuffer = self->_indexOfInputProvidingOutputSampleBuffer;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  OUTLINED_FUNCTION_1_4();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (self->_compositingStrategy == 1)
  {
    os_unfair_lock_lock(&self->_stillsInputLock);
    receivedNodeError = self->_receivedNodeError;
    v10 = receivedNodeError != 0;
    if (receivedNodeError)
    {

      errorCopy = 0;
    }

    else
    {
      errorCopy = error;
    }

    self->_receivedNodeError = errorCopy;
    if (index == indexOfInputProvidingOutputSampleBuffer && self->_secondaryStillSampleBuffer)
    {
      v12 = 0;
      v10 = 1;
    }

    else
    {
      primaryStillSampleBuffer = self->_primaryStillSampleBuffer;
      if (primaryStillSampleBuffer)
      {
        v12 = CFRetain(primaryStillSampleBuffer);
      }

      else
      {
        v12 = 0;
      }
    }

    v14 = self->_primaryStillSampleBuffer;
    if (v14)
    {
      CFRelease(v14);
      self->_primaryStillSampleBuffer = 0;
    }

    secondaryStillSampleBuffer = self->_secondaryStillSampleBuffer;
    if (secondaryStillSampleBuffer)
    {
      CFRelease(secondaryStillSampleBuffer);
      self->_secondaryStillSampleBuffer = 0;
    }

    os_unfair_lock_unlock(&self->_stillsInputLock);
    if (((v12 == 0) & ~v10) == 0)
    {
      if (v12)
      {
        [(BWNodeOutput *)self->super._output emitSampleBuffer:v12];
        if (v10)
        {
          OUTLINED_FUNCTION_1_9();
          FigDebugAssert3();
        }
      }

      else if (v10)
      {
        [(BWNodeOutput *)self->super._output emitNodeError:error];
      }

      self->_stillImageSettings = 0;
      if (v12)
      {
        CFRelease(v12);
      }
    }
  }
}

- (BOOL)_attemptMovieFileBufferPairing
{
  if (!self)
  {
    return 0;
  }

  cf = 0;
  v17 = **&MEMORY[0x1E6960C70];
  v16 = 0;
  getSynchronizedBufferPair = [self[20] getSynchronizedBufferPair];
  v4 = getSynchronizedBufferPair;
  v5 = v3;
  if (getSynchronizedBufferPair && v3)
  {
    -[BWMultiCamClientCompositingNode _invokeClientCompositingCallbackForSettingsID:primarySampleBuffer:secondarySampleBuffer:outputSampleBufferOut:compositingMetadataOut:](self, [self[19] settingsID], getSynchronizedBufferPair, v3, &cf, &v16);
    [(BWMultiCamClientCompositingNode *)self _compositionPictureInPictureRectFromClientCompositingMetadata:v16];
    OUTLINED_FUNCTION_2_3();
    CMSampleBufferGetPresentationTimeStamp(&v17, cf);
    v15 = *&v17.value;
    OUTLINED_FUNCTION_5_93();
    OUTLINED_FUNCTION_3();
    v7 = [BWMultiCamClientCompositingNode _copyCompositionPictureInPictureRectMetadataSampleBuffer:v10 pts:v11];
    v12 = cf;
    goto LABEL_14;
  }

  if (getSynchronizedBufferPair)
  {
    v12 = CFRetain(getSynchronizedBufferPair);
    cf = v12;
    CMSampleBufferGetPresentationTimeStamp(&v17, v12);
    v15 = *&v17.value;
    v13 = OUTLINED_FUNCTION_5_93();
    v7 = [BWMultiCamClientCompositingNode _copyCompositionPictureInPictureRectMetadataSampleBuffer:v13 pts:v14];
LABEL_14:
    v6 = v12 != 0;
    if (v12)
    {
      [self[2] emitSampleBuffer:{v12, v15}];
    }

    v8 = v7 == 0;
    if (v7)
    {
      [self[29] emitSampleBuffer:v7];
    }

    CFRelease(v4);
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = 0;
  v7 = 0;
  v8 = 1;
  if (v3)
  {
LABEL_6:
    CFRelease(v5);
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v8)
  {
    CFRelease(v7);
  }

  return v6;
}

- (void)_invokeClientCompositingCallbackForSettingsID:(void *)d primarySampleBuffer:(void *)buffer secondarySampleBuffer:(void *)sampleBuffer outputSampleBufferOut:(void *)out compositingMetadataOut:
{
  if (!self)
  {
    return;
  }

  v39 = 0;
  v40 = 0;
  cf = [(BWMultiCamClientCompositingNode *)self _newSampleBufferWithOriginalPresentationTimesStamp:d];
  if (cf)
  {
    v11 = [(BWMultiCamClientCompositingNode *)self _newSampleBufferWithOriginalPresentationTimesStamp:buffer];
    if (v11)
    {
      v12 = v11;
      ImageBuffer = CMSampleBufferGetImageBuffer(d);
      newPixelBuffer = [*(self + 200) newPixelBuffer];
      if (newPixelBuffer)
      {
        outCopy = out;
        v15 = *off_1E798A3C8;
        v16 = CVBufferCopyAttachment(ImageBuffer, *off_1E798A3C8, 0);
        if (v16)
        {
          v17 = CFAutorelease(v16);
        }

        else
        {
          v17 = 0;
        }

        CVBufferSetAttachment(newPixelBuffer, v15, v17, kCVAttachmentMode_ShouldPropagate);
        BWPropagatePixelBufferAmbientViewingEnvironment(ImageBuffer, newPixelBuffer);
        BWPropagatePixelBufferDolbyVisionRPUData(ImageBuffer, newPixelBuffer);
        AttachedMedia = BWSampleBufferGetAttachedMedia(d, 0x1F217BF50);
        v19 = BWSampleBufferGetAttachedMedia(buffer, 0x1F217BF50);
        newPixelBuffer2 = 0;
        if (AttachedMedia && v19)
        {
          newPixelBuffer2 = [*(self + 216) newPixelBuffer];
          BWCMSampleBufferCreateCopyWithNewPixelBuffer(AttachedMedia, newPixelBuffer2, (self + 224), &v39);
        }

        BWCMSampleBufferCreateCopyWithNewPixelBuffer(d, newPixelBuffer, (self + 208), &v40);
        if ((*(*(self + 136) + 16))(*(self + 136)))
        {
          if (v40)
          {
            CFRelease(v40);
          }

          if (d)
          {
            v21 = CFRetain(d);
          }

          else
          {
            v21 = 0;
          }

          v40 = v21;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          out = outCopy;
          OUTLINED_FUNCTION_1_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          v24 = [0 objectForKeyedSubscript:FigCaptureClientCompositingMetadataCoreImageGainMapPropertiesKey];
          v25 = v39;
          out = outCopy;
          if (!v39 || !v24)
          {
            v25 = 0;
          }

          BWSampleBufferSetAttachedMedia(v40, 0x1F217BF50, v25);
          [(BWMultiCamClientCompositingNode *)self _compositionPictureInPictureRectFromClientCompositingMetadata:?];
          OUTLINED_FUNCTION_2_3();
          v26 = [BWMultiCamClientCompositingNode _compressionPictureInPictureRegionFromRect:self];
          CMSetAttachment(v40, *MEMORY[0x1E6983788], v26, 1u);
          v27 = OUTLINED_FUNCTION_3();
          [(BWMultiCamClientCompositingNode *)v28 _updateOutputSampleBufferDetectedFaces:v29 withSecondarySampleBufferDetectedFaces:v30 compositionPictureInPictureRect:v27, v31, v32, v33];
        }
      }

      else
      {
        if (d)
        {
          v36 = CFRetain(d);
        }

        else
        {
          v36 = 0;
        }

        newPixelBuffer2 = 0;
        v40 = v36;
      }

      CFRelease(cf);
      CFRelease(v12);
      if (newPixelBuffer)
      {
        CFRelease(newPixelBuffer);
      }

      if (!newPixelBuffer2)
      {
        goto LABEL_23;
      }

      v23 = newPixelBuffer2;
    }

    else
    {
      if (d)
      {
        v35 = CFRetain(d);
      }

      else
      {
        v35 = 0;
      }

      v40 = v35;
      v23 = cf;
    }

    CFRelease(v23);
  }

  else
  {
    if (d)
    {
      v34 = CFRetain(d);
    }

    else
    {
      v34 = 0;
    }

    v40 = v34;
  }

LABEL_23:
  if (v39)
  {
    CFRelease(v39);
  }

  if (sampleBuffer)
  {
    *sampleBuffer = v40;
  }

  if (out)
  {
    *out = 0;
  }
}

- (double)_compositionPictureInPictureRectFromClientCompositingMetadata:(uint64_t)metadata
{
  if (!metadata)
  {
    return OUTLINED_FUNCTION_21_9();
  }

  v2 = *(MEMORY[0x1E695F050] + 16);
  v4.origin = *MEMORY[0x1E695F050];
  v4.size = v2;
  CGRectMakeWithDictionaryRepresentation([a2 objectForKeyedSubscript:FigCaptureClientCompositingMetadataCompositionPictureInPictureRectKey], &v4);
  return v4.origin.x;
}

- (CMSampleBufferRef)_copyCompositionPictureInPictureRectMetadataSampleBuffer:(CMSampleBufferRef)result pts:(CMTime *)pts
{
  if (result)
  {
    v3 = result;
    sampleBufferOut = 0;
    v11 = 0;
    [BWMultiCamClientCompositingNode _normalizedCompositionPictureInPictureRect:?];
    OUTLINED_FUNCTION_2_3();
    v4 = *MEMORY[0x1E695E480];
    if (!FigBoxedMetadataCreateForConstruction())
    {
      OUTLINED_FUNCTION_3();
      if (!FigBoxedMetadataAppendCGRect() && !FigBoxedMetadataEndConstruction())
      {
        BlockBuffer = FigBoxedMetadataGetBlockBuffer();
        memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
        __dst.presentationTimeStamp = *pts;
        DataLength = CMBlockBufferGetDataLength(BlockBuffer);
        v7 = *(v3 + 30);
        v8 = DataLength;
        CMSampleBufferCreate(v4, BlockBuffer, 1u, 0, 0, v7, 1, 1, &__dst, 1, &v8, &sampleBufferOut);
      }
    }

    if (v11)
    {
      CFRelease(v11);
    }

    return sampleBufferOut;
  }

  return result;
}

- (double)_normalizedCompositionPictureInPictureRect:(uint64_t)rect
{
  if (!rect)
  {
    return OUTLINED_FUNCTION_21_9();
  }

  OUTLINED_FUNCTION_9_7();
  v2 = v1;
  v3 = [objc_msgSend(*(v1 + 16) "videoFormat")];
  [objc_msgSend(*(v2 + 16) "videoFormat")];
  v4 = OUTLINED_FUNCTION_3_1();
  return FigCaptureMetadataUtilitiesRectNormalizedToRect(v4, v5, v6, v7, v8, v9, v3);
}

- (CMSampleBufferRef)_newSampleBufferWithOriginalPresentationTimesStamp:(CMSampleBufferRef)result
{
  if (result)
  {
    v7 = 0;
    v3 = CMGetAttachment(target, *off_1E798A420, 0);
    if (v3)
    {
      memset(&v6, 0, sizeof(v6));
      CMTimeMakeFromDictionary(&v6, v3);
      CMSampleBufferGetDuration(&v5, target);
      v4 = v6;
      BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(target, &v4, &v5.value, &v7);
      return v7;
    }

    else if (target)
    {
      return CFRetain(target);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)_compressionPictureInPictureRegionFromRect:(uint64_t)rect
{
  if (!rect)
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_7();
  if (CGRectIsNull(v8))
  {
    return 0;
  }

  v9.origin.x = OUTLINED_FUNCTION_3_1();
  if (CGRectIsEmpty(v9))
  {
    return 0;
  }

  v10.origin.x = OUTLINED_FUNCTION_3_1();
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v10);
  v2 = *MEMORY[0x1E69834F8];
  v6[0] = *MEMORY[0x1E6983500];
  v6[1] = v2;
  v7[0] = DictionaryRepresentation;
  v7[1] = &unk_1F2247DA0;
  v3 = *MEMORY[0x1E69834E0];
  v6[2] = *MEMORY[0x1E69834F0];
  v6[3] = v3;
  v7[2] = &unk_1F2247DA0;
  v7[3] = &unk_1F2247DA0;
  v6[4] = *MEMORY[0x1E69834E8];
  v7[4] = &unk_1F2247DA0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:5];

  return v4;
}

- (void)_updateOutputSampleBufferDetectedFaces:(opaqueCMSampleBuffer *)faces withSecondarySampleBufferDetectedFaces:(double)detectedFaces compositionPictureInPictureRect:(double)rect
{
  if (!self)
  {
    return;
  }

  v14 = BWPixelBufferDimensionsFromSampleBuffer(a2);
  v15 = BWPixelBufferDimensionsFromSampleBuffer(faces) >> 32;
  v16 = *off_1E798A3C8;
  v17 = CMGetAttachment(a2, *off_1E798A3C8, 0);
  v18 = CMGetAttachment(faces, v16, 0);
  v19 = *off_1E798B218;
  v20 = [v17 objectForKeyedSubscript:*off_1E798B218];
  v21 = [v18 objectForKeyedSubscript:v19];
  v22 = v15;
  FigCaptureFrontCameraRotationAngle();
  if (!CGFloatNearlyEqualToFloatWithTolerance())
  {
    v23 = 0;
    goto LABEL_24;
  }

  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v20];
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __145__BWMultiCamClientCompositingNode__updateOutputSampleBufferDetectedFaces_withSecondarySampleBufferDetectedFaces_compositionPictureInPictureRect___block_invoke;
  v101[3] = &unk_1E799E0C8;
  v101[9] = v14;
  *&v101[5] = detectedFaces;
  *&v101[6] = rect;
  *&v101[7] = a6;
  *&v101[8] = a7;
  v101[4] = self;
  v24 = [v23 filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v101)}];
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v32 = OUTLINED_FUNCTION_8_66(v24, v25, v26, v27, v28, v29, v30, v31, v19, v17, faces, a2, v69, v71, v72, v74, v75, v77, *&v78.a, *&v78.b, *&v78.c, *&v78.d, *&v78.tx, *&v78.ty, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, 0);
  if (!v32)
  {
    goto LABEL_17;
  }

  v33 = v32;
  v34 = *v98;
  v73 = *(MEMORY[0x1E695F050] + 16);
  v76 = *MEMORY[0x1E695F050];
  v70 = xmmword_1AD046840;
  do
  {
    for (i = 0; i != v33; ++i)
    {
      if (*v98 != v34)
      {
        objc_enumerationMutation(v21);
      }

      v36 = *(*(&v97 + 1) + 8 * i);
      v79 = v76;
      v80 = v73;
      CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
      if (CGRectIfPresent)
      {
        FigCaptureDenormalizeCropRect(*&v79, *(&v79 + 1), *&v80, *(&v80 + 1));
        *&v79 = v45;
        *(&v79 + 1) = v46;
        *&v80 = v47;
        *(&v80 + 1) = v48;
        if (FigCaptureFrontCameraRotationAngle() == 90)
        {
          v49 = *(&v79 + 1);
          v50 = *&v79;
          v51 = *(&v80 + 1);
          v52 = *&v80;
          goto LABEL_13;
        }

        v53 = FigCaptureFrontCameraRotationAngle();
        v50 = *(&v79 + 1);
        v49 = *&v79;
        v52 = *(&v80 + 1);
        v51 = *&v80;
        if (v53 == 180)
        {
          v78.b = 0.0;
          v78.c = 0.0;
          v78.a = 1.0;
          *&v78.d = v70;
          v78.ty = v22;
          *&v49 = CGRectApplyAffineTransform(*&v49, &v78);
LABEL_13:
          *&v79 = v49;
          *(&v79 + 1) = v50;
          *&v80 = v51;
          *(&v80 + 1) = v52;
        }

        FigCaptureMetadataUtilitiesNormalizeCropRect(v49, v50, v51, v52);
        *&v80 = v54;
        *(&v80 + 1) = v55;
        *&v79 = detectedFaces + v56;
        *(&v79 + 1) = rect + v57;
        FigCaptureNormalizeCropRect(detectedFaces + v56, rect + v57, v54, v55);
        *&v79 = v58;
        *(&v79 + 1) = v59;
        *&v80 = v60;
        *(&v80 + 1) = v61;
        v62 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v36];
        FigCFDictionarySetCGRect();
        [v23 addObject:v62];

        continue;
      }
    }

    v33 = OUTLINED_FUNCTION_8_66(CGRectIfPresent, v38, v39, v40, v41, v42, v43, v44, v65, v66, v67, target, v70, *(&v70 + 1), v73, *(&v73 + 1), v76, *(&v76 + 1), *&v78.a, *&v78.b, *&v78.c, *&v78.d, *&v78.tx, *&v78.ty, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
  }

  while (v33);
LABEL_17:
  [v66 setObject:v23 forKeyedSubscript:v65];
  v63 = CMGetAttachment(target, @"DetectedFacesArrayHasBeenStabilized", 0);
  v64 = CMGetAttachment(v67, @"DetectedFacesArrayHasBeenStabilized", 0);
  if ([v23 count] && (objc_msgSend(v63, "BOOLValue") & 1) == 0 && objc_msgSend(v64, "BOOLValue"))
  {
    CMSetAttachment(target, @"DetectedFacesArrayHasBeenStabilized", *MEMORY[0x1E695E4D0], 1u);
  }

  else if (![v23 count])
  {
    if ([v63 BOOLValue])
    {
      CMRemoveAttachment(target, @"DetectedFacesArrayHasBeenStabilized");
    }
  }

LABEL_24:
}

uint64_t __145__BWMultiCamClientCompositingNode__updateOutputSampleBufferDetectedFaces_withSecondarySampleBufferDetectedFaces_compositionPictureInPictureRect___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E695F050];
  v10 = *(MEMORY[0x1E695F050] + 16);
  result = FigCFDictionaryGetCGRectIfPresent();
  if (result)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 76);
    v5 = *&v9 * v3;
    v6 = *(&v9 + 1) * v4;
    v7 = *&v10 * v3;
    v8 = *(&v10 + 1) * v4;
    v11.origin.x = v5;
    v11.origin.y = v6;
    v11.size.width = v7;
    v11.size.height = v8;
    if (CGRectIntersectsRect(v11, *(a1 + 40)))
    {
      v13.origin.x = v5;
      v13.origin.y = v6;
      v13.size.width = v7;
      v13.size.height = v8;
      v12 = CGRectIntersection(*(a1 + 40), v13);
      return v12.size.width * v12.size.height / (v7 * v8) <= *(*(a1 + 32) + 252) / 100.0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

@end