@interface BWVideoPlaybackSupportMetadataNode
- (BWVideoPlaybackSupportMetadataNode)init;
- (uint64_t)_emitPlaybackSupportBoxedMetadataForSampleBuffer:(void *)buffer metadata:(CMTime *)metadata time:;
- (uint64_t)_emptyMetadataBlockBuffer;
- (uint64_t)init;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWVideoPlaybackSupportMetadataNode

- (BWVideoPlaybackSupportMetadataNode)init
{
  v22.receiver = self;
  v22.super_class = BWVideoPlaybackSupportMetadataNode;
  v2 = [(BWNode *)&v22 init];
  if (!v2)
  {
    return v2;
  }

  v3 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v2];
  if (!v3)
  {
    [BWVideoPlaybackSupportMetadataNode init];
    return 0;
  }

  v4 = v3;
  v5 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWNodeInput *)v4 setFormatRequirements:v5];

  [(BWNodeInput *)v4 setPassthroughMode:1];
  [(BWNode *)v2 addInput:v4];

  v6 = *MEMORY[0x1E6960348];
  v7 = *MEMORY[0x1E69603B0];
  v8 = *MEMORY[0x1E6960338];
  v20[0] = *MEMORY[0x1E6960348];
  v20[1] = v8;
  v9 = *MEMORY[0x1E69602E8];
  v21[0] = v7;
  v21[1] = v9;
  v20[2] = *MEMORY[0x1E6960358];
  v18 = *MEMORY[0x1E6960360];
  v19 = *MEMORY[0x1E695E4C0];
  v21[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v17 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v11, &v2->_boxedMetadataFormatDescription))
  {
    [BWVideoPlaybackSupportMetadataNode init];
    return 0;
  }

  [v10 objectForKeyedSubscript:v6];
  [v10 objectForKeyedSubscript:v8];
  [v10 objectForKeyedSubscript:*MEMORY[0x1E6960340]];
  v2->_localIDOfLuxMetadata_BE = bswap32(FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors());
  v12 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v2];
  if (!v12)
  {
    [BWVideoPlaybackSupportMetadataNode init];
    return 0;
  }

  v13 = v12;
  [(BWNodeOutput *)v12 setName:@"PlaybackSupportMetadataCameraPassThru"];
  [(BWNodeOutput *)v13 setPassthroughMode:1];
  [(BWNode *)v2 addOutput:v13];
  v2->_passthruOutput = v13;

  v14 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v2];
  if (!v14)
  {
    [BWVideoPlaybackSupportMetadataNode init];
    return 0;
  }

  v15 = v14;
  [(BWNodeOutput *)v14 setName:@"PlaybackSupportMetadata"];
  if (v2->_boxedMetadataFormatDescription)
  {
    [(BWNodeOutput *)v15 setFormat:[BWMetadataFormat formatWithMetadataFormatDescription:?]];
  }

  [(BWNode *)v2 addOutput:v15];
  v2->_boxedMetadataOutput = v15;

  [(BWNode *)v2 setSupportsLiveReconfiguration:1];
  [(BWNode *)v2 setSupportsPrepareWhileRunning:1];
  return v2;
}

- (void)dealloc
{
  boxedMetadataFormatDescription = self->_boxedMetadataFormatDescription;
  if (boxedMetadataFormatDescription)
  {
    CFRelease(boxedMetadataFormatDescription);
  }

  emptyMetadataSampleData = self->_emptyMetadataSampleData;
  if (emptyMetadataSampleData)
  {
    CFRelease(emptyMetadataSampleData);
  }

  v5.receiver = self;
  v5.super_class = BWVideoPlaybackSupportMetadataNode;
  [(BWNode *)&v5 dealloc];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  [(BWNodeOutput *)self->_passthruOutput makeConfiguredFormatLive:d];
  boxedMetadataOutput = self->_boxedMetadataOutput;

  [(BWNodeOutput *)boxedMetadataOutput makeConfiguredFormatLive];
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  [(BWNodeOutput *)self->_passthruOutput markEndOfLiveOutputForConfigurationID:d, input];
  boxedMetadataOutput = self->_boxedMetadataOutput;

  [(BWNodeOutput *)boxedMetadataOutput markEndOfLiveOutputForConfigurationID:d];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  memset(&v12, 0, sizeof(v12));
  CMSampleBufferGetPresentationTimeStamp(&v12, buffer);
  if (BWSampleBufferIsMarkerBuffer(buffer))
  {
    v6 = CMGetAttachment(buffer, @"FileWriterAction", 0);
    if (v6)
    {
      v7 = v6;
      if (CFEqual(v6, @"Start") || CFEqual(v7, @"Resume"))
      {
        self->_previousGeneratedMetadataBufferWasEmpty = 0;
        self->_prevSceneIlluminationValue = -1;
      }
    }

    sampleBufferOut = 0;
    if (CMSampleBufferCreateCopy(*MEMORY[0x1E695E480], buffer, &sampleBufferOut))
    {
      v10 = v12;
      [(BWNodeOutput *)self->_boxedMetadataOutput emitDroppedSample:[BWDroppedSample newDroppedSampleWithReason:0x1F219BFF0 pts:&v10]];
    }

    else
    {
      [(BWNodeOutput *)self->_boxedMetadataOutput emitSampleBuffer:sampleBufferOut];
    }

    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
    }
  }

  else
  {
    v8 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    if (!v8 || (v10 = v12, ([(BWVideoPlaybackSupportMetadataNode *)self _emitPlaybackSupportBoxedMetadataForSampleBuffer:v9 metadata:v8 time:&v10]& 1) == 0))
    {
      v10 = v12;
      [(BWNodeOutput *)self->_boxedMetadataOutput emitDroppedSample:[BWDroppedSample newDroppedSampleWithReason:0x1F219BFF0 pts:&v10]];
    }
  }

  [(BWNodeOutput *)self->_passthruOutput emitSampleBuffer:buffer];
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  [(BWNodeOutput *)self->_passthruOutput emitDroppedSample:sample, input];
  boxedMetadataOutput = self->_boxedMetadataOutput;

  [(BWNodeOutput *)boxedMetadataOutput emitDroppedSample:sample];
}

