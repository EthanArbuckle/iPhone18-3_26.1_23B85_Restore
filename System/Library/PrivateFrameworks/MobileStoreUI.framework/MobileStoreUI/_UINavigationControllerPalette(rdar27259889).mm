@interface _UINavigationControllerPalette(rdar27259889)
- (void)resetBackgroundConstraints;
@end

@implementation _UINavigationControllerPalette(rdar27259889)

- (void)resetBackgroundConstraints
{
  _backgroundConstraints = [self _backgroundConstraints];

  if (_backgroundConstraints)
  {
    _backgroundConstraints2 = [self _backgroundConstraints];
    v6 = [_backgroundConstraints2 objectAtIndex:1];

    _backgroundConstraints3 = [self _backgroundConstraints];
    v5 = [_backgroundConstraints3 objectAtIndex:3];

    [v6 setConstant:0.0];
    [v5 setConstant:0.0];
  }
}

@end