@interface PBUIWallpaperDefaults
+ (id)defaults;
- (BOOL)hasVideoForVariant:(int64_t)a3;
- (BOOL)isPortraitForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (BOOL)magnifyEnabledForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (BOOL)proceduralUserSetForVariant:(int64_t)a3;
- (BOOL)supportsCroppingForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (CGRect)cropRectForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (PBUIWallpaperDefaults)init;
- (PBUIWallpaperDefaults)initWithdefaultsDomain:(id)a3;
- (double)parallaxFactorForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (double)stillTimeInVideoForVariant:(int64_t)a3;
- (double)zoomScaleForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)_defaultsWrapperForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)_keyForWallpaperMode:(int64_t)a3;
- (id)description;
- (id)imageHashForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)nameForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)proceduralIdentifierForVariant:(int64_t)a3;
- (id)proceduralOptionsForVariant:(int64_t)a3;
- (id)wallpaperColorDataForVariant:(int64_t)a3;
- (id)wallpaperColorNameForVariant:(int64_t)a3;
- (id)wallpaperGradientDataForVariant:(int64_t)a3;
- (id)wallpaperKitDataForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)wallpaperOptionsForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (void)_setDefaultsWithDictionary:(id)a3 variant:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (void)_updateDefaultsForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4 updater:(id)a5;
- (void)resetCroppingDefaults;
- (void)resetDefaults;
- (void)setColorData:(id)a3 forLocations:(int64_t)a4;
- (void)setColorName:(id)a3 forLocations:(int64_t)a4;
- (void)setCropRect:(CGRect)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (void)setGradientData:(id)a3 forLocations:(int64_t)a4;
- (void)setHasVideo:(BOOL)a3;
- (void)setImageHash:(id)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (void)setMagnifyEnabled:(BOOL)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (void)setName:(id)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (void)setParallaxFactor:(double)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (void)setPortrait:(BOOL)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (void)setProceduralIdentifier:(id)a3 forLocations:(int64_t)a4;
- (void)setProceduralOptions:(id)a3 forLocations:(int64_t)a4;
- (void)setProceduralUserSet:(BOOL)a3 forLocations:(int64_t)a4;
- (void)setStillTimeInVideo:(double)a3;
- (void)setSupportsCropping:(BOOL)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (void)setWallpaperKitData:(id)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (void)setWallpaperOptions:(id)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (void)setZoomScale:(double)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (void)updateDefaultsForLocations:(int64_t)a3 updater:(id)a4;
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

- (PBUIWallpaperDefaults)initWithdefaultsDomain:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PBUIWallpaperDefaults;
  v6 = [(PBUIWallpaperDefaults *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultsDomain, a3);
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

- (id)wallpaperOptionsForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v7 = objc_alloc_init(PBUIWallpaperOptions);
  [(PBUIWallpaperOptions *)v7 setSupportsCropping:[(PBUIWallpaperDefaults *)self supportsCroppingForVariant:a3 wallpaperMode:a4]];
  [(PBUIWallpaperDefaults *)self cropRectForVariant:a3 wallpaperMode:a4];
  [(PBUIWallpaperOptions *)v7 setCropRect:?];
  [(PBUIWallpaperDefaults *)self parallaxFactorForVariant:a3 wallpaperMode:a4];
  [(PBUIWallpaperOptions *)v7 setParallaxFactor:?];
  [(PBUIWallpaperOptions *)v7 setMagnifyEnabled:[(PBUIWallpaperDefaults *)self magnifyEnabledForVariant:a3 wallpaperMode:a4]];
  [(PBUIWallpaperDefaults *)self zoomScaleForVariant:a3 wallpaperMode:a4];
  [(PBUIWallpaperOptions *)v7 setZoomScale:?];
  [(PBUIWallpaperOptions *)v7 setPortrait:[(PBUIWallpaperDefaults *)self isPortraitForVariant:a3 wallpaperMode:a4]];
  v8 = [(PBUIWallpaperDefaults *)self nameForVariant:a3 wallpaperMode:a4];
  [(PBUIWallpaperOptions *)v7 setName:v8];

  [(PBUIWallpaperOptions *)v7 setWallpaperMode:a4];
  [(PBUIWallpaperOptions *)v7 setHasVideo:[(PBUIWallpaperDefaults *)self hasVideoForVariant:a3]];
  [(PBUIWallpaperDefaults *)self stillTimeInVideoForVariant:a3];
  [(PBUIWallpaperOptions *)v7 setStillTimeInVideo:?];
  v9 = [(PBUIWallpaperDefaults *)self wallpaperKitDataForVariant:a3 wallpaperMode:a4];
  [(PBUIWallpaperOptions *)v7 setWallpaperKitData:v9];

  return v7;
}

