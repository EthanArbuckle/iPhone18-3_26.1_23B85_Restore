@interface EKCalendar(CUIKColorUtils)
- (id)displayColor;
- (id)platformColor;
@end

@implementation EKCalendar(CUIKColorUtils)

- (id)displayColor
{
  source = [self source];
  sourceType = [source sourceType];

  if (sourceType == 6)
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    symbolicColorName = [self symbolicColorName];
    systemBlueColor = [self platformColor];
    if (symbolicColorName && ([symbolicColorName isEqualToString:*MEMORY[0x1E69E4048]] & 1) == 0)
    {
      v6 = [objc_opt_class() displayColorForSymbolicName:symbolicColorName];

      systemBlueColor = v6;
    }
  }

  return systemBlueColor;
}

- (id)platformColor
{
  cGColor = [self CGColor];
  if (cGColor)
  {
    cGColor = [MEMORY[0x1E69DC888] colorWithCGColor:cGColor];
  }

  return cGColor;
}

@end