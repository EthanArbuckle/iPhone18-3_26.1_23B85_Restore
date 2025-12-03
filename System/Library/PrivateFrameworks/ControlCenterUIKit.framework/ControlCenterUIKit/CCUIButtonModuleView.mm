@interface CCUIButtonModuleView
- (CCUIButtonModuleView)initWithFrame:(CGRect)frame;
- (NSDirectionalEdgeInsets)contentEdgeInsets;
- (double)_effectiveGlyphAlpha;
- (id)_tintColorForSelectedState:(BOOL)state;
- (void)_handlePressGesture:(id)gesture;
- (void)_setGlyphAlpha:(double)alpha;
- (void)_setGlyphPackageDescription:(id)description;
- (void)_updateForComponentStateChange:(unint64_t)change;
- (void)_updateGlyphImage;
- (void)_updateGlyphImageViewVisualStyling;
- (void)_updateGlyphScale;
- (void)_updateGlyphViewTinting;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setContentEdgeInsets:(NSDirectionalEdgeInsets)insets;
- (void)setContentMetrics:(id)metrics;
- (void)setEnabled:(BOOL)enabled;
- (void)setGlyphAlpha:(double)alpha;
- (void)setGlyphImage:(id)image;
- (void)setGlyphPackageDescription:(id)description;
- (void)setGlyphScale:(double)scale;
- (void)setGlyphState:(id)state;
- (void)setGlyphView:(id)view;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setSelectedGlyphImage:(id)image;
@end

@implementation CCUIButtonModuleView

- (void)_updateGlyphImage
{
  v22 = self->_contentMetrics;
  if (![(CCUIButtonModuleView *)self isSelected]|| (glyphImage = self->_selectedGlyphImage) == 0)
  {
    glyphImage = self->_glyphImage;
  }

  v4 = glyphImage;
  if (v22)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && [(UIImage *)v4 isSymbolImage])
  {
    symbolConfiguration = [(CCUIModuleContentMetrics *)v22 symbolConfiguration];
    v7 = [(UIImage *)v4 imageByApplyingSymbolConfiguration:symbolConfiguration];

    v4 = v7;
  }

  glyphImageView = self->_glyphImageView;
  if (glyphImageView)
  {
    v9 = 1;
  }

  else
  {
    v9 = v4 == 0;
  }

  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v11 = self->_glyphImageView;
    self->_glyphImageView = v10;

    [(CCUIButtonModuleView *)self addSubview:self->_glyphImageView];
    v12 = self->_glyphImageView;
    [(CCUIButtonModuleView *)self _effectiveGlyphAlpha];
    [(UIImageView *)v12 setAlpha:?];
    [(CCUIButtonModuleView *)self _updateGlyphImageViewVisualStyling];
    [(UIImageView *)self->_glyphImageView setAutoresizingMask:18];
    [(UIImageView *)self->_glyphImageView setTintAdjustmentMode:1];
    [(CCUIButtonModuleView *)self setNeedsLayout];
    glyphImageView = self->_glyphImageView;
  }

  image = [(UIImageView *)glyphImageView image];
  symbolConfiguration2 = [(UIImage *)v4 symbolConfiguration];
  configurationPreferringMulticolor = [MEMORY[0x1E69DCAD8] configurationPreferringMulticolor];
  v16 = [symbolConfiguration2 configurationByApplyingConfiguration:configurationPreferringMulticolor];
  v17 = [symbolConfiguration2 isEqualToConfiguration:v16];

  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  v19 = self->_glyphImageView;
  v20 = [(UIImage *)v4 imageWithRenderingMode:v18];
  [(UIImageView *)v19 setImage:v20];

  image2 = [(UIImageView *)self->_glyphImageView image];
  LOBYTE(v20) = BSEqualObjects();

  if ((v20 & 1) == 0)
  {
    [(CCUIButtonModuleView *)self setNeedsLayout];
  }

  [(CCUIButtonModuleView *)self _updateGlyphScale];
}

- (void)_updateGlyphScale
{
  glyphScale = self->_glyphScale;
  v4 = self->_contentMetrics;
  v5 = v4;
  if (v4 && ([(CCUIModuleContentMetrics *)v4 symbolScaleFactor], v7 = v6, (BSFloatIsOne() & 1) == 0))
  {
    v8 = glyphScale * v7;
    image = [(UIImageView *)self->_glyphImageView image];
    isSymbolImage = [image isSymbolImage];

    if (!isSymbolImage)
    {
      glyphScale = v8;
    }
  }

  else
  {
    v8 = glyphScale;
  }

  [(CCUICAPackageView *)self->_glyphPackageView setScale:v8];
  glyphImageView = self->_glyphImageView;
  if (glyphImageView)
  {
    memset(&v14, 0, sizeof(v14));
    if (fabs(glyphScale + -1.0) >= 2.22044605e-16)
    {
      CGAffineTransformMakeScale(&v14, glyphScale, glyphScale);
    }

    else
    {
      v12 = *(MEMORY[0x1E695EFD0] + 16);
      *&v14.a = *MEMORY[0x1E695EFD0];
      *&v14.c = v12;
      *&v14.tx = *(MEMORY[0x1E695EFD0] + 32);
    }

    v13 = v14;
    [(UIImageView *)glyphImageView setTransform:&v13];
  }
}

