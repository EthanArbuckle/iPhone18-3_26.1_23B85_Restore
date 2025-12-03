@interface PBUIWallpaperDefaults
+ (id)defaults;
- (BOOL)hasVideoForVariant:(int64_t)variant;
- (BOOL)isPortraitForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (BOOL)magnifyEnabledForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (BOOL)proceduralUserSetForVariant:(int64_t)variant;
- (BOOL)supportsCroppingForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (CGRect)cropRectForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (PBUIWallpaperDefaults)init;
- (PBUIWallpaperDefaults)initWithdefaultsDomain:(id)domain;
- (double)parallaxFactorForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (double)stillTimeInVideoForVariant:(int64_t)variant;
- (double)zoomScaleForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)_defaultsWrapperForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)_keyForWallpaperMode:(int64_t)mode;
- (id)description;
- (id)imageHashForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)nameForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)proceduralIdentifierForVariant:(int64_t)variant;
- (id)proceduralOptionsForVariant:(int64_t)variant;
- (id)wallpaperColorDataForVariant:(int64_t)variant;
- (id)wallpaperColorNameForVariant:(int64_t)variant;
- (id)wallpaperGradientDataForVariant:(int64_t)variant;
- (id)wallpaperKitDataForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperOptionsForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (void)_setDefaultsWithDictionary:(id)dictionary variant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (void)_updateDefaultsForVariant:(int64_t)variant wallpaperMode:(int64_t)mode updater:(id)updater;
- (void)resetCroppingDefaults;
- (void)resetDefaults;
- (void)setColorData:(id)data forLocations:(int64_t)locations;
- (void)setColorName:(id)name forLocations:(int64_t)locations;
- (void)setCropRect:(CGRect)rect forLocations:(int64_t)locations wallpaperMode:(int64_t)mode;
- (void)setGradientData:(id)data forLocations:(int64_t)locations;
- (void)setHasVideo:(BOOL)video;
- (void)setImageHash:(id)hash forLocations:(int64_t)locations wallpaperMode:(int64_t)mode;
- (void)setMagnifyEnabled:(BOOL)enabled forLocations:(int64_t)locations wallpaperMode:(int64_t)mode;
- (void)setName:(id)name forLocations:(int64_t)locations wallpaperMode:(int64_t)mode;
- (void)setParallaxFactor:(double)factor forLocations:(int64_t)locations wallpaperMode:(int64_t)mode;
- (void)setPortrait:(BOOL)portrait forLocations:(int64_t)locations wallpaperMode:(int64_t)mode;
- (void)setProceduralIdentifier:(id)identifier forLocations:(int64_t)locations;
- (void)setProceduralOptions:(id)options forLocations:(int64_t)locations;
- (void)setProceduralUserSet:(BOOL)set forLocations:(int64_t)locations;
- (void)setStillTimeInVideo:(double)video;
- (void)setSupportsCropping:(BOOL)cropping forLocations:(int64_t)locations wallpaperMode:(int64_t)mode;
- (void)setWallpaperKitData:(id)data forLocations:(int64_t)locations wallpaperMode:(int64_t)mode;
- (void)setWallpaperOptions:(id)options forLocations:(int64_t)locations wallpaperMode:(int64_t)mode;
- (void)setZoomScale:(double)scale forLocations:(int64_t)locations wallpaperMode:(int64_t)mode;
- (void)updateDefaultsForLocations:(int64_t)locations updater:(id)updater;
@end

@implementation PBUIWallpaperDefaults

+ (id)defaults
{
  if (defaults___once != -1)
  {
    +[PBUIWallpaperDefaults defaults];
  }

  v3 = defaults___defaults;

  return v3;
}

