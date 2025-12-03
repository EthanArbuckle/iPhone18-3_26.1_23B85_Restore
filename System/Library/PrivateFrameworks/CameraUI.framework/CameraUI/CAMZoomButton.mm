@interface CAMZoomButton
+ (BOOL)shouldUseLargeButtonSizeForContentSize:(id)size;
+ (NSNumberFormatter)zoomFactorFormatter;
+ (id)textForZoomFactor:(double)factor showZoomFactorSymbol:(BOOL)symbol useLeadingZero:(BOOL)zero;
- (BOOL)useLeadingZero;
- (CAMZoomButton)initWithCoder:(id)coder;
- (CAMZoomButton)initWithFrame:(CGRect)frame;
- (CGAffineTransform)_highlightingTransformForHighlighted:(SEL)highlighted;
- (CGAffineTransform)_transformForEnlargeText:(SEL)text orientation:(BOOL)orientation;
- (CGAffineTransform)highlightingTransform;
- (CGRect)accessoryFrame;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)tappableEdgeInsets;
- (id)_imageForZoomSymbol:(int64_t)symbol;
- (id)initForPlatter:(BOOL)platter;
- (int64_t)textShadowStrength;
- (void)_commonCAMZoomButtonInitializationForPlatter:(BOOL)platter;
- (void)_createFocalLengthLabelIfNeeded;
- (void)_createZoomSymbolViewIfNecessary;
- (void)_ensureBackgroundViewOrdering;
- (void)_installBackgroundEffectContainerView;
- (void)_layoutFocalLengthLabel;
- (void)_layoutFocalLengthLabelForAlignmentRectBounds:(CGRect)bounds contentTransform:(CGAffineTransform *)transform;
- (void)_performHighlightAnimation;
- (void)_setHighlightingTransform:(CGAffineTransform *)transform;
- (void)_updateAccessoryAlphas;
- (void)_updateBackgroundEffectContainerViewAlpha;
- (void)_updateBackgroundEffectViewContents;
- (void)_updateBackgroundViewDeferRemovalForAnimations:(BOOL)animations;
- (void)_updateZoomFactorLabelIfNeeded;
- (void)_updateZoomSymbolViewAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setAccessoryPosition:(int64_t)position animated:(BOOL)animated;
- (void)setAccessoryState:(int64_t)state animated:(BOOL)animated;
- (void)setContentType:(int64_t)type animated:(BOOL)animated;
- (void)setEnlargeText:(BOOL)text;
- (void)setFocalLength:(int64_t)length animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setOverPlatter:(BOOL)platter;
- (void)setShouldHideBackground:(BOOL)background animationDuration:(double)duration;
- (void)setShowZoomFactorSymbol:(BOOL)symbol;
- (void)setTappableEdgeInsets:(UIEdgeInsets)insets;
- (void)setTextShadowStrength:(int64_t)strength;
- (void)setUseLeadingZero:(BOOL)zero;
- (void)setZoomFactor:(double)factor;
- (void)setZoomSymbol:(int64_t)symbol animated:(BOOL)animated;
- (void)tintColorDidChange;
@end

@implementation CAMZoomButton

- (void)_commonCAMZoomButtonInitializationForPlatter:(BOOL)platter
{
  v20[1] = *MEMORY[0x1E69E9840];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(CAMZoomButton *)self setTintColor:whiteColor];

  self->_showZoomFactorSymbol = 1;
  self->_overPlatter = platter;
  v6 = objc_alloc(MEMORY[0x1E69DD250]);
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
  contentContainerView = self->__contentContainerView;
  self->__contentContainerView = v11;

  [(UIView *)self->__contentContainerView setUserInteractionEnabled:0];
  [(CAMZoomButton *)self addSubview:self->__contentContainerView];
  [(CAMZoomButton *)self _updateBackgroundView];
  v13 = [[CAMZoomFactorLabel alloc] initWithFrame:v7, v8, v9, v10];
  zoomFactorLabel = self->__zoomFactorLabel;
  self->__zoomFactorLabel = v13;

  [(CAMZoomFactorLabel *)self->__zoomFactorLabel setShowZoomFactorSymbol:1];
  [(CAMZoomFactorLabel *)self->__zoomFactorLabel setUseLeadingZero:1];
  tintColor = [(CAMZoomButton *)self tintColor];
  [(CAMZoomFactorLabel *)self->__zoomFactorLabel setTintColor:tintColor];

  [(UIView *)self->__contentContainerView addSubview:self->__zoomFactorLabel];
  self->_zoomFactor = 1.0;
  [(CAMZoomButton *)self _updateZoomFactorLabelIfNeeded];
  v16 = MEMORY[0x1E695EFD0];
  v17 = *(MEMORY[0x1E695EFD0] + 16);
  *&self->_highlightingTransform.a = *MEMORY[0x1E695EFD0];
  *&self->_highlightingTransform.c = v17;
  *&self->_highlightingTransform.tx = *(v16 + 32);
  v20[0] = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v19 = [(CAMZoomButton *)self registerForTraitChanges:v18 withAction:sel__preferredContentSizeCategoryChanged];
}