- (void)_updateGlyphImageViewVisualStyling
{
  [(UIImageView *)self->_glyphImageView mt_removeAllVisualStyling];
  v3 = [(CCUIButtonModuleView *)self _tintColorForSelectedState:[(CCUIButtonModuleView *)self isSelected]];
  v4 = v3;
  if (v3)
  {
    [(UIImageView *)self->_glyphImageView setTintColor:v3];
  }

  else
  {
    [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:self->_glyphImageView withStyle:0];
  }
}

- (void)_updateGlyphViewTinting
{
  v3 = [(CCUIButtonModuleView *)self _tintColorForSelectedState:[(CCUIButtonModuleView *)self isSelected]];
  [(CCUIButtonModuleGlyph *)self->_glyphView applyGlyphTintColor:v3];
}

- (double)_effectiveGlyphAlpha
{
  if ([(CCUIButtonModuleView *)self isEnabled])
  {

    [(CCUIButtonModuleView *)self glyphAlpha];
  }

  else
  {

    [(CCUIButtonModuleView *)self disabledContentAlpha];
  }

  return result;
}

- (CCUIButtonModuleView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CCUIButtonModuleView;
  v3 = [(CCUIButtonModuleView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_glyphAlpha = 1.0;
    v3->_glyphScale = 1.0;
    v5 = +[CCUIControlCenterMaterialView _lightFillView];
    highlightedBackgroundView = v4->_highlightedBackgroundView;
    v4->_highlightedBackgroundView = v5;

    v7 = v4->_highlightedBackgroundView;
    [(CCUIButtonModuleView *)v4 bounds];
    [(UIView *)v7 setFrame:?];
    [(UIView *)v4->_highlightedBackgroundView setAutoresizingMask:18];
    [(UIView *)v4->_highlightedBackgroundView setAlpha:0.0];
    [(CCUIButtonModuleView *)v4 addSubview:v4->_highlightedBackgroundView];
    v8 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v4 action:sel__handlePressGesture_];
    [v8 setDelegate:v4];
    [v8 setMinimumPressDuration:0.0];
    [v8 setCancelsTouchesInView:0];
    [v8 setDelaysTouchesBegan:0];
    [v8 setDelaysTouchesEnded:0];
    [(CCUIButtonModuleView *)v4 addGestureRecognizer:v8];
  }

  return v4;
}

- (void)setGlyphView:(id)view
{
  viewCopy = view;
  glyphView = self->_glyphView;
  v8 = viewCopy;
  if (glyphView != viewCopy)
  {
    [(CCUIButtonModuleGlyph *)glyphView removeFromSuperview];
    objc_storeStrong(&self->_glyphView, view);
    if (self->_glyphView)
    {
      [(CCUIButtonModuleView *)self addSubview:?];
      v7 = self->_glyphView;
      [(CCUIButtonModuleView *)self _effectiveGlyphAlpha];
      [(CCUIButtonModuleGlyph *)v7 setAlpha:?];
      [(CCUIButtonModuleView *)self _updateGlyphViewMetrics];
      [(CCUIButtonModuleView *)self _updateGlyphViewTinting];
      [(CCUIButtonModuleView *)self setNeedsLayout];
    }
  }
}

- (void)setGlyphImage:(id)image
{
  imageCopy = image;
  if (self->_glyphImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_glyphImage, image);
    [(CCUIButtonModuleView *)self _updateGlyphImage];
    imageCopy = v6;
  }
}

- (void)setSelectedGlyphImage:(id)image
{
  imageCopy = image;
  if (self->_selectedGlyphImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_selectedGlyphImage, image);
    [(CCUIButtonModuleView *)self _updateGlyphImage];
    imageCopy = v6;
  }
}

