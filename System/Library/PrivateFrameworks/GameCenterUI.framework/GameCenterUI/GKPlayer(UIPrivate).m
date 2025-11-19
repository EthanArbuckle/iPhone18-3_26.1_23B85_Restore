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

    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    v6 = v5 == 1;
    v7 = 256;
    v8 = 512;
  }

  else
  {
    v9 = [MEMORY[0x277D75418] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    v6 = v10 == 1;
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
  v4 = [a1 internal];
  v5 = [v4 photos];
  v6 = [objc_opt_class() sizeForPhotoSize:a3];
  v7 = [MEMORY[0x277D0C8A8] sharedController];
  [v7 greatestScreenScale];
  v8 = [v5 _gkImageURLForSize:v6 scale:?];

  return v8;
}

- (__CFString)stringForMonogram
{
  v2 = [a1 isAutomatchPlayer];
  v3 = [a1 internal];
  v4 = v3;
  if (v2)
  {
    v5 = [v3 automatchPosition];
    v6 = MEMORY[0x277CCABB8];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v8 = [v6 localizedStringFromNumber:v7 numberStyle:0];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v3 alias];

  if (v9)
  {
    v4 = [a1 internal];
    v7 = [v4 alias];
    v8 = [v7 _firstGrapheme];
    goto LABEL_5;
  }

  v4 = objc_opt_new();
  v12 = [a1 internal];
  v13 = [v12 firstName];
  [v4 setGivenName:v13];

  v14 = [a1 internal];
  v15 = [v14 lastName];
  [v4 setFamilyName:v15];

  v7 = objc_opt_new();
  [v7 setStyle:4];
  v16 = [v7 stringFromPersonNameComponents:v4];
  if ([v16 length] && objc_msgSend(v16, "length") <= 2)
  {
    v17 = v16;
  }

  else
  {
    if (![v16 length])
    {
      v18 = [a1 internal];
      v19 = [v18 compositeName];
      v20 = [v19 length];

      if (v20)
      {
        v21 = [a1 internal];
        v22 = [v21 compositeName];
        v10 = [v22 _firstGrapheme];
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

        v10 = @" ";
      }

      goto LABEL_15;
    }

    v17 = [v16 _firstGrapheme];
  }

  v10 = v17;
LABEL_15:

LABEL_6:

  return v10;
}

- (id)placeholderImageWithPhotoSize:()UIPrivate
{
  v3 = [objc_opt_class() sizeForPhotoSize:a3];
  v4 = [MEMORY[0x277D0C8C8] sharedTheme];
  v5 = [v4 placeholderSourceWithDimension:v3];

  v6 = [v5 cachedImageForIdentifier:@"placeholders"];
  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x277CBDBD0]);
    v8 = [MEMORY[0x277CBDBD8] defaultSettings];
    v9 = [v7 initWithSettings:v8];

    v10 = [v9 placeholderImageProvider];
    v11 = v3;
    v12 = [MEMORY[0x277D0C8A8] sharedController];
    [v12 greatestScreenScale];
    v6 = [v10 imageForSize:0 scale:v11 style:{v11, v13}];

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
  block[4] = a1;
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
  block[4] = a1;
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
    v16[4] = a1;
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
  v1 = [a1 internal];
  v2 = [v1 playerID];
  v3 = [v2 componentsSeparatedByString:@":"];

  if ([v3 count] == 2)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    if ([v4 isEqualToString:@"G"])
    {

LABEL_5:
      v7 = MEMORY[0x277CCABB0];
      v8 = [v3 objectAtIndexedSubscript:1];
      v9 = [v8 integerValue];
      v10 = [MEMORY[0x277D3A1C0] availableColors];
      v11 = [v7 numberWithUnsignedInteger:{v9 % objc_msgSend(v10, "count")}];

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
  v9 = [MEMORY[0x277D0C8C8] sharedTheme];
  v10 = [v9 monogramSourceWithDimension:v8];

  v11 = [a1 internal];
  v12 = [v11 playerID];

  if ([a1 isAutomatchPlayer])
  {
    v13 = [a1 internal];
    v14 = [v13 automatchPosition];
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
    v17 = [v15 stringWithFormat:@"-%@", v16];
    v18 = [v12 stringByAppendingString:v17];

    v12 = v18;
  }

  v19 = GKAvatarSubdirectoryNameForPlayerID();
  v20 = MEMORY[0x277CCABB0];
  v21 = [a1 internal];
  v22 = [v21 alias];
  v23 = [v20 numberWithUnsignedInteger:{objc_msgSend(v22, "hash")}];
  v24 = [v19 stringByAppendingFormat:@"_%@", v23];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __58__GKPlayer_UIPrivate__monogramImageWithPhotoSize_handler___block_invoke;
  v33[3] = &unk_27966D638;
  v33[4] = a1;
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
  [a1 _playerAvatarWithSize:a3 completionHandler:v8];
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
  [a1 _playerAvatarWithSize:a3 completionHandler:v8];
}