- (id)initForPlatter:(BOOL)platter
{
  platterCopy = platter;
  v8.receiver = self;
  v8.super_class = CAMZoomButton;
  v4 = [(CAMZoomButton *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(CAMZoomButton *)v4 _commonCAMZoomButtonInitializationForPlatter:platterCopy];
    v6 = v5;
  }

  return v5;
}

- (CAMZoomButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CAMZoomButton;
  v3 = [(CAMZoomButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMZoomButton *)v3 _commonCAMZoomButtonInitialization];
    v5 = v4;
  }

  return v4;
}

- (CAMZoomButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CAMZoomButton;
  v3 = [(CAMZoomButton *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CAMZoomButton *)v3 _commonCAMZoomButtonInitialization];
    v5 = v4;
  }

  return v4;
}

- (void)setContentType:(int64_t)type animated:(BOOL)animated
{
  if (self->_contentType != type)
  {
    v15 = v4;
    v16 = v5;
    animatedCopy = animated;
    self->_contentType = type;
    if (type == 2)
    {
      [(CAMZoomButton *)self _createFocalLengthLabelIfNeeded];
      v9 = 0;
      v8 = 1;
    }

    else if (type == 1)
    {
      [(CAMZoomButton *)self _createZoomSymbolViewIfNecessary];
      [(CAMZoomButton *)self _updateZoomSymbolViewAnimated:animatedCopy];
      v8 = 0;
      v9 = 1;
    }

    else
    {
      if (!type)
      {
        [(CAMZoomButton *)self _updateZoomFactorLabelIfNeeded];
      }

      v8 = 0;
      v9 = 0;
    }

    v10 = 0.25;
    v11[1] = 3221225472;
    v11[0] = MEMORY[0x1E69E9820];
    v11[2] = __41__CAMZoomButton_setContentType_animated___block_invoke;
    v11[3] = &unk_1E76FB4D8;
    if (!animatedCopy)
    {
      v10 = 0.0;
    }

    v11[4] = self;
    v12 = v9;
    v13 = (v8 | v9) ^ 1;
    v14 = v8;
    [CAMView animateIfNeededWithDuration:v11 animations:v10];
  }
}

void __41__CAMZoomButton_setContentType_animated___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v3 = *&a2;
  v4 = [*(a1 + 32) _zoomSymbolView];
  [v4 setAlpha:v3];

  LOBYTE(v5) = *(a1 + 41);
  v6 = v5;
  v7 = [*(a1 + 32) _zoomFactorLabel];
  [v7 setAlpha:v6];

  LOBYTE(v8) = *(a1 + 42);
  v9 = v8;
  v10 = [*(a1 + 32) _focalLengthLabel];
  [v10 setAlpha:v9];
}

- (void)setZoomFactor:(double)factor
{
  if (self->_zoomFactor != factor)
  {
    self->_zoomFactor = factor;
    [(CAMZoomButton *)self _updateZoomFactorLabelIfNeeded];
  }
}

- (void)setZoomSymbol:(int64_t)symbol animated:(BOOL)animated
{
  if (self->_zoomSymbol != symbol)
  {
    self->_zoomSymbol = symbol;
    [(CAMZoomButton *)self _updateZoomSymbolViewAnimated:animated];
  }
}

- (void)_createZoomSymbolViewIfNecessary
{
  if (!self->__zoomSymbolView)
  {
    v5 = [(CAMZoomButton *)self _imageForZoomSymbol:[(CAMZoomButton *)self zoomSymbol]];
    v3 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v5];
    zoomSymbolView = self->__zoomSymbolView;
    self->__zoomSymbolView = v3;

    [(UIImageView *)self->__zoomSymbolView _setAnimatesContents:1];
    [(UIView *)self->__contentContainerView addSubview:self->__zoomSymbolView];
    [(CAMZoomButton *)self setNeedsLayout];
  }
}

- (id)_imageForZoomSymbol:(int64_t)symbol
{
  if (symbol > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E76FB4F8[symbol];
  }

  v4 = MEMORY[0x1E69DCAB8];
  v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:16.0];
  v6 = [v4 systemImageNamed:v3 withConfiguration:v5];

  return v6;
}

- (void)_updateZoomSymbolViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  contentType = [(CAMZoomButton *)self contentType];
  if (contentType && contentType != 2)
  {
    if (contentType == 1)
    {
      v6 = [(CAMZoomButton *)self _imageForZoomSymbol:[(CAMZoomButton *)self zoomSymbol]];
    }

    else
    {
      v6 = 0;
    }

    v9[1] = 3221225472;
    v9[0] = MEMORY[0x1E69E9820];
    v9[2] = __47__CAMZoomButton__updateZoomSymbolViewAnimated___block_invoke;
    v9[3] = &unk_1E76F7960;
    if (animatedCopy)
    {
      v7 = 0.2;
    }

    else
    {
      v7 = 0.0;
    }

    v9[4] = self;
    v10 = v6;
    v8 = v6;
    [CAMView animateIfNeededWithDuration:v9 animations:v7];
  }
}

