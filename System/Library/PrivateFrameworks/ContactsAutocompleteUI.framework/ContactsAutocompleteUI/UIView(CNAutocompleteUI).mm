@interface UIView(CNAutocompleteUI)
- (double)cnaui_currentScreenScale;
- (void)abSetLayoutDebuggingColor:()CNAutocompleteUI;
@end

@implementation UIView(CNAutocompleteUI)

- (void)abSetLayoutDebuggingColor:()CNAutocompleteUI
{
  v5 = a3;
  v6 = a3;
  cGColor = [v6 CGColor];
  layer = [self layer];
  [layer setBorderColor:cGColor];

  layer2 = [self layer];
  [layer2 setBorderWidth:1.0];

  v13 = [v6 colorWithAlphaComponent:0.25];

  v10 = v13;
  cGColor2 = [v13 CGColor];
  layer3 = [self layer];
  [layer3 setBackgroundColor:cGColor2];
}

- (double)cnaui_currentScreenScale
{
  window = [self window];
  screen = [window screen];

  if (!screen)
  {
    screen = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  [screen scale];
  v4 = v3;

  return v4;
}

@end