- (void)_playerAvatarWithSize:()UIPrivate completionHandler:
{
  v6 = a4;
  v7 = MEMORY[0x277D0C020];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayer+UI.m", 481, "-[GKPlayer(UIPrivate) _playerAvatarWithSize:completionHandler:]"];
  v9 = [v7 dispatchGroupWithName:v8];

  [v9 setObject:a1 forKeyedSubscript:@"reference"];
  v10 = [a1 contact];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [a1 internal];
    v12 = [v13 contact];
  }

  v14 = [a1 internal];
  v15 = [v14 playerID];

  if (v15)
  {
    if ([a1 hasPhoto])
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke;
      v37[3] = &unk_27966B2C0;
      v37[4] = a1;
      v39 = a3;
      v38 = v9;
      [v38 perform:v37];
      v16 = v38;
LABEL_15:

      goto LABEL_22;
    }

    v17 = [v12 thumbnailImageData];

    if (!v17)
    {
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_63;
      v34[3] = &unk_27966B2C0;
      v34[4] = a1;
      v36 = a3;
      v35 = v9;
      [v35 perform:v34];
      v16 = v35;
      goto LABEL_15;
    }

    v18 = objc_alloc_init(MEMORY[0x277D0C860]);
    v19 = MEMORY[0x277D755B8];
    v20 = [v12 thumbnailImageData];
    v21 = [v19 _gkImageWithCheckedData:v20];

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
      v25 = [v12 thumbnailImageData];
      [v18 setImageData:v25];
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

      v25 = [a1 placeholderImageWithPhotoSize:a3];
      [v18 setImage:v25];
      v27 = UIImagePNGRepresentation(v25);
      [v18 setImageData:v27];
    }

    [v9 setResult:v18];
  }

LABEL_22:
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_65;
  v30[3] = &unk_279669D60;
  v32 = a1;
  v33 = v6;
  v31 = v9;
  v28 = v9;
  v29 = v6;
  [v28 notifyOnMainQueueWithBlock:v30];
}

- (void)clearInMemoryCachedAvatars
{
  v2 = [a1 internal];
  v3 = [v2 playerID];

  if (v3)
  {
    v4 = [a1 internal];
    v5 = [v4 playerID];
    v10 = GKAvatarSubdirectoryNameForPlayerID();

    for (i = 0; i != 4; ++i)
    {
      v7 = [objc_opt_class() sizeForPhotoSize:qword_24E367C38[i]];
      v8 = [MEMORY[0x277D0C8C8] sharedTheme];
      v9 = [v8 avatarSourceWithDimension:v7];

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
  v20[4] = a1;
  v22 = a3;
  v10 = v9;
  v21 = v10;
  [v10 perform:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__GKPlayer_UIPrivate__loadPlayerContactForAvatarControllerWithImageSize_completion___block_invoke_3;
  v18[3] = &unk_279669A20;
  v18[4] = a1;
  v11 = v10;
  v19 = v11;
  [v11 perform:v18];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__GKPlayer_UIPrivate__loadPlayerContactForAvatarControllerWithImageSize_completion___block_invoke_4;
  v14[3] = &unk_279669A48;
  v16 = a1;
  v17 = v6;
  v15 = v11;
  v12 = v6;
  v13 = v11;
  [v13 notifyOnMainQueueWithBlock:v14];
}

@end