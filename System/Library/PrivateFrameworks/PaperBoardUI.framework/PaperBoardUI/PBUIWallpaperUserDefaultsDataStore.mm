@interface PBUIWallpaperUserDefaultsDataStore
- (BOOL)setProceduralWallpaperInfo:(id)info forVariants:(int64_t)variants;
- (BOOL)setWallpaperColor:(id)color forVariants:(int64_t)variants;
- (BOOL)setWallpaperColorName:(id)name forVariants:(int64_t)variants;
- (BOOL)setWallpaperGradient:(id)gradient forVariants:(int64_t)variants;
- (BOOL)setWallpaperImageHashData:(id)data forVariants:(int64_t)variants wallpaperMode:(int64_t)mode;
- (BOOL)setWallpaperOptions:(id)options forVariants:(int64_t)variants wallpaperMode:(int64_t)mode;
- (PBUIWallpaperUserDefaultsDataStore)init;
- (PBUIWallpaperUserDefaultsDataStore)initWithUserdefaultsDomain:(id)domain;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)proceduralWallpaperInfoForVariant:(int64_t)variant;
- (id)succinctDescription;
- (id)wallpaperColorForVariant:(int64_t)variant;
- (id)wallpaperColorNameForVariant:(int64_t)variant;
- (id)wallpaperGradientForVariant:(int64_t)variant;
- (id)wallpaperImageHashDataForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperOptionsForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (void)moveWallpaperImageDataTypes:(unint64_t)types fromVariant:(int64_t)variant toVariant:(int64_t)toVariant;
- (void)removeProceduralWallpaperForVariants:(int64_t)variants;
- (void)removeWallpaperColorForVariants:(int64_t)variants;
- (void)removeWallpaperGradientForVariants:(int64_t)variants;
- (void)removeWallpaperImageDataTypes:(unint64_t)types forVariants:(int64_t)variants;
- (void)removeWallpaperImageHashDataForVariants:(int64_t)variants;
- (void)removeWallpaperOptionsForVariants:(int64_t)variants;
- (void)updateProceduralWallpaperDefaultsWithIdentifier:(id)identifier options:(id)options forVariant:(int64_t)variant;
@end

@implementation PBUIWallpaperUserDefaultsDataStore

