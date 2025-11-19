@interface DOCIndeterminateProgressRingView
- (DOCIndeterminateProgressRingView)initWithFrame:(CGRect)a3;
- (void)_removeAllAnimations:(BOOL)a3;
- (void)_updateShapePath;
- (void)layoutSubviews;
- (void)setTintColor:(id)a3;
@end

@implementation DOCIndeterminateProgressRingView

- (DOCIndeterminateProgressRingView)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = DOCIndeterminateProgressRingView;
  v3 = [(DOCIndeterminateProgressRingView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(DOCIndeterminateProgressRingView *)v3 layer];
    [v5 setLineCap:*MEMORY[0x277CDA780]];
    v6 = [MEMORY[0x277D75348] clearColor];
    [v5 setFillColor:{objc_msgSend(v6, "CGColor")}];

    [(DOCIndeterminateProgressRingView *)v4 _updateShapePath];
    v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.z"];
    spinnerAnimation = v4->_spinnerAnimation;
    v4->_spinnerAnimation = v7;

    v9 = [(CABasicAnimation *)v4->_spinnerAnimation keyPath];
    v10 = [v5 valueForKeyPath:v9];

    [(CABasicAnimation *)v4->_spinnerAnimation setFromValue:v10];
    v11 = v4->_spinnerAnimation;
    v12 = MEMORY[0x277CCABB0];
    [v10 floatValue];
    v14 = [v12 numberWithDouble:{(fmod(v13, 6.28318531) + 6.28318531)}];
    [(CABasicAnimation *)v11 setToValue:v14];

    [(CABasicAnimation *)v4->_spinnerAnimation setRemovedOnCompletion:0];
    LODWORD(v15) = 2139095040;
    [(CABasicAnimation *)v4->_spinnerAnimation setRepeatCount:v15];
    [(CABasicAnimation *)v4->_spinnerAnimation setFillMode:*MEMORY[0x277CDA230]];
    [(CABasicAnimation *)v4->_spinnerAnimation setDuration:1.0];
    [(CABasicAnimation *)v4->_spinnerAnimation setBeginTimeMode:*MEMORY[0x277CDA048]];
    v16 = CACurrentMediaTime();
    v17 = v4->_spinnerAnimation;
    [(CABasicAnimation *)v17 duration];
    [(CABasicAnimation *)v17 setBeginTime:(v16 - fmod(v16, v18))];
    [v5 addAnimation:v4->_spinnerAnimation forKey:@"DOCIndeterminateProgressRingViewSpinnerAnimationKey"];
  }

  return v4;
}

- (void)_removeAllAnimations:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = DOCIndeterminateProgressRingView;
  [(DOCIndeterminateProgressRingView *)&v5 _removeAllAnimations:a3];
  v4 = [(DOCIndeterminateProgressRingView *)self layer];
  [v4 addAnimation:self->_spinnerAnimation forKey:@"DOCIndeterminateProgressRingViewSpinnerAnimationKey"];
}

- (void)setTintColor:(id)a3
{
  v7.receiver = self;
  v7.super_class = DOCIndeterminateProgressRingView;
  v4 = a3;
  [(DOCIndeterminateProgressRingView *)&v7 setTintColor:v4];
  v5 = [(DOCIndeterminateProgressRingView *)self layer:v7.receiver];
  v6 = [v4 CGColor];

  [v5 setStrokeColor:v6];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = DOCIndeterminateProgressRingView;
  [(DOCIndeterminateProgressRingView *)&v3 layoutSubviews];
  [(DOCIndeterminateProgressRingView *)self _updateShapePath];
}

- (void)_updateShapePath
{
  v12 = [(DOCIndeterminateProgressRingView *)self layer];
  [(DOCIndeterminateProgressRingView *)self bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v7 = v14.size.width * 0.5;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MidY = CGRectGetMidY(v15);
  v10 = [MEMORY[0x277D75208] bezierPath];
  [v10 addArcWithCenter:1 radius:MidX startAngle:MidY endAngle:v7 clockwise:{0.0, 5.8293997}];
  [v12 setPath:{objc_msgSend(v10, "CGPath")}];
  if (width >= height)
  {
    v11 = height;
  }

  else
  {
    v11 = width;
  }

  [v12 setLineWidth:v11 / 36.0 * 3.0];
  [v12 setBounds:{x, y, width, height}];
}

@end