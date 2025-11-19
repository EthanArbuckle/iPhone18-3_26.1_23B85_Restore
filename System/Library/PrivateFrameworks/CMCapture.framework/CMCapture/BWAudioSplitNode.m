@interface BWAudioSplitNode
- (BWAudioSplitNode)initWithInputChannelLayoutTag:(unsigned int)a3 output1ChannelLayoutTag:(unsigned int)a4 output2ChannelLayoutTag:(unsigned int)a5;
- (uint64_t)_createSplitAndInterleaveFromSampleBuffer:(const opaqueCMFormatDescription *)a3 outputFormat1:(CMSampleBufferRef *)a4 outputBuffer1:(const opaqueCMFormatDescription *)a5 outputFormat2:(CMSampleBufferRef *)a6 outputBuffer2:;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWAudioSplitNode

- (BWAudioSplitNode)initWithInputChannelLayoutTag:(unsigned int)a3 output1ChannelLayoutTag:(unsigned int)a4 output2ChannelLayoutTag:(unsigned int)a5
{
  v18.receiver = self;
  v18.super_class = BWAudioSplitNode;
  v8 = [(BWNode *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_splitAtIndex = a4;
    v8->_inputNumberOfChannels = a3;
    v8->_inputChannelLayoutTag = a3;
    v8->_output1ChannelLayoutTag = a4;
    v8->_output2ChannelLayoutTag = a5;
    if (a3 == -267386874)
    {
      if (a5 == 12451844)
      {
        v10 = 1667853921;
      }

      else
      {
        v10 = 0;
      }

      if (v8->_output1ChannelLayoutTag == 12451844)
      {
        v11 = 1667853921;
      }

      else
      {
        v11 = v10;
      }
    }

    else
    {
      v11 = 0;
    }

    v8->_cinematicAudioIngestDomain = v11;
    if (v8->_inputNumberOfChannels == a4 + a5)
    {
      v12 = [[BWNodeInput alloc] initWithMediaType:1936684398 node:v8];
      if (v12)
      {
        v13 = v12;
        [(BWNode *)v9 addInput:v12];
        v9->_input = v13;

        v14 = [[BWNodeOutput alloc] initWithMediaType:1936684398 node:v9];
        [(BWNodeOutput *)v14 setIndexOfInputWhichDrivesThisOutput:0];
        [(BWNode *)v9 addOutput:v14];
        v9->_output1 = v14;

        v15 = [[BWNodeOutput alloc] initWithMediaType:1936684398 node:v9];
        [(BWNodeOutput *)v15 setIndexOfInputWhichDrivesThisOutput:0];
        [(BWNode *)v9 addOutput:v15];
        v9->_output2 = v15;

        [(BWNode *)v9 setSupportsLiveReconfiguration:1];
        [(BWNode *)v9 setSupportsPrepareWhileRunning:1];
        return v9;
      }

      v17 = 79;
    }

    else
    {
      v17 = 76;
    }

    [BWAudioSplitNode initWithInputChannelLayoutTag:v9 output1ChannelLayoutTag:v17 output2ChannelLayoutTag:&v19];
    return v19;
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWAudioSplitNode;
  [(BWNode *)&v2 dealloc];
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if (self->_input)
  {
    [(BWNodeOutput *)self->_output1 makeConfiguredFormatLive:a3];
    output2 = self->_output2;

    [(BWNodeOutput *)output2 makeConfiguredFormatLive];
  }
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  if (a3)
  {
    splitAtIndex = self->_splitAtIndex;
    v19 = self->_inputNumberOfChannels - splitAtIndex;
    v39 = 0;
    v41 = 0;
    v40 = 0;
    output1ChannelLayoutTag = self->_output1ChannelLayoutTag;
    v42 = 0;
    v38 = output1ChannelLayoutTag;
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:{32, a5}];
    cinematicAudioIngestDomain = self->_cinematicAudioIngestDomain;
    if (cinematicAudioIngestDomain && (self->_output1ChannelLayoutTag == 12451844 || self->_output2ChannelLayoutTag == 12451844))
    {
      v10 = v8;
      v11 = FigCaptureAudioIngestSignalingInfoAtomData(cinematicAudioIngestDomain);
      v12 = v11;
      if (self->_output1ChannelLayoutTag == 12451844)
      {
        v35 = v11;
        v36 = @"SampleDescriptionExtensionAtoms";
        v34 = @"ngst";
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      }

      else
      {
        v13 = 0;
      }

      v15 = v13;
      if (self->_output2ChannelLayoutTag == 12451844)
      {
        v31 = v12;
        v32 = @"SampleDescriptionExtensionAtoms";
        v30 = @"ngst";
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      }

      else
      {
        v17 = 0;
      }

      v8 = v10;
      v14 = v15;
    }

    else
    {
      v14 = 0;
      v17 = 0;
    }

    v29[0] = &unk_1F2243CF0;
    v28[0] = 0x1F2175490;
    v28[1] = 0x1F21754D0;
    v29[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{splitAtIndex, v17}];
    v29[2] = MEMORY[0x1E695E110];
    v28[2] = 0x1F2175550;
    v28[3] = 0x1F2175530;
    v29[3] = MEMORY[0x1E695E118];
    v29[4] = &unk_1F2243D08;
    v28[4] = 0x1F21754F0;
    v28[5] = 0x1F2175610;
    v29[5] = v8;
    -[BWNodeOutput setFormat:](self->_output1, "setFormat:", +[BWAudioFormat formatForAVAudioSettings:inputFormat:formatExtensions:](BWAudioFormat, "formatForAVAudioSettings:inputFormat:formatExtensions:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:6], a3, v14));
    v25 = 0;
    v24 = 0;
    v27 = 0;
    v26 = 0;
    output2ChannelLayoutTag = self->_output2ChannelLayoutTag;
    v16 = [MEMORY[0x1E695DEF0] dataWithBytes:&output2ChannelLayoutTag length:32];
    v22[0] = &unk_1F2243CF0;
    v21[0] = 0x1F2175490;
    v21[1] = 0x1F21754D0;
    v22[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v19];
    v22[2] = MEMORY[0x1E695E110];
    v21[2] = 0x1F2175550;
    v21[3] = 0x1F2175530;
    v22[3] = MEMORY[0x1E695E118];
    v22[4] = &unk_1F2243D08;
    v21[4] = 0x1F21754F0;
    v21[5] = 0x1F2175610;
    v22[5] = v16;
    -[BWNodeOutput setFormat:](self->_output2, "setFormat:", +[BWAudioFormat formatForAVAudioSettings:inputFormat:formatExtensions:](BWAudioFormat, "formatForAVAudioSettings:inputFormat:formatExtensions:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6], a3, v18));
  }

  else
  {
    [BWAudioSplitNode didSelectFormat:forInput:forAttachedMediaKey:];
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  [(BWNodeOutput *)self->_output1 markEndOfLiveOutputForConfigurationID:a3, a4];
  output2 = self->_output2;

  [(BWNodeOutput *)output2 markEndOfLiveOutputForConfigurationID:a3];
}

- (uint64_t)_createSplitAndInterleaveFromSampleBuffer:(const opaqueCMFormatDescription *)a3 outputFormat1:(CMSampleBufferRef *)a4 outputBuffer1:(const opaqueCMFormatDescription *)a5 outputFormat2:(CMSampleBufferRef *)a6 outputBuffer2:
{
  if (!a1)
  {
    return 0;
  }

  v65 = 0;
  blockBufferOut = 0;
  sampleSizeArray = 0;
  v64 = 0;
  v62 = 0;
  memset(&timingInfoOut, 0, sizeof(timingInfoOut));
  if (!sbuf || !a3 || !a4 || !a5 || !a6)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
LABEL_42:
    FigDebugAssert3();
    v22 = 0;
LABEL_46:
    v51 = 0;
    goto LABEL_31;
  }

  SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(sbuf, 0, &timingInfoOut);
  if (SampleTimingInfo)
  {
    v51 = SampleTimingInfo;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3();
    v22 = 0;
    goto LABEL_31;
  }

  v12 = CMSampleBufferGetFormatDescription(sbuf);
  if (!v12 || (StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v12)) == 0 || (mBytesPerFrame = StreamBasicDescription->mBytesPerFrame, mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame, (v16 = CMAudioFormatDescriptionGetStreamBasicDescription(a3)) == 0) || (v57 = a4, v17 = v16->mBytesPerFrame, v18 = v16->mChannelsPerFrame, (v19 = CMAudioFormatDescriptionGetStreamBasicDescription(a5)) == 0) || (v20 = v19->mChannelsPerFrame, v20 + v18 != mChannelsPerFrame))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    goto LABEL_42;
  }

  v56 = a6;
  v21 = v19->mBytesPerFrame;
  v22 = malloc_type_malloc((16 * mChannelsPerFrame) | 8, 0x10800404ACF7207uLL);
  if (!v22)
  {
    goto LABEL_45;
  }

  AudioBufferListWithRetainedBlockBuffer = CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(sbuf, 0, v22, (16 * mChannelsPerFrame) | 8, 0, 0, 1u, &blockBufferOut);
  if (AudioBufferListWithRetainedBlockBuffer)
  {
LABEL_47:
    v51 = AudioBufferListWithRetainedBlockBuffer;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_48();
LABEL_52:
    FigDebugAssert3();
    goto LABEL_31;
  }

  if (v22->mNumberBuffers != mChannelsPerFrame)
  {
LABEL_45:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_52();
    FigDebugAssert3();
    goto LABEL_46;
  }

  NumSamples = CMSampleBufferGetNumSamples(sbuf);
  v62 = v21;
  sampleSizeArray = v17;
  AudioBufferListWithRetainedBlockBuffer = OUTLINED_FUNCTION_4_40(NumSamples * v17, &v65, sampleTimingArray);
  if (AudioBufferListWithRetainedBlockBuffer)
  {
    goto LABEL_47;
  }

  AudioBufferListWithRetainedBlockBuffer = OUTLINED_FUNCTION_4_40(NumSamples * v21, &v64, sampleTimingArraya);
  if (AudioBufferListWithRetainedBlockBuffer)
  {
    goto LABEL_47;
  }

  v59 = 0;
  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(v65, 0, 0, 0, &dataPointerOut);
  if (DataPointer)
  {
    v51 = DataPointer;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_48();
    goto LABEL_52;
  }

  v26 = CMBlockBufferGetDataPointer(v64, 0, 0, 0, &v59);
  if (v26)
  {
    v51 = v26;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_48();
    goto LABEL_52;
  }

  formatDescription = a5;
  v58 = v22;
  if (NumSamples)
  {
    v27 = 0;
    p_mData = &v22->mBuffers[0].mData;
    v29 = &v22->mBuffers[v18].mData;
    do
    {
      v30 = v27 * mBytesPerFrame;
      if (v18)
      {
        v31 = dataPointerOut;
        v32 = p_mData;
        v33 = v18;
        do
        {
          v34 = *v32;
          v32 += 2;
          memcpy(v31, &v34[v30], mBytesPerFrame);
          v31 = &dataPointerOut[mBytesPerFrame];
          dataPointerOut += mBytesPerFrame;
          --v33;
        }

        while (v33);
      }

      if (v20)
      {
        v35 = v59;
        v36 = v29;
        v37 = v20;
        do
        {
          v38 = *v36;
          v36 += 2;
          memcpy(v35, (v38 + v30), mBytesPerFrame);
          v35 = &v59[mBytesPerFrame];
          v59 += mBytesPerFrame;
          --v37;
        }

        while (v37);
      }

      ++v27;
    }

    while (v27 != NumSamples);
  }

  v39 = OUTLINED_FUNCTION_5_41();
  v45 = CMSampleBufferCreate(v39, v40, v41, v42, v43, v44, NumSamples, 1, &timingInfoOut, 1, &sampleSizeArray, v57);
  if (v45)
  {
    v51 = v45;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_48();
    FigDebugAssert3();
    v22 = v58;
    goto LABEL_31;
  }

  v46 = OUTLINED_FUNCTION_5_41();
  v51 = CMSampleBufferCreate(v46, v47, v48, v49, v50, formatDescription, NumSamples, 1, &timingInfoOut, 1, &v62, v56);
  v22 = v58;
  if (v51)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_48();
    goto LABEL_52;
  }

LABEL_31:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  free(v22);
  return v51;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v5 = 0;
  cf = 0;
  if ([(BWAudioSplitNode *)self _createSplitAndInterleaveFromSampleBuffer:a3 outputFormat1:[(BWFormat *)[(BWNodeOutput *)self->_output1 format:a3] formatDescription] outputBuffer1:&cf outputFormat2:[(BWFormat *)[(BWNodeOutput *)self->_output2 format] formatDescription] outputBuffer2:&v5])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3();
  }

  else
  {
    [(BWNodeOutput *)self->_output1 emitSampleBuffer:cf];
    [(BWNodeOutput *)self->_output2 emitSampleBuffer:v5];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

- (void)initWithInputChannelLayoutTag:(void *)a1 output1ChannelLayoutTag:(uint64_t)a2 output2ChannelLayoutTag:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  fig_log_get_emitter();
  if (FigSignalErrorAtGM())
  {

    a1 = 0;
  }

  *a3 = a1;
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end