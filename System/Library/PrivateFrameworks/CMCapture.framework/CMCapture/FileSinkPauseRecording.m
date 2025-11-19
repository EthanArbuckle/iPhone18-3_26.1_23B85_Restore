@interface FileSinkPauseRecording
@end

@implementation FileSinkPauseRecording

uint64_t __captureSession_FileSinkPauseRecording_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    __captureSession_FileSinkPauseRecording_block_invoke_cold_1();
  }

  *(DerivedStorage + 944) = 1;
  v3 = [*(DerivedStorage + 784) movieFileSinkPipelineWithSinkID:v1];
  v4 = v3;
  if (!v3)
  {
    v5 = -[FigCaptureAudioFileSinkPipeline fileCoordinatorNode]([*(DerivedStorage + 784) audioFileSinkPipelineWithSinkID:v1]);
    v6 = 0;
    if (v5)
    {
      goto LABEL_5;
    }

    return __captureSession_FileSinkPauseRecording_block_invoke_cold_2();
  }

  v5 = [(FigCaptureMovieFileSinkPipeline *)v3 fileCoordinatorNode];
  v6 = [(FigCaptureMovieFileSinkPipeline *)v4 videoCompressorNodes]!= 0;
  if (!v5)
  {
    return __captureSession_FileSinkPauseRecording_block_invoke_cold_2();
  }

LABEL_5:
  [v5 pauseRecording];
  v7 = [*(DerivedStorage + 784) cameraSourcePipelineWithSourceID:-[FigCaptureMovieFileSinkPipeline videoSourceID](v4)];
  result = [-[FigCaptureCameraSourcePipeline captureDevice](v7) setFrameSkippingWhenNotRecordingEnabled:1];
  if (v6)
  {
    result = [-[FigCaptureMovieFileSinkPipeline primaryCaptureDevice](v4) autoImageControlMode];
    if (result == 2)
    {
      v9 = [(FigCaptureMovieFileSinkPipeline *)v4 primaryCaptureDevice];

      return [v9 setAutoImageControlMode:1];
    }
  }

  return result;
}

uint64_t __captureSession_FileSinkPauseRecording_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __captureSession_FileSinkPauseRecording_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_9_38();
  FigDebugAssert3();

  return FigSignalErrorAtGM();
}

@end