@interface CallRecordingViewModel
- (void)tapContainer;
- (void)tapStopRecording;
@end

@implementation CallRecordingViewModel

- (void)tapStopRecording
{
  v2 = self;
  CallRecordingViewModel.tapStopRecording()();
}

- (void)tapContainer
{
  v2 = self;
  CallRecordingViewModel.tapContainer()();
}

@end