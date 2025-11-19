@interface MRUVolumeView
- (BOOL)isGroupRenderingRequired;
- (MRUVolumeView)initWithFrame:(CGRect)a3;
- (NSArray)punchOutRenderingViews;
- (void)layoutSubviews;
- (void)setCompactContinuousCornerRadius:(double)a3;
- (void)setContentMetrics:(id)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setPrimaryInteractionEnabled:(BOOL)a3;
- (void)setSecondaryInteractionEnabled:(BOOL)a3;
- (void)setShowEnvironmentSlider:(BOOL)a3;
- (void)setShowSecondarySlider:(BOOL)a3;
- (void)setShowSpatialAudioModeButton:(BOOL)a3;
- (void)setShowStepper:(BOOL)a3;
- (void)updateContentMetrics;
- (void)updateVisibility;
@end

@implementation MRUVolumeView

- (MRUVolumeView)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = MRUVolumeView;
  v3 = [(MRUVolumeView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MRUContinuousSliderView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(CCUIContinuousSliderView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    primarySlider = v3->_primarySlider;
    v3->_primarySlider = v9;

    [(MRUContinuousSliderView *)v3->_primarySlider setGlyphScale:MRUVolumeSliderGlyphScale()];
    [(CCUIBaseSliderView *)v3->_primarySlider setName:@"MRUVolumeIdentifierPrimaryMultiCategoryVolumeSlider"];
    [(CCUIBaseSliderView *)v3->_primarySlider setShouldIncludeVolumeButtonsInput:+[MRUFeatureFlagProvider isVolumeInputControlCenterEnabled]];
    [(CCUIBaseSliderView *)v3->_primarySlider setInteractiveWhenUnexpanded:1];
    [(MRUContinuousSliderView *)v3->_primarySlider setAccessibilityIdentifier:@"cc-volume-slider"];
    [(MRUVolumeView *)v3 addSubview:v3->_primarySlider];
    v11 = [(CCUIContinuousSliderView *)[MRUContinuousSliderView alloc] initWithFrame:v5, v6, v7, v8];
    secondarySlider = v3->_secondarySlider;
    v3->_secondarySlider = v11;

    [(MRUContinuousSliderView *)v3->_secondarySlider setAccessibilityIdentifier:@"cc-secondary-volume-slider"];
    [(MRUVolumeView *)v3 addSubview:v3->_secondarySlider];
    v13 = objc_alloc_init(MEMORY[0x1E6997260]);
    environmentSlider = v3->_environmentSlider;
    v3->_environmentSlider = v13;

    v15 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"hearingdevice.ear"];
    [(CCUIContinuousSliderView *)v3->_environmentSlider setGlyphImage:v15];

    [(MRUVolumeView *)v3 addSubview:v3->_environmentSlider];
    v16 = [[MRUVolumeStepperView alloc] initWithFrame:v5, v6, v7, v8];
    stepper = v3->_stepper;
    v3->_stepper = v16;

    [(MRUVolumeStepperView *)v3->_stepper setAccessibilityIdentifier:@"cc-volume-stepper"];
    [(MRUVolumeView *)v3 addSubview:v3->_stepper];
    v18 = [MRUVisualStylingProvider alloc];
    v19 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v20 = [(MRUVisualStylingProvider *)v18 initWithTraitCollection:v19];
    stylingProvider = v3->_stylingProvider;
    v3->_stylingProvider = v20;

    [(MRUVolumeView *)v3 updateContentMetrics];
    [(MRUVolumeView *)v3 updateVisibility];
  }

  return v3;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = MRUVolumeView;
  [(MRUVolumeView *)&v27 layoutSubviews];
  [(MRUVolumeView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = CCUISliderExpandedContentModuleWidth();
  v13 = v12;
  v14 = MRUDefaultExpandedWidth(v11);
  if (self->_expanded)
  {
    if (!MRULayoutShouldBeVertical() && self->_showSpatialAudioModeButton && self->_showSecondarySlider)
    {
      MRUExpandedContentInsets();
      MRUHortizonalScreenInset(self);
      UIRectInset();
      CGRectGetWidth(v28);
    }

    else
    {
      v31.origin.x = v4;
      v31.origin.y = v6;
      v31.size.width = v8;
      v31.size.height = v10;
      CGRectGetWidth(v31);
    }

    UIRectInset();
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    CGRectGetHeight(v32);
    v6 = 0.0;
    UIRectCenteredRect();
    [(MRUVolumeStepperView *)self->_stepper setFrame:?];
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    MinX = CGRectGetMinX(v33);
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v23 = CGRectGetHeight(v34);
    if (self->_showSecondarySlider || self->_showEnvironmentSlider)
    {
      v24 = v13;
      v25 = 0.0;
    }

    else
    {
      UIRectCenteredRect();
      MinX = v26;
    }

    [(MRUContinuousSliderView *)self->_primarySlider setFrame:MinX, v25, v24, v23];
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v17 = CGRectGetMaxX(v35) - v13;
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v10 = CGRectGetHeight(v36);
  }

  else
  {
    [(MRUVolumeStepperView *)self->_stepper setFrame:v4, v6, v8, v10];
    [(MRUContinuousSliderView *)self->_primarySlider setFrame:v4, v6, v8, v10];
    v15 = v14 + v13 * -2.0;
    v29.origin.x = v4;
    v29.origin.y = v6;
    v29.size.width = v8;
    v29.size.height = v10;
    v16 = CGRectGetWidth(v29) / v13;
    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    v17 = CGRectGetWidth(v30) + v15 * v16;
    v13 = v8;
  }

  [(MRUContinuousSliderView *)self->_secondarySlider setFrame:v17, v6, v13, v10];
  [(CCUIContinuousSliderView *)self->_environmentSlider setFrame:v17, v6, v13, v10];
}

- (void)setExpanded:(BOOL)a3
{
  if (self->_expanded != a3)
  {
    self->_expanded = a3;
    [(MRUVolumeView *)self updateContentMetrics];
    [(MRUVolumeView *)self updateVisibility];

    [(MRUVolumeView *)self setNeedsLayout];
  }
}

- (void)setShowSecondarySlider:(BOOL)a3
{
  if (self->_showSecondarySlider != a3)
  {
    self->_showSecondarySlider = a3;
    [(MRUVolumeView *)self updateVisibility];

    [(MRUVolumeView *)self setNeedsLayout];
  }
}

- (void)setShowEnvironmentSlider:(BOOL)a3
{
  if (self->_showEnvironmentSlider != a3)
  {
    self->_showEnvironmentSlider = a3;
    [(MRUVolumeView *)self updateVisibility];

    [(MRUVolumeView *)self setNeedsLayout];
  }
}

- (void)setShowStepper:(BOOL)a3
{
  if (self->_showStepper != a3)
  {
    self->_showStepper = a3;
    [(MRUVolumeView *)self updateVisibility];

    [(MRUVolumeView *)self setNeedsLayout];
  }
}

- (void)setShowSpatialAudioModeButton:(BOOL)a3
{
  if (self->_showSpatialAudioModeButton != a3)
  {
    self->_showSpatialAudioModeButton = a3;
    [(MRUVolumeView *)self setNeedsLayout];
  }
}

- (void)setPrimaryInteractionEnabled:(BOOL)a3
{
  if (self->_primaryInteractionEnabled != a3)
  {
    self->_primaryInteractionEnabled = a3;
    [(MRUVolumeView *)self updateVisibility];
  }
}

- (void)setSecondaryInteractionEnabled:(BOOL)a3
{
  if (self->_secondaryInteractionEnabled != a3)
  {
    self->_secondaryInteractionEnabled = a3;
    [(MRUVolumeView *)self updateVisibility];
  }
}

- (void)setCompactContinuousCornerRadius:(double)a3
{
  if (self->_compactContinuousCornerRadius != a3)
  {
    self->_compactContinuousCornerRadius = a3;
    [(MRUVolumeView *)self updateVisibility];
  }
}

- (void)setContentMetrics:(id)a3
{
  v8 = a3;
  v5 = self->_contentMetrics;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(CCUIModuleContentMetrics *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_contentMetrics, a3);
      [(MRUVolumeView *)self updateContentMetrics];
    }
  }
}

