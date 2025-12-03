@interface CAMControlStatusIndicator
+ (NSNumberFormatter)decimalFormatter;
+ (NSNumberFormatter)integerFormatter;
+ (id)_createStretchableCircleImageFilled:(BOOL)filled scale:(double)scale;
+ (id)stretchableCircleImageFilled:(BOOL)filled scale:(double)scale;
- (CAMControlStatusIndicator)initWithFrame:(CGRect)frame;
- (CAMControlStatusIndicatorDelegate)delegate;
- (CGSize)_valueLabelSize;
- (CGSize)intrinsicContentSize;
- (CGVector)imageOffset;
- (id)hudItemForAccessibilityHUDManager:(id)manager;
- (id)imageForAXHUD;
- (id)imageForCurrentState;
- (id)imageNameForCurrentState;
- (id)valueText;
- (void)_updateImageOrientationAnimated:(BOOL)animated;
- (void)_updateSlashAnimated:(BOOL)animated;
- (void)_updateValueLabelVisibilityAnimated:(BOOL)animated;
- (void)_updateValueText;
- (void)layoutSubviews;
- (void)setNeedsUpdateValueText;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setShowingValue:(BOOL)value animated:(BOOL)animated;
- (void)updateImageAnimated:(BOOL)animated;
@end

@implementation CAMControlStatusIndicator

+ (NSNumberFormatter)decimalFormatter
{
  if (decimalFormatter_onceToken != -1)
  {
    +[CAMControlStatusIndicator decimalFormatter];
  }

  v3 = decimalFormatter___decimalFormatter;

  return v3;
}

void __45__CAMControlStatusIndicator_decimalFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = decimalFormatter___decimalFormatter;
  decimalFormatter___decimalFormatter = v0;

  [decimalFormatter___decimalFormatter setPositiveFormat:@"0.0"];
  v2 = [decimalFormatter___decimalFormatter stringFromNumber:&unk_1F16C8AE8];
  v3 = [v2 isEqualToString:{@"4, 5"}];

  if (v3)
  {
    v4 = decimalFormatter___decimalFormatter;

    [v4 setDecimalSeparator:@"."];
  }
}

+ (NSNumberFormatter)integerFormatter
{
  if (integerFormatter_onceToken != -1)
  {
    +[CAMControlStatusIndicator integerFormatter];
  }

  v3 = integerFormatter___integerFormatter;

  return v3;
}

uint64_t __45__CAMControlStatusIndicator_integerFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = integerFormatter___integerFormatter;
  integerFormatter___integerFormatter = v0;

  v2 = integerFormatter___integerFormatter;

  return [v2 setPositiveFormat:@"0"];
}

+ (id)stretchableCircleImageFilled:(BOOL)filled scale:(double)scale
{
  filledCopy = filled;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v7 = @"NO";
  if (filledCopy)
  {
    v7 = @"YES";
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"filled=%@ scale=%f", v7, *&scale];
  if (stretchableCircleImageFilled_scale__onceToken != -1)
  {
    +[CAMControlStatusIndicator stretchableCircleImageFilled:scale:];
  }

  v9 = [stretchableCircleImageFilled_scale__cachedCircleImages objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [stretchableCircleImageFilled_scale__cachedCircleImages objectForKeyedSubscript:v8];
  }

  else
  {
    v10 = [self _createStretchableCircleImageFilled:filledCopy scale:scale];
    [stretchableCircleImageFilled_scale__cachedCircleImages setObject:v10 forKeyedSubscript:v8];
  }

  return v10;
}

uint64_t __64__CAMControlStatusIndicator_stretchableCircleImageFilled_scale___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = stretchableCircleImageFilled_scale__cachedCircleImages;
  stretchableCircleImageFilled_scale__cachedCircleImages = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_createStretchableCircleImageFilled:(BOOL)filled scale:(double)scale
{
  filledCopy = filled;
  v6 = 3.0 / scale * 0.5;
  v7 = v6 * 2.0 + 24.0;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v7;
  v24.size.height = v7;
  v25 = CGRectInset(v24, v6, v6);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v25.origin.x = v7;
  v25.origin.y = v7;
  UIGraphicsBeginImageContextWithOptions(v25.origin, 0, scale);
  CurrentContext = UIGraphicsGetCurrentContext();
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [whiteColor setFill];

  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  [whiteColor2 setStroke];

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  if (filledCopy)
  {
    CGContextFillEllipseInRect(CurrentContext, *&v15);
  }

  else
  {
    CGContextStrokeEllipseInRect(CurrentContext, *&v15);
  }

  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v20 = [v19 resizableImageWithCapInsets:{0.0, v7 * 0.5, 0.0, v7 * 0.5}];

  v21 = [v20 imageWithRenderingMode:2];

  return v21;
}

