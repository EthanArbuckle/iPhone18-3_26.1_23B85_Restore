@interface UIImage
@end

@implementation UIImage

void __54__UIImage_GKAchievementProgress___gkQuestionMarkImage__block_invoke()
{
  v2 = [MEMORY[0x277D0C8C8] sharedTheme];
  v0 = [v2 achievementsNotStartedIcon];
  v1 = _gkQuestionMarkImage_sImage;
  _gkQuestionMarkImage_sImage = v0;
}

uint64_t __68__UIImage_GKAchievementProgress___gkMaskImageWithProgress_isDetail___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = _gkMaskImageWithProgress_isDetail__sMaskCache;
  _gkMaskImageWithProgress_isDetail__sMaskCache = v0;

  [_gkMaskImageWithProgress_isDetail__sMaskCache setName:@"com.apple.gamekit.achievement-progress-mask.cache"];
  v2 = _gkMaskImageWithProgress_isDetail__sMaskCache;

  return [v2 setCountLimit:20];
}

void __72__UIImage_GKDashboardUtils___gkMessageGroupImageWithIdentifier_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__UIImage_GKDashboardUtils___gkMessageGroupImageWithIdentifier_handler___block_invoke_2;
  v13[3] = &unk_27966D5E8;
  v6 = *(a1 + 48);
  v16 = v3;
  v7 = *(a1 + 56);
  v17 = *(a1 + 64);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v14 = v11;
  v15 = v10;
  v12 = v3;
  [v4 cachedImageFromGamedWithSubdirectory:v5 handler:v13];
}

void __72__UIImage_GKDashboardUtils___gkMessageGroupImageWithIdentifier_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setResult:a2];
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    v4 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__UIImage_GKDashboardUtils___gkMessageGroupImageWithIdentifier_handler___block_invoke_3;
    v11[3] = &unk_27966CD60;
    v5 = *(a1 + 40);
    v15 = *(a1 + 72);
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    *&v10 = v5;
    *(&v10 + 1) = v6;
    v12 = v10;
    v13 = v9;
    v14 = *(a1 + 64);
    dispatch_async(v4, v11);
  }
}

void __72__UIImage_GKDashboardUtils___gkMessageGroupImageWithIdentifier_handler___block_invoke_3(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = *(a1 + 32);
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v3 = IMSPIGetGroupPhotosForChatsWithGroupIDs();

  if ([v3 count])
  {
    v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
    v5 = [MEMORY[0x277D755B8] _gkImageWithCheckedData:v4];
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 72);
      [v5 scale];
      v9 = v8;
      v12.width = v7;
      v12.height = v7;
      UIGraphicsBeginImageContextWithOptions(v12, 0, v9);
      [v6 drawInRect:{0.0, 0.0, v7, v7}];
      v10 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      if (v10)
      {
        [*(a1 + 40) setResult:v10];
        [*(a1 + 48) cacheImageUsingGamed:v10 cacheSubdirectory:*(a1 + 56) withHandler:0];
      }
    }
  }

  (*(*(a1 + 64) + 16))();
}

void __72__UIImage_GKDashboardUtils___gkMessageGroupImageWithIdentifier_handler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  (*(v1 + 16))(v1, v2);
}

@end