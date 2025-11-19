@interface CAMSpotlightControlPanel
- ($F24F406B2B787EFB06265DBA3D28CBD5)_scrubberGradientEdgeInsets;
- (BOOL)isControlTypeOpen:(int64_t)a3;
- (BOOL)isControlTypeVisible:(int64_t)a3;
- (CAMSpotlightControlPanel)initWithFrame:(CGRect)a3;
- (CAMSpotlightControlPanelDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (unint64_t)_sliderFontStyle;
- (void)_apertureSliderDidChangeValue;
- (void)_applyTextOrientation:(int64_t)a3;
- (void)_configureAndInstallDiscreteSlider:(id)a3;
- (void)_exposureSliderDidChangeValue;
- (void)_handleIconViewReleased:(id)a3;
- (void)_layoutFullWidthCustomView:(id)a3;
- (void)_loadApertureSliderIfNeeded;
- (void)_loadExposureSliderIfNeeded;
- (void)_loadSliderIfNeededForControlType:(int64_t)a3;
- (void)_setControlType:(int64_t)a3 open:(BOOL)a4 animated:(BOOL)a5 notifyDelegate:(BOOL)a6;
- (void)_updateControlIcon;
- (void)_updateControlsVisibilityAnimated:(BOOL)a3;
- (void)_updateTextOrientation;
- (void)layoutSubviews;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setSpotlightControl:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMSpotlightControlPanel

- (CAMSpotlightControlPanel)initWithFrame:(CGRect)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CAMSpotlightControlPanel;
  v3 = [(CAMSpotlightControlPanel *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
    controlIconView = v3->__controlIconView;
    v3->__controlIconView = v4;

    v6 = [MEMORY[0x1E69DC888] labelColor];
    [(UIButton *)v3->__controlIconView setTintColor:v6];

    [(UIButton *)v3->__controlIconView addTarget:v3 action:sel__handleIconViewReleased_ forControlEvents:64];
    [(CAMSpotlightControlPanel *)v3 addSubview:v3->__controlIconView];
    v12[0] = &unk_1F16C7D18;
    v12[1] = &unk_1F16C7D30;
    v13[0] = MEMORY[0x1E695E110];
    v13[1] = MEMORY[0x1E695E110];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v8 = [v7 mutableCopy];
    openByControl = v3->__openByControl;
    v3->__openByControl = v8;
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(CAMSpotlightControlPanel *)self spotlightControl];
  if (v3 == 2)
  {
    v4 = [(CAMSpotlightControlPanel *)self exposureSlider];
  }

  else
  {
    if (v3 != 3)
    {
      v7 = *MEMORY[0x1E695F060];
      v9 = *(MEMORY[0x1E695F060] + 8);
      goto LABEL_7;
    }

    v4 = [(CAMSpotlightControlPanel *)self apertureSlider];
  }

  v5 = v4;
  [v4 intrinsicContentSize];
  v7 = v6;
  v9 = v8;

LABEL_7:
  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v3 = [(CAMSpotlightControlPanel *)self exposureSlider];
  [(CAMSpotlightControlPanel *)self _layoutFullWidthCustomView:v3];

  v4 = [(CAMSpotlightControlPanel *)self apertureSlider];
  [(CAMSpotlightControlPanel *)self _layoutFullWidthCustomView:v4];

  v24 = [(CAMSpotlightControlPanel *)self _controlIconView];
  CAMViewAlignmentSize(v24);
  CEKRectWithSize();
  v22 = v6;
  v23 = v5;
  v21 = v7;
  v9 = v8;
  [(CAMSpotlightControlPanel *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(CAMSpotlightControlPanel *)self traitCollection];
  [v18 displayScale];
  v20 = v19;
  UIRectCenteredXInRectScale();

  v26.origin.x = v11;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  CGRectGetMaxY(v26);
  UIRectGetCenter();
  [v24 setCenter:v20];
  [v24 setBounds:{v23, v22, v21, v9}];
  [(CAMSpotlightControlPanel *)self _updateControlsVisibilityAnimated:0];
}

- (void)setSpotlightControl:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_spotlightControl != a3)
  {
    v4 = a4;
    if ([(CAMSpotlightControlPanel *)self isControlTypeOpen:?])
    {
      [(CAMSpotlightControlPanel *)self _loadSliderIfNeededForControlType:a3];
    }

    self->_spotlightControl = a3;
    [(CAMSpotlightControlPanel *)self _updateControlsVisibilityAnimated:v4];

    [(CAMSpotlightControlPanel *)self _updateControlIcon];
  }
}

