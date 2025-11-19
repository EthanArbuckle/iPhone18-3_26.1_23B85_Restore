@interface DOCGhostRingView
- (DOCGhostRingView)initWithFrame:(CGRect)a3;
- (void)_updateShapePath;
- (void)layoutSubviews;
- (void)setTintColor:(id)a3;
@end

@implementation DOCGhostRingView

- (DOCGhostRingView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = DOCGhostRingView;
  v3 = [(DOCGhostRingView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(DOCGhostRingView *)v3 layer];
    [v5 setLineCap:*MEMORY[0x277CDA780]];
    v6 = [MEMORY[0x277D75348] clearColor];
    [v5 setFillColor:{objc_msgSend(v6, "CGColor")}];
  }

  return v4;
}

- (void)setTintColor:(id)a3
{
  v7.receiver = self;
  v7.super_class = DOCGhostRingView;
  v4 = a3;
  [(DOCGhostRingView *)&v7 setTintColor:v4];
  v5 = [(DOCGhostRingView *)self layer:v7.receiver];
  v6 = [v4 CGColor];

  [v5 setStrokeColor:v6];
}

- (void)_updateShapePath
{
  v12 = [(DOCGhostRingView *)self layer];
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
  v10 = [MEMORY[0x277D75208] bezierPath];
  [v10 addArcWithCenter:1 radius:MidX startAngle:MidY endAngle:v7 clockwise:{-1.57079633, 4.71238898}];
  [v12 setPath:{objc_msgSend(v10, "CGPath")}];
  [v12 setBounds:{x, y, width, height}];
  if (width >= height)
  {
    v11 = height;
  }

  else
  {
    v11 = width;
  }

  [v12 setLineWidth:v11 / 36.0 * 3.0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = DOCGhostRingView;
  [(DOCGhostRingView *)&v3 layoutSubviews];
  [(DOCGhostRingView *)self _updateShapePath];
}

@end