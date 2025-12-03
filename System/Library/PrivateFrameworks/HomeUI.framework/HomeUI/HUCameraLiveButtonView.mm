@interface HUCameraLiveButtonView
- (AVBackgroundView)avBackground;
- (UIButton)liveButton;
- (void)didMoveToSuperview;
- (void)updateConstraints;
- (void)updateDisplayForStreaming:(BOOL)streaming;
@end

@implementation HUCameraLiveButtonView

- (void)didMoveToSuperview
{
  v9.receiver = self;
  v9.super_class = HUCameraLiveButtonView;
  [(HUCameraLiveButtonView *)&v9 didMoveToSuperview];
  avBackground = [(HUCameraLiveButtonView *)self avBackground];
  superview = [avBackground superview];

  if (superview != self)
  {
    avBackground2 = [(HUCameraLiveButtonView *)self avBackground];
    [(HUCameraLiveButtonView *)self addSubview:avBackground2];
  }

  liveButton = [(HUCameraLiveButtonView *)self liveButton];
  superview2 = [liveButton superview];

  if (superview2 != self)
  {
    liveButton2 = [(HUCameraLiveButtonView *)self liveButton];
    [(HUCameraLiveButtonView *)self addSubview:liveButton2];
  }
}

- (UIButton)liveButton
{
  liveButton = self->_liveButton;
  if (!liveButton)
  {
    hu_clipScrubberLiveButton = [MEMORY[0x277D75220] hu_clipScrubberLiveButton];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIButton *)hu_clipScrubberLiveButton setBackgroundColor:clearColor];

    [(UIButton *)hu_clipScrubberLiveButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)hu_clipScrubberLiveButton _setContinuousCornerRadius:16.0];
    [(UIButton *)hu_clipScrubberLiveButton setContentEdgeInsets:0.0, 18.0, 0.0, 18.0];
    v6 = self->_liveButton;
    self->_liveButton = hu_clipScrubberLiveButton;

    liveButton = self->_liveButton;
  }

  return liveButton;
}

- (AVBackgroundView)avBackground
{
  avBackground = self->_avBackground;
  if (!avBackground)
  {
    v4 = objc_alloc_init(MEMORY[0x277CB8590]);
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 _setContinuousCornerRadius:16.0];
    v5 = self->_avBackground;
    self->_avBackground = v4;

    avBackground = self->_avBackground;
  }

  return avBackground;
}

- (void)updateDisplayForStreaming:(BOOL)streaming
{
  if (streaming)
  {
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    liveButton = [(HUCameraLiveButtonView *)self liveButton];
    [liveButton setBackgroundColor:systemOrangeColor];

    [MEMORY[0x277D75348] systemBlackColor];
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    liveButton2 = [(HUCameraLiveButtonView *)self liveButton];
    [liveButton2 setBackgroundColor:clearColor];

    [MEMORY[0x277D75348] systemWhiteColor];
  }
  v9 = ;
  liveButton3 = [(HUCameraLiveButtonView *)self liveButton];
  [liveButton3 setTintColor:v9];
}

- (void)updateConstraints
{
  v33[7] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = HUCameraLiveButtonView;
  [(HUCameraLiveButtonView *)&v32 updateConstraints];
  v19 = MEMORY[0x277CCAAD0];
  avBackground = [(HUCameraLiveButtonView *)self avBackground];
  rightAnchor = [avBackground rightAnchor];
  rightAnchor2 = [(HUCameraLiveButtonView *)self rightAnchor];
  v28 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v33[0] = v28;
  avBackground2 = [(HUCameraLiveButtonView *)self avBackground];
  heightAnchor = [avBackground2 heightAnchor];
  v25 = [heightAnchor constraintEqualToConstant:44.0];
  v33[1] = v25;
  avBackground3 = [(HUCameraLiveButtonView *)self avBackground];
  widthAnchor = [avBackground3 widthAnchor];
  liveButton = [(HUCameraLiveButtonView *)self liveButton];
  widthAnchor2 = [liveButton widthAnchor];
  v20 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v33[2] = v20;
  avBackground4 = [(HUCameraLiveButtonView *)self avBackground];
  centerYAnchor = [avBackground4 centerYAnchor];
  centerYAnchor2 = [(HUCameraLiveButtonView *)self centerYAnchor];
  v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v33[3] = v15;
  liveButton2 = [(HUCameraLiveButtonView *)self liveButton];
  rightAnchor3 = [liveButton2 rightAnchor];
  rightAnchor4 = [(HUCameraLiveButtonView *)self rightAnchor];
  v4 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v33[4] = v4;
  liveButton3 = [(HUCameraLiveButtonView *)self liveButton];
  centerYAnchor3 = [liveButton3 centerYAnchor];
  centerYAnchor4 = [(HUCameraLiveButtonView *)self centerYAnchor];
  v8 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v33[5] = v8;
  liveButton4 = [(HUCameraLiveButtonView *)self liveButton];
  heightAnchor2 = [liveButton4 heightAnchor];
  v11 = [heightAnchor2 constraintEqualToConstant:44.0];
  v33[6] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:7];
  [v19 activateConstraints:v12];
}

@end