- (BOOL)isControlTypeVisible:(int64_t)a3
{
  if ([(CAMSpotlightControlPanel *)self spotlightControl]!= a3)
  {
    return 0;
  }

  return [(CAMSpotlightControlPanel *)self isControlTypeOpen:a3];
}

- (BOOL)isControlTypeOpen:(int64_t)a3
{
  v4 = [(CAMSpotlightControlPanel *)self _openByControl];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 BOOLValue];

  return v7;
}

- (void)_setControlType:(int64_t)a3 open:(BOOL)a4 animated:(BOOL)a5 notifyDelegate:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  if ([(CAMSpotlightControlPanel *)self isControlTypeOpen:?]!= a4)
  {
    if ([(CAMSpotlightControlPanel *)self spotlightControl]== a3)
    {
      [(CAMSpotlightControlPanel *)self _loadSliderIfNeededForControlType:a3];
    }

    v11 = [MEMORY[0x1E696AD98] numberWithBool:v8];
    v12 = [(CAMSpotlightControlPanel *)self _openByControl];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v12 setObject:v11 forKeyedSubscript:v13];

    [(CAMSpotlightControlPanel *)self _updateControlsVisibilityAnimated:v7];
    if (v6)
    {
      v14 = [(CAMSpotlightControlPanel *)self delegate];
      [v14 spotlightControlPanel:self didChangeOpenForSpotlight:a3];
    }
  }
}

- (void)_layoutFullWidthCustomView:(id)a3
{
  v4 = a3;
  [(CAMSpotlightControlPanel *)self bounds];
  [v4 intrinsicContentSize];
  v7 = [(CAMSpotlightControlPanel *)self traitCollection];
  [v7 displayScale];
  v6 = v5;
  UIRectCenteredYInRectScale();
  [v4 setFrame:v6];
}

- (void)_updateControlsVisibilityAnimated:(BOOL)a3
{
  v3 = 0.0;
  if (a3)
  {
    v3 = 0.5;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__CAMSpotlightControlPanel__updateControlsVisibilityAnimated___block_invoke;
  v4[3] = &unk_1E76F77B0;
  v4[4] = self;
  [CAMView animateIfNeededWithDuration:2 usingSpringWithDamping:v4 initialSpringVelocity:0 options:v3 animations:1.0 completion:1.0];
}

void __62__CAMSpotlightControlPanel__updateControlsVisibilityAnimated___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isApertureSliderVisible])
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) apertureSlider];
  [v3 setAlpha:v2];

  if ([*(a1 + 32) isExposureSliderVisible])
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) exposureSlider];
  [v5 setAlpha:v4];

  v6 = [*(a1 + 32) spotlightControl];
  if (v6 <= 3)
  {
    v7 = dbl_1A3A69EA8[v6];
    v8 = [*(a1 + 32) _controlIconView];
    [v8 setAlpha:v7];
  }
}

- (void)_updateControlIcon
{
  v3 = [(CAMSpotlightControlPanel *)self spotlightControl];
  if (v3 == 3)
  {
    v4 = @"f.cursive";
  }

  else
  {
    if (v3 != 2)
    {
      return;
    }

    v4 = @"plusminus.circle";
  }

  v7 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4 withConfiguration:v7];
  v6 = [(CAMSpotlightControlPanel *)self _controlIconView];
  [v6 setImage:v5 forState:0];

  [(CAMSpotlightControlPanel *)self setNeedsLayout];
}

- (void)_configureAndInstallDiscreteSlider:(id)a3
{
  v4 = a3;
  [(CAMSpotlightControlPanel *)self _scrubberGradientEdgeInsets];
  [v4 setGradientInsets:?];
  [v4 setTitleAlignment:2];
  [v4 setFontStyle:{-[CAMSpotlightControlPanel _sliderFontStyle](self, "_sliderFontStyle")}];
  [v4 setUseTextLegibilityShadows:1];
  [v4 setUseTickMarkLegibilityShadows:1];
  [v4 setTitleText:&stru_1F1660A30];
  [v4 setTransparentGradients];
  [(CAMSpotlightControlPanel *)self insertSubview:v4 atIndex:0];
  [(CAMSpotlightControlPanel *)self _layoutFullWidthCustomView:v4];

  [(CAMSpotlightControlPanel *)self _updateControlsVisibilityAnimated:0];

  [(CAMSpotlightControlPanel *)self _updateTextOrientation];
}

