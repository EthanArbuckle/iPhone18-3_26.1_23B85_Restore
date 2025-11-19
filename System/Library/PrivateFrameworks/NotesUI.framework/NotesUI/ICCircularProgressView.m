@interface ICCircularProgressView
- (CGPath)newPathForProgress:(double)a3;
- (void)awakeFromNib;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setObservedProgress:(id)a3;
- (void)setProgress:(double)a3;
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

  v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  -[CAShapeLayer setFillColor:](self->_circleLayer, "setFillColor:", [v5 CGColor]);

  [(CAShapeLayer *)self->_circleLayer setFillRule:*MEMORY[0x1E69797F8]];
  v6 = [(ICCircularProgressView *)self newPathForProgress:0.1];
  [(CAShapeLayer *)self->_circleLayer setPath:v6];
  CGPathRelease(v6);
  v7 = [(ICCircularProgressView *)self layer];
  [v7 addSublayer:self->_circleLayer];
}

- (CGPath)newPathForProgress:(double)a3
{
  [(ICCircularProgressView *)self frame];
  v6 = v5 * 0.5;
  Mutable = CGPathCreateMutable();
  [(ICCircularProgressView *)self bounds];
  v10 = CGRectInset(v9, 4.0, 4.0);
  CGPathAddEllipseInRect(Mutable, 0, v10);
  CGPathMoveToPoint(Mutable, 0, v6, v6);
  CGPathAddLineToPoint(Mutable, 0, v6, 8.0);
  CGPathAddArc(Mutable, 0, v6, v6, v6 + -8.0, -1.57079633, a3 * 6.28318531 + -1.57079633, 1);
  return Mutable;
}

- (void)setProgress:(double)a3
{
  v4 = fmax(self->_progress, 0.1);
  v5 = fmax(a3, 0.1);
  self->_progress = a3;
  v17 = objc_alloc_init(MEMORY[0x1E6979390]);
  [v17 setKeyPath:@"path"];
  v6 = v5 - v4;
  v7 = fmax(v6 / 0.1, 1.0);
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF70] array];
  if (v7 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = [(ICCircularProgressView *)self newPathForProgress:v4 + (++v10 / v7) * v6];
      [v8 addObject:v11];

      *&v12 = v10 / v7;
      v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
      [v9 addObject:v13];
    }

    while (v10 < v7);
  }

  [v17 setValues:v8];
  [v17 setKeyTimes:v9];
  v14 = [v8 lastObject];
  v15 = [(ICCircularProgressView *)self circleLayer];
  [v15 setPath:v14];

  v16 = [(ICCircularProgressView *)self circleLayer];
  [v16 addAnimation:v17 forKey:@"path"];
}

- (void)setObservedProgress:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_observedProgress] & 1) == 0)
  {
    [(NSProgress *)self->_observedProgress ic_removeObserver:self forKeyPath:@"fractionCompleted" context:&compoundliteral_1];
    objc_storeStrong(&self->_observedProgress, a3);
    [(NSProgress *)self->_observedProgress ic_addObserver:self forKeyPath:@"fractionCompleted" context:&compoundliteral_1];
    observedProgress = self->_observedProgress;
    if (observedProgress)
    {
      [(NSProgress *)observedProgress fractionCompleted];
      [(ICCircularProgressView *)self setProgress:?];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  if (([(ICCircularProgressView *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Ironcade/SharedUI/iOS/ICCircularProgressView.m"]& 1) != 0)
  {
    v13 = [(ICCircularProgressView *)self ic_shouldIgnoreObserveValue:v10 ofObject:v11 forKeyPath:v12];

    if (a6 == &compoundliteral_1 && (v13 & 1) == 0)
    {
      dispatchMainAfterDelay();
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICCircularProgressView;
    [(ICCircularProgressView *)&v14 observeValueForKeyPath:v12 ofObject:v11 change:v10 context:a6];
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