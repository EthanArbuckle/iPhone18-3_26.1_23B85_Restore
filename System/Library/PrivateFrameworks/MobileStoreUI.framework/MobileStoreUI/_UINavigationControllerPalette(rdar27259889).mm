@interface _UINavigationControllerPalette(rdar27259889)
- (void)resetBackgroundConstraints;
@end

@implementation _UINavigationControllerPalette(rdar27259889)

- (void)resetBackgroundConstraints
{
  v2 = [a1 _backgroundConstraints];

  if (v2)
  {
    v3 = [a1 _backgroundConstraints];
    v6 = [v3 objectAtIndex:1];

    v4 = [a1 _backgroundConstraints];
    v5 = [v4 objectAtIndex:3];

    [v6 setConstant:0.0];
    [v5 setConstant:0.0];
  }
}

@end