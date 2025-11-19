@interface HUClipScrubberAccessoryToggleView
- (HUClipScrubberAccessoryToggleView)initWithFrame:(CGRect)a3;
- (UIButton)accessoryButton;
- (UIButton)liveButton;
- (void)displayForTimelineState:(unint64_t)a3;
- (void)displayWithoutBackgroundVisualEffects;
@end

@implementation HUClipScrubberAccessoryToggleView

- (HUClipScrubberAccessoryToggleView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = HUClipScrubberAccessoryToggleView;
  v3 = [(HUClipScrubberAccessoryToggleView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [(HUClipScrubberAccessoryToggleView *)v4 liveButton];
    [(HUClipScrubberAccessoryToggleView *)v4 addSubview:v8];

    v9 = [(HUClipScrubberAccessoryToggleView *)v4 accessoryButton];
    [(HUClipScrubberAccessoryToggleView *)v4 addSubview:v9];

    v10 = [(HUClipScrubberAccessoryToggleView *)v4 layer];
    [v10 setCornerRadius:16.0];

    [(HUClipScrubberAccessoryToggleView *)v4 setClipsToBounds:1];
  }

  return v4;
}

- (void)displayForTimelineState:(unint64_t)a3
{
  v4 = a3 != 1;
  v5 = a3 == 1;
  v6 = [(HUClipScrubberAccessoryToggleView *)self liveButton];
  [v6 setHidden:v5];

  v7 = [(HUClipScrubberAccessoryToggleView *)self accessoryButton];
  [v7 setHidden:v4];
}

- (UIButton)accessoryButton
{
  accessoryButton = self->_accessoryButton;
  if (!accessoryButton)
  {
    v4 = [MEMORY[0x277D75220] hu_clipScrubberNearbyAccessoryButton];
    [(HUClipScrubberAccessoryToggleView *)self bounds];
    [(UIButton *)v4 setFrame:?];
    v5 = [(UIButton *)v4 layer];
    [v5 setCornerRadius:16.0];

    [(UIButton *)v4 setAutoresizingMask:18];
    v6 = self->_accessoryButton;
    self->_accessoryButton = v4;

    accessoryButton = self->_accessoryButton;
  }

  return accessoryButton;
}

- (UIButton)liveButton
{
  liveButton = self->_liveButton;
  if (!liveButton)
  {
    v4 = [MEMORY[0x277D75220] hu_clipScrubberLiveButton];
    [(HUClipScrubberAccessoryToggleView *)self bounds];
    [(UIButton *)v4 setFrame:?];
    [(UIButton *)v4 setAutoresizingMask:18];
    [(UIButton *)v4 setHidden:1];
    v5 = self->_liveButton;
    self->_liveButton = v4;

    liveButton = self->_liveButton;
  }

  return liveButton;
}

- (void)displayWithoutBackgroundVisualEffects
{
  v2 = [(HUClipScrubberAccessoryToggleView *)self backgroundView];
  [v2 setHidden:1];
}

@end