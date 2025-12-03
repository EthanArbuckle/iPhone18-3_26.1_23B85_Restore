@interface GKPlayer(UIPrivate)
+ (id)monogramQueue;
+ (uint64_t)preloadImagesForPlayers:()UIPrivate size:;
+ (uint64_t)sizeForPhotoSize:()UIPrivate;
- (__CFString)stringForMonogram;
- (id)avatarImageRenderer;
- (id)monogramColorIndex;
- (id)photoURLForSize:()UIPrivate;
- (id)placeholderImageWithPhotoSize:()UIPrivate;
- (id)renderingScopeForPhotoSize:()UIPrivate;
- (id)renderingScopeForPhotoSize:()UIPrivate colorIndex:;
- (void)_playerAvatarWithSize:()UIPrivate completionHandler:;
- (void)clearInMemoryCachedAvatars;
- (void)loadPlayerContactForAvatarControllerWithImageSize:()UIPrivate completion:;
- (void)monogramImageWithPhotoSize:()UIPrivate handler:;
- (void)playerAvatarDataWithSize:()UIPrivate completionHandler:;
- (void)playerAvatarImageWithSize:()UIPrivate completionHandler:;
- (void)renderMonogramImageWithPhotoSize:()UIPrivate monogramString:handler:;
- (void)showAlertWithTitle:()UIPrivate andMessage:;
- (void)showConfirmationAlertWithTitle:()UIPrivate message:buttonTitle:block:cancelAction:;
@end

@implementation GKPlayer(UIPrivate)

- (void)showAlertWithTitle:()UIPrivate andMessage:
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__GKPlayer_UIPrivate__showAlertWithTitle_andMessage___block_invoke;
  v9[3] = &unk_279669E48;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (void)showConfirmationAlertWithTitle:()UIPrivate message:buttonTitle:block:cancelAction:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__GKPlayer_UIPrivate__showConfirmationAlertWithTitle_message_buttonTitle_block_cancelAction___block_invoke;
  block[3] = &unk_27966D598;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = v11;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

+ (uint64_t)sizeForPhotoSize:()UIPrivate
{
  if (a3)
  {
    if (a3 != 1)
    {
      if (a3 == 0x10000)
      {
        return 64;
      }

      else
      {
        return 128;
      }
    }

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v6 = userInterfaceIdiom == 1;
    v7 = 256;
    v8 = 512;
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    v6 = userInterfaceIdiom2 == 1;
    v7 = 128;
    v8 = 256;
  }

  if (v6)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

- (id)photoURLForSize:()UIPrivate
{
  internal = [self internal];
  photos = [internal photos];
  v6 = [objc_opt_class() sizeForPhotoSize:a3];
  mEMORY[0x277D0C8A8] = [MEMORY[0x277D0C8A8] sharedController];
  [mEMORY[0x277D0C8A8] greatestScreenScale];
  v8 = [photos _gkImageURLForSize:v6 scale:?];

  return v8;
}

- (__CFString)stringForMonogram
{
  isAutomatchPlayer = [self isAutomatchPlayer];
  internal = [self internal];
  internal2 = internal;
  if (isAutomatchPlayer)
  {
    automatchPosition = [internal automatchPosition];
    v6 = MEMORY[0x277CCABB8];
    alias2 = [MEMORY[0x277CCABB0] numberWithInteger:automatchPosition];
    _firstGrapheme = [v6 localizedStringFromNumber:alias2 numberStyle:0];
LABEL_5:
    _firstGrapheme2 = _firstGrapheme;
    goto LABEL_6;
  }

  alias = [internal alias];

  if (alias)
  {
    internal2 = [self internal];
    alias2 = [internal2 alias];
    _firstGrapheme = [alias2 _firstGrapheme];
    goto LABEL_5;
  }

  internal2 = objc_opt_new();
  internal3 = [self internal];
  firstName = [internal3 firstName];
  [internal2 setGivenName:firstName];

  internal4 = [self internal];
  lastName = [internal4 lastName];
  [internal2 setFamilyName:lastName];

  alias2 = objc_opt_new();
  [alias2 setStyle:4];
  v16 = [alias2 stringFromPersonNameComponents:internal2];
  if ([v16 length] && objc_msgSend(v16, "length") <= 2)
  {
    _firstGrapheme3 = v16;
  }

  else
  {
    if (![v16 length])
    {
      internal5 = [self internal];
      compositeName = [internal5 compositeName];
      v20 = [compositeName length];

      if (v20)
      {
        internal6 = [self internal];
        compositeName2 = [internal6 compositeName];
        _firstGrapheme2 = [compositeName2 _firstGrapheme];
      }

      else
      {
        if (!*MEMORY[0x277D0C2A0])
        {
          v23 = GKOSLoggers();
        }

        if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
        {
          [GKPlayer(UIPrivate) stringForMonogram];
        }

        _firstGrapheme2 = @" ";
      }

      goto LABEL_15;
    }

    _firstGrapheme3 = [v16 _firstGrapheme];
  }

  _firstGrapheme2 = _firstGrapheme3;
LABEL_15:

LABEL_6:

  return _firstGrapheme2;
}

- (id)placeholderImageWithPhotoSize:()UIPrivate
{
  v3 = [objc_opt_class() sizeForPhotoSize:a3];
  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  v5 = [mEMORY[0x277D0C8C8] placeholderSourceWithDimension:v3];

  v6 = [v5 cachedImageForIdentifier:@"placeholders"];
  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x277CBDBD0]);
    defaultSettings = [MEMORY[0x277CBDBD8] defaultSettings];
    v9 = [v7 initWithSettings:defaultSettings];

    placeholderImageProvider = [v9 placeholderImageProvider];
    v11 = v3;
    mEMORY[0x277D0C8A8] = [MEMORY[0x277D0C8A8] sharedController];
    [mEMORY[0x277D0C8A8] greatestScreenScale];
    v6 = [placeholderImageProvider imageForSize:0 scale:v11 style:{v11, v13}];

    v14 = [v5 processAndCacheImage:v6 forIdentifier:@"placeholders"];
  }

  return v6;
}

