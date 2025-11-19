@interface SFSiteIcon
@end

@implementation SFSiteIcon

id __34___SFSiteIcon_defaultIconKeyColor__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 userInterfaceStyle] == 2)
  {
    v3 = [v2 userInterfaceLevel];
    v4 = MEMORY[0x1E69DC888];
    if (v3 == 1)
    {
      v5 = 0.294117647;
    }

    else
    {
      v5 = 0.180392157;
    }

    v8 = 1.0;
    v6 = v5;
    v7 = v5;
  }

  else
  {
    v4 = MEMORY[0x1E69DC888];
    v5 = 0.8;
    v6 = 0.803921569;
    v7 = 0.831372549;
    v8 = 1.0;
  }

  v9 = [v4 colorWithRed:v5 green:v6 blue:v7 alpha:v8];

  return v9;
}

void __39___SFSiteIcon_precompositedDefaultIcon__block_invoke(uint64_t a1)
{
  [*(a1 + 32) defaultSize];
  v3 = v2;
  v5 = v4;
  v6 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v2, v4}];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39___SFSiteIcon_precompositedDefaultIcon__block_invoke_2;
  aBlock[3] = &__block_descriptor_56_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&aBlock[4] = v3;
  *&aBlock[5] = v5;
  aBlock[6] = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = [v6 imageWithActions:v7];
  v9 = precompositedDefaultIcon_icon;
  precompositedDefaultIcon_icon = v8;

  v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v11 = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v10];
  v12 = [v6 imageWithActions:v7];
  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v11];
  v13 = [precompositedDefaultIcon_icon imageAsset];
  [v13 registerImage:v12 withTraitCollection:v10];
}

void __39___SFSiteIcon_precompositedDefaultIcon__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = a2;
  [v7 cornerRadius];
  v10 = v9;
  v19.origin.x = v3;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v5;
  v11 = CGPathCreateWithRoundedRect(v19, v10, v10, 0);
  v12 = [v8 CGContext];

  CGContextAddPath(v12, v11);
  CGPathRelease(v11);
  CGContextClip(v12);
  v20.origin.x = v3;
  v20.origin.y = v4;
  v20.size.width = v6;
  v20.size.height = v5;
  UIRectFill(v20);
  v13 = [*(a1 + 48) defaultIconKeyColor];
  [v13 setFill];

  v21.origin.x = v3;
  v21.origin.y = v4;
  v21.size.width = v6;
  v21.size.height = v5;
  UIRectFillUsingBlendMode(v21, kCGBlendModeMultiply);
  v17 = [*(a1 + 48) defaultGlyph];
  [v17 size];
  v16 = _SFCGRectOfSizeAlignedWithinRect(0, 0, v14, v15, v3, v4, v6, v5);
  [v17 drawInRect:_SFRoundRectToPixels(v16)];
}

@end