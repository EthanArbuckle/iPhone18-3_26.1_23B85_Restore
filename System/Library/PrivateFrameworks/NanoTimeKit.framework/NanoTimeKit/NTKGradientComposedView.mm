@interface NTKGradientComposedView
- (NTKGradientComposedView)initWithDevice:(id)device;
- (void)applyBackgroundGradientColorsFromPalette:(id)palette;
- (void)applyEditingComplicationsFraction:(double)fraction;
- (void)applyForegroundGradientWithTopColor:(id)color centerColor:(id)centerColor bottomColor:(id)bottomColor;
- (void)applyGossamerColorPalette:(id)palette;
- (void)applyGradientColorsFromColorPalette:(id)palette toView:(id)view;
- (void)applyImageViewTransitionFraction:(double)fraction;
- (void)setFilterOn:(BOOL)on;
- (void)setRootContainerView:(id)view;
@end

@implementation NTKGradientComposedView

- (NTKGradientComposedView)initWithDevice:(id)device
{
  v47 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  [deviceCopy screenBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v44.receiver = self;
  v44.super_class = NTKGradientComposedView;
  v13 = [(NTKGradientComposedView *)&v44 initWithFrame:?];
  if (v13)
  {
    v14 = [[NTKGradientView alloc] initWithFrame:v6, v8, v10, v12];
    backgroundGradientView = v13->_backgroundGradientView;
    v13->_backgroundGradientView = v14;

    v16 = [[NTKGradientView alloc] initWithFrame:v6, v8, v10, v12];
    backgroundGradientTransitionView = v13->_backgroundGradientTransitionView;
    v13->_backgroundGradientTransitionView = v16;

    v18 = [[NTKGradientView alloc] initWithFrame:v6, v8, v10, v12];
    filterGradientView = v13->_filterGradientView;
    v13->_filterGradientView = v18;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v45[0] = v13->_backgroundGradientView;
    v45[1] = v13->_backgroundGradientTransitionView;
    v45[2] = v13->_filterGradientView;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
    v21 = [v20 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v41;
      v24 = *MEMORY[0x277CDA690];
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(v20);
          }

          gradientLayer = [*(*(&v40 + 1) + 8 * i) gradientLayer];
          [gradientLayer setType:v24];
          [gradientLayer setStartPoint:{0.0, 0.0}];
          [gradientLayer setEndPoint:{0.0, 1.0}];
        }

        v22 = [v20 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v22);
    }

    v27 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v8, v10, v12}];
    composedView = v13->_composedView;
    v13->_composedView = v27;

    v29 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v8, v10, v12}];
    cornerMaskView = v13->_cornerMaskView;
    v13->_cornerMaskView = v29;

    v31 = [[NTKRoundedCornerOverlayView alloc] initWithFrame:deviceCopy forDeviceCornerRadius:v6, v8, v10, v12];
    cornerOverlayView = v13->_cornerOverlayView;
    v13->_cornerOverlayView = v31;

    v33 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v6, v8, v10, v12}];
    backgroundImageView = v13->_backgroundImageView;
    v13->_backgroundImageView = v33;

    v35 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v8, v10, v12}];
    backgroundDimmingView = v13->_backgroundDimmingView;
    v13->_backgroundDimmingView = v35;

    v37 = v13->_backgroundDimmingView;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v37 setBackgroundColor:blackColor];

    [(UIView *)v13->_backgroundDimmingView setAlpha:0.0];
    [(UIView *)v13->_cornerMaskView addSubview:v13->_backgroundGradientView];
    [(UIView *)v13->_cornerMaskView addSubview:v13->_backgroundGradientTransitionView];
    [(UIView *)v13->_cornerMaskView addSubview:v13->_backgroundImageView];
    [(UIView *)v13->_cornerMaskView addSubview:v13->_backgroundDimmingView];
    [(UIView *)v13->_cornerMaskView addSubview:v13->_composedView];
    [(UIView *)v13->_cornerMaskView addSubview:v13->_cornerOverlayView];
    [(UIView *)v13->_composedView addSubview:v13->_filterGradientView];
    [(NTKGradientComposedView *)v13 addSubview:v13->_cornerMaskView];
    [(NTKGradientComposedView *)v13 setFilterOn:1];
  }

  return v13;
}

- (void)setRootContainerView:(id)view
{
  viewCopy = view;
  rootContainerView = self->_rootContainerView;
  v10 = viewCopy;
  if (rootContainerView)
  {
    [(UIView *)rootContainerView removeFromSuperview];
    layer = [(UIView *)self->_rootContainerView layer];
    [layer setCompositingFilter:0];

    viewCopy = v10;
  }

  self->_rootContainerView = viewCopy;
  if (viewCopy)
  {
    [(UIView *)self->_composedView addSubview:v10];
    layer2 = [(UIView *)self->_rootContainerView layer];
    v8 = layer2;
    if (self->_filterOn)
    {
      v9 = *MEMORY[0x277CDA5A0];
    }

    else
    {
      v9 = 0;
    }

    [layer2 setCompositingFilter:v9];

    viewCopy = v10;
  }
}

