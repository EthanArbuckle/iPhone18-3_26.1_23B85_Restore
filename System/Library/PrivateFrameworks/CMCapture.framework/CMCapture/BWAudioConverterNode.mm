@interface BWAudioConverterNode
- (BWAudioConverterNode)init;
- (NSDictionary)gaplessPlaybackInfo;
- (const)_isAPACConversion;
- (uint64_t)_setupAudioCompressionSBPForInputFormat:(uint64_t)format;
- (uint64_t)createFormatDescriptionWithAudioExtension:(const __CFData *)extension withMagicCookie:(CMAudioFormatDescriptionRef *)cookie outputFormatDescription:;
- (void)_handleUpdatedRecordingSettings:(uint64_t)settings;
- (void)_resetAudioCompressionSBP;
- (void)_teardownAudioCompressionSBP;
- (void)acquireHardware;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)relinquishHardware;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setSettings:(id)settings;
@end

@implementation BWAudioConverterNode

- (BWAudioConverterNode)init
{
  v6.receiver = self;
  v6.super_class = BWAudioConverterNode;
  v2 = [(BWNode *)&v6 init];
  if (v2)
  {
    v3 = [[BWNodeInput alloc] initWithMediaType:1936684398 node:v2];
    [(BWNode *)v2 addInput:v3];

    v4 = [[BWNodeOutput alloc] initWithMediaType:1936684398 node:v2];
    [(BWNode *)v2 addOutput:v4];

    [(BWNode *)v2 setSupportsLiveReconfiguration:1];
    [(BWNode *)v2 setRequiresEndOfDataForConfigurationChanges:1];
  }

  return v2;
}

- (void)dealloc
{
  [(BWAudioConverterNode *)self _teardownAudioCompressionSBP];

  v3.receiver = self;
  v3.super_class = BWAudioConverterNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  v5 = [BWAudioFormat formatForAVAudioSettings:self->_settings inputFormat:format];
  output = self->super._output;

  [(BWNodeOutput *)output setFormat:v5];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (format)
  {
    [(BWNodeOutput *)self->super._output setFormat:[BWAudioFormat formatForAVAudioSettings:self->_settings inputFormat:format]];
    if (self->_settings)
    {
      [(BWAudioConverterNode *)self _setupAudioCompressionSBPForInputFormat:format];
    }
  }

  v9.receiver = self;
  v9.super_class = BWAudioConverterNode;
  [(BWNode *)&v9 configurationWithID:d updatedFormat:format didBecomeLiveForInput:input];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  cf = 0;
  if (!buffer)
  {
    [BWAudioConverterNode renderSampleBuffer:forInput:];
    goto LABEL_9;
  }

  if (CMSampleBufferGetDataBuffer(buffer) || CMSampleBufferGetImageBuffer(buffer))
  {
    audioCompressionSBP = self->_audioCompressionSBP;
    if (audioCompressionSBP)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v8 || v8(audioCompressionSBP, buffer))
      {
        [BWAudioConverterNode renderSampleBuffer:forInput:];
      }
    }

    else
    {
      [BWAudioConverterNode renderSampleBuffer:forInput:];
    }
  }

  else
  {
    v9 = CMGetAttachment(buffer, @"FileWriterAction", 0);
    if (([v9 isEqualToString:0x1F21A9C50] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", 0x1F21A9CB0))
    {
      v10 = self->_audioCompressionSBP;
      if (v10)
      {
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v11)
        {
          v11(v10);
        }

        if (self->_cinematicAudioCapture && [(BWAudioConverterNode *)self _isAPACConversion])
        {
          if (FigSampleBufferProcessorCopyProperty(self->_audioCompressionSBP, *MEMORY[0x1E69736D0], &cf))
          {
            [BWAudioConverterNode renderSampleBuffer:forInput:];
            goto LABEL_9;
          }

          CMSetAttachment(buffer, @"TrackFormatDescription", cf, 1u);
          [(BWAudioConverterNode *)self _resetAudioCompressionSBP];
        }
      }
    }

    [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
    v12 = CMGetAttachment(buffer, @"RecordingSettings", 0);
    if (v12)
    {
      [(BWAudioConverterNode *)self _handleUpdatedRecordingSettings:v12];
    }
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (*v6 == 1)
  {
    kdebug_trace();
  }
}

- (void)acquireHardware
{
  audioCompressionSBP = self->_audioCompressionSBP;
  if (audioCompressionSBP)
  {
    MEMORY[0x1EEDCD8C0](audioCompressionSBP, a2);
  }
}

- (void)relinquishHardware
{
  audioCompressionSBP = self->_audioCompressionSBP;
  if (audioCompressionSBP)
  {
    MEMORY[0x1EEDCD8E8](audioCompressionSBP, a2);
  }
}

- (NSDictionary)gaplessPlaybackInfo
{
  v6 = 0;
  audioCompressionSBP = self->_audioCompressionSBP;
  if (audioCompressionSBP)
  {
    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(FigBaseObject, *MEMORY[0x1E69736D8], 0, &v6);
      audioCompressionSBP = v6;
    }

    else
    {
      audioCompressionSBP = 0;
    }
  }

  return audioCompressionSBP;
}

- (void)setSettings:(id)settings
{
  settings = self->_settings;
  if (settings != settings)
  {

    self->_settings = [settings copy];
  }
}

- (void)_teardownAudioCompressionSBP
{
  if (self)
  {
    v2 = *(self + 136);
    if (v2)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v3)
      {
        v3(v2);
      }

      v4 = *(self + 136);
      if (v4)
      {
        CFRelease(v4);
        *(self + 136) = 0;
      }
    }
  }
}

