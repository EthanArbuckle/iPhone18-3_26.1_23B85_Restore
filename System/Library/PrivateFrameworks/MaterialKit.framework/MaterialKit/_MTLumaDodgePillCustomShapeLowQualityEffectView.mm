@interface _MTLumaDodgePillCustomShapeLowQualityEffectView
- (void)setContentColor:(id)color;
@end

@implementation _MTLumaDodgePillCustomShapeLowQualityEffectView

- (void)setContentColor:(id)color
{
  colorCopy = color;
  shapeLayer = [(_MTLumaDodgePillCustomShapeLowQualityEffectView *)self shapeLayer];
  cGColor = [colorCopy CGColor];

  [shapeLayer setStrokeColor:cGColor];
}

@end