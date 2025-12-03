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
  footerLine = [self footerLine];
  locationName = [footerLine locationName];

  footerLine2 = [self footerLine];
  categoryName = [footerLine2 categoryName];

  if ([locationName length] || objc_msgSend(categoryName, "length"))
  {
    v6 = 2;
  }

  else
  {
    footerLine3 = [self footerLine];
    ratingSummary = [footerLine3 ratingSummary];

    if (ratingSummary)
    {
      if ([ratingSummary isAppleRating])
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
  footerLine = [self footerLine];
  v6 = [footerLine attributedStringForFont:v4];

  return v6;
}

- (id)subtitleAttributedStringForFont:()MUPlaceTileViewModel
{
  v4 = a3;
  subtitleLine = [self subtitleLine];
  v6 = [subtitleLine attributedStringForFont:v4];

  return v6;
}

- (void)fetchImageTilewWithSize:()MUPlaceTileViewModel completion:
{
  v8 = a5;
  mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
  [mEMORY[0x1E696F3B8] screenScale];
  v11 = v10;

  v12 = [MEMORY[0x1E69A21D8] defaultPhotoOptionsWithAllowSmaller:1];
  heroImage = [self heroImage];
  v14 = [heroImage bestPhotoForFrameSize:v12 displayScale:a2 options:{a3, v11}];

  v15 = [v14 url];

  if (v15)
  {
    mEMORY[0x1E696F190] = [MEMORY[0x1E696F190] sharedImageManager];
    v17 = [v14 url];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __77__GEOPlaceTemplate_MUPlaceTileViewModel__fetchImageTilewWithSize_completion___block_invoke;
    v18[3] = &unk_1E821A058;
    v19 = v8;
    v20 = a2;
    v21 = a3;
    v22 = v11;
    [mEMORY[0x1E696F190] loadAppImageAtURL:v17 completionHandler:v18];
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
    styleAttributes = [self styleAttributes];
    _MUFetchBadgeIconWithStyleAttributes(styleAttributes, 0, v4);
  }
}

- (void)fetchFallbackIconWithCompletion:()MUPlaceTileViewModel
{
  if (a3)
  {
    v4 = a3;
    styleAttributes = [self styleAttributes];
    _MUFetchBadgeIconWithStyleAttributes(styleAttributes, 1, v4);
  }
}

@end