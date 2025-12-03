@interface CARSetupAppIconProgressView
- (CARSetupAppIconProgressView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)micaPlayerDidStartPlaying:(id)playing;
- (void)micaPlayerDidStopPlaying:(id)playing;
- (void)startAnimating;
- (void)stopAnimating;
@end

@implementation CARSetupAppIconProgressView

- (CARSetupAppIconProgressView)initWithFrame:(CGRect)frame
{
  v21 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = CARSetupAppIconProgressView;
  v3 = [(CARSetupAppIconProgressView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = AFDeviceSupportsSystemAssistantExperience();
    v6 = @"CarPlayProgressSiri";
    if (v5)
    {
      v6 = @"CarPlayProgressSAE";
    }

    v7 = v6;
    v8 = CARSetupLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      if (v5)
      {
        v9 = @"YES";
      }

      *buf = 138543362;
      v20 = v9;
      _os_log_impl(&dword_242FD5000, v8, OS_LOG_TYPE_DEFAULT, "show system experience CarPlay animation: %{public}@", buf, 0xCu);
    }

    v10 = [v4 URLForResource:v7 withExtension:@"caar"];

    v11 = [CARMicaPlayer alloc];
    path = [v10 path];
    traitCollection = [(CARSetupAppIconProgressView *)v3 traitCollection];
    [traitCollection displayScale];
    v14 = [(CARMicaPlayer *)v11 initWithPath:path retinaScale:?];

    [(CARMicaPlayer *)v14 setDelegate:v3];
    layer = [(CARSetupAppIconProgressView *)v3 layer];
    [(CARMicaPlayer *)v14 addToLayer:layer onTop:1 gravity:*MEMORY[0x277CDA710]];

    [(CARSetupAppIconProgressView *)v3 setMicaPlayer:v14];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CARSetupAppIconProgressView;
  [(CARSetupAppIconProgressView *)&v5 layoutSubviews];
  micaPlayer = [(CARSetupAppIconProgressView *)self micaPlayer];
  layer = [(CARSetupAppIconProgressView *)self layer];
  [micaPlayer moveAndResizeWithinParentLayer:layer usingGravity:*MEMORY[0x277CDA710] animate:0];
}

- (void)startAnimating
{
  micaPlayer = [(CARSetupAppIconProgressView *)self micaPlayer];
  [micaPlayer play];
}

- (void)stopAnimating
{
  micaPlayer = [(CARSetupAppIconProgressView *)self micaPlayer];
  [micaPlayer pause];
}

- (void)micaPlayerDidStartPlaying:(id)playing
{
  v3 = CARSetupLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_242FD5000, v3, OS_LOG_TYPE_INFO, "started playing app icon progress animation", v4, 2u);
  }
}

- (void)micaPlayerDidStopPlaying:(id)playing
{
  playingCopy = playing;
  v4 = CARSetupLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_242FD5000, v4, OS_LOG_TYPE_INFO, "finished playing app icon progress animation, looping", v5, 2u);
  }

  [playingCopy setPlaybackTime:1.39];
  [playingCopy play];
}

@end