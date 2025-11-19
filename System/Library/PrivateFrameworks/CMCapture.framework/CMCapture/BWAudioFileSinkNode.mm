@interface BWAudioFileSinkNode
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastFileDuration;
- (BWAudioFileSinkNode)initWithSinkID:(id)a3;
- (uint64_t)_applyRecordingLimits;
- (uint64_t)_handleMarkerBuffer:(unint64_t)a1;
- (uint64_t)_setupFileWriter;
- (uint64_t)_setupStateMachine;
- (uint64_t)_stopRecordingWithError:(uint64_t)result;
- (uint64_t)_teardownFileWriter;
- (unint64_t)_setupMinFreeDiskSpace;
- (unint64_t)lastFileSize;
- (void)_updateFilePropertiesForSbuf:(uint64_t)a1;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWAudioFileSinkNode

- (BWAudioFileSinkNode)initWithSinkID:(id)a3
{
  v7.receiver = self;
  v7.super_class = BWAudioFileSinkNode;
  v3 = [(BWSinkNode *)&v7 initWithSinkID:a3];
  if (v3)
  {
    v5 = [[BWNodeInput alloc] initWithMediaType:1936684398 node:v3 index:0];
    [v3 addInput:v5];

    *(v3 + 41) = dispatch_queue_create("com.apple.celestial.capture.audiofilesink.PropertySyncQueue", 0);
    [(BWAudioFileSinkNode *)v3 _setupStateMachine];
    v6 = MEMORY[0x1E6960C70];
    *(v3 + 264) = *MEMORY[0x1E6960C70];
    *(v3 + 35) = *(v6 + 16);
  }

  return v3;
}

- (void)dealloc
{
  [(BWAudioFileSinkNode *)self _stopRecordingWithError:?];

  free(self->_parentPath);
  v3.receiver = self;
  v3.super_class = BWAudioFileSinkNode;
  [(BWSinkNode *)&v3 dealloc];
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  v5.receiver = self;
  v5.super_class = BWAudioFileSinkNode;
  [(BWSinkNode *)&v5 configurationWithID:a3 updatedFormat:a4 didBecomeLiveForInput:a5];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (a3)
  {
    if (CMSampleBufferGetDataBuffer(a3))
    {
      formatWriter = self->_formatWriter;
      if (!formatWriter)
      {
        return;
      }

      if (self->_didBeginFileWriterSession)
      {
        goto LABEL_8;
      }

      CMSampleBufferGetPresentationTimeStamp(&v16, a3);
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v13)
      {
        v17 = v16;
        v15 = v13(formatWriter, &v17);
        if (!v15)
        {
          self->_didBeginFileWriterSession = 1;
LABEL_8:
          v9 = [(BWAudioFileSinkNode *)self _applyRecordingLimits];
          if (v9)
          {
            v8 = v9;
            [BWAudioFileSinkNode renderSampleBuffer:forInput:];
          }

          else
          {
            v10 = self->_formatWriter;
            trackID = self->_trackID;
            v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v12)
            {
              v14 = v12(v10, trackID, a3);
              if (!v14)
              {
                [(BWAudioFileSinkNode *)self _updateFilePropertiesForSbuf:a3];
                return;
              }

              v8 = v14;
            }

            else
            {
              v8 = 4294954514;
            }

            [BWAudioFileSinkNode renderSampleBuffer:forInput:];
          }

LABEL_15:
          [(BWAudioFileSinkNode *)self _stopRecordingWithError:v8];
          return;
        }

        v8 = v15;
      }

      else
      {
        v8 = 4294954514;
      }

      [BWAudioFileSinkNode renderSampleBuffer:forInput:];
      goto LABEL_15;
    }

    v7 = [(BWAudioFileSinkNode *)self _handleMarkerBuffer:a3];
    if (v7)
    {
      v8 = v7;
      [BWAudioFileSinkNode renderSampleBuffer:forInput:];
      goto LABEL_15;
    }
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastFileDuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1AD138BA7;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  propertySyncQueue = self->_propertySyncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__BWAudioFileSinkNode_lastFileDuration__block_invoke;
  block[3] = &unk_1E798FAF8;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(propertySyncQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __39__BWAudioFileSinkNode_lastFileDuration__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 288);
  v3 = *(*(a1 + 32) + 304);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- (unint64_t)lastFileSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertySyncQueue = self->_propertySyncQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__BWAudioFileSinkNode_lastFileSize__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertySyncQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__41__BWAudioFileSinkNode__setupStateMachine__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [a2 recordingStatusDelegate];
  if (result)
  {
    v4 = *(a2 + 256);
    v5 = *(a2 + 264);
    v6 = *(a2 + 280);
    return [result fileWriter:a2 startedRecordingForSettings:v4 writerPipelineIndex:0 startPTS:&v5];
  }

  return result;
}

