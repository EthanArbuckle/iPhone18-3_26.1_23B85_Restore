@interface GKGame(UI)
+ (__CFString)platformDisplayString:()UI;
+ (double)serverImageSizeForIconStyle:()UI;
+ (void)preloadIconsForGames:()UI style:handler:;
- (id)_imageURLForIconStyle:()UI;
- (id)cachedIconForStyle:()UI;
- (id)iconForStyle:()UI;
- (id)imageSourceForIconStyle:()UI;
- (id)imageSourceForiOSIconStyle:()UI;
- (id)loadIconForSize:()UI scale:withCompletionHandler:;
- (id)loadIconForStyle:()UI withCompletionHandler:;
- (id)localImageSourceWithName:()UI imageBrush:;
- (id)macBrushForIconStyle:()UI;
- (id)networkImageSourceWithName:()UI imageBrush:;
- (id)utilityService;
- (uint64_t)_imageSourceForIconSize:()UI;
- (uint64_t)isInstalled;
- (void)logoImageWithMaximumSize:()UI;
@end

@implementation GKGame(UI)

- (uint64_t)isInstalled
{
  v2 = [a1 bundleIdentifier];

  if (v2)
  {
    return 0;
  }

  v4 = [MEMORY[0x277D0BFE0] defaultWorkspace];
  v5 = [a1 bundleIdentifier];
  v6 = [v4 applicationIsInstalled:v5];

  return v6;
}

- (id)utilityService
{
  v0 = [MEMORY[0x277D0C010] daemonProxy];
  v1 = [v0 utilityService];

  return v1;
}

- (id)networkImageSourceWithName:()UI imageBrush:
{
  v5 = MEMORY[0x277D0C898];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithName:v7 imageBrush:v6];

  return v8;
}

- (id)localImageSourceWithName:()UI imageBrush:
{
  v5 = MEMORY[0x277D0C880];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithName:v7 imageBrush:v6];

  return v8;
}

+ (double)serverImageSizeForIconStyle:()UI
{
  if (a3 > 7)
  {
    switch(a3)
    {
      case 8:
        return 64.0;
      case 9:
        return 256.0;
      case 10:
        return 64.0;
    }

    goto LABEL_14;
  }

  if ((a3 - 4) < 4)
  {
    return 128.0;
  }

  if ((a3 - 2) >= 2)
  {
LABEL_14:
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 1)
    {
      result = 128.0;
      if (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0)
      {
        return result;
      }
    }

    return 64.0;
  }

  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 1)
  {
    return 128.0;
  }

  result = 256.0;
  if (*MEMORY[0x277D0C258] == 1 && (*MEMORY[0x277D0C8F0] & 1) == 0)
  {
    return 128.0;
  }

  return result;
}

- (id)_imageURLForIconStyle:()UI
{
  [objc_opt_class() serverImageSizeForIconStyle:a3];
  v5 = v4;
  v6 = [a1 internal];
  v7 = [v6 icons];
  v8 = [MEMORY[0x277D0C8A8] sharedController];
  [v8 greatestScreenScale];
  v9 = [v7 _gkImageURLForSize:v5 scale:?];

  return v9;
}

