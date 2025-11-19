@interface DOCDeterminateProgressRingView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (DOCDeterminateProgressRingView)initWithFrame:(CGRect)a3;
- (void)_updateShapePath;
- (void)layoutSubviews;
- (void)setProgress:(double)a3;
- (void)setTintColor:(id)a3;
@end

@implementation DOCDeterminateProgressRingView

- (DOCDeterminateProgressRingView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = DOCDeterminateProgressRingView;
  v3 = [(DOCDeterminateProgressRingView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(DOCDeterminateProgressRingView *)v3 layer];
    [v5 setLineCap:*MEMORY[0x277CDA780]];
    v6 = [MEMORY[0x277D75348] clearColor];
    [v5 setFillColor:{objc_msgSend(v6, "CGColor")}];

    v7 = [MEMORY[0x277CD9ED0] layer];
    squareLayer = v4->_squareLayer;
    v4->_squareLayer = v7;

    [(CALayer *)v4->_squareLayer setHidden:1];
    [v5 addSublayer:v4->_squareLayer];
    [(DOCDeterminateProgressRingView *)v4 _updateShapePath];
    [v5 setStrokeEnd:0.0];
  }

  return v4;
}

- (void)setTintColor:(id)a3
{
  v7.receiver = self;
  v7.super_class = DOCDeterminateProgressRingView;
  v4 = a3;
  [(DOCDeterminateProgressRingView *)&v7 setTintColor:v4];
  v5 = [(DOCDeterminateProgressRingView *)self layer:v7.receiver];
  [v5 setStrokeColor:{objc_msgSend(v4, "CGColor")}];
  v6 = [v4 CGColor];

  [(CALayer *)self->_squareLayer setBackgroundColor:v6];
}

- (void)_updateShapePath
{
  v12 = [(DOCDeterminateProgressRingView *)self layer];
  v3 = [MEMORY[0x277D75208] bezierPath];
  [(DOCDeterminateProgressRingView *)self bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v8 = v14.size.width * 0.5;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  [v3 addArcWithCenter:1 radius:MidX startAngle:CGRectGetMidY(v15) endAngle:v8 clockwise:{-1.57079633, 4.71238898}];
  [v12 setPath:{objc_msgSend(v3, "CGPath")}];
  if (width >= height)
  {
    v10 = height;
  }

  else
  {
    v10 = width;
  }

  v11 = v10 / 36.0;
  DOCCenterSizeInRect();
  [(CALayer *)self->_squareLayer setFrame:?];
  [v12 setLineWidth:v11 * 3.0];
  [v12 setBounds:{x, y, width, height}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = DOCDeterminateProgressRingView;
  [(DOCDeterminateProgressRingView *)&v3 layoutSubviews];
  [(DOCDeterminateProgressRingView *)self _updateShapePath];
}

- (void)setProgress:(double)a3
{
  self->_progress = a3;
  v4 = [(DOCDeterminateProgressRingView *)self layer];
  [v4 setStrokeEnd:self->_progress];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DOCDeterminateProgressRingView;
  if ([(DOCDeterminateProgressRingView *)&v7 _shouldAnimatePropertyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"strokeEnd"];
  }

  return v5;
}

@end