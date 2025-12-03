@interface MediaControlsRelativeVolumeStepper
- (MediaControlsRelativeVolumeStepper)initWithFrame:(CGRect)frame;
- (void)decreaseButtonHoldBegan:(id)began;
- (void)decreaseButtonHoldReleased:(id)released;
- (void)increaseButtonHoldBegan:(id)began;
- (void)increaseButtonHoldReleased:(id)released;
- (void)layoutSubviews;
- (void)setVisualStylingProvider:(id)provider;
@end

@implementation MediaControlsRelativeVolumeStepper

- (MediaControlsRelativeVolumeStepper)initWithFrame:(CGRect)frame
{
  v45[8] = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = MediaControlsRelativeVolumeStepper;
  v3 = [(MediaControlsRelativeVolumeStepper *)&v44 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    mediaControlsBundle = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    mediaControlsBundle = v3->_mediaControlsBundle;
    v3->_mediaControlsBundle = mediaControlsBundle;

    v6 = [MEMORY[0x1E69AE158] materialViewWithRecipe:4 configuration:4];
    decreaseBackground = v3->_decreaseBackground;
    v3->_decreaseBackground = v6;

    [(MTMaterialView *)v3->_decreaseBackground setClipsToBounds:1];
    [(MediaControlsRelativeVolumeStepper *)v3 addSubview:v3->_decreaseBackground];
    v8 = [MEMORY[0x1E69704C0] easyTouchButtonWithType:0];
    decreaseButton = v3->_decreaseButton;
    v3->_decreaseButton = v8;

    [(MPButton *)v3->_decreaseButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = v3->_decreaseButton;
    v11 = +[MediaControlsTheme volumeMinImage];
    [(MPButton *)v10 setImage:v11 forState:0];

    [(MediaControlsRelativeVolumeStepper *)v3 addSubview:v3->_decreaseButton];
    v12 = [MEMORY[0x1E69AE158] materialViewWithRecipe:4 configuration:4];
    increaseBackground = v3->_increaseBackground;
    v3->_increaseBackground = v12;

    [(MTMaterialView *)v3->_increaseBackground setClipsToBounds:1];
    [(MediaControlsRelativeVolumeStepper *)v3 addSubview:v3->_increaseBackground];
    v14 = [MEMORY[0x1E69704C0] easyTouchButtonWithType:0];
    increaseButton = v3->_increaseButton;
    v3->_increaseButton = v14;

    [(MPButton *)v3->_increaseButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = v3->_increaseButton;
    v17 = +[MediaControlsTheme volumeMaxImage];
    [(MPButton *)v16 setImage:v17 forState:0];

    [(MediaControlsRelativeVolumeStepper *)v3 addSubview:v3->_increaseButton];
    [(MPButton *)v3->_decreaseButton addTarget:v3 action:sel_decreaseTouchUpInside_ forControlEvents:64];
    [(MPButton *)v3->_decreaseButton addTarget:v3 action:sel_decreaseButtonHoldBegan_ forControlEvents:0x1000000];
    [(MPButton *)v3->_decreaseButton addTarget:v3 action:sel_decreaseButtonHoldReleased_ forControlEvents:0x2000000];
    [(MPButton *)v3->_increaseButton addTarget:v3 action:sel_increaseTouchUpInside_ forControlEvents:64];
    [(MPButton *)v3->_increaseButton addTarget:v3 action:sel_increaseButtonHoldBegan_ forControlEvents:0x1000000];
    [(MPButton *)v3->_increaseButton addTarget:v3 action:sel_increaseButtonHoldReleased_ forControlEvents:0x2000000];
    trailingAnchor = [(MPButton *)v3->_increaseButton trailingAnchor];
    trailingAnchor2 = [(MediaControlsRelativeVolumeStepper *)v3 trailingAnchor];
    v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

    LODWORD(v20) = 1148829696;
    [v43 setPriority:v20];
    v34 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(MPButton *)v3->_decreaseButton leadingAnchor];
    leadingAnchor2 = [(MediaControlsRelativeVolumeStepper *)v3 leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v45[0] = v40;
    heightAnchor = [(MPButton *)v3->_decreaseButton heightAnchor];
    v38 = [heightAnchor constraintEqualToConstant:28.0];
    v45[1] = v38;
    centerYAnchor = [(MPButton *)v3->_decreaseButton centerYAnchor];
    centerYAnchor2 = [(MediaControlsRelativeVolumeStepper *)v3 centerYAnchor];
    v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v45[2] = v35;
    widthAnchor = [(MPButton *)v3->_decreaseButton widthAnchor];
    widthAnchor2 = [(MPButton *)v3->_increaseButton widthAnchor];
    v31 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v45[3] = v31;
    leadingAnchor3 = [(MPButton *)v3->_increaseButton leadingAnchor];
    trailingAnchor3 = [(MPButton *)v3->_decreaseButton trailingAnchor];
    v23 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:7.0];
    v45[4] = v23;
    heightAnchor2 = [(MPButton *)v3->_increaseButton heightAnchor];
    v25 = [heightAnchor2 constraintEqualToConstant:28.0];
    v45[5] = v25;
    centerYAnchor3 = [(MPButton *)v3->_increaseButton centerYAnchor];
    centerYAnchor4 = [(MediaControlsRelativeVolumeStepper *)v3 centerYAnchor];
    v28 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v45[6] = v28;
    v45[7] = v43;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:8];
    [v34 activateConstraints:v29];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MediaControlsRelativeVolumeStepper;
  [(MediaControlsRelativeVolumeStepper *)&v3 layoutSubviews];
  [(MPButton *)self->_decreaseButton frame];
  [(MTMaterialView *)self->_decreaseBackground setFrame:?];
  [(MPButton *)self->_decreaseButton frame];
  [(MTMaterialView *)self->_decreaseBackground _setContinuousCornerRadius:CGRectGetHeight(v4) * 0.5];
  [(MPButton *)self->_increaseButton frame];
  [(MTMaterialView *)self->_increaseBackground setFrame:?];
  [(MPButton *)self->_increaseButton frame];
  [(MTMaterialView *)self->_increaseBackground _setContinuousCornerRadius:CGRectGetHeight(v5) * 0.5];
}

- (void)decreaseButtonHoldBegan:(id)began
{
  if (objc_opt_respondsToSelector())
  {
    volumeController = self->_volumeController;

    [(MPVolumeController *)volumeController beginDecreasingRelativeVolume];
  }
}

- (void)decreaseButtonHoldReleased:(id)released
{
  if ([(MPButton *)self->_decreaseButton isHolding]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    volumeController = self->_volumeController;

    [(MPVolumeController *)volumeController endDecreasingRelativeVolume];
  }
}

- (void)increaseButtonHoldBegan:(id)began
{
  if (objc_opt_respondsToSelector())
  {
    volumeController = self->_volumeController;

    [(MPVolumeController *)volumeController beginIncreasingRelativeVolume];
  }
}

- (void)increaseButtonHoldReleased:(id)released
{
  if ([(MPButton *)self->_increaseButton isHolding]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    volumeController = self->_volumeController;

    [(MPVolumeController *)volumeController endIncreasingRelativeVolume];
  }
}

- (void)setVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != providerCopy)
  {
    v14 = providerCopy;
    imageView = [(MPButton *)self->_decreaseButton imageView];
    [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:imageView];

    v8 = self->_visualStylingProvider;
    imageView2 = [(MPButton *)self->_increaseButton imageView];
    [(MTVisualStylingProvider *)v8 stopAutomaticallyUpdatingView:imageView2];

    objc_storeStrong(&self->_visualStylingProvider, provider);
    v10 = self->_visualStylingProvider;
    imageView3 = [(MPButton *)self->_decreaseButton imageView];
    [(MTVisualStylingProvider *)v10 automaticallyUpdateView:imageView3 withStyle:0];

    v12 = self->_visualStylingProvider;
    imageView4 = [(MPButton *)self->_increaseButton imageView];
    [(MTVisualStylingProvider *)v12 automaticallyUpdateView:imageView4 withStyle:0];

    providerCopy = v14;
  }
}

@end