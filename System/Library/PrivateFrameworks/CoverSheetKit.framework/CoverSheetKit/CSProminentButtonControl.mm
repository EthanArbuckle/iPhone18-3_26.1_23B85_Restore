@interface CSProminentButtonControl
- (BOOL)clickInteractionShouldBegin:(id)begin;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CSProminentButtonControl)initWithFrame:(CGRect)frame luminanceMap:(id)map;
- (UIEdgeInsets)edgeInsets;
- (UIImage)luminanceMap;
- (UIView)backgroundView;
- (double)containerCornerRadius;
- (id)_backgroundEffectsWithBrightness:(double)brightness;
- (id)copyBackgroundView;
- (id)copyWithoutGlyphView;
- (id)highlightEffectForClickInteraction:(id)interaction;
- (unint64_t)_clickInteractionDefaultDriverType:(id)type;
- (void)_animateEffectUpdateWithProgress:(double)progress ended:(BOOL)ended;
- (void)_configureBackgroundView;
- (void)_configureBackingShadowView;
- (void)_configureContainerAppearance;
- (void)_updateStyle;
- (void)clickInteraction:(id)interaction didObserveForce:(double)maxForceDuringInteraction;
- (void)clickInteractionDidClickUp:(id)up;
- (void)clickInteractionDidEnd:(id)end;
- (void)layoutBackgroundEffectView;
- (void)layoutContainerBackgroundView;
- (void)layoutIfNeededAnimated;
- (void)layoutSubviews;
- (void)setEdgeInsets:(UIEdgeInsets)insets;
- (void)setGlassLuminanceValue:(double)value;
- (void)setGlyphView:(id)view;
- (void)setHidesBackingShadow:(BOOL)shadow;
- (void)setScaleValue:(double)value;
- (void)setSelected:(BOOL)selected;
- (void)setShouldAnimateBackgroundDuringInteraction:(BOOL)interaction;
- (void)setUsesGlassMaterial:(BOOL)material;
@end

