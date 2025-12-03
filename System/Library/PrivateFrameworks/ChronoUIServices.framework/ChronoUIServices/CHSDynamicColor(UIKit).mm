@interface CHSDynamicColor(UIKit)
- (id)resolvedColorFromTraitCollection:()UIKit;
@end

@implementation CHSDynamicColor(UIKit)

- (id)resolvedColorFromTraitCollection:()UIKit
{
  v4 = a3;
  userInterfaceStyle = [v4 userInterfaceStyle];
  displayGamut = [v4 displayGamut];
  if (userInterfaceStyle == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = [self resolvedColorForColorScheme:v7 displayGamut:displayGamut != 1];
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