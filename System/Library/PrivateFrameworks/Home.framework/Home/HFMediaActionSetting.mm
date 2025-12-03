@interface HFMediaActionSetting
- (HFMediaActionSetting)initWithActionBuilder:(id)builder;
- (void)updatePlaybackState:(int64_t)state;
@end

@implementation HFMediaActionSetting

- (HFMediaActionSetting)initWithActionBuilder:(id)builder
{
  builderCopy = builder;
  v11.receiver = self;
  v11.super_class = HFMediaActionSetting;
  v6 = [(HFMediaActionSetting *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaActionBuilder, builder);
    if ([builderCopy targetPlayState] != 2)
    {
      v7->_originalHMNonPausePlaybackState = [builderCopy targetPlayState];
      playbackArchive = [builderCopy playbackArchive];
      goto LABEL_6;
    }

    v7->_originalHMNonPausePlaybackState = 1;
    if (!+[HFUtilities isAMac])
    {
      playbackArchive = [[HFPlaybackArchive alloc] initWithMediaPlayerPlaybackArchive:0];
LABEL_6:
      playbackArchive = v7->_playbackArchive;
      v7->_playbackArchive = playbackArchive;
    }
  }

  return v7;
}

- (void)updatePlaybackState:(int64_t)state
{
  if (state != 2)
  {
    [(HFMediaActionSetting *)self setOriginalHMNonPausePlaybackState:?];
    mediaActionBuilder = [(HFMediaActionSetting *)self mediaActionBuilder];
    playbackArchive = [mediaActionBuilder playbackArchive];
    [(HFMediaActionSetting *)self setPlaybackArchive:playbackArchive];
  }
}

@end