uint64_t __41__BWAudioFileSinkNode__setupStateMachine__block_invoke_2(uint64_t a1, id *a2)
{
  result = [a2 recordingStatusDelegate];
  if (result)
  {
    v4 = result;
    v5 = [a2[32] settingsID];

    return [v4 fileWriter:a2 pausedRecordingForSettingsID:v5];
  }

  return result;
}

uint64_t __41__BWAudioFileSinkNode__setupStateMachine__block_invoke_3(uint64_t a1, id *a2)
{
  result = [a2 recordingStatusDelegate];
  if (result)
  {
    v4 = result;
    v5 = [a2[32] settingsID];

    return [v4 fileWriter:a2 resumedRecordingForSettingsID:v5];
  }

  return result;
}

void *__41__BWAudioFileSinkNode__setupStateMachine__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = [a2 recordingStatusDelegate];
  if (result)
  {
    LOBYTE(v9) = a5 == 0;
    return [result fileWriter:a2 writerPipelineIndex:0 stoppedRecordingForSettings:*(*(a1 + 32) + 256) withError:a5 thumbnailSurface:0 irisMovieInfo:0 debugMetadataSidecarFileURL:0 recordingSucceeded:v9];
  }

  return result;
}

size_t __52__BWAudioFileSinkNode__updateFilePropertiesForSbuf___block_invoke(uint64_t a1)
{
  memset(&v10, 0, sizeof(v10));
  CMSampleBufferGetDuration(&v10, *(a1 + 40));
  v2 = *(a1 + 32) + 288;
  v3 = *v2;
  lhs.epoch = *(*(a1 + 32) + 304);
  *&lhs.value = v3;
  v7 = v10;
  CMTimeAdd(&v9, &lhs, &v7);
  v4 = *&v9.value;
  *(v2 + 16) = v9.epoch;
  *v2 = v4;
  DataBuffer = CMSampleBufferGetDataBuffer(*(a1 + 40));
  result = CMBlockBufferGetDataLength(DataBuffer);
  *(*(a1 + 32) + 312) += result;
  return result;
}

void __45__BWAudioFileSinkNode__setupMinFreeDiskSpace__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    _setupMinFreeDiskSpace_sSystemMinFreeDiskSpace = [objc_msgSend(v0 objectForKeyedSubscript:{*MEMORY[0x1E69E5110]), "longLongValue"}];
  }
}

__n128 __39__BWAudioFileSinkNode__setupFileWriter__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32) + 288;
  v2 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *v1 = *MEMORY[0x1E6960CC0];
  *(v1 + 16) = *(v2 + 16);
  *(*(a1 + 32) + 312) = 0;
  return result;
}

- (uint64_t)_setupStateMachine
{
  if (result)
  {
    v1 = result;
    v2 = [[FigStateMachine alloc] initWithLabel:@"BWAudioFileSinkNodeState" stateCount:3 initialState:1 owner:result];
    *(v1 + 216) = v2;
    [(FigStateMachine *)v2 setLabel:@"Idle" forState:1];
    [OUTLINED_FUNCTION_3_95() setLabel:@"Recording" forState:2];
    [OUTLINED_FUNCTION_3_95() setLabel:@"Paused" forState:4];
    [OUTLINED_FUNCTION_3_95() whenTransitioningFromState:1 toState:2 callHandler:&__block_literal_global_116];
    [OUTLINED_FUNCTION_3_95() whenTransitioningFromState:2 toState:4 callHandler:&__block_literal_global_29_0];
    [OUTLINED_FUNCTION_3_95() whenTransitioningFromState:4 toState:2 callHandler:&__block_literal_global_31_1];
    v3 = OUTLINED_FUNCTION_3_95();
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __41__BWAudioFileSinkNode__setupStateMachine__block_invoke_4;
    v4[3] = &unk_1E799BDA0;
    v4[4] = v1;
    return [v3 whenTransitioningToState:1 callHandler:v4];
  }

  return result;
}

