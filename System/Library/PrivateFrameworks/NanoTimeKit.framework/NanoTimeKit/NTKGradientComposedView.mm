@interface NTKGradientComposedView
- (NTKGradientComposedView)initWithDevice:(id)a3;
- (void)applyBackgroundGradientColorsFromPalette:(id)a3;
- (void)applyEditingComplicationsFraction:(double)a3;
- (void)applyForegroundGradientWithTopColor:(id)a3 centerColor:(id)a4 bottomColor:(id)a5;
- (void)applyGossamerColorPalette:(id)a3;
- (void)applyGradientColorsFromColorPalette:(id)a3 toView:(id)a4;
- (void)applyImageViewTransitionFraction:(double)a3;
- (void)setFilterOn:(BOOL)a3;
- (void)setRootContainerView:(id)a3;
@end

@implementation NTKGradientComposedView

- (NTKGradientComposedView)initWithDevice:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 screenBounds];
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

          v26 = [*(*(&v40 + 1) + 8 * i) gradientLayer];
          [v26 setType:v24];
          [v26 setStartPoint:{0.0, 0.0}];
          [v26 setEndPoint:{0.0, 1.0}];
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

    v31 = [[NTKRoundedCornerOverlayView alloc] initWithFrame:v4 forDeviceCornerRadius:v6, v8, v10, v12];
    cornerOverlayView = v13->_cornerOverlayView;
    v13->_cornerOverlayView = v31;

    v33 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v6, v8, v10, v12}];
    backgroundImageView = v13->_backgroundImageView;
    v13->_backgroundImageView = v33;

    v35 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v8, v10, v12}];
    backgroundDimmingView = v13->_backgroundDimmingView;
    v13->_backgroundDimmingView = v35;

    v37 = v13->_backgroundDimmingView;
    v38 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v37 setBackgroundColor:v38];

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

- (void)setRootContainerView:(id)a3
{
  v4 = a3;
  rootContainerView = self->_rootContainerView;
  v10 = v4;
  if (rootContainerView)
  {
    [(UIView *)rootContainerView removeFromSuperview];
    v6 = [(UIView *)self->_rootContainerView layer];
    [v6 setCompositingFilter:0];

    v4 = v10;
  }

  self->_rootContainerView = v4;
  if (v4)
  {
    [(UIView *)self->_composedView addSubview:v10];
    v7 = [(UIView *)self->_rootContainerView layer];
    v8 = v7;
    if (self->_filterOn)
    {
      v9 = *MEMORY[0x277CDA5A0];
    }

    else
    {
      v9 = 0;
    }

    [v7 setCompositingFilter:v9];

    v4 = v10;
  }
}

- (void)setFilterOn:(BOOL)a3
{
  if (self->_filterOn != a3)
  {
    self->_filterOn = a3;
    v4 = [(UIView *)self->_rootContainerView layer];
    v5 = v4;
    if (self->_filterOn)
    {
      v6 = *MEMORY[0x277CDA5A0];
    }

    else
    {
      v6 = 0;
    }

    [v4 setCompositingFilter:v6];

    filterGradientView = self->_filterGradientView;
    v8 = !self->_filterOn;

    [(NTKGradientView *)filterGradientView setHidden:v8];
  }
}

- (void)applyGossamerColorPalette:(id)a3
{
  v13 = a3;
  v4 = [v13 imageViewFraction];
  [v4 doubleValue];
  [(NTKGradientComposedView *)self applyImageViewTransitionFraction:?];

  [(NTKGradientComposedView *)self applyBackgroundGradientColorsFromPalette:v13];
  if (self->_showForegroundGradient)
  {
    v5 = [v13 foregroundGradientFraction];
    [v5 doubleValue];
    v7 = v6;
    v8 = v6 > 0.0;

    [(NTKGradientComposedView *)self setFilterOn:v8];
    if (v7 > 0.0)
    {
      v9 = [v13 topAccentColor];
      v10 = [v13 centerAccentColor];
      v11 = [v13 bottomAccentColor];
      [(NTKGradientComposedView *)self applyForegroundGradientWithTopColor:v9 centerColor:v10 bottomColor:v11];
    }
  }

  else
  {
    [(NTKGradientComposedView *)self setFilterOn:0];
  }

  v12 = [v13 editingComplicationsFraction];
  [v12 doubleValue];
  [(NTKGradientComposedView *)self applyEditingComplicationsFraction:?];
}

- (void)applyEditingComplicationsFraction:(double)a3
{
  CLKInterpolateBetweenFloatsClipped();
  backgroundDimmingView = self->_backgroundDimmingView;

  [(UIView *)backgroundDimmingView setAlpha:?];
}

- (void)applyImageViewTransitionFraction:(double)a3
{
  [(UIImageView *)self->_backgroundImageView setAlpha:?];
  if (a3 > 0.0)
  {
    v5 = [(UIImageView *)self->_backgroundImageView image];

    if (!v5)
    {
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = [MEMORY[0x277D755B8] imageNamed:@"multicolorBackground" inBundle:v7 withConfiguration:0];
      [(UIImageView *)self->_backgroundImageView setImage:v6];
    }
  }
}

- (void)applyBackgroundGradientColorsFromPalette:(id)a3
{
  v12 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v12;
    v5 = [v4 fromPalette];
    [(NTKGradientComposedView *)self applyGradientColorsFromColorPalette:v5 toView:self->_backgroundGradientView];

    v6 = [v4 toPalette];
    [(NTKGradientComposedView *)self applyGradientColorsFromColorPalette:v6 toView:self->_backgroundGradientTransitionView];

    backgroundGradientTransitionView = self->_backgroundGradientTransitionView;
    [v4 transitionFraction];
    v9 = v8;

    v10 = backgroundGradientTransitionView;
    v11 = v9;
  }

  else
  {
    [(NTKGradientComposedView *)self applyGradientColorsFromColorPalette:v12 toView:self->_backgroundGradientView];
    v10 = self->_backgroundGradientTransitionView;
    v11 = 0.0;
  }

  [(NTKGradientView *)v10 setAlpha:v11];
}

- (void)applyGradientColorsFromColorPalette:(id)a3 toView:(id)a4
{
  v26[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 backgroundGradientColors];
  if ([v6 count] <= 1)
  {
    v7 = [v6 firstObject];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x277D75348] blackColor];
    }

    v10 = v9;

    v26[0] = v10;
    v26[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

    v6 = v11;
  }

  v12 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v6;
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
        v19 = [v18 CGColor];
        [v12 addObject:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v20 = [v5 gradientLayer];
  [v20 setColors:v12];
}

- (void)applyForegroundGradientWithTopColor:(id)a3 centerColor:(id)a4 bottomColor:(id)a5
{
  v16[3] = *MEMORY[0x277D85DE8];
  filterGradientView = self->_filterGradientView;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NTKGradientView *)filterGradientView gradientLayer];
  v12 = [v10 CGColor];

  v13 = [v9 CGColor];
  v16[1] = v13;
  v14 = [v8 CGColor];

  v16[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  [v11 setColors:v15];
}

@end