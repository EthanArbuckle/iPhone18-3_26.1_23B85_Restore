@interface ICCircularProgressView
- (CGPath)newPathForProgress:(double)progress;
- (void)awakeFromNib;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setObservedProgress:(id)progress;
- (void)setProgress:(double)progress;
@end

@implementation ICCircularProgressView

- (void)dealloc
{
  [(NSProgress *)self->_observedProgress removeObserver:self forKeyPath:@"fractionCompleted" context:&compoundliteral_1];
  v3.receiver = self;
  v3.super_class = ICCircularProgressView;
  [(ICCircularProgressView *)&v3 dealloc];
}

- (void)awakeFromNib
{
  v8.receiver = self;
  v8.super_class = ICCircularProgressView;
  [(ICCircularProgressView *)&v8 awakeFromNib];
  v3 = objc_alloc_init(MEMORY[0x1E69794A0]);
  circleLayer = self->_circleLayer;
  self->_circleLayer = v3;

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  -[CAShapeLayer setFillColor:](self->_circleLayer, "setFillColor:", [secondaryLabelColor CGColor]);

  [(CAShapeLayer *)self->_circleLayer setFillRule:*MEMORY[0x1E69797F8]];
  v6 = [(ICCircularProgressView *)self newPathForProgress:0.1];
  [(CAShapeLayer *)self->_circleLayer setPath:v6];
  CGPathRelease(v6);
  layer = [(ICCircularProgressView *)self layer];
  [layer addSublayer:self->_circleLayer];
}

- (CGPath)newPathForProgress:(double)progress
{
  [(ICCircularProgressView *)self frame];
  v6 = v5 * 0.5;
  Mutable = CGPathCreateMutable();
  [(ICCircularProgressView *)self bounds];
  v10 = CGRectInset(v9, 4.0, 4.0);
  CGPathAddEllipseInRect(Mutable, 0, v10);
  CGPathMoveToPoint(Mutable, 0, v6, v6);
  CGPathAddLineToPoint(Mutable, 0, v6, 8.0);
  CGPathAddArc(Mutable, 0, v6, v6, v6 + -8.0, -1.57079633, progress * 6.28318531 + -1.57079633, 1);
  return Mutable;
}

- (void)setProgress:(double)progress
{
  v4 = fmax(self->_progress, 0.1);
  v5 = fmax(progress, 0.1);
  self->_progress = progress;
  v17 = objc_alloc_init(MEMORY[0x1E6979390]);
  [v17 setKeyPath:@"path"];
  v6 = v5 - v4;
  v7 = fmax(v6 / 0.1, 1.0);
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if (v7 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = [(ICCircularProgressView *)self newPathForProgress:v4 + (++v10 / v7) * v6];
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
  circleLayer = [(ICCircularProgressView *)self circleLayer];
  [circleLayer setPath:lastObject];

  circleLayer2 = [(ICCircularProgressView *)self circleLayer];
  [circleLayer2 addAnimation:v17 forKey:@"path"];
}

- (void)setObservedProgress:(id)progress
{
  progressCopy = progress;
  if (([progressCopy isEqual:self->_observedProgress] & 1) == 0)
  {
    [(NSProgress *)self->_observedProgress ic_removeObserver:self forKeyPath:@"fractionCompleted" context:&compoundliteral_1];
    objc_storeStrong(&self->_observedProgress, progress);
    [(NSProgress *)self->_observedProgress ic_addObserver:self forKeyPath:@"fractionCompleted" context:&compoundliteral_1];
    observedProgress = self->_observedProgress;
    if (observedProgress)
    {
      [(NSProgress *)observedProgress fractionCompleted];
      [(ICCircularProgressView *)self setProgress:?];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  objectCopy = object;
  pathCopy = path;
  if (([(ICCircularProgressView *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Ironcade/SharedUI/iOS/ICCircularProgressView.m"]& 1) != 0)
  {
    v13 = [(ICCircularProgressView *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &compoundliteral_1 && (v13 & 1) == 0)
    {
      dispatchMainAfterDelay();
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICCircularProgressView;
    [(ICCircularProgressView *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

void __73__ICCircularProgressView_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
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