@interface CAMHorizonLevelView
- (CAMHorizonLevelView)initWithViewModel:(id)model;
- (CAMHorizonLevelViewDelegate)delegate;
- (id)_createStrechableLineImage:(id)image lineHeight:(double)height shadowWidth:(double)width shadowHorizontalEdges:(unint64_t)edges;
- (void)_drawHorizonLineInContext:(CGContext *)context withBounds:(CGRect)bounds color:(id)color;
- (void)_layoutLineViewsWithMode:(int64_t)mode rotationAngle:(double)angle;
- (void)_updateSubViewsAlphaWithAlpha:(double)alpha indicatorMode:(int64_t)mode rotationAngle:(double)angle;
- (void)layoutSubviews;
- (void)observable:(id)observable didPublishChange:(unint64_t)change withContext:(void *)context;
@end

@implementation CAMHorizonLevelView

- (CAMHorizonLevelView)initWithViewModel:(id)model
{
  modelCopy = model;
  v29.receiver = self;
  v29.super_class = CAMHorizonLevelView;
  v6 = [(CAMHorizonLevelView *)&v29 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
    [(CAMObservable *)v7->_viewModel registerChangeObserver:v7 context:0];
    v8 = +[CAMCaptureCapabilities capabilities];
    allowHaptics = [v8 allowHaptics];

    if (allowHaptics)
    {
      v10 = +[CAMFeedbackController sharedController];
      feedbackController = v7->__feedbackController;
      v7->__feedbackController = v10;
    }

    [(CAMHorizonLevelView *)v7 _shadowWidth];
    v13 = v12;
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    v15 = [(CAMHorizonLevelView *)v7 _createStrechableLineImage:systemYellowColor lineHeight:2 shadowWidth:1.0 shadowHorizontalEdges:v13];

    systemYellowColor2 = [MEMORY[0x1E69DC888] systemYellowColor];
    v17 = [(CAMHorizonLevelView *)v7 _createStrechableLineImage:systemYellowColor2 lineHeight:8 shadowWidth:1.0 shadowHorizontalEdges:v13];

    systemYellowColor3 = [MEMORY[0x1E69DC888] systemYellowColor];
    v19 = [(CAMHorizonLevelView *)v7 _createStrechableLineImage:systemYellowColor3 lineHeight:0 shadowWidth:1.0 shadowHorizontalEdges:v13];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v21 = [(CAMHorizonLevelView *)v7 _createStrechableLineImage:whiteColor lineHeight:10 shadowWidth:1.0 shadowHorizontalEdges:v13];

    v22 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v21 highlightedImage:v19];
    horizonLineView = v7->__horizonLineView;
    v7->__horizonLineView = v22;

    v24 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v21 highlightedImage:v15];
    referenceLineLeft = v7->__referenceLineLeft;
    v7->__referenceLineLeft = v24;

    v26 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v21 highlightedImage:v17];
    referenceLineRight = v7->__referenceLineRight;
    v7->__referenceLineRight = v26;

    [(CAMHorizonLevelView *)v7 addSubview:v7->__horizonLineView];
    [(CAMHorizonLevelView *)v7 addSubview:v7->__referenceLineLeft];
    [(CAMHorizonLevelView *)v7 addSubview:v7->__referenceLineRight];
    [(CAMHorizonLevelView *)v7 setUserInteractionEnabled:0];
  }

  return v7;
}

- (void)_drawHorizonLineInContext:(CGContext *)context withBounds:(CGRect)bounds color:(id)color
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  CGContextSetFillColorWithColor(context, [color CGColor]);
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;

  CGContextFillRect(context, *&v10);
}