uint64_t __33__PBUIWallpaperDefaults_defaults__block_invoke()
{
  v0 = objc_alloc_init(PBUIWallpaperDefaults);
  v1 = defaults___defaults;
  defaults___defaults = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (PBUIWallpaperDefaults)initWithdefaultsDomain:(id)domain
{
  domainCopy = domain;
  v9.receiver = self;
  v9.super_class = PBUIWallpaperDefaults;
  v6 = [(PBUIWallpaperDefaults *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultsDomain, domain);
  }

  return v7;
}

- (PBUIWallpaperDefaults)init
{
  v3 = objc_alloc_init(PBUIWallpaperDefaultsDomain);
  v4 = [(PBUIWallpaperDefaults *)self initWithdefaultsDomain:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p>\n", v5, self];

  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v8;
    if (v8)
    {
      v10 = @"\tLock Screen\n";
    }

    else
    {
      v10 = @"\tHome Screen\n";
    }

    [v6 appendFormat:v10];
    [(PBUIWallpaperDefaults *)self parallaxFactorForVariant:v7 wallpaperMode:0];
    v12 = v11;
    [(PBUIWallpaperDefaults *)self zoomScaleForVariant:v7 wallpaperMode:0];
    v14 = v13;
    [(PBUIWallpaperDefaults *)self cropRectForVariant:v7 wallpaperMode:0];
    v15 = NSStringFromRect(v19);
    if ([(PBUIWallpaperDefaults *)self supportsCroppingForVariant:v7 wallpaperMode:0])
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    [v6 appendFormat:@"\t\tParallax Factor: %g, Zoom Scale: %g Crop Rect: %@ Supports Cropping: %@\n", v12, v14, v15, v16];

    v8 = 0;
    v7 = 1;
  }

  while (v9);

  return v6;
}

- (void)resetDefaults
{
  [(PBUIWallpaperDefaults *)self resetParallaxFactorDefaults];
  [(PBUIWallpaperDefaults *)self resetZoomScaleDefaults];
  [(PBUIWallpaperDefaults *)self resetCroppingDefaults];
  [(PBUIWallpaperDefaults *)self resetMagnifyDefaults];
  [(PBUIWallpaperDefaults *)self resetPortraitDefaults];
  [(PBUIWallpaperDefaults *)self resetHasVideoDefaults];
  [(PBUIWallpaperDefaults *)self resetStillTimeInVideoDefaults];
  [(PBUIWallpaperDefaults *)self resetNameDefaults];
  [(PBUIWallpaperDefaults *)self resetImageHashDefaults];

  [(PBUIWallpaperDefaults *)self resetWallpaperKitDataDefaults];
}

- (id)wallpaperOptionsForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v7 = objc_alloc_init(PBUIWallpaperOptions);
  [(PBUIWallpaperOptions *)v7 setSupportsCropping:[(PBUIWallpaperDefaults *)self supportsCroppingForVariant:variant wallpaperMode:mode]];
  [(PBUIWallpaperDefaults *)self cropRectForVariant:variant wallpaperMode:mode];
  [(PBUIWallpaperOptions *)v7 setCropRect:?];
  [(PBUIWallpaperDefaults *)self parallaxFactorForVariant:variant wallpaperMode:mode];
  [(PBUIWallpaperOptions *)v7 setParallaxFactor:?];
  [(PBUIWallpaperOptions *)v7 setMagnifyEnabled:[(PBUIWallpaperDefaults *)self magnifyEnabledForVariant:variant wallpaperMode:mode]];
  [(PBUIWallpaperDefaults *)self zoomScaleForVariant:variant wallpaperMode:mode];
  [(PBUIWallpaperOptions *)v7 setZoomScale:?];
  [(PBUIWallpaperOptions *)v7 setPortrait:[(PBUIWallpaperDefaults *)self isPortraitForVariant:variant wallpaperMode:mode]];
  v8 = [(PBUIWallpaperDefaults *)self nameForVariant:variant wallpaperMode:mode];
  [(PBUIWallpaperOptions *)v7 setName:v8];

  [(PBUIWallpaperOptions *)v7 setWallpaperMode:mode];
  [(PBUIWallpaperOptions *)v7 setHasVideo:[(PBUIWallpaperDefaults *)self hasVideoForVariant:variant]];
  [(PBUIWallpaperDefaults *)self stillTimeInVideoForVariant:variant];
  [(PBUIWallpaperOptions *)v7 setStillTimeInVideo:?];
  v9 = [(PBUIWallpaperDefaults *)self wallpaperKitDataForVariant:variant wallpaperMode:mode];
  [(PBUIWallpaperOptions *)v7 setWallpaperKitData:v9];

  return v7;
}

