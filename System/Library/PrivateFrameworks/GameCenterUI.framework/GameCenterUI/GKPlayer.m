@interface GKPlayer
@end

@implementation GKPlayer

void __53__GKPlayer_UIPrivate__showAlertWithTitle_andMessage___block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277D75D28] _gkKeyWindowRootViewController];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();
  v6 = [v7 _gkPresentAlertWithTitle:v3 message:v2 buttonTitle:v5];
}

void __93__GKPlayer_UIPrivate__showConfirmationAlertWithTitle_message_buttonTitle_block_cancelAction___block_invoke(void *a1)
{
  v3 = [MEMORY[0x277D75D28] _gkKeyWindowRootViewController];
  v2 = [v3 _gkPresentConfirmationAlertWithTitle:a1[4] message:a1[5] buttonTitle:a1[6] block:a1[7] cancelAction:a1[8]];
}

void __61__GKPlayer_UIPrivate__renderingScopeForPhotoSize_colorIndex___block_invoke()
{
  v28 = *MEMORY[0x277D85DE8];
  v20 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [MEMORY[0x277D3A1C0] availableColors];
  v0 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v0)
  {
    v1 = v0;
    v2 = *v22;
    do
    {
      v3 = 0;
      do
      {
        if (*v22 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v21 + 1) + 8 * v3);
        v5 = [MEMORY[0x277D0C8A8] sharedController];
        [v5 greatestScreenScale];
        v7 = v6;

        v8 = GKShouldLayoutRTL();
        v9 = [objc_opt_class() sizeForPhotoSize:0];
        v10 = [MEMORY[0x277CBDBE0] scopeWithPointSize:v8 scale:0 rightToLeft:v4 style:v9 color:{v9, v7}];
        v11 = [objc_opt_class() sizeForPhotoSize:1];
        v12 = [MEMORY[0x277CBDBE0] scopeWithPointSize:v8 scale:0 rightToLeft:v4 style:v11 color:{v11, v7}];
        v13 = [objc_opt_class() sizeForPhotoSize:0x10000];
        v14 = [MEMORY[0x277CBDBE0] scopeWithPointSize:v8 scale:0 rightToLeft:v4 style:v13 color:{v13, v7}];
        v15 = [objc_opt_class() sizeForPhotoSize:65537];
        v16 = [MEMORY[0x277CBDBE0] scopeWithPointSize:v8 scale:0 rightToLeft:v4 style:v15 color:{v15, v7}];
        v25[0] = &unk_2861895A0;
        v25[1] = &unk_2861895B8;
        v26[0] = v10;
        v26[1] = v12;
        v25[2] = &unk_2861895D0;
        v25[3] = &unk_2861895E8;
        v26[2] = v14;
        v26[3] = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
        [v20 addObject:v17];

        ++v3;
      }

      while (v1 != v3);
      v1 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v1);
  }

  v18 = renderingScopeForPhotoSize_colorIndex__sAvatarImageRenderingScopes;
  renderingScopeForPhotoSize_colorIndex__sAvatarImageRenderingScopes = v20;
}

void __50__GKPlayer_UIPrivate__renderingScopeForPhotoSize___block_invoke()
{
  v15[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D0C8A8] sharedController];
  [v0 greatestScreenScale];
  v2 = v1;

  v3 = GKShouldLayoutRTL();
  v4 = [objc_opt_class() sizeForPhotoSize:0];
  v5 = [MEMORY[0x277CBDBE0] scopeWithPointSize:v3 scale:0 rightToLeft:v4 style:{v4, v2}];
  v6 = [objc_opt_class() sizeForPhotoSize:1];
  v7 = [MEMORY[0x277CBDBE0] scopeWithPointSize:v3 scale:0 rightToLeft:v6 style:{v6, v2}];
  v8 = [objc_opt_class() sizeForPhotoSize:0x10000];
  v9 = [MEMORY[0x277CBDBE0] scopeWithPointSize:v3 scale:0 rightToLeft:v8 style:{v8, v2}];
  v10 = [objc_opt_class() sizeForPhotoSize:65537];
  v11 = [MEMORY[0x277CBDBE0] scopeWithPointSize:v3 scale:0 rightToLeft:v10 style:{v10, v2}];
  v14[0] = &unk_2861895A0;
  v14[1] = &unk_2861895B8;
  v15[0] = v5;
  v15[1] = v7;
  v14[2] = &unk_2861895D0;
  v14[3] = &unk_2861895E8;
  v15[2] = v9;
  v15[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v13 = renderingScopeForPhotoSize__sAvatarImageRenderingScopes;
  renderingScopeForPhotoSize__sAvatarImageRenderingScopes = v12;
}