- (id)renderingScopeForPhotoSize:()UIPrivate colorIndex:
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__GKPlayer_UIPrivate__renderingScopeForPhotoSize_colorIndex___block_invoke;
  block[3] = &unk_2796699A8;
  block[4] = self;
  if (renderingScopeForPhotoSize_colorIndex__onceToken != -1)
  {
    dispatch_once(&renderingScopeForPhotoSize_colorIndex__onceToken, block);
  }

  v6 = [renderingScopeForPhotoSize_colorIndex__sAvatarImageRenderingScopes objectAtIndexedSubscript:a4];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  return v8;
}

- (id)renderingScopeForPhotoSize:()UIPrivate
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__GKPlayer_UIPrivate__renderingScopeForPhotoSize___block_invoke;
  block[3] = &unk_2796699A8;
  block[4] = self;
  if (renderingScopeForPhotoSize__onceToken != -1)
  {
    dispatch_once(&renderingScopeForPhotoSize__onceToken, block);
  }

  v4 = renderingScopeForPhotoSize__sAvatarImageRenderingScopes;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (id)avatarImageRenderer
{
  if (avatarImageRenderer_onceToken != -1)
  {
    [GKPlayer(UIPrivate) avatarImageRenderer];
  }

  v1 = avatarImageRenderer_sImageRenderer;

  return v1;
}

- (void)renderMonogramImageWithPhotoSize:()UIPrivate monogramString:handler:
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277D0C020];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayer+UI.m", 347, "-[GKPlayer(UIPrivate) renderMonogramImageWithPhotoSize:monogramString:handler:]"];
  v12 = [v10 dispatchGroupWithName:v11];

  if (v8)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__GKPlayer_UIPrivate__renderMonogramImageWithPhotoSize_monogramString_handler___block_invoke;
    v16[3] = &unk_27966CAC0;
    v16[4] = self;
    v19 = a3;
    v17 = v8;
    v18 = v12;
    [v18 perform:v16];
  }

  if (v9)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __79__GKPlayer_UIPrivate__renderMonogramImageWithPhotoSize_monogramString_handler___block_invoke_3;
    v13[3] = &unk_27966A480;
    v15 = v9;
    v14 = v12;
    [v14 notifyOnMainQueueWithBlock:v13];
  }
}

