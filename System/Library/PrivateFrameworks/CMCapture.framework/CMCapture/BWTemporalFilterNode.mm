@interface BWTemporalFilterNode
+ (void)initialize;
- (__CVBuffer)_createMatchingOutputFormatIfNeededForInputBuffer:(uint64_t)buffer;
- (uint64_t)_dumpFrameMetaData:(uint64_t)result;
- (uint64_t)_dumpFrameStats;
- (uint64_t)_invalidateFilterSession;
- (uint64_t)_shouldBypassTemporalFilteringForSampleBuffer:(uint64_t)result;
- (uint64_t)_updateOutputRequirements;
- (uint64_t)initWithMaxLossyCompression:(void *)compression filterSessionConfiguration:(char)configuration lowLightBandingMitigationEnabled:;
- (void)_dropInputSampleWithPTS:(uint64_t)s;
- (void)_supportedOutputPixelFormats;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWTemporalFilterNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)dealloc
{
  [(BWTemporalFilterNode *)self _invalidateFilterSession];
  inputSampleBufferQueue = self->_inputSampleBufferQueue;
  if (inputSampleBufferQueue)
  {
    CFRelease(inputSampleBufferQueue);
  }

  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSession);
    v5 = self->_pixelTransferSession;
    if (v5)
    {
      CFRelease(v5);
      self->_pixelTransferSession = 0;
    }
  }

  [(BWTemporalFilterNode *)self _dumpFrameStats];
  v6.receiver = self;
  v6.super_class = BWTemporalFilterNode;
  [(BWNode *)&v6 dealloc];
}

