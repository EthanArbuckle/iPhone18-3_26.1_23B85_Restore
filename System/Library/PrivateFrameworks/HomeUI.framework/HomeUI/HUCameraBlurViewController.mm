@interface HUCameraBlurViewController
- (BOOL)shouldShowBlurForPlaybackEngine:(id)a3;
- (UIVisualEffectView)blurView;
- (void)updateBlurWithPlaybackEngine:(id)a3 completionHandler:(id)a4;
- (void)viewDidLoad;
@end

@implementation HUCameraBlurViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HUCameraBlurViewController;
  [(HUCameraBlurViewController *)&v10 viewDidLoad];
  v3 = [(HUCameraBlurViewController *)self view];
  [v3 setUserInteractionEnabled:0];

  v4 = [(HUCameraBlurViewController *)self view];
  v5 = [(HUCameraBlurViewController *)self blurView];
  [v4 addSubview:v5];

  v6 = MEMORY[0x277CCAAD0];
  v7 = [(HUCameraBlurViewController *)self blurView];
  v8 = [(HUCameraBlurViewController *)self view];
  v9 = [v6 hu_constraintsSizingAnchorProvider:v7 toAnchorProvider:v8];
  [v6 activateConstraints:v9];
}

- (BOOL)shouldShowBlurForPlaybackEngine:(id)a3
{
  v3 = a3;
  v4 = ([MEMORY[0x277D14CE8] isPressDemoModeEnabled] & 1) == 0 && objc_msgSend(v3, "timelineState") != 2 && objc_msgSend(v3, "timeControlStatus") == 0;

  return v4;
}

- (void)updateBlurWithPlaybackEngine:(id)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HUCameraBlurViewController *)self shouldShowBlurForPlaybackEngine:v6];
  [(HUCameraBlurViewController *)self setShowingBlur:v8];
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(HUCameraBlurViewController *)self showingBlur];
    v11 = [v6 engineModeDescription];
    v12 = [v6 timelineStateDescription];
    v13 = [v6 timeControlStatusDescription];
    v18[0] = 67110146;
    v18[1] = v10;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Showing blur:%{BOOL}d engine:%@ engineMode:%@ timelineState:%@ timeControlStatus:%@.", v18, 0x30u);
  }

  v14 = [(HUCameraBlurViewController *)self showingBlur];
  v15 = [(HUCameraBlurViewController *)self blurView];
  v16 = [v15 layer];
  *&v17 = v14;
  [v16 setOpacity:v17];

  if (v7)
  {
    v7[2](v7, v8);
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
    v8 = [MEMORY[0x277D75348] systemBlackColor];
    [v7 setBackgroundColor:v8];

    [v7 setAlpha:0.5];
    v9 = [(UIVisualEffectView *)v5 contentView];
    [v9 addSubview:v7];

    [(UIVisualEffectView *)v5 setAlpha:0.0];
    v10 = self->_blurView;
    self->_blurView = v5;

    blurView = self->_blurView;
  }

  return blurView;
}

@end