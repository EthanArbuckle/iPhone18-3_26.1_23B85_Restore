@interface CAMUpdateFocusAndExposureForStopVideoRecordingCommand
- (void)executeWithContext:(id)context;
@end

@implementation CAMUpdateFocusAndExposureForStopVideoRecordingCommand

- (void)executeWithContext:(id)context
{
  currentVideoDevice = [context currentVideoDevice];
  if ([currentVideoDevice focusMode] == 2 && objc_msgSend(currentVideoDevice, "isSmoothAutoFocusSupported") && objc_msgSend(currentVideoDevice, "isSmoothAutoFocusEnabled"))
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CAMUpdateFocusAndExposureForStopVideoRecordingCommand executeWithContext:v5];
    }

    v6 = [[CAMFocusCommand alloc] initWithFocusMode:3 smooth:0];
    if (v6)
    {
      [(CAMCaptureCommand *)self addSubcommand:v6];
    }
  }
}

@end