- (uint64_t)_setupAudioCompressionSBPForInputFormat:(uint64_t)format
{
  if (!format)
  {
    return 0;
  }

  desc = 0;
  if (*(format + 136))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_45();
    LODWORD(v18) = 0;
    FigDebugAssert3();
  }

  format = [*(format + 16) format];
  formatDescription = [format formatDescription];
  CMAudioFormatDescriptionGetStreamBasicDescription(formatDescription);
  sizeOut = 0;
  CMAudioFormatDescriptionGetChannelLayout(formatDescription, &sizeOut);
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{objc_msgSend(format, "audioCompressionSBPOptions")}];
  formatDescription2 = [a2 formatDescription];
  if (*(format + 144) == 1)
  {
    v13 = [(BWAudioConverterNode *)format createFormatDescriptionWithAudioExtension:formatDescription2 withMagicCookie:0 outputFormatDescription:&desc];
    v8 = desc;
    if (v13 || !desc)
    {
      goto LABEL_12;
    }

    CMAudioFormatDescriptionGetChannelLayout(desc, &sizeOut);
    [v6 setObject:&unk_1F2243C00 forKeyedSubscript:*MEMORY[0x1E6971650]];
    if ([(BWAudioConverterNode *)format _isAPACConversion])
    {
      [v6 setObject:&unk_1F2243C18 forKeyedSubscript:*MEMORY[0x1E6971638]];
      [v6 setObject:&unk_1F2243C30 forKeyedSubscript:*MEMORY[0x1E6971658]];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = FigSampleBufferProcessorCreateWithAudioCompression();
  if (v9)
  {
    v13 = v9;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_45();
    goto LABEL_13;
  }

  v10 = *(format + 136);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11)
  {
    v13 = 4294954514;
LABEL_12:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_45();
    goto LABEL_13;
  }

  v12 = v11(v10, acn_sampleBufferProcessorOutputCallback, format);
  if (v12)
  {
    v13 = v12;
    goto LABEL_12;
  }

  if (*(format + 144) != 1 || ![(BWAudioConverterNode *)format _isAPACConversion])
  {
LABEL_10:
    v13 = 0;
    goto LABEL_14;
  }

  cf = 0;
  FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v17 = v16(FigBaseObject, *MEMORY[0x1E69736D0], 0, &cf);
    if (!v17)
    {
      [*(format + 16) setFormat:+[BWAudioFormat formatWithAudioFormatDescription:](BWAudioFormat, "formatWithAudioFormatDescription:", cf)];
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_10;
    }

    v13 = v17;
  }

  else
  {
    v13 = 4294954514;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_45();
LABEL_13:
  FigDebugAssert3();
LABEL_14:

  if (v8)
  {
    CFRelease(v8);
  }

  return v13;
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  [(BWAudioConverterNode *)self _teardownAudioCompressionSBP];
  v7.receiver = self;
  v7.super_class = BWAudioConverterNode;
  [(BWNode *)&v7 didReachEndOfDataForConfigurationID:d input:input];
}

