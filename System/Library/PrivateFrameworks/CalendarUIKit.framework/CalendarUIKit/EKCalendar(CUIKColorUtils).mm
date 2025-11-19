@interface EKCalendar(CUIKColorUtils)
- (id)displayColor;
- (id)platformColor;
@end

@implementation EKCalendar(CUIKColorUtils)

- (id)displayColor
{
  v2 = [a1 source];
  v3 = [v2 sourceType];

  if (v3 == 6)
  {
    v4 = [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    v5 = [a1 symbolicColorName];
    v4 = [a1 platformColor];
    if (v5 && ([v5 isEqualToString:*MEMORY[0x1E69E4048]] & 1) == 0)
    {
      v6 = [objc_opt_class() displayColorForSymbolicName:v5];

      v4 = v6;
    }
  }

  return v4;
}

- (id)platformColor
{
  v1 = [a1 CGColor];
  if (v1)
  {
    v1 = [MEMORY[0x1E69DC888] colorWithCGColor:v1];
  }

  return v1;
}

@end