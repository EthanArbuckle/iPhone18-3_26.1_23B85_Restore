@interface GKUITheme
+ (id)sharedTheme;
- (CGSize)authenticateExtensionFormSheetSize;
- (CGSize)formSheetSize;
- (GKNetworkImageSource)iconLeaderboardListSource;
- (GKNetworkImageSource)iconLeaderboardSetListSource;
- (GKNetworkImageSource)macGameIconSource;
- (GKNetworkImageSource)photoDetailSource;
- (GKNetworkImageSource)photoListSource;
- (GKNetworkImageSource)untreatedAchievementImageDetailSource;
- (GKNetworkImageSource)untreatedAchievementImageSource;
- (GKUITheme)init;
- (GKUtilityService)utilityService;
- (id)achievementsDefaultIcon;
- (id)achievementsNotStartedIcon;
- (id)avatarSourceWithDimension:(int64_t)a3;
- (id)defaultLeaderboardIcon;
- (id)eventIconImage;
- (id)groupImageSourceWithDimension:(int64_t)a3;
- (id)imageNamed:(id)a3;
- (id)localImageSourceWithName:(id)a3 imageBrush:(id)a4;
- (id)monogramSourceWithDimension:(int64_t)a3;
- (id)networkImageSourceWithName:(id)a3 imageBrush:(id)a4;
- (id)placeholderSourceWithDimension:(int64_t)a3;
- (id)playerPickerUnselectedImage;
- (id)resourceForSelector:(SEL)a3 missingHandler:(id)a4;
- (id)resourceWithName:(id)a3 missingHandler:(id)a4;
- (id)secondaryLabelCompositingFilter;
- (void)clearResourceCache;
@end

@implementation GKUITheme

- (GKUtilityService)utilityService
{
  v2 = [MEMORY[0x277D0C010] daemonProxy];
  v3 = [v2 utilityService];

  return v3;
}

- (void)clearResourceCache
{
  v2 = [(GKUITheme *)self resourceCache];
  [v2 removeAllObjects];

  +[GKImageSource clearCache];
}

+ (id)sharedTheme
{
  if (sharedTheme_onceToken != -1)
  {
    +[GKUITheme sharedTheme];
  }

  v3 = sharedTheme_sSharedTheme;

  return v3;
}

uint64_t __24__GKUITheme_sharedTheme__block_invoke()
{
  sharedTheme_sSharedTheme = objc_alloc_init(GKUITheme);

  return MEMORY[0x2821F96F8]();
}

- (GKUITheme)init
{
  v6.receiver = self;
  v6.super_class = GKUITheme;
  v2 = [(GKUITheme *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    [v3 setName:@"com.apple.gamekit.theme.cache"];
    [(GKUITheme *)v2 setResourceCache:v3];
    v4 = v2;
  }

  return v2;
}

- (id)imageNamed:(id)a3
{
  v3 = MEMORY[0x277D755B8];
  v4 = GKThemeBundle_onceToken[0];
  v5 = a3;
  if (v4 != -1)
  {
    [GKUITheme imageNamed:];
  }

  v6 = [v3 imageNamed:v5 inBundle:GKThemeBundle_bundle];

  return v6;
}

- (id)eventIconImage
{
  v3 = NSStringFromSelector(a2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__GKUITheme_eventIconImage__block_invoke;
  v6[3] = &unk_27967F758;
  v6[4] = self;
  v4 = [(GKUITheme *)self resourceWithName:v3 missingHandler:v6];

  return v4;
}

id __27__GKUITheme_eventIconImage__block_invoke(uint64_t a1)
{
  v2 = +[(GKBrush *)GKiOSAppIconBrush];
  v3 = [*(a1 + 32) imageNamed:@"GKEventIcon"];
  [v3 size];
  v4 = [v2 drawnImageForSize:0 opaque:v3 input:?];

  return v4;
}

- (id)secondaryLabelCompositingFilter
{
  if (*MEMORY[0x277D0C258])
  {
    return *MEMORY[0x277CDA5E8];
  }

  else
  {
    return 0;
  }
}

- (id)achievementsNotStartedIcon
{
  v2 = [MEMORY[0x277D755B8] systemImageNamed:@"lock.fill"];
  v3 = [v2 imageWithRenderingMode:2];

  return v3;
}

- (id)achievementsDefaultIcon
{
  v2 = [MEMORY[0x277D755B8] _systemImageNamed:@"list.portrait.on.rectangle.portrait.angled.fill"];
  v3 = [v2 imageWithRenderingMode:2];

  return v3;
}

- (CGSize)formSheetSize
{
  [MEMORY[0x277D75D28] defaultFormSheetSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)authenticateExtensionFormSheetSize
{
  v2 = 624.0;
  v3 = 780.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)resourceForSelector:(SEL)a3 missingHandler:(id)a4
{
  v6 = a4;
  v7 = NSStringFromSelector(a3);
  v8 = [(GKUITheme *)self resourceWithName:v7 missingHandler:v6];

  return v8;
}

- (id)resourceWithName:(id)a3 missingHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKUITheme *)self resourceCache];
  v9 = [v8 objectForKey:v6];
  v10 = v9;
  if (v7 && !v9)
  {
    v10 = v7[2](v7);
    [v8 setObject:v10 forKey:v6];
  }

  return v10;
}

