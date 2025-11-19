@interface UIColor(ITKUtilities)
+ (uint64_t)itk_randomColor;
- (id)itk_colorWithMaxSaturation;
- (uint64_t)itk_resolvedColor;
@end

@implementation UIColor(ITKUtilities)

+ (uint64_t)itk_randomColor
{
  v0 = arc4random_uniform(0xFFu) / 255.0;
  v1 = arc4random_uniform(0xFFu) / 255.0;
  v2 = arc4random_uniform(0xFFu) / 255.0;
  v3 = MEMORY[0x277D75348];

  return [v3 colorWithRed:v0 green:v1 blue:v2 alpha:1.0];
}

- (id)itk_colorWithMaxSaturation
{
  v6 = 0.0;
  v4 = 0.0;
  v5 = 0;
  v3 = 0.0;
  [a1 getHue:&v6 saturation:&v5 brightness:&v4 alpha:&v3];
  v1 = [MEMORY[0x277D75348] colorWithHue:v6 saturation:1.0 brightness:v4 alpha:v3];

  return v1;
}

- (uint64_t)itk_resolvedColor
{
  v1 = MEMORY[0x277D75348];
  v2 = [a1 CGColor];

  return [v1 colorWithCGColor:v2];
}

@end