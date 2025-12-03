@interface DOCDeterminateProgressRingView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (DOCDeterminateProgressRingView)initWithFrame:(CGRect)frame;
- (void)_updateShapePath;
- (void)layoutSubviews;
- (void)setProgress:(double)progress;
- (void)setTintColor:(id)color;
@end

@implementation DOCDeterminateProgressRingView

- (DOCDeterminateProgressRingView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = DOCDeterminateProgressRingView;
  v3 = [(DOCDeterminateProgressRingView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(DOCDeterminateProgressRingView *)v3 layer];
    [layer setLineCap:*MEMORY[0x277CDA780]];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [layer setFillColor:{objc_msgSend(clearColor, "CGColor")}];

    layer2 = [MEMORY[0x277CD9ED0] layer];
    squareLayer = v4->_squareLayer;
    v4->_squareLayer = layer2;

    [(CALayer *)v4->_squareLayer setHidden:1];
    [layer addSublayer:v4->_squareLayer];
    [(DOCDeterminateProgressRingView *)v4 _updateShapePath];
    [layer setStrokeEnd:0.0];
  }

  return v4;
}

- (void)setTintColor:(id)color
{
  v7.receiver = self;
  v7.super_class = DOCDeterminateProgressRingView;
  colorCopy = color;
  [(DOCDeterminateProgressRingView *)&v7 setTintColor:colorCopy];
  v5 = [(DOCDeterminateProgressRingView *)self layer:v7.receiver];
  [v5 setStrokeColor:{objc_msgSend(colorCopy, "CGColor")}];
  cGColor = [colorCopy CGColor];

  [(CALayer *)self->_squareLayer setBackgroundColor:cGColor];
}

- (void)_updateShapePath
{
  layer = [(DOCDeterminateProgressRingView *)self layer];
  bezierPath = [MEMORY[0x277D75208] bezierPath];
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
  [bezierPath addArcWithCenter:1 radius:MidX startAngle:CGRectGetMidY(v15) endAngle:v8 clockwise:{-1.57079633, 4.71238898}];
  [layer setPath:{objc_msgSend(bezierPath, "CGPath")}];
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
  [layer setLineWidth:v11 * 3.0];
  [layer setBounds:{x, y, width, height}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = DOCDeterminateProgressRingView;
  [(DOCDeterminateProgressRingView *)&v3 layoutSubviews];
  [(DOCDeterminateProgressRingView *)self _updateShapePath];
}

- (void)setProgress:(double)progress
{
  self->_progress = progress;
  layer = [(DOCDeterminateProgressRingView *)self layer];
  [layer setStrokeEnd:self->_progress];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = DOCDeterminateProgressRingView;
  if ([(DOCDeterminateProgressRingView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"strokeEnd"];
  }

  return v5;
}

@end