void __47__CAMZoomButton__updateZoomSymbolViewAnimated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _zoomSymbolView];
  [v2 setImage:v1];
}

- (void)setFocalLength:(int64_t)length animated:(BOOL)animated
{
  if (self->_focalLength != length)
  {
    self->_focalLength = length;
    _focalLengthLabel = [(CAMZoomButton *)self _focalLengthLabel];
    [_focalLengthLabel setFocalLength:length];
  }
}

- (void)_createFocalLengthLabelIfNeeded
{
  _focalLengthLabel = [(CAMZoomButton *)self _focalLengthLabel];

  if (!_focalLengthLabel)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __48__CAMZoomButton__createFocalLengthLabelIfNeeded__block_invoke;
    v4[3] = &unk_1E76F77B0;
    v4[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v4];
    [(CAMZoomButton *)self setNeedsLayout];
  }
}

void __48__CAMZoomButton__createFocalLengthLabelIfNeeded__block_invoke(uint64_t a1)
{
  v4 = objc_alloc_init(CAMFocalLengthLabel);
  -[CAMFocalLengthLabel setFocalLength:](v4, "setFocalLength:", [*(a1 + 32) focalLength]);
  v2 = [*(a1 + 32) _contentContainerView];
  [v2 addSubview:v4];

  [*(a1 + 32) set_focalLengthLabel:v4];
  [*(a1 + 32) _layoutFocalLengthLabel];
  v3 = [*(a1 + 32) _focalLengthLabel];
  [v3 layoutIfNeeded];
}

- (void)setAccessoryState:(int64_t)state animated:(BOOL)animated
{
  if (self->_accessoryState == state)
  {
    return;
  }

  animatedCopy = animated;
  _accessoryBackgroundView = [(CAMZoomButton *)self _accessoryBackgroundView];
  _accessoryImageView = [(CAMZoomButton *)self _accessoryImageView];
  v9 = _accessoryImageView;
  if (!_accessoryBackgroundView)
  {
    _accessoryBackgroundView = objc_alloc_init(MEMORY[0x1E69DD250]);
    [_accessoryBackgroundView installThinMaterial];
    [_accessoryBackgroundView setClipsToBounds:1];
    _contentContainerView = [(CAMZoomButton *)self _contentContainerView];
    [_contentContainerView insertSubview:_accessoryBackgroundView atIndex:0];

    [(CAMZoomButton *)self set_accessoryBackgroundView:_accessoryBackgroundView];
    [(CAMZoomButton *)self _ensureBackgroundViewOrdering];
    [(CAMZoomButton *)self setNeedsLayout];
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_11:
    v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v9 setTintColor:whiteColor];

    _contentContainerView2 = [(CAMZoomButton *)self _contentContainerView];
    [_contentContainerView2 insertSubview:v9 atIndex:1];

    [(CAMZoomButton *)self set_accessoryImageView:v9];
    [(CAMZoomButton *)self _updateAccessoryAlphas];
    [(CAMZoomButton *)self setNeedsLayout];
    goto LABEL_4;
  }

  if (!_accessoryImageView)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (state == 1)
  {
    v10 = MEMORY[0x1E69DCAB8];
    v11 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:16.0];
    v12 = [v10 _systemImageNamed:@"camera.nightmode" withConfiguration:v11];
    v13 = [v12 imageWithRenderingMode:2];
    [v9 setImage:v13];
  }

  if (animatedCopy)
  {
    [(CAMZoomButton *)self layoutIfNeeded];
    self->_accessoryState = state;
    [(CAMZoomButton *)self setNeedsLayout];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __44__CAMZoomButton_setAccessoryState_animated___block_invoke;
    v25[3] = &unk_1E76F77B0;
    v25[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v25 usingSpringWithDamping:0 initialSpringVelocity:0.4 options:0.0 animations:1.0 completion:1.0];
    if ([(CAMZoomButton *)self accessoryState])
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __44__CAMZoomButton_setAccessoryState_animated___block_invoke_3;
      v23[3] = &unk_1E76F77B0;
      v23[4] = self;
      v14 = 0.05;
      v15 = 1.0;
      v16 = 1.0;
      v17 = v23;
      v18 = 0.4;
      v19 = 2;
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __44__CAMZoomButton_setAccessoryState_animated___block_invoke_2;
      v24[3] = &unk_1E76F77B0;
      v24[4] = self;
      v18 = 0.25;
      v14 = 0.0;
      v15 = 1.0;
      v17 = v24;
      v16 = 1.0;
      v19 = 0;
    }

    [MEMORY[0x1E69DD250] animateWithDuration:v19 delay:v17 usingSpringWithDamping:0 initialSpringVelocity:v18 options:v14 animations:v15 completion:v16];
  }

  else
  {
    self->_accessoryState = state;
    [(CAMZoomButton *)self setNeedsLayout];
    [(CAMZoomButton *)self _updateAccessoryAlphas];
  }
}

