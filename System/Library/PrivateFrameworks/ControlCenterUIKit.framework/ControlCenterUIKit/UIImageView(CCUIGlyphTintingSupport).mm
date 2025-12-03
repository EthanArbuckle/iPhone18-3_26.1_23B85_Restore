@interface UIImageView(CCUIGlyphTintingSupport)
- (void)ccui_applyGlyphTintColor:()CCUIGlyphTintingSupport isActive:;
@end

@implementation UIImageView(CCUIGlyphTintingSupport)

- (void)ccui_applyGlyphTintColor:()CCUIGlyphTintingSupport isActive:
{
  v6 = a3;
  v9 = v6;
  if (!v6 || a4)
  {
    whiteColor = v6;
  }

  else
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  v8 = whiteColor;
  [self setTintColor:whiteColor];
}

@end