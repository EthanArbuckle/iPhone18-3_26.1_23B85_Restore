@interface CKSharedQuickLookThumbnailCollectionViewCell
+ (id)placeHolderImage;
- (void)configureWithAttachmentItem:(id)item;
@end

@implementation CKSharedQuickLookThumbnailCollectionViewCell

+ (id)placeHolderImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CKSharedQuickLookThumbnailCollectionViewCell_placeHolderImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (placeHolderImage_onceToken != -1)
  {
    dispatch_once(&placeHolderImage_onceToken, block);
  }

  v2 = placeHolderImage_placeHolder;

  return v2;
}

void __64__CKSharedQuickLookThumbnailCollectionViewCell_placeHolderImage__block_invoke(uint64_t a1)
{
  [objc_opt_class() defaultSize];
  v3 = v2;
  v5 = v4;
  v6 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v2, v4}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__CKSharedQuickLookThumbnailCollectionViewCell_placeHolderImage__block_invoke_2;
  v9[3] = &__block_descriptor_56_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v9[4] = v3;
  *&v9[5] = v5;
  v9[6] = *(a1 + 32);
  v7 = [v6 imageWithActions:v9];
  v8 = placeHolderImage_placeHolder;
  placeHolderImage_placeHolder = v7;
}

void __64__CKSharedQuickLookThumbnailCollectionViewCell_placeHolderImage__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a2;
  v5 = [v3 tableBackgroundColor];
  [v5 setFill];

  v6 = [v4 CGContext];
  v11.size.width = *(a1 + 32);
  v11.size.height = *(a1 + 40);
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  CGContextFillRect(v6, v11);
  v7 = MEMORY[0x1E69DCAB8];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v7 imageNamed:@"ARKit" inBundle:v8];

  [v9 drawInRect:{*(a1 + 32) / 3.0, *(a1 + 40) / 3.0, *(a1 + 32) / 3.0, *(a1 + 32) / 3.0}];
}

- (void)configureWithAttachmentItem:(id)item
{
  itemCopy = item;
  previewTitleLabel = [(CKSharedAssetCollectionViewCell *)self previewTitleLabel];
  fileURL = [itemCopy fileURL];
  lastPathComponent = [fileURL lastPathComponent];

  v8 = [(CKSharedAssetCollectionViewCell *)self formattedTitleFromPreviewTitle:lastPathComponent];
  [previewTitleLabel setAttributedText:v8];

  previewView = [(CKSharedAssetCollectionViewCell *)self previewView];
  layer = [previewView layer];

  [layer setContentsGravity:*MEMORY[0x1E6979DF0]];
  [layer setMasksToBounds:1];
  placeHolderImage = [objc_opt_class() placeHolderImage];
  [layer setContents:{objc_msgSend(placeHolderImage, "CGImage")}];

  v12 = +[CKPreviewDispatchCache detailsPreviewCache];
  [v12 resume];

  date = [MEMORY[0x1E695DF00] date];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__CKSharedQuickLookThumbnailCollectionViewCell_configureWithAttachmentItem___block_invoke;
  v16[3] = &unk_1E72F43E8;
  v17 = date;
  v18 = layer;
  v14 = layer;
  v15 = date;
  [itemCopy generatePreviewWithCompletion:v16];
}

void __76__CKSharedQuickLookThumbnailCollectionViewCell_configureWithAttachmentItem___block_invoke(uint64_t a1, id a2)
{
  if (a2)
  {
    v6 = [a2 CGImage];
    [*(a1 + 32) timeIntervalSinceNow];
    if (v3 < -0.1)
    {
      v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"contents"];
      v5 = [*(a1 + 40) contents];
      [v4 setFromValue:v5];

      [v4 setToValue:v6];
      [v4 setDuration:0.12];
      [*(a1 + 40) addAnimation:v4 forKey:@"contents"];
    }

    [*(a1 + 40) setContents:v6];
  }
}

@end