@interface UIView(CNAutocompleteUI)
- (double)cnaui_currentScreenScale;
- (void)abSetLayoutDebuggingColor:()CNAutocompleteUI;
@end

@implementation UIView(CNAutocompleteUI)

- (void)abSetLayoutDebuggingColor:()CNAutocompleteUI
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 CGColor];
  v8 = [a1 layer];
  [v8 setBorderColor:v7];

  v9 = [a1 layer];
  [v9 setBorderWidth:1.0];

  v13 = [v6 colorWithAlphaComponent:0.25];

  v10 = v13;
  v11 = [v13 CGColor];
  v12 = [a1 layer];
  [v12 setBackgroundColor:v11];
}

- (double)cnaui_currentScreenScale
{
  v1 = [a1 window];
  v2 = [v1 screen];

  if (!v2)
  {
    v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  [v2 scale];
  v4 = v3;

  return v4;
}

@end