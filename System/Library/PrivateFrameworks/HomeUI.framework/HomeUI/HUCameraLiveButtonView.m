@interface HUCameraLiveButtonView
- (AVBackgroundView)avBackground;
- (UIButton)liveButton;
- (void)didMoveToSuperview;
- (void)updateConstraints;
- (void)updateDisplayForStreaming:(BOOL)a3;
@end

@implementation HUCameraLiveButtonView

- (void)didMoveToSuperview
{
  v9.receiver = self;
  v9.super_class = HUCameraLiveButtonView;
  [(HUCameraLiveButtonView *)&v9 didMoveToSuperview];
  v3 = [(HUCameraLiveButtonView *)self avBackground];
  v4 = [v3 superview];

  if (v4 != self)
  {
    v5 = [(HUCameraLiveButtonView *)self avBackground];
    [(HUCameraLiveButtonView *)self addSubview:v5];
  }

  v6 = [(HUCameraLiveButtonView *)self liveButton];
  v7 = [v6 superview];

  if (v7 != self)
  {
    v8 = [(HUCameraLiveButtonView *)self liveButton];
    [(HUCameraLiveButtonView *)self addSubview:v8];
  }
}

- (UIButton)liveButton
{
  liveButton = self->_liveButton;
  if (!liveButton)
  {
    v4 = [MEMORY[0x277D75220] hu_clipScrubberLiveButton];
    v5 = [MEMORY[0x277D75348] clearColor];
    [(UIButton *)v4 setBackgroundColor:v5];

    [(UIButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4 _setContinuousCornerRadius:16.0];
    [(UIButton *)v4 setContentEdgeInsets:0.0, 18.0, 0.0, 18.0];
    v6 = self->_liveButton;
    self->_liveButton = v4;

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

- (void)updateDisplayForStreaming:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277D75348] systemOrangeColor];
    v5 = [(HUCameraLiveButtonView *)self liveButton];
    [v5 setBackgroundColor:v4];

    [MEMORY[0x277D75348] systemBlackColor];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] clearColor];
    v7 = [(HUCameraLiveButtonView *)self liveButton];
    [v7 setBackgroundColor:v6];

    [MEMORY[0x277D75348] systemWhiteColor];
  }
  v9 = ;
  v8 = [(HUCameraLiveButtonView *)self liveButton];
  [v8 setTintColor:v9];
}

- (void)updateConstraints
{
  v33[7] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = HUCameraLiveButtonView;
  [(HUCameraLiveButtonView *)&v32 updateConstraints];
  v19 = MEMORY[0x277CCAAD0];
  v31 = [(HUCameraLiveButtonView *)self avBackground];
  v30 = [v31 rightAnchor];
  v29 = [(HUCameraLiveButtonView *)self rightAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v33[0] = v28;
  v27 = [(HUCameraLiveButtonView *)self avBackground];
  v26 = [v27 heightAnchor];
  v25 = [v26 constraintEqualToConstant:44.0];
  v33[1] = v25;
  v24 = [(HUCameraLiveButtonView *)self avBackground];
  v22 = [v24 widthAnchor];
  v23 = [(HUCameraLiveButtonView *)self liveButton];
  v21 = [v23 widthAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v33[2] = v20;
  v18 = [(HUCameraLiveButtonView *)self avBackground];
  v17 = [v18 centerYAnchor];
  v16 = [(HUCameraLiveButtonView *)self centerYAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v33[3] = v15;
  v14 = [(HUCameraLiveButtonView *)self liveButton];
  v13 = [v14 rightAnchor];
  v3 = [(HUCameraLiveButtonView *)self rightAnchor];
  v4 = [v13 constraintEqualToAnchor:v3];
  v33[4] = v4;
  v5 = [(HUCameraLiveButtonView *)self liveButton];
  v6 = [v5 centerYAnchor];
  v7 = [(HUCameraLiveButtonView *)self centerYAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v33[5] = v8;
  v9 = [(HUCameraLiveButtonView *)self liveButton];
  v10 = [v9 heightAnchor];
  v11 = [v10 constraintEqualToConstant:44.0];
  v33[6] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:7];
  [v19 activateConstraints:v12];
}

@end