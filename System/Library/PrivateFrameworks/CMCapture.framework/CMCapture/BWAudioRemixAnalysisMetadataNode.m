@interface BWAudioRemixAnalysisMetadataNode
+ (void)initialize;
- (BWAudioRemixAnalysisMetadataNode)init;
- (__n128)_sendRemixMetadataSampleBuffer;
- (void)_emitCopyOfMarkerBuffer:(void *)a3 onOutput:(int)a4 isStartMarkerBuffer:;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)resetAnalyzer;
@end

@implementation BWAudioRemixAnalysisMetadataNode

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWAudioRemixAnalysisMetadataNode)init
{
  v22.receiver = self;
  v22.super_class = BWAudioRemixAnalysisMetadataNode;
  v2 = [(BWNode *)&v22 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 26) = 0;
    *(v2 + 16) = 0;
    v2[136] = 0;
    *(v2 + 18) = 0;
    v4 = MEMORY[0x1E6960C70];
    v5 = *MEMORY[0x1E6960C70];
    *(v2 + 156) = *MEMORY[0x1E6960C70];
    v6 = *(v4 + 16);
    *(v2 + 172) = v6;
    *(v2 + 180) = v5;
    *(v2 + 196) = v6;
    v7 = [[BWNodeInput alloc] initWithMediaType:1936684398 node:v2];
    if (v7)
    {
      v8 = v7;
      [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v7 primaryMediaConfiguration] setPassthroughMode:1];
      [(BWNodeInput *)v8 setName:@"AudioRemixAnalysisPassthroughInput"];
      [(BWNode *)v3 addInput:v8];

      v9 = [[BWNodeOutput alloc] initWithMediaType:1936684398 node:v3];
      [(BWNodeOutput *)v9 setIndexOfInputWhichDrivesThisOutput:0];
      [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v9 primaryMediaConfiguration] setPassthroughMode:1];
      [(BWNodeOutput *)v9 setName:@"AudioRemixAnalysisPassthroughOutput"];
      [(BWNode *)v3 addOutput:v9];

      v3->_metadataOutput = 0;
      v10 = *MEMORY[0x1E6960338];
      v20[0] = *MEMORY[0x1E6960348];
      v20[1] = v10;
      v11 = *MEMORY[0x1E6960260];
      v21[0] = @"mdta/com.apple.quicktime.cinematic-audio";
      v21[1] = v11;
      v20[2] = *MEMORY[0x1E6960358];
      v18 = *MEMORY[0x1E6960360];
      v19 = *MEMORY[0x1E695E4C0];
      v21[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v12, &v3->_audioMetadataFormatDescription))
      {
        [BWAudioRemixAnalysisMetadataNode init];
      }

      else
      {
        v13 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v3];
        if (v13)
        {
          v14 = v13;
          [(BWNodeOutput *)v13 setName:@"AudioRemixAnalysisMetadataOutput"];
          [(BWNodeOutput *)v14 setFormat:[BWMetadataFormat formatWithMetadataFormatDescription:v3->_audioMetadataFormatDescription]];
          [(BWNode *)v3 addOutput:v14];
          v3->_metadataOutput = v14;

          v15 = [[AudioRemixSessionManager alloc] initWithNodeMetadataOutput:v3->_metadataOutput];
          v3->_movieRemixSessionManager = v15;
          if (v15)
          {
            [(BWNode *)v3 setSupportsLiveReconfiguration:1];
            [(BWNode *)v3 setSupportsPrepareWhileRunning:1];
            return v3;
          }

          [BWAudioRemixAnalysisMetadataNode init];
        }

        else
        {
          [BWAudioRemixAnalysisMetadataNode init];
        }
      }
    }

    else
    {
      [BWAudioRemixAnalysisMetadataNode init];
    }

    return 0;
  }

  return v3;
}

