@interface HUCameraPlayerFooterViewController
- (UIButton)liveButton;
- (UIButton)nearbyAccessoryButton;
- (id)platterWithView:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUCameraPlayerFooterViewController

- (id)platterWithView:(id)a3
{
  v3 = MEMORY[0x277CB8590];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 bounds];
  [v4 setFrame:?];
  [v4 setAutoresizingMask:18];
  [v5 addSubview:v4 applyingMaterialStyle:0 tintEffectStyle:1];
  [v5 _setContinuousCornerRadius:16.0];
  [v5 center];
  [v4 setCenter:?];

  return v5;
}

- (void)viewDidLoad
{
  v36.receiver = self;
  v36.super_class = HUCameraPlayerFooterViewController;
  [(HUCameraPlayerFooterViewController *)&v36 viewDidLoad];
  v3 = [(HUCameraPlayerFooterViewController *)self view];
  v4 = [(HUCameraPlayerFooterViewController *)self liveButton];
  [v3 addSubview:v4];

  v5 = [(HUCameraPlayerFooterViewController *)self nearbyAccessoryButton];
  v6 = [(HUCameraPlayerFooterViewController *)self platterWithView:v5];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(HUCameraPlayerFooterViewController *)self view];
  [v7 addSubview:v6];

  v8 = [(HUCameraPlayerFooterViewController *)self liveButton];
  v9 = [v8 heightAnchor];
  v10 = [v9 constraintEqualToConstant:44.0];
  [v10 setActive:1];

  v11 = [(HUCameraPlayerFooterViewController *)self liveButton];
  v12 = [v11 widthAnchor];
  v13 = [v12 constraintGreaterThanOrEqualToConstant:55.0];
  [v13 setActive:1];

  v14 = [(HUCameraPlayerFooterViewController *)self liveButton];
  v15 = [v14 centerYAnchor];
  v16 = [(HUCameraPlayerFooterViewController *)self view];
  v17 = [v16 centerYAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [(HUCameraPlayerFooterViewController *)self liveButton];
  v20 = [v19 leftAnchor];
  v21 = [(HUCameraPlayerFooterViewController *)self view];
  v22 = [v21 leftAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [v6 heightAnchor];
  v25 = [v24 constraintEqualToConstant:44.0];
  [v25 setActive:1];

  v26 = [v6 widthAnchor];
  v27 = [v26 constraintEqualToConstant:55.0];
  [v27 setActive:1];

  v28 = [v6 centerYAnchor];
  v29 = [(HUCameraPlayerFooterViewController *)self view];
  v30 = [v29 centerYAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  [v31 setActive:1];

  v32 = [v6 rightAnchor];
  v33 = [(HUCameraPlayerFooterViewController *)self view];
  v34 = [v33 rightAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  [v35 setActive:1];
}

- (UIButton)nearbyAccessoryButton
{
  nearbyAccessoryButton = self->_nearbyAccessoryButton;
  if (!nearbyAccessoryButton)
  {
    v4 = [MEMORY[0x277D75220] hu_clipScrubberNearbyAccessoryButton];
    v5 = self->_nearbyAccessoryButton;
    self->_nearbyAccessoryButton = v4;

    nearbyAccessoryButton = self->_nearbyAccessoryButton;
  }

  return nearbyAccessoryButton;
}

- (UIButton)liveButton
{
  liveButton = self->_liveButton;
  if (!liveButton)
  {
    v4 = [MEMORY[0x277D75220] hu_clipScrubberLiveButtonWithMaximimumLineHeight:0.0];
    v5 = [MEMORY[0x277D75348] systemBlackColor];
    [(UIButton *)v4 setTintColor:v5];

    [(UIButton *)v4 setContentEdgeInsets:0.0, 18.0, 0.0, 18.0];
    [(UIButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4 _setContinuousCornerRadius:16.0];
    [(UIButton *)v4 setUserInteractionEnabled:0];
    [(UIButton *)v4 setHidden:1];
    v6 = self->_liveButton;
    self->_liveButton = v4;

    liveButton = self->_liveButton;
  }

  return liveButton;
}

@end