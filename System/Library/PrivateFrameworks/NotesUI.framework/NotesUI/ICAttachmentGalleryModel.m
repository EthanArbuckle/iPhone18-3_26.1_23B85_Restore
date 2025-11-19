@interface ICAttachmentGalleryModel
@end

@implementation ICAttachmentGalleryModel

void __75__ICAttachmentGalleryModel_PreviewGeneration__generatePreviewsInOperation___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) needToGeneratePreviews])
  {
    v15 = [*(a1 + 32) firstSubAttachment];
    v2 = [v15 attachmentPreviewImageWithMinSize:*(a1 + 64) scale:{*(a1 + 64), 1.0}];
    v3 = [v2 orientedImage];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v6 = [*(a1 + 32) attachment];
      v7 = [v6 previewImages];
      v8 = [v7 mutableCopy];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = [*(a1 + 32) attachment];
      v12 = [v11 identifier];
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }
  }
}

void __75__ICAttachmentGalleryModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_14(id *a1)
{
  v2 = [a1[5] unsignedIntValue];
  v3 = [a1[4] attachment];
  [v3 setSizeWidth:v2];

  v4 = [a1[6] unsignedIntValue];
  v5 = [a1[4] attachment];
  [v5 setSizeHeight:v4];
}

void __75__ICAttachmentGalleryModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  [*(a1 + 40) scale];
  v7 = [v2 updateAttachmentPreviewImageWithImageSrc:v3 maxDimension:0 scale:1 appearanceType:0 scaleWhenDrawing:0 metadata:v4 sendNotification:v5];

  v6 = v7;
  if (v7)
  {
    [*(*(*(a1 + 48) + 8) + 40) removeObject:v7];
    v6 = v7;
  }
}

void __75__ICAttachmentGalleryModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v2 = [*(a1 + 32) attachment];
    [v2 removePreviewImages:*(*(*(a1 + 40) + 8) + 40)];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        v7 = 0;
        do
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v14 + 1) + 8 * v7);
          v9 = [*(a1 + 32) attachment];
          v10 = [v9 managedObjectContext];
          [v10 deleteObject:v8];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }
  }

  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [*(a1 + 32) attachment];
  [v12 setPreviewUpdateDate:v11];

  v13 = [*(a1 + 32) attachment];
  [v13 updateChangeCountWithReason:@"Generated gallery previews"];
}

void __53__ICAttachmentGalleryModel_UI__quicklookPreviewItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 supportsQuickLook])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void __50__ICAttachmentGalleryModel_UI__drawPreviewInRect___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = [a2 image];
  if (v7)
  {
    v14 = v7;
    [v7 size];
    v7 = v14;
    if (v8 > 0.0)
    {
      [v14 size];
      v7 = v14;
      if (v9 > 0.0)
      {
        [v14 size];
        v11 = v10;
        [v14 size];
        v13 = *(a1 + 40) * (v11 / v12);
        [v14 drawInRect:{*(a1 + 48) + *(*(*(a1 + 32) + 8) + 24), *(a1 + 56) + 24.0 + *(a1 + 104), v13}];
        v7 = v14;
        *(*(*(a1 + 32) + 8) + 24) = v13 + 12.0 + *(*(*(a1 + 32) + 8) + 24);
      }
    }
  }

  if (*(*(*(a1 + 32) + 8) + 24) > *(a1 + 64))
  {
    *a5 = 1;
  }
}

@end