- (void)dealloc
{
  audioMetadataFormatDescription = self->_audioMetadataFormatDescription;
  if (audioMetadataFormatDescription)
  {
    CFRelease(audioMetadataFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWAudioRemixAnalysisMetadataNode;
  [(BWNode *)&v4 dealloc];
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  [(AudioRemixSessionManager *)self->_movieRemixSessionManager abortSessionIfNeeded];
  [(AudioRemixSessionManager *)self->_movieRemixSessionManager setFormatSampleRate:0 andChannelCount:0.0];
  [(BWNodeOutput *)self->super._output markEndOfLiveOutputForConfigurationID:a3];
  metadataOutput = self->_metadataOutput;

  [(BWNodeOutput *)metadataOutput markEndOfLiveOutputForConfigurationID:a3];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  memset(&v23, 0, sizeof(v23));
  CMSampleBufferGetPresentationTimeStamp(&v23, a3);
  *(&self->_startRecordingPTS.epoch + 4) = *&v23.value;
  *&self->_currentPTS.flags = v23.epoch;
  if (!BWSampleBufferIsMarkerBuffer(a3))
  {
    if (!self->_shouldSendData || ![(AudioRemixSessionManager *)self->_movieRemixSessionManager sessionReady])
    {
      goto LABEL_15;
    }

    if (a3)
    {
      FormatDescription = CMSampleBufferGetFormatDescription(a3);
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
      if (!FormatDescription)
      {
        [BWAudioRemixAnalysisMetadataNode renderSampleBuffer:v20 forInput:?];
        v15 = 0;
        v11 = 0;
LABEL_32:
        v14 = v20[0];
LABEL_12:

        if (v14)
        {
          [BWAudioRemixAnalysisMetadataNode renderSampleBuffer:forInput:];
        }

        else if (v15)
        {
          [(AudioRemixSessionManager *)self->_movieRemixSessionManager submitAudioBuffer:v15];
        }

        else
        {
          [BWAudioRemixAnalysisMetadataNode renderSampleBuffer:forInput:];
        }

        goto LABEL_15;
      }

      v11 = StreamBasicDescription;
      if (StreamBasicDescription)
      {
        v12 = [objc_alloc(MEMORY[0x1E69583D0]) initWithLayoutTag:StreamBasicDescription->mChannelsPerFrame | 0x930000];
        v11 = [objc_alloc(MEMORY[0x1E6958418]) initWithStreamDescription:v11 channelLayout:v12];

        NumSamples = CMSampleBufferGetNumSamples(a3);
        FormatDescription = [objc_alloc(MEMORY[0x1E6958440]) initWithPCMFormat:v11 frameCapacity:NumSamples];
        [(opaqueCMFormatDescription *)FormatDescription setFrameLength:NumSamples];
        v14 = CMSampleBufferCopyPCMDataIntoAudioBufferList(a3, 0, NumSamples, [(opaqueCMFormatDescription *)FormatDescription mutableAudioBufferList]);
        if (v14)
        {
          [BWAudioRemixAnalysisMetadataNode renderSampleBuffer:forInput:];
          v15 = 0;
        }

        else
        {
          v15 = FormatDescription;
        }

        goto LABEL_12;
      }

      [BWAudioRemixAnalysisMetadataNode renderSampleBuffer:v20 forInput:?];
      v15 = 0;
    }

    else
    {
      [BWAudioRemixAnalysisMetadataNode renderSampleBuffer:v20 forInput:?];
      v15 = 0;
      v11 = 0;
    }

    FormatDescription = 0;
    goto LABEL_32;
  }

  v6 = CMGetAttachment(a3, @"FileWriterAction", 0);
  v7 = CFEqual(v6, @"Start");
  v8 = CFEqual(v6, @"Stop");
  if (v6)
  {
    if (v7)
    {
      *(&self->_expectsToRecordOnlyOnce + 3) = v23;
    }

    else
    {
      v16 = v8;
      if (!CFEqual(v6, @"Resume"))
      {
        if (!v16)
        {
          [BWAudioRemixAnalysisMetadataNode renderSampleBuffer:v6 forInput:self];
          goto LABEL_21;
        }

        if ([BWAudioRemixAnalysisMetadataNode renderSampleBuffer:? forInput:?])
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }
    }

    if (!self->_expectsToRecordOnlyOnce || [(AudioRemixSessionManager *)self->_movieRemixSessionManager sessionReady]|| ([(AudioRemixSessionManager *)self->_movieRemixSessionManager setMultiCamClientCompositingEnabled:self->_multiCamClientCompositingEnabled], v22 = 0, v21 = 0, os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), ![(AudioRemixSessionManager *)self->_movieRemixSessionManager startNewSessionBlocking]))
    {
      self->_shouldSendData = 1;
      goto LABEL_21;
    }

LABEL_15:
    [(BWNodeOutput *)self->super._output emitSampleBuffer:a3, v18, v19];
    return;
  }

LABEL_21:
  [(BWAudioRemixAnalysisMetadataNode *)self renderSampleBuffer:a3 forInput:v7 != 0];
}

- (void)resetAnalyzer
{
  [(AudioRemixSessionManager *)self->_movieRemixSessionManager abortSessionIfNeeded];
  [(AudioRemixSessionManager *)self->_movieRemixSessionManager setFormatSampleRate:0 andChannelCount:0.0];
  v3 = MEMORY[0x1E6960C70];
  v4 = *MEMORY[0x1E6960C70];
  *(&self->_expectsToRecordOnlyOnce + 3) = *MEMORY[0x1E6960C70];
  v5 = *(v3 + 16);
  *&self->_startRecordingPTS.flags = v5;
  *(&self->_startRecordingPTS.epoch + 4) = v4;
  *&self->_currentPTS.flags = v5;
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  [(BWNodeOutput *)self->super._output makeConfiguredFormatLive:a3];
  [(BWNodeOutput *)self->_metadataOutput makeConfiguredFormatLive];
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription([a4 audioFormatDescription]);
  movieRemixSessionManager = self->_movieRemixSessionManager;
  if (movieRemixSessionManager)
  {
    mSampleRate = StreamBasicDescription->mSampleRate;
    [(AudioRemixSessionManager *)movieRemixSessionManager sampleRate];
    if (mSampleRate != v10 || (mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame, mChannelsPerFrame != [(AudioRemixSessionManager *)self->_movieRemixSessionManager channelCount]))
    {
      [(AudioRemixSessionManager *)self->_movieRemixSessionManager setFormatSampleRate:StreamBasicDescription->mChannelsPerFrame andChannelCount:StreamBasicDescription->mSampleRate];
      [(AudioRemixSessionManager *)self->_movieRemixSessionManager setMultiCamClientCompositingEnabled:self->_multiCamClientCompositingEnabled];
      v12 = self->_movieRemixSessionManager;

      [(AudioRemixSessionManager *)v12 startNewSessionBlocking];
    }
  }
}

- (__n128)_sendRemixMetadataSampleBuffer
{
  if (a1)
  {
    v2 = (a1 + 180);
    if (*(a1 + 192))
    {
      v3 = (a1 + 156);
      if (*(a1 + 168))
      {
        v4 = *(a1 + 128);
        v9 = *v3;
        v10 = *(a1 + 172);
        v7 = *v2;
        v8 = *(v2 + 2);
        [v4 finishAndGetResultsBlockingWithStartingPTS:&v9 andEndingPTS:&v7];
        v5 = MEMORY[0x1E6960C70];
        result = *MEMORY[0x1E6960C70];
        *(a1 + 156) = *MEMORY[0x1E6960C70];
        *(a1 + 172) = *(v5 + 16);
      }
    }
  }

  return result;
}

- (void)_emitCopyOfMarkerBuffer:(void *)a3 onOutput:(int)a4 isStartMarkerBuffer:
{
  if (a1 && a3)
  {
    sampleBufferOut = 0;
    memset(&v11, 0, sizeof(v11));
    CMSampleBufferGetPresentationTimeStamp(&v11, sbuf);
    if (CMSampleBufferCreateCopy(*MEMORY[0x1E695E480], sbuf, &sampleBufferOut))
    {
      if (*(a1 + 144) == a3)
      {
        v8 = &BWDroppedSampleReasonCinematicVideoMetadataFailure;
      }

      else
      {
        v8 = BWDroppedSampleReasonCinematicAudioMetadataFailure;
      }

      v9 = *v8;
      v10 = v11;
      [a3 emitDroppedSample:{+[BWDroppedSample newDroppedSampleWithReason:pts:](BWDroppedSample, "newDroppedSampleWithReason:pts:", v9, &v10)}];
    }

    else
    {
      if (a4 && *(a1 + 144) == a3)
      {
        CMSetAttachment(sampleBufferOut, @"TrackFormatDescription", *(a1 + 208), 1u);
      }

      [a3 emitSampleBuffer:sampleBufferOut];
      if (sampleBufferOut)
      {
        CFRelease(sampleBufferOut);
      }
    }
  }
}

- (uint64_t)renderSampleBuffer:(_DWORD *)a1 forInput:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)renderSampleBuffer:(_DWORD *)a1 forInput:.cold.3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)renderSampleBuffer:(_DWORD *)a1 forInput:.cold.4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (BOOL)renderSampleBuffer:(uint64_t)a1 forInput:.cold.7(uint64_t a1)
{
  *(a1 + 136) = 0;
  *&v2 = [(BWAudioRemixAnalysisMetadataNode *)a1 _sendRemixMetadataSampleBuffer].n128_u64[0];
  v3 = *(a1 + 128);
  if (*(a1 + 153) == 1)
  {
    [v3 abortSessionIfNeeded];
    return 1;
  }

  [v3 setMultiCamClientCompositingEnabled:{*(a1 + 152), v2}];
  return ![*(a1 + 128) startNewSessionBlocking];
}

- (uint64_t)renderSampleBuffer:(const void *)a1 forInput:(uint64_t)a2 .cold.8(const void *a1, uint64_t a2)
{
  result = CFEqual(a1, @"Terminate");
  if (result || (result = CFEqual(a1, @"Pause"), result))
  {
    *(a2 + 136) = 0;
  }

  return result;
}

@end