- (uint64_t)_emitPlaybackSupportBoxedMetadataForSampleBuffer:(void *)buffer metadata:(CMTime *)metadata time:
{
  if (!self)
  {
    return 0;
  }

  v17 = 0;
  blockBufferOut = 0;
  v6 = *(self + 168);
  v7 = FigCaptureSceneIlluminationValueFromLuxLevel([buffer objectForKeyedSubscript:*off_1E798B4B8], *(self + 172));
  v8 = v7;
  v9 = MEMORY[0x1E695E480];
  if (v7 != -1)
  {
    *(self + 172) = v7;
    v11 = malloc_type_malloc(0xCuLL, 0x2F18F4DEuLL);
    *v11 = 201326592;
    v11[1] = *(self + 152);
    v11[2] = bswap32(v8);
    if (CMBlockBufferCreateWithMemoryBlock(*v9, v11, 0xCuLL, *MEMORY[0x1E695E488], 0, 0, 0xCuLL, 0, &blockBufferOut))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      goto LABEL_16;
    }

    v12 = blockBufferOut;
    sampleSizeArray = 0;
    if (!blockBufferOut)
    {
LABEL_12:
      v10 = 0;
      goto LABEL_20;
    }

LABEL_7:
    memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
    __dst.presentationTimeStamp = *metadata;
    sampleSizeArray = CMBlockBufferGetDataLength(v12);
    if (!CMSampleBufferCreate(*v9, blockBufferOut, 1u, 0, 0, *(self + 144), 1, 1, &__dst, 1, &sampleSizeArray, &v17))
    {
      if (v17)
      {
        [*(self + 136) emitSampleBuffer:?];
        *(self + 168) = v8 == -1;
        v10 = 1;
        goto LABEL_18;
      }

LABEL_17:
      v10 = 0;
LABEL_18:
      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
      }

      goto LABEL_20;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
LABEL_16:
    FigDebugAssert3();
    goto LABEL_17;
  }

  if (v6)
  {
    v10 = 0;
    sampleSizeArray = 0;
    goto LABEL_18;
  }

  _emptyMetadataBlockBuffer = [(BWVideoPlaybackSupportMetadataNode *)self _emptyMetadataBlockBuffer];
  if (_emptyMetadataBlockBuffer)
  {
    v12 = CFRetain(_emptyMetadataBlockBuffer);
    blockBufferOut = v12;
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v10 = 0;
  blockBufferOut = 0;
LABEL_20:
  if (v17)
  {
    CFRelease(v17);
  }

  return v10;
}

- (uint64_t)_emptyMetadataBlockBuffer
{
  if (result)
  {
    v1 = result;
    if (!*(result + 160))
    {
      if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 8uLL, *MEMORY[0x1E695E480], 0, 0, 8uLL, 1u, (result + 160)))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_12();
      }

      else
      {
        dataPointerOut = 0;
        if (!CMBlockBufferGetDataPointer(*(v1 + 160), 0, 0, 0, &dataPointerOut))
        {
          *dataPointerOut = 0x8000000;
          return *(v1 + 160);
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_12();
      }

      FigDebugAssert3();
    }

    return *(v1 + 160);
  }

  return result;
}

- (uint64_t)init
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end