- (void)setFilterOn:(BOOL)on
{
  if (self->_filterOn != on)
  {
    self->_filterOn = on;
    layer = [(UIView *)self->_rootContainerView layer];
    v5 = layer;
    if (self->_filterOn)
    {
      v6 = *MEMORY[0x277CDA5A0];
    }

    else
    {
      v6 = 0;
    }

    [layer setCompositingFilter:v6];

    filterGradientView = self->_filterGradientView;
    v8 = !self->_filterOn;

    [(NTKGradientView *)filterGradientView setHidden:v8];
  }
}

- (void)applyGossamerColorPalette:(id)palette
{
  paletteCopy = palette;
  imageViewFraction = [paletteCopy imageViewFraction];
  [imageViewFraction doubleValue];
  [(NTKGradientComposedView *)self applyImageViewTransitionFraction:?];

  [(NTKGradientComposedView *)self applyBackgroundGradientColorsFromPalette:paletteCopy];
  if (self->_showForegroundGradient)
  {
    foregroundGradientFraction = [paletteCopy foregroundGradientFraction];
    [foregroundGradientFraction doubleValue];
    v7 = v6;
    v8 = v6 > 0.0;

    [(NTKGradientComposedView *)self setFilterOn:v8];
    if (v7 > 0.0)
    {
      topAccentColor = [paletteCopy topAccentColor];
      centerAccentColor = [paletteCopy centerAccentColor];
      bottomAccentColor = [paletteCopy bottomAccentColor];
      [(NTKGradientComposedView *)self applyForegroundGradientWithTopColor:topAccentColor centerColor:centerAccentColor bottomColor:bottomAccentColor];
    }
  }

  else
  {
    [(NTKGradientComposedView *)self setFilterOn:0];
  }

  editingComplicationsFraction = [paletteCopy editingComplicationsFraction];
  [editingComplicationsFraction doubleValue];
  [(NTKGradientComposedView *)self applyEditingComplicationsFraction:?];
}

- (void)applyEditingComplicationsFraction:(double)fraction
{
  CLKInterpolateBetweenFloatsClipped();
  backgroundDimmingView = self->_backgroundDimmingView;

  [(UIView *)backgroundDimmingView setAlpha:?];
}

- (void)applyImageViewTransitionFraction:(double)fraction
{
  [(UIImageView *)self->_backgroundImageView setAlpha:?];
  if (fraction > 0.0)
  {
    image = [(UIImageView *)self->_backgroundImageView image];

    if (!image)
    {
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = [MEMORY[0x277D755B8] imageNamed:@"multicolorBackground" inBundle:v7 withConfiguration:0];
      [(UIImageView *)self->_backgroundImageView setImage:v6];
    }
  }
}

- (void)applyBackgroundGradientColorsFromPalette:(id)palette
{
  paletteCopy = palette;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = paletteCopy;
    fromPalette = [v4 fromPalette];
    [(NTKGradientComposedView *)self applyGradientColorsFromColorPalette:fromPalette toView:self->_backgroundGradientView];

    toPalette = [v4 toPalette];
    [(NTKGradientComposedView *)self applyGradientColorsFromColorPalette:toPalette toView:self->_backgroundGradientTransitionView];

    backgroundGradientTransitionView = self->_backgroundGradientTransitionView;
    [v4 transitionFraction];
    v9 = v8;

    v10 = backgroundGradientTransitionView;
    v11 = v9;
  }

  else
  {
    [(NTKGradientComposedView *)self applyGradientColorsFromColorPalette:paletteCopy toView:self->_backgroundGradientView];
    v10 = self->_backgroundGradientTransitionView;
    v11 = 0.0;
  }

  [(NTKGradientView *)v10 setAlpha:v11];
}

- (void)applyGradientColorsFromColorPalette:(id)palette toView:(id)view
{
  v26[2] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  backgroundGradientColors = [palette backgroundGradientColors];
  if ([backgroundGradientColors count] <= 1)
  {
    firstObject = [backgroundGradientColors firstObject];
    v8 = firstObject;
    if (firstObject)
    {
      blackColor = firstObject;
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
    }

    v10 = blackColor;

    v26[0] = v10;
    v26[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

    backgroundGradientColors = v11;
  }

  v12 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = backgroundGradientColors;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        cGColor = [v18 CGColor];
        [v12 addObject:cGColor];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  gradientLayer = [viewCopy gradientLayer];
  [gradientLayer setColors:v12];
}

- (void)applyForegroundGradientWithTopColor:(id)color centerColor:(id)centerColor bottomColor:(id)bottomColor
{
  v16[3] = *MEMORY[0x277D85DE8];
  filterGradientView = self->_filterGradientView;
  bottomColorCopy = bottomColor;
  centerColorCopy = centerColor;
  colorCopy = color;
  gradientLayer = [(NTKGradientView *)filterGradientView gradientLayer];
  cGColor = [colorCopy CGColor];

  cGColor2 = [centerColorCopy CGColor];
  v16[1] = cGColor2;
  cGColor3 = [bottomColorCopy CGColor];

  v16[2] = cGColor3;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  [gradientLayer setColors:v15];
}

@end