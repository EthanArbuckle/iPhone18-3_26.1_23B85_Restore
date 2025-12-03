@interface DOCGhostRingView
- (DOCGhostRingView)initWithFrame:(CGRect)frame;
- (void)_updateShapePath;
- (void)layoutSubviews;
- (void)setTintColor:(id)color;
@end

@implementation DOCGhostRingView

- (DOCGhostRingView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = DOCGhostRingView;
  v3 = [(DOCGhostRingView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(DOCGhostRingView *)v3 layer];
    [layer setLineCap:*MEMORY[0x277CDA780]];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [layer setFillColor:{objc_msgSend(clearColor, "CGColor")}];
  }

  return v4;
}

- (void)setTintColor:(id)color
{
  v7.receiver = self;
  v7.super_class = DOCGhostRingView;
  colorCopy = color;
  [(DOCGhostRingView *)&v7 setTintColor:colorCopy];
  v5 = [(DOCGhostRingView *)self layer:v7.receiver];
  cGColor = [colorCopy CGColor];

  [v5 setStrokeColor:cGColor];
}

- (void)_updateShapePath
{
  layer = [(DOCGhostRingView *)self layer];
  [(DOCGhostRingView *)self bounds];
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
  [bezierPath addArcWithCenter:1 radius:MidX startAngle:MidY endAngle:v7 clockwise:{-1.57079633, 4.71238898}];
  [layer setPath:{objc_msgSend(bezierPath, "CGPath")}];
  [layer setBounds:{x, y, width, height}];
  if (width >= height)
  {
    v11 = height;
  }

  else
  {
    v11 = width;
  }

  [layer setLineWidth:v11 / 36.0 * 3.0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = DOCGhostRingView;
  [(DOCGhostRingView *)&v3 layoutSubviews];
  [(DOCGhostRingView *)self _updateShapePath];
}

@end