@implementation CSProminentButtonControl

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = CSProminentButtonControl;
  [(CSProminentButtonControl *)&v36 layoutSubviews];
  [(CSProminentButtonControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CSProminentButtonControl *)self edgeInsets];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  v37.origin.x = v12;
  v37.origin.y = v14;
  v37.size.width = v16;
  v37.size.height = v18;
  Width = CGRectGetWidth(v37);
  v38.origin.x = v12;
  v38.origin.y = v14;
  v38.size.width = v16;
  v38.size.height = v18;
  Height = CGRectGetHeight(v38);
  [(CSProminentButtonControl *)self bounds];
  MidX = CGRectGetMidX(v39);
  [(CSProminentButtonControl *)self bounds];
  MidY = CGRectGetMidY(v40);
  [(UIView *)self->_containerView setBounds:0.0, 0.0, Width, Height];
  [(UIView *)self->_containerView setCenter:MidX, MidY];
  isSelected = [(CSProminentButtonControl *)self isSelected];
  v24 = &OBJC_IVAR___CSProminentButtonControl__backgroundEffects;
  if (isSelected)
  {
    v24 = &OBJC_IVAR___CSProminentButtonControl__selectedBackgroundEffects;
  }

  [(UIVisualEffectView *)self->_backgroundEffectView setBackgroundEffects:*(&self->super.super.super.super.isa + *v24)];
  contentView = [(UIVisualEffectView *)self->_backgroundEffectView contentView];
  [contentView setHidden:isSelected];

  [(CSProminentButtonControl *)self layoutBackgroundEffectView];
  [(CSProminentButtonControl *)self layoutContainerBackgroundView];
  [(CSProminentButtonControlEmbeddedView *)self->_glyphView sizeThatFits:v16, v18];
  UIRectGetCenter();
  traitCollection = [(CSProminentButtonControl *)self traitCollection];
  [traitCollection displayScale];
  UIRectCenteredAboutPointScale();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [(CSProminentButtonControlEmbeddedView *)self->_glyphView setFrame:v28, v30, v32, v34];
  [(CSProminentButtonControl *)self setScaleValue:self->_highlightProgress * 0.6 + 1.0];
  containerView = self->_containerView;
  [(CSProminentButtonControl *)self containerCornerRadius];
  [(UIView *)containerView _setContinuousCornerRadius:?];
  [(CSProminentButtonControl *)self _configureBackingShadowView];
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)layoutBackgroundEffectView
{
  if (!self->_usesGlassMaterial)
  {
    [(CSProminentButtonControl *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(CSProminentButtonControl *)self edgeInsets];
    v13 = v5 + v12;
    v15 = v7 + v14;
    v17 = v9 - (v12 + v16);
    v19 = v11 - (v14 + v18);
    v30.origin.x = v13;
    v30.origin.y = v15;
    v30.size.width = v17;
    v30.size.height = v19;
    CGRectGetWidth(v30);
    v31.origin.x = v13;
    v31.origin.y = v15;
    v31.size.width = v17;
    v31.size.height = v19;
    CGRectGetHeight(v31);
    UIRectGetCenter();
    traitCollection = [(CSProminentButtonControl *)self traitCollection];
    [traitCollection displayScale];
    UIRectCenteredAboutPointScale();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    [(UIVisualEffectView *)self->_backgroundEffectView setFrame:v22, v24, v26, v28];
    contentView = [(UIVisualEffectView *)self->_backgroundEffectView contentView];
    [contentView setAlpha:self->_highlightProgress * 0.5 + 0.0];
  }
}

- (void)layoutContainerBackgroundView
{
  if (self->_usesGlassMaterial)
  {
    v36[5] = v9;
    v36[6] = v8;
    v36[7] = v7;
    v36[8] = v6;
    v36[9] = v5;
    v36[10] = v4;
    v36[13] = v2;
    v36[14] = v3;
    [(CSProminentButtonControl *)self bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(CSProminentButtonControl *)self edgeInsets];
    v20 = v12 + v19;
    v22 = v14 + v21;
    v24 = v16 - (v19 + v23);
    v26 = v18 - (v21 + v25);
    v37.origin.x = v20;
    v37.origin.y = v22;
    v37.size.width = v24;
    v37.size.height = v26;
    CGRectGetWidth(v37);
    v38.origin.x = v20;
    v38.origin.y = v22;
    v38.size.width = v24;
    v38.size.height = v26;
    CGRectGetHeight(v38);
    UIRectGetCenter();
    traitCollection = [(CSProminentButtonControl *)self traitCollection];
    [traitCollection displayScale];
    UIRectCenteredAboutPointScale();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    [(UIView *)self->_containerBackgroundView setFrame:v29, v31, v33, v35];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __57__CSProminentButtonControl_layoutContainerBackgroundView__block_invoke;
    v36[3] = &unk_1E76B9E48;
    v36[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v36];
  }
}

- (double)containerCornerRadius
{
  [(UIView *)self->_containerView bounds];
  v4 = v3;
  [(UIView *)self->_containerView bounds];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  return v6 * 0.5;
}

- (CSProminentButtonControl)initWithFrame:(CGRect)frame luminanceMap:(id)map
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  mapCopy = map;
  v32.receiver = self;
  v32.super_class = CSProminentButtonControl;
  height = [(CSProminentButtonControl *)&v32 initWithFrame:x, y, width, height];
  if (height)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(CSProminentButtonControl *)height setTintColor:whiteColor];

    [(CSProminentButtonControl *)height setClipsToBounds:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(CSProminentButtonControl *)height setBackgroundColor:clearColor];

    [(CSProminentButtonControl *)height setOpaque:0];
    v14 = *(MEMORY[0x1E69DDCE0] + 16);
    *&height->_edgeInsets.top = *MEMORY[0x1E69DDCE0];
    *&height->_edgeInsets.bottom = v14;
    objc_storeStrong(&height->_luminanceMap, map);
    [(CSProminentButtonControl *)height bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = objc_alloc_init(CSProminentButtonBackingShadowView);
    [(CSProminentButtonBackingShadowView *)v23 setAutoresizingMask:18];
    [(CSProminentButtonBackingShadowView *)v23 setUserInteractionEnabled:0];
    backingShadowView = height->_backingShadowView;
    height->_backingShadowView = v23;

    v25 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v16, v18, v20, v22}];
    [(UIView *)v25 setAutoresizingMask:18];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v25 setBackgroundColor:clearColor2];

    [(UIView *)v25 setOpaque:0];
    [(UIView *)v25 setClipsToBounds:1];
    [(UIView *)v25 setUserInteractionEnabled:0];
    [(CSProminentButtonControl *)height addSubview:v25];
    containerView = height->_containerView;
    height->_containerView = v25;

    height->_glassLuminanceValue = 0.0;
    [(CSProminentButtonControl *)height _configureContainerAppearance];
    [(CSProminentButtonControl *)height _configureBackgroundView];
    v28 = objc_alloc_init(MEMORY[0x1E69DD3D8]);
    [v28 setDelegate:height];
    clickInteraction = height->_clickInteraction;
    height->_clickInteraction = v28;

    [(CSProminentButtonControl *)height addInteraction:height->_clickInteraction];
    [(_UIClickInteraction *)height->_clickInteraction setDriverCancelsTouchesInView:0];
    v30 = height;
  }

  return height;
}

