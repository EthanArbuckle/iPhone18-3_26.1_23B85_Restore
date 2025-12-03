@interface HUClipScrubberAccessoryToggleView
- (HUClipScrubberAccessoryToggleView)initWithFrame:(CGRect)frame;
- (UIButton)accessoryButton;
- (UIButton)liveButton;
- (void)displayForTimelineState:(unint64_t)state;
- (void)displayWithoutBackgroundVisualEffects;
@end

@implementation HUClipScrubberAccessoryToggleView

- (HUClipScrubberAccessoryToggleView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = HUClipScrubberAccessoryToggleView;
  v3 = [(HUClipScrubberAccessoryToggleView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUClipScrubberAccessoryToggleView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_alloc_init(MEMORY[0x277CB8590]);
    [(UIView *)v5 setAutoresizingMask:18];
    [(HUClipScrubberAccessoryToggleView *)v4 bounds];
    [(UIView *)v5 setFrame:?];
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v5;
    v7 = v5;

    [(HUClipScrubberAccessoryToggleView *)v4 addSubview:v7];
    liveButton = [(HUClipScrubberAccessoryToggleView *)v4 liveButton];
    [(HUClipScrubberAccessoryToggleView *)v4 addSubview:liveButton];

    accessoryButton = [(HUClipScrubberAccessoryToggleView *)v4 accessoryButton];
    [(HUClipScrubberAccessoryToggleView *)v4 addSubview:accessoryButton];

    layer = [(HUClipScrubberAccessoryToggleView *)v4 layer];
    [layer setCornerRadius:16.0];

    [(HUClipScrubberAccessoryToggleView *)v4 setClipsToBounds:1];
  }

  return v4;
}

- (void)displayForTimelineState:(unint64_t)state
{
  v4 = state != 1;
  v5 = state == 1;
  liveButton = [(HUClipScrubberAccessoryToggleView *)self liveButton];
  [liveButton setHidden:v5];

  accessoryButton = [(HUClipScrubberAccessoryToggleView *)self accessoryButton];
  [accessoryButton setHidden:v4];
}

- (UIButton)accessoryButton
{
  accessoryButton = self->_accessoryButton;
  if (!accessoryButton)
  {
    hu_clipScrubberNearbyAccessoryButton = [MEMORY[0x277D75220] hu_clipScrubberNearbyAccessoryButton];
    [(HUClipScrubberAccessoryToggleView *)self bounds];
    [(UIButton *)hu_clipScrubberNearbyAccessoryButton setFrame:?];
    layer = [(UIButton *)hu_clipScrubberNearbyAccessoryButton layer];
    [layer setCornerRadius:16.0];

    [(UIButton *)hu_clipScrubberNearbyAccessoryButton setAutoresizingMask:18];
    v6 = self->_accessoryButton;
    self->_accessoryButton = hu_clipScrubberNearbyAccessoryButton;

    accessoryButton = self->_accessoryButton;
  }

  return accessoryButton;
}

- (UIButton)liveButton
{
  liveButton = self->_liveButton;
  if (!liveButton)
  {
    hu_clipScrubberLiveButton = [MEMORY[0x277D75220] hu_clipScrubberLiveButton];
    [(HUClipScrubberAccessoryToggleView *)self bounds];
    [(UIButton *)hu_clipScrubberLiveButton setFrame:?];
    [(UIButton *)hu_clipScrubberLiveButton setAutoresizingMask:18];
    [(UIButton *)hu_clipScrubberLiveButton setHidden:1];
    v5 = self->_liveButton;
    self->_liveButton = hu_clipScrubberLiveButton;

    liveButton = self->_liveButton;
  }

  return liveButton;
}

- (void)displayWithoutBackgroundVisualEffects
{
  backgroundView = [(HUClipScrubberAccessoryToggleView *)self backgroundView];
  [backgroundView setHidden:1];
}

@end