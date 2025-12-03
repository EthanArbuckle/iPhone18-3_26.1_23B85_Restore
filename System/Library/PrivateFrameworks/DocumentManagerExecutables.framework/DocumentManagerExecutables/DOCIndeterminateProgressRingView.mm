@interface DOCIndeterminateProgressRingView
- (DOCIndeterminateProgressRingView)initWithFrame:(CGRect)frame;
- (void)_removeAllAnimations:(BOOL)animations;
- (void)_updateShapePath;
- (void)layoutSubviews;
- (void)setTintColor:(id)color;
@end

@implementation DOCIndeterminateProgressRingView

- (DOCIndeterminateProgressRingView)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = DOCIndeterminateProgressRingView;
  v3 = [(DOCIndeterminateProgressRingView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(DOCIndeterminateProgressRingView *)v3 layer];
    [layer setLineCap:*MEMORY[0x277CDA780]];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [layer setFillColor:{objc_msgSend(clearColor, "CGColor")}];

    [(DOCIndeterminateProgressRingView *)v4 _updateShapePath];
    v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.z"];
    spinnerAnimation = v4->_spinnerAnimation;
    v4->_spinnerAnimation = v7;

    keyPath = [(CABasicAnimation *)v4->_spinnerAnimation keyPath];
    v10 = [layer valueForKeyPath:keyPath];

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
    [layer addAnimation:v4->_spinnerAnimation forKey:@"DOCIndeterminateProgressRingViewSpinnerAnimationKey"];
  }

  return v4;
}

- (void)_removeAllAnimations:(BOOL)animations
{
  v5.receiver = self;
  v5.super_class = DOCIndeterminateProgressRingView;
  [(DOCIndeterminateProgressRingView *)&v5 _removeAllAnimations:animations];
  layer = [(DOCIndeterminateProgressRingView *)self layer];
  [layer addAnimation:self->_spinnerAnimation forKey:@"DOCIndeterminateProgressRingViewSpinnerAnimationKey"];
}

- (void)setTintColor:(id)color
{
  v7.receiver = self;
  v7.super_class = DOCIndeterminateProgressRingView;
  colorCopy = color;
  [(DOCIndeterminateProgressRingView *)&v7 setTintColor:colorCopy];
  v5 = [(DOCIndeterminateProgressRingView *)self layer:v7.receiver];
  cGColor = [colorCopy CGColor];

  [v5 setStrokeColor:cGColor];
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
  layer = [(DOCIndeterminateProgressRingView *)self layer];
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
  bezierPath = [MEMORY[0x277D75208] bezierPath];
  [bezierPath addArcWithCenter:1 radius:MidX startAngle:MidY endAngle:v7 clockwise:{0.0, 5.8293997}];
  [layer setPath:{objc_msgSend(bezierPath, "CGPath")}];
  if (width >= height)
  {
    v11 = height;
  }

  else
  {
    v11 = width;
  }

  [layer setLineWidth:v11 / 36.0 * 3.0];
  [layer setBounds:{x, y, width, height}];
}

@end