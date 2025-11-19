@interface UIDocumentPickerContainerItem
@end

@implementation UIDocumentPickerContainerItem

uint64_t __52___UIDocumentPickerContainerItem__lruThumbnailArray__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _lruThumbnailArray_cacheArray;
  _lruThumbnailArray_cacheArray = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __58___UIDocumentPickerContainerItem_thumbnailWithSize_scale___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 5);
    if (v4)
    {
      if (([v4 isCancelled] & 1) == 0)
      {
        v5 = [*(a1 + 32) _createThumbnailWithSize:*(a1 + 64) scale:{*(a1 + 72), *(a1 + 80)}];
        v6 = v5;
        if (v5)
        {
          v7[0] = MEMORY[0x277D85DD0];
          v7[1] = 3221225472;
          v7[2] = __58___UIDocumentPickerContainerItem_thumbnailWithSize_scale___block_invoke_2;
          v7[3] = &unk_278DD6508;
          v7[4] = *(a1 + 32);
          v8 = v5;
          v9 = *(a1 + 40);
          v10 = *(a1 + 48);
          dispatch_async(MEMORY[0x277D85CD0], v7);
        }
      }
    }
  }
}

void __58___UIDocumentPickerContainerItem_thumbnailWithSize_scale___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 64) setObject:*(a1 + 40) forKey:*(a1 + 48)];
  [*(a1 + 56) refreshItem:*(a1 + 32) thumbnailOnly:1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58___UIDocumentPickerContainerItem_thumbnailWithSize_scale___block_invoke_3;
  block[3] = &unk_278DD61B0;
  v3 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65___UIDocumentPickerContainerItem__createThumbnailWithSize_scale___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [*(a1 + 32) drawInRect:{*MEMORY[0x277CBF348], v4, v5, v6}];
  if (*(a1 + 56) == 1)
  {
    v7 = [v9 CGContext];
    v8 = [MEMORY[0x277D75348] separatorColor];
    CGContextSetStrokeColorWithColor(v7, [v8 CGColor]);

    CGContextSetLineWidth(v7, 1.0);
    v11.origin.x = v3;
    v11.origin.y = v4;
    v11.size.width = v5;
    v11.size.height = v6;
    v12 = CGRectInset(v11, 0.5, 0.5);
    CGContextStrokeRect(v7, v12);
  }
}

id __61___UIDocumentPickerContainerItem__blipWithTags_height_scale___block_invoke(uint64_t a1)
{
  v2 = +[_UIDocumentPickerURLContainerModel tagColorsByTag];
  v3 = *(a1 + 40);
  v4 = v3 * 0.5;
  v5 = ceil(v3);
  v6 = v5 + ([*(a1 + 32) count] - 1) * (v3 * 0.5);
  v7 = objc_opt_new();
  [v7 setScale:*(a1 + 48)];
  v8 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v7 format:{v6, v5}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61___UIDocumentPickerContainerItem__blipWithTags_height_scale___block_invoke_2;
  v12[3] = &unk_278DD6580;
  v13 = *(a1 + 32);
  v14 = v2;
  v15 = v4;
  v16 = v5;
  v9 = v2;
  v10 = [v8 imageWithActions:v12];

  return v10;
}

void __61___UIDocumentPickerContainerItem__blipWithTags_height_scale___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = [*(a1 + 32) count] - 1;
  if (v4 >= 0)
  {
    do
    {
      v5 = *(a1 + 48) * v4;
      v6 = [*(a1 + 32) objectAtIndex:v4];
      v7 = [*(a1 + 40) objectForKey:v6];
      v15.size.width = *(a1 + 56);
      v15.origin.y = 0.0;
      v15.origin.x = v5;
      v15.size.height = v15.size.width;
      v16 = CGRectInset(v15, 0.5, 0.5);
      x = v16.origin.x;
      y = v16.origin.y;
      width = v16.size.width;
      height = v16.size.height;
      CGContextAddEllipseInRect(v3, v16);
      CGContextSetLineWidth(v3, 1.0);
      CGContextSetFillColorWithColor(v3, [v7 CGColor]);
      CGContextFillPath(v3);
      v12 = [MEMORY[0x277D75348] systemBackgroundColor];
      v13 = [v12 colorWithAlphaComponent:0.5];
      v14 = [v7 _colorBlendedWithColor:v13];

      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      CGContextAddEllipseInRect(v3, v17);
      CGContextSetStrokeColorWithColor(v3, [v14 CGColor]);
      CGContextStrokePath(v3);

      --v4;
    }

    while (v4 != -1);
  }
}

uint64_t __88___UIDocumentPickerContainerItem_Icons___blockingFolderIconForURL_container_size_scale___block_invoke(uint64_t a1)
{
  [*(a1 + 32) drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [*(a1 + 32) size];
  UIRectCenteredXInRect();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  [*(a1 + 32) size];
  v9 = v8 - *(a1 + 56) - *(a1 + 64);
  v10 = *(a1 + 40);

  return [v10 drawInRect:{v3, v9, v5, v7}];
}

@end