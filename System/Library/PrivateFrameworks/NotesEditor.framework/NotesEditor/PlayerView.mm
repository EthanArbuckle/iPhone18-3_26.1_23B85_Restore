@interface PlayerView
- (void)back:(id)back;
- (void)forward:(id)forward;
- (void)playPause:(id)pause;
- (void)stopRecording:(id)recording;
@end

@implementation PlayerView

- (void)back:(id)back
{
  backCopy = back;
  selfCopy = self;
  sub_2153CC810(&selRef_skipBackByInterval_completion_);
}

- (void)playPause:(id)pause
{
  pauseCopy = pause;
  selfCopy = self;
  sub_2153CC620(&selRef_togglePlayPause, &unk_282753BE0, &unk_2154C23B0, sub_2152F4D50);
}

- (void)stopRecording:(id)recording
{
  recordingCopy = recording;
  selfCopy = self;
  sub_2153CC620(&selRef_stop, &unk_282753BB8, &unk_2154C23A0, sub_2153550B4);
}

- (void)forward:(id)forward
{
  forwardCopy = forward;
  selfCopy = self;
  sub_2153CC810(&selRef_skipAheadByInterval_completion_);
}

@end