- (id)networkImageSourceWithName:(id)a3 imageBrush:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(GKImageSource *)[GKNetworkImageSource alloc] initWithName:v6 imageBrush:v5];

  return v7;
}

- (id)localImageSourceWithName:(id)a3 imageBrush:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(GKImageSource *)[GKLocalImageSource alloc] initWithName:v6 imageBrush:v5];

  return v7;
}

- (GKNetworkImageSource)macGameIconSource
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__GKUITheme_macGameIconSource__block_invoke;
  v4[3] = &unk_27967F780;
  v4[4] = self;
  v2 = [(GKUITheme *)self resourceForSelector:a2 missingHandler:v4];

  return v2;
}

id __30__GKUITheme_macGameIconSource__block_invoke(uint64_t a1)
{
  v2 = +[(GKBrush *)GKMacGameIconBrush];
  v3 = [*(a1 + 32) networkImageSourceWithName:@"macGameIcon" imageBrush:v2];

  return v3;
}

- (GKNetworkImageSource)untreatedAchievementImageSource
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__GKUITheme_untreatedAchievementImageSource__block_invoke;
  v4[3] = &unk_27967F780;
  v4[4] = self;
  v2 = [(GKUITheme *)self resourceForSelector:a2 missingHandler:v4];

  return v2;
}

id __44__GKUITheme_untreatedAchievementImageSource__block_invoke(uint64_t a1)
{
  v2 = +[(GKBrush *)GKCircleImageBrush];
  v3 = [*(a1 + 32) networkImageSourceWithName:@"untreatedAchievementImageSource" imageBrush:v2];
  [v3 setShouldRenderDefaultImageWithBrush:1];

  return v3;
}

- (GKNetworkImageSource)untreatedAchievementImageDetailSource
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__GKUITheme_untreatedAchievementImageDetailSource__block_invoke;
  v4[3] = &unk_27967F780;
  v4[4] = self;
  v2 = [(GKUITheme *)self resourceForSelector:a2 missingHandler:v4];

  return v2;
}

id __50__GKUITheme_untreatedAchievementImageDetailSource__block_invoke(uint64_t a1)
{
  v2 = +[(GKBrush *)GKCircleImageBrush];
  v3 = [*(a1 + 32) networkImageSourceWithName:@"untreatedAchievementImageDetailSource" imageBrush:v2];
  [v3 setShouldRenderDefaultImageWithBrush:1];

  return v3;
}

- (id)avatarSourceWithDimension:(int64_t)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [v5 stringWithFormat:@"avatarSourceWithDimension%@", v6];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__GKUITheme_avatarSourceWithDimension___block_invoke;
  v10[3] = &unk_27967F7A8;
  v10[4] = self;
  v10[5] = a3;
  v8 = [(GKUITheme *)self resourceWithName:v7 missingHandler:v10];

  return v8;
}

id __39__GKUITheme_avatarSourceWithDimension___block_invoke(uint64_t a1)
{
  v2 = +[(GKBrush *)GKAvatarImageBrush];
  [v2 setDimension:*(a1 + 40)];
  v3 = [*(a1 + 32) networkImageSourceWithName:@"avatarImage" imageBrush:v2];

  return v3;
}

- (id)monogramSourceWithDimension:(int64_t)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [v5 stringWithFormat:@"monogramSource_%@", v6];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__GKUITheme_monogramSourceWithDimension___block_invoke;
  v10[3] = &unk_27967F7A8;
  v10[4] = self;
  v10[5] = a3;
  v8 = [(GKUITheme *)self resourceWithName:v7 missingHandler:v10];

  return v8;
}

id __41__GKUITheme_monogramSourceWithDimension___block_invoke(uint64_t a1)
{
  v2 = +[(GKBrush *)GKAvatarImageBrush];
  [v2 setDimension:*(a1 + 40)];
  v3 = [*(a1 + 32) localImageSourceWithName:@"monogram" imageBrush:v2];

  return v3;
}

- (id)placeholderSourceWithDimension:(int64_t)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [v5 stringWithFormat:@"placeholderSource_%@", v6];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__GKUITheme_placeholderSourceWithDimension___block_invoke;
  v10[3] = &unk_27967F7A8;
  v10[4] = self;
  v10[5] = a3;
  v8 = [(GKUITheme *)self resourceWithName:v7 missingHandler:v10];

  return v8;
}

id __44__GKUITheme_placeholderSourceWithDimension___block_invoke(uint64_t a1)
{
  v2 = +[(GKBrush *)GKAvatarImageBrush];
  [v2 setDimension:*(a1 + 40)];
  v3 = [*(a1 + 32) localImageSourceWithName:@"placeholder" imageBrush:v2];

  return v3;
}

