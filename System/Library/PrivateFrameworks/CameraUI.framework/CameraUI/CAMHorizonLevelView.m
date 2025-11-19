@interface CAMHorizonLevelView
- (CAMHorizonLevelView)initWithViewModel:(id)a3;
- (CAMHorizonLevelViewDelegate)delegate;
- (id)_createStrechableLineImage:(id)a3 lineHeight:(double)a4 shadowWidth:(double)a5 shadowHorizontalEdges:(unint64_t)a6;
- (void)_drawHorizonLineInContext:(CGContext *)a3 withBounds:(CGRect)a4 color:(id)a5;
- (void)_layoutLineViewsWithMode:(int64_t)a3 rotationAngle:(double)a4;
- (void)_updateSubViewsAlphaWithAlpha:(double)a3 indicatorMode:(int64_t)a4 rotationAngle:(double)a5;
- (void)layoutSubviews;
- (void)observable:(id)a3 didPublishChange:(unint64_t)a4 withContext:(void *)a5;
@end

@implementation CAMHorizonLevelView

- (CAMHorizonLevelView)initWithViewModel:(id)a3
{
  v5 = a3;
  v29.receiver = self;
  v29.super_class = CAMHorizonLevelView;
  v6 = [(CAMHorizonLevelView *)&v29 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
    [(CAMObservable *)v7->_viewModel registerChangeObserver:v7 context:0];
    v8 = +[CAMCaptureCapabilities capabilities];
    v9 = [v8 allowHaptics];

    if (v9)
    {
      v10 = +[CAMFeedbackController sharedController];
      feedbackController = v7->__feedbackController;
      v7->__feedbackController = v10;
    }

    [(CAMHorizonLevelView *)v7 _shadowWidth];
    v13 = v12;
    v14 = [MEMORY[0x1E69DC888] systemYellowColor];
    v15 = [(CAMHorizonLevelView *)v7 _createStrechableLineImage:v14 lineHeight:2 shadowWidth:1.0 shadowHorizontalEdges:v13];

    v16 = [MEMORY[0x1E69DC888] systemYellowColor];
    v17 = [(CAMHorizonLevelView *)v7 _createStrechableLineImage:v16 lineHeight:8 shadowWidth:1.0 shadowHorizontalEdges:v13];

    v18 = [MEMORY[0x1E69DC888] systemYellowColor];
    v19 = [(CAMHorizonLevelView *)v7 _createStrechableLineImage:v18 lineHeight:0 shadowWidth:1.0 shadowHorizontalEdges:v13];

    v20 = [MEMORY[0x1E69DC888] whiteColor];
    v21 = [(CAMHorizonLevelView *)v7 _createStrechableLineImage:v20 lineHeight:10 shadowWidth:1.0 shadowHorizontalEdges:v13];

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

- (void)_drawHorizonLineInContext:(CGContext *)a3 withBounds:(CGRect)a4 color:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  CGContextSetFillColorWithColor(a3, [a5 CGColor]);
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;

  CGContextFillRect(a3, *&v10);
}

- (id)_createStrechableLineImage:(id)a3 lineHeight:(double)a4 shadowWidth:(double)a5 shadowHorizontalEdges:(unint64_t)a6
{
  v6 = a6;
  v10 = a3;
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = 3.0;
  v15 = 0.0;
  if ((v6 & 8) != 0)
  {
    v15 = a5;
  }

  if ((v6 & 2) != 0)
  {
    v14 = a5 + 3.0;
  }

  v16 = v14 + v15;
  v17 = a4 + a5 + a5;
  UIRectInsetEdges();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v33.width = v16;
  v33.height = v17;
  UIGraphicsBeginImageContextWithOptions(v33, 0, v13);
  v26 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.15];
  v27 = v10;
  CurrentContext = UIGraphicsGetCurrentContext();
  [(CAMHorizonLevelView *)self _drawHorizonLineInContext:CurrentContext withBounds:v26 color:0.0, 0.0, v16, v17];
  [(CAMHorizonLevelView *)self _drawHorizonLineInContext:CurrentContext withBounds:v27 color:v19, v21, v23, v25];

  v29 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v30 = [v29 resizableImageWithCapInsets:{0.0, a5 + 1.0, 0.0, a5 + 1.0}];

  return v30;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = CAMHorizonLevelView;
  [(CAMHorizonLevelView *)&v16 layoutSubviews];
  v3 = [(CAMHorizonLevelView *)self viewModel];
  v4 = [v3 currentIndicatorMode];
  [v3 currentIndicatorRotationAngle];
  v6 = v5;
  [(CAMHorizonLevelView *)self bounds];
  UIRectGetCenter();
  [(CAMHorizonLevelView *)self _shadowWidth];
  v8 = v7;
  v9 = v7 * 2.0 + 1.0;
  if (v4 >= 3)
  {
    if (v4 == 3)
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

  v15 = [(CAMHorizonLevelView *)self traitCollection];
  [v15 displayScale];

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
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(CAMHorizonLevelView *)self _layoutLineViewsWithMode:v4 rotationAngle:v6];
  }

  [v3 currentIndicatorAlpha];
  [CAMHorizonLevelView _updateSubViewsAlphaWithAlpha:"_updateSubViewsAlphaWithAlpha:indicatorMode:rotationAngle:" indicatorMode:v4 rotationAngle:?];
}

