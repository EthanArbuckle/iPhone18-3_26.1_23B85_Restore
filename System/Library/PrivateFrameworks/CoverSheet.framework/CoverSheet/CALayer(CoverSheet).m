@interface CALayer(CoverSheet)
+ (id)ringLayerWithBlendMode:()CoverSheet cornerRadius:borderWidth:;
@end

@implementation CALayer(CoverSheet)

+ (id)ringLayerWithBlendMode:()CoverSheet cornerRadius:borderWidth:
{
  v7 = MEMORY[0x277CD9ED0];
  v8 = a5;
  v9 = [v7 layer];
  [v9 setOpacity:0.0];
  [v9 setCornerRadius:a1];
  [v9 setBorderWidth:a2];
  v10 = [MEMORY[0x277CD9EA0] filterWithType:v8];

  [v9 setCompositingFilter:v10];

  return v9;
}

@end