- (BOOL)isGroupRenderingRequired
{
  if (self->_showStepper)
  {
    return 0;
  }

  if ([(CCUIBaseSliderView *)self->_primarySlider isGroupRenderingRequired])
  {
    return 1;
  }

  secondarySlider = self->_secondarySlider;

  return [(CCUIBaseSliderView *)secondarySlider isGroupRenderingRequired];
}

- (NSArray)punchOutRenderingViews
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v4 = [(CCUIBaseSliderView *)self->_primarySlider punchOutRenderingViews];
  [v3 addObjectsFromArray:v4];

  v5 = [(CCUIBaseSliderView *)self->_secondarySlider punchOutRenderingViews];
  [v3 addObjectsFromArray:v5];

  v6 = [v3 copy];

  return v6;
}

- (void)updateContentMetrics
{
  v3 = self->_contentMetrics;
  v4 = v3;
  if (self->_expanded)
  {
    v6 = v3;
    [(CCUIModuleContentMetrics *)v3 gridGeometryInfo];
    v5 = [MEMORY[0x1E6997270] defaultMetricsForGridGeometryInfo:95.0];

    v4 = v5;
  }

  v7 = v4;
  [(CCUIBaseSliderView *)self->_primarySlider setContentMetrics:v4];
  [(CCUIContinuousSliderView *)self->_environmentSlider setContentMetrics:v7];
}