- (void)setWallpaperOptions:(id)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v8 = a3;
  -[PBUIWallpaperDefaults setSupportsCropping:forLocations:wallpaperMode:](self, "setSupportsCropping:forLocations:wallpaperMode:", [v8 supportsCropping], a4, a5);
  [v8 cropRect];
  [(PBUIWallpaperDefaults *)self setCropRect:a4 forLocations:a5 wallpaperMode:?];
  [v8 parallaxFactor];
  [(PBUIWallpaperDefaults *)self setParallaxFactor:a4 forLocations:a5 wallpaperMode:?];
  -[PBUIWallpaperDefaults setMagnifyEnabled:forLocations:wallpaperMode:](self, "setMagnifyEnabled:forLocations:wallpaperMode:", [v8 isMagnifyEnabled], a4, a5);
  [v8 zoomScale];
  [(PBUIWallpaperDefaults *)self setZoomScale:a4 forLocations:a5 wallpaperMode:?];
  -[PBUIWallpaperDefaults setPortrait:forLocations:wallpaperMode:](self, "setPortrait:forLocations:wallpaperMode:", [v8 isPortrait], a4, a5);
  v9 = [v8 name];
  [(PBUIWallpaperDefaults *)self setName:v9 forLocations:a4 wallpaperMode:a5];

  -[PBUIWallpaperDefaults setHasVideo:](self, "setHasVideo:", [v8 hasVideo]);
  [v8 stillTimeInVideo];
  [(PBUIWallpaperDefaults *)self setStillTimeInVideo:?];
  v10 = [v8 wallpaperKitData];

  [(PBUIWallpaperDefaults *)self setWallpaperKitData:v10 forLocations:a4 wallpaperMode:a5];
}

- (void)updateDefaultsForLocations:(int64_t)a3 updater:(id)a4
{
  v4 = a3;
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__PBUIWallpaperDefaults_updateDefaultsForLocations_updater___block_invoke;
  v8[3] = &unk_278364270;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  PBUIWallpaperEnumerateVariantsForLocations(v4, v8);
}

uint64_t __60__PBUIWallpaperDefaults_updateDefaultsForLocations_updater___block_invoke(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 4; ++i)
  {
    result = [*(a1 + 32) _updateDefaultsForVariant:a2 wallpaperMode:i updater:*(a1 + 40)];
  }

  return result;
}

- (void)_updateDefaultsForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4 updater:(id)a5
{
  v8 = a5;
  v10 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:a4];
  v8[2](v8, v10);

  v9 = [v10 wallpaperDefaultsDict];
  [(PBUIWallpaperDefaults *)self _setDefaultsWithDictionary:v9 variant:a3 wallpaperMode:a4];
}

- (id)_defaultsWrapperForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v7 = [(PBUIWallpaperDefaults *)self defaultsDomain];
  v8 = [(PBUIWallpaperDefaults *)self _keyForWallpaperMode:a4];
  if (!a3)
  {
    v9 = [v7 lockScreenWallpapers];
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v9 = [v7 homeScreenWallpapers];
LABEL_5:
    v10 = v9;
    v11 = [v9 objectForKey:v8];

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  v12 = [[PBUIWallpaperDefaultsWrapper alloc] initWithWallpaperDefaultsDict:v11];

  return v12;
}

- (void)_setDefaultsWithDictionary:(id)a3 variant:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v8 = a3;
  v14 = [(PBUIWallpaperDefaults *)self defaultsDomain];
  v9 = [(PBUIWallpaperDefaults *)self _keyForWallpaperMode:a5];
  if (a4 == 1)
  {
    v10 = [v14 homeScreenWallpapers];
  }

  else
  {
    if (a4)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v10 = [v14 lockScreenWallpapers];
  }

  v11 = v10;
LABEL_7:
  v12 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v11];
  [v12 setObject:v8 forKey:v9];

  if (a4 == 1)
  {
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v12];
    [v14 setHomeScreenWallpapers:v13];
  }

  else
  {
    if (a4)
    {
      goto LABEL_12;
    }

    v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v12];
    [v14 setLockScreenWallpapers:v13];
  }

LABEL_12:
}

- (id)_keyForWallpaperMode:(int64_t)a3
{
  if (a3 >= 2)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  v4 = PBUIStringForWallpaperMode(v3);

  return v4;
}

