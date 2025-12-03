@interface UIColor(Invert)
- (id)invert;
@end

@implementation UIColor(Invert)

- (id)invert
{
  v15[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  cGColor = [selfCopy CGColor];
  NumberOfComponents = CGColorGetNumberOfComponents(cGColor);
  if (NumberOfComponents >= 2)
  {
    v4 = NumberOfComponents;
    Components = CGColorGetComponents(cGColor);
    if (v4 < 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4 - 1;
      v7 = Components;
      v8 = (v15 - ((8 * v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v9 = v4 - 1;
      do
      {
        v10 = *v7++;
        *v8++ = 1.0 - v10;
        --v9;
      }

      while (v9);
    }

    *(&v15[v6] - ((8 * v4 + 15) & 0xFFFFFFFFFFFFFFF0)) = Components[v6];
    ColorSpace = CGColorGetColorSpace(cGColor);
    v12 = CGColorCreate(ColorSpace, (v15 - ((8 * v4 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v13 = [MEMORY[0x277D75348] colorWithCGColor:v12];

    CGColorRelease(v12);
    selfCopy = v13;
  }

  return selfCopy;
}

@end