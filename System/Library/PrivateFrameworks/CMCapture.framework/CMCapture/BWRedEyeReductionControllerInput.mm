@interface BWRedEyeReductionControllerInput
- (BOOL)requiresSensorInterfaceRawPropagation;
- (void)addFrame:(opaqueCMSampleBuffer *)a3 faceObservations:(id)a4;
- (void)dealloc;
@end

@implementation BWRedEyeReductionControllerInput

- (void)dealloc
{
  primaryImage = self->_primaryImage;
  if (primaryImage)
  {
    CFRelease(primaryImage);
  }

  auxImage = self->_auxImage;
  if (auxImage)
  {
    CFRelease(auxImage);
  }

  v5.receiver = self;
  v5.super_class = BWRedEyeReductionControllerInput;
  [(BWStillImageProcessorControllerInput *)&v5 dealloc];
}

- (void)addFrame:(opaqueCMSampleBuffer *)a3 faceObservations:(id)a4
{
  if (!a3)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v10, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWRedEyeReductionController.m", 97, @"LastShownDate:BWRedEyeReductionController.m:97", @"LastShownBuild:BWRedEyeReductionController.m:97", 0);
    free(v10);
LABEL_12:
    [BWRedEyeReductionControllerInput addFrame:? faceObservations:?];
    return;
  }

  if ([objc_msgSend(CMGetAttachment(a3 *off_1E798A3C8])
  {
    v7 = 64;
  }

  else
  {
    v7 = 56;
  }

  if (*(&self->super.super.isa + v7))
  {
    goto LABEL_12;
  }

  *(&self->super.super.isa + v7) = CFRetain(a3);
  if (a4)
  {

    self->_faceObservations = a4;
  }

  [(BWRedEyeReductionControllerInputDelegate *)self->_inputDelegate didReceiveFrameForInput:self];
  if (self->_primaryImage)
  {
    if (self->_auxImage)
    {
      goto LABEL_12;
    }
  }
}

- (BOOL)requiresSensorInterfaceRawPropagation
{
  v3 = [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] captureFlags];
  v4 = [(NSArray *)[(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] captureStreamSettings] count];
  v5 = [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] captureFlags];
  v6 = (v5 & 0x200 | [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] captureFlags]& 4) == 0;
  if (v4 != 1)
  {
    v6 = 0;
  }

  return (v3 & 0x800) != 0 && v6;
}

@end