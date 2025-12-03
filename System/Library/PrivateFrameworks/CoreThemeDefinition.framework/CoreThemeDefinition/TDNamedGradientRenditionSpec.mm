@interface TDNamedGradientRenditionSpec
- (CGPoint)gradientEndPoint;
- (CGPoint)gradientStartPoint;
- (void)setGradientEndPoint:(CGPoint)point;
- (void)setGradientStartPoint:(CGPoint)point;
@end

@implementation TDNamedGradientRenditionSpec

- (CGPoint)gradientStartPoint
{
  [-[TDNamedGradientRenditionSpec gradientStartX](self "gradientStartX")];
  v4 = v3;
  [-[TDNamedGradientRenditionSpec gradientStartY](self "gradientStartY")];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)setGradientStartPoint:(CGPoint)point
{
  y = point.y;
  *&point.x = point.x;
  -[TDNamedGradientRenditionSpec setGradientStartX:](self, "setGradientStartX:", [MEMORY[0x277CCABB0] numberWithFloat:point.x]);
  *&v5 = y;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];

  [(TDNamedGradientRenditionSpec *)self setGradientStartY:v6];
}

- (CGPoint)gradientEndPoint
{
  [-[TDNamedGradientRenditionSpec gradientEndX](self "gradientEndX")];
  v4 = v3;
  [-[TDNamedGradientRenditionSpec gradientEndY](self "gradientEndY")];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)setGradientEndPoint:(CGPoint)point
{
  y = point.y;
  *&point.x = point.x;
  -[TDNamedGradientRenditionSpec setGradientEndX:](self, "setGradientEndX:", [MEMORY[0x277CCABB0] numberWithFloat:point.x]);
  *&v5 = y;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];

  [(TDNamedGradientRenditionSpec *)self setGradientEndY:v6];
}

@end