@interface CAMFocusAtCenterForVideoRecordingCommand
- (void)executeWithContext:(id)context;
@end

@implementation CAMFocusAtCenterForVideoRecordingCommand

- (void)executeWithContext:(id)context
{
  currentVideoDevice = [context currentVideoDevice];
  activeFormat = [currentVideoDevice activeFormat];
  if ([activeFormat autoFocusSystem] == 2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = [[CAMFocusCommand alloc] initWithFocusMode:v5 atPointOfInterest:0 rectSize:1 smooth:0.5, 0.5];
  if (v6)
  {
    [(CAMCaptureCommand *)self addSubcommand:v6];
  }
}

@end