- (uint64_t)_stopRecordingWithError:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [(BWAudioFileSinkNode *)result _teardownFileWriter];
    result = [*(v3 + 216) currentState];
    if (result != 1)
    {
      v4 = *(v3 + 216);

      return [v4 transitionToState:1 errorStatus:a2];
    }
  }

  return result;
}

- (void)didReachEndOfDataForInput:(id)a3
{
  [(BWAudioFileSinkNode *)self _stopRecordingWithError:?];
  v5.receiver = self;
  v5.super_class = BWAudioFileSinkNode;
  [(BWSinkNode *)&v5 didReachEndOfDataForInput:a3];
}

- (uint64_t)_handleMarkerBuffer:(unint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = CMGetAttachment(target, @"FileWriterAction", 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!CFEqual(v4, @"Start"))
  {
    if (CFEqual(v5, @"Pause"))
    {
      v6 = *(a1 + 216);
      v7 = 4;
      v8 = 2;
    }

    else
    {
      if (!CFEqual(v5, @"Resume"))
      {
        if (CFEqual(v5, @"Stop"))
        {
          [(BWAudioFileSinkNode *)a1 _stopRecordingWithError:?];
        }

        return 0;
      }

      v6 = *(a1 + 216);
      v7 = 2;
      v8 = 4;
    }

    [v6 transitionToState:v7 fromState:v8];
    return 0;
  }

  [(BWAudioFileSinkNode *)a1 _stopRecordingWithError:?];
  v11 = CMGetAttachment(target, @"RecordingSettings", 0);
  if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = v12;

    *(a1 + 256) = v12;
    CMSampleBufferGetPresentationTimeStamp(&v14, target);
    *(a1 + 264) = v14;
    v9 = [(BWAudioFileSinkNode *)a1 _setupFileWriter];
    if (v9)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_33();
      FigDebugAssert3();
    }

    else
    {
      [*(a1 + 216) transitionToState:2];
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    FigDebugAssert3();
    return 4294954516;
  }

  return v9;
}

