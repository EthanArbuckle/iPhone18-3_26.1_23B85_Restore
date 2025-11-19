@interface PBUIWallpaperUserDefaultsDataStore
- (BOOL)setProceduralWallpaperInfo:(id)a3 forVariants:(int64_t)a4;
- (BOOL)setWallpaperColor:(id)a3 forVariants:(int64_t)a4;
- (BOOL)setWallpaperColorName:(id)a3 forVariants:(int64_t)a4;
- (BOOL)setWallpaperGradient:(id)a3 forVariants:(int64_t)a4;
- (BOOL)setWallpaperImageHashData:(id)a3 forVariants:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (BOOL)setWallpaperOptions:(id)a3 forVariants:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (PBUIWallpaperUserDefaultsDataStore)init;
- (PBUIWallpaperUserDefaultsDataStore)initWithUserdefaultsDomain:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)proceduralWallpaperInfoForVariant:(int64_t)a3;
- (id)succinctDescription;
- (id)wallpaperColorForVariant:(int64_t)a3;
- (id)wallpaperColorNameForVariant:(int64_t)a3;
- (id)wallpaperGradientForVariant:(int64_t)a3;
- (id)wallpaperImageHashDataForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)wallpaperOptionsForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (void)moveWallpaperImageDataTypes:(unint64_t)a3 fromVariant:(int64_t)a4 toVariant:(int64_t)a5;
- (void)removeProceduralWallpaperForVariants:(int64_t)a3;
- (void)removeWallpaperColorForVariants:(int64_t)a3;
- (void)removeWallpaperGradientForVariants:(int64_t)a3;
- (void)removeWallpaperImageDataTypes:(unint64_t)a3 forVariants:(int64_t)a4;
- (void)removeWallpaperImageHashDataForVariants:(int64_t)a3;
- (void)removeWallpaperOptionsForVariants:(int64_t)a3;
- (void)updateProceduralWallpaperDefaultsWithIdentifier:(id)a3 options:(id)a4 forVariant:(int64_t)a5;
@end

@implementation PBUIWallpaperUserDefaultsDataStore

- (PBUIWallpaperUserDefaultsDataStore)initWithUserdefaultsDomain:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PBUIWallpaperUserDefaultsDataStore;
  v6 = [(PBUIWallpaperUserDefaultsDataStore *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultsDomain, a3);
    v8 = [[PBUIWallpaperDefaults alloc] initWithdefaultsDomain:v5];
    wallpaperDefaults = v7->_wallpaperDefaults;
    v7->_wallpaperDefaults = v8;
  }

  return v7;
}

- (PBUIWallpaperUserDefaultsDataStore)init
{
  v3 = objc_alloc_init(PBUIWallpaperDefaultsDomain);
  v4 = [(PBUIWallpaperUserDefaultsDataStore *)self initWithUserdefaultsDomain:v3];

  return v4;
}

- (void)moveWallpaperImageDataTypes:(unint64_t)a3 fromVariant:(int64_t)a4 toVariant:(int64_t)a5
{
  if (a3)
  {
    v9 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
    v8 = [v9 imageHashForVariant:a4 wallpaperMode:0];
    if (v8)
    {
      [v9 setImageHash:0 forLocations:PBUIWallpaperLocationForVariant(a4) wallpaperMode:0];
      [v9 setImageHash:v8 forLocations:PBUIWallpaperLocationForVariant(a5) wallpaperMode:0];
    }
  }
}

- (void)removeWallpaperImageDataTypes:(unint64_t)a3 forVariants:(int64_t)a4
{
  if (a3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __80__PBUIWallpaperUserDefaultsDataStore_removeWallpaperImageDataTypes_forVariants___block_invoke;
    v4[3] = &unk_2783623D0;
    v4[4] = self;
    PBUIWallpaperEnumerateVariantsForLocations(a4, v4);
  }
}

void __80__PBUIWallpaperUserDefaultsDataStore_removeWallpaperImageDataTypes_forVariants___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return;
    }

    v2 = [*(a1 + 32) wallpaperDefaults];
    v3 = &__block_literal_global_24;
    v5 = v2;
    v4 = 2;
  }

  else
  {
    v2 = [*(a1 + 32) wallpaperDefaults];
    v3 = &__block_literal_global_3_0;
    v5 = v2;
    v4 = 1;
  }

  [v2 updateDefaultsForLocations:v4 updater:v3];
}