- (void)setAccessoryPosition:(int64_t)position animated:(BOOL)animated
{
  if (self->_accessoryPosition != position)
  {
    if (animated)
    {
      [(CAMZoomButton *)self layoutIfNeeded];
      self->_accessoryPosition = position;
      [(CAMZoomButton *)self setNeedsLayout];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __47__CAMZoomButton_setAccessoryPosition_animated___block_invoke;
      v6[3] = &unk_1E76F77B0;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v6 usingSpringWithDamping:0 initialSpringVelocity:0.4 options:0.0 animations:1.0 completion:1.0];
    }

    else
    {
      self->_accessoryPosition = position;

      [(CAMZoomButton *)self setNeedsLayout];
    }
  }
}

- (CGRect)accessoryFrame
{
  v4 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  _accessoryBackgroundView = [(CAMZoomButton *)self _accessoryBackgroundView];
  if (_accessoryBackgroundView && [(CAMZoomButton *)self accessoryState])
  {
    [_accessoryBackgroundView bounds];
    [(CAMZoomButton *)self convertRect:_accessoryBackgroundView fromView:?];
    v4 = v8;
    v3 = v9;
    v5 = v10;
    v6 = v11;
    _backgroundEffectContainerView = [(CAMZoomButton *)self _backgroundEffectContainerView];
    [_backgroundEffectContainerView bounds];
    [(CAMZoomButton *)self convertRect:_backgroundEffectContainerView fromView:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    accessoryPosition = [(CAMZoomButton *)self accessoryPosition];
    if (accessoryPosition == 1)
    {
      v29.origin.x = v4;
      v29.origin.y = v3;
      v29.size.width = v5;
      v29.size.height = v6;
      MaxX = CGRectGetMaxX(v29);
      v30.origin.x = v14;
      v30.origin.y = v16;
      v30.size.width = v18;
      v30.size.height = v20;
      v5 = v5 - (MaxX - CGRectGetMinX(v30));
    }

    else if (!accessoryPosition)
    {
      v28.origin.x = v14;
      v28.origin.y = v16;
      v28.size.width = v18;
      v28.size.height = v20;
      v22 = CGRectGetMaxX(v28);
      v5 = v5 - (v22 - v4);
      v4 = v22;
    }
  }

  v23 = v4;
  v24 = v3;
  v25 = v5;
  v26 = v6;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)_updateAccessoryAlphas
{
  if ([(CAMZoomButton *)self accessoryState])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  _accessoryBackgroundView = [(CAMZoomButton *)self _accessoryBackgroundView];
  [_accessoryBackgroundView setAlpha:v3];

  _accessoryImageView = [(CAMZoomButton *)self _accessoryImageView];
  [_accessoryImageView setAlpha:v3];

  [(CAMZoomButton *)self _updateBackgroundEffectViewContents];
}

- (void)_updateBackgroundEffectViewContents
{
  _backgroundVisualEffectView = [(CAMZoomButton *)self _backgroundVisualEffectView];

  if (_backgroundVisualEffectView)
  {
    if ([(CAMZoomButton *)self accessoryState])
    {
      v4 = 2;
    }

    else
    {
      v4 = 7;
    }

    v6 = [MEMORY[0x1E69DC730] effectWithStyle:v4];
    _backgroundVisualEffectView2 = [(CAMZoomButton *)self _backgroundVisualEffectView];
    [_backgroundVisualEffectView2 setEffect:v6];
  }
}

- (void)setTappableEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_tappableEdgeInsets.top), vceqq_f64(v4, *&self->_tappableEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_tappableEdgeInsets = insets;
    [(CAMZoomButton *)self setNeedsLayout];
  }
}

- (void)setOverPlatter:(BOOL)platter
{
  if (self->_overPlatter != platter)
  {
    self->_overPlatter = platter;
    [(CAMZoomButton *)self _updateBackgroundView];

    [(CAMZoomButton *)self _updateBackgroundEffectContainerViewAlpha];
  }
}

- (void)_updateBackgroundViewDeferRemovalForAnimations:(BOOL)animations
{
  shouldHideBackground = [(CAMZoomButton *)self shouldHideBackground];
  _backgroundEffectContainerView = [(CAMZoomButton *)self _backgroundEffectContainerView];
  v7 = _backgroundEffectContainerView;
  if (shouldHideBackground || _backgroundEffectContainerView)
  {
    if (_backgroundEffectContainerView)
    {
      v8 = shouldHideBackground;
    }

    else
    {
      v8 = 0;
    }

    if (v8 && !animations)
    {
      [_backgroundEffectContainerView removeFromSuperview];
      [(CAMZoomButton *)self set_backgroundEffectContainerView:0];
      [(CAMZoomButton *)self set_backgroundVisualEffectView:0];
    }
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__CAMZoomButton__updateBackgroundViewDeferRemovalForAnimations___block_invoke;
    v9[3] = &unk_1E76F77B0;
    v9[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v9];
    [(CAMZoomButton *)self _updateBackgroundEffectContainerViewAlpha];
  }
}