- (id)monogramColorIndex
{
  internal = [self internal];
  playerID = [internal playerID];
  v3 = [playerID componentsSeparatedByString:@":"];

  if ([v3 count] == 2)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    if ([v4 isEqualToString:@"G"])
    {

LABEL_5:
      v7 = MEMORY[0x277CCABB0];
      v8 = [v3 objectAtIndexedSubscript:1];
      integerValue = [v8 integerValue];
      availableColors = [MEMORY[0x277D3A1C0] availableColors];
      v11 = [v7 numberWithUnsignedInteger:{integerValue % objc_msgSend(availableColors, "count")}];

      goto LABEL_7;
    }

    v5 = [v3 objectAtIndexedSubscript:0];
    v6 = [v5 isEqualToString:@"U"];

    if (v6)
    {
      goto LABEL_5;
    }
  }

  v11 = 0;
LABEL_7:

  return v11;
}

+ (id)monogramQueue
{
  if (monogramQueue_onceToken != -1)
  {
    +[GKPlayer(UIPrivate) monogramQueue];
  }

  v1 = monogramQueue_sMonogramQueue;

  return v1;
}

- (void)monogramImageWithPhotoSize:()UIPrivate handler:
{
  v29 = a4;
  v6 = MEMORY[0x277D0C020];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayer+UI.m", 412, "-[GKPlayer(UIPrivate) monogramImageWithPhotoSize:handler:]"];
  v28 = [v6 dispatchGroupWithName:v7];

  v8 = [objc_opt_class() sizeForPhotoSize:a3];
  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  v10 = [mEMORY[0x277D0C8C8] monogramSourceWithDimension:v8];

  internal = [self internal];
  playerID = [internal playerID];

  if ([self isAutomatchPlayer])
  {
    internal2 = [self internal];
    automatchPosition = [internal2 automatchPosition];
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:automatchPosition];
    v17 = [v15 stringWithFormat:@"-%@", v16];
    v18 = [playerID stringByAppendingString:v17];

    playerID = v18;
  }

  v19 = GKAvatarSubdirectoryNameForPlayerID();
  v20 = MEMORY[0x277CCABB0];
  internal3 = [self internal];
  alias = [internal3 alias];
  v23 = [v20 numberWithUnsignedInteger:{objc_msgSend(alias, "hash")}];
  v24 = [v19 stringByAppendingFormat:@"_%@", v23];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __58__GKPlayer_UIPrivate__monogramImageWithPhotoSize_handler___block_invoke;
  v33[3] = &unk_27966D638;
  v33[4] = self;
  v25 = v10;
  v34 = v25;
  v26 = v24;
  v35 = v26;
  v27 = v28;
  v36 = v27;
  v37 = a3;
  [v27 perform:v33];
  if (v29)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __58__GKPlayer_UIPrivate__monogramImageWithPhotoSize_handler___block_invoke_53;
    v30[3] = &unk_27966A480;
    v32 = v29;
    v31 = v27;
    [v31 notifyOnMainQueueWithBlock:v30];
  }
}

- (void)playerAvatarDataWithSize:()UIPrivate completionHandler:
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__GKPlayer_UIPrivate__playerAvatarDataWithSize_completionHandler___block_invoke;
  v8[3] = &unk_27966D660;
  v9 = v6;
  v7 = v6;
  [self _playerAvatarWithSize:a3 completionHandler:v8];
}

- (void)playerAvatarImageWithSize:()UIPrivate completionHandler:
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__GKPlayer_UIPrivate__playerAvatarImageWithSize_completionHandler___block_invoke;
  v8[3] = &unk_27966D660;
  v9 = v6;
  v7 = v6;
  [self _playerAvatarWithSize:a3 completionHandler:v8];
}