- (id)_createStrechableLineImage:(id)image lineHeight:(double)height shadowWidth:(double)width shadowHorizontalEdges:(unint64_t)edges
{
  edgesCopy = edges;
  imageCopy = image;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v13 = v12;

  v14 = 3.0;
  widthCopy = 0.0;
  if ((edgesCopy & 8) != 0)
  {
    widthCopy = width;
  }

  if ((edgesCopy & 2) != 0)
  {
    v14 = width + 3.0;
  }

  v16 = v14 + widthCopy;
  v17 = height + width + width;
  UIRectInsetEdges();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v33.width = v16;
  v33.height = v17;
  UIGraphicsBeginImageContextWithOptions(v33, 0, v13);
  v26 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.15];
  v27 = imageCopy;
  CurrentContext = UIGraphicsGetCurrentContext();
  [(CAMHorizonLevelView *)self _drawHorizonLineInContext:CurrentContext withBounds:v26 color:0.0, 0.0, v16, v17];
  [(CAMHorizonLevelView *)self _drawHorizonLineInContext:CurrentContext withBounds:v27 color:v19, v21, v23, v25];

  v29 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v30 = [v29 resizableImageWithCapInsets:{0.0, width + 1.0, 0.0, width + 1.0}];

  return v30;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = CAMHorizonLevelView;
  [(CAMHorizonLevelView *)&v16 layoutSubviews];
  viewModel = [(CAMHorizonLevelView *)self viewModel];
  currentIndicatorMode = [viewModel currentIndicatorMode];
  [viewModel currentIndicatorRotationAngle];
  v6 = v5;
  [(CAMHorizonLevelView *)self bounds];
  UIRectGetCenter();
  [(CAMHorizonLevelView *)self _shadowWidth];
  v8 = v7;
  v9 = v7 * 2.0 + 1.0;
  if (currentIndicatorMode >= 3)
  {
    if (currentIndicatorMode == 3)
    {
      [(CAMHorizonLevelView *)self bounds];
      CGRectGetHeight(v18);
    }
  }

  else
  {
    [(CAMHorizonLevelView *)self bounds];
    CGRectGetWidth(v17);
  }

  UIRoundToViewScale();
  v11 = v10;
  UIRoundToViewScale();
  v13 = v8 * 2.0 + 22.0;
  if (v6 == 0.0)
  {
    v14 = v12 + v13 * -2.0;
  }

  else
  {
    v14 = v11 + (2.0 - v8) * -2.0;
  }

  traitCollection = [(CAMHorizonLevelView *)self traitCollection];
  [traitCollection displayScale];

  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [(UIImageView *)self->__horizonLineView setCenter:?];
  [(UIImageView *)self->__horizonLineView setBounds:0.0, 0.0, v14, v9];
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [(UIImageView *)self->__referenceLineLeft setCenter:?];
  [(UIImageView *)self->__referenceLineLeft setBounds:0.0, 0.0, v13, v9];
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [(UIImageView *)self->__referenceLineRight setCenter:?];
  [(UIImageView *)self->__referenceLineRight setBounds:0.0, 0.0, v13, v9];
  if ((currentIndicatorMode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(CAMHorizonLevelView *)self _layoutLineViewsWithMode:currentIndicatorMode rotationAngle:v6];
  }

  [viewModel currentIndicatorAlpha];
  [CAMHorizonLevelView _updateSubViewsAlphaWithAlpha:"_updateSubViewsAlphaWithAlpha:indicatorMode:rotationAngle:" indicatorMode:currentIndicatorMode rotationAngle:?];
}

- (void)_layoutLineViewsWithMode:(int64_t)mode rotationAngle:(double)angle
{
  _horizonLineView = [(CAMHorizonLevelView *)self _horizonLineView];
  if (mode == 2)
  {
    CGAffineTransformMakeRotation(&v9, 0.0);
    v10 = v9;
    [(CAMHorizonLevelView *)self setTransform:&v10];
  }

  else if (mode == 3)
  {
    CGAffineTransformMakeRotation(&v11, 1.57079633);
    v10 = v11;
    [(CAMHorizonLevelView *)self setTransform:&v10];
    angle = -angle;
  }

  CGAffineTransformMakeRotation(&v8, angle);
  v10 = v8;
  [_horizonLineView setTransform:&v10];
}

- (void)_updateSubViewsAlphaWithAlpha:(double)alpha indicatorMode:(int64_t)mode rotationAngle:(double)angle
{
  if ((mode & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    alpha = 0.0;
  }

  _horizonLineView = [(CAMHorizonLevelView *)self _horizonLineView];
  [_horizonLineView setAlpha:alpha];

  _referenceLineLeft = [(CAMHorizonLevelView *)self _referenceLineLeft];
  [_referenceLineLeft setAlpha:alpha];

  _referenceLineRight = [(CAMHorizonLevelView *)self _referenceLineRight];
  [_referenceLineRight setAlpha:alpha];

  _horizonLineView2 = [(CAMHorizonLevelView *)self _horizonLineView];
  [_horizonLineView2 setHighlighted:angle == 0.0];

  _referenceLineLeft2 = [(CAMHorizonLevelView *)self _referenceLineLeft];
  [_referenceLineLeft2 setHighlighted:angle == 0.0];

  _referenceLineRight2 = [(CAMHorizonLevelView *)self _referenceLineRight];
  [_referenceLineRight2 setHighlighted:angle == 0.0];
}

- (void)observable:(id)observable didPublishChange:(unint64_t)change withContext:(void *)context
{
  if (context)
  {
    return;
  }

  changeCopy = change;
  observableCopy = observable;
  [observableCopy currentIndicatorAlpha];
  v9 = v8;
  currentIndicatorMode = [observableCopy currentIndicatorMode];
  [observableCopy currentIndicatorRotationAngle];
  v12 = v11;

  if ((changeCopy & 0x10) != 0)
  {
    if (fabs(v12) <= 0.08)
    {
      delegate = [(CAMHorizonLevelView *)self delegate];
      v14 = [delegate horizonLevelViewCanPlayHaptics:self];

      if (v14)
      {
        _feedbackController = [(CAMHorizonLevelView *)self _feedbackController];
        [_feedbackController prepareDiscreteFeedback:1];

        if (v12 == 0.0)
        {
          _feedbackController2 = [(CAMHorizonLevelView *)self _feedbackController];
          [_feedbackController2 performDiscreteFeedback:1];
        }
      }
    }

LABEL_10:
    [(CAMHorizonLevelView *)self setNeedsLayout];
    if ((changeCopy & 4) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  if (changeCopy)
  {
    goto LABEL_10;
  }

  if ((changeCopy & 4) == 0)
  {
    return;
  }

LABEL_11:

  [(CAMHorizonLevelView *)self _updateSubViewsAlphaWithAlpha:currentIndicatorMode indicatorMode:v9 rotationAngle:v12];
}

- (CAMHorizonLevelViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end