- (PBUIWallpaperUserDefaultsDataStore)initWithUserdefaultsDomain:(id)domain
{
  domainCopy = domain;
  v11.receiver = self;
  v11.super_class = PBUIWallpaperUserDefaultsDataStore;
  v6 = [(PBUIWallpaperUserDefaultsDataStore *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultsDomain, domain);
    v8 = [[PBUIWallpaperDefaults alloc] initWithdefaultsDomain:domainCopy];
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

- (void)moveWallpaperImageDataTypes:(unint64_t)types fromVariant:(int64_t)variant toVariant:(int64_t)toVariant
{
  if (types)
  {
    wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
    v8 = [wallpaperDefaults imageHashForVariant:variant wallpaperMode:0];
    if (v8)
    {
      [wallpaperDefaults setImageHash:0 forLocations:PBUIWallpaperLocationForVariant(variant) wallpaperMode:0];
      [wallpaperDefaults setImageHash:v8 forLocations:PBUIWallpaperLocationForVariant(toVariant) wallpaperMode:0];
    }
  }
}

- (void)removeWallpaperImageDataTypes:(unint64_t)types forVariants:(int64_t)variants
{
  if (types)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __80__PBUIWallpaperUserDefaultsDataStore_removeWallpaperImageDataTypes_forVariants___block_invoke;
    v4[3] = &unk_2783623D0;
    v4[4] = self;
    PBUIWallpaperEnumerateVariantsForLocations(variants, v4);
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

- (BOOL)setWallpaperImageHashData:(id)data forVariants:(int64_t)variants wallpaperMode:(int64_t)mode
{
  dataCopy = data;
  wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  [wallpaperDefaults setImageHash:dataCopy forLocations:variants wallpaperMode:mode];

  return 1;
}

- (id)wallpaperImageHashDataForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  if (variant > 1)
  {
    v7 = 0;
  }

  else
  {
    wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
    v7 = [wallpaperDefaults imageHashForVariant:variant wallpaperMode:mode];
  }

  return v7;
}

- (void)removeWallpaperImageHashDataForVariants:(int64_t)variants
{
  wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  [wallpaperDefaults updateDefaultsForLocations:variants updater:&__block_literal_global_6];
}

- (id)proceduralWallpaperInfoForVariant:(int64_t)variant
{
  wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v5 = wallpaperDefaults;
  if (variant == -1)
  {
    v7 = 0;
    v9 = 0;
    dictionary = 0;
  }

  else
  {
    v6 = variant == 1;
    v7 = [wallpaperDefaults proceduralIdentifierForVariant:v6];
    v8 = [v5 proceduralOptionsForVariant:v6];
    v9 = v8;
    dictionary = 0;
    if (v7 && v8)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:v9 forKey:@"kSBUIMagicWallpaperPresetOptionsKey"];
      [dictionary setObject:v7 forKey:@"kSBUIMagicWallpaperIdentifierKey"];
      v11 = BundlePathForWallpaperIdentifier(v7);
      if (v11)
      {
        [dictionary setObject:v11 forKey:@"kSBUIMagicWallpaperBundlePathKey"];
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

  return dictionary;
}

- (void)updateProceduralWallpaperDefaultsWithIdentifier:(id)identifier options:(id)options forVariant:(int64_t)variant
{
  identifierCopy = identifier;
  optionsCopy = options;
  wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v10 = wallpaperDefaults;
  if (variant)
  {
    if (variant != 1)
    {
      goto LABEL_6;
    }

    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  [wallpaperDefaults setProceduralIdentifier:identifierCopy forLocations:v11];
  [v10 setProceduralOptions:optionsCopy forLocations:v11];
  [v10 setProceduralUserSet:identifierCopy != 0 forLocations:v11];
LABEL_6:
}

- (BOOL)setProceduralWallpaperInfo:(id)info forVariants:(int64_t)variants
{
  variantsCopy = variants;
  infoCopy = info;
  v7 = [infoCopy objectForKey:@"kSBUIMagicWallpaperIdentifierKey"];
  v8 = [infoCopy objectForKey:@"kSBUIMagicWallpaperPresetOptionsKey"];

  if (variantsCopy)
  {
    [(PBUIWallpaperUserDefaultsDataStore *)self updateProceduralWallpaperDefaultsWithIdentifier:v7 options:v8 forVariant:0];
  }

  if ((variantsCopy & 2) != 0)
  {
    [(PBUIWallpaperUserDefaultsDataStore *)self updateProceduralWallpaperDefaultsWithIdentifier:v7 options:v8 forVariant:1];
  }

  return 1;
}

- (void)removeProceduralWallpaperForVariants:(int64_t)variants
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__PBUIWallpaperUserDefaultsDataStore_removeProceduralWallpaperForVariants___block_invoke;
  v3[3] = &unk_2783623D0;
  v3[4] = self;
  PBUIWallpaperEnumerateVariantsForLocations(variants, v3);
}

- (id)wallpaperOptionsForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v7 = [wallpaperDefaults wallpaperOptionsForVariant:variant wallpaperMode:mode];

  return v7;
}

- (BOOL)setWallpaperOptions:(id)options forVariants:(int64_t)variants wallpaperMode:(int64_t)mode
{
  optionsCopy = options;
  wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  [wallpaperDefaults setWallpaperOptions:optionsCopy forLocations:variants wallpaperMode:mode];

  return 1;
}

- (void)removeWallpaperOptionsForVariants:(int64_t)variants
{
  wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  [wallpaperDefaults resetDefaults];
}

- (id)wallpaperColorForVariant:(int64_t)variant
{
  wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v5 = wallpaperDefaults;
  if (variant > 1)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v6 = [wallpaperDefaults wallpaperColorDataForVariant:variant];
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

- (id)wallpaperColorNameForVariant:(int64_t)variant
{
  wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v5 = wallpaperDefaults;
  if (variant > 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [wallpaperDefaults wallpaperColorNameForVariant:variant];
  }

  return v6;
}

- (BOOL)setWallpaperColor:(id)color forVariants:(int64_t)variants
{
  variantsCopy = variants;
  colorCopy = color;
  v17 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:colorCopy requiringSecureCoding:1 error:&v17];
  v8 = v17;
  if (!v7)
  {
    v9 = PBUILogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PBUIWallpaperUserDefaultsDataStore setWallpaperColor:forVariants:];
    }
  }

  wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__PBUIWallpaperUserDefaultsDataStore_setWallpaperColor_forVariants___block_invoke;
  v14[3] = &unk_278362330;
  v15 = wallpaperDefaults;
  v16 = v7;
  v11 = v7;
  v12 = wallpaperDefaults;
  PBUIWallpaperEnumerateVariantsForLocations(variantsCopy, v14);

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

- (BOOL)setWallpaperColorName:(id)name forVariants:(int64_t)variants
{
  variantsCopy = variants;
  nameCopy = name;
  wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__PBUIWallpaperUserDefaultsDataStore_setWallpaperColorName_forVariants___block_invoke;
  v11[3] = &unk_278362330;
  v12 = wallpaperDefaults;
  v13 = nameCopy;
  v8 = nameCopy;
  v9 = wallpaperDefaults;
  PBUIWallpaperEnumerateVariantsForLocations(variantsCopy, v11);

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

- (void)removeWallpaperColorForVariants:(int64_t)variants
{
  wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  [wallpaperDefaults setColorName:0 forLocations:variants];
  [wallpaperDefaults setColorData:0 forLocations:variants];
}

- (id)wallpaperGradientForVariant:(int64_t)variant
{
  wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v5 = wallpaperDefaults;
  if (variant > 1)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v6 = [wallpaperDefaults wallpaperGradientDataForVariant:variant];
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

- (BOOL)setWallpaperGradient:(id)gradient forVariants:(int64_t)variants
{
  variantsCopy = variants;
  gradientCopy = gradient;
  v17 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:gradientCopy requiringSecureCoding:1 error:&v17];
  v8 = v17;
  if (!v7)
  {
    v9 = PBUILogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PBUIWallpaperUserDefaultsDataStore setWallpaperGradient:forVariants:];
    }
  }

  wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__PBUIWallpaperUserDefaultsDataStore_setWallpaperGradient_forVariants___block_invoke;
  v14[3] = &unk_278362330;
  v15 = wallpaperDefaults;
  v16 = v7;
  v11 = v7;
  v12 = wallpaperDefaults;
  PBUIWallpaperEnumerateVariantsForLocations(variantsCopy, v14);

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

- (void)removeWallpaperGradientForVariants:(int64_t)variants
{
  variantsCopy = variants;
  wallpaperDefaults = [(PBUIWallpaperUserDefaultsDataStore *)self wallpaperDefaults];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__PBUIWallpaperUserDefaultsDataStore_removeWallpaperGradientForVariants___block_invoke;
  v6[3] = &unk_2783623D0;
  v7 = wallpaperDefaults;
  v5 = wallpaperDefaults;
  PBUIWallpaperEnumerateVariantsForLocations(variantsCopy, v6);
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PBUIWallpaperUserDefaultsDataStore *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  defaultsDomain = [(PBUIWallpaperUserDefaultsDataStore *)self defaultsDomain];
  v6 = [v4 appendObject:defaultsDomain withName:@"userDefaults"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PBUIWallpaperUserDefaultsDataStore *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end