void __42__GKPlayer_UIPrivate__avatarImageRenderer__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBDBD0]);
  v3 = [MEMORY[0x277CBDBD8] defaultSettings];
  v1 = [v0 initWithSettings:v3];
  v2 = avatarImageRenderer_sImageRenderer;
  avatarImageRenderer_sImageRenderer = v1;
}

void __79__GKPlayer_UIPrivate__renderMonogramImageWithPhotoSize_monogramString_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) monogramColorIndex];
  v5 = v4;
  if (v4)
  {
    [*(a1 + 32) renderingScopeForPhotoSize:*(a1 + 56) colorIndex:{objc_msgSend(v4, "integerValue")}];
  }

  else
  {
    [*(a1 + 32) renderingScopeForPhotoSize:*(a1 + 56)];
  }
  v6 = ;
  v7 = [*(a1 + 32) avatarImageRenderer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__GKPlayer_UIPrivate__renderMonogramImageWithPhotoSize_monogramString_handler___block_invoke_2;
  v11[3] = &unk_27966B008;
  v8 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = v3;
  v9 = v3;
  v10 = [v7 renderMonogramForString:v8 scope:v6 imageHandler:v11];
}

uint64_t __79__GKPlayer_UIPrivate__renderMonogramImageWithPhotoSize_monogramString_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __79__GKPlayer_UIPrivate__renderMonogramImageWithPhotoSize_monogramString_handler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  (*(v1 + 16))(v1, v2);
}

uint64_t __36__GKPlayer_UIPrivate__monogramQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.gamecenter.monogramqueue", MEMORY[0x277D85CD8]);
  v1 = monogramQueue_sMonogramQueue;
  monogramQueue_sMonogramQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __58__GKPlayer_UIPrivate__monogramImageWithPhotoSize_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() monogramQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__GKPlayer_UIPrivate__monogramImageWithPhotoSize_handler___block_invoke_2;
  v11[3] = &unk_27966D610;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = *(a1 + 32);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v12 = v8;
  v13 = v7;
  v9 = *(a1 + 64);
  v14 = v3;
  v15 = v9;
  v10 = v3;
  dispatch_async(v4, v11);
}

void __58__GKPlayer_UIPrivate__monogramImageWithPhotoSize_handler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__GKPlayer_UIPrivate__monogramImageWithPhotoSize_handler___block_invoke_3;
  v13[3] = &unk_27966D5E8;
  v4 = (a1 + 56);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v16 = v6;
  v17 = v7;
  *&v8 = v5;
  *(&v8 + 1) = *v4;
  v12 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v14 = v12;
  v15 = v11;
  [v2 cachedImageFromGamedWithSubdirectory:v3 handler:v13];
}

void __58__GKPlayer_UIPrivate__monogramImageWithPhotoSize_handler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setResult:a2];
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    v4 = [*(a1 + 40) stringForMonogram];
    v5 = *(a1 + 72);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__GKPlayer_UIPrivate__monogramImageWithPhotoSize_handler___block_invoke_4;
    v7[3] = &unk_27966D5C0;
    v6 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    [v6 renderMonogramImageWithPhotoSize:v5 monogramString:v4 handler:v7];
  }
}

