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
    v7 = v6;
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v8 = v7;
  [a1 setTintColor:v7];
}

@end