- (void)_installBackgroundEffectContainerView
{
  if (!self->__backgroundEffectContainerView)
  {
    v3 = objc_opt_class();
    traitCollection = [(CAMZoomButton *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    [v3 circleDiameterForContentSize:preferredContentSizeCategory];
    v7 = v6;

    traitCollection2 = [(CAMZoomButton *)self traitCollection];
    [traitCollection2 displayScale];
    v10 = v9;

    [(UIView *)self->__contentContainerView bounds];
    UIRectCenteredIntegralRectScale();
    v15 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v11, v12, v13, v14, v10}];
    backgroundEffectContainerView = self->__backgroundEffectContainerView;
    self->__backgroundEffectContainerView = v15;

    layer = [(UIView *)self->__backgroundEffectContainerView layer];
    [layer setCornerRadius:v7 * 0.5];

    [(UIView *)self->__backgroundEffectContainerView setClipsToBounds:1];
    [(UIView *)self->__backgroundEffectContainerView setAlpha:0.0];
    v18 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
    backgroundVisualEffectView = self->__backgroundVisualEffectView;
    self->__backgroundVisualEffectView = v18;

    [(UIView *)self->__backgroundEffectContainerView bounds];
    [(UIVisualEffectView *)self->__backgroundVisualEffectView setFrame:?];
    [(UIVisualEffectView *)self->__backgroundVisualEffectView setAutoresizingMask:18];
    [(UIView *)self->__backgroundEffectContainerView addSubview:self->__backgroundVisualEffectView];
    [(CAMZoomButton *)self _updateBackgroundEffectViewContents];
    [(UIView *)self->__contentContainerView insertSubview:self->__backgroundEffectContainerView atIndex:0];
    [(CAMZoomButton *)self _ensureBackgroundViewOrdering];

    [(CAMZoomButton *)self setNeedsLayout];
  }
}

- (void)_ensureBackgroundViewOrdering
{
  if (self->__backgroundEffectContainerView && self->__accessoryBackgroundView)
  {
    _contentContainerView = [(CAMZoomButton *)self _contentContainerView];
    subviews = [_contentContainerView subviews];
    v4 = [subviews indexOfObject:self->__backgroundEffectContainerView];

    subviews2 = [_contentContainerView subviews];
    v6 = [subviews2 indexOfObject:self->__accessoryBackgroundView];

    if (v4 < v6)
    {
      [_contentContainerView exchangeSubviewAtIndex:v4 withSubviewAtIndex:v6];
    }
  }
}

- (void)setShouldHideBackground:(BOOL)background animationDuration:(double)duration
{
  if (self->_shouldHideBackground != background)
  {
    v13[5] = v7;
    v13[6] = v6;
    v13[9] = v4;
    v13[10] = v5;
    backgroundCopy = background;
    self->_shouldHideBackground = background;
    [(CAMZoomButton *)self _updateBackgroundViewDeferRemovalForAnimations:duration != 0.0];
    if (backgroundCopy)
    {
      v11 = 2.0;
    }

    else
    {
      v11 = 0.0;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__CAMZoomButton_setShouldHideBackground_animationDuration___block_invoke;
    v13[3] = &unk_1E76F77B0;
    v13[4] = self;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__CAMZoomButton_setShouldHideBackground_animationDuration___block_invoke_2;
    v12[3] = &unk_1E76F7988;
    v12[4] = self;
    [CAMView animateIfNeededWithDuration:4 usingSpringWithDamping:v13 initialSpringVelocity:v12 options:duration animations:1.0 completion:v11];
  }
}

- (void)_setHighlightingTransform:(CGAffineTransform *)transform
{
  p_highlightingTransform = &self->_highlightingTransform;
  v6 = *&self->_highlightingTransform.c;
  *&t1.a = *&self->_highlightingTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_highlightingTransform.tx;
  v7 = *&transform->c;
  *&v10.a = *&transform->a;
  *&v10.c = v7;
  *&v10.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_highlightingTransform->c = *&transform->c;
    *&p_highlightingTransform->tx = v9;
    *&p_highlightingTransform->a = v8;
    [(CAMZoomButton *)self setNeedsLayout];
  }
}

