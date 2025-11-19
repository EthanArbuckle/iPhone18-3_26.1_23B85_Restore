@interface DCCircularProgressView
- (CGPath)newPathForProgress:(double)a3;
- (void)awakeFromNib;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setObservedProgress:(id)a3;
- (void)setProgress:(double)a3;
@end

@implementation DCCircularProgressView

- (void)dealloc
{
  [(NSProgress *)self->_observedProgress removeObserver:self forKeyPath:@"fractionCompleted" context:DCCircularProgressViewContext];
  v3.receiver = self;
  v3.super_class = DCCircularProgressView;
  [(DCCircularProgressView *)&v3 dealloc];
}

- (void)awakeFromNib
{
  v8.receiver = self;
  v8.super_class = DCCircularProgressView;
  [(DCCircularProgressView *)&v8 awakeFromNib];
  v3 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
  v4 = objc_alloc_init(MEMORY[0x277CD9F90]);
  circleLayer = self->_circleLayer;
  self->_circleLayer = v4;

  -[CAShapeLayer setFillColor:](self->_circleLayer, "setFillColor:", [v3 CGColor]);
  [(CAShapeLayer *)self->_circleLayer setFillRule:*MEMORY[0x277CDA248]];
  v6 = [(DCCircularProgressView *)self newPathForProgress:0.1];
  [(CAShapeLayer *)self->_circleLayer setPath:v6];
  CGPathRelease(v6);
  v7 = [(DCCircularProgressView *)self layer];
  [v7 addSublayer:self->_circleLayer];
}

- (CGPath)newPathForProgress:(double)a3
{
  [(DCCircularProgressView *)self frame];
  v6 = v5 * 0.5;
  Mutable = CGPathCreateMutable();
  [(DCCircularProgressView *)self bounds];
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
  v17 = objc_alloc_init(MEMORY[0x277CD9EC8]);
  [v17 setKeyPath:@"path"];
  v6 = v5 - v4;
  v7 = fmax(v6 / 0.1, 1.0);
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB18] array];
  if (v7 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = [(DCCircularProgressView *)self newPathForProgress:v4 + (++v10 / v7) * v6];
      [v8 addObject:v11];

      *&v12 = v10 / v7;
      v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
      [v9 addObject:v13];
    }

    while (v10 < v7);
  }

  [v17 setValues:v8];
  [v17 setKeyTimes:v9];
  v14 = [v8 lastObject];
  v15 = [(DCCircularProgressView *)self circleLayer];
  [v15 setPath:v14];

  v16 = [(DCCircularProgressView *)self circleLayer];
  [v16 addAnimation:v17 forKey:@"path"];
}

- (void)setObservedProgress:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_observedProgress] & 1) == 0)
  {
    [(NSProgress *)self->_observedProgress removeObserver:self forKeyPath:@"fractionCompleted" context:DCCircularProgressViewContext];
    objc_storeStrong(&self->_observedProgress, a3);
    [(NSProgress *)self->_observedProgress addObserver:self forKeyPath:@"fractionCompleted" options:0 context:DCCircularProgressViewContext];
    observedProgress = self->_observedProgress;
    if (observedProgress)
    {
      [(NSProgress *)observedProgress fractionCompleted];
      [(DCCircularProgressView *)self setProgress:?];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (DCCircularProgressViewContext == a6)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __73__DCCircularProgressView_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v7[3] = &unk_278F92C70;
    v7[4] = self;
    dc_dispatchMainAfterDelay(v7, 0.0);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = DCCircularProgressView;
    [(DCCircularProgressView *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

void __73__DCCircularProgressView_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
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