- (uint64_t)_dumpFrameStats
{
  if (result)
  {
    if (dword_1EB58E860)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  [(BWNodeOutput *)self->_videoOutput setFormat:format, input];

  [(BWTemporalFilterNode *)self _updateOutputRequirements];
}

id __50__BWTemporalFilterNode_didReachEndOfDataForInput___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = BWTemporalFilterNode;
  return objc_msgSendSuper2(&v3, sel_didReachEndOfDataForInput_, v1);
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v54 = 0;
  pixelBufferOut = 0;
  v53 = 0;
  v52 = **&MEMORY[0x1E6960C70];
  dispatch_assert_queue_V2(self->_sampleBufferSerialQueue);
  p_frameStats = &self->_frameStats;
  framesReceivedCount = self->_frameStats.framesReceivedCount;
  if (framesReceivedCount)
  {
    v8 = 1;
  }

  else
  {
    v8 = dword_1EB58E860 == 0;
  }

  if (!v8)
  {
    v51 = 0;
    v50 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    framesReceivedCount = p_frameStats->framesReceivedCount;
  }

  v10 = __CFADD__(framesReceivedCount, 1);
  v11 = framesReceivedCount + 1;
  v12 = v10;
  p_frameStats->framesReceivedCount = v11;
  if (v12 << 63 >> 63 != v12)
  {
    [(BWTemporalFilterNode *)self _dumpFrameStats];
    if (dword_1EB58E860)
    {
      v51 = 0;
      v50 = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = v51;
      if (os_log_type_enabled(v13, v50))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v41 = 136315394;
        v42 = "[BWTemporalFilterNode renderSampleBuffer:forInput:]";
        v43 = 2112;
        selfCopy2 = self;
        LODWORD(v40) = 22;
        v39 = &v41;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    self->_frameStats.framesDroppedCount = 0;
    *&p_frameStats->framesReceivedCount = 0u;
    *&self->_frameStats.framesWithMCTFAppliedCount = 0u;
  }

  v16 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v16)
  {
    goto LABEL_66;
  }

  if (self->_logMLVNRMetadata)
  {
    [(BWTemporalFilterNode *)self _dumpFrameMetaData:v16];
  }

  Value = CFDictionaryGetValue(v16, *off_1E798A420);
  if (!Value)
  {
    goto LABEL_65;
  }

  CMTimeMakeFromDictionary(&v52, Value);
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer)
  {
    goto LABEL_65;
  }

  v19 = ImageBuffer;
  if (self->_enforceTemporalFilter || !self->_bypassTemporalFilter && ![(BWTemporalFilterNode *)self _shouldBypassTemporalFilteringForSampleBuffer:buffer])
  {
    if (self->_mctfSession)
    {
      if (self->_frameStats.lastFrameWasMLVNRAppliedFrame)
      {
        if (dword_1EB58E860)
        {
          v51 = 0;
          v50 = OS_LOG_TYPE_DEFAULT;
          v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v21 = v51;
          if (os_log_type_enabled(v20, v50))
          {
            v22 = v21;
          }

          else
          {
            v22 = v21 & 0xFFFFFFFE;
          }

          if (v22)
          {
            v23 = [(__CFDictionary *)v16 objectForKeyedSubscript:*off_1E798B4C8];
            v24 = p_frameStats->framesReceivedCount;
            v41 = 136315906;
            v42 = "[BWTemporalFilterNode renderSampleBuffer:forInput:]";
            v43 = 2112;
            selfCopy2 = self;
            v45 = 2112;
            v46 = v23;
            v47 = 2048;
            v48 = v24;
            LODWORD(v40) = 42;
            v39 = &v41;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [(BWTemporalFilterNode *)self _dumpFrameStats];
      }

      self->_frameStats.lastFrameWasMLVNRAppliedFrame = 0;
      ++self->_frameStats.framesWithMCTFAppliedCount;
      if (!self->_mctfUsesMLVNRPixelBufferAttachments)
      {
LABEL_46:
        v49 = v52;
        if (!VTTemporalFilterSessionProcessFrame())
        {
          if (!CMSimpleQueueEnqueue(self->_inputSampleBufferQueue, buffer))
          {
            if (buffer)
            {
              CFRetain(buffer);
            }

            v16 = 0;
            goto LABEL_51;
          }

          [BWTemporalFilterNode renderSampleBuffer:self forInput:?];
        }

        goto LABEL_65;
      }

      v25 = *MEMORY[0x1E695E480];
      IOSurface = CVPixelBufferGetIOSurface(v19);
      Attributes = CVPixelBufferGetAttributes();
      if (!CVPixelBufferCreateWithIOSurface(v25, IOSurface, Attributes, &pixelBufferOut))
      {
        CVBufferPropagateAttachments(v19, pixelBufferOut);
        v28 = CVBufferCopyAttachments(pixelBufferOut, kCVAttachmentMode_ShouldPropagate);
        if (v28 && (v29 = CFAutorelease(v28)) != 0)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v29];
        }

        else
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
        }

        v31 = dictionary;
        v32 = *off_1E798B4C0;
        v33 = [(__CFDictionary *)v16 objectForKeyedSubscript:*off_1E798B4C0, v39, v40];
        if (v33)
        {
          v34 = v33;
          [v31 setObject:v33 forKeyedSubscript:v32];
          if ([v34 BOOLValue])
          {
            ++self->_frameStats.framesWithMLVNRAppliedCount;
          }
        }

        v35 = *off_1E798B4C8;
        v36 = [(__CFDictionary *)v16 objectForKeyedSubscript:*off_1E798B4C8];
        if (v36)
        {
          [v31 setObject:v36 forKeyedSubscript:v35];
        }

        CVBufferSetAttachments(pixelBufferOut, v31, kCVAttachmentMode_ShouldPropagate);
        goto LABEL_46;
      }
    }

LABEL_65:
    v16 = 0;
    goto LABEL_66;
  }

  v16 = [(BWTemporalFilterNode *)self _createMatchingOutputFormatIfNeededForInputBuffer:v19];
  if (!v16)
  {
    videoOutput = self->_videoOutput;
    bufferCopy = buffer;
    goto LABEL_78;
  }

  if (!BWCMSampleBufferCreateCopyWithNewPixelBuffer(buffer, v16, &v54, &v53))
  {
    videoOutput = self->_videoOutput;
    bufferCopy = v53;
LABEL_78:
    [(BWNodeOutput *)videoOutput emitSampleBuffer:bufferCopy, v39, v40];
    ++self->_frameStats.framesDispatchedCount;
LABEL_51:
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if (v53)
    {
      CFRelease(v53);
    }

    if (v54)
    {
      CFRelease(v54);
    }

    return;
  }

