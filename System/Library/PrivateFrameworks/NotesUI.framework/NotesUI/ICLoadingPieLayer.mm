@interface ICLoadingPieLayer
- (CGPath)newPathForProgress:(double)progress;
- (ICLoadingPieLayer)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setObservedProgress:(id)progress;
- (void)setProgress:(double)progress;
@end

@implementation ICLoadingPieLayer

- (void)dealloc
{
  [(NSProgress *)self->_observedProgress ic_removeObserver:self forKeyPath:@"fractionCompleted" context:&compoundliteral_2];
  v3.receiver = self;
  v3.super_class = ICLoadingPieLayer;
  [(ICLoadingPieLayer *)&v3 dealloc];
}

- (ICLoadingPieLayer)init
{
  v13.receiver = self;
  v13.super_class = ICLoadingPieLayer;
  v2 = [(ICLoadingPieLayer *)&v13 init];
  v3 = v2;
  if (v2)
  {
    [(ICLoadingPieLayer *)v2 setFrame:0.0, 0.0, 24.0, 24.0];
    v4 = objc_alloc_init(MEMORY[0x1E69794A0]);
    backgroundLayer = v3->_backgroundLayer;
    v3->_backgroundLayer = v4;

    v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3];
    -[CAShapeLayer setFillColor:](v3->_backgroundLayer, "setFillColor:", [v6 CGColor]);

    Mutable = CGPathCreateMutable();
    [(ICLoadingPieLayer *)v3 frame];
    CGPathAddEllipseInRect(Mutable, 0, v14);
    [(CAShapeLayer *)v3->_backgroundLayer setPath:Mutable];
    CGPathRelease(Mutable);
    v8 = objc_alloc_init(MEMORY[0x1E69794A0]);
    pieLayer = v3->_pieLayer;
    v3->_pieLayer = v8;

    v10 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    -[CAShapeLayer setFillColor:](v3->_pieLayer, "setFillColor:", [v10 CGColor]);

    [(CAShapeLayer *)v3->_pieLayer setFillRule:*MEMORY[0x1E69797F8]];
    v11 = [(ICLoadingPieLayer *)v3 newPathForProgress:0.1];
    [(CAShapeLayer *)v3->_pieLayer setPath:v11];
    CGPathRelease(v11);
    [(ICLoadingPieLayer *)v3 addSublayer:v3->_backgroundLayer];
    [(ICLoadingPieLayer *)v3 addSublayer:v3->_pieLayer];
  }

  return v3;
}

- (CGPath)newPathForProgress:(double)progress
{
  Mutable = CGPathCreateMutable();
  [(ICLoadingPieLayer *)self bounds];
  v8 = CGRectInset(v7, 1.0, 1.0);
  CGPathAddEllipseInRect(Mutable, 0, v8);
  CGPathMoveToPoint(Mutable, 0, 12.0, 12.0);
  CGPathAddLineToPoint(Mutable, 0, 12.0, 2.0);
  CGPathAddArc(Mutable, 0, 12.0, 12.0, 10.0, -1.57079633, progress * 6.28318531 + -1.57079633, 0);
  return Mutable;
}

- (void)setProgress:(double)progress
{
  if (progress >= 1.0 && [(ICLoadingPieLayer *)self removeOnCompletion])
  {

    [(ICLoadingPieLayer *)self removeFromSuperlayer];
  }

  else
  {
    v5 = fmax(self->_progress, 0.1);
    self->_progress = progress;
    v17 = objc_alloc_init(MEMORY[0x1E6979390]);
    [v17 setKeyPath:@"path"];
    v6 = fmax(progress, 0.1) - v5;
    v7 = fmax(v6 / 0.1, 1.0);
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    if (v7 >= 1)
    {
      v10 = 0;
      do
      {
        v11 = [(ICLoadingPieLayer *)self newPathForProgress:v5 + (++v10 / v7) * v6];
        [array addObject:v11];

        *&v12 = v10 / v7;
        v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
        [array2 addObject:v13];
      }

      while (v10 < v7);
    }

    [v17 setValues:array];
    [v17 setKeyTimes:array2];
    lastObject = [array lastObject];
    pieLayer = [(ICLoadingPieLayer *)self pieLayer];
    [pieLayer setPath:lastObject];

    pieLayer2 = [(ICLoadingPieLayer *)self pieLayer];
    [pieLayer2 addAnimation:v17 forKey:@"path"];
  }
}

- (void)setObservedProgress:(id)progress
{
  progressCopy = progress;
  if (([progressCopy isEqual:self->_observedProgress] & 1) == 0)
  {
    [(NSProgress *)self->_observedProgress ic_removeObserver:self forKeyPath:@"fractionCompleted" context:&compoundliteral_2];
    objc_storeStrong(&self->_observedProgress, progress);
    [(NSProgress *)self->_observedProgress ic_addObserver:self forKeyPath:@"fractionCompleted" context:&compoundliteral_2];
    observedProgress = self->_observedProgress;
    if (observedProgress)
    {
      [(NSProgress *)observedProgress fractionCompleted];
      [(ICLoadingPieLayer *)self setProgress:?];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  objectCopy = object;
  pathCopy = path;
  if (([(ICLoadingPieLayer *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Ironcade/SharedUI/Views/ICLoadingPieLayer.m"]& 1) != 0)
  {
    v13 = [(ICLoadingPieLayer *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &compoundliteral_2 && (v13 & 1) == 0)
    {
      dispatchMainAfterDelay();
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICLoadingPieLayer;
    [(ICLoadingPieLayer *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

void __68__ICLoadingPieLayer_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observedProgress];

  if (v2)
  {
    v3 = [*(a1 + 32) observedProgress];
    [v3 fractionCompleted];
    [*(a1 + 32) setProgress:?];
  }
}

@end