- (void)_playerAvatarWithSize:()UIPrivate completionHandler:
{
  v6 = a4;
  v7 = MEMORY[0x277D0C020];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayer+UI.m", 481, "-[GKPlayer(UIPrivate) _playerAvatarWithSize:completionHandler:]"];
  v9 = [v7 dispatchGroupWithName:v8];

  [v9 setObject:self forKeyedSubscript:@"reference"];
  contact = [self contact];
  v11 = contact;
  if (contact)
  {
    contact2 = contact;
  }

  else
  {
    internal = [self internal];
    contact2 = [internal contact];
  }

  internal2 = [self internal];
  playerID = [internal2 playerID];

  if (playerID)
  {
    if ([self hasPhoto])
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke;
      v37[3] = &unk_27966B2C0;
      v37[4] = self;
      v39 = a3;
      v38 = v9;
      [v38 perform:v37];
      v16 = v38;
LABEL_15:

      goto LABEL_22;
    }

    thumbnailImageData = [contact2 thumbnailImageData];

    if (!thumbnailImageData)
    {
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_63;
      v34[3] = &unk_27966B2C0;
      v34[4] = self;
      v36 = a3;
      v35 = v9;
      [v35 perform:v34];
      v16 = v35;
      goto LABEL_15;
    }

    v18 = objc_alloc_init(MEMORY[0x277D0C860]);
    v19 = MEMORY[0x277D755B8];
    thumbnailImageData2 = [contact2 thumbnailImageData];
    v21 = [v19 _gkImageWithCheckedData:thumbnailImageData2];

    v22 = MEMORY[0x277D0C2A0];
    v23 = *MEMORY[0x277D0C2A0];
    if (v21)
    {
      if (!v23)
      {
        v24 = GKOSLoggers();
        v23 = *v22;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [GKPlayer(UIPrivate) _playerAvatarWithSize:completionHandler:];
      }

      [v18 setImage:v21];
      thumbnailImageData3 = [contact2 thumbnailImageData];
      [v18 setImageData:thumbnailImageData3];
    }

    else
    {
      if (!v23)
      {
        v26 = GKOSLoggers();
        v23 = *v22;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [GKPlayer(UIPrivate) _playerAvatarWithSize:completionHandler:];
      }

      thumbnailImageData3 = [self placeholderImageWithPhotoSize:a3];
      [v18 setImage:thumbnailImageData3];
      v27 = UIImagePNGRepresentation(thumbnailImageData3);
      [v18 setImageData:v27];
    }

    [v9 setResult:v18];
  }

LABEL_22:
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_65;
  v30[3] = &unk_279669D60;
  selfCopy = self;
  v33 = v6;
  v31 = v9;
  v28 = v9;
  v29 = v6;
  [v28 notifyOnMainQueueWithBlock:v30];
}

- (void)clearInMemoryCachedAvatars
{
  internal = [self internal];
  playerID = [internal playerID];

  if (playerID)
  {
    internal2 = [self internal];
    playerID2 = [internal2 playerID];
    v10 = GKAvatarSubdirectoryNameForPlayerID();

    for (i = 0; i != 4; ++i)
    {
      v7 = [objc_opt_class() sizeForPhotoSize:qword_24E367C38[i]];
      mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
      v9 = [mEMORY[0x277D0C8C8] avatarSourceWithDimension:v7];

      [v9 clearCachedImageForIdentifier:v10];
    }
  }
}

+ (uint64_t)preloadImagesForPlayers:()UIPrivate size:
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__GKPlayer_UIPrivate__preloadImagesForPlayers_size___block_invoke;
  v5[3] = &__block_descriptor_40_e25_v32__0__GKPlayer_8Q16_B24l;
  v5[4] = a4;
  return [a3 enumerateObjectsUsingBlock:v5];
}

- (void)loadPlayerContactForAvatarControllerWithImageSize:()UIPrivate completion:
{
  v6 = a4;
  v7 = MEMORY[0x277D0C020];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayer+UI.m", 598, "-[GKPlayer(UIPrivate) loadPlayerContactForAvatarControllerWithImageSize:completion:]"];
  v9 = [v7 dispatchGroupWithName:v8];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__GKPlayer_UIPrivate__loadPlayerContactForAvatarControllerWithImageSize_completion___block_invoke;
  v20[3] = &unk_27966B2C0;
  v20[4] = self;
  v22 = a3;
  v10 = v9;
  v21 = v10;
  [v10 perform:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__GKPlayer_UIPrivate__loadPlayerContactForAvatarControllerWithImageSize_completion___block_invoke_3;
  v18[3] = &unk_279669A20;
  v18[4] = self;
  v11 = v10;
  v19 = v11;
  [v11 perform:v18];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__GKPlayer_UIPrivate__loadPlayerContactForAvatarControllerWithImageSize_completion___block_invoke_4;
  v14[3] = &unk_279669A48;
  selfCopy = self;
  v17 = v6;
  v15 = v11;
  v12 = v6;
  v13 = v11;
  [v13 notifyOnMainQueueWithBlock:v14];
}

@end