void __58__GKPlayer_UIPrivate__monogramImageWithPhotoSize_handler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setResult:v3];
    [*(a1 + 40) cacheImageUsingGamed:v3 cacheSubdirectory:*(a1 + 48) withHandler:0];
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __58__GKPlayer_UIPrivate__monogramImageWithPhotoSize_handler___block_invoke_4_cold_1();
    }
  }

  (*(*(a1 + 56) + 16))();
}

void __58__GKPlayer_UIPrivate__monogramImageWithPhotoSize_handler___block_invoke_53(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  (*(v1 + 16))(v1, v2);
}

void __66__GKPlayer_UIPrivate__playerAvatarDataWithSize_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = [a2 imageData];
  (*(v6 + 16))(v6, v8, a3, v7);
}

void __67__GKPlayer_UIPrivate__playerAvatarImageWithSize_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = [a2 image];
  (*(v6 + 16))(v6, v8, a3, v7);
}

void __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) photoURLForSize:*(a1 + 48)];
  v5 = MEMORY[0x277D0C2A0];
  v6 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v7 = GKOSLoggers();
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_cold_1(v4, v6);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
LABEL_5:
    v8 = [objc_opt_class() sizeForPhotoSize:*(a1 + 48)];
    v9 = [*(a1 + 32) internal];
    v10 = [v9 playerID];
    v11 = GKAvatarSubdirectoryNameForPlayerID();

    v12 = [MEMORY[0x277D0C8C8] sharedTheme];
    v13 = [v12 avatarSourceWithDimension:v8];

    v14 = dispatch_get_global_queue(33, 0);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_58;
    v24[3] = &unk_27966D6B0;
    v15 = *(a1 + 32);
    v25 = *(a1 + 40);
    v28 = v3;
    v16 = v4;
    v17 = *(a1 + 32);
    v26 = v16;
    v27 = v17;
    v29 = *(a1 + 48);
    [v13 loadAndCacheAvatarFromGamedForURLString:v16 useUIImage:1 cacheSubdirectory:v11 reference:v15 queue:v14 handler:v24];

    goto LABEL_12;
  }

  v18 = *v5;
  if (!*v5)
  {
    v19 = GKOSLoggers();
    v18 = *v5;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 32);
    v21 = v18;
    v22 = [v20 alias];
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
    *buf = 138412546;
    v31 = v22;
    v32 = 2112;
    v33 = v23;
    _os_log_impl(&dword_24DE53000, v21, OS_LOG_TYPE_INFO, "%@ has no photo url for photo size: %@", buf, 0x16u);
  }

  v3[2](v3);
LABEL_12:
}

void __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setResult:v5];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v7 = GKOSLoggers();
    }

    v8 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_58_cold_1(a1, v8);
    }

    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_59;
    v11[3] = &unk_27966D688;
    v11[4] = v9;
    v14 = v10;
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    [v9 monogramImageWithPhotoSize:v10 handler:v11];
  }
}

void __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_59(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277D0C860]);
  if (!v3)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_59_cold_1();
    }

    v3 = [*(a1 + 32) placeholderImageWithPhotoSize:*(a1 + 56)];
  }

  [v4 setImage:v3];
  v6 = UIImagePNGRepresentation(v3);
  [v4 setImageData:v6];

  [*(a1 + 40) setResult:v4];
  (*(*(a1 + 48) + 16))();
}

void __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_63(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D0C2A0];
  v5 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_63_cold_1();
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_64;
  v10[3] = &unk_27966D688;
  v10[4] = v7;
  v13 = v8;
  v11 = *(a1 + 40);
  v12 = v3;
  v9 = v3;
  [v7 monogramImageWithPhotoSize:v8 handler:v10];
}