- (CAMControlStatusIndicator)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = CAMControlStatusIndicator;
  v3 = [(CAMControlStatusIndicator *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = v5;
    if ([(CAMControlStatusIndicator *)v5 shouldUseSlash])
    {
      v7 = objc_alloc_init(CAMSlashView);
      slashView = v5->__slashView;
      v5->__slashView = v7;

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(CAMSlashView *)v5->__slashView setTintColor:whiteColor];

      [(CAMControlStatusIndicator *)v5 addSubview:v5->__slashView];
      v10 = objc_alloc_init(CAMSlashMaskView);
      slashMaskView = v5->__slashMaskView;
      v5->__slashMaskView = v10;

      v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
      slashMaskContainer = v5->__slashMaskContainer;
      v5->__slashMaskContainer = v12;

      [(UIView *)v5->__slashMaskContainer setUserInteractionEnabled:0];
      [(CAMControlStatusIndicator *)v5 addSubview:v5->__slashMaskContainer];
      v6 = v5->__slashMaskContainer;
    }

    if ([(CAMControlStatusIndicator *)v5 shouldUseOutline])
    {
      v14 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v15 = objc_opt_class();
      traitCollection = [(CAMControlStatusIndicator *)v5 traitCollection];
      [traitCollection displayScale];
      v17 = [v15 stretchableCircleImageFilled:0 scale:?];
      v18 = [v14 initWithImage:v17];
      outlineView = v5->__outlineView;
      v5->__outlineView = v18;

      [(CAMControlStatusIndicator *)v6 addSubview:v5->__outlineView];
    }

    if ([(CAMControlStatusIndicator *)v5 canShowValue])
    {
      v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      valueLabel = v5->__valueLabel;
      v5->__valueLabel = v20;

      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
      [(UILabel *)v5->__valueLabel setTextColor:whiteColor2];

      v23 = +[CAMCaptureCapabilities capabilities];
      [v23 sfCameraFontSupported];

      v24 = CEKMonospacedStylisticNumeralFontOfSizeAndStyle();
      [(UILabel *)v5->__valueLabel setFont:v24];

      [(CAMControlStatusIndicator *)v6 addSubview:v5->__valueLabel];
      [(CAMControlStatusIndicator *)v5 _updateValueLabelVisibilityAnimated:0];
      [(CAMControlStatusIndicator *)v5 _setNeedsUpdateValueText:1];
    }

    if (v5->__slashMaskView)
    {
      v25 = v5->__slashMaskContainer;
      if (v25)
      {
        [(UIView *)v25 setMaskView:?];
      }
    }

    [(CAMControlStatusIndicator *)v5 updateImage];
    [(CAMControlStatusIndicator *)v5 setExclusiveTouch:1];
  }

  return v4;
}