- (void)setWallpaperOptions:(id)options forLocations:(int64_t)locations wallpaperMode:(int64_t)mode
{
  optionsCopy = options;
  -[PBUIWallpaperDefaults setSupportsCropping:forLocations:wallpaperMode:](self, "setSupportsCropping:forLocations:wallpaperMode:", [optionsCopy supportsCropping], locations, mode);
  [optionsCopy cropRect];
  [(PBUIWallpaperDefaults *)self setCropRect:locations forLocations:mode wallpaperMode:?];
  [optionsCopy parallaxFactor];
  [(PBUIWallpaperDefaults *)self setParallaxFactor:locations forLocations:mode wallpaperMode:?];
  -[PBUIWallpaperDefaults setMagnifyEnabled:forLocations:wallpaperMode:](self, "setMagnifyEnabled:forLocations:wallpaperMode:", [optionsCopy isMagnifyEnabled], locations, mode);
  [optionsCopy zoomScale];
  [(PBUIWallpaperDefaults *)self setZoomScale:locations forLocations:mode wallpaperMode:?];
  -[PBUIWallpaperDefaults setPortrait:forLocations:wallpaperMode:](self, "setPortrait:forLocations:wallpaperMode:", [optionsCopy isPortrait], locations, mode);
  name = [optionsCopy name];
  [(PBUIWallpaperDefaults *)self setName:name forLocations:locations wallpaperMode:mode];

  -[PBUIWallpaperDefaults setHasVideo:](self, "setHasVideo:", [optionsCopy hasVideo]);
  [optionsCopy stillTimeInVideo];
  [(PBUIWallpaperDefaults *)self setStillTimeInVideo:?];
  wallpaperKitData = [optionsCopy wallpaperKitData];

  [(PBUIWallpaperDefaults *)self setWallpaperKitData:wallpaperKitData forLocations:locations wallpaperMode:mode];
}

- (void)updateDefaultsForLocations:(int64_t)locations updater:(id)updater
{
  locationsCopy = locations;
  updaterCopy = updater;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__PBUIWallpaperDefaults_updateDefaultsForLocations_updater___block_invoke;
  v8[3] = &unk_278364270;
  v8[4] = self;
  v9 = updaterCopy;
  v7 = updaterCopy;
  PBUIWallpaperEnumerateVariantsForLocations(locationsCopy, v8);
}

uint64_t __60__PBUIWallpaperDefaults_updateDefaultsForLocations_updater___block_invoke(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 4; ++i)
  {
    result = [*(a1 + 32) _updateDefaultsForVariant:a2 wallpaperMode:i updater:*(a1 + 40)];
  }

  return result;
}

- (void)_updateDefaultsForVariant:(int64_t)variant wallpaperMode:(int64_t)mode updater:(id)updater
{
  updaterCopy = updater;
  v10 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:mode];
  updaterCopy[2](updaterCopy, v10);

  wallpaperDefaultsDict = [v10 wallpaperDefaultsDict];
  [(PBUIWallpaperDefaults *)self _setDefaultsWithDictionary:wallpaperDefaultsDict variant:variant wallpaperMode:mode];
}

- (id)_defaultsWrapperForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  defaultsDomain = [(PBUIWallpaperDefaults *)self defaultsDomain];
  v8 = [(PBUIWallpaperDefaults *)self _keyForWallpaperMode:mode];
  if (!variant)
  {
    lockScreenWallpapers = [defaultsDomain lockScreenWallpapers];
    goto LABEL_5;
  }

  if (variant == 1)
  {
    lockScreenWallpapers = [defaultsDomain homeScreenWallpapers];
LABEL_5:
    v10 = lockScreenWallpapers;
    v11 = [lockScreenWallpapers objectForKey:v8];

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  v12 = [[PBUIWallpaperDefaultsWrapper alloc] initWithWallpaperDefaultsDict:v11];

  return v12;
}

- (void)_setDefaultsWithDictionary:(id)dictionary variant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  dictionaryCopy = dictionary;
  defaultsDomain = [(PBUIWallpaperDefaults *)self defaultsDomain];
  v9 = [(PBUIWallpaperDefaults *)self _keyForWallpaperMode:mode];
  if (variant == 1)
  {
    homeScreenWallpapers = [defaultsDomain homeScreenWallpapers];
  }

  else
  {
    if (variant)
    {
      v11 = 0;
      goto LABEL_7;
    }

    homeScreenWallpapers = [defaultsDomain lockScreenWallpapers];
  }

  v11 = homeScreenWallpapers;
