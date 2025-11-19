@interface UIColor(Invert)
- (id)invert;
@end

@implementation UIColor(Invert)

- (id)invert
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 CGColor];
  NumberOfComponents = CGColorGetNumberOfComponents(v2);
  if (NumberOfComponents >= 2)
  {
    v4 = NumberOfComponents;
    Components = CGColorGetComponents(v2);
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
    ColorSpace = CGColorGetColorSpace(v2);
    v12 = CGColorCreate(ColorSpace, (v15 - ((8 * v4 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v13 = [MEMORY[0x277D75348] colorWithCGColor:v12];

    CGColorRelease(v12);
    v1 = v13;
  }

  return v1;
}

@end