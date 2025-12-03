@interface CRSUISystemWallpaper
+ (id)_wallpaperInfo;
+ (id)defaultWallpaper;
+ (id)wallpaperWithIdentifier:(id)identifier;
+ (id)wallpapers;
- (BOOL)isEqual:(id)equal;
- (CRSUISystemWallpaper)initWithIdentifier:(id)identifier;
- (NSString)cacheID;
- (NSString)description;
- (UIColor)color;
- (id)_imageURLWithCompatibleTraitCollection:(id)collection;
- (id)_thumbnailImageURLWithCompatibleTraitCollection:(id)collection;
- (id)data;
- (id)resolveWallpaper;
@end

@implementation CRSUISystemWallpaper

+ (id)defaultWallpaper
{
  v2 = +[CRSUISystemWallpaper wallpapers];
  firstObject = [v2 firstObject];

  return firstObject;
}

+ (id)wallpapers
{
  if (wallpapers_onceToken != -1)
  {
    +[CRSUISystemWallpaper wallpapers];
  }

  v3 = wallpapers__systemWallpapers;

  return v3;
}

+ (id)wallpaperWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithIdentifier:identifierCopy];

  return v5;
}

void __34__CRSUISystemWallpaper_wallpapers__block_invoke()
{
  v12[9] = *MEMORY[0x277D85DE8];
  v0 = [CRSUISystemWallpaper wallpaperWithIdentifier:@"CARWallpaperBlue"];
  v1 = [CRSUISystemWallpaper wallpaperWithIdentifier:@"CARWallpaperPurple", v0];
  v12[1] = v1;
  v2 = [CRSUISystemWallpaper wallpaperWithIdentifier:@"CARWallpaperGray"];
  v12[2] = v2;
  v3 = [CRSUISystemWallpaper wallpaperWithIdentifier:@"CARWallpaperGreen"];
  v12[3] = v3;
  v4 = [CRSUISystemWallpaper wallpaperWithIdentifier:@"CARWallpaperBrown"];
  v12[4] = v4;
  v5 = [CRSUISystemWallpaper wallpaperWithIdentifier:@"CARWallpaperRed"];
  v12[5] = v5;
  v6 = [CRSUISystemWallpaper wallpaperWithIdentifier:@"CARWallpaperSolidBlack"];
  v12[6] = v6;
  v7 = [CRSUISystemWallpaper wallpaperWithIdentifier:@"CARWallpaperSolidBlue"];
  v12[7] = v7;
  v8 = [CRSUISystemWallpaper wallpaperWithIdentifier:@"CARWallpaperSolidGray"];
  v12[8] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:9];
  v10 = wallpapers__systemWallpapers;
  wallpapers__systemWallpapers = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (id)resolveWallpaper
{
  wallpaperAssetCatalogName = [(CRSUISystemWallpaper *)self wallpaperAssetCatalogName];
  thumbnailAssetCatalogName = [(CRSUISystemWallpaper *)self thumbnailAssetCatalogName];
  v5 = [CRSUIResolvedWallpaper alloc];
  v12 = thumbnailAssetCatalogName;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__CRSUISystemWallpaper_resolveWallpaper__block_invoke;
  v13[3] = &unk_278DA0F80;
  v14 = wallpaperAssetCatalogName;
  v11 = MEMORY[0x277D85DD0];
  v6 = thumbnailAssetCatalogName;
  v7 = wallpaperAssetCatalogName;
  v8 = [(CRSUISystemWallpaper *)self color:v11];
  v9 = [(CRSUIResolvedWallpaper *)v5 initWithWallpaperInformation:self imageResolver:v13 thumbnailResolver:&v11 statefulPackage:0 color:v8];

  return v9;
}