LABEL_66:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  v49 = v52;
  [(BWTemporalFilterNode *)self _dropInputSampleWithPTS:?];
}

- (uint64_t)initWithMaxLossyCompression:(void *)compression filterSessionConfiguration:(char)configuration lowLightBandingMitigationEnabled:
{
  if (!self)
  {
    return 0;
  }

  v18.receiver = self;
  v18.super_class = BWTemporalFilterNode;
  v7 = objc_msgSendSuper2(&v18, sel_init);
  v8 = v7;
  if (!v7)
  {
    return v8;
  }

  v7[32] = a2;
  compressionCopy = compression;
  *(v8 + 240) = compressionCopy;
  v10 = [objc_msgSend(compressionCopy objectForKeyedSubscript:{@"ForceEnabled", "BOOLValue"}];
  *(v8 + 170) = 0;
  *(v8 + 171) = v10;
  *(v8 + 232) = 0;
  v11 = 6;
  if ((*(v8 + 168) & 1) == 0)
  {
    if (*(v8 + 169))
    {
      v11 = 6;
    }

    else
    {
      v11 = 4;
    }
  }

  if (CMSimpleQueueCreate(*MEMORY[0x1E695E480], v11, (v8 + 152)))
  {

    return 0;
  }

  *(v8 + 265) = configuration;
  *(v8 + 136) = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v8];
  v12 = objc_alloc_init(BWVideoFormatRequirements);
  if (*(v8 + 265))
  {
    v13 = &unk_1F2249CC0;
  }

  else
  {
    v13 = FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F2249CD8, *(v8 + 128));
  }

  [(BWVideoFormatRequirements *)v12 setSupportedPixelFormats:v13];
  [*(v8 + 136) setFormatRequirements:v12];
  [*(v8 + 136) setPassthroughMode:0];
  [*(v8 + 136) setRetainedBufferCount:v11 | 1];
  [v8 addInput:*(v8 + 136)];
  *(v8 + 160) = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v8];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v11, *MEMORY[0x1E6966150]}];
  v14 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1]);
  [(BWVideoFormatRequirements *)v14 setSupportedPixelFormats:[(BWTemporalFilterNode *)v8 _supportedOutputPixelFormats]];
  [*(v8 + 160) setFormatRequirements:v14];
  if (*(v8 + 169) == 1)
  {
    [*(v8 + 160) setOwningNodeRetainedBufferCount:v11];
  }

  [v8 addOutput:*(v8 + 160)];
  *(v8 + 184) = 0u;
  *(v8 + 200) = 0u;
  *(v8 + 216) = 0u;
  *(v8 + 233) = 1;
  *(v8 + 256) = objc_alloc_init(MEMORY[0x1E695DFA8]);
  return v8;
}

- (void)_supportedOutputPixelFormats
{
  if (!self)
  {
    return 0;
  }

  if (*(self + 265))
  {
    return &unk_1F2249CF0;
  }

  v2 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F2249CD8];
  v3 = [objc_msgSend(*(self + 136) "videoFormat")];
  if (v3)
  {
    IsFullRange = FigCapturePixelFormatIsFullRange(v3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__BWTemporalFilterNode__supportedOutputPixelFormats__block_invoke;
    v6[3] = &__block_descriptor_33_e35_B24__0__NSNumber_8__NSDictionary_16l;
    v7 = IsFullRange;
    [v2 filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v6)}];
  }

  return v2;
}

- (uint64_t)_invalidateFilterSession
{
  if (result)
  {
    v1 = result;
    VTTemporalFilterSessionInvalidate();
    v2 = *(v1 + 144);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 144) = 0;
    }

    *(v1 + 144) = 0;
    v3 = *(v1 + 152);

    return CMSimpleQueueReset(v3);
  }

  return result;
}