- (void)_configureBackingShadowView
{
  usesGlassMaterial = self->_usesGlassMaterial;
  backingShadowView = self->_backingShadowView;
  if (usesGlassMaterial)
  {
    superview = [(CSProminentButtonBackingShadowView *)backingShadowView superview];

    if (superview != self)
    {
      [(CSProminentButtonControl *)self insertSubview:self->_backingShadowView belowSubview:self->_containerView];
      [(CSProminentButtonControl *)self bounds];
      Width = CGRectGetWidth(v12);
      [(CSProminentButtonControl *)self bounds];
      Height = CGRectGetHeight(v13);
      [(CSProminentButtonControl *)self bounds];
      v15 = CGRectInset(v14, Width * -0.5, Height * -0.5);
      [(CSProminentButtonBackingShadowView *)self->_backingShadowView setFrame:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
      [(UIView *)self->_containerView frame];
      v8 = CGRectGetWidth(v16);
      [(UIView *)self->_containerView frame];
      v9 = CGRectGetHeight(v17);
      v10 = self->_backingShadowView;

      [(CSProminentButtonBackingShadowView *)v10 _configureShadowMaskWithFrame:Width + v8 * -0.5, Height + v9 * -0.5, v8];
    }
  }

  else
  {

    [(CSProminentButtonBackingShadowView *)backingShadowView removeFromSuperview];
  }
}

- (void)_configureContainerAppearance
{
  if (self->_usesGlassMaterial)
  {
    glassLuminanceValue = self->_glassLuminanceValue;
    *&glassLuminanceValue = glassLuminanceValue;
    [(UIView *)self->_containerView cs_setLockPickGlassBackgroundWithLuminance:glassLuminanceValue];
  }

  else
  {
    [(UIView *)self->_containerView cs_clearLockPickGlassBackground];
  }
}

- (void)_configureBackgroundView
{
  [(CSProminentButtonControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (self->_usesGlassMaterial)
  {
    [(UIVisualEffectView *)self->_backgroundEffectView removeFromSuperview];
    backgroundEffectView = self->_backgroundEffectView;
    self->_backgroundEffectView = 0;

    v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v6, v8, v10}];
    [v12 setAutoresizingMask:18];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v12 setBackgroundColor:whiteColor];

    [v12 setAlpha:0.0];
    [v12 setClipsToBounds:1];
    [v12 setUserInteractionEnabled:0];
    [(UIView *)self->_containerView addSubview:v12];
    v14 = &OBJC_IVAR___CSProminentButtonControl__containerBackgroundView;
  }

  else
  {
    [(UIView *)self->_containerBackgroundView removeFromSuperview];
    containerBackgroundView = self->_containerBackgroundView;
    self->_containerBackgroundView = 0;

    v16 = [objc_alloc(MEMORY[0x1E69DD298]) initWithFrame:{v4, v6, v8, v10}];
    [(UIVisualEffectView *)v16 setAutoresizingMask:18];
    [(UIVisualEffectView *)v16 setClipsToBounds:1];
    [(UIVisualEffectView *)v16 setUserInteractionEnabled:0];
    [(UIView *)self->_containerView addSubview:v16];
    v17 = self->_backgroundEffectView;
    self->_backgroundEffectView = v16;

    contentView = [(UIVisualEffectView *)self->_backgroundEffectView contentView];
    v19 = [MEMORY[0x1E69DC888] colorWithRed:0.031372549 green:0.031372549 blue:0.031372549 alpha:1.0];
    [contentView setBackgroundColor:v19];

    contentView2 = [(UIVisualEffectView *)self->_backgroundEffectView contentView];
    [contentView2 setAlpha:0.0];

    v21 = [(CSProminentButtonControl *)self _backgroundEffectsWithBrightness:-0.13];
    backgroundEffects = self->_backgroundEffects;
    self->_backgroundEffects = v21;

    v12 = [(CSProminentButtonControl *)self _backgroundEffectsWithBrightness:0.65];
    v14 = &OBJC_IVAR___CSProminentButtonControl__selectedBackgroundEffects;
  }

  v23 = *v14;
  v24 = *(&self->super.super.super.super.isa + v23);
  *(&self->super.super.super.super.isa + v23) = v12;

  containerView = self->_containerView;
  glyphView = self->_glyphView;

  [(UIView *)containerView bringSubviewToFront:glyphView];
}