- (BOOL)setWallpaperImageHashData:(id)a3 forVariants:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v8 = a3;
  v9 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  [v9 setImageHash:v8 forLocations:a4 wallpaperMode:a5];

  return 1;
}

- (id)wallpaperImageHashDataForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  if (a3 > 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
    v7 = [v6 imageHashForVariant:a3 wallpaperMode:a4];
  }

  return v7;
}

- (void)removeWallpaperImageHashDataForVariants:(int64_t)a3
{
  v4 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  [v4 updateDefaultsForLocations:a3 updater:&__block_literal_global_6];
}

- (id)proceduralWallpaperInfoForVariant:(int64_t)a3
{
  v4 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v5 = v4;
  if (a3 == -1)
  {
    v7 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v6 = a3 == 1;
    v7 = [v4 proceduralIdentifierForVariant:v6];
    v8 = [v5 proceduralOptionsForVariant:v6];
    v9 = v8;
    v10 = 0;
    if (v7 && v8)
    {
      v10 = [MEMORY[0x277CBEB38] dictionary];
      [v10 setObject:v9 forKey:@"kSBUIMagicWallpaperPresetOptionsKey"];
      [v10 setObject:v7 forKey:@"kSBUIMagicWallpaperIdentifierKey"];
      v11 = BundlePathForWallpaperIdentifier(v7);
      if (v11)
      {
        [v10 setObject:v11 forKey:@"kSBUIMagicWallpaperBundlePathKey"];
      }

      else
      {
        v12 = PBUILogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [PBUIWallpaperUserDefaultsDataStore proceduralWallpaperInfoForVariant:];
        }
      }
    }
  }

  return v10;
}

- (void)updateProceduralWallpaperDefaultsWithIdentifier:(id)a3 options:(id)a4 forVariant:(int64_t)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v10 = v9;
  if (a5)
  {
    if (a5 != 1)
    {
      goto LABEL_6;
    }

    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  [v9 setProceduralIdentifier:v12 forLocations:v11];
  [v10 setProceduralOptions:v8 forLocations:v11];
  [v10 setProceduralUserSet:v12 != 0 forLocations:v11];
LABEL_6:
}

- (BOOL)setProceduralWallpaperInfo:(id)a3 forVariants:(int64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 objectForKey:@"kSBUIMagicWallpaperIdentifierKey"];
  v8 = [v6 objectForKey:@"kSBUIMagicWallpaperPresetOptionsKey"];

  if (v4)
  {
    [(PBUIWallpaperUserDefaultsDataStore *)self updateProceduralWallpaperDefaultsWithIdentifier:v7 options:v8 forVariant:0];
  }

  if ((v4 & 2) != 0)
  {
    [(PBUIWallpaperUserDefaultsDataStore *)self updateProceduralWallpaperDefaultsWithIdentifier:v7 options:v8 forVariant:1];
  }

  return 1;
}

- (void)removeProceduralWallpaperForVariants:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__PBUIWallpaperUserDefaultsDataStore_removeProceduralWallpaperForVariants___block_invoke;
  v3[3] = &unk_2783623D0;
  v3[4] = self;
  PBUIWallpaperEnumerateVariantsForLocations(a3, v3);
}

- (id)wallpaperOptionsForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v6 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v7 = [v6 wallpaperOptionsForVariant:a3 wallpaperMode:a4];

  return v7;
}

- (BOOL)setWallpaperOptions:(id)a3 forVariants:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v8 = a3;
  v9 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  [v9 setWallpaperOptions:v8 forLocations:a4 wallpaperMode:a5];

  return 1;
}

- (void)removeWallpaperOptionsForVariants:(int64_t)a3
{
  v3 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  [v3 resetDefaults];
}

- (id)wallpaperColorForVariant:(int64_t)a3
{
  v4 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v5 = v4;
  if (a3 > 1)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v6 = [v4 wallpaperColorDataForVariant:a3];
  if (!v6)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v7 = MEMORY[0x277CCAAC8];
  v8 = objc_opt_self();
  v13 = 0;
  v9 = [v7 unarchivedObjectOfClass:v8 fromData:v6 error:&v13];
  v10 = v13;

  if (!v9)
  {
    v11 = PBUILogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PBUIWallpaperUserDefaultsDataStore wallpaperColorForVariant:];
    }
  }

