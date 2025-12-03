@interface HUCameraPlayerFooterViewController
- (UIButton)liveButton;
- (UIButton)nearbyAccessoryButton;
- (id)platterWithView:(id)view;
- (void)viewDidLoad;
@end

@implementation HUCameraPlayerFooterViewController

- (id)platterWithView:(id)view
{
  v3 = MEMORY[0x277CB8590];
  viewCopy = view;
  v5 = objc_alloc_init(v3);
  [v5 bounds];
  [viewCopy setFrame:?];
  [viewCopy setAutoresizingMask:18];
  [v5 addSubview:viewCopy applyingMaterialStyle:0 tintEffectStyle:1];
  [v5 _setContinuousCornerRadius:16.0];
  [v5 center];
  [viewCopy setCenter:?];

  return v5;
}

- (void)viewDidLoad
{
  v36.receiver = self;
  v36.super_class = HUCameraPlayerFooterViewController;
  [(HUCameraPlayerFooterViewController *)&v36 viewDidLoad];
  view = [(HUCameraPlayerFooterViewController *)self view];
  liveButton = [(HUCameraPlayerFooterViewController *)self liveButton];
  [view addSubview:liveButton];

  nearbyAccessoryButton = [(HUCameraPlayerFooterViewController *)self nearbyAccessoryButton];
  v6 = [(HUCameraPlayerFooterViewController *)self platterWithView:nearbyAccessoryButton];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(HUCameraPlayerFooterViewController *)self view];
  [view2 addSubview:v6];

  liveButton2 = [(HUCameraPlayerFooterViewController *)self liveButton];
  heightAnchor = [liveButton2 heightAnchor];
  v10 = [heightAnchor constraintEqualToConstant:44.0];
  [v10 setActive:1];

  liveButton3 = [(HUCameraPlayerFooterViewController *)self liveButton];
  widthAnchor = [liveButton3 widthAnchor];
  v13 = [widthAnchor constraintGreaterThanOrEqualToConstant:55.0];
  [v13 setActive:1];

  liveButton4 = [(HUCameraPlayerFooterViewController *)self liveButton];
  centerYAnchor = [liveButton4 centerYAnchor];
  view3 = [(HUCameraPlayerFooterViewController *)self view];
  centerYAnchor2 = [view3 centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v18 setActive:1];

  liveButton5 = [(HUCameraPlayerFooterViewController *)self liveButton];
  leftAnchor = [liveButton5 leftAnchor];
  view4 = [(HUCameraPlayerFooterViewController *)self view];
  leftAnchor2 = [view4 leftAnchor];
  v23 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v23 setActive:1];

  heightAnchor2 = [v6 heightAnchor];
  v25 = [heightAnchor2 constraintEqualToConstant:44.0];
  [v25 setActive:1];

  widthAnchor2 = [v6 widthAnchor];
  v27 = [widthAnchor2 constraintEqualToConstant:55.0];
  [v27 setActive:1];

  centerYAnchor3 = [v6 centerYAnchor];
  view5 = [(HUCameraPlayerFooterViewController *)self view];
  centerYAnchor4 = [view5 centerYAnchor];
  v31 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v31 setActive:1];

  rightAnchor = [v6 rightAnchor];
  view6 = [(HUCameraPlayerFooterViewController *)self view];
  rightAnchor2 = [view6 rightAnchor];
  v35 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v35 setActive:1];
}

- (UIButton)nearbyAccessoryButton
{
  nearbyAccessoryButton = self->_nearbyAccessoryButton;
  if (!nearbyAccessoryButton)
  {
    hu_clipScrubberNearbyAccessoryButton = [MEMORY[0x277D75220] hu_clipScrubberNearbyAccessoryButton];
    v5 = self->_nearbyAccessoryButton;
    self->_nearbyAccessoryButton = hu_clipScrubberNearbyAccessoryButton;

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
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    [(UIButton *)v4 setTintColor:systemBlackColor];

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