- (void)setEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsets.top, v3), vceqq_f64(*&self->_edgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_edgeInsets = insets;
    [(CSProminentButtonControl *)self setNeedsLayout];
  }
}

- (void)setGlyphView:(id)view
{
  viewCopy = view;
  glyphView = self->_glyphView;
  v8 = viewCopy;
  if (glyphView != viewCopy)
  {
    [(CSProminentButtonControlEmbeddedView *)glyphView removeFromSuperview];
    objc_storeStrong(&self->_glyphView, view);
    v7 = self->_glyphView;
    [(UIView *)self->_containerView bounds];
    [(CSProminentButtonControlEmbeddedView *)v7 setFrame:?];
    [(CSProminentButtonControlEmbeddedView *)self->_glyphView setAutoresizingMask:18];
    if (objc_opt_respondsToSelector())
    {
      [(CSProminentButtonControlEmbeddedView *)self->_glyphView setSelected:[(CSProminentButtonControl *)self isSelected]];
    }

    if (self->_glyphView)
    {
      [(UIView *)self->_containerView addSubview:?];
      [(CSProminentButtonControl *)self setNeedsLayout];
      [(CSProminentButtonControl *)self layoutIfNeeded];
    }
  }
}

- (void)_updateStyle
{
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  if (([(CSProminentButtonControl *)self isSelected]& 1) != 0)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    blackColor = whiteColor;
  }

  v4 = blackColor;
  v5 = [blackColor colorWithAlphaComponent:1.0];

  [(CSProminentButtonControl *)self setTintColor:v5];
}

- (void)setScaleValue:(double)value
{
  self->_scaleValue = value;
  containerView = self->_containerView;
  CGAffineTransformMakeScale(&v4, value, value);
  [(UIView *)containerView setTransform:&v4];
}

- (UIView)backgroundView
{
  containerBackgroundView = self->_containerBackgroundView;
  if (!containerBackgroundView)
  {
    containerBackgroundView = self->_backgroundEffectView;
  }

  return containerBackgroundView;
}

- (void)setUsesGlassMaterial:(BOOL)material
{
  if (self->_usesGlassMaterial != material)
  {
    self->_usesGlassMaterial = material;
    [(CSProminentButtonControl *)self _configureContainerAppearance];

    [(CSProminentButtonControl *)self _configureBackgroundView];
  }
}

- (void)setGlassLuminanceValue:(double)value
{
  if (self->_glassLuminanceValue != value)
  {
    self->_glassLuminanceValue = value;
    [(CSProminentButtonControl *)self _configureContainerAppearance];
  }
}