- (id)imageSourceForiOSIconStyle:()UI
{
  v5 = [MEMORY[0x277D0C8E0] brush];
  v6 = v5;
  if (a3 > 9)
  {
    goto LABEL_15;
  }

  if (((1 << a3) & 0x6C) != 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__GKGame_UI__imageSourceForiOSIconStyle___block_invoke_3;
    block[3] = &unk_279669E48;
    block[4] = a1;
    v12 = v5;
    if (imageSourceForiOSIconStyle__onceToken_12 != -1)
    {
      dispatch_once(&imageSourceForiOSIconStyle__onceToken_12, block);
    }

    v7 = imageSourceForiOSIconStyle__sImageSource_11;
    v8 = v12;
LABEL_6:

    goto LABEL_7;
  }

  if (a3 == 7)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__GKGame_UI__imageSourceForiOSIconStyle___block_invoke;
    v15[3] = &unk_279669E48;
    v16 = v5;
    v17 = a1;
    if (imageSourceForiOSIconStyle__onceToken != -1)
    {
      dispatch_once(&imageSourceForiOSIconStyle__onceToken, v15);
    }

    v7 = imageSourceForiOSIconStyle__sharingImageSource;
    v8 = v16;
    goto LABEL_6;
  }

  if (a3 != 9)
  {
LABEL_15:
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __41__GKGame_UI__imageSourceForiOSIconStyle___block_invoke_2;
    v13[3] = &unk_279669E48;
    v13[4] = a1;
    v14 = v5;
    if (imageSourceForiOSIconStyle__onceToken_7 != -1)
    {
      dispatch_once(&imageSourceForiOSIconStyle__onceToken_7, v13);
    }

    v7 = imageSourceForiOSIconStyle__sImageSource;
    v8 = v14;
    goto LABEL_6;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__GKGame_UI__imageSourceForiOSIconStyle___block_invoke_4;
  v10[3] = &unk_2796699A8;
  v10[4] = a1;
  if (imageSourceForiOSIconStyle__onceToken_17 != -1)
  {
    dispatch_once(&imageSourceForiOSIconStyle__onceToken_17, v10);
  }

  v7 = imageSourceForiOSIconStyle__sImageSource_16;
LABEL_7:

  return v7;
}

- (id)macBrushForIconStyle:()UI
{
  v4 = [MEMORY[0x277D0C890] brush];
  [objc_opt_class() serverImageSizeForIconStyle:a3];
  [v4 setOutputSize:?];

  return v4;
}

- (id)imageSourceForIconStyle:()UI
{
  v5 = [a1 imageSourceForiOSIconStyle:?];
  if ([a1 platform] == 2)
  {
    v6 = [a1 macBrushForIconStyle:a3];
    v7 = [MEMORY[0x277D0C8C8] sharedTheme];
    v8 = [v7 macGameIconSource];

    v5 = [v8 subsourceWithBrush:v6];
  }

  return v5;
}

- (id)iconForStyle:()UI
{
  v5 = [a1 _imageURLForIconStyle:?];
  v6 = [a1 imageSourceForIconStyle:a3];
  v7 = [v6 cachedImageForIdentifier:v5];

  return v7;
}

- (id)cachedIconForStyle:()UI
{
  v5 = [a1 _imageURLForIconStyle:?];
  v6 = [a1 imageSourceForIconStyle:a3];
  v7 = [v6 fastCachedOrDefaultImageForIdentifier:v5];

  return v7;
}

- (uint64_t)_imageSourceForIconSize:()UI
{
  if (a2 != a3)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/CommonUI/GKGame+UI.m"];
    v8 = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (size.width == size.height)\n[%s (%s:%d)]", v6, "-[GKGame(UI) _imageSourceForIconSize:]", objc_msgSend(v8, "UTF8String"), 241];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  v10 = [MEMORY[0x277D0C8D8] brush];
  v11 = v10;
  if (a2 <= 64.0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__GKGame_UI___imageSourceForIconSize___block_invoke;
    block[3] = &unk_279669E48;
    block[4] = a1;
    v12 = &v24;
    v24 = v10;
    if (_imageSourceForIconSize__onceToken != -1)
    {
      dispatch_once(&_imageSourceForIconSize__onceToken, block);
    }

    v13 = &_imageSourceForIconSize__source64;
  }

  else if (a2 <= 128.0)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __38__GKGame_UI___imageSourceForIconSize___block_invoke_2;
    v21[3] = &unk_279669E48;
    v21[4] = a1;
    v12 = &v22;
    v22 = v10;
    if (_imageSourceForIconSize__onceToken_43 != -1)
    {
      dispatch_once(&_imageSourceForIconSize__onceToken_43, v21);
    }

    v13 = &_imageSourceForIconSize__source128;
  }

  else if (a2 <= 256.0)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __38__GKGame_UI___imageSourceForIconSize___block_invoke_3;
    v19[3] = &unk_279669E48;
    v19[4] = a1;
    v12 = &v20;
    v20 = v10;
    if (_imageSourceForIconSize__onceToken_47 != -1)
    {
      dispatch_once(&_imageSourceForIconSize__onceToken_47, v19);
    }

    v13 = &_imageSourceForIconSize__source256;
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __38__GKGame_UI___imageSourceForIconSize___block_invoke_4;
    v17[3] = &unk_279669E48;
    v17[4] = a1;
    v12 = &v18;
    v18 = v10;
    if (_imageSourceForIconSize__onceToken_51 != -1)
    {
      dispatch_once(&_imageSourceForIconSize__onceToken_51, v17);
    }

    v13 = &_imageSourceForIconSize__source512;
  }

  v14 = *v13;
  v15 = *v13;

  return v14;
}