- (void)layoutSubviews
{
  v53.receiver = self;
  v53.super_class = CAMControlStatusIndicator;
  [(CAMControlStatusIndicator *)&v53 layoutSubviews];
  [(CAMControlStatusIndicator *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _imageView = [(CAMControlStatusIndicator *)self _imageView];
  _outlineView = [(CAMControlStatusIndicator *)self _outlineView];
  _valueLabel = [(CAMControlStatusIndicator *)self _valueLabel];
  _slashMaskContainer = [(CAMControlStatusIndicator *)self _slashMaskContainer];
  [_slashMaskContainer setFrame:{v4, v6, v8, v10}];

  v51 = v6;
  v52 = v4;
  v49 = v10;
  v50 = v8;
  [(CAMControlStatusIndicator *)self alignmentRectForFrame:v4, v6, v8, v10];
  UIRectGetCenter();
  v15 = MEMORY[0x1E695EFF8];
  if (_imageView)
  {
    [(CAMControlStatusIndicator *)self imageOffset];
    if (v17 == 0.0 && v16 == 0.0 && [(CAMControlStatusIndicator *)self isShowingValue])
    {
      [(CAMControlStatusIndicator *)self _additionalWidthForValue];
    }

    v18 = *v15;
    v19 = v15[1];
    [_imageView intrinsicContentSize];
    [_imageView frameForAlignmentRect:{v18, v19, v20, v21}];
    v23 = v22;
    v25 = v24;
    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    [_imageView setCenter:?];
    [_imageView setBounds:{v18, v19, v23, v25}];
  }

  if (_outlineView)
  {
    v26 = *v15;
    v27 = v15[1];
    [(CAMControlStatusIndicator *)self intrinsicContentSize];
    v29 = v28;
    v31 = v30;
    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    [_outlineView setCenter:?];
    [_outlineView setBounds:{v26, v27, v29, v31}];
  }

  if (_valueLabel)
  {
    v32 = *MEMORY[0x1E695F058];
    v33 = *(MEMORY[0x1E695F058] + 8);
    [(CAMControlStatusIndicator *)self _valueLabelSize];
    v48 = v34;
    v47 = v35;
    UIRectCenteredYInRectScale();
    if ([(CAMControlStatusIndicator *)self isShowingValue])
    {
      [_outlineView frame];
      CGRectGetMaxX(v54);
      [(CAMControlStatusIndicator *)self _additionalWidthForValue];
    }

    else
    {
      v46 = 0;
      UIRectCenteredXInRectScale();
    }

    UIRectGetCenter();
    [_valueLabel setCenter:?];
    [_valueLabel setBounds:{v32, v33, v48, v47}];
  }

  if ([(CAMControlStatusIndicator *)self shouldUseSlash])
  {
    if (_imageView)
    {
      [_imageView frame];
    }

    else
    {
      [(CAMControlStatusIndicator *)self bounds];
    }

    UIRectCenteredIntegralRectScale();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    _slashView = [(CAMControlStatusIndicator *)self _slashView];
    [_slashView setFrame:{v37, v39, v41, v43}];

    _slashMaskView = [(CAMControlStatusIndicator *)self _slashMaskView];
    [_slashMaskView setFrame:{v52, v51, v50, v49}];

    [(CAMControlStatusIndicator *)self _updateSlashAnimated:0];
  }
}

- (CGSize)intrinsicContentSize
{
  _outlineView = [(CAMControlStatusIndicator *)self _outlineView];
  [_outlineView intrinsicContentSize];
  v5 = v4;
  v7 = v6;
  _imageView = [(CAMControlStatusIndicator *)self _imageView];
  image = [_imageView image];
  [image size];
  v11 = v10;
  v13 = v12;

  if (!_outlineView)
  {
    v7 = v13;
    v5 = v11;
  }

  if ([(CAMControlStatusIndicator *)self isShowingValue])
  {
    [(CAMControlStatusIndicator *)self _additionalWidthForValue];
    v5 = v5 + v14;
  }

  v15 = v5;
  v16 = v7;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)updateImageAnimated:(BOOL)animated
{
  animatedCopy = animated;
  imageForCurrentState = [(CAMControlStatusIndicator *)self imageForCurrentState];
  if (imageForCurrentState)
  {
    _imageView = [(CAMControlStatusIndicator *)self _imageView];
    _outlineView = [(CAMControlStatusIndicator *)self _outlineView];
    if (!_imageView)
    {
      _imageView = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      _slashMaskContainer = [(CAMControlStatusIndicator *)self _slashMaskContainer];
      v8 = _slashMaskContainer;
      if (_slashMaskContainer)
      {
        selfCopy = _slashMaskContainer;
      }

      else
      {
        selfCopy = self;
      }

      v10 = selfCopy;

      [(CAMControlStatusIndicator *)v10 addSubview:_imageView];
      [(CAMControlStatusIndicator *)self set_imageView:_imageView];
    }

    [_imageView setImage:imageForCurrentState];
    [(CAMControlStatusIndicator *)self setNeedsLayout];
    shouldUseActiveTintForCurrentState = [(CAMControlStatusIndicator *)self shouldUseActiveTintForCurrentState];
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    v13 = systemYellowColor;
    if (shouldUseActiveTintForCurrentState)
    {
      whiteColor = systemYellowColor;
    }

    else
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    }

    v15 = whiteColor;
    if (_outlineView)
    {
      v26 = animatedCopy;
      shouldFillOutlineForCurrentState = [(CAMControlStatusIndicator *)self shouldFillOutlineForCurrentState];
      shouldShowOutlineForCurrentState = [(CAMControlStatusIndicator *)self shouldShowOutlineForCurrentState];
      v18 = objc_opt_class();
      traitCollection = [(CAMControlStatusIndicator *)self traitCollection];
      [traitCollection displayScale];
      v20 = [v18 stretchableCircleImageFilled:shouldFillOutlineForCurrentState scale:?];
      [_outlineView setImage:v20];

      if (shouldUseActiveTintForCurrentState)
      {
        [_outlineView setTintColor:v13];
        v21 = 0x1E69DC000;
      }

      else
      {
        v21 = 0x1E69DC000uLL;
        v22 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.6];
        [_outlineView setTintColor:v22];
      }

      v23 = 0.0;
      if (shouldShowOutlineForCurrentState)
      {
        v23 = 1.0;
      }

      [_outlineView setAlpha:v23];
      if (shouldFillOutlineForCurrentState && shouldShowOutlineForCurrentState)
      {
        blackColor = [*(v21 + 2184) blackColor];

        v15 = blackColor;
      }

      animatedCopy = v26;
    }

    [_imageView setTintColor:v15];
    _valueLabel = [(CAMControlStatusIndicator *)self _valueLabel];
    [_valueLabel setTextColor:v15];
  }

  if ([(CAMControlStatusIndicator *)self shouldUseSlash])
  {
    [(CAMControlStatusIndicator *)self _updateSlashAnimated:animatedCopy];
  }
}