id __40__CRSUISystemWallpaper_resolveWallpaper__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277D755B8] crsui_wallpaperImageNamed:v3 compatibleWithTraitCollection:a2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __40__CRSUISystemWallpaper_resolveWallpaper__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277D755B8] crsui_imageNamed:v3 compatibleWithTraitCollection:a2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIColor)color
{
  systemIdentifier = [(CRSUISystemWallpaper *)self systemIdentifier];
  v4 = [systemIdentifier isEqualToString:@"CARWallpaperSolidBlack"];

  if (v4)
  {
    v5 = &__block_literal_global_72;
LABEL_7:
    v10 = [MEMORY[0x277D75348] colorWithDynamicProvider:v5];
    goto LABEL_8;
  }

  systemIdentifier2 = [(CRSUISystemWallpaper *)self systemIdentifier];
  v7 = [systemIdentifier2 isEqualToString:@"CARWallpaperSolidBlue"];

  if (v7)
  {
    v5 = &__block_literal_global_74;
    goto LABEL_7;
  }

  systemIdentifier3 = [(CRSUISystemWallpaper *)self systemIdentifier];
  v9 = [systemIdentifier3 isEqualToString:@"CARWallpaperSolidGray"];

  if (v9)
  {
    v5 = &__block_literal_global_76;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

id __29__CRSUISystemWallpaper_color__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 1)
  {
    v2 = 0.949019608;
    v3 = 1.0;
    v4 = 0.949019608;
    v5 = 0.949019608;
  }

  else
  {
    v2 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v3 = 1.0;
  }

  v6 = [MEMORY[0x277D75348] colorWithRed:v2 green:v4 blue:v5 alpha:v3];

  return v6;
}

id __29__CRSUISystemWallpaper_color__block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 1)
  {
    v2 = 0.815686275;
    v3 = 0.870588235;
    v4 = 0.905882353;
  }

  else
  {
    v2 = 0.0862745098;
    v3 = 0.105882353;
    v4 = 0.129411765;
  }

  v5 = [MEMORY[0x277D75348] colorWithRed:v2 green:v3 blue:v4 alpha:1.0];

  return v5;
}

id __29__CRSUISystemWallpaper_color__block_invoke_3(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 1)
  {
    v2 = 0.890196078;
    v3 = 0.858823529;
    v4 = 0.792156863;
  }

  else
  {
    v2 = 0.203921569;
    v3 = 0.188235294;
    v4 = 0.180392157;
  }

  v5 = [MEMORY[0x277D75348] colorWithRed:v2 green:v3 blue:v4 alpha:1.0];

  return v5;
}

- (id)data
{
  v3 = objc_alloc(MEMORY[0x277CF8A70]);
  identifier = [(CRSUISystemWallpaper *)self identifier];
  v5 = [v3 initWithIdentifier:identifier];

  return v5;
}