- (void)updateVisibility
{
  showStepper = self->_showStepper;
  stepper = self->_stepper;
  if (showStepper)
  {
    [(MRUVolumeStepperView *)stepper setAlpha:1.0];
    [(MRUContinuousSliderView *)self->_primarySlider setAlpha:0.0];
    [(MRUContinuousSliderView *)self->_secondarySlider setAlpha:0.0];
  }

  else
  {
    [(MRUVolumeStepperView *)stepper setAlpha:0.0];
    v5 = !self->_expanded || self->_showEnvironmentSlider;
    [(CCUIBaseSliderView *)self->_primarySlider setGlyphVisible:v5];
    v6 = 1.0;
    if (!self->_primaryInteractionEnabled)
    {
      v6 = 0.5;
      if (!self->_expanded)
      {
        v6 = 1.0;
      }
    }

    [(MRUContinuousSliderView *)self->_primarySlider setAlpha:v6];
    if (self->_expanded && self->_showSecondarySlider)
    {
      if (self->_secondaryInteractionEnabled)
      {
        secondarySlider = self->_secondarySlider;
        v8 = 1.0;
      }

      else
      {
        v8 = 0.5;
        secondarySlider = self->_secondarySlider;
      }

      [(MRUContinuousSliderView *)secondarySlider setAlpha:v8];
    }

    else
    {
      [(MRUContinuousSliderView *)self->_secondarySlider setAlpha:0.0];
    }
  }

  v9 = 0.0;
  if (self->_expanded && self->_showEnvironmentSlider)
  {
    v9 = 1.0;
  }

  [(CCUIContinuousSliderView *)self->_environmentSlider setAlpha:v9];
  if (self->_expanded)
  {
    CCUISliderExpandedModuleContinuousCornerRadius();
    compactContinuousCornerRadius = v10;
  }

  else
  {
    compactContinuousCornerRadius = self->_compactContinuousCornerRadius;
  }

  [(CCUIBaseSliderView *)self->_primarySlider setContinuousSliderCornerRadius:compactContinuousCornerRadius];
  [(CCUIBaseSliderView *)self->_secondarySlider setContinuousSliderCornerRadius:compactContinuousCornerRadius];
  [(CCUIContinuousSliderView *)self->_environmentSlider setContinuousSliderCornerRadius:compactContinuousCornerRadius];
  v12 = self->_stepper;

  [(MRUVolumeStepperView *)v12 setContinuousButtonCornerRadius:compactContinuousCornerRadius];
}

@end