@interface CAMBurstIndicatorView
+ (id)_counterNumberFormatter;
- (CAMBurstIndicatorView)initWithCoder:(id)coder;
- (CAMBurstIndicatorView)initWithFrame:(CGRect)frame;
- (CAMBurstIndicatorView)initWithLayoutStyle:(int64_t)style;
- (CGSize)intrinsicContentSize;
- (int64_t)incrementWithCaptureAnimation:(BOOL)animation;
- (void)_commonCAMAvalancheIndicatorViewInitializationWithLayoutStyle:(int64_t)style;
- (void)_performCaptureAnimation;
- (void)_preferredContentSizeCategoryChanged;
- (void)_updateAttributes;
- (void)_updateCountLabelWithNumberOfPhotos;
- (void)finishIncrementingWithCompletionHandler:(id)handler;
- (void)layoutSubviews;
- (void)reset;
- (void)setLayoutStyle:(int64_t)style;
@end

@implementation CAMBurstIndicatorView

- (void)_updateCountLabelWithNumberOfPhotos
{
  _counterNumberFormatter = [objc_opt_class() _counterNumberFormatter];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->__numberOfPhotos];
  v4 = [_counterNumberFormatter stringFromNumber:v3];

  [(UILabel *)self->__countLabel setText:v4];
}

- (void)_updateAttributes
{
  [(CAMBurstIndicatorView *)self intrinsicContentSize];
  v4 = v3;
  layer = [(UIView *)self->__backgroundView layer];
  [layer setCornerRadius:floor(v4 * 0.5)];
  layoutStyle = [(CAMBurstIndicatorView *)self layoutStyle];
  if (layoutStyle != 3)
  {
    if (layoutStyle == 1)
    {
      v9 = 14.0;
      goto LABEL_6;
    }

    if (layoutStyle)
    {
      goto LABEL_7;
    }
  }

  traitCollection = [(CAMBurstIndicatorView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [CAMZoomButton fontSizeForContentSize:preferredContentSizeCategory];
  v9 = v8;

LABEL_6:
  countLabel = self->__countLabel;
  v11 = [CAMFont cameraMonospacedFontOfSize:v9];
  [(UILabel *)countLabel setFont:v11];

LABEL_7:
}

- (CGSize)intrinsicContentSize
{
  layoutStyle = [(CAMBurstIndicatorView *)self layoutStyle];
  if (layoutStyle != 3)
  {
    if (layoutStyle == 1)
    {
      v7 = 0x4046000000000000;
      goto LABEL_6;
    }

    if (layoutStyle)
    {
      v8 = *MEMORY[0x1E695F060];
      v7 = *(MEMORY[0x1E695F060] + 8);
      goto LABEL_8;
    }
  }

  traitCollection = [(CAMBurstIndicatorView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [CAMZoomButton circleDiameterForContentSize:preferredContentSizeCategory];
  v7 = v6;

LABEL_6:
  v8 = *&v7;
LABEL_8:
  v9 = *&v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = CAMBurstIndicatorView;
  [(CAMBurstIndicatorView *)&v11 layoutSubviews];
  [(CAMBurstIndicatorView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->__backgroundView setFrame:?];
  v12.origin.x = v4;
  v12.origin.y = v6;
  v12.size.width = v8;
  v12.size.height = v10;
  CGRectGetWidth(v12);
  v13.origin.x = v4;
  v13.origin.y = v6;
  v13.size.width = v8;
  v13.size.height = v10;
  CGRectGetHeight(v13);
  UIRectCenteredIntegralRectScale();
  [(UILabel *)self->__countLabel setFrame:0];
}

- (void)_commonCAMAvalancheIndicatorViewInitializationWithLayoutStyle:(int64_t)style
{
  v21[1] = *MEMORY[0x1E69E9840];
  self->_layoutStyle = style;
  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
  backgroundView = self->__backgroundView;
  self->__backgroundView = v9;

  v11 = self->__backgroundView;
  v12 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.300000012];
  [(UIView *)v11 setBackgroundColor:v12];

  [(CAMBurstIndicatorView *)self addSubview:self->__backgroundView];
  self->__numberOfPhotos = 0;
  v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
  countLabel = self->__countLabel;
  self->__countLabel = v13;

  v15 = self->__countLabel;
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)v15 setTextColor:whiteColor];

  [(UILabel *)self->__countLabel setTextAlignment:1];
  v17 = self->__countLabel;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v17 setBackgroundColor:clearColor];

  [(CAMBurstIndicatorView *)self addSubview:self->__countLabel];
  [(CAMBurstIndicatorView *)self _updateCountLabelWithNumberOfPhotos];
  [(CAMBurstIndicatorView *)self _updateAttributes];
  v21[0] = objc_opt_class();
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v20 = [(CAMBurstIndicatorView *)self registerForTraitChanges:v19 withAction:sel__preferredContentSizeCategoryChanged];
}

- (CAMBurstIndicatorView)initWithLayoutStyle:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = CAMBurstIndicatorView;
  v4 = [(CAMBurstIndicatorView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(CAMBurstIndicatorView *)v4 _commonCAMAvalancheIndicatorViewInitializationWithLayoutStyle:style];
    v6 = v5;
  }

  return v5;
}