- (CGSize)intrinsicContentSize
{
  traitCollection = [(CAMZoomButton *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  [objc_opt_class() circleDiameterForContentSize:preferredContentSizeCategory];
  v5 = v4;

  v6 = v5;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v58.receiver = self;
  v58.super_class = CAMZoomButton;
  [(CAMZoomButton *)&v58 layoutSubviews];
  [(CAMZoomButton *)self bounds];
  [(CAMZoomButton *)self alignmentRectForFrame:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _contentContainerView = [(CAMZoomButton *)self _contentContainerView];
  _zoomFactorLabel = [(CAMZoomButton *)self _zoomFactorLabel];
  _zoomSymbolView = [(CAMZoomButton *)self _zoomSymbolView];
  v59.origin.x = v4;
  v59.origin.y = v6;
  v59.size.width = v8;
  v59.size.height = v10;
  MidX = CGRectGetMidX(v59);
  v60.origin.x = v4;
  v60.origin.y = v6;
  v60.size.width = v8;
  v60.size.height = v10;
  MidY = CGRectGetMidY(v60);
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  [(CAMZoomButton *)self _highlightingTransformForHighlighted:[(CAMZoomButton *)self isHighlighted]];
  [_contentContainerView setBounds:{0.0, 0.0, v8, v10}];
  [_contentContainerView setCenter:{MidX, MidY}];
  v52 = v55;
  v53 = v56;
  v54 = v57;
  [_contentContainerView setTransform:&v52];
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v8;
  v61.size.height = v10;
  CGRectGetMidX(v61);
  v62.origin.x = 0.0;
  v62.origin.y = 0.0;
  v62.size.width = v8;
  v62.size.height = v10;
  CGRectGetMidY(v62);
  v16 = MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 16);
  v50 = *MEMORY[0x1E695F058];
  v51 = v17;
  v49 = *MEMORY[0x1E695EFF8];
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  [(CAMZoomButton *)self _transformForEnlargeText:[(CAMZoomButton *)self enlargeText] orientation:[(CAMZoomButton *)self orientation]];
  [CAMView convertRect:&v50 toCeiledBounds:&v49 andRoundedCenter:self toViewScale:0.0, 0.0, v8, v10];
  [_zoomFactorLabel setBounds:{v50, v51}];
  [_zoomFactorLabel setCenter:v49];
  v46 = v52;
  v47 = v53;
  v48 = v54;
  [_zoomFactorLabel setTransform:&v46];
  traitCollection = [(CAMZoomButton *)self traitCollection];
  [traitCollection displayScale];
  v20 = v19;

  v22 = *v16;
  v21 = v16[1];
  image = [_zoomSymbolView image];
  [image size];
  v25 = v24;
  v27 = v26;

  v45 = v8;
  UIRectCenteredIntegralRectScale();
  UIRectGetCenter();
  v29 = v28;
  v31 = v30;
  [_zoomSymbolView setBounds:{v22, v21, v25, v27, v20}];
  [_zoomSymbolView setCenter:{v29, v31}];
  v46 = v52;
  v47 = v53;
  v48 = v54;
  [_zoomSymbolView setTransform:&v46];
  v32 = objc_opt_class();
  traitCollection2 = [(CAMZoomButton *)self traitCollection];
  preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
  [v32 circleDiameterForContentSize:preferredContentSizeCategory];
  v36 = v35;

  if (self->__backgroundEffectContainerView)
  {
    _backgroundEffectContainerView = [(CAMZoomButton *)self _backgroundEffectContainerView];
    UIRectCenteredAboutPointScale();
    [_backgroundEffectContainerView setFrame:?];
    layer = [_backgroundEffectContainerView layer];
    [layer setCornerRadius:v36 * 0.5];
  }

  v46 = v52;
  v47 = v53;
  v48 = v54;
  [(CAMZoomButton *)self _layoutFocalLengthLabelForAlignmentRectBounds:&v46 contentTransform:0.0, 0.0, v45, v10];
  _accessoryBackgroundView = [(CAMZoomButton *)self _accessoryBackgroundView];
  _accessoryImageView = [(CAMZoomButton *)self _accessoryImageView];
  if (_accessoryImageView | _accessoryBackgroundView)
  {
    UIRectCenteredAboutPoint();
    v41 = CAMViewAlignmentSize(_accessoryImageView);
    v43 = v42;
    if ([(CAMZoomButton *)self accessoryState])
    {
      [(CAMZoomButton *)self accessoryPosition];
    }

    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    [_accessoryImageView setCenter:?];
    [_accessoryImageView setBounds:{v22, v21, v41, v43}];
    v46 = v52;
    v47 = v53;
    v48 = v54;
    [_accessoryImageView setTransform:&v46];
    UIRectIntegralWithScale();
    [_accessoryBackgroundView setFrame:?];
    layer2 = [_accessoryBackgroundView layer];
    [layer2 setCornerRadius:v36 * 0.5];
  }
}

- (void)_layoutFocalLengthLabelForAlignmentRectBounds:(CGRect)bounds contentTransform:(CGAffineTransform *)transform
{
  _focalLengthLabel = [(CAMZoomButton *)self _focalLengthLabel];
  if (_focalLengthLabel)
  {
    traitCollection = [(CAMZoomButton *)self traitCollection];
    [traitCollection displayScale];
    v9 = v8;

    [_focalLengthLabel intrinsicContentSize];
    CEKRectWithSize();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    UIRectCenteredIntegralRectScale();
    [_focalLengthLabel setBounds:{v11, v13, v15, v17, v9}];
    UIRectGetCenter();
    [_focalLengthLabel setCenter:?];
    v18 = *&transform->c;
    v19[0] = *&transform->a;
    v19[1] = v18;
    v19[2] = *&transform->tx;
    [_focalLengthLabel setTransform:v19];
  }
}

- (void)_layoutFocalLengthLabel
{
  [(CAMZoomButton *)self bounds];
  [(CAMZoomButton *)self alignmentRectForFrame:?];
  v4 = v3;
  v6 = v5;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  [(CAMZoomButton *)self _transformForEnlargeText:[(CAMZoomButton *)self enlargeText] orientation:[(CAMZoomButton *)self orientation]];
  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  [(CAMZoomButton *)self _layoutFocalLengthLabelForAlignmentRectBounds:v7 contentTransform:0.0, 0.0, v4, v6];
}

- (void)tintColorDidChange
{
  zoomFactorLabel = self->__zoomFactorLabel;
  tintColor = [(CAMZoomButton *)self tintColor];
  [(CAMZoomFactorLabel *)zoomFactorLabel setTextColor:tintColor];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(CAMZoomButton *)self isHighlighted];
  v7.receiver = self;
  v7.super_class = CAMZoomButton;
  [(CAMZoomButton *)&v7 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    [(CAMZoomButton *)self _highlightingTransformForHighlighted:highlightedCopy];
    v6[0] = v6[3];
    v6[1] = v6[4];
    v6[2] = v6[5];
    [(CAMZoomButton *)self _setHighlightingTransform:v6];
    [(CAMZoomButton *)self _performHighlightAnimation];
  }
}

- (CGAffineTransform)_highlightingTransformForHighlighted:(SEL)highlighted
{
  v4 = 0.85;
  if (!a4)
  {
    v4 = 1.0;
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return CGAffineTransformMakeScale(retstr, v4, v4);
}

- (CGAffineTransform)_transformForEnlargeText:(SEL)text orientation:(BOOL)orientation
{
  v7 = 1.3;
  memset(&v12.c, 0, 32);
  if (!orientation)
  {
    v7 = 1.0;
  }

  *&v12.a = 0uLL;
  CGAffineTransformMakeScale(&v12, v7, v7);
  memset(&v11, 0, sizeof(v11));
  CAMOrientationTransform([(CAMZoomButton *)self orientation], &v11);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  t1 = v11;
  v9 = v12;
  return CGAffineTransformConcat(retstr, &t1, &v9);
}

- (void)_updateBackgroundEffectContainerViewAlpha
{
  _backgroundEffectContainerView = [(CAMZoomButton *)self _backgroundEffectContainerView];

  if (_backgroundEffectContainerView)
  {
    if ([(CAMZoomButton *)self shouldHideBackground])
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }

    _backgroundEffectContainerView2 = [(CAMZoomButton *)self _backgroundEffectContainerView];
    [_backgroundEffectContainerView2 setAlpha:v4];
  }
}

- (void)_performHighlightAnimation
{
  isHighlighted = [(CAMZoomButton *)self isHighlighted];
  v4 = 0.1;
  if (isHighlighted)
  {
    v5 = 131078;
  }

  else
  {
    v4 = 0.25;
    v5 = 6;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __43__CAMZoomButton__performHighlightAnimation__block_invoke;
  v26[3] = &unk_1E76F77B0;
  v26[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 delay:v26 options:0 animations:v4 completion:0.0];
  UIAnimationDragCoefficient();
  v7 = v6;
  v8 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform"];
  [v8 setMass:0.8];
  [v8 setDamping:12.0 / v7];
  [v8 setStiffness:300.0 / (v7 * v7)];
  [v8 durationForEpsilon:0.01];
  [v8 setDuration:?];
  LODWORD(v9) = 1041865114;
  LODWORD(v10) = 0.5;
  LODWORD(v11) = 1.0;
  v12 = [MEMORY[0x1E69793D0] functionWithControlPoints:v9 :0.0 :v10 :v11];
  [v8 setTimingFunction:v12];

  _contentContainerView = [(CAMZoomButton *)self _contentContainerView];
  layer = [_contentContainerView layer];
  presentationLayer = [layer presentationLayer];
  v16 = [presentationLayer valueForKeyPath:@"transform"];
  [v8 setFromValue:v16];

  memset(&v25, 0, sizeof(v25));
  [(CAMZoomButton *)self _highlightingTransformForHighlighted:isHighlighted];
  memset(&v24, 0, sizeof(v24));
  v18 = v25;
  CATransform3DMakeAffineTransform(&v24, &v18);
  v20 = *&v24.m31;
  v21 = *&v24.m33;
  v22 = *&v24.m41;
  v23 = *&v24.m43;
  *&v18.a = *&v24.m11;
  *&v18.c = *&v24.m13;
  *&v18.tx = *&v24.m21;
  v19 = *&v24.m23;
  v17 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v18];
  [v8 setToValue:v17];

  [layer addAnimation:v8 forKey:@"highlightAnimation"];
  v20 = *&v24.m31;
  v21 = *&v24.m33;
  v22 = *&v24.m41;
  v23 = *&v24.m43;
  *&v18.a = *&v24.m11;
  *&v18.c = *&v24.m13;
  *&v18.tx = *&v24.m21;
  v19 = *&v24.m23;
  [layer setTransform:&v18];
}

+ (NSNumberFormatter)zoomFactorFormatter
{
  if (zoomFactorFormatter_onceToken != -1)
  {
    +[CAMZoomButton zoomFactorFormatter];
  }

  v3 = zoomFactorFormatter_sharedFormatter;

  return v3;
}

uint64_t __36__CAMZoomButton_zoomFactorFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = zoomFactorFormatter_sharedFormatter;
  zoomFactorFormatter_sharedFormatter = v0;

  [zoomFactorFormatter_sharedFormatter setGeneratesDecimalNumbers:1];
  [zoomFactorFormatter_sharedFormatter setNumberStyle:1];
  [zoomFactorFormatter_sharedFormatter setMinimumFractionDigits:0];
  [zoomFactorFormatter_sharedFormatter setMaximumFractionDigits:1];
  [zoomFactorFormatter_sharedFormatter setRoundingIncrement:&unk_1F16C8BD8];
  v2 = zoomFactorFormatter_sharedFormatter;

  return [v2 setRoundingMode:2];
}

