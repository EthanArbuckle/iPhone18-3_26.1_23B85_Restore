@interface BWSWFRProcessorControllerInput
- (void)addFrame:(opaqueCMSampleBuffer *)a3;
- (void)dealloc;
@end

@implementation BWSWFRProcessorControllerInput

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
  v5.super_class = BWSWFRProcessorControllerInput;
  [(BWStillImageProcessorControllerInput *)&v5 dealloc];
}

- (void)addFrame:(opaqueCMSampleBuffer *)a3
{
  [(BWStillImageProcessorControllerInput *)self delegate];
  if (self->_addFrameFailed)
  {
    goto LABEL_11;
  }

  if (a3 && (v6 = CMGetAttachment(a3, *off_1E798A3C8, 0)) != 0)
  {
    v7 = v6;
    v8 = [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B150), "BOOLValue"}];
    v9 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B350), "BOOLValue"}];
    if (v8)
    {
      if (!self->_ambientFrame)
      {
        self->_ambientFrame = a3;
        CFRetain(a3);
        [OUTLINED_FUNCTION_64_0() input:? addAmbientFrame:?];
        goto LABEL_11;
      }

      self->_addFrameFailed = 1;
      FigCaptureGetFrameworkRadarComponent();
      v19 = OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_8_4(v19);
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
      v21 = OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_10();
      v29 = 88;
    }

    else
    {
      if (!v9)
      {
        FigCaptureGetFrameworkRadarComponent();
        v33 = 0;
        v32 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v31 = 0;
        v11 = OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_10();
        FigCapturePleaseFileRadar(v12, v13, v14, v15, v16, 100, v17, v18, &v31);
        free(v11);
        self->_addFrameFailed = 1;
        goto LABEL_11;
      }

      if (!self->_flashFrame)
      {
        self->_flashFrame = a3;
        CFRetain(a3);
        [OUTLINED_FUNCTION_64_0() input:? addFlashFrame:?];
        goto LABEL_11;
      }

      self->_addFrameFailed = 1;
      FigCaptureGetFrameworkRadarComponent();
      v20 = OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_8_4(v20);
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
      v21 = OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_10();
      v29 = 94;
    }

    FigCapturePleaseFileRadar(v22, v23, v24, v25, v26, v29, v27, v28, v30);
    free(v21);
  }

  else
  {
    self->_addFrameFailed = 1;
  }

LABEL_11:
  if (self->_addFrameFailed)
  {
    [OUTLINED_FUNCTION_64_0() inputAddFrameFailed:?];
  }
}

@end