- (void)setHidesBackingShadow:(BOOL)shadow
{
  if (self->_hidesBackingShadow != shadow)
  {
    v19 = v6;
    v20 = v5;
    v21 = v3;
    v22 = v4;
    self->_hidesBackingShadow = shadow;
    if (shadow)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }

    areAnimationsEnabled = [MEMORY[0x1E69DD250] areAnimationsEnabled];
    [MEMORY[0x1E69DD250] setAnimationsEnabled:1];
    v10 = self->_backingShadowView;
    v11 = MEMORY[0x1E69DD250];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __50__CSProminentButtonControl_setHidesBackingShadow___block_invoke;
    v16 = &unk_1E76B9E20;
    v17 = v10;
    v18 = v8;
    v12 = v10;
    [v11 _animateUsingSpringWithDampingRatio:0 response:&v13 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.55 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    [MEMORY[0x1E69DD250] setAnimationsEnabled:{areAnimationsEnabled, v13, v14, v15, v16}];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(CSProminentButtonControl *)self isSelected]!= selected)
  {
    v5.receiver = self;
    v5.super_class = CSProminentButtonControl;
    [(CSProminentButtonControl *)&v5 setSelected:selectedCopy];
    [(CSProminentButtonControl *)self setNeedsLayout];
    [(CSProminentButtonControl *)self _updateStyle];
    if (objc_opt_respondsToSelector())
    {
      [(CSProminentButtonControlEmbeddedView *)self->_glyphView setSelected:[(CSProminentButtonControl *)self isSelected]];
    }

    [(CSProminentButtonControl *)self layoutIfNeededAnimated];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = vaddq_f64(vaddq_f64(*&self->_edgeInsets.top, *&self->_edgeInsets.bottom), vdupq_n_s64(0x4049000000000000uLL));
  v4 = v3.f64[1];
  result.height = v3.f64[0];
  result.width = v4;
  return result;
}

uint64_t __57__CSProminentButtonControl_layoutContainerBackgroundView__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[58];
  v4 = [v2 isSelected];
  v5 = 1.0;
  if ((v4 & 1) == 0)
  {
    v5 = *(*(a1 + 32) + 584) * 0.5 + 0.0;
  }

  return [v3 setAlpha:v5];
}

