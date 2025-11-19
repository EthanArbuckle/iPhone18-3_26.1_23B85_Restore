@interface CAMControlStatusIndicator
+ (NSNumberFormatter)decimalFormatter;
+ (NSNumberFormatter)integerFormatter;
+ (id)_createStretchableCircleImageFilled:(BOOL)a3 scale:(double)a4;
+ (id)stretchableCircleImageFilled:(BOOL)a3 scale:(double)a4;
- (CAMControlStatusIndicator)initWithFrame:(CGRect)a3;
- (CAMControlStatusIndicatorDelegate)delegate;
- (CGSize)_valueLabelSize;
- (CGSize)intrinsicContentSize;
- (CGVector)imageOffset;
- (id)hudItemForAccessibilityHUDManager:(id)a3;
- (id)imageForAXHUD;
- (id)imageForCurrentState;
- (id)imageNameForCurrentState;
- (id)valueText;
- (void)_updateImageOrientationAnimated:(BOOL)a3;
- (void)_updateSlashAnimated:(BOOL)a3;
- (void)_updateValueLabelVisibilityAnimated:(BOOL)a3;
- (void)_updateValueText;
- (void)layoutSubviews;
- (void)setNeedsUpdateValueText;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setShowingValue:(BOOL)a3 animated:(BOOL)a4;
- (void)updateImageAnimated:(BOOL)a3;
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

+ (id)stretchableCircleImageFilled:(BOOL)a3 scale:(double)a4
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v7 = @"NO";
  if (v5)
  {
    v7 = @"YES";
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"filled=%@ scale=%f", v7, *&a4];
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
    v10 = [a1 _createStretchableCircleImageFilled:v5 scale:a4];
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