- (void)_updateZoomFactorLabelIfNeeded
{
  if (![(CAMZoomButton *)self contentType])
  {
    _zoomFactorLabel = [(CAMZoomButton *)self _zoomFactorLabel];
    [(CAMZoomButton *)self zoomFactor];
    [_zoomFactorLabel setZoomFactor:?];
    [_zoomFactorLabel setShowZoomFactorSymbol:{-[CAMZoomButton showZoomFactorSymbol](self, "showZoomFactorSymbol")}];
  }
}

+ (id)textForZoomFactor:(double)factor showZoomFactorSymbol:(BOOL)symbol useLeadingZero:(BOOL)zero
{
  zeroCopy = zero;
  v8 = +[CAMZoomButton zoomFactorFormatter];
  v9 = v8;
  v10 = factor >= 1.0 || zeroCopy;
  [v8 setMinimumIntegerDigits:v10];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:factor];
  v12 = [v9 stringFromNumber:v11];

  if (symbol)
  {
    v13 = CAMLocalizedFrameworkString(@"ZOOM_FACTOR_SYMBOL", @"The multiplication symbol used for indicating zoom factor.");
    v14 = CAMLocalizedFrameworkString(@"ZOOM_FACTOR_TEXT", 0);
    v15 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@%@" error:0, v12, v13];
  }

  else
  {
    v15 = v12;
  }

  return v15;
}