- (BOOL)clickInteractionShouldBegin:(id)begin
{
  beginCopy = begin;
  if (self->_clickInteraction == beginCopy && !self->_clickSuppressed)
  {
    v5 = 1;
    self->_interactive = 1;
    self->_didActivateDuringInteraction = 0;
    self->_maxForceDuringInteraction = 0.0;
    [(CSProminentButtonControl *)self setNeedsLayout];
    [(CSProminentButtonControl *)self layoutIfNeededAnimated];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)clickInteractionDidClickUp:(id)up
{
  if (self->_clickInteraction == up)
  {
    [(CSProminentButtonControl *)self setSelected:[(CSProminentButtonControl *)self isSelected]^ 1];
    [(CSProminentButtonControl *)self sendActionsForControlEvents:0x2000];
    if (self->_interactive)
    {
      self->_didActivateDuringInteraction = 1;
    }
  }
}

- (void)clickInteraction:(id)interaction didObserveForce:(double)maxForceDuringInteraction
{
  if (self->_interactive)
  {
    if (self->_maxForceDuringInteraction >= maxForceDuringInteraction)
    {
      maxForceDuringInteraction = self->_maxForceDuringInteraction;
    }

    self->_maxForceDuringInteraction = maxForceDuringInteraction;
  }
}

- (void)clickInteractionDidEnd:(id)end
{
  if (self->_clickInteraction == end)
  {
    v9[5] = v6;
    v9[6] = v5;
    v9[11] = v3;
    v9[12] = v4;
    self->_interactive = 0;
    self->_didActivateDuringInteraction = 0;
    self->_maxForceDuringInteraction = 0.0;
    [(CSProminentButtonControl *)self setNeedsLayout];
    [(CSProminentButtonControl *)self layoutIfNeededAnimated];
    if ([(CSProminentButtonControl *)self shouldAnimateBackgroundDuringInteraction])
    {
      [(UIVisualEffectView *)self->_backgroundEffectView setAlpha:1.0];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __51__CSProminentButtonControl_clickInteractionDidEnd___block_invoke;
      v9[3] = &unk_1E76B9E48;
      v9[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:2.0];
      [(UIView *)self->_containerBackgroundView setAlpha:1.0];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __51__CSProminentButtonControl_clickInteractionDidEnd___block_invoke_2;
      v8[3] = &unk_1E76B9E48;
      v8[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:2.0];
    }
  }
}

- (unint64_t)_clickInteractionDefaultDriverType:(id)type
{
  traitCollection = [(CSProminentButtonControl *)self traitCollection];
  forceTouchCapability = [traitCollection forceTouchCapability];

  if (forceTouchCapability == 2)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

- (id)highlightEffectForClickInteraction:(id)interaction
{
  interactionCopy = interaction;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E69DD620]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__CSProminentButtonControl_highlightEffectForClickInteraction___block_invoke;
  v8[3] = &unk_1E76B9E70;
  objc_copyWeak(&v9, &location);
  v6 = [v5 initWithProgressBlock:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __63__CSProminentButtonControl_highlightEffectForClickInteraction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 progress];
  v5 = v4;
  v6 = [v3 ended];

  [WeakRetained _animateEffectUpdateWithProgress:v6 ended:v5];
}

- (void)_animateEffectUpdateWithProgress:(double)progress ended:(BOOL)ended
{
  v4 = progress + progress + 18.0;
  v5[1] = 3221225472;
  v5[0] = MEMORY[0x1E69E9820];
  v5[2] = __67__CSProminentButtonControl__animateEffectUpdateWithProgress_ended___block_invoke;
  v5[3] = &unk_1E76B9E20;
  if (ended)
  {
    v4 = v4 + 4.0;
  }

  v5[4] = self;
  *&v5[5] = progress;
  [MEMORY[0x1E69DD250] _animateUsingSpringWithTension:0 friction:v5 interactive:0 animations:500.0 completion:v4];
}

uint64_t __67__CSProminentButtonControl__animateEffectUpdateWithProgress_ended___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__CSProminentButtonControl__animateEffectUpdateWithProgress_ended___block_invoke_2;
  v4[3] = &unk_1E76B9E20;
  v4[4] = *(a1 + 32);
  v4[5] = *(a1 + 40);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1114125 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

uint64_t __67__CSProminentButtonControl__animateEffectUpdateWithProgress_ended___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 523) == 1)
  {
    [*(v2 + 576) setAlpha:*(a1 + 40)];
    [*(*(a1 + 32) + 464) setAlpha:*(a1 + 40)];
    v2 = *(a1 + 32);
  }

  v3 = *(a1 + 40);
  if (v3 > 1.2)
  {
    v3 = 1.2;
  }

  [v2 setHighlightProgress:v3];
  [*(a1 + 32) setNeedsLayout];
  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

- (void)setShouldAnimateBackgroundDuringInteraction:(BOOL)interaction
{
  if (self->_shouldAnimateBackgroundDuringInteraction != interaction)
  {
    v13 = v7;
    v14 = v3;
    self->_shouldAnimateBackgroundDuringInteraction = interaction;
    containerBackgroundView = self->_containerBackgroundView;
    if (interaction)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }

    [(UIView *)containerBackgroundView setAlpha:v11, v8, v13, v4, v14, v5];
    backgroundEffectView = self->_backgroundEffectView;

    [(UIVisualEffectView *)backgroundEffectView setAlpha:v11];
  }
}

- (void)layoutIfNeededAnimated
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__CSProminentButtonControl_layoutIfNeededAnimated__block_invoke;
  v2[3] = &unk_1E76B9E48;
  v2[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v2 options:0 animations:0.0 completion:0.0];
}

uint64_t __50__CSProminentButtonControl_layoutIfNeededAnimated__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__CSProminentButtonControl_layoutIfNeededAnimated__block_invoke_2;
  v4[3] = &unk_1E76B9E48;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1114125 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