- (uint64_t)_dumpFrameMetaData:(uint64_t)result
{
  if (result && a2)
  {
    if (dword_1EB58E860)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_2_4();
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

- (uint64_t)_updateOutputRequirements
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(*(result + 136) "videoFormat")];
    if (v2)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:v2];
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
    }

    else
    {
      v3 = 0;
    }

    _supportedOutputPixelFormats = [(BWTemporalFilterNode *)v1 _supportedOutputPixelFormats];
    formatRequirements = [*(v1 + 160) formatRequirements];
    [objc_msgSend(*(v1 + 136) "videoFormat")];
    [OUTLINED_FUNCTION_7() setWidth:?];
    [objc_msgSend(*(v1 + 136) "videoFormat")];
    [OUTLINED_FUNCTION_7() setHeight:?];
    [formatRequirements setSupportedColorSpaceProperties:v3];
    return [formatRequirements setSupportedPixelFormats:_supportedOutputPixelFormats];
  }

  return result;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v14.receiver = self;
  v14.super_class = BWTemporalFilterNode;
  [(BWNode *)&v14 prepareForCurrentConfigurationToBecomeLive];
  if (!self->_mctfSession)
  {
    if ([(BWPipelineStage *)[(BWNodeConnection *)[(BWNodeInput *)self->_videoInput connection] pipelineStage] queue])
    {
      self->_sampleBufferSerialQueue = [(BWPipelineStage *)[(BWNodeConnection *)[(BWNodeInput *)self->_videoInput connection] pipelineStage] queue];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BWVideoFormat pixelFormat](-[BWNodeInput videoFormat](self->_videoInput, "videoFormat"), "pixelFormat")}];
      v5 = *MEMORY[0x1E6966130];
      [dictionary setObject:v4 forKeyedSubscript:*MEMORY[0x1E6966130]];
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[BWVideoFormat width](-[BWNodeInput videoFormat](self->_videoInput, "videoFormat"), "width")}];
      v13 = *MEMORY[0x1E6966208];
      [dictionary setObject:v6 forKeyedSubscript:?];
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[BWVideoFormat height](-[BWNodeInput videoFormat](self->_videoInput, "videoFormat"), "height")}];
      v12 = *MEMORY[0x1E69660B8];
      [dictionary setObject:v7 forKeyedSubscript:?];
      v11 = *MEMORY[0x1E69660D8];
      [dictionary setObject:MEMORY[0x1E695E0F8] forKeyedSubscript:?];
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", getpid()), *MEMORY[0x1E6984150]}];
      [dictionary2 setObject:@"BWTemporalFilterNode" forKeyedSubscript:*MEMORY[0x1E6984158]];
      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      [dictionary3 setObject:@"com.apple.videotoolbox.temporalfilter.mctf" forKeyedSubscript:*MEMORY[0x1E6984160]];
      dictionary4 = [MEMORY[0x1E695DF90] dictionary];
      [dictionary4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", -[BWVideoFormat pixelFormat](-[BWNodeOutput videoFormat](self->_videoOutput, "videoFormat"), "pixelFormat")), v5}];
      [(BWVideoFormat *)[(BWNodeOutput *)self->_videoOutput videoFormat] width];
      [dictionary4 setObject:objc_msgSend(OUTLINED_FUNCTION_7() forKeyedSubscript:{"numberWithUnsignedLong:"), v13}];
      [(BWVideoFormat *)[(BWNodeOutput *)self->_videoOutput videoFormat] height];
      [dictionary4 setObject:objc_msgSend(OUTLINED_FUNCTION_7() forKeyedSubscript:{"numberWithUnsignedLong:"), v12}];
      [dictionary4 setObject:MEMORY[0x1E695E0F8] forKeyedSubscript:v11];
      [(BWVideoFormat *)[(BWNodeInput *)self->_videoInput videoFormat] width];
      [(BWVideoFormat *)[(BWNodeInput *)self->_videoInput videoFormat] height];
      VTTemporalFilterSessionCreate();
    }
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (self->_videoInput == input)
  {
    if (self->_mctfSession)
    {
      cvPixelBufferPool = [(BWPixelBufferPool *)[(BWNodeOutput *)self->_videoOutput preparedPixelBufferPool:d] cvPixelBufferPool];
      if (cvPixelBufferPool)
      {
        VTSessionSetProperty(self->_mctfSession, *MEMORY[0x1E6984140], cvPixelBufferPool);
        VTSessionSetProperty(self->_mctfSession, *MEMORY[0x1E6984130], *MEMORY[0x1E6984110]);
        VTSessionSetProperty(self->_mctfSession, *MEMORY[0x1E6984148], *MEMORY[0x1E695E4D0]);
        VTSessionSetProperty(self->_mctfSession, @"TemporalFilterPriority", &unk_1F2246DF8);
        VTSessionSetProperty(self->_mctfSession, *MEMORY[0x1E6984128], &unk_1F2246E10);
        [(BWNodeOutput *)self->_videoOutput makeConfiguredFormatLive];
        if (dword_1EB58E860)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }
  }
}