- (void)setWallpaperKitData:(id)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__PBUIWallpaperDefaults_setWallpaperKitData_forLocations_wallpaperMode___block_invoke;
  v10[3] = &unk_2783626B0;
  v11 = v8;
  v12 = a5;
  v10[4] = self;
  v9 = v8;
  PBUIWallpaperEnumerateVariantsForLocations(v6, v10);
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

- (id)wallpaperKitDataForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:a4];
  v5 = [v4 wallpaperKitData];

  return v5;
}

- (void)setParallaxFactor:(double)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__PBUIWallpaperDefaults_setParallaxFactor_forLocations_wallpaperMode___block_invoke;
  v5[3] = &unk_278364300;
  v5[4] = self;
  v5[5] = a5;
  *&v5[6] = a3;
  PBUIWallpaperEnumerateVariantsForLocations(a4, v5);
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

- (double)parallaxFactorForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:a4];
  [v4 parallaxFactor];
  v6 = v5;

  return v6;
}

- (void)setZoomScale:(double)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__PBUIWallpaperDefaults_setZoomScale_forLocations_wallpaperMode___block_invoke;
  v5[3] = &unk_278364300;
  v5[4] = self;
  v5[5] = a5;
  *&v5[6] = a3;
  PBUIWallpaperEnumerateVariantsForLocations(a4, v5);
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

- (double)zoomScaleForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:a4];
  [v4 zoomScale];
  v6 = v5;

  return v6;
}

- (void)resetCroppingDefaults
{
  [(PBUIWallpaperDefaults *)self updateDefaultsForLocations:3 updater:&__block_literal_global_32_0];

  [(PBUIWallpaperDefaults *)self updateDefaultsForLocations:3 updater:&__block_literal_global_34_2];
}

- (void)setCropRect:(CGRect)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__PBUIWallpaperDefaults_setCropRect_forLocations_wallpaperMode___block_invoke;
  v5[3] = &unk_278364348;
  v5[4] = self;
  v5[5] = a5;
  v6 = a3;
  PBUIWallpaperEnumerateVariantsForLocations(a4, v5);
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

- (CGRect)cropRectForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:a4];
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

- (void)setSupportsCropping:(BOOL)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v7 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__PBUIWallpaperDefaults_setSupportsCropping_forLocations_wallpaperMode___block_invoke;
  v9[3] = &unk_278364390;
  v9[4] = self;
  v9[5] = a5;
  v10 = a3;
  PBUIWallpaperEnumerateVariantsForLocations(a4, v9);
  if (v7)
  {
    [(PBUIWallpaperDefaults *)self setMagnifyEnabled:0 forLocations:a4 wallpaperMode:a5];
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

- (BOOL)supportsCroppingForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:a4];
  v5 = [v4 supportsCropping];

  return v5;
}

- (void)setMagnifyEnabled:(BOOL)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v7 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__PBUIWallpaperDefaults_setMagnifyEnabled_forLocations_wallpaperMode___block_invoke;
  v9[3] = &unk_278364390;
  v9[4] = self;
  v9[5] = a5;
  v10 = a3;
  PBUIWallpaperEnumerateVariantsForLocations(a4, v9);
  if (v7)
  {
    [(PBUIWallpaperDefaults *)self setSupportsCropping:0 forLocations:a4 wallpaperMode:a5];
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

- (BOOL)magnifyEnabledForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:a4];
  v5 = [v4 magnifyEnabled];

  return v5;
}

- (void)setPortrait:(BOOL)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__PBUIWallpaperDefaults_setPortrait_forLocations_wallpaperMode___block_invoke;
  v5[3] = &unk_278364390;
  v5[4] = self;
  v5[5] = a5;
  v6 = a3;
  PBUIWallpaperEnumerateVariantsForLocations(a4, v5);
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

- (BOOL)isPortraitForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:a4];
  v5 = [v4 portrait];

  return v5;
}

- (void)setName:(id)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__PBUIWallpaperDefaults_setName_forLocations_wallpaperMode___block_invoke;
  v10[3] = &unk_2783626B0;
  v11 = v8;
  v12 = a5;
  v10[4] = self;
  v9 = v8;
  PBUIWallpaperEnumerateVariantsForLocations(v6, v10);
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

- (id)nameForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  if (a3 == -1)
  {
    v5 = 0;
  }

  else
  {
    v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:a4];
    v5 = [v4 wallpaperName];
  }

  return v5;
}

