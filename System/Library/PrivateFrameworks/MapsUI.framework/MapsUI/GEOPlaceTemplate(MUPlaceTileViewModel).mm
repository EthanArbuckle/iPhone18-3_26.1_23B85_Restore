@interface GEOPlaceTemplate(MUPlaceTileViewModel)
- (id)footerAttributedStringForFont:()MUPlaceTileViewModel;
- (id)subtitleAttributedStringForFont:()MUPlaceTileViewModel;
- (uint64_t)expectedNumberOfFooterLines;
- (void)fetchBadgeIconWithCompletion:()MUPlaceTileViewModel;
- (void)fetchFallbackIconWithCompletion:()MUPlaceTileViewModel;
- (void)fetchImageTilewWithSize:()MUPlaceTileViewModel completion:;
@end

@implementation GEOPlaceTemplate(MUPlaceTileViewModel)

- (uint64_t)expectedNumberOfFooterLines
{
  v2 = [a1 footerLine];
  v3 = [v2 locationName];

  v4 = [a1 footerLine];
  v5 = [v4 categoryName];

  if ([v3 length] || objc_msgSend(v5, "length"))
  {
    v6 = 2;
  }

  else
  {
    v8 = [a1 footerLine];
    v9 = [v8 ratingSummary];

    if (v9)
    {
      if ([v9 isAppleRating])
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (id)footerAttributedStringForFont:()MUPlaceTileViewModel
{
  v4 = a3;
  v5 = [a1 footerLine];
  v6 = [v5 attributedStringForFont:v4];

  return v6;
}

- (id)subtitleAttributedStringForFont:()MUPlaceTileViewModel
{
  v4 = a3;
  v5 = [a1 subtitleLine];
  v6 = [v5 attributedStringForFont:v4];

  return v6;
}

- (void)fetchImageTilewWithSize:()MUPlaceTileViewModel completion:
{
  v8 = a5;
  v9 = [MEMORY[0x1E696F3B8] sharedInstance];
  [v9 screenScale];
  v11 = v10;

  v12 = [MEMORY[0x1E69A21D8] defaultPhotoOptionsWithAllowSmaller:1];
  v13 = [a1 heroImage];
  v14 = [v13 bestPhotoForFrameSize:v12 displayScale:a2 options:{a3, v11}];

  v15 = [v14 url];

  if (v15)
  {
    v16 = [MEMORY[0x1E696F190] sharedImageManager];
    v17 = [v14 url];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __77__GEOPlaceTemplate_MUPlaceTileViewModel__fetchImageTilewWithSize_completion___block_invoke;
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

- (void)fetchBadgeIconWithCompletion:()MUPlaceTileViewModel
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 styleAttributes];
    _MUFetchBadgeIconWithStyleAttributes(v5, 0, v4);
  }
}

- (void)fetchFallbackIconWithCompletion:()MUPlaceTileViewModel
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 styleAttributes];
    _MUFetchBadgeIconWithStyleAttributes(v5, 1, v4);
  }
}

@end