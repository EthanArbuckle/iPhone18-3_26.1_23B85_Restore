@interface GKGame
@end

@implementation GKGame

uint64_t __91__GKGame_GKSpringboardSupport__removeHistoryForGameWithBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __41__GKGame_UI__imageSourceForiOSIconStyle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setOutputSize:{87.0, 87.0}];
  imageSourceForiOSIconStyle__sharingImageSource = [*(a1 + 40) networkImageSourceWithName:@"DWIconsSharing" imageBrush:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

uint64_t __41__GKGame_UI__imageSourceForiOSIconStyle___block_invoke_2(uint64_t a1)
{
  imageSourceForiOSIconStyle__sImageSource = [*(a1 + 32) networkImageSourceWithName:@"DWIconsList" imageBrush:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

uint64_t __41__GKGame_UI__imageSourceForiOSIconStyle___block_invoke_3(uint64_t a1)
{
  imageSourceForiOSIconStyle__sImageSource_11 = [*(a1 + 32) networkImageSourceWithName:@"DWIconsDetail" imageBrush:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

void __41__GKGame_UI__imageSourceForiOSIconStyle___block_invoke_4(uint64_t a1)
{
  v4 = [MEMORY[0x277D0C870] brush];
  v2 = [*(a1 + 32) networkImageSourceWithName:@"DWIconsMessage" imageBrush:v4];
  v3 = imageSourceForiOSIconStyle__sImageSource_16;
  imageSourceForiOSIconStyle__sImageSource_16 = v2;
}

uint64_t __38__GKGame_UI___imageSourceForIconSize___block_invoke(uint64_t a1)
{
  _imageSourceForIconSize__source64 = [*(a1 + 32) networkImageSourceWithName:@"app-icon-64" imageBrush:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

uint64_t __38__GKGame_UI___imageSourceForIconSize___block_invoke_2(uint64_t a1)
{
  _imageSourceForIconSize__source128 = [*(a1 + 32) networkImageSourceWithName:@"app-icon-128" imageBrush:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

uint64_t __38__GKGame_UI___imageSourceForIconSize___block_invoke_3(uint64_t a1)
{
  _imageSourceForIconSize__source256 = [*(a1 + 32) networkImageSourceWithName:@"app-icon-256" imageBrush:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

uint64_t __38__GKGame_UI___imageSourceForIconSize___block_invoke_4(uint64_t a1)
{
  _imageSourceForIconSize__source512 = [*(a1 + 32) networkImageSourceWithName:@"app-icon-512" imageBrush:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

uint64_t __58__GKGame_UI__loadIconForSize_scale_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, 0);
  }

  return result;
}

uint64_t __53__GKGame_UI__loadIconForStyle_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, 0);
  }

  return result;
}

void __49__GKGame_UI__preloadIconsForGames_style_handler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__GKGame_UI__preloadIconsForGames_style_handler___block_invoke_2;
  v8[3] = &unk_27966AB68;
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v9 = v3;
  v10 = v4;
  v11 = v6;
  v7 = v3;
  [v5 perform:v8];
}

void __49__GKGame_UI__preloadIconsForGames_style_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) imageSourceForIconStyle:*(a1 + 40)];
  v5 = [*(a1 + 32) _imageURLForIconStyle:*(a1 + 40)];
  v6 = *(a1 + 48);
  v7 = [MEMORY[0x277D0C020] backgroundConcurrentQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__GKGame_UI__preloadIconsForGames_style_handler___block_invoke_3;
  v9[3] = &unk_27966AB40;
  v10 = v3;
  v8 = v3;
  [v4 loadImageForURLString:v5 reference:v6 queue:v7 handler:v9];
}

uint64_t __39__GKGame_UI__logoImageWithMaximumSize___block_invoke(uint64_t a1)
{
  logoImageWithMaximumSize__sImageSource = [*(a1 + 32) localImageSourceWithName:@"logo" imageBrush:0];

  return MEMORY[0x2821F96F8]();
}

@end