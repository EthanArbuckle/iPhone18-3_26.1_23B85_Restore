@interface UIImage
@end

@implementation UIImage

uint64_t __92__UIImage_MobileSafariFrameworkExtras__sf_registerFaviconForDarkUserInterfaceStyleWithSize___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 set];

  v3 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, *(a1 + 40), *(a1 + 48), 3.0}];
  [v3 fill];

  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);

  return [v4 drawInRect:{v5, v6, v7, v8}];
}

void __104__UIImage_MobileSafariFrameworkExtras__sf_chicletStyleImageWithImage_backgroundColor_size_cornerRadius___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFill];
  v9 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:*(a1 + 48) cornerRadius:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [v9 addClip];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextFillRect(CurrentContext, *(a1 + 48));
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [v3 imageWithTintColor:v4 renderingMode:1];

  [v5 size];
  v8 = _SFCGRectOfSizeAlignedWithinRect(0, 0, v6, v7, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  [v5 drawInRect:_SFRoundRectToPixels(v8)];
}

@end