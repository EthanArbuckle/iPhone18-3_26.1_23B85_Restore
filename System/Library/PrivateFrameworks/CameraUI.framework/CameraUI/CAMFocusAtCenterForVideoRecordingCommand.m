@interface CAMFocusAtCenterForVideoRecordingCommand
- (void)executeWithContext:(id)a3;
@end

@implementation CAMFocusAtCenterForVideoRecordingCommand

- (void)executeWithContext:(id)a3
{
  v7 = [a3 currentVideoDevice];
  v4 = [v7 activeFormat];
  if ([v4 autoFocusSystem] == 2)
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