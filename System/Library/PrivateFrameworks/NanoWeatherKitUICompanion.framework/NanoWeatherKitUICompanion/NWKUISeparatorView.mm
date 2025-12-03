@interface NWKUISeparatorView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (NWKUISeparatorView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation NWKUISeparatorView

- (NWKUISeparatorView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = NWKUISeparatorView;
  v3 = [(NWKUISeparatorView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    layer = [MEMORY[0x277CD9F90] layer];
    lineLayer = v3->_lineLayer;
    v3->_lineLayer = layer;

    v6 = v3->_lineLayer;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    -[CAShapeLayer setStrokeColor:](v6, "setStrokeColor:", [whiteColor CGColor]);

    v3->_lineWidth = 1.5;
    [(CAShapeLayer *)v3->_lineLayer setShouldRasterize:1];
    v8 = v3->_lineLayer;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    [(CAShapeLayer *)v8 setRasterizationScale:?];

    [(CAShapeLayer *)v3->_lineLayer setLineCap:*MEMORY[0x277CDA780]];
    LODWORD(v10) = 1045220557;
    [(CAShapeLayer *)v3->_lineLayer setOpacity:v10];
    layer2 = [(NWKUISeparatorView *)v3 layer];
    [layer2 addSublayer:v3->_lineLayer];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(NWKUISeparatorView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = self->_lineWidth * 0.5;
  v10 = v7 - v9;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v13 = 0.5 / v12;

  lineWidth = self->_lineWidth;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, v9, v13);
  CGPathAddLineToPoint(Mutable, 0, v10, v13);
  [(CAShapeLayer *)self->_lineLayer setPath:Mutable];
  [(CAShapeLayer *)self->_lineLayer setFrame:v4, v6, v8, lineWidth];

  CGPathRelease(Mutable);
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  lineWidth = self->_lineWidth;
  result.height = lineWidth;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  lineWidth = self->_lineWidth;
  result.height = lineWidth;
  return result;
}

@end