- (id)groupImageSourceWithDimension:(int64_t)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [v5 stringWithFormat:@"groupImageSource_%@", v6];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__GKUITheme_groupImageSourceWithDimension___block_invoke;
  v10[3] = &unk_27967F7A8;
  v10[4] = self;
  v10[5] = a3;
  v8 = [(GKUITheme *)self resourceWithName:v7 missingHandler:v10];

  return v8;
}

id __43__GKUITheme_groupImageSourceWithDimension___block_invoke(uint64_t a1)
{
  v2 = +[(GKBrush *)GKAvatarImageBrush];
  [v2 setDimension:*(a1 + 40)];
  v3 = [*(a1 + 32) localImageSourceWithName:@"groupImage" imageBrush:v2];

  return v3;
}

- (GKNetworkImageSource)photoListSource
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__GKUITheme_photoListSource__block_invoke;
  v4[3] = &unk_27967F7D0;
  v4[4] = self;
  v2 = [(GKUITheme *)self resourceForSelector:a2 missingHandler:v4];

  return v2;
}

id __28__GKUITheme_photoListSource__block_invoke(uint64_t a1)
{
  v2 = +[(GKBrush *)GKCircleImageBrush];
  v3 = [*(a1 + 32) networkImageSourceWithName:@"listCircularPhoto" imageBrush:v2];
  v4 = [*(a1 + 32) defaultPlayerPhoto];
  [v3 setDefaultImage:v4];

  [v3 setShouldRenderDefaultImageWithBrush:0];

  return v3;
}

- (GKNetworkImageSource)photoDetailSource
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__GKUITheme_photoDetailSource__block_invoke;
  v4[3] = &unk_27967F7D0;
  v4[4] = self;
  v2 = [(GKUITheme *)self resourceForSelector:a2 missingHandler:v4];

  return v2;
}

id __30__GKUITheme_photoDetailSource__block_invoke(uint64_t a1)
{
  v2 = +[(GKBrush *)GKCircleImageBrush];
  [v2 setSizeOverride:{60.0, 60.0}];
  v3 = [*(a1 + 32) networkImageSourceWithName:@"detailCircularPhoto" imageBrush:v2];
  v4 = [*(a1 + 32) defaultPlayerPhoto];
  [v3 setDefaultImage:v4];

  [v3 setShouldRenderDefaultImageWithBrush:0];

  return v3;
}

- (GKNetworkImageSource)iconLeaderboardListSource
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__GKUITheme_iconLeaderboardListSource__block_invoke;
  v4[3] = &unk_27967F780;
  v4[4] = self;
  v2 = [(GKUITheme *)self resourceForSelector:a2 missingHandler:v4];

  return v2;
}

id __38__GKUITheme_iconLeaderboardListSource__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) networkImageSourceWithName:@"iconLeaderboardList" imageBrush:0];
  v3 = [*(a1 + 32) defaultLeaderboardIcon];
  v4 = +[GKColorPalette sharedPalette];
  v5 = [v4 disabledTextColor];
  v6 = [v3 _gkImageByTintingWithColor:v5];
  [v2 setDefaultImage:v6];

  [v2 setShouldRenderDefaultImageWithBrush:0];

  return v2;
}

- (GKNetworkImageSource)iconLeaderboardSetListSource
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__GKUITheme_iconLeaderboardSetListSource__block_invoke;
  v4[3] = &unk_27967F780;
  v4[4] = self;
  v2 = [(GKUITheme *)self resourceForSelector:a2 missingHandler:v4];

  return v2;
}

id __41__GKUITheme_iconLeaderboardSetListSource__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) networkImageSourceWithName:@"iconLeaderboardList" imageBrush:0];
  v3 = [*(a1 + 32) defaultLeaderboardIcon];
  v4 = +[GKColorPalette sharedPalette];
  v5 = [v4 disabledTextColor];
  v6 = [v3 _gkImageByTintingWithColor:v5];
  [v2 setDefaultImage:v6];

  [v2 setShouldRenderDefaultImageWithBrush:0];

  return v2;
}

- (id)defaultLeaderboardIcon
{
  v2 = [MEMORY[0x277D755B8] _systemImageNamed:@"list.bullet.below.star.filled"];
  v3 = [v2 imageWithRenderingMode:2];

  return v3;
}

- (id)playerPickerUnselectedImage
{
  v2 = [MEMORY[0x277D755B8] systemImageNamed:@"circle" compatibleWithTraitCollection:0];
  v3 = [MEMORY[0x277D75348] secondaryLabelColor];
  v4 = [v2 _flatImageWithColor:v3];

  return v4;
}

id __27__GKUITheme_statusDotImage__block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 scale];
  v2 = [GKImageContext imageDrawnWithSize:4 scale:&__block_literal_global_120 options:13.0 usingBlock:13.0, v1];
  v3 = [v2 imageWithRenderingMode:2];

  return v3;
}

void __27__GKUITheme_statusDotImage__block_invoke_2()
{
  v1 = [MEMORY[0x277D75348] blackColor];
  [v1 set];
  v0 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, 13.0, 13.0}];
  [v0 fill];
}

@end