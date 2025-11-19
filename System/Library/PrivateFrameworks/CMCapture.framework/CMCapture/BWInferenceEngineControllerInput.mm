@interface BWInferenceEngineControllerInput
- (BWInferenceEngineControllerInput)initWithSettings:(id)a3 portType:(id)a4 inferenceInputBufferType:(unint64_t)a5;
- (id)description;
- (void)addInferenceImage:(opaqueCMSampleBuffer *)a3 propagationImage:(opaqueCMSampleBuffer *)a4;
- (void)dealloc;
@end

@implementation BWInferenceEngineControllerInput

- (BWInferenceEngineControllerInput)initWithSettings:(id)a3 portType:(id)a4 inferenceInputBufferType:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = BWInferenceEngineControllerInput;
  result = [(BWStillImageProcessorControllerInput *)&v7 initWithSettings:a3 portType:a4];
  if (result)
  {
    result->_expectsMoreData = 1;
    result->_inferenceInputBufferType = a5;
  }

  return result;
}

- (void)dealloc
{
  inferenceImage = self->_inferenceImage;
  if (inferenceImage)
  {
    CFRelease(inferenceImage);
  }

  propagationImage = self->_propagationImage;
  if (propagationImage)
  {
    CFRelease(propagationImage);
  }

  v5.receiver = self;
  v5.super_class = BWInferenceEngineControllerInput;
  [(BWStillImageProcessorControllerInput *)&v5 dealloc];
}

- (void)addInferenceImage:(opaqueCMSampleBuffer *)a3 propagationImage:(opaqueCMSampleBuffer *)a4
{
  if (!a3)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v12, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWInferenceEngineController.m", 186, @"LastShownDate:BWInferenceEngineController.m:186", @"LastShownBuild:BWInferenceEngineController.m:186", 0);
LABEL_12:
    free(v12);
    goto LABEL_9;
  }

  if (!a4)
  {
    v10 = FigCaptureGetFrameworkRadarComponent();
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v10, v12, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWInferenceEngineController.m", 187, @"LastShownDate:BWInferenceEngineController.m:187", @"LastShownBuild:BWInferenceEngineController.m:187", 0);
    goto LABEL_12;
  }

  inferenceImage = self->_inferenceImage;
  if (inferenceImage != a3)
  {
    self->_inferenceImage = a3;
    CFRetain(a3);
    if (inferenceImage)
    {
      CFRelease(inferenceImage);
    }
  }

  propagationImage = self->_propagationImage;
  if (propagationImage != a4)
  {
    self->_propagationImage = a4;
    CFRetain(a4);
    if (propagationImage)
    {
      CFRelease(propagationImage);
    }
  }

LABEL_9:
  self->_expectsMoreData = 0;
  [(BWStillImageProcessorControllerInputUpdatesDelegate *)[(BWStillImageProcessorControllerInput *)self delegate] inputReceivedNewData:self];
}

- (id)description
{
  v11 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] settingsID];
  v5 = BWPhotoEncoderStringFromEncodingScheme([(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] captureType]);
  v6 = [(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] portType];
  inferenceImage = self->_inferenceImage;
  propagationImage = self->_propagationImage;
  v9 = [(NSArray *)self->_enabledInferenceMasks componentsJoinedByString:@", "];
  return [v11 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, %@ : infImg:%p propImg:%p masks:%@ smartCam:%d vision:%@ delegate:%p", v3, self, v4, v5, v6, inferenceImage, propagationImage, v9, self->_smartCameraClassificationsEnabled, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%llu", self->_enabledVisionInferences), -[BWStillImageProcessorControllerInput delegate](self, "delegate")];
}

@end