- (id)imageForCurrentState
{
  imageNameForCurrentState = [(CAMControlStatusIndicator *)self imageNameForCurrentState];
  if (imageNameForCurrentState)
  {
    customPointSizeForImageSymbol = [(CAMControlStatusIndicator *)self customPointSizeForImageSymbol];
    if (customPointSizeForImageSymbol)
    {
      v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:customPointSizeForImageSymbol];
    }

    else
    {
      if ([(CAMControlStatusIndicator *)self shouldUseOutline])
      {
        v7 = 1;
      }

      else
      {
        v7 = 3;
      }

      v5 = [MEMORY[0x1E69DCAD8] configurationWithScale:v7];
    }

    v8 = v5;
    imageSymbolColorConfiguration = [(CAMControlStatusIndicator *)self imageSymbolColorConfiguration];
    if (imageSymbolColorConfiguration)
    {
      v10 = [v8 configurationByApplyingConfiguration:imageSymbolColorConfiguration];

      v8 = v10;
    }

    v11 = [MEMORY[0x1E69DCAB8] _systemImageNamed:imageNameForCurrentState withConfiguration:v8];
    v12 = v11;
    if (v11)
    {
      v6 = v11;
    }

    else
    {
      v13 = MEMORY[0x1E69DCAB8];
      v14 = CAMCameraUIFrameworkBundle();
      v15 = [v13 imageNamed:imageNameForCurrentState inBundle:v14];
      v6 = [v15 imageWithRenderingMode:2];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageNameForCurrentState
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D920];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"%@ must be implemented by subclasses", v4}];

  return 0;
}

- (id)imageForAXHUD
{
  imageNameForAXHUD = [(CAMControlStatusIndicator *)self imageNameForAXHUD];
  v4 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  traitCollection = [(CAMControlStatusIndicator *)self traitCollection];
  v6 = [v4 configurationWithTraitCollection:traitCollection];

  v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:imageNameForAXHUD withConfiguration:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = MEMORY[0x1E69DCAB8];
    v11 = CAMCameraUIFrameworkBundle();
    v9 = [v10 imageNamed:imageNameForAXHUD inBundle:v11];
  }

  return v9;
}

- (CGVector)imageOffset
{
  v2 = 0.0;
  v3 = 0.0;
  result.dy = v3;
  result.dx = v2;
  return result;
}

- (void)setNeedsUpdateValueText
{
  if ([(CAMControlStatusIndicator *)self isShowingValue])
  {

    [(CAMControlStatusIndicator *)self _updateValueText];
  }

  else
  {

    [(CAMControlStatusIndicator *)self _setNeedsUpdateValueText:1];
  }
}

- (id)valueText
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D920];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"%@ must be implemented by subclasses that return YES for canShowValue", v4}];

  return 0;
}

- (void)_updateValueText
{
  [(CAMControlStatusIndicator *)self _setNeedsUpdateValueText:0];
  valueText = [(CAMControlStatusIndicator *)self valueText];
  _valueLabel = [(CAMControlStatusIndicator *)self _valueLabel];
  [_valueLabel setText:valueText];
  [_valueLabel intrinsicContentSize];
  UICeilToViewScale();
  v5 = v4;
  UICeilToViewScale();
  v7 = v6;
  [(CAMControlStatusIndicator *)self _valueLabelSize];
  if (v9 != v5 || v8 != v7)
  {
    [(CAMControlStatusIndicator *)self _setValueLabelSize:v5, v7];
    if ([(CAMControlStatusIndicator *)self isShowingValue])
    {
      delegate = [(CAMControlStatusIndicator *)self delegate];
      [delegate controlStatusIndicatorDidChangeIntrinsicContentSize:self animated:1];

      _slashMaskView = [(CAMControlStatusIndicator *)self _slashMaskView];
      [_slashMaskView updateMaskAnimated];
    }
  }
}

