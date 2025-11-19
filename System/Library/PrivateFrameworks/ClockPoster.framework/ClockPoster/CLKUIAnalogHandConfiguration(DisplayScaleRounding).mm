@interface CLKUIAnalogHandConfiguration(DisplayScaleRounding)
- (id)cp_handConfigurationRoundedToScaleOfView:()DisplayScaleRounding;
@end

@implementation CLKUIAnalogHandConfiguration(DisplayScaleRounding)

- (id)cp_handConfigurationRoundedToScaleOfView:()DisplayScaleRounding
{
  v4 = a3;
  v5 = [a1 copy];
  [v5 handLength];
  UIRoundToViewScale();
  [v5 setHandLength:?];
  [v5 handWidth];
  UIRoundToViewScale();
  [v5 setHandWidth:?];
  [v5 armLength];
  UIRoundToViewScale();
  [v5 setArmLength:?];
  [v5 armWidth];
  UIRoundToViewScale();
  [v5 setArmWidth:?];
  [v5 pegStrokeWidth];
  UIRoundToViewScale();
  [v5 setPegStrokeWidth:?];
  [v5 pegRadius];
  UIRoundToViewScale();
  [v5 setPegRadius:?];
  [v5 tailLength];
  UIRoundToViewScale();
  v7 = v6;

  [v5 setTailLength:v7];

  return v5;
}

@end