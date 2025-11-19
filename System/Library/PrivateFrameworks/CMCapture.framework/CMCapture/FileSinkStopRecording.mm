@interface FileSinkStopRecording
@end

@implementation FileSinkStopRecording

uint64_t __captureSession_FileSinkStopRecording_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = _FigIsCurrentDispatchQueue();
  if (!result)
  {
    result = __captureSession_FileSinkStopRecording_block_invoke_cold_1();
  }

  if (!*DerivedStorage)
  {
    v4 = [*(DerivedStorage + 784) movieFileSinkPipelineWithSinkID:v1];
    v5 = v4;
    if (v4)
    {
      v6 = [(FigCaptureMovieFileSinkPipeline *)v4 fileCoordinatorNode];
    }

    else
    {
      v6 = -[FigCaptureAudioFileSinkPipeline fileCoordinatorNode]([*(DerivedStorage + 784) audioFileSinkPipelineWithSinkID:v1]);
    }

    v7 = v6;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [*(DerivedStorage + 784) cameraSourcePipelines];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [-[FigCaptureCameraSourcePipeline captureDevice](*(*(&v18 + 1) + 8 * i)) setTemporalNoiseReductionBand0StrengthModulation:0];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v10);
    }

    if (v7)
    {
      v13 = [*(DerivedStorage + 784) cameraSourcePipelineWithSourceID:-[FigCaptureMovieFileSinkPipeline videoSourceID](v5)];
      v14 = [(FigCaptureCameraSourcePipeline *)v13 trueVideoCaptureEnabled];
      if (v14 && *MEMORY[0x1E695FF58])
      {
        v15 = fig_log_handle();
        if (os_signpost_enabled(v15))
        {
          *v16 = 0;
          _os_signpost_emit_with_name_impl(&dword_1AC90E000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CameraCaptureTrueVideoExitAnimationDelay", &unk_1AD0FC9CB, v16, 2u);
        }
      }

      [v7 stopRecordingWithErrorCode:0 setupToAllowWaitingForRecordingToStop:v14];
      return [-[FigCaptureCameraSourcePipeline captureDevice](v13) setFrameSkippingWhenNotRecordingEnabled:1];
    }

    else
    {
      return __captureSession_FileSinkStopRecording_block_invoke_cold_2();
    }
  }

  return result;
}

uint64_t __captureSession_FileSinkStopRecording_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __captureSession_FileSinkStopRecording_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_9_38();
  FigDebugAssert3();
  return FigSignalErrorAtGM();
}

@end