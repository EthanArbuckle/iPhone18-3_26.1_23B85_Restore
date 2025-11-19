@interface GEOMapItemStorage(MUPlaceTileViewModel)
- (BOOL)_hasHikeInfo;
- (MURouteSnapshotKey)_getSnapshotKeyForUniqueRouteID:()MUPlaceTileViewModel size:;
- (id)footerAttributedStringForFont:()MUPlaceTileViewModel;
- (id)tileSubtitle;
- (void)_fetchHikeSnapshot:()MUPlaceTileViewModel completion:;
- (void)fetchBadgeIconWithCompletion:()MUPlaceTileViewModel;
- (void)fetchFallbackIconWithCompletion:()MUPlaceTileViewModel;
- (void)fetchImageTilewWithSize:()MUPlaceTileViewModel completion:;
@end

@implementation GEOMapItemStorage(MUPlaceTileViewModel)

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

- (void)fetchBadgeIconWithCompletion:()MUPlaceTileViewModel
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 _styleAttributes];
    _MUFetchBadgeIconWithStyleAttributes(v5, 0, v4);
  }
}

- (void)fetchFallbackIconWithCompletion:()MUPlaceTileViewModel
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 _styleAttributes];
    _MUFetchBadgeIconWithStyleAttributes(v5, 1, v4);
  }
}

- (MURouteSnapshotKey)_getSnapshotKeyForUniqueRouteID:()MUPlaceTileViewModel size:
{
  v7 = MEMORY[0x1E696F3B8];
  v8 = a5;
  v9 = [v7 sharedInstance];
  [v9 screenScale];
  v11 = v10;

  v12 = [MEMORY[0x1E69DCEB0] mainScreen];
  v13 = [v12 traitCollection];
  v14 = [v13 userInterfaceStyle] == 2;

  v15 = [[MURouteSnapshotKey alloc] initWithIdentifier:v8 width:v14 height:a1 scale:a2 padding:v11 darkMode:15.0, 15.0, 15.0, 15.0];

  return v15;
}

- (void)_fetchHikeSnapshot:()MUPlaceTileViewModel completion:
{
  v8 = a5;
  v9 = [a1 uniqueRouteID];

  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = +[MURouteSnapshotManager sharedInstance];
  v11 = [a1 uniqueRouteID];
  v12 = [a1 _getSnapshotKeyForUniqueRouteID:v11 size:{a2, a3}];
  v13 = [v10 checkCacheForKey:v12];

  if (v13)
  {
    (*(v8 + 2))(v8, v13, 0, 0);
  }

  else
  {
LABEL_4:
    v13 = [MEMORY[0x1E69A2518] builderWithMapItem:a1];
    v14 = [v13 buildRoute];
    v15 = [v14 uniqueRouteID];
    if (v15)
    {
      [a1 setUniqueRouteID:v15];
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      [a1 setUniqueRouteID:v16];
    }

    v17 = [a1 uniqueRouteID];
    v18 = [a1 _getSnapshotKeyForUniqueRouteID:v17 size:{a2, a3}];

    v19 = +[MURouteSnapshotManager sharedInstance];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__GEOMapItemStorage_MUPlaceTileViewModel___fetchHikeSnapshot_completion___block_invoke;
    v20[3] = &unk_1E821A080;
    v21 = v8;
    [v19 getSnapshotForKey:v18 route:v14 completion:v20];
  }
}

- (void)fetchImageTilewWithSize:()MUPlaceTileViewModel completion:
{
  v8 = a5;
  v9 = [MEMORY[0x1E696F3B8] sharedInstance];
  [v9 screenScale];
  v11 = v10;

  if ([a1 _hasHikeInfo])
  {
    [a1 _fetchHikeSnapshot:v8 completion:{a2, a3}];
  }

  else
  {
    v12 = [a1 _photos];
    v13 = [v12 _geo_firstPhotoOfAtLeastSize:{v11 * a2, v11 * a3}];

    v14 = [v13 url];
    v15 = [v14 absoluteString];
    v16 = [v15 length];

    if (v16)
    {
      v17 = [MEMORY[0x1E696F190] sharedImageManager];
      v18 = [v13 url];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __78__GEOMapItemStorage_MUPlaceTileViewModel__fetchImageTilewWithSize_completion___block_invoke;
      v19[3] = &unk_1E821A058;
      v20 = v8;
      v21 = a2;
      v22 = a3;
      v23 = v11;
      [v17 loadAppImageAtURL:v18 completionHandler:v19];
    }

    else
    {
      (*(v8 + 2))(v8, 0, 0, 0);
    }
  }
}

- (id)tileSubtitle
{
  if ([a1 _hasHikeInfo])
  {
    v2 = [MEMORY[0x1E695DF58] currentLocale];
    v3 = [v2 objectForKey:*MEMORY[0x1E695DA08]];
    v4 = [v3 BOOLValue];

    v5 = [a1 _hikeSummary];
    if (v4)
    {
      [MEMORY[0x1E696B058] kilometers];
    }

    else
    {
      [MEMORY[0x1E696B058] miles];
    }
    v6 = ;
    v7 = [v5 lengthStringForUnit:v6];

    v8 = [a1 _hikeSummary];
    if (v4)
    {
      [MEMORY[0x1E696B058] meters];
    }

    else
    {
      [MEMORY[0x1E696B058] feet];
    }
    v9 = ;
    v10 = [v8 elevationGainStringForUnit:v9];

    if ([v7 length] && objc_msgSend(v10, "length"))
    {
      [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@ · ↗ %@", v7, v10];
      v11 = LABEL_15:;
      goto LABEL_16;
    }

    if ([v7 length])
    {
      v11 = v7;
LABEL_16:
      v12 = v11;

      goto LABEL_19;
    }

    if ([v10 length])
    {
      [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"↗ %@", v10, v14];
      goto LABEL_15;
    }
  }

  v12 = [a1 shortAddress];
LABEL_19:

  return v12;
}

- (BOOL)_hasHikeInfo
{
  v2 = [a1 _hikeSummary];
  if (v2)
  {
    v3 = [a1 _hikeAssociatedInfo];
    if (v3)
    {
      v4 = [a1 _hikeGeometry];
      v5 = v4 != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end