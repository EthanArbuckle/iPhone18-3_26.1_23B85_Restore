@interface HUCameraRecordingPlayerView
- (AVPlayerLayer)playerLayer;
- (HUCameraRecordingPlayerView)initWithPlayer:(id)player displayingProgressView:(BOOL)view;
@end

@implementation HUCameraRecordingPlayerView

- (AVPlayerLayer)playerLayer
{
  v3 = objc_opt_class();
  layer = [(HUCameraRecordingPlayerView *)self layer];
  if (layer)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = layer;
    }

    else
    {
      v5 = 0;
    }

    v6 = layer;
    if (v5)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (HUCameraRecordingPlayerView)initWithPlayer:(id)player displayingProgressView:(BOOL)view
{
  viewCopy = view;
  v26[3] = *MEMORY[0x277D85DE8];
  playerCopy = player;
  v25.receiver = self;
  v25.super_class = HUCameraRecordingPlayerView;
  v8 = [(HUCameraRecordingPlayerView *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_player, player);
    playerLayer = [(HUCameraRecordingPlayerView *)v9 playerLayer];
    [playerLayer setPlayer:playerCopy];

    if (viewCopy)
    {
      v11 = [objc_alloc(MEMORY[0x277D758F0]) initWithProgressViewStyle:0];
      progressView = v9->_progressView;
      v9->_progressView = v11;

      systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
      [(UIProgressView *)v9->_progressView setTintColor:systemGrayColor];

      [(UIProgressView *)v9->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(HUCameraRecordingPlayerView *)v9 addSubview:v9->_progressView];
      leftAnchor = [(UIProgressView *)v9->_progressView leftAnchor];
      leftAnchor2 = [(HUCameraRecordingPlayerView *)v9 leftAnchor];
      v14 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:10.0];
      v26[0] = v14;
      rightAnchor = [(UIProgressView *)v9->_progressView rightAnchor];
      rightAnchor2 = [(HUCameraRecordingPlayerView *)v9 rightAnchor];
      v17 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-10.0];
      v26[1] = v17;
      bottomAnchor = [(UIProgressView *)v9->_progressView bottomAnchor];
      bottomAnchor2 = [(HUCameraRecordingPlayerView *)v9 bottomAnchor];
      v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
      v26[2] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];

      [MEMORY[0x277CCAAD0] activateConstraints:v21];
    }
  }

  return v9;
}

@end