- (id)_backgroundEffectsWithBrightness:(double)brightness
{
  v16[5] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69DC730] effectWithBlurRadius:30.0];
  v6 = MEMORY[0x1E69DD290];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v8 = [v6 effectCompositingColor:blackColor withMode:4 alpha:0.12];
  v16[1] = v8;
  v9 = MEMORY[0x1E69DC898];
  luminanceMap = [(CSProminentButtonControl *)self luminanceMap];
  v11 = [v9 colorEffectLuminanceMap:luminanceMap blendingAmount:0.7];
  v16[2] = v11;
  v12 = [MEMORY[0x1E69DC898] colorEffectSaturate:2.8];
  v16[3] = v12;
  v13 = [MEMORY[0x1E69DC898] colorEffectBrightness:brightness];
  v16[4] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:5];

  return v14;
}

- (UIImage)luminanceMap
{
  luminanceMap = self->_luminanceMap;
  if (luminanceMap)
  {
    _defaultLuminanceMap = luminanceMap;
  }

  else
  {
    _defaultLuminanceMap = [(CSProminentButtonControl *)self _defaultLuminanceMap];
  }

  return _defaultLuminanceMap;
}

- (id)copyBackgroundView
{
  if (self->_usesGlassMaterial)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD250]);
    [(CSProminentButtonControl *)self bounds];
    v4 = [v3 initWithFrame:?];
    [v4 setAutoresizingMask:18];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v4 setBackgroundColor:whiteColor];

    isSelected = [(CSProminentButtonControl *)self isSelected];
    highlightProgress = 1.0;
    if ((isSelected & 1) == 0)
    {
      highlightProgress = self->_highlightProgress;
    }

    [v4 setAlpha:highlightProgress];
    [v4 setClipsToBounds:1];
    [v4 setUserInteractionEnabled:0];
  }

  else
  {
    [(UIVisualEffectView *)self->_backgroundEffectView cs_copyVisualEffectView];
    return objc_claimAutoreleasedReturnValue();
  }

  return v4;
}

- (id)copyWithoutGlyphView
{
  v3 = objc_alloc(objc_opt_class());
  [(CSProminentButtonControl *)self frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  luminanceMap = [(CSProminentButtonControl *)self luminanceMap];
  v13 = [v3 initWithFrame:luminanceMap luminanceMap:{v5, v7, v9, v11}];

  [(CSProminentButtonControl *)self edgeInsets];
  [v13 setEdgeInsets:?];
  [(CSProminentButtonControl *)self highlightProgress];
  [v13 setHighlightProgress:?];
  [v13 setUsesGlassMaterial:{-[CSProminentButtonControl usesGlassMaterial](self, "usesGlassMaterial")}];
  [(CSProminentButtonControl *)self glassLuminanceValue];
  [v13 setGlassLuminanceValue:?];
  backgroundEffectView = [v13 backgroundEffectView];

  if (backgroundEffectView)
  {
    v15 = objc_alloc(MEMORY[0x1E695DEC8]);
    backgroundEffectView2 = [(CSProminentButtonControl *)self backgroundEffectView];
    backgroundEffects = [backgroundEffectView2 backgroundEffects];
    v18 = [v15 initWithArray:backgroundEffects copyItems:1];

    backgroundEffectView3 = [v13 backgroundEffectView];
    [backgroundEffectView3 setBackgroundEffects:v18];

    backgroundEffectViewGroupName = [(CSProminentButtonControl *)self backgroundEffectViewGroupName];
    [v13 setBackgroundEffectViewGroupName:backgroundEffectViewGroupName];
  }

  tintColor = [(CSProminentButtonControl *)self tintColor];
  [v13 setTintColor:tintColor];

  [(CSProminentButtonControl *)self alpha];
  [v13 setAlpha:?];
  [v13 setSelected:{-[CSProminentButtonControl isSelected](self, "isSelected")}];
  [v13 setEnabled:{-[CSProminentButtonControl isEnabled](self, "isEnabled")}];
  [v13 setHidden:{-[CSProminentButtonControl isHidden](self, "isHidden")}];
  [(CSProminentButtonControl *)self _continuousCornerRadius];
  [v13 _setContinuousCornerRadius:?];
  [v13 setNeedsLayout];
  return v13;
}

@end