- (void)setImageHash:(id)a3 forLocations:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__PBUIWallpaperDefaults_setImageHash_forLocations_wallpaperMode___block_invoke;
  v10[3] = &unk_2783626B0;
  v11 = v8;
  v12 = a5;
  v10[4] = self;
  v9 = v8;
  PBUIWallpaperEnumerateVariantsForLocations(v6, v10);
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

- (id)imageHashForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  if (a3 == -1)
  {
    v5 = 0;
  }

  else
  {
    v4 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:a4];
    v5 = [v4 imageHashData];
  }

  return v5;
}

- (void)setHasVideo:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__PBUIWallpaperDefaults_setHasVideo___block_invoke;
  v3[3] = &__block_descriptor_33_e38_v16__0__PBUIWallpaperDefaultsWrapper_8l;
  v4 = a3;
  [(PBUIWallpaperDefaults *)self _updateDefaultsForVariant:0 wallpaperMode:0 updater:v3];
}

- (BOOL)hasVideoForVariant:(int64_t)a3
{
  v3 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:0];
  v4 = [v3 hasVideo];

  return v4;
}

- (void)setStillTimeInVideo:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__PBUIWallpaperDefaults_setStillTimeInVideo___block_invoke;
  v3[3] = &__block_descriptor_40_e38_v16__0__PBUIWallpaperDefaultsWrapper_8l;
  *&v3[4] = a3;
  [(PBUIWallpaperDefaults *)self _updateDefaultsForVariant:0 wallpaperMode:0 updater:v3];
}

- (double)stillTimeInVideoForVariant:(int64_t)a3
{
  v3 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:0];
  [v3 stillTimeInVideo];
  v5 = v4;

  return v5;
}

- (void)setColorData:(id)a3 forLocations:(int64_t)a4
{
  v4 = a4;
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__PBUIWallpaperDefaults_setColorData_forLocations___block_invoke;
  v8[3] = &unk_278362330;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  PBUIWallpaperEnumerateVariantsForLocations(v4, v8);
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

- (id)wallpaperColorDataForVariant:(int64_t)a3
{
  v3 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:0];
  v4 = [v3 colorData];

  return v4;
}

- (void)setColorName:(id)a3 forLocations:(int64_t)a4
{
  v4 = a4;
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__PBUIWallpaperDefaults_setColorName_forLocations___block_invoke;
  v8[3] = &unk_278362330;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  PBUIWallpaperEnumerateVariantsForLocations(v4, v8);
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

- (id)wallpaperColorNameForVariant:(int64_t)a3
{
  v3 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:0];
  v4 = [v3 colorName];

  return v4;
}

- (void)setGradientData:(id)a3 forLocations:(int64_t)a4
{
  v4 = a4;
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__PBUIWallpaperDefaults_setGradientData_forLocations___block_invoke;
  v8[3] = &unk_278362330;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  PBUIWallpaperEnumerateVariantsForLocations(v4, v8);
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

- (id)wallpaperGradientDataForVariant:(int64_t)a3
{
  v3 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:0];
  v4 = [v3 gradientData];

  return v4;
}

- (void)setProceduralIdentifier:(id)a3 forLocations:(int64_t)a4
{
  v4 = a4;
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__PBUIWallpaperDefaults_setProceduralIdentifier_forLocations___block_invoke;
  v8[3] = &unk_278362330;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  PBUIWallpaperEnumerateVariantsForLocations(v4, v8);
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

- (id)proceduralIdentifierForVariant:(int64_t)a3
{
  v3 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:0];
  v4 = [v3 wallpaperIdentifier];

  return v4;
}

- (void)setProceduralOptions:(id)a3 forLocations:(int64_t)a4
{
  v4 = a4;
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__PBUIWallpaperDefaults_setProceduralOptions_forLocations___block_invoke;
  v8[3] = &unk_278362330;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  PBUIWallpaperEnumerateVariantsForLocations(v4, v8);
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

- (id)proceduralOptionsForVariant:(int64_t)a3
{
  v3 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:0];
  v4 = [v3 wallpaperOptions];

  return v4;
}

- (void)setProceduralUserSet:(BOOL)a3 forLocations:(int64_t)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__PBUIWallpaperDefaults_setProceduralUserSet_forLocations___block_invoke;
  v4[3] = &unk_2783643B8;
  v4[4] = self;
  v5 = a3;
  PBUIWallpaperEnumerateVariantsForLocations(a4, v4);
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

- (BOOL)proceduralUserSetForVariant:(int64_t)a3
{
  v3 = [(PBUIWallpaperDefaults *)self _defaultsWrapperForVariant:a3 wallpaperMode:0];
  v4 = [v3 wallpaperWasUserSet];

  return v4;
}

@end