void __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277D0C860]);
  if (!v3)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_59_cold_1();
    }

    v3 = [*(a1 + 32) placeholderImageWithPhotoSize:*(a1 + 56)];
  }

  [v4 setImage:v3];
  v6 = UIImagePNGRepresentation(v3);
  [v4 setImageData:v6];

  [*(a1 + 40) setResult:v4];
  (*(*(a1 + 48) + 16))();
}

void __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_65(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5 = [*(a1 + 32) result];
  v3 = [*(a1 + 40) avatarType];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"reference"];
  (*(v2 + 16))(v2, v5, v3, v4);
}

void __84__GKPlayer_UIPrivate__loadPlayerContactForAvatarControllerWithImageSize_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__GKPlayer_UIPrivate__loadPlayerContactForAvatarControllerWithImageSize_completion___block_invoke_2;
  v7[3] = &unk_27966D718;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  [v5 _playerAvatarWithSize:v4 completionHandler:v7];
}

void __84__GKPlayer_UIPrivate__loadPlayerContactForAvatarControllerWithImageSize_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 imageData];

  if (v3)
  {
    v4 = [v7 imageData];
    [*(a1 + 32) setResult:v4];
  }

  else
  {
    v5 = [v7 image];

    if (!v5)
    {
      goto LABEL_6;
    }

    v4 = [v7 image];
    v6 = UIImagePNGRepresentation(v4);
    [*(a1 + 32) setResult:v6];
  }

LABEL_6:
  (*(*(a1 + 40) + 16))();
}

void __84__GKPlayer_UIPrivate__loadPlayerContactForAvatarControllerWithImageSize_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_opt_new();
  v4 = [*(a1 + 32) internal];
  v5 = [v4 alias];
  [v6 setGivenName:v5];

  [*(a1 + 40) setObject:v6 forKeyedSubscript:@"contact"];
  v3[2](v3);
}

void __84__GKPlayer_UIPrivate__loadPlayerContactForAvatarControllerWithImageSize_completion___block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"contact"];
  v2 = [*(a1 + 32) result];
  [v3 setImageData:v2];

  (*(*(a1 + 48) + 16))();
}

void __55__GKPlayer_UI__loadPhotoForSize_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __55__GKPlayer_UI__loadPhotoForSize_withCompletionHandler___block_invoke_2;
    v4[3] = &unk_27966A480;
    v6 = *(a1 + 40);
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }

  else
  {
    [*(a1 + 32) _loadPhotoForSize:*(a1 + 48) withCompletionHandler:*(a1 + 40)];
  }
}

void __56__GKPlayer_UI___loadPhotoForSize_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__GKPlayer_UI___loadPhotoForSize_withCompletionHandler___block_invoke_2;
  v10[3] = &unk_27966D768;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v8 = *(a1 + 48);
  v13 = v3;
  v14 = v8;
  v9 = v3;
  [v5 playerAvatarImageWithSize:v4 completionHandler:v10];
}

void __56__GKPlayer_UI___loadPhotoForSize_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setResult:a2];
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 56);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__GKPlayer_UI___loadPhotoForSize_withCompletionHandler___block_invoke_3;
    v6[3] = &unk_27966B008;
    v5 = *(a1 + 40);
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    [v5 monogramImageWithPhotoSize:v4 handler:v6];
  }
}

uint64_t __56__GKPlayer_UI___loadPhotoForSize_withCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __56__GKPlayer_UI___loadPhotoForSize_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] userErrorForCode:26 underlyingError:0];
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  (*(v3 + 16))(v3, v4, v5);
}

void __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24DE53000, a2, OS_LOG_TYPE_DEBUG, "_playerAvatarWithSize: Player has an avatar image (%@), thus load that image", &v2, 0xCu);
}

void __63__GKPlayer_UIPrivate___playerAvatarWithSize_completionHandler___block_invoke_58_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "_playerAvatarWithSize: The avatar image URL points to a file that doesn't exist. Fall back to monogram. (URL: %@)", &v3, 0xCu);
}

@end