- (void)setGlyphPackageDescription:(id)description
{
  descriptionCopy = description;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_glyphPackageDescription, description);
    [(CCUIButtonModuleView *)self _setGlyphPackageDescription:descriptionCopy];
    [(CCUIButtonModuleView *)self _setGlyphState:self->_glyphState];
    [(CCUIButtonModuleView *)self _updateGlyphScale];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = CCUIButtonModuleView;
  isHighlighted = [(CCUIButtonModuleView *)&v7 isHighlighted];
  v6.receiver = self;
  v6.super_class = CCUIButtonModuleView;
  [(CCUIButtonModuleView *)&v6 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    [(CCUIButtonModuleView *)self _updateForComponentStateChange:0];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = CCUIButtonModuleView;
  isSelected = [(CCUIButtonModuleView *)&v7 isSelected];
  v6.receiver = self;
  v6.super_class = CCUIButtonModuleView;
  [(CCUIButtonModuleView *)&v6 setSelected:selectedCopy];
  if (isSelected != selectedCopy)
  {
    [(CCUIButtonModuleView *)self _updateForComponentStateChange:2];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = CCUIButtonModuleView;
  isEnabled = [(CCUIButtonModuleView *)&v7 isEnabled];
  v6.receiver = self;
  v6.super_class = CCUIButtonModuleView;
  [(CCUIButtonModuleView *)&v6 setEnabled:enabledCopy];
  if (isEnabled != enabledCopy)
  {
    [(CCUIButtonModuleView *)self _updateForComponentStateChange:1];
  }
}

- (void)setGlyphState:(id)state
{
  stateCopy = state;
  if (self->_glyphState != stateCopy)
  {
    v6 = stateCopy;
    objc_storeStrong(&self->_glyphState, state);
    [(CCUIButtonModuleView *)self _setGlyphState:v6];
    stateCopy = v6;
  }
}

- (void)setGlyphAlpha:(double)alpha
{
  if (self->_glyphAlpha != alpha)
  {
    self->_glyphAlpha = alpha;
    [(CCUIButtonModuleView *)self _updateForComponentStateChange:1];
  }
}

- (void)setGlyphScale:(double)scale
{
  if (self->_glyphScale != scale)
  {
    self->_glyphScale = scale;
    [(CCUIButtonModuleView *)self _updateGlyphScale];
  }
}

- (void)setContentEdgeInsets:(NSDirectionalEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.leading;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentEdgeInsets.top, v3), vceqq_f64(*&self->_contentEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentEdgeInsets = insets;
    [(CCUIButtonModuleView *)self setNeedsLayout];
  }
}

- (void)setContentMetrics:(id)metrics
{
  metricsCopy = metrics;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_contentMetrics, metrics);
    [(CCUIButtonModuleView *)self _updateGlyphViewMetrics];
    [(CCUIButtonModuleView *)self _updateGlyphImage];
  }
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = CCUIButtonModuleView;
  [(CCUIButtonModuleView *)&v27 layoutSubviews];
  traitCollection = [(CCUIButtonModuleView *)self traitCollection];
  [traitCollection displayScale];

  [(CCUIButtonModuleView *)self glyphContentFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CCUIButtonModuleView *)self _shouldReverseLayoutDirection];
  image = [(UIImageView *)self->_glyphImageView image];
  v13 = image;
  v15 = self->_contentEdgeInsets.leading == *(MEMORY[0x1E69DC5C0] + 8) && self->_contentEdgeInsets.top == *MEMORY[0x1E69DC5C0] && self->_contentEdgeInsets.trailing == *(MEMORY[0x1E69DC5C0] + 24);
  if (v15 && (image ? (v16 = self->_contentEdgeInsets.bottom == *(MEMORY[0x1E69DC5C0] + 16)) : (v16 = 0), v16))
  {
    [(UIImageView *)self->_glyphImageView setContentMode:9];
    [v13 size];
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
  }

  else
  {
    [(UIImageView *)self->_glyphImageView setContentMode:4];
    v28.origin.x = v5;
    v28.origin.y = v7;
    v28.size.width = v9;
    v28.size.height = v11;
    CGRectGetMinX(v28);
    v29.origin.x = v5;
    v29.origin.y = v7;
    v29.size.width = v9;
    v29.size.height = v11;
    CGRectGetMinY(v29);
    v30.origin.x = v5;
    v30.origin.y = v7;
    v30.size.width = v9;
    v30.size.height = v11;
    CGRectGetWidth(v30);
    v31.origin.x = v5;
    v31.origin.y = v7;
    v31.size.width = v9;
    v31.size.height = v11;
    CGRectGetHeight(v31);
    UIRectIntegralWithScale();
  }

  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  if (!CGRectIsEmpty(*&v17))
  {
    v32.origin.x = v21;
    v32.origin.y = v22;
    v32.size.width = v23;
    v32.size.height = v24;
    if (!CGRectIsInfinite(v32))
    {
      [(CCUIButtonModuleGlyph *)self->_glyphView setFrame:v21, v22, v23, v24];
      glyphImageView = self->_glyphImageView;
      BSRectWithSize();
      [(UIImageView *)glyphImageView setBounds:?];
      v26 = self->_glyphImageView;
      UIRectGetCenter();
      [(UIImageView *)v26 setCenter:?];
      [(CCUICAPackageView *)self->_glyphPackageView setFrame:v21, v22, v23, v24];
    }
  }
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = CCUIButtonModuleView;
  [(CCUIButtonModuleView *)&v6 didMoveToWindow];
  window = [(CCUIButtonModuleView *)self window];

  if (window)
  {
    v4 = [(CCUIButtonModuleView *)self visualStylingProviderForCategory:1];
    visualStylingProvider = self->_visualStylingProvider;
    if (v4 != visualStylingProvider)
    {
      [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:self->_glyphImageView];
      objc_storeStrong(&self->_visualStylingProvider, v4);
      [(CCUIButtonModuleView *)self _updateGlyphImageViewVisualStyling];
    }
  }
}