- (const)_isAPACConversion
{
  if (result)
  {
    result = CMAudioFormatDescriptionGetStreamBasicDescription([objc_msgSend(*&result->mBytesPerPacket "format")]);
    if (result)
    {
      mFormatID = result->mFormatID;
      return (mFormatID == 1634754915 || mFormatID == 1902211171 || mFormatID == 1667330147);
    }
  }

  return result;
}

- (void)_resetAudioCompressionSBP
{
  if (self)
  {
    v2 = *(self + 136);
    if (v2)
    {
      CFRelease(v2);
      *(self + 136) = 0;
    }

    if ((*(self + 146) & 1) == 0)
    {
      format = [*(self + 8) format];

      [(BWAudioConverterNode *)self _setupAudioCompressionSBPForInputFormat:format];
    }
  }
}

- (void)_handleUpdatedRecordingSettings:(uint64_t)settings
{
  if (!settings)
  {
    return;
  }

  v15 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    goto LABEL_6;
  }

  if (*(settings + 144) != 1)
  {
LABEL_6:
    audioSettings = [a2 audioSettings];
    goto LABEL_7;
  }

  audioSettings = [a2 cinematicAudioSettings];
LABEL_7:
  v5 = audioSettings;
  if (audioSettings)
  {
    if (*(settings + 128) && ([audioSettings isEqual:?] & 1) == 0)
    {
      [(BWAudioConverterNode *)settings _teardownAudioCompressionSBP];

      *(settings + 128) = 0;
    }

    if ((*(settings + 146) & 1) != 0 && !*(settings + 136))
    {
      if (*(settings + 128))
      {
        v14 = 0;
        v13 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();

        *(settings + 128) = 0;
      }
    }

    if (!*(settings + 128))
    {
      *(settings + 128) = v5;
      format = [*(settings + 8) format];
      v8 = [BWAudioFormat formatForAVAudioSettings:*(settings + 128) inputFormat:format];
      v9 = v8;
      if (*(settings + 144) == 1)
      {
        if ([(BWAudioConverterNode *)settings createFormatDescriptionWithAudioExtension:0 withMagicCookie:&v15 outputFormatDescription:?])
        {
          fig_log_get_emitter();
          FigDebugAssert3();
          v10 = v15;
          if (!v15)
          {
            return;
          }

          goto LABEL_22;
        }

        v10 = v15;
        v9 = [BWAudioFormat formatWithAudioFormatDescription:v15];
      }

      else
      {
        v10 = 0;
      }

      [*(settings + 16) setFormat:v9, v11, v12];
      [(BWAudioConverterNode *)settings _setupAudioCompressionSBPForInputFormat:format];
      if (!v10)
      {
        return;
      }

LABEL_22:
      CFRelease(v10);
    }
  }
}

