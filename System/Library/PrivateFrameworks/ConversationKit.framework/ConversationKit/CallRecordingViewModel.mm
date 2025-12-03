@interface CallRecordingViewModel
- (void)tapContainer;
- (void)tapStopRecording;
@end

@implementation CallRecordingViewModel

- (void)tapStopRecording
{
  selfCopy = self;
  CallRecordingViewModel.tapStopRecording()();
}

- (void)tapContainer
{
  selfCopy = self;
  CallRecordingViewModel.tapContainer()();
}

@end