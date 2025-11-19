@interface _MTLumaDodgePillCustomShapeLowQualityEffectView
- (void)setContentColor:(id)a3;
@end

@implementation _MTLumaDodgePillCustomShapeLowQualityEffectView

- (void)setContentColor:(id)a3
{
  v4 = a3;
  v6 = [(_MTLumaDodgePillCustomShapeLowQualityEffectView *)self shapeLayer];
  v5 = [v4 CGColor];

  [v6 setStrokeColor:v5];
}

@end