- (void)_layoutLineViewsWithMode:(int64_t)a3 rotationAngle:(double)a4
{
  v7 = [(CAMHorizonLevelView *)self _horizonLineView];
  if (a3 == 2)
  {
    CGAffineTransformMakeRotation(&v9, 0.0);
    v10 = v9;
    [(CAMHorizonLevelView *)self setTransform:&v10];
  }

  else if (a3 == 3)
  {
    CGAffineTransformMakeRotation(&v11, 1.57079633);
    v10 = v11;
    [(CAMHorizonLevelView *)self setTransform:&v10];
    a4 = -a4;
  }

  CGAffineTransformMakeRotation(&v8, a4);
  v10 = v8;
  [v7 setTransform:&v10];
}

- (void)_updateSubViewsAlphaWithAlpha:(double)a3 indicatorMode:(int64_t)a4 rotationAngle:(double)a5
{
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    a3 = 0.0;
  }

  v8 = [(CAMHorizonLevelView *)self _horizonLineView];
  [v8 setAlpha:a3];

  v9 = [(CAMHorizonLevelView *)self _referenceLineLeft];
  [v9 setAlpha:a3];

  v10 = [(CAMHorizonLevelView *)self _referenceLineRight];
  [v10 setAlpha:a3];

  v11 = [(CAMHorizonLevelView *)self _horizonLineView];
  [v11 setHighlighted:a5 == 0.0];

  v12 = [(CAMHorizonLevelView *)self _referenceLineLeft];
  [v12 setHighlighted:a5 == 0.0];

  v13 = [(CAMHorizonLevelView *)self _referenceLineRight];
  [v13 setHighlighted:a5 == 0.0];
}

- (void)observable:(id)a3 didPublishChange:(unint64_t)a4 withContext:(void *)a5
{
  if (a5)
  {
    return;
  }

  v5 = a4;
  v7 = a3;
  [v7 currentIndicatorAlpha];
  v9 = v8;
  v10 = [v7 currentIndicatorMode];
  [v7 currentIndicatorRotationAngle];
  v12 = v11;

  if ((v5 & 0x10) != 0)
  {
    if (fabs(v12) <= 0.08)
    {
      v13 = [(CAMHorizonLevelView *)self delegate];
      v14 = [v13 horizonLevelViewCanPlayHaptics:self];

      if (v14)
      {
        v15 = [(CAMHorizonLevelView *)self _feedbackController];
        [v15 prepareDiscreteFeedback:1];

        if (v12 == 0.0)
        {
          v16 = [(CAMHorizonLevelView *)self _feedbackController];
          [v16 performDiscreteFeedback:1];
        }
      }
    }

LABEL_10:
    [(CAMHorizonLevelView *)self setNeedsLayout];
    if ((v5 & 4) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  if ((v5 & 4) == 0)
  {
    return;
  }

LABEL_11:

  [(CAMHorizonLevelView *)self _updateSubViewsAlphaWithAlpha:v10 indicatorMode:v9 rotationAngle:v12];
}

- (CAMHorizonLevelViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end