- (uint64_t)_applyRecordingLimits
{
  if (result)
  {
    v1 = result;
    if (BWGetFreeDiskSpaceAtPath(*(result + 248)) < *(result + 320))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      FigDebugAssert3();
      return 4294950885;
    }

    else if ([OUTLINED_FUNCTION_4_84() maxFileSize] >= 1 && (value = v1[13].value, value > objc_msgSend(OUTLINED_FUNCTION_4_84(), "maxFileSize")))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      FigDebugAssert3();
      return 4294950884;
    }

    else
    {
      result = OUTLINED_FUNCTION_4_84();
      if (result)
      {
        [result maxDuration];
        if ((v7 & 1) == 0)
        {
          return 0;
        }

        v3 = OUTLINED_FUNCTION_4_84();
        if (v3)
        {
          [v3 maxDuration];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        time2 = **&MEMORY[0x1E6960CC0];
        if (CMTimeCompare(&time1, &time2))
        {
          return 0;
        }

        v4 = OUTLINED_FUNCTION_4_84();
        if (v4)
        {
          [v4 maxDuration];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        time2 = v1[12];
        if (CMTimeCompare(&time2, &time1) >= 1)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_6();
          FigDebugAssert3();
          return 4294950883;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (void)_updateFilePropertiesForSbuf:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 328);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __52__BWAudioFileSinkNode__updateFilePropertiesForSbuf___block_invoke;
    v3[3] = &unk_1E7990178;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

- (uint64_t)_setupFileWriter
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 256) outputURL];
  if (FigFileDoesFileExist())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3();
    return 4294950886;
  }

  v3 = *(a1 + 248);
  if (v3)
  {
    *v3 = 0;
  }

  else
  {
    *(a1 + 248) = malloc_type_malloc(0x400uLL, 0x69D56D94uLL);
  }

  v4 = *(a1 + 328);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__BWAudioFileSinkNode__setupFileWriter__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = a1;
  dispatch_sync(v4, block);
  [objc_msgSend(v2 "URLByDeletingLastPathComponent")];
  [(BWAudioFileSinkNode *)a1 _setupMinFreeDiskSpace];
  v5 = [(BWAudioFileSinkNode *)a1 _applyRecordingLimits];
  if (v5 || (v5 = CMByteStreamCreateForFileURL(), v5))
  {
    v12 = v5;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    goto LABEL_21;
  }

  v6 = [*(a1 + 256) outputFileType];
  if ([v6 isEqual:@"com.apple.coreaudio-format"])
  {
    v7 = MEMORY[0x1E6971B58];
  }

  else if ([v6 isEqual:@"public.aiff-audio"] & 1) != 0 || (objc_msgSend(v6, "isEqual:", @"public.aifc-audio"))
  {
    v7 = MEMORY[0x1E6971B40];
  }

  else if ([v6 isEqual:@"com.microsoft.waveform-audio"])
  {
    v7 = MEMORY[0x1E6971B80];
  }

  else
  {
    if (![v6 isEqual:@"org.3gpp.adaptive-multi-rate-audio"])
    {
      goto LABEL_27;
    }

    v7 = MEMORY[0x1E6971B48];
  }

  v8 = *v7;
  if (!v8)
  {
LABEL_27:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3();
    return 4294954516;
  }

  v14 = *MEMORY[0x1E6971B28];
  v15 = v8;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v9 = FigAudioFileFormatWriterCreateWithByteStream();
  if (v9 || (CMNotificationCenterGetDefaultLocalCenter(), OUTLINED_FUNCTION_2_109(), v9 = CMNotificationCenterAddListener(), v9))
  {
    v12 = v9;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    goto LABEL_21;
  }

  v10 = *(a1 + 224);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11)
  {
    v12 = 4294954514;
LABEL_20:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
LABEL_21:
    FigDebugAssert3();
    return v12;
  }

  v12 = v11(v10, 1936684398, 0, a1 + 240);
  if (v12)
  {
    goto LABEL_20;
  }

  return v12;
}

- (unint64_t)_setupMinFreeDiskSpace
{
  if (result)
  {
    v1 = result;
    if (_setupMinFreeDiskSpace_onceToken != -1)
    {
      dispatch_once(&_setupMinFreeDiskSpace_onceToken, &__block_literal_global_38_0);
    }

    *(v1 + 320) = _setupMinFreeDiskSpace_sSystemMinFreeDiskSpace;
    result = [*(v1 + 256) minFreeDiskSpaceLimit];
    if (result > _setupMinFreeDiskSpace_sSystemMinFreeDiskSpace)
    {
      result = [*(v1 + 256) minFreeDiskSpaceLimit];
      *(v1 + 320) = result;
    }
  }

  return result;
}

- (uint64_t)_teardownFileWriter
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 224);
  if (v2)
  {
    if (*(a1 + 244) == 1)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v3 || (v10 = *MEMORY[0x1E6960C70], v11 = *(MEMORY[0x1E6960C70] + 16), v3(v2, &v10)))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_33();
        FigDebugAssert3();
      }

      *(a1 + 244) = 0;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_109();
    if (CMNotificationCenterRemoveListener())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_33();
      FigDebugAssert3();
    }

    FigBaseObject = FigFormatWriterGetFigBaseObject();
    if (FigBaseObject)
    {
      v5 = FigBaseObject;
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v6)
      {
        v2 = v6(v5);
        if (!v2)
        {
LABEL_17:
          v7 = *(a1 + 224);
          if (v7)
          {
            CFRelease(v7);
            *(a1 + 224) = 0;
          }

          v8 = *(a1 + 232);
          if (v8)
          {
            CFRelease(v8);
            *(a1 + 232) = 0;
          }

          return v2;
        }
      }

      else
      {
        v2 = 4294954514;
      }
    }

    else
    {
      v2 = 4294954516;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    FigDebugAssert3();
    goto LABEL_17;
  }

  return v2;
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