LABEL_7:
  v12 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v11];
  [v12 setObject:dictionaryCopy forKey:v9];

  if (variant == 1)
  {
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v12];
    [defaultsDomain setHomeScreenWallpapers:v13];
  }

  else
  {
    if (variant)
    {
      goto LABEL_12;
    }

    v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v12];
    [defaultsDomain setLockScreenWallpapers:v13];
  }

LABEL_12:
}

- (id)_keyForWallpaperMode:(int64_t)mode
{
  if (mode >= 2)
  {
    modeCopy = mode;
  }

  else
  {
    modeCopy = 0;
  }

  v4 = PBUIStringForWallpaperMode(modeCopy);

  return v4;
}

- (void)setWallpaperKitData:(id)data forLocations:(int64_t)locations wallpaperMode:(int64_t)mode
{
  locationsCopy = locations;
  dataCopy = data;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__PBUIWallpaperDefaults_setWallpaperKitData_forLocations_wallpaperMode___block_invoke;
  v10[3] = &unk_2783626B0;
  v11 = dataCopy;
  modeCopy = mode;
  v10[4] = self;
  v9 = dataCopy;
  PBUIWallpaperEnumerateVariantsForLocations(locationsCopy, v10);
}

void __72__PBUIWallpaperDefaults_setWallpaperKitData_forLocations_wallpaperMode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__PBUIWallpaperDefaults_setWallpaperKitData_forLocations_wallpaperMode___block_invoke_2;
  v5[3] = &unk_2783642B8;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 _updateDefaultsForVariant:a2 wallpaperMode:v3 updater:v5];
}

- (id)wallpaperKitDataForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:mode];
  wallpaperKitData = [v4 wallpaperKitData];

  return wallpaperKitData;
}

- (void)setParallaxFactor:(double)factor forLocations:(int64_t)locations wallpaperMode:(int64_t)mode
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__PBUIWallpaperDefaults_setParallaxFactor_forLocations_wallpaperMode___block_invoke;
  v5[3] = &unk_278364300;
  v5[4] = self;
  v5[5] = mode;
  *&v5[6] = factor;
  PBUIWallpaperEnumerateVariantsForLocations(locations, v5);
}

uint64_t __70__PBUIWallpaperDefaults_setParallaxFactor_forLocations_wallpaperMode___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__PBUIWallpaperDefaults_setParallaxFactor_forLocations_wallpaperMode___block_invoke_2;
  v5[3] = &__block_descriptor_40_e38_v16__0__PBUIWallpaperDefaultsWrapper_8l;
  v5[4] = a1[6];
  return [v3 _updateDefaultsForVariant:a2 wallpaperMode:v2 updater:v5];
}

- (double)parallaxFactorForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:mode];
  [v4 parallaxFactor];
  v6 = v5;

  return v6;
}

- (void)setZoomScale:(double)scale forLocations:(int64_t)locations wallpaperMode:(int64_t)mode
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__PBUIWallpaperDefaults_setZoomScale_forLocations_wallpaperMode___block_invoke;
  v5[3] = &unk_278364300;
  v5[4] = self;
  v5[5] = mode;
  *&v5[6] = scale;
  PBUIWallpaperEnumerateVariantsForLocations(locations, v5);
}

uint64_t __65__PBUIWallpaperDefaults_setZoomScale_forLocations_wallpaperMode___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__PBUIWallpaperDefaults_setZoomScale_forLocations_wallpaperMode___block_invoke_2;
  v5[3] = &__block_descriptor_40_e38_v16__0__PBUIWallpaperDefaultsWrapper_8l;
  v5[4] = a1[6];
  return [v3 _updateDefaultsForVariant:a2 wallpaperMode:v2 updater:v5];
}

- (double)zoomScaleForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:mode];
  [v4 zoomScale];
  v6 = v5;

  return v6;
}

- (void)resetCroppingDefaults
{
  [(PBUIWallpaperDefaults *)self updateDefaultsForLocations:3 updater:&__block_literal_global_32_0];

  [(PBUIWallpaperDefaults *)self updateDefaultsForLocations:3 updater:&__block_literal_global_34_2];
}

- (void)setCropRect:(CGRect)rect forLocations:(int64_t)locations wallpaperMode:(int64_t)mode
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__PBUIWallpaperDefaults_setCropRect_forLocations_wallpaperMode___block_invoke;
  v5[3] = &unk_278364348;
  v5[4] = self;
  v5[5] = mode;
  rectCopy = rect;
  PBUIWallpaperEnumerateVariantsForLocations(locations, v5);
}