+ (id)_createStretchableCircleImageFilled:(BOOL)a3 scale:(double)a4
{
  v5 = a3;
  v6 = 3.0 / a4 * 0.5;
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
  UIGraphicsBeginImageContextWithOptions(v25.origin, 0, a4);
  CurrentContext = UIGraphicsGetCurrentContext();
  v13 = [MEMORY[0x1E69DC888] whiteColor];
  [v13 setFill];

  v14 = [MEMORY[0x1E69DC888] whiteColor];
  [v14 setStroke];

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  if (v5)
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

- (CAMControlStatusIndicator)initWithFrame:(CGRect)a3
{
  v27.receiver = self;
  v27.super_class = CAMControlStatusIndicator;
  v3 = [(CAMControlStatusIndicator *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

      v9 = [MEMORY[0x1E69DC888] whiteColor];
      [(CAMSlashView *)v5->__slashView setTintColor:v9];

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
      v16 = [(CAMControlStatusIndicator *)v5 traitCollection];
      [v16 displayScale];
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

      v22 = [MEMORY[0x1E69DC888] whiteColor];
      [(UILabel *)v5->__valueLabel setTextColor:v22];

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
  v11 = [(CAMControlStatusIndicator *)self _imageView];
  v12 = [(CAMControlStatusIndicator *)self _outlineView];
  v13 = [(CAMControlStatusIndicator *)self _valueLabel];
  v14 = [(CAMControlStatusIndicator *)self _slashMaskContainer];
  [v14 setFrame:{v4, v6, v8, v10}];

  v51 = v6;
  v52 = v4;
  v49 = v10;
  v50 = v8;
  [(CAMControlStatusIndicator *)self alignmentRectForFrame:v4, v6, v8, v10];
  UIRectGetCenter();
  v15 = MEMORY[0x1E695EFF8];
  if (v11)
  {
    [(CAMControlStatusIndicator *)self imageOffset];
    if (v17 == 0.0 && v16 == 0.0 && [(CAMControlStatusIndicator *)self isShowingValue])
    {
      [(CAMControlStatusIndicator *)self _additionalWidthForValue];
    }

    v18 = *v15;
    v19 = v15[1];
    [v11 intrinsicContentSize];
    [v11 frameForAlignmentRect:{v18, v19, v20, v21}];
    v23 = v22;
    v25 = v24;
    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    [v11 setCenter:?];
    [v11 setBounds:{v18, v19, v23, v25}];
  }

  if (v12)
  {
    v26 = *v15;
    v27 = v15[1];
    [(CAMControlStatusIndicator *)self intrinsicContentSize];
    v29 = v28;
    v31 = v30;
    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    [v12 setCenter:?];
    [v12 setBounds:{v26, v27, v29, v31}];
  }

  if (v13)
  {
    v32 = *MEMORY[0x1E695F058];
    v33 = *(MEMORY[0x1E695F058] + 8);
    [(CAMControlStatusIndicator *)self _valueLabelSize];
    v48 = v34;
    v47 = v35;
    UIRectCenteredYInRectScale();
    if ([(CAMControlStatusIndicator *)self isShowingValue])
    {
      [v12 frame];
      CGRectGetMaxX(v54);
      [(CAMControlStatusIndicator *)self _additionalWidthForValue];
    }

    else
    {
      v46 = 0;
      UIRectCenteredXInRectScale();
    }

    UIRectGetCenter();
    [v13 setCenter:?];
    [v13 setBounds:{v32, v33, v48, v47}];
  }

  if ([(CAMControlStatusIndicator *)self shouldUseSlash])
  {
    if (v11)
    {
      [v11 frame];
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
    v44 = [(CAMControlStatusIndicator *)self _slashView];
    [v44 setFrame:{v37, v39, v41, v43}];

    v45 = [(CAMControlStatusIndicator *)self _slashMaskView];
    [v45 setFrame:{v52, v51, v50, v49}];

    [(CAMControlStatusIndicator *)self _updateSlashAnimated:0];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(CAMControlStatusIndicator *)self _outlineView];
  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;
  v8 = [(CAMControlStatusIndicator *)self _imageView];
  v9 = [v8 image];
  [v9 size];
  v11 = v10;
  v13 = v12;

  if (!v3)
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

- (void)updateImageAnimated:(BOOL)a3
{
  v3 = a3;
  v27 = [(CAMControlStatusIndicator *)self imageForCurrentState];
  if (v27)
  {
    v5 = [(CAMControlStatusIndicator *)self _imageView];
    v6 = [(CAMControlStatusIndicator *)self _outlineView];
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      v7 = [(CAMControlStatusIndicator *)self _slashMaskContainer];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = self;
      }

      v10 = v9;

      [(CAMControlStatusIndicator *)v10 addSubview:v5];
      [(CAMControlStatusIndicator *)self set_imageView:v5];
    }

    [v5 setImage:v27];
    [(CAMControlStatusIndicator *)self setNeedsLayout];
    v11 = [(CAMControlStatusIndicator *)self shouldUseActiveTintForCurrentState];
    v12 = [MEMORY[0x1E69DC888] systemYellowColor];
    v13 = v12;
    if (v11)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x1E69DC888] whiteColor];
    }

    v15 = v14;
    if (v6)
    {
      v26 = v3;
      v16 = [(CAMControlStatusIndicator *)self shouldFillOutlineForCurrentState];
      v17 = [(CAMControlStatusIndicator *)self shouldShowOutlineForCurrentState];
      v18 = objc_opt_class();
      v19 = [(CAMControlStatusIndicator *)self traitCollection];
      [v19 displayScale];
      v20 = [v18 stretchableCircleImageFilled:v16 scale:?];
      [v6 setImage:v20];

      if (v11)
      {
        [v6 setTintColor:v13];
        v21 = 0x1E69DC000;
      }

      else
      {
        v21 = 0x1E69DC000uLL;
        v22 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.6];
        [v6 setTintColor:v22];
      }

      v23 = 0.0;
      if (v17)
      {
        v23 = 1.0;
      }

      [v6 setAlpha:v23];
      if (v16 && v17)
      {
        v24 = [*(v21 + 2184) blackColor];

        v15 = v24;
      }

      v3 = v26;
    }

    [v5 setTintColor:v15];
    v25 = [(CAMControlStatusIndicator *)self _valueLabel];
    [v25 setTextColor:v15];
  }

  if ([(CAMControlStatusIndicator *)self shouldUseSlash])
  {
    [(CAMControlStatusIndicator *)self _updateSlashAnimated:v3];
  }
}

