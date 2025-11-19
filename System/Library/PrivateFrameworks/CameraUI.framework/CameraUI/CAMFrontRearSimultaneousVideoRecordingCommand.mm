@interface CAMFrontRearSimultaneousVideoRecordingCommand
- (CAMFrontRearSimultaneousVideoRecordingCommand)initWithVideoRecordingEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMFrontRearSimultaneousVideoRecordingCommand

- (CAMFrontRearSimultaneousVideoRecordingCommand)initWithVideoRecordingEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMFrontRearSimultaneousVideoRecordingCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = a3;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMFrontRearSimultaneousVideoRecordingCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMFrontRearSimultaneousVideoRecordingCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v14 = a3;
  v4 = [v14 currentCaptureSession];
  v5 = [v14 currentMovieFileOutput];
  v6 = [v14 currentSecondaryVideoDeviceInput];
  if ([v5 isMultiCamClientCompositingSupported])
  {
    v7 = [(CAMFrontRearSimultaneousVideoRecordingCommand *)self _isEnabled];
    v8 = *MEMORY[0x1E6987608];
    v9 = [v4 cam_connectionWithMediaType:*MEMORY[0x1E6987608] fromDeviceInput:v6 toOutput:v5];
    v10 = v9;
    if (v7)
    {
      [v5 setMultiCamClientCompositingEnabled:1];
      v11 = [v14 currentVideoDeviceInput];
      v12 = [v4 cam_connectionWithMediaType:v8 fromDeviceInput:v11 toOutput:v5];
      if (!v10)
      {
        v10 = [v4 cam_addConnectionWithMediaType:v8 fromDeviceInput:v6 toOutput:v5];
      }

      if (v12)
      {
        v13 = v10 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        [v5 setMultiCamClientCompositingPrimaryConnection:v12 secondaryConnection:v10];
      }
    }

    else
    {
      if (v9)
      {
        [v4 removeConnection:v9];
      }

      [v5 setMultiCamClientCompositingEnabled:0];
    }
  }
}

@end