- (void)_loadSliderIfNeededForControlType:(int64_t)a3
{
  if (a3 == 3)
  {
    [(CAMSpotlightControlPanel *)self _loadApertureSliderIfNeeded];
  }

  else if (a3 == 2)
  {
    [(CAMSpotlightControlPanel *)self _loadExposureSliderIfNeeded];
  }
}

- (void)_loadApertureSliderIfNeeded
{
  if (!self->_apertureSlider)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6993820]);
    apertureSlider = self->_apertureSlider;
    self->_apertureSlider = v3;

    [(CAMSpotlightControlPanel *)self _configureAndInstallDiscreteSlider:self->_apertureSlider];
    [(CEKApertureSlider *)self->_apertureSlider addTarget:self action:sel__apertureSliderDidChangeValue forControlEvents:4096];
    v5 = [(CAMSpotlightControlPanel *)self delegate];
    [v5 spotlightControlPanelDidCreateApertureSlider:self];
  }
}

- (void)_loadExposureSliderIfNeeded
{
  if (!self->_exposureSlider)
  {
    v3 = objc_alloc_init(CAMExposureSlider);
    exposureSlider = self->_exposureSlider;
    self->_exposureSlider = v3;

    [(CAMSpotlightControlPanel *)self _configureAndInstallDiscreteSlider:self->_exposureSlider];
    [(CAMExposureSlider *)self->_exposureSlider addTarget:self action:sel__exposureSliderDidChangeValue forControlEvents:4096];
    v5 = [(CAMSpotlightControlPanel *)self delegate];
    [v5 spotlightControlPanelDidCreateExposureSlider:self];
  }
}

- (void)_handleIconViewReleased:(id)a3
{
  v4 = [(CAMSpotlightControlPanel *)self spotlightControl];
  v5 = [(CAMSpotlightControlPanel *)self isControlTypeOpen:v4]^ 1;

  [(CAMSpotlightControlPanel *)self _setControlType:v4 open:v5 animated:1 notifyDelegate:1];
}

- (void)_apertureSliderDidChangeValue
{
  v3 = [(CAMSpotlightControlPanel *)self delegate];
  [v3 spotlightControlPanel:self didChangeValueForSpotlight:3];
}

- (void)_exposureSliderDidChangeValue
{
  v3 = [(CAMSpotlightControlPanel *)self delegate];
  [v3 spotlightControlPanel:self didChangeValueForSpotlight:2];
}

- (unint64_t)_sliderFontStyle
{
  v2 = +[CAMCaptureCapabilities capabilities];
  v3 = [v2 sfCameraFontSupported];

  return v3;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_scrubberGradientEdgeInsets
{
  v2 = 20.0;
  v3 = 20.0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    v5 = a4;
    self->_orientation = a3;
    [(CAMSpotlightControlPanel *)self _updateTextOrientation];
    [(CAMSpotlightControlPanel *)self setNeedsLayout];
    v8 = [(CAMSpotlightControlPanel *)self _controlIconView];
    [CAMView rotateView:v8 toInterfaceOrientation:a3 animated:v5];
  }
}

- (void)_updateTextOrientation
{
  v3 = [(CAMSpotlightControlPanel *)self orientation];
  switch(v3)
  {
    case 1:
      v4 = 0;
      break;
    case 3:
      v4 = 2;
      break;
    case 4:
      v4 = 1;
      break;
    default:
      return;
  }

  [(CAMSpotlightControlPanel *)self _applyTextOrientation:v4];
}

- (void)_applyTextOrientation:(int64_t)a3
{
  v5 = [(CAMSpotlightControlPanel *)self apertureSlider];
  [v5 setTextOrientation:a3];

  v6 = [(CAMSpotlightControlPanel *)self exposureSlider];
  [v6 setTextOrientation:a3];
}

- (CAMSpotlightControlPanelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end