- (id)loadIconForSize:()UI scale:withCompletionHandler:
{
  v10 = a6;
  v11 = [a1 _imageSourceForIconSize:{a2 * a4, a3 * a4}];
  v12 = [a1 internal];
  v13 = [v12 icons];
  v14 = v13;
  if (a4 == 0.0)
  {
    v15 = [MEMORY[0x277D0C8A8] sharedController];
    [v15 greatestScreenScale];
    v16 = [v14 _gkImageURLForSize:a2 scale:?];
  }

  else
  {
    v16 = [v13 _gkImageURLForSize:a2 scale:a4];
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__GKGame_UI__loadIconForSize_scale_withCompletionHandler___block_invoke;
  v20[3] = &unk_27966AB40;
  v21 = v10;
  v17 = v10;
  [v11 loadImageForURLString:v16 reference:a1 queue:MEMORY[0x277D85CD0] handler:v20];
  v18 = [v11 fastCachedImageForIdentifier:v16];

  return v18;
}

- (id)loadIconForStyle:()UI withCompletionHandler:
{
  v6 = a4;
  v7 = [a1 imageSourceForIconStyle:a3];
  v8 = [a1 _imageURLForIconStyle:a3];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__GKGame_UI__loadIconForStyle_withCompletionHandler___block_invoke;
  v12[3] = &unk_27966AB40;
  v13 = v6;
  v9 = v6;
  [v7 loadImageForURLString:v8 reference:a1 queue:MEMORY[0x277D85CD0] handler:v12];
  v10 = [v7 fastCachedImageForIdentifier:v8];

  return v10;
}

+ (void)preloadIconsForGames:()UI style:handler:
{
  v8 = a5;
  v9 = MEMORY[0x277D0C020];
  v10 = MEMORY[0x277CCACA8];
  v11 = a3;
  v12 = [v10 stringWithFormat:@"%s:%d %s", "GKGame+UI.m", 320, "+[GKGame(UI) preloadIconsForGames:style:handler:]"];
  v13 = [v9 dispatchGroupWithName:v12];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__GKGame_UI__preloadIconsForGames_style_handler___block_invoke;
  v15[3] = &unk_27966AB90;
  v14 = v13;
  v16 = v14;
  v17 = a4;
  v18 = a1;
  [v11 enumerateObjectsWithOptions:1 usingBlock:v15];

  if (v8)
  {
    [v14 notifyOnMainQueueWithBlock:v8];
  }
}

- (void)logoImageWithMaximumSize:()UI
{
  v45 = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__GKGame_UI__logoImageWithMaximumSize___block_invoke;
  block[3] = &unk_2796699A8;
  block[4] = a1;
  if (logoImageWithMaximumSize__onceToken != -1)
  {
    dispatch_once(&logoImageWithMaximumSize__onceToken, block);
  }

  v5 = [MEMORY[0x277D0C048] currentGame];
  v6 = [v5 bundleIdentifier];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-logo(%g, %g)", v6, *&a2, *&a3];
  v8 = [logoImageWithMaximumSize__sImageSource cachedImageForIdentifier:v7];
  if (!v8)
  {
    v9 = [MEMORY[0x277D0BFE0] defaultWorkspace];
    v10 = [v9 applicationProxyForBundleID:v6];
    v11 = [v10 bundle];
    v12 = [v11 infoDictionary];
    v13 = [v12 objectForKeyedSubscript:@"GKDashboardLogo"];
    if (v13)
    {
      v14 = [v11 pathForResource:v13 ofType:0];
      if (v14)
      {
        v15 = [MEMORY[0x277D755B8] imageWithContentsOfFile:v14];
        if (v15)
        {
          v8 = v15;
          [v15 size];
          if (v17 > a3)
          {
            v18 = v16 * (a3 / v17);
            v31 = v9;
            v19 = MEMORY[0x277D0C878];
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __39__GKGame_UI__logoImageWithMaximumSize___block_invoke_75;
            v32[3] = &unk_27966ABB8;
            v33 = v8;
            v34 = v18;
            v35 = a3;
            v20 = [v19 contextDrawnWithSize:4 scale:v32 options:v18 usingBlock:{a3, 1.0}];
            [logoImageWithMaximumSize__sImageSource cacheImageFromContext:v20 forIdentifier:v7];

            v9 = v31;
          }

LABEL_24:
          goto LABEL_25;
        }

        v24 = MEMORY[0x277D0C2A0];
        v25 = *MEMORY[0x277D0C2A0];
        if (!*MEMORY[0x277D0C2A0])
        {
          v26 = GKOSLoggers();
          v25 = *v24;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [(GKGame(UI) *)v14 logoImageWithMaximumSize:v25];
        }
      }

      else
      {
        v21 = MEMORY[0x277D0C2A0];
        v22 = *MEMORY[0x277D0C2A0];
        if (!*MEMORY[0x277D0C2A0])
        {
          v23 = GKOSLoggers();
          v22 = *v21;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [GKGame(UI) logoImageWithMaximumSize:v22];
        }
      }
    }

    if (!*MEMORY[0x277D0C2A0])
    {
      v27 = GKOSLoggers();
    }

    v28 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v38 = v10;
      v39 = 2112;
      v40 = v11;
      v41 = 2048;
      v42 = v12;
      v43 = 2112;
      v44 = v13;
      _os_log_error_impl(&dword_24DE53000, v28, OS_LOG_TYPE_ERROR, "Logo image missing: proxy:%@ bundle:%@ dict:%p resourceName:%@", buf, 0x2Au);
    }

    v8 = 0;
    goto LABEL_24;
  }

LABEL_25:
  v29 = v8;

  return v8;
}

+ (__CFString)platformDisplayString:()UI
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D0BF88]] || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D0BF90]))
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = GKGameCenterUIFrameworkBundle();
    v6 = GKGetLocalizedStringFromTableInBundle();
    v7 = GKGameCenterUIFrameworkBundle();
    v8 = GKGetLocalizedStringFromTableInBundle();
    v9 = [v4 stringWithFormat:@"%@, %@", v6, v8];

LABEL_9:
    goto LABEL_10;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D0BF70]] || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D0BF78]) || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D0BF80]))
  {
    v5 = GKGameCenterUIFrameworkBundle();
    v9 = GKGetLocalizedStringFromTableInBundle();
    goto LABEL_9;
  }

  v9 = &stru_28612D290;
LABEL_10:

  return v9;
}

- (void)logoImageWithMaximumSize:()UI .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24DE53000, a2, OS_LOG_TYPE_DEBUG, "Couldn't load image resource at path:%@", &v2, 0xCu);
}

- (void)logoImageWithMaximumSize:()UI .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = 0;
  _os_log_debug_impl(&dword_24DE53000, log, OS_LOG_TYPE_DEBUG, "Logo image resource missing:%@", &v1, 0xCu);
}

@end