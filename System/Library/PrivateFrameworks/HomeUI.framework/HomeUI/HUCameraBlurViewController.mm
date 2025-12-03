@interface HUCameraBlurViewController
- (BOOL)shouldShowBlurForPlaybackEngine:(id)engine;
- (UIVisualEffectView)blurView;
- (void)updateBlurWithPlaybackEngine:(id)engine completionHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation HUCameraBlurViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HUCameraBlurViewController;
  [(HUCameraBlurViewController *)&v10 viewDidLoad];
  view = [(HUCameraBlurViewController *)self view];
  [view setUserInteractionEnabled:0];

  view2 = [(HUCameraBlurViewController *)self view];
  blurView = [(HUCameraBlurViewController *)self blurView];
  [view2 addSubview:blurView];

  v6 = MEMORY[0x277CCAAD0];
  blurView2 = [(HUCameraBlurViewController *)self blurView];
  view3 = [(HUCameraBlurViewController *)self view];
  v9 = [v6 hu_constraintsSizingAnchorProvider:blurView2 toAnchorProvider:view3];
  [v6 activateConstraints:v9];
}

- (BOOL)shouldShowBlurForPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v4 = ([MEMORY[0x277D14CE8] isPressDemoModeEnabled] & 1) == 0 && objc_msgSend(engineCopy, "timelineState") != 2 && objc_msgSend(engineCopy, "timeControlStatus") == 0;

  return v4;
}

- (void)updateBlurWithPlaybackEngine:(id)engine completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  handlerCopy = handler;
  v8 = [(HUCameraBlurViewController *)self shouldShowBlurForPlaybackEngine:engineCopy];
  [(HUCameraBlurViewController *)self setShowingBlur:v8];
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    showingBlur = [(HUCameraBlurViewController *)self showingBlur];
    engineModeDescription = [engineCopy engineModeDescription];
    timelineStateDescription = [engineCopy timelineStateDescription];
    timeControlStatusDescription = [engineCopy timeControlStatusDescription];
    v18[0] = 67110146;
    v18[1] = showingBlur;
    v19 = 2112;
    v20 = engineCopy;
    v21 = 2112;
    v22 = engineModeDescription;
    v23 = 2112;
    v24 = timelineStateDescription;
    v25 = 2112;
    v26 = timeControlStatusDescription;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Showing blur:%{BOOL}d engine:%@ engineMode:%@ timelineState:%@ timeControlStatus:%@.", v18, 0x30u);
  }

  showingBlur2 = [(HUCameraBlurViewController *)self showingBlur];
  blurView = [(HUCameraBlurViewController *)self blurView];
  layer = [blurView layer];
  *&v17 = showingBlur2;
  [layer setOpacity:v17];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v8);
  }
}

- (UIVisualEffectView)blurView
{
  blurView = self->_blurView;
  if (!blurView)
  {
    v4 = [MEMORY[0x277D75210] effectWithBlurRadius:35.0];
    v5 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v4];
    [(UIVisualEffectView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = objc_alloc(MEMORY[0x277D75D18]);
    [(UIVisualEffectView *)v5 bounds];
    v7 = [v6 initWithFrame:?];
    [v7 setAutoresizingMask:18];
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    [v7 setBackgroundColor:systemBlackColor];

    [v7 setAlpha:0.5];
    contentView = [(UIVisualEffectView *)v5 contentView];
    [contentView addSubview:v7];

    [(UIVisualEffectView *)v5 setAlpha:0.0];
    v10 = self->_blurView;
    self->_blurView = v5;

    blurView = self->_blurView;
  }

  return blurView;
}

@end