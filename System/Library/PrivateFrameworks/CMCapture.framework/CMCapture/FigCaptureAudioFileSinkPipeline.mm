@interface FigCaptureAudioFileSinkPipeline
- (id)_buildAudioFileSinkPipeline:(uint64_t)pipeline graph:(uint64_t)graph sourceAudioOutput:(uint64_t)output recordingStatusDelegate:;
- (id)initWithConfiguration:(uint64_t)configuration graph:(uint64_t)graph name:(uint64_t)name sourceAudioOutput:(uint64_t)output recordingStatusDelegate:;
- (uint64_t)audioFileSinkNode;
- (uint64_t)fileCoordinatorNode;
- (void)dealloc;
@end

@implementation FigCaptureAudioFileSinkPipeline

- (void)dealloc
{
  [(BWFileSinkNode *)self->_audioFileSinkNode setRecordingStatusDelegate:0];

  v3.receiver = self;
  v3.super_class = FigCaptureAudioFileSinkPipeline;
  [(FigCaptureSinkPipeline *)&v3 dealloc];
}

- (id)initWithConfiguration:(uint64_t)configuration graph:(uint64_t)graph name:(uint64_t)name sourceAudioOutput:(uint64_t)output recordingStatusDelegate:
{
  if (!self)
  {
    return 0;
  }

  v13.receiver = self;
  v13.super_class = FigCaptureAudioFileSinkPipeline;
  v9 = objc_msgSendSuper2(&v13, sel_initWithGraph_name_sinkID_, configuration, graph, [objc_msgSend(a2 "sinkConfiguration")]);
  v11 = v9;
  if (v9 && [(FigCaptureAudioFileSinkPipeline *)v9 _buildAudioFileSinkPipeline:v10 graph:configuration sourceAudioOutput:name recordingStatusDelegate:output])
  {
    fig_log_get_emitter();
    FigDebugAssert3();

    return 0;
  }

  return v11;
}

- (id)_buildAudioFileSinkPipeline:(uint64_t)pipeline graph:(uint64_t)graph sourceAudioOutput:(uint64_t)output recordingStatusDelegate:
{
  if (result)
  {
    v7 = result;
    [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.audiofile" priority:14];
    LOBYTE(v34) = 0;
    v8 = [BWFileCoordinatorNode initWithNumberOfVideoInputs:"initWithNumberOfVideoInputs:numberOfAudioInputs:numberOfMetadataInputs:numberOfActionOnlyOutputs:overCaptureEnabled:allowLowLatencyWhenPossible:useTrueVideoFileRecordingStaging:motionDataTimeMachine:" numberOfAudioInputs:0 numberOfMetadataInputs:1 numberOfActionOnlyOutputs:0 overCaptureEnabled:0 allowLowLatencyWhenPossible:0 useTrueVideoFileRecordingStaging:1 motionDataTimeMachine:?];
    if (OUTLINED_FUNCTION_2_125(&v44, v9, v10, v11, v12, v13, v14, v15, v34, 0, v39, v42.receiver, v42.super_class, v43.receiver, v43.super_class, v7, FigCaptureAudioFileSinkPipeline, 0))
    {
      v16 = v8;
      v7[6] = v16;
      if (!graph)
      {
LABEL_6:
        v17 = objc_alloc_init(BWAudioConverterNode);
        if (OUTLINED_FUNCTION_2_125(&v43, v18, v19, v20, v21, v22, v23, v24, v35, v37, v40, v42.receiver, v42.super_class, v7, FigCaptureAudioFileSinkPipeline, v44.receiver, v44.super_class, v45[0]) & 1) != 0 && (v25 = v17, v7[7] = v25, (OUTLINED_FUNCTION_1_132([(BWNode *)v25 input])))
        {
          [v7[7] output];
          v26 = -[BWAudioFileSinkNode initWithSinkID:]([BWAudioFileSinkNode alloc], "initWithSinkID:", [v7 sinkID]);
          if (OUTLINED_FUNCTION_2_125(&v42, v27, v28, v29, v30, v31, v32, v33, v36, v38, v41, v7, FigCaptureAudioFileSinkPipeline, v43.receiver, v43.super_class, v44.receiver, v44.super_class, v45[0]))
          {
            v7[8] = v26;
            [(BWFileSinkNode *)v26 setRecordingStatusDelegate:output];
            if (OUTLINED_FUNCTION_1_132([v7[8] input]))
            {
              goto LABEL_10;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_11();
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_11();
        }

LABEL_19:
        FigDebugAssert3();
LABEL_10:
        result = *v45;
        if (*v45)
        {
          return [*v45 code];
        }

        return result;
      }

      if (OUTLINED_FUNCTION_1_132([(BWNode *)v16 input]))
      {
        [v7[6] output];
        goto LABEL_6;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    goto LABEL_19;
  }

  return result;
}

- (uint64_t)fileCoordinatorNode
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)audioFileSinkNode
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

@end