LABEL_10:

  return v9;
}

- (id)wallpaperColorNameForVariant:(int64_t)a3
{
  v4 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v5 = v4;
  if (a3 > 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 wallpaperColorNameForVariant:a3];
  }

  return v6;
}

- (BOOL)setWallpaperColor:(id)a3 forVariants:(int64_t)a4
{
  v4 = a4;
  v6 = a3;
  v17 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v17];
  v8 = v17;
  if (!v7)
  {
    v9 = PBUILogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PBUIWallpaperUserDefaultsDataStore setWallpaperColor:forVariants:];
    }
  }

  v10 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__PBUIWallpaperUserDefaultsDataStore_setWallpaperColor_forVariants___block_invoke;
  v14[3] = &unk_278362330;
  v15 = v10;
  v16 = v7;
  v11 = v7;
  v12 = v10;
  PBUIWallpaperEnumerateVariantsForLocations(v4, v14);

  return 1;
}

uint64_t __68__PBUIWallpaperUserDefaultsDataStore_setWallpaperColor_forVariants___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [*(result + 32) setColorData:*(result + 40) forLocations:v2];
}

- (BOOL)setWallpaperColorName:(id)a3 forVariants:(int64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__PBUIWallpaperUserDefaultsDataStore_setWallpaperColorName_forVariants___block_invoke;
  v11[3] = &unk_278362330;
  v12 = v7;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  PBUIWallpaperEnumerateVariantsForLocations(v4, v11);

  return 1;
}

uint64_t __72__PBUIWallpaperUserDefaultsDataStore_setWallpaperColorName_forVariants___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [*(result + 32) setColorName:*(result + 40) forLocations:v2];
}

- (void)removeWallpaperColorForVariants:(int64_t)a3
{
  v4 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  [v4 setColorName:0 forLocations:a3];
  [v4 setColorData:0 forLocations:a3];
}

- (id)wallpaperGradientForVariant:(int64_t)a3
{
  v4 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v5 = v4;
  if (a3 > 1)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v6 = [v4 wallpaperGradientDataForVariant:a3];
  if (!v6)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v7 = MEMORY[0x277CCAAC8];
  v8 = objc_opt_self();
  v13 = 0;
  v9 = [v7 unarchivedObjectOfClass:v8 fromData:v6 error:&v13];
  v10 = v13;

  if (!v9)
  {
    v11 = PBUILogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PBUIWallpaperUserDefaultsDataStore wallpaperGradientForVariant:];
    }
  }

LABEL_10:

  return v9;
}

- (BOOL)setWallpaperGradient:(id)a3 forVariants:(int64_t)a4
{
  v4 = a4;
  v6 = a3;
  v17 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v17];
  v8 = v17;
  if (!v7)
  {
    v9 = PBUILogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PBUIWallpaperUserDefaultsDataStore setWallpaperGradient:forVariants:];
    }
  }

  v10 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__PBUIWallpaperUserDefaultsDataStore_setWallpaperGradient_forVariants___block_invoke;
  v14[3] = &unk_278362330;
  v15 = v10;
  v16 = v7;
  v11 = v7;
  v12 = v10;
  PBUIWallpaperEnumerateVariantsForLocations(v4, v14);

  return 1;
}

uint64_t __71__PBUIWallpaperUserDefaultsDataStore_setWallpaperGradient_forVariants___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [*(result + 32) setGradientData:*(result + 40) forLocations:v2];
}

- (void)removeWallpaperGradientForVariants:(int64_t)a3
{
  v3 = a3;
  v4 = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__PBUIWallpaperUserDefaultsDataStore_removeWallpaperGradientForVariants___block_invoke;
  v6[3] = &unk_2783623D0;
  v7 = v4;
  v5 = v4;
  PBUIWallpaperEnumerateVariantsForLocations(v3, v6);
}

uint64_t __73__PBUIWallpaperUserDefaultsDataStore_removeWallpaperGradientForVariants___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [*(result + 32) setGradientData:0 forLocations:v2];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIWallpaperUserDefaultsDataStore *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [(PBUIWallpaperUserDefaultsDataStore *)self defaultsDomain];
  v6 = [v4 appendObject:v5 withName:@"userDefaults"];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(PBUIWallpaperUserDefaultsDataStore *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end