- (NSString)cacheID
{
  color = [(CRSUISystemWallpaper *)self color];
  if (color)
  {
    systemIdentifier = 0;
  }

  else
  {
    systemIdentifier = self->_systemIdentifier;
  }

  v5 = systemIdentifier;

  return systemIdentifier;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  identifier = [(CRSUISystemWallpaper *)self identifier];
  [v3 appendString:identifier withName:@"identifier"];

  traits = [(CRSUISystemWallpaper *)self traits];
  v6 = [v3 appendObject:traits withName:@"traits"];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    data = [(CRSUISystemWallpaper *)self data];
    data2 = [v8 data];
    v11 = [data isEqual:data2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CRSUISystemWallpaper)initWithIdentifier:(id)identifier
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = +[CRSUISystemWallpaper _wallpaperInfo];
  v7 = [v6 objectForKey:identifierCopy];

  if (v7)
  {
    v28.receiver = self;
    v28.super_class = CRSUISystemWallpaper;
    v8 = [(CRSUISystemWallpaper *)&v28 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_systemIdentifier, identifier);
      v27 = [CRSUIWallpaperTraits alloc];
      v10 = [v7 objectForKeyedSubscript:@"dynamicAppearance"];
      bOOLValue = [v10 BOOLValue];
      v11 = [v7 objectForKeyedSubscript:@"dashboardPlatterMaterials"];
      bOOLValue2 = [v11 BOOLValue];
      v13 = [v7 objectForKeyedSubscript:@"iconLabelsBackground"];
      bOOLValue3 = [v13 BOOLValue];
      v15 = [v7 objectForKeyedSubscript:@"hideRoundedCorners"];
      v16 = -[CRSUIWallpaperTraits initWithSupportsDynamicAppearance:supportsDashboardPlatterMaterials:iconLabelsRequireBackground:hideRoundedCorners:black:](v27, "initWithSupportsDynamicAppearance:supportsDashboardPlatterMaterials:iconLabelsRequireBackground:hideRoundedCorners:black:", bOOLValue, bOOLValue2, bOOLValue3, [v15 BOOLValue], -[NSString isEqualToString:](v9->_systemIdentifier, "isEqualToString:", @"CARWallpaperSolidBlack"));
      traits = v9->_traits;
      v9->_traits = v16;

      v18 = [v7 objectForKeyedSubscript:@"wallpaperAssetCatalogName"];
      wallpaperAssetCatalogName = v9->_wallpaperAssetCatalogName;
      v9->_wallpaperAssetCatalogName = v18;

      v20 = [v7 objectForKeyedSubscript:@"thumbnailAssetCatalogName"];
      thumbnailAssetCatalogName = v9->_thumbnailAssetCatalogName;
      v9->_thumbnailAssetCatalogName = v20;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v23 = CRSUILogForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = identifierCopy;
      _os_log_impl(&dword_243218000, v23, OS_LOG_TYPE_DEFAULT, "[CRSUIWallpaperPreferences] Unknown wallpaper: %{public}@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)_imageURLWithCompatibleTraitCollection:(id)collection
{
  collectionCopy = collection;
  wallpaperAssetCatalogName = [(CRSUISystemWallpaper *)self wallpaperAssetCatalogName];

  if (wallpaperAssetCatalogName)
  {
    userInterfaceStyle = [collectionCopy userInterfaceStyle];
    v7 = @"-Dark";
    if (userInterfaceStyle == 1)
    {
      v7 = @"-Light";
    }

    v8 = v7;
    wallpaperAssetCatalogName2 = [(CRSUISystemWallpaper *)self wallpaperAssetCatalogName];
    v10 = [wallpaperAssetCatalogName2 stringByAppendingString:v8];

    v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarPlayUIServices"];
    v12 = [v11 URLForResource:v10 withExtension:@"heic"];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_thumbnailImageURLWithCompatibleTraitCollection:(id)collection
{
  thumbnailAssetCatalogName = [(CRSUISystemWallpaper *)self thumbnailAssetCatalogName];

  if (thumbnailAssetCatalogName)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarPlayUIServices"];
    thumbnailAssetCatalogName2 = [(CRSUISystemWallpaper *)self thumbnailAssetCatalogName];
    v7 = [v5 URLForResource:thumbnailAssetCatalogName2 withExtension:@"heic"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_wallpaperInfo
{
  if (_wallpaperInfo_onceToken != -1)
  {
    +[CRSUISystemWallpaper _wallpaperInfo];
  }

  v3 = _wallpaperInfo__wallpaperInfo;

  return v3;
}

void __38__CRSUISystemWallpaper__wallpaperInfo__block_invoke()
{
  v33[9] = *MEMORY[0x277D85DE8];
  v32[0] = @"CARWallpaperBlue";
  v0 = MEMORY[0x277CBEC38];
  v30[0] = @"dynamicAppearance";
  v30[1] = @"dashboardPlatterMaterials";
  v31[0] = MEMORY[0x277CBEC38];
  v31[1] = MEMORY[0x277CBEC38];
  v30[2] = @"iconLabelsBackground";
  v30[3] = @"wallpaperAssetCatalogName";
  v31[2] = MEMORY[0x277CBEC38];
  v31[3] = @"WallpaperBlue";
  v30[4] = @"thumbnailAssetCatalogName";
  v30[5] = @"hideRoundedCorners";
  v1 = MEMORY[0x277CBEC28];
  v31[4] = @"WallpaperCellBlue";
  v31[5] = MEMORY[0x277CBEC28];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:6];
  v33[0] = v13;
  v32[1] = @"CARWallpaperBrown";
  v28[0] = @"dynamicAppearance";
  v28[1] = @"dashboardPlatterMaterials";
  v29[0] = v0;
  v29[1] = v0;
  v29[2] = v0;
  v29[3] = @"WallpaperBrown";
  v28[2] = @"iconLabelsBackground";
  v28[3] = @"wallpaperAssetCatalogName";
  v28[4] = @"thumbnailAssetCatalogName";
  v28[5] = @"hideRoundedCorners";
  v29[4] = @"WallpaperCellBrown";
  v29[5] = v1;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];
  v33[1] = v12;
  v32[2] = @"CARWallpaperGray";
  v26[0] = @"dynamicAppearance";
  v26[1] = @"dashboardPlatterMaterials";
  v27[0] = v0;
  v27[1] = v0;
  v27[2] = v0;
  v27[3] = @"WallpaperGray";
  v26[2] = @"iconLabelsBackground";
  v26[3] = @"wallpaperAssetCatalogName";
  v26[4] = @"thumbnailAssetCatalogName";
  v26[5] = @"hideRoundedCorners";
  v27[4] = @"WallpaperCellGray";
  v27[5] = v1;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:6];
  v33[2] = v11;
  v32[3] = @"CARWallpaperGreen";
  v24[0] = @"dynamicAppearance";
  v24[1] = @"dashboardPlatterMaterials";
  v25[0] = v0;
  v25[1] = v0;
  v25[2] = v0;
  v25[3] = @"WallpaperGreen";
  v24[2] = @"iconLabelsBackground";
  v24[3] = @"wallpaperAssetCatalogName";
  v24[4] = @"thumbnailAssetCatalogName";
  v24[5] = @"hideRoundedCorners";
  v25[4] = @"WallpaperCellGreen";
  v25[5] = v1;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:6];
  v33[3] = v10;
  v32[4] = @"CARWallpaperPurple";
  v22[0] = @"dynamicAppearance";
  v22[1] = @"dashboardPlatterMaterials";
  v23[0] = v0;
  v23[1] = v0;
  v23[2] = v0;
  v23[3] = @"WallpaperPurple";
  v22[2] = @"iconLabelsBackground";
  v22[3] = @"wallpaperAssetCatalogName";
  v22[4] = @"thumbnailAssetCatalogName";
  v22[5] = @"hideRoundedCorners";
  v23[4] = @"WallpaperCellPurple";
  v23[5] = v1;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];
  v33[4] = v9;
  v32[5] = @"CARWallpaperRed";
  v20[0] = @"dynamicAppearance";
  v20[1] = @"dashboardPlatterMaterials";
  v21[0] = v0;
  v21[1] = v0;
  v20[2] = @"iconLabelsBackground";
  v20[3] = @"wallpaperAssetCatalogName";
  v21[2] = v0;
  v21[3] = @"WallpaperRed";
  v20[4] = @"thumbnailAssetCatalogName";
  v20[5] = @"hideRoundedCorners";
  v21[4] = @"WallpaperCellRed";
  v21[5] = v1;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v33[5] = v8;
  v32[6] = @"CARWallpaperSolidBlack";
  v18[0] = @"dynamicAppearance";
  v18[1] = @"dashboardPlatterMaterials";
  v19[0] = v0;
  v19[1] = v1;
  v18[2] = @"iconLabelsBackground";
  v18[3] = @"thumbnailAssetCatalogName";
  v19[2] = v1;
  v19[3] = @"WallpaperCellSolidBlack";
  v18[4] = @"hideRoundedCorners";
  v19[4] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v33[6] = v2;
  v32[7] = @"CARWallpaperSolidBlue";
  v16[0] = @"dynamicAppearance";
  v16[1] = @"dashboardPlatterMaterials";
  v17[0] = v0;
  v17[1] = v1;
  v16[2] = @"iconLabelsBackground";
  v16[3] = @"thumbnailAssetCatalogName";
  v17[2] = v1;
  v17[3] = @"WallpaperCellSolidBlue";
  v16[4] = @"hideRoundedCorners";
  v17[4] = v1;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
  v33[7] = v3;
  v32[8] = @"CARWallpaperSolidGray";
  v14[0] = @"dynamicAppearance";
  v14[1] = @"dashboardPlatterMaterials";
  v15[0] = v0;
  v15[1] = v1;
  v14[2] = @"iconLabelsBackground";
  v14[3] = @"thumbnailAssetCatalogName";
  v15[2] = v1;
  v15[3] = @"WallpaperCellSolidGray";
  v14[4] = @"hideRoundedCorners";
  v15[4] = v1;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
  v33[8] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:9];
  v6 = _wallpaperInfo__wallpaperInfo;
  _wallpaperInfo__wallpaperInfo = v5;

  v7 = *MEMORY[0x277D85DE8];
}

@end