- (CAMBurstIndicatorView)initWithFrame:(CGRect)frame
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  return [(CAMBurstIndicatorView *)self initWithLayoutStyle:cam_initialLayoutStyle];
}

- (CAMBurstIndicatorView)initWithCoder:(id)coder
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  return [(CAMBurstIndicatorView *)self initWithLayoutStyle:cam_initialLayoutStyle];
}

- (void)_preferredContentSizeCategoryChanged
{
  [(CAMBurstIndicatorView *)self _updateAttributes];

  [(CAMBurstIndicatorView *)self setNeedsLayout];
}

- (void)finishIncrementingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  layer = [(UIView *)self->__backgroundView layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer opacity];
  v8 = v7;

  v9 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  [v9 setFromValue:v10];

  v11 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
  [v9 setTimingFunction:v11];

  [v9 setDuration:0.19];
  v12 = objc_alloc_init(CAMAnimationDelegate);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__CAMBurstIndicatorView_finishIncrementingWithCompletionHandler___block_invoke;
  v14[3] = &unk_1E76F97A0;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(CAMAnimationDelegate *)v12 setCompletion:v14];
  [v9 setDelegate:v12];
  [CAMAnimationHelper configurePowerSensitiveAnimation:v9];
  [layer addAnimation:v9 forKey:@"opacity"];
}

uint64_t __65__CAMBurstIndicatorView_finishIncrementingWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (int64_t)incrementWithCaptureAnimation:(BOOL)animation
{
  numberOfPhotos = self->__numberOfPhotos;
  v5 = 998;
  if (numberOfPhotos < 998)
  {
    v5 = self->__numberOfPhotos;
  }

  v6 = v5 + 1;
  self->__numberOfPhotos = v6;
  if (numberOfPhotos != v6)
  {
    animationCopy = animation;
    [(CAMBurstIndicatorView *)self _updateCountLabelWithNumberOfPhotos];
    if (animationCopy)
    {
      [(CAMBurstIndicatorView *)self _performCaptureAnimation];
    }
  }

  return self->__numberOfPhotos;
}

- (void)reset
{
  layer = [(UIView *)self->__backgroundView layer];
  layer2 = [(UILabel *)self->__countLabel layer];
  [layer removeAllAnimations];
  [layer2 removeAllAnimations];
  self->__numberOfPhotos = 0;
  [(CAMBurstIndicatorView *)self _updateCountLabelWithNumberOfPhotos];
}

- (void)_performCaptureAnimation
{
  layer = [(UIView *)self->__backgroundView layer];
  v2 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v2 setToValue:&unk_1F16C8D38];
  v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v2 setTimingFunction:v3];

  [v2 setDuration:0.05];
  [v2 setAutoreverses:1];
  [CAMAnimationHelper configurePowerSensitiveAnimation:v2];
  [layer addAnimation:v2 forKey:@"opacity"];
}

+ (id)_counterNumberFormatter
{
  if (_counterNumberFormatter_onceToken != -1)
  {
    +[CAMBurstIndicatorView _counterNumberFormatter];
  }

  v3 = _counterNumberFormatter_formatter;

  return v3;
}

uint64_t __48__CAMBurstIndicatorView__counterNumberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _counterNumberFormatter_formatter;
  _counterNumberFormatter_formatter = v0;

  [_counterNumberFormatter_formatter setGeneratesDecimalNumbers:0];
  [_counterNumberFormatter_formatter setNumberStyle:0];
  v2 = _counterNumberFormatter_formatter;

  return [v2 setMinimumIntegerDigits:3];
}

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
    [(CAMBurstIndicatorView *)self _updateAttributes];

    [(CAMBurstIndicatorView *)self setNeedsLayout];
  }
}

@end