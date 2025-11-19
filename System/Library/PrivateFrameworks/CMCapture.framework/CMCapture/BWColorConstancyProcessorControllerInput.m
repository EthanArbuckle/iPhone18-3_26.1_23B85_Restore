@interface BWColorConstancyProcessorControllerInput
- (void)addFrame:(opaqueCMSampleBuffer *)a3;
- (void)dealloc;
@end

@implementation BWColorConstancyProcessorControllerInput

- (void)dealloc
{
  flashFrame = self->_flashFrame;
  if (flashFrame)
  {
    CFRelease(flashFrame);
  }

  ambientFrame = self->_ambientFrame;
  if (ambientFrame)
  {
    CFRelease(ambientFrame);
  }

  v5.receiver = self;
  v5.super_class = BWColorConstancyProcessorControllerInput;
  [(BWStillImageProcessorControllerInput *)&v5 dealloc];
}

- (void)addFrame:(opaqueCMSampleBuffer *)a3
{
  v6 = [(BWStillImageProcessorControllerInput *)self delegate];
  if (self->_addFrameFailed)
  {
    goto LABEL_11;
  }

  if (a3 && (v7 = CMGetAttachment(a3, *off_1E798A3C8, 0)) != 0)
  {
    v8 = v7;
    v9 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B150), "BOOLValue"}];
    v10 = [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B350), "BOOLValue"}];
    if (v9)
    {
      if (!self->_ambientFrame)
      {
        self->_ambientFrame = a3;
        CFRetain(a3);
        [(BWStillImageProcessorControllerInputUpdatesDelegate *)v6 input:self addAmbientFrame:self->_ambientFrame];
        goto LABEL_11;
      }

      self->_addFrameFailed = 1;
      FigCaptureGetFrameworkRadarComponent();
      v14 = OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_8_4(v14);
      OUTLINED_FUNCTION_6_34();
      if (v3)
      {
        BWStillImageSampleBufferToDisplayString(a3);
        OUTLINED_FUNCTION_1_17();
        OUTLINED_FUNCTION_4_37();
      }

      OUTLINED_FUNCTION_3_40();
      BWStillImageSampleBufferToDisplayString(a3);
      OUTLINED_FUNCTION_5_39();
      v16 = OUTLINED_FUNCTION_6_0();
      v17 = OUTLINED_FUNCTION_7_28();
      v24 = 91;
    }

    else
    {
      if (!v10)
      {
        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v13 = OUTLINED_FUNCTION_6_0();
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v13, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWColorConstancyProcessorController.m", 103, @"LastShownDate:BWColorConstancyProcessorController.m:103", @"LastShownBuild:BWColorConstancyProcessorController.m:103", 0);
        free(v13);
        self->_addFrameFailed = 1;
        goto LABEL_11;
      }

      if (!self->_flashFrame)
      {
        self->_flashFrame = a3;
        CFRetain(a3);
        [(BWStillImageProcessorControllerInputUpdatesDelegate *)v6 input:self addFlashFrame:self->_flashFrame];
        goto LABEL_11;
      }

      self->_addFrameFailed = 1;
      FigCaptureGetFrameworkRadarComponent();
      v15 = OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_8_4(v15);
      OUTLINED_FUNCTION_6_34();
      if (v3)
      {
        BWStillImageSampleBufferToDisplayString(a3);
        OUTLINED_FUNCTION_1_17();
        OUTLINED_FUNCTION_4_37();
      }

      OUTLINED_FUNCTION_3_40();
      BWStillImageSampleBufferToDisplayString(a3);
      OUTLINED_FUNCTION_5_39();
      v16 = OUTLINED_FUNCTION_6_0();
      v17 = OUTLINED_FUNCTION_7_28();
      v24 = 97;
    }

    FigCapturePleaseFileRadar(v17, v18, v19, v20, v21, v24, v22, v23, 0);
    free(v16);
  }

  else
  {
    self->_addFrameFailed = 1;
  }

LABEL_11:
  if (self->_addFrameFailed)
  {
    [(BWStillImageProcessorControllerInputUpdatesDelegate *)v6 inputAddFrameFailed:self];
  }
}

@end