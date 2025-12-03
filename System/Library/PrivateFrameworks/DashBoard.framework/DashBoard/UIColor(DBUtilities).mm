@interface UIColor(DBUtilities)
- (uint64_t)undynamicColor;
@end

@implementation UIColor(DBUtilities)

- (uint64_t)undynamicColor
{
  v1 = MEMORY[0x277D75348];
  cGColor = [self CGColor];

  return [v1 colorWithCGColor:cGColor];
}

@end