uint64_t __64__PBUIWallpaperDefaults_setCropRect_forLocations_wallpaperMode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__PBUIWallpaperDefaults_setCropRect_forLocations_wallpaperMode___block_invoke_2;
  v6[3] = &__block_descriptor_64_e38_v16__0__PBUIWallpaperDefaultsWrapper_8l;
  v4 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = v4;
  return [v3 _updateDefaultsForVariant:a2 wallpaperMode:v2 updater:v6];
}

- (CGRect)cropRectForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:mode];
  [v4 cropRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)setSupportsCropping:(BOOL)cropping forLocations:(int64_t)locations wallpaperMode:(int64_t)mode
{
  croppingCopy = cropping;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__PBUIWallpaperDefaults_setSupportsCropping_forLocations_wallpaperMode___block_invoke;
  v9[3] = &unk_278364390;
  v9[4] = self;
  v9[5] = mode;
  croppingCopy2 = cropping;
  PBUIWallpaperEnumerateVariantsForLocations(locations, v9);
  if (croppingCopy)
  {
    [(PBUIWallpaperDefaults *)self setMagnifyEnabled:0 forLocations:locations wallpaperMode:mode];
  }
}

uint64_t __72__PBUIWallpaperDefaults_setSupportsCropping_forLocations_wallpaperMode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__PBUIWallpaperDefaults_setSupportsCropping_forLocations_wallpaperMode___block_invoke_2;
  v5[3] = &__block_descriptor_33_e38_v16__0__PBUIWallpaperDefaultsWrapper_8l;
  v6 = *(a1 + 48);
  return [v3 _updateDefaultsForVariant:a2 wallpaperMode:v2 updater:v5];
}

- (BOOL)supportsCroppingForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:mode];
  supportsCropping = [v4 supportsCropping];

  return supportsCropping;
}

- (void)setMagnifyEnabled:(BOOL)enabled forLocations:(int64_t)locations wallpaperMode:(int64_t)mode
{
  enabledCopy = enabled;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__PBUIWallpaperDefaults_setMagnifyEnabled_forLocations_wallpaperMode___block_invoke;
  v9[3] = &unk_278364390;
  v9[4] = self;
  v9[5] = mode;
  enabledCopy2 = enabled;
  PBUIWallpaperEnumerateVariantsForLocations(locations, v9);
  if (enabledCopy)
  {
    [(PBUIWallpaperDefaults *)self setSupportsCropping:0 forLocations:locations wallpaperMode:mode];
  }
}

uint64_t __70__PBUIWallpaperDefaults_setMagnifyEnabled_forLocations_wallpaperMode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__PBUIWallpaperDefaults_setMagnifyEnabled_forLocations_wallpaperMode___block_invoke_2;
  v5[3] = &__block_descriptor_33_e38_v16__0__PBUIWallpaperDefaultsWrapper_8l;
  v6 = *(a1 + 48);
  return [v3 _updateDefaultsForVariant:a2 wallpaperMode:v2 updater:v5];
}

- (BOOL)magnifyEnabledForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:mode];
  magnifyEnabled = [v4 magnifyEnabled];

  return magnifyEnabled;
}

- (void)setPortrait:(BOOL)portrait forLocations:(int64_t)locations wallpaperMode:(int64_t)mode
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__PBUIWallpaperDefaults_setPortrait_forLocations_wallpaperMode___block_invoke;
  v5[3] = &unk_278364390;
  v5[4] = self;
  v5[5] = mode;
  portraitCopy = portrait;
  PBUIWallpaperEnumerateVariantsForLocations(locations, v5);
}

uint64_t __64__PBUIWallpaperDefaults_setPortrait_forLocations_wallpaperMode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__PBUIWallpaperDefaults_setPortrait_forLocations_wallpaperMode___block_invoke_2;
  v5[3] = &__block_descriptor_33_e38_v16__0__PBUIWallpaperDefaultsWrapper_8l;
  v6 = *(a1 + 48);
  return [v3 _updateDefaultsForVariant:a2 wallpaperMode:v2 updater:v5];
}

- (BOOL)isPortraitForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:mode];
  portrait = [v4 portrait];

  return portrait;
}

