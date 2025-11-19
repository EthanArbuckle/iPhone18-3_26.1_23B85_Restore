@interface CHSDynamicColor(UIKit)
- (id)resolvedColorFromTraitCollection:()UIKit;
@end

@implementation CHSDynamicColor(UIKit)

- (id)resolvedColorFromTraitCollection:()UIKit
{
  v4 = a3;
  v5 = [v4 userInterfaceStyle];
  v6 = [v4 displayGamut];
  if (v5 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = [a1 resolvedColorForColorScheme:v7 displayGamut:v6 != 1];
  v9 = v8;
  if (v8)
  {
    v10 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(v8, "CGColor")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end