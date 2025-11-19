@interface GEOPictureItem(MUPlaceTileViewModel)
- (id)footerAttributedStringForFont:()MUPlaceTileViewModel;
- (uint64_t)fetchBadgeIconWithCompletion:()MUPlaceTileViewModel;
- (uint64_t)fetchFallbackIconWithCompletion:()MUPlaceTileViewModel;
- (void)fetchImageTilewWithSize:()MUPlaceTileViewModel completion:;
@end

@implementation GEOPictureItem(MUPlaceTileViewModel)

- (id)footerAttributedStringForFont:()MUPlaceTileViewModel
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 tileSubtitle];
  v6 = v4;
  if ([v5 length])
  {
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    v8 = [MEMORY[0x1E69DC888] systemGrayColor];
    v9 = *MEMORY[0x1E69DB650];
    v16[0] = *MEMORY[0x1E69DB648];
    v16[1] = v9;
    v17[0] = v6;
    v17[1] = v8;
    v10 = MEMORY[0x1E695DF20];
    v11 = v6;
    v12 = [v10 dictionaryWithObjects:v17 forKeys:v16 count:2];

    v13 = [v7 initWithString:v5 attributes:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (uint64_t)fetchFallbackIconWithCompletion:()MUPlaceTileViewModel
{
  if (a3)
  {
    return (*(a3 + 16))(a3, 0, 0, 0);
  }

  return result;
}

- (uint64_t)fetchBadgeIconWithCompletion:()MUPlaceTileViewModel
{
  if (a3)
  {
    return (*(a3 + 16))(a3, 0, 0, 0);
  }

  return result;
}

- (void)fetchImageTilewWithSize:()MUPlaceTileViewModel completion:
{
  v8 = a5;
  v9 = [MEMORY[0x1E696F3B8] sharedInstance];
  [v9 screenScale];
  v11 = v10;

  v12 = [MEMORY[0x1E69A21D8] defaultPhotoOptionsWithAllowSmaller:1];
  v13 = [a1 photo];
  v14 = [v13 bestPhotoForFrameSize:v12 displayScale:a2 options:{a3, v11}];

  v15 = [v14 url];

  if (v15)
  {
    v16 = [MEMORY[0x1E696F190] sharedImageManager];
    v17 = [v14 url];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__GEOPictureItem_MUPlaceTileViewModel__fetchImageTilewWithSize_completion___block_invoke;
    v18[3] = &unk_1E821A058;
    v19 = v8;
    v20 = a2;
    v21 = a3;
    v22 = v11;
    [v16 loadAppImageAtURL:v17 completionHandler:v18];
  }

  else
  {
    (*(v8 + 2))(v8, 0, 0, 0);
  }
}

@end