- (id)imageForCurrentState
{
  v3 = [(CAMControlStatusIndicator *)self imageNameForCurrentState];
  if (v3)
  {
    v4 = [(CAMControlStatusIndicator *)self customPointSizeForImageSymbol];
    if (v4)
    {
      v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:v4];
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
    v9 = [(CAMControlStatusIndicator *)self imageSymbolColorConfiguration];
    if (v9)
    {
      v10 = [v8 configurationByApplyingConfiguration:v9];

      v8 = v10;
    }

    v11 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v3 withConfiguration:v8];
    v12 = v11;
    if (v11)
    {
      v6 = v11;
    }

    else
    {
      v13 = MEMORY[0x1E69DCAB8];
      v14 = CAMCameraUIFrameworkBundle();
      v15 = [v13 imageNamed:v3 inBundle:v14];
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
  v3 = [(CAMControlStatusIndicator *)self imageNameForAXHUD];
  v4 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v5 = [(CAMControlStatusIndicator *)self traitCollection];
  v6 = [v4 configurationWithTraitCollection:v5];

  v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v3 withConfiguration:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = MEMORY[0x1E69DCAB8];
    v11 = CAMCameraUIFrameworkBundle();
    v9 = [v10 imageNamed:v3 inBundle:v11];
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
  v13 = [(CAMControlStatusIndicator *)self valueText];
  v3 = [(CAMControlStatusIndicator *)self _valueLabel];
  [v3 setText:v13];
  [v3 intrinsicContentSize];
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
      v11 = [(CAMControlStatusIndicator *)self delegate];
      [v11 controlStatusIndicatorDidChangeIntrinsicContentSize:self animated:1];

      v12 = [(CAMControlStatusIndicator *)self _slashMaskView];
      [v12 updateMaskAnimated];
    }
  }
}

- (void)_updateValueLabelVisibilityAnimated:(BOOL)a3
{
  v3 = 0.0;
  if (a3)
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

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    [(CAMControlStatusIndicator *)self _updateImageOrientationAnimated:a4];
  }
}

- (void)_updateImageOrientationAnimated:(BOOL)a3
{
  v3 = a3;
  if (([(CAMControlStatusIndicator *)self orientation]- 1) > 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(CAMControlStatusIndicator *)self orientation];
  }

  v6 = [(CAMControlStatusIndicator *)self _valueLabel];
  [CAMView rotateView:v6 toInterfaceOrientation:v5 animated:0];

  if (![(CAMControlStatusIndicator *)self isShowingValue])
  {
    v5 = [(CAMControlStatusIndicator *)self orientation];
  }

  v7 = [(CAMControlStatusIndicator *)self _imageView];
  [CAMView rotateView:v7 toInterfaceOrientation:v5 animated:v3];

  v8 = [(CAMControlStatusIndicator *)self _slashView];
  [CAMView rotateView:v8 toInterfaceOrientation:v5 animated:v3];

  v9 = [(CAMControlStatusIndicator *)self _slashMaskView];
  [CAMView rotateView:v9 toInterfaceOrientation:v5 animated:v3];
}

- (void)setShowingValue:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showingValue != a3)
  {
    v4 = a4;
    v5 = a3;
    v7 = [(CAMControlStatusIndicator *)self _valueLabel];

    if (v7)
    {
      if (v4)
      {
        [(CAMControlStatusIndicator *)self layoutIfNeeded];
      }

      if (v5 && [(CAMControlStatusIndicator *)self _needsUpdateValueText])
      {
        [(CAMControlStatusIndicator *)self _updateValueText];
      }

      self->_showingValue = v5;
      [(CAMControlStatusIndicator *)self setNeedsLayout];
      [(CAMControlStatusIndicator *)self _updateImageOrientationAnimated:v4];
      [(CAMControlStatusIndicator *)self _updateValueLabelVisibilityAnimated:v4];
      v8 = [(CAMControlStatusIndicator *)self delegate];
      [v8 controlStatusIndicatorDidChangeIntrinsicContentSize:self animated:v4];

      if (v4)
      {
        v9 = [(CAMControlStatusIndicator *)self _slashMaskView];
        [v9 updateMaskAnimated];
      }
    }
  }
}

- (void)_updateSlashAnimated:(BOOL)a3
{
  v3 = a3;
  v7 = [(CAMControlStatusIndicator *)self _slashView];
  v5 = [(CAMControlStatusIndicator *)self _slashMaskView];
  v6 = [(CAMControlStatusIndicator *)self shouldShowSlashForCurrentState];
  [v7 bounds];
  [v5 convertRect:v7 fromView:?];
  [v5 setSlashBounds:v3 animated:?];
  [v7 setVisible:v6 animated:v3];
}

- (id)hudItemForAccessibilityHUDManager:(id)a3
{
  v4 = [(CAMControlStatusIndicator *)self imageForAXHUD];
  if ([(CAMControlStatusIndicator *)self canShowValue]&& [(CAMControlStatusIndicator *)self isShowingValue])
  {
    v5 = [(CAMControlStatusIndicator *)self valueText];
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc(MEMORY[0x1E69DC618]);
  v7 = [v6 initWithTitle:v5 image:v4 imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

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