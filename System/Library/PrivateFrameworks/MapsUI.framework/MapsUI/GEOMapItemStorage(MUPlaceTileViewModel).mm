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
  tileSubtitle = [self tileSubtitle];
  v6 = v4;
  if ([tileSubtitle length])
  {
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v9 = *MEMORY[0x1E69DB650];
    v16[0] = *MEMORY[0x1E69DB648];
    v16[1] = v9;
    v17[0] = v6;
    v17[1] = systemGrayColor;
    v10 = MEMORY[0x1E695DF20];
    v11 = v6;
    v12 = [v10 dictionaryWithObjects:v17 forKeys:v16 count:2];

    v13 = [v7 initWithString:tileSubtitle attributes:v12];
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
    _styleAttributes = [self _styleAttributes];
    _MUFetchBadgeIconWithStyleAttributes(_styleAttributes, 0, v4);
  }
}

- (void)fetchFallbackIconWithCompletion:()MUPlaceTileViewModel
{
  if (a3)
  {
    v4 = a3;
    _styleAttributes = [self _styleAttributes];
    _MUFetchBadgeIconWithStyleAttributes(_styleAttributes, 1, v4);
  }
}

- (MURouteSnapshotKey)_getSnapshotKeyForUniqueRouteID:()MUPlaceTileViewModel size:
{
  v7 = MEMORY[0x1E696F3B8];
  v8 = a5;
  sharedInstance = [v7 sharedInstance];
  [sharedInstance screenScale];
  v11 = v10;

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  v14 = [traitCollection userInterfaceStyle] == 2;

  v15 = [[MURouteSnapshotKey alloc] initWithIdentifier:v8 width:v14 height:self scale:a2 padding:v11 darkMode:15.0, 15.0, 15.0, 15.0];

  return v15;
}

- (void)_fetchHikeSnapshot:()MUPlaceTileViewModel completion:
{
  v8 = a5;
  uniqueRouteID = [self uniqueRouteID];

  if (!uniqueRouteID)
  {
    goto LABEL_4;
  }

  v10 = +[MURouteSnapshotManager sharedInstance];
  uniqueRouteID2 = [self uniqueRouteID];
  v12 = [self _getSnapshotKeyForUniqueRouteID:uniqueRouteID2 size:{a2, a3}];
  v13 = [v10 checkCacheForKey:v12];

  if (v13)
  {
    (*(v8 + 2))(v8, v13, 0, 0);
  }

  else
  {
LABEL_4:
    v13 = [MEMORY[0x1E69A2518] builderWithMapItem:self];
    buildRoute = [v13 buildRoute];
    uniqueRouteID3 = [buildRoute uniqueRouteID];
    if (uniqueRouteID3)
    {
      [self setUniqueRouteID:uniqueRouteID3];
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      [self setUniqueRouteID:v16];
    }

    uniqueRouteID4 = [self uniqueRouteID];
    v18 = [self _getSnapshotKeyForUniqueRouteID:uniqueRouteID4 size:{a2, a3}];

    v19 = +[MURouteSnapshotManager sharedInstance];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__GEOMapItemStorage_MUPlaceTileViewModel___fetchHikeSnapshot_completion___block_invoke;
    v20[3] = &unk_1E821A080;
    v21 = v8;
    [v19 getSnapshotForKey:v18 route:buildRoute completion:v20];
  }
}

- (void)fetchImageTilewWithSize:()MUPlaceTileViewModel completion:
{
  v8 = a5;
  mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
  [mEMORY[0x1E696F3B8] screenScale];
  v11 = v10;

  if ([self _hasHikeInfo])
  {
    [self _fetchHikeSnapshot:v8 completion:{a2, a3}];
  }

  else
  {
    _photos = [self _photos];
    v13 = [_photos _geo_firstPhotoOfAtLeastSize:{v11 * a2, v11 * a3}];

    v14 = [v13 url];
    absoluteString = [v14 absoluteString];
    v16 = [absoluteString length];

    if (v16)
    {
      mEMORY[0x1E696F190] = [MEMORY[0x1E696F190] sharedImageManager];
      v18 = [v13 url];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __78__GEOMapItemStorage_MUPlaceTileViewModel__fetchImageTilewWithSize_completion___block_invoke;
      v19[3] = &unk_1E821A058;
      v20 = v8;
      v21 = a2;
      v22 = a3;
      v23 = v11;
      [mEMORY[0x1E696F190] loadAppImageAtURL:v18 completionHandler:v19];
    }

    else
    {
      (*(v8 + 2))(v8, 0, 0, 0);
    }
  }
}

- (id)tileSubtitle
{
  if ([self _hasHikeInfo])
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v3 = [currentLocale objectForKey:*MEMORY[0x1E695DA08]];
    bOOLValue = [v3 BOOLValue];

    _hikeSummary = [self _hikeSummary];
    if (bOOLValue)
    {
      [MEMORY[0x1E696B058] kilometers];
    }

    else
    {
      [MEMORY[0x1E696B058] miles];
    }
    v6 = ;
    v7 = [_hikeSummary lengthStringForUnit:v6];

    _hikeSummary2 = [self _hikeSummary];
    if (bOOLValue)
    {
      [MEMORY[0x1E696B058] meters];
    }

    else
    {
      [MEMORY[0x1E696B058] feet];
    }
    v9 = ;
    v10 = [_hikeSummary2 elevationGainStringForUnit:v9];

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
      shortAddress = v11;

      goto LABEL_19;
    }

    if ([v10 length])
    {
      [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"↗ %@", v10, v14];
      goto LABEL_15;
    }
  }

  shortAddress = [self shortAddress];
LABEL_19:

  return shortAddress;
}

- (BOOL)_hasHikeInfo
{
  _hikeSummary = [self _hikeSummary];
  if (_hikeSummary)
  {
    _hikeAssociatedInfo = [self _hikeAssociatedInfo];
    if (_hikeAssociatedInfo)
    {
      _hikeGeometry = [self _hikeGeometry];
      v5 = _hikeGeometry != 0;
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