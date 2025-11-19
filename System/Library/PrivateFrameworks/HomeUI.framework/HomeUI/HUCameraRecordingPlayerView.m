@interface HUCameraRecordingPlayerView
- (AVPlayerLayer)playerLayer;
- (HUCameraRecordingPlayerView)initWithPlayer:(id)a3 displayingProgressView:(BOOL)a4;
@end

@implementation HUCameraRecordingPlayerView

- (AVPlayerLayer)playerLayer
{
  v3 = objc_opt_class();
  v4 = [(HUCameraRecordingPlayerView *)self layer];
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4;
    if (v5)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (HUCameraRecordingPlayerView)initWithPlayer:(id)a3 displayingProgressView:(BOOL)a4
{
  v4 = a4;
  v26[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v25.receiver = self;
  v25.super_class = HUCameraRecordingPlayerView;
  v8 = [(HUCameraRecordingPlayerView *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_player, a3);
    v10 = [(HUCameraRecordingPlayerView *)v9 playerLayer];
    [v10 setPlayer:v7];

    if (v4)
    {
      v11 = [objc_alloc(MEMORY[0x277D758F0]) initWithProgressViewStyle:0];
      progressView = v9->_progressView;
      v9->_progressView = v11;

      v13 = [MEMORY[0x277D75348] systemGrayColor];
      [(UIProgressView *)v9->_progressView setTintColor:v13];

      [(UIProgressView *)v9->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(HUCameraRecordingPlayerView *)v9 addSubview:v9->_progressView];
      v24 = [(UIProgressView *)v9->_progressView leftAnchor];
      v23 = [(HUCameraRecordingPlayerView *)v9 leftAnchor];
      v14 = [v24 constraintEqualToAnchor:v23 constant:10.0];
      v26[0] = v14;
      v15 = [(UIProgressView *)v9->_progressView rightAnchor];
      v16 = [(HUCameraRecordingPlayerView *)v9 rightAnchor];
      v17 = [v15 constraintEqualToAnchor:v16 constant:-10.0];
      v26[1] = v17;
      v18 = [(UIProgressView *)v9->_progressView bottomAnchor];
      v19 = [(HUCameraRecordingPlayerView *)v9 bottomAnchor];
      v20 = [v18 constraintEqualToAnchor:v19 constant:-10.0];
      v26[2] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];

      [MEMORY[0x277CCAAD0] activateConstraints:v21];
    }
  }

  return v9;
}

@end