- (void)_updateValueLabelVisibilityAnimated:(BOOL)animated
{
  v3 = 0.0;
  if (animated)
  {
    v3 = 0.25;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__CAMControlStatusIndicator__updateValueLabelVisibilityAnimated___block_invoke;
  v4[3] = &unk_1E76F77B0;
  v4[4] = self;
  [CAMView animateIfNeededWithDuration:v4 animations:v3];
}

void __65__CAMControlStatusIndicator__updateValueLabelVisibilityAnimated___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isShowingValue])
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) _valueLabel];
  [v3 setAlpha:v2];
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    [(CAMControlStatusIndicator *)self _updateImageOrientationAnimated:animated];
  }
}

- (void)_updateImageOrientationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (([(CAMControlStatusIndicator *)self orientation]- 1) > 1)
  {
    orientation = 1;
  }

  else
  {
    orientation = [(CAMControlStatusIndicator *)self orientation];
  }

  _valueLabel = [(CAMControlStatusIndicator *)self _valueLabel];
  [CAMView rotateView:_valueLabel toInterfaceOrientation:orientation animated:0];

  if (![(CAMControlStatusIndicator *)self isShowingValue])
  {
    orientation = [(CAMControlStatusIndicator *)self orientation];
  }

  _imageView = [(CAMControlStatusIndicator *)self _imageView];
  [CAMView rotateView:_imageView toInterfaceOrientation:orientation animated:animatedCopy];

  _slashView = [(CAMControlStatusIndicator *)self _slashView];
  [CAMView rotateView:_slashView toInterfaceOrientation:orientation animated:animatedCopy];

  _slashMaskView = [(CAMControlStatusIndicator *)self _slashMaskView];
  [CAMView rotateView:_slashMaskView toInterfaceOrientation:orientation animated:animatedCopy];
}

- (void)setShowingValue:(BOOL)value animated:(BOOL)animated
{
  if (self->_showingValue != value)
  {
    animatedCopy = animated;
    valueCopy = value;
    _valueLabel = [(CAMControlStatusIndicator *)self _valueLabel];

    if (_valueLabel)
    {
      if (animatedCopy)
      {
        [(CAMControlStatusIndicator *)self layoutIfNeeded];
      }

      if (valueCopy && [(CAMControlStatusIndicator *)self _needsUpdateValueText])
      {
        [(CAMControlStatusIndicator *)self _updateValueText];
      }

      self->_showingValue = valueCopy;
      [(CAMControlStatusIndicator *)self setNeedsLayout];
      [(CAMControlStatusIndicator *)self _updateImageOrientationAnimated:animatedCopy];
      [(CAMControlStatusIndicator *)self _updateValueLabelVisibilityAnimated:animatedCopy];
      delegate = [(CAMControlStatusIndicator *)self delegate];
      [delegate controlStatusIndicatorDidChangeIntrinsicContentSize:self animated:animatedCopy];

      if (animatedCopy)
      {
        _slashMaskView = [(CAMControlStatusIndicator *)self _slashMaskView];
        [_slashMaskView updateMaskAnimated];
      }
    }
  }
}

- (void)_updateSlashAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _slashView = [(CAMControlStatusIndicator *)self _slashView];
  _slashMaskView = [(CAMControlStatusIndicator *)self _slashMaskView];
  shouldShowSlashForCurrentState = [(CAMControlStatusIndicator *)self shouldShowSlashForCurrentState];
  [_slashView bounds];
  [_slashMaskView convertRect:_slashView fromView:?];
  [_slashMaskView setSlashBounds:animatedCopy animated:?];
  [_slashView setVisible:shouldShowSlashForCurrentState animated:animatedCopy];
}

- (id)hudItemForAccessibilityHUDManager:(id)manager
{
  imageForAXHUD = [(CAMControlStatusIndicator *)self imageForAXHUD];
  if ([(CAMControlStatusIndicator *)self canShowValue]&& [(CAMControlStatusIndicator *)self isShowingValue])
  {
    valueText = [(CAMControlStatusIndicator *)self valueText];
  }

  else
  {
    valueText = 0;
  }

  v6 = objc_alloc(MEMORY[0x1E69DC618]);
  v7 = [v6 initWithTitle:valueText image:imageForAXHUD imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v7;
}

- (CAMControlStatusIndicatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)_valueLabelSize
{
  width = self->__valueLabelSize.width;
  height = self->__valueLabelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end