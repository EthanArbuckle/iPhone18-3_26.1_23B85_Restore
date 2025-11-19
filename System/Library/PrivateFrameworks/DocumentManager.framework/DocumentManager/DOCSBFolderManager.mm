@interface DOCSBFolderManager
@end

@implementation DOCSBFolderManager

void __84__DOCSBFolderManager_UI_Extensions__thumbnailImageForFolder_URL_size_scale_options___block_invoke(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = [a2 CGContext];
  v8 = *(a1 + 32);
  if (v8)
  {
    [v8 size];
    v11 = DOCAdaptSizeToRect(0, v4, v3, v6, v5, v9, v10, *(a1 + 56));
    v12 = *(a1 + 32);

    [v12 drawInRect:v11];
  }

  else
  {
    v13 = [MEMORY[0x1E69DC888] redColor];
    CGContextSetFillColorWithColor(v7, [v13 CGColor]);

    v14 = v4;
    v15 = v3;
    v16 = v6;
    v17 = v5;

    CGContextFillRect(v7, *&v14);
  }
}

@end