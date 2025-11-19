@interface PlayerView
- (void)back:(id)a3;
- (void)forward:(id)a3;
- (void)playPause:(id)a3;
- (void)stopRecording:(id)a3;
@end

@implementation PlayerView

- (void)back:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2153CC810(&selRef_skipBackByInterval_completion_);
}

- (void)playPause:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2153CC620(&selRef_togglePlayPause, &unk_282753BE0, &unk_2154C23B0, sub_2152F4D50);
}

- (void)stopRecording:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2153CC620(&selRef_stop, &unk_282753BB8, &unk_2154C23A0, sub_2153550B4);
}

- (void)forward:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2153CC810(&selRef_skipAheadByInterval_completion_);
}

@end