- (void)_handlePressGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if (state == 1 || [gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4)
  {
    [(CCUIButtonModuleView *)self setHighlighted:state == 1];
  }
}

- (void)_updateForComponentStateChange:(unint64_t)change
{
  window = [(CCUIButtonModuleView *)self window];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__CCUIButtonModuleView__updateForComponentStateChange___block_invoke;
  v6[3] = &unk_1E83EA880;
  v6[4] = self;
  v6[5] = change;
  [CCUIContentModuleContext performWithoutAnimationWhileHiddenInWindow:window actions:v6];
}

uint64_t __55__CCUIButtonModuleView__updateForComponentStateChange___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__CCUIButtonModuleView__updateForComponentStateChange___block_invoke_2;
  v3[3] = &unk_1E83EA880;
  v1 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v3[5] = v1;
  return [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v3 options:0 animations:0.25 completion:0.0];
}

uint64_t __55__CCUIButtonModuleView__updateForComponentStateChange___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateGlyphImage];
  v2 = [*(a1 + 32) isSelected];
  v3 = *(a1 + 32);
  v4 = v3[57];
  v5 = 0.0;
  if (v2)
  {
    v6 = [v3 isEnabled];
    v5 = 1.0;
    if ((v6 & 1) == 0)
    {
      [*(a1 + 32) disabledContentAlpha];
    }
  }

  [v4 setAlpha:v5];
  v7 = *(a1 + 40);
  if (v7 == 1)
  {
    [*(a1 + 32) contentStateDidChange];
  }

  else if (v7 == 2)
  {
    [*(a1 + 32) selectionDidChange];
  }

  [*(a1 + 32) _updateGlyphImageViewVisualStyling];
  [*(a1 + 32) _updateGlyphViewTinting];
  v8 = *(a1 + 32);
  [v8 _effectiveGlyphAlpha];

  return [v8 _setGlyphAlpha:?];
}

- (void)_setGlyphPackageDescription:(id)description
{
  descriptionCopy = description;
  glyphPackageView = self->_glyphPackageView;
  if (!glyphPackageView)
  {
    v6 = objc_alloc_init(CCUICAPackageView);
    v7 = self->_glyphPackageView;
    self->_glyphPackageView = v6;

    v8 = self->_glyphPackageView;
    [(CCUIButtonModuleView *)self _effectiveGlyphAlpha];
    [(CCUICAPackageView *)v8 setAlpha:?];
    v9 = self->_glyphPackageView;
    glyphState = [(CCUIButtonModuleView *)self glyphState];
    [(CCUICAPackageView *)v9 setStateName:glyphState];

    [(CCUICAPackageView *)self->_glyphPackageView setAutoresizingMask:18];
    if (-[CCUIButtonModuleView _shouldReverseLayoutDirection](self, "_shouldReverseLayoutDirection") && [descriptionCopy flipsForRightToLeftLayoutDirection])
    {
      v11 = self->_glyphPackageView;
      CGAffineTransformMakeScale(&v12, -1.0, 1.0);
      [(CCUICAPackageView *)v11 setTransform:&v12];
    }

    [(CCUIButtonModuleView *)self addSubview:self->_glyphPackageView];
    glyphPackageView = self->_glyphPackageView;
  }

  [(CCUICAPackageView *)glyphPackageView setPackageDescription:self->_glyphPackageDescription];
}

- (void)_setGlyphAlpha:(double)alpha
{
  [(CCUICAPackageView *)self->_glyphPackageView setAlpha:?];
  [(UIImageView *)self->_glyphImageView setAlpha:alpha];
  glyphView = self->_glyphView;

  [(CCUIButtonModuleGlyph *)glyphView setAlpha:alpha];
}

- (id)_tintColorForSelectedState:(BOOL)state
{
  if (!state || (glyphColor = self->_selectedGlyphColor) == 0)
  {
    glyphColor = self->_glyphColor;
  }

  return glyphColor;
}

- (NSDirectionalEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  leading = self->_contentEdgeInsets.leading;
  bottom = self->_contentEdgeInsets.bottom;
  trailing = self->_contentEdgeInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end