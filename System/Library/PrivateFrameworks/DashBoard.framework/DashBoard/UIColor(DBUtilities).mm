@interface UIColor(DBUtilities)
- (uint64_t)undynamicColor;
@end

@implementation UIColor(DBUtilities)

- (uint64_t)undynamicColor
{
  v1 = MEMORY[0x277D75348];
  v2 = [a1 CGColor];

  return [v1 colorWithCGColor:v2];
}

@end