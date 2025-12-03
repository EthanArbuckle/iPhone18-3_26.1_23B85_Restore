@interface CAMGridView
- (CAMGridView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_drawLinesWithInset:(float)inset;
- (void)_getDeltasBetweenLines:(double *)lines widthDelta:(double *)delta;
- (void)_setAnimatorGridOffsetForViewModel:(id)model animated:(BOOL)animated;
- (void)drawRect:(CGRect)rect;
- (void)observable:(id)observable didPublishChange:(unint64_t)change withContext:(void *)context;
- (void)setLevelViewModel:(id)model;
@end

@implementation CAMGridView

- (CAMGridView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CAMGridView;
  v3 = [(CAMGridView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMGridView *)v3 setOpaque:0];
    [(CAMGridView *)v4 setContentMode:3];
    v5 = objc_alloc_init(MEMORY[0x1E6993808]);
    animator = v4->__animator;
    v4->__animator = v5;

    [(CEKAdditiveAnimator *)v4->__animator setDelegate:v4];
    [(CEKAdditiveAnimator *)v4->__animator setValue:@"CAMAnimatorGridHorizontalGapKey" forKey:0.0];
    [(CEKAdditiveAnimator *)v4->__animator setValue:@"CAMAnimatorGridVerticalGapKey" forKey:0.0];
  }

  return v4;
}

- (void)setLevelViewModel:(id)model
{
  modelCopy = model;
  levelViewModel = self->_levelViewModel;
  if (levelViewModel != modelCopy)
  {
    v7 = modelCopy;
    [(CAMObservable *)levelViewModel unregisterChangeObserver:self context:0];
    objc_storeStrong(&self->_levelViewModel, model);
    [(CAMObservable *)self->_levelViewModel registerChangeObserver:self context:0];
    levelViewModel = [(CAMGridView *)self _setAnimatorGridOffsetForViewModel:v7 animated:0];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](levelViewModel, modelCopy);
}

- (void)_getDeltasBetweenLines:(double *)lines widthDelta:(double *)delta
{
  [(CAMGridView *)self bounds];
  UIRoundToViewScale();
  v7 = v6;
  UIRoundToViewScale();
  *lines = v7;
  *delta = v8;
}

- (void)_setAnimatorGridOffsetForViewModel:(id)model animated:(BOOL)animated
{
  animatedCopy = animated;
  modelCopy = model;
  _animator = [(CAMGridView *)self _animator];
  HIDWORD(v10) = 1069757235;
  if (animatedCopy)
  {
    v11 = 0.15;
  }

  else
  {
    v11 = 0.0;
  }

  if (animatedCopy)
  {
    LODWORD(v10) = 1045220557;
    LODWORD(v8) = 1053609165;
    LODWORD(v9) = 1.0;
    LODWORD(v7) = 1045220557;
    v12 = [MEMORY[0x1E69793D0] functionWithControlPoints:v10 :v7 :v8 :v9];
  }

  else
  {
    v12 = 0;
  }

  [modelCopy currentIndicatorRotationAngle];
  v14 = v13;
  [modelCopy currentIndicatorAlpha];
  if (v15 > 0.0 && v14 == 0.0)
  {
    v17 = 5.0;
  }

  else
  {
    v17 = 0.0;
  }

  currentIndicatorMode = [modelCopy currentIndicatorMode];

  if (currentIndicatorMode == 2)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0.0;
  }

  if (currentIndicatorMode == 3)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0.0;
  }

  if (currentIndicatorMode == 3)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v19;
  }

  [_animator setValue:@"CAMAnimatorGridHorizontalGapKey" forKey:v12 duration:v20 timingCurve:v11];
  [_animator setValue:@"CAMAnimatorGridVerticalGapKey" forKey:v12 duration:v21 timingCurve:v11];
  if (!animatedCopy)
  {
    [(CAMGridView *)self setNeedsDisplay];
  }
}

- (void)_drawLinesWithInset:(float)inset
{
  [(CAMGridView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v41 = 0;
  v42 = 0;
  [(CAMGridView *)self _getDeltasBetweenLines:&v42 widthDelta:&v41];
  v38 = v12;
  v39 = v10;
  v36 = v8;
  v40 = v8 + 0.0;
  insetCopy = inset;
  v37 = v6;
  v14 = v6 + 0.0;
  v15 = 1;
  do
  {
    v16 = v15;
    UIRoundToViewScale();
    v18 = v17;
    UIRoundToViewScale();
    v20 = v19;
    _animator = [(CAMGridView *)self _animator];
    [_animator valueForKey:@"CAMAnimatorGridVerticalGapKey"];
    v23 = v22;

    _animator2 = [(CAMGridView *)self _animator];
    [_animator2 valueForKey:@"CAMAnimatorGridHorizontalGapKey"];
    v26 = v25;

    v27 = v40;
    v28 = v40;
    v29 = 0.0;
    if (v23 != 0.0)
    {
      UIRoundToViewScale();
      v27 = v40;
      v28 = v36 + v30;
      v29 = v30 + 0.0;
    }

    v31 = 0.0;
    v32 = v20 + 0.0;
    v33 = v38 - v29;
    v43.size.width = 1.0;
    v43.origin.x = v32;
    v43.origin.y = v27;
    v43.size.height = v33;
    v44 = CGRectInset(v43, insetCopy, 0.0);
    UIRectFill(v44);
    v45.size.width = 1.0;
    v45.origin.x = v32;
    v45.origin.y = v28;
    v45.size.height = v33;
    v46 = CGRectInset(v45, insetCopy, 0.0);
    UIRectFill(v46);
    v34 = v14;
    if (v26 != 0.0)
    {
      UIRoundToViewScale();
      v34 = v37 + v35;
      v31 = v35 + 0.0;
    }

    v47.size.height = 1.0;
    v47.origin.x = v14;
    v47.origin.y = v18 + 0.0;
    v47.size.width = v39 - v31;
    v48 = CGRectInset(v47, 0.0, insetCopy);
    UIRectFill(v48);
    v49.size.height = 1.0;
    v49.origin.x = v34;
    v49.origin.y = v18 + 0.0;
    v49.size.width = v39 - v31;
    v50 = CGRectInset(v49, 0.0, insetCopy);
    UIRectFill(v50);
    v15 = 0;
  }

  while ((v16 & 1) != 0);
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextBeginTransparencyLayer(CurrentContext, 0);
  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.150000006];
  [v5 set];

  v6 = CAMPixelWidthForView(self);
  *&v6 = v6;
  *&v6 = -*&v6;
  [(CAMGridView *)self _drawLinesWithInset:v6];
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.400000006];
  [v7 set];

  [(CAMGridView *)self _drawLinesWithInset:0.0];

  CGContextEndTransparencyLayer(CurrentContext);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = CAMGridView;
  v5 = [(CAMGridView *)&v7 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (void)observable:(id)observable didPublishChange:(unint64_t)change withContext:(void *)context
{
  if (!context && (change & 0x15) != 0)
  {
    [(CAMGridView *)self _setAnimatorGridOffsetForViewModel:observable animated:1];
  }
}

@end