- (void)setEnlargeText:(BOOL)text
{
  if (self->_enlargeText != text)
  {
    self->_enlargeText = text;
    [(CAMZoomButton *)self _updateZoomFactorLabelIfNeeded];

    [(CAMZoomButton *)self setNeedsLayout];
  }
}

- (void)setShowZoomFactorSymbol:(BOOL)symbol
{
  if (self->_showZoomFactorSymbol != symbol)
  {
    self->_showZoomFactorSymbol = symbol;
    [(CAMZoomButton *)self _updateZoomFactorLabelIfNeeded];

    [(CAMZoomButton *)self setNeedsLayout];
  }
}

- (void)setUseLeadingZero:(BOOL)zero
{
  zeroCopy = zero;
  _zoomFactorLabel = [(CAMZoomButton *)self _zoomFactorLabel];
  [_zoomFactorLabel setUseLeadingZero:zeroCopy];
}

- (BOOL)useLeadingZero
{
  _zoomFactorLabel = [(CAMZoomButton *)self _zoomFactorLabel];
  useLeadingZero = [_zoomFactorLabel useLeadingZero];

  return useLeadingZero;
}

- (void)setTextShadowStrength:(int64_t)strength
{
  _zoomFactorLabel = [(CAMZoomButton *)self _zoomFactorLabel];
  [_zoomFactorLabel setShadowStrength:strength];
}

- (int64_t)textShadowStrength
{
  _zoomFactorLabel = [(CAMZoomButton *)self _zoomFactorLabel];
  shadowStrength = [_zoomFactorLabel shadowStrength];

  return shadowStrength;
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    v8[7] = v4;
    v8[8] = v5;
    animatedCopy = animated;
    self->_orientation = orientation;
    [(CAMZoomButton *)self setNeedsLayout];
    if (animatedCopy)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __41__CAMZoomButton_setOrientation_animated___block_invoke;
      v8[3] = &unk_1E76F77B0;
      v8[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v8 options:0 animations:0.3 completion:0.0];
    }
  }
}

+ (BOOL)shouldUseLargeButtonSizeForContentSize:(id)size
{
  sizeCopy = size;
  if ([sizeCopy isEqualToString:*MEMORY[0x1E69DDC68]] & 1) != 0 || (objc_msgSend(sizeCopy, "isEqualToString:", *MEMORY[0x1E69DDC88]) & 1) != 0 || (objc_msgSend(sizeCopy, "isEqualToString:", *MEMORY[0x1E69DDC78]) & 1) != 0 || (objc_msgSend(sizeCopy, "isEqualToString:", *MEMORY[0x1E69DDC70]))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [sizeCopy isEqualToString:*MEMORY[0x1E69DDC60]] ^ 1;
  }

  return v4;
}

- (UIEdgeInsets)tappableEdgeInsets
{
  top = self->_tappableEdgeInsets.top;
  left = self->_tappableEdgeInsets.left;
  bottom = self->_tappableEdgeInsets.bottom;
  right = self->_tappableEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGAffineTransform)highlightingTransform
{
  v3 = *&self[13].b;
  *&retstr->a = *&self[12].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[13].d;
  return self;
}

@end