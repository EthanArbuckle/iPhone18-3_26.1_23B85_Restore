@interface UIImage
@end

@implementation UIImage

void __74__UIImage_CarPlayUIServices__crsui_nowPlayingIconImageWthTraitCollection___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setUserInterfaceStyle:{objc_msgSend(v2, "iconStyledUserInterfaceStyle")}];
}

void __93__UIImage_CarPlayUIServices__crsui_symbolImageNamed_tintColor_compatibleWithTraitCollection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) colorWithAlphaComponent:0.9];
  [v3 setFill];

  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = v2;
  v12.size.height = v2;
  UIRectFill(v12);
  v4 = [MEMORY[0x277D755B8] systemImageNamed:*(a1 + 40)];
  v5 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:1.0];
  v10 = [v4 imageWithTintColor:v5];

  if (v10)
  {
    [v10 size];
    v8 = *(a1 + 48);
    v9 = v8 / v6;
    if (v8 / v6 >= v8 / v7)
    {
      v9 = v8 / v7;
    }

    [v10 drawInRect:0 blendMode:(v8 - v6 * (v9 * 0.7)) * 0.5 alpha:{(v8 - v7 * (v9 * 0.7)) * 0.5, v6 * (v9 * 0.7), v7 * (v9 * 0.7), 1.0}];
  }
}

@end