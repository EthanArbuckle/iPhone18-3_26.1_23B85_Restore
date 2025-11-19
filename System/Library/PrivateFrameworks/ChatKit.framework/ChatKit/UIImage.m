@interface UIImage
@end

@implementation UIImage

void __42__UIImage_ChatKitAdditions__abImageNamed___block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AddressBookUI"];
  v1 = abImageNamed__sABBundle;
  abImageNamed__sABBundle = v0;
}

uint64_t __52__UIImage_ChatKitAdditions____ck_ASTCRepresentation__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696D3E0];
  v2[0] = *MEMORY[0x1E696D8A0];
  v2[1] = v0;
  v3[0] = *MEMORY[0x1E696D3E8];
  v3[1] = &unk_1F04E7938;
  v2[2] = *MEMORY[0x1E696D400];
  v3[2] = MEMORY[0x1E695E118];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  __ck_ASTCRepresentation_imageProperties = result;
  return result;
}

void __73__UIImage_ChatKitAdditions__ckImageWithTintColor_insets_traitCollection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  [v2 size];
  v6 = v5;
  [*(a1 + 32) size];
  [v2 drawInRect:{v3, v4, v6, v7}];
  v8 = *(a1 + 40);
  if (v8)
  {
    [v8 set];
    v9 = MEMORY[0x1E69DC728];
    v11 = *(a1 + 48);
    v10 = *(a1 + 56);
    [*(a1 + 32) size];
    v13 = v12 + *(a1 + 72);
    [*(a1 + 32) size];
    v15 = [v9 bezierPathWithRect:{v10, v11, v13, v14 + *(a1 + 64)}];
    [v15 fillWithBlendMode:18 alpha:1.0];
  }
}

void __38__UIImage_ChatKit__ck_imageWithEmoji___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

@end