- (uint64_t)createFormatDescriptionWithAudioExtension:(const __CFData *)extension withMagicCookie:(CMAudioFormatDescriptionRef *)cookie outputFormatDescription:
{
  if (!self)
  {
    return 0;
  }

  formatDescriptionOut = 0;
  Extensions = CMFormatDescriptionGetExtensions(desc);
  v9 = CFGetAllocator(desc);
  sizeOut = 0;
  if (*(self + 145))
  {
    v10 = 1885958241;
  }

  else
  {
    v10 = 1667853921;
  }

  v11 = FigCaptureAudioIngestSignalingInfoAtomData(v10);
  v12 = MEMORY[0x1E69600A0];
  if (!Extensions)
  {
    v17 = OUTLINED_FUNCTION_2_2();
    Mutable = CFDictionaryCreateMutable(v17, v18, v19, v20);
    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0]);
  if (!Value || (v14 = CFDictionaryGetValue(Value, @"ngst")) == 0)
  {
LABEL_16:
    v24 = OUTLINED_FUNCTION_2_2();
    Mutable = CFDictionaryCreateMutableCopy(v24, v25, Extensions);
LABEL_17:
    v26 = Mutable;
    if (!Mutable)
    {
      return 4294967246;
    }

    CFDictionaryRemoveValue(Mutable, *MEMORY[0x1E69600D0]);
    CFDictionaryRemoveValue(v26, *MEMORY[0x1E69600C8]);
    v27 = *v12;
    v28 = CFDictionaryGetValue(v26, *v12);
    if (v28)
    {
      v29 = v28;
      v30 = CFGetTypeID(v28);
      if (v30 != CFDictionaryGetTypeID())
      {
        v39 = 0;
        goto LABEL_38;
      }

      v31 = OUTLINED_FUNCTION_2_2();
      MutableCopy = CFDictionaryCreateMutableCopy(v31, v32, v29);
    }

    else
    {
      v35 = OUTLINED_FUNCTION_2_2();
      MutableCopy = CFDictionaryCreateMutable(v35, v36, v37, v38);
    }

    v39 = MutableCopy;
    if (!MutableCopy)
    {
      goto LABEL_38;
    }

    v40 = CFDictionaryGetValue(MutableCopy, @"ngst");
    if (!v40)
    {
      CFDictionaryAddValue(v39, @"ngst", v11);
LABEL_37:
      CFDictionarySetValue(v26, v27, v39);
LABEL_38:
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
      ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(desc, &sizeOut);
      if (extension)
      {
        Length = CFDataGetLength(extension);
      }

      else
      {
        Length = 0;
      }

      v34 = CMAudioFormatDescriptionCreate(v9, StreamBasicDescription, sizeOut, ChannelLayout, Length, extension, v26, &formatDescriptionOut);
      if (v34)
      {
        fig_log_get_emitter();
        FigDebugAssert3();
        if (!v39)
        {
LABEL_44:
          CFRelease(v26);
          if (formatDescriptionOut)
          {
            CFRelease(formatDescriptionOut);
          }

          return v34;
        }
      }

      else
      {
        *cookie = formatDescriptionOut;
        formatDescriptionOut = 0;
        if (!v39)
        {
          goto LABEL_44;
        }
      }

      CFRelease(v39);
      goto LABEL_44;
    }

    v41 = v40;
    v42 = CFGetTypeID(v40);
    if (v42 == CFArrayGetTypeID())
    {
      v43 = OUTLINED_FUNCTION_2_2();
      v45 = CFArrayCreateMutableCopy(v43, v44, v41);
    }

    else
    {
      v46 = CFGetTypeID(v41);
      if (v46 != CFDataGetTypeID())
      {
        v50 = 0;
LABEL_35:
        CFArrayAppendValue(v50, v11);
        CFDictionarySetValue(v39, @"ngst", v50);
        if (v50)
        {
          CFRelease(v50);
        }

        goto LABEL_37;
      }

      v47 = OUTLINED_FUNCTION_2_2();
      v45 = CFArrayCreateMutable(v47, v48, v49);
    }

    v50 = v45;
    goto LABEL_35;
  }

  v15 = v14;
  v16 = CFGetTypeID(v14);
  if (v16 == CFArrayGetTypeID())
  {
    if (!FigCFArrayContainsValue())
    {
      goto LABEL_16;
    }
  }

  else
  {
    v22 = CFGetTypeID(v15);
    if (v22 != CFDataGetTypeID() || !CFEqual(v15, v11))
    {
      goto LABEL_16;
    }
  }

  if (desc)
  {
    v23 = CFRetain(desc);
  }

  else
  {
    v23 = 0;
  }

  v34 = 0;
  *cookie = v23;
  return v34;
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end