- (void)didReachEndOfDataForInput:(id)input
{
  dispatch_assert_queue_V2(self->_sampleBufferSerialQueue);
  if (self->_mctfSession)
  {
    self->_didReachEODForVideoInput = 1;
    VTTemporalFilterSessionCompleteFrames();
    sampleBufferSerialQueue = self->_sampleBufferSerialQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__BWTemporalFilterNode_didReachEndOfDataForInput___block_invoke;
    v6[3] = &unk_1E798F898;
    v6[4] = input;
    v6[5] = self;
    dispatch_async(sampleBufferSerialQueue, v6);
  }
}

- (__CVBuffer)_createMatchingOutputFormatIfNeededForInputBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return 0;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (PixelFormatType == [objc_msgSend(*(buffer + 160) "videoFormat")] || !*(buffer + 176) && (VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], (buffer + 176)) || !*(buffer + 176)))
  {
    return 0;
  }

  v5 = [objc_msgSend(*(buffer + 16) "livePixelBufferPool")];
  if (v5)
  {
    VTPixelTransferSessionTransferImage(*(buffer + 176), pixelBuffer, v5);
  }

  return v5;
}

- (uint64_t)_shouldBypassTemporalFilteringForSampleBuffer:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    result = CMGetAttachment(target, *off_1E798A3C8, 0);
    if (result)
    {
      v4 = result;
      result = [objc_msgSend(result objectForKey:{*off_1E798B4C0), "BOOLValue"}];
      if (result)
      {
        v5 = *off_1E798B4C8;
        if ([v4 objectForKey:*off_1E798B4C8] && (objc_msgSend(objc_msgSend(v4, "objectForKey:", v5), "BOOLValue") & 1) != 0)
        {
          return 0;
        }

        else
        {
          if (!*(v3 + 192) && dword_1EB58E860)
          {
            v6 = OUTLINED_FUNCTION_3_105();
            if (OUTLINED_FUNCTION_96(v6))
            {
              v7 = v2;
            }

            else
            {
              v7 = v2 & 0xFFFFFFFE;
            }

            if (v7)
            {
              OUTLINED_FUNCTION_1_128();
              OUTLINED_FUNCTION_58_1();
              v2 = v10;
            }

            OUTLINED_FUNCTION_2_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if ((*(v3 + 224) & 1) == 0)
          {
            if ((*(v3 + 171) & 1) == 0 && *(v3 + 184))
            {
              VTTemporalFilterSessionCompleteFrames();
            }

            if (dword_1EB58E860)
            {
              v8 = OUTLINED_FUNCTION_3_105();
              if (OUTLINED_FUNCTION_96(v8))
              {
                v9 = v2;
              }

              else
              {
                v9 = v2 & 0xFFFFFFFE;
              }

              if (v9)
              {
                OUTLINED_FUNCTION_1_128();
                OUTLINED_FUNCTION_58_1();
              }

              OUTLINED_FUNCTION_2_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [(BWTemporalFilterNode *)v3 _dumpFrameStats];
          }

          ++*(v3 + 192);
          result = 1;
          *(v3 + 224) = 1;
        }
      }
    }
  }

  return result;
}

- (void)_dropInputSampleWithPTS:(uint64_t)s
{
  if (s)
  {
    if (*(a2 + 12))
    {
      ++*(s + 216);
      v4 = *a2;
      v5 = *(a2 + 2);
      v3 = [BWDroppedSample newDroppedSampleWithReason:0x1F219C150 pts:&v4];
      [*(s + 160) emitDroppedSample:v3];
    }
  }
}

@end