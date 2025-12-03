@interface CAMFrontRearSimultaneousCaptureCommand
- (CAMFrontRearSimultaneousCaptureCommand)initWithFrontRearSimultaneousCaptureEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)executeWithContext:(id)context;
@end

@implementation CAMFrontRearSimultaneousCaptureCommand

- (CAMFrontRearSimultaneousCaptureCommand)initWithFrontRearSimultaneousCaptureEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMFrontRearSimultaneousCaptureCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMFrontRearSimultaneousCaptureCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMFrontRearSimultaneousCaptureCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  currentCaptureSession = [contextCopy currentCaptureSession];
  currentStillImageOutput = [contextCopy currentStillImageOutput];
  currentSecondaryVideoDeviceInput = [contextCopy currentSecondaryVideoDeviceInput];
  if ([currentStillImageOutput isMultiCamClientCompositingSupported])
  {
    _isEnabled = [(CAMFrontRearSimultaneousCaptureCommand *)self _isEnabled];
    v8 = *MEMORY[0x1E6987608];
    v9 = [currentCaptureSession cam_connectionWithMediaType:*MEMORY[0x1E6987608] fromDeviceInput:currentSecondaryVideoDeviceInput toOutput:currentStillImageOutput];
    v10 = v9;
    if (_isEnabled)
    {
      [currentStillImageOutput setMultiCamClientCompositingEnabled:1];
      currentVideoDeviceInput = [contextCopy currentVideoDeviceInput];
      v12 = [currentCaptureSession cam_connectionWithMediaType:v8 fromDeviceInput:currentVideoDeviceInput toOutput:currentStillImageOutput];
      if (!v10)
      {
        v10 = [currentCaptureSession cam_addConnectionWithMediaType:v8 fromDeviceInput:currentSecondaryVideoDeviceInput toOutput:currentStillImageOutput];
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
        [currentStillImageOutput setMultiCamClientCompositingPrimaryConnection:v12 secondaryConnection:v10];
      }
    }

    else
    {
      if (v9)
      {
        [currentCaptureSession removeConnection:v9];
      }

      [currentStillImageOutput setMultiCamClientCompositingEnabled:0];
    }
  }
}

@end