- (void)setName:(id)name forLocations:(int64_t)locations wallpaperMode:(int64_t)mode
{
  locationsCopy = locations;
  nameCopy = name;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__PBUIWallpaperDefaults_setName_forLocations_wallpaperMode___block_invoke;
  v10[3] = &unk_2783626B0;
  v11 = nameCopy;
  modeCopy = mode;
  v10[4] = self;
  v9 = nameCopy;
  PBUIWallpaperEnumerateVariantsForLocations(locationsCopy, v10);
}

void __60__PBUIWallpaperDefaults_setName_forLocations_wallpaperMode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__PBUIWallpaperDefaults_setName_forLocations_wallpaperMode___block_invoke_2;
  v5[3] = &unk_2783642B8;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 _updateDefaultsForVariant:a2 wallpaperMode:v3 updater:v5];
}

- (id)nameForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  if (variant == -1)
  {
    wallpaperName = 0;
  }

  else
  {
    v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:mode];
    wallpaperName = [v4 wallpaperName];
  }

  return wallpaperName;
}

- (void)setImageHash:(id)hash forLocations:(int64_t)locations wallpaperMode:(int64_t)mode
{
  locationsCopy = locations;
  hashCopy = hash;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__PBUIWallpaperDefaults_setImageHash_forLocations_wallpaperMode___block_invoke;
  v10[3] = &unk_2783626B0;
  v11 = hashCopy;
  modeCopy = mode;
  v10[4] = self;
  v9 = hashCopy;
  PBUIWallpaperEnumerateVariantsForLocations(locationsCopy, v10);
}

void __65__PBUIWallpaperDefaults_setImageHash_forLocations_wallpaperMode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__PBUIWallpaperDefaults_setImageHash_forLocations_wallpaperMode___block_invoke_2;
  v5[3] = &unk_2783642B8;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 _updateDefaultsForVariant:a2 wallpaperMode:v3 updater:v5];
}

- (id)imageHashForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  if (variant == -1)
  {
    imageHashData = 0;
  }

  else
  {
    v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:mode];
    imageHashData = [v4 imageHashData];
  }

  return imageHashData;
}

- (void)setHasVideo:(BOOL)video
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__PBUIWallpaperDefaults_setHasVideo___block_invoke;
  v3[3] = &__block_descriptor_33_e38_v16__0__PBUIWallpaperDefaultsWrapper_8l;
  videoCopy = video;
  [(PBUIWallpaperDefaults *)self _updateDefaultsForVariant:0 wallpaperMode:0 updater:v3];
}

- (BOOL)hasVideoForVariant:(int64_t)variant
{
  v3 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:0];
  hasVideo = [v3 hasVideo];

  return hasVideo;
}

- (void)setStillTimeInVideo:(double)video
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__PBUIWallpaperDefaults_setStillTimeInVideo___block_invoke;
  v3[3] = &__block_descriptor_40_e38_v16__0__PBUIWallpaperDefaultsWrapper_8l;
  *&v3[4] = video;
  [(PBUIWallpaperDefaults *)self _updateDefaultsForVariant:0 wallpaperMode:0 updater:v3];
}

- (double)stillTimeInVideoForVariant:(int64_t)variant
{
  v3 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:0];
  [v3 stillTimeInVideo];
  v5 = v4;

  return v5;
}

- (void)setColorData:(id)data forLocations:(int64_t)locations
{
  locationsCopy = locations;
  dataCopy = data;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__PBUIWallpaperDefaults_setColorData_forLocations___block_invoke;
  v8[3] = &unk_278362330;
  v8[4] = self;
  v9 = dataCopy;
  v7 = dataCopy;
  PBUIWallpaperEnumerateVariantsForLocations(locationsCopy, v8);
}

void __51__PBUIWallpaperDefaults_setColorData_forLocations___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__PBUIWallpaperDefaults_setColorData_forLocations___block_invoke_2;
  v4[3] = &unk_2783642B8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _updateDefaultsForVariant:a2 wallpaperMode:0 updater:v4];
}

- (id)wallpaperColorDataForVariant:(int64_t)variant
{
  v3 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:0];
  colorData = [v3 colorData];

  return colorData;
}

- (void)setColorName:(id)name forLocations:(int64_t)locations
{
  locationsCopy = locations;
  nameCopy = name;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__PBUIWallpaperDefaults_setColorName_forLocations___block_invoke;
  v8[3] = &unk_278362330;
  v8[4] = self;
  v9 = nameCopy;
  v7 = nameCopy;
  PBUIWallpaperEnumerateVariantsForLocations(locationsCopy, v8);
}

void __51__PBUIWallpaperDefaults_setColorName_forLocations___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__PBUIWallpaperDefaults_setColorName_forLocations___block_invoke_2;
  v4[3] = &unk_2783642B8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _updateDefaultsForVariant:a2 wallpaperMode:0 updater:v4];
}

- (id)wallpaperColorNameForVariant:(int64_t)variant
{
  v3 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:0];
  colorName = [v3 colorName];

  return colorName;
}

- (void)setGradientData:(id)data forLocations:(int64_t)locations
{
  locationsCopy = locations;
  dataCopy = data;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__PBUIWallpaperDefaults_setGradientData_forLocations___block_invoke;
  v8[3] = &unk_278362330;
  v8[4] = self;
  v9 = dataCopy;
  v7 = dataCopy;
  PBUIWallpaperEnumerateVariantsForLocations(locationsCopy, v8);
}

void __54__PBUIWallpaperDefaults_setGradientData_forLocations___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__PBUIWallpaperDefaults_setGradientData_forLocations___block_invoke_2;
  v4[3] = &unk_2783642B8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _updateDefaultsForVariant:a2 wallpaperMode:0 updater:v4];
}

- (id)wallpaperGradientDataForVariant:(int64_t)variant
{
  v3 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:0];
  gradientData = [v3 gradientData];

  return gradientData;
}

- (void)setProceduralIdentifier:(id)identifier forLocations:(int64_t)locations
{
  locationsCopy = locations;
  identifierCopy = identifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__PBUIWallpaperDefaults_setProceduralIdentifier_forLocations___block_invoke;
  v8[3] = &unk_278362330;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  PBUIWallpaperEnumerateVariantsForLocations(locationsCopy, v8);
}

void __62__PBUIWallpaperDefaults_setProceduralIdentifier_forLocations___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__PBUIWallpaperDefaults_setProceduralIdentifier_forLocations___block_invoke_2;
  v4[3] = &unk_2783642B8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _updateDefaultsForVariant:a2 wallpaperMode:0 updater:v4];
}

- (id)proceduralIdentifierForVariant:(int64_t)variant
{
  v3 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:0];
  wallpaperIdentifier = [v3 wallpaperIdentifier];

  return wallpaperIdentifier;
}

- (void)setProceduralOptions:(id)options forLocations:(int64_t)locations
{
  locationsCopy = locations;
  optionsCopy = options;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__PBUIWallpaperDefaults_setProceduralOptions_forLocations___block_invoke;
  v8[3] = &unk_278362330;
  v8[4] = self;
  v9 = optionsCopy;
  v7 = optionsCopy;
  PBUIWallpaperEnumerateVariantsForLocations(locationsCopy, v8);
}

void __59__PBUIWallpaperDefaults_setProceduralOptions_forLocations___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__PBUIWallpaperDefaults_setProceduralOptions_forLocations___block_invoke_2;
  v4[3] = &unk_2783642B8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _updateDefaultsForVariant:a2 wallpaperMode:0 updater:v4];
}

- (id)proceduralOptionsForVariant:(int64_t)variant
{
  v3 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:0];
  wallpaperOptions = [v3 wallpaperOptions];

  return wallpaperOptions;
}

- (void)setProceduralUserSet:(BOOL)set forLocations:(int64_t)locations
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__PBUIWallpaperDefaults_setProceduralUserSet_forLocations___block_invoke;
  v4[3] = &unk_2783643B8;
  v4[4] = self;
  setCopy = set;
  PBUIWallpaperEnumerateVariantsForLocations(locations, v4);
}

uint64_t __59__PBUIWallpaperDefaults_setProceduralUserSet_forLocations___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__PBUIWallpaperDefaults_setProceduralUserSet_forLocations___block_invoke_2;
  v4[3] = &__block_descriptor_33_e38_v16__0__PBUIWallpaperDefaultsWrapper_8l;
  v5 = *(a1 + 40);
  return [v2 _updateDefaultsForVariant:a2 wallpaperMode:0 updater:v4];
}

- (BOOL)proceduralUserSetForVariant:(int64_t)variant
{
  v3 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:variant wallpaperMode:0];
  wallpaperWasUserSet = [v3 wallpaperWasUserSet];

  return wallpaperWasUserSet;
}

@end