@interface CAMUpdateFocusAndExposureForStartVideoRecordingCommand
- (void)executeWithContext:(id)a3;
@end

@implementation CAMUpdateFocusAndExposureForStartVideoRecordingCommand

- (void)executeWithContext:(id)a3
{
  v4 = [a3 currentVideoDevice];
  v5 = [v4 activeFormat];
  if ([v5 autoFocusSystem] == 2)
  {
    if ([v4 focusMode] != 2)
    {
      goto LABEL_12;
    }

    v6 = os_log_create("com.apple.camera", "CaptureCommand");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CAMUpdateFocusAndExposureForStartVideoRecordingCommand executeWithContext:v6];
    }

    v7 = [[CAMFocusCommand alloc] initWithFocusMode:3 smooth:1];
  }

  else
  {
    v8 = os_log_create("com.apple.camera", "CaptureCommand");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CAMUpdateFocusAndExposureForStartVideoRecordingCommand executeWithContext:v8];
    }

    v7 = [[CAMFocusCommand alloc] initWithFocusMode:0];
  }

  v9 = v7;
  if (v7)
  {
    [(CAMCaptureCommand *)self addSubcommand:v7];
  }

LABEL_12:
}

@end