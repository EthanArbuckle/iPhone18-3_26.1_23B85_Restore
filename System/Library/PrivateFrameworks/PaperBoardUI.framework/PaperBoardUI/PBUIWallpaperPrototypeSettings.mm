@interface PBUIWallpaperPrototypeSettings
+ (id)settingsControllerModule;
- (id)parallaxSettingsForVariant:(int64_t)variant;
- (void)setDefaultValues;
@end

@implementation PBUIWallpaperPrototypeSettings

- (void)setDefaultValues
{
  v36.receiver = self;
  v36.super_class = PBUIWallpaperPrototypeSettings;
  [(PTSettings *)&v36 setDefaultValues];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  homeScreenParallaxSettings = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [homeScreenParallaxSettings setSlideEnabled:1];

  homeScreenParallaxSettings2 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [homeScreenParallaxSettings2 setSlideDirectionX:-1];

  homeScreenParallaxSettings3 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [homeScreenParallaxSettings3 setSlideDirectionY:-1];

  homeScreenParallaxSettings4 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  v9 = homeScreenParallaxSettings4;
  v10 = 10.0;
  if (userInterfaceIdiom == 1)
  {
    v10 = 30.0;
    v11 = 40.0;
  }

  else
  {
    v11 = 12.0;
  }

  if (userInterfaceIdiom == 1)
  {
    v12 = 60.0;
  }

  else
  {
    v12 = 30.0;
  }

  if (userInterfaceIdiom == 1)
  {
    v13 = 80.0;
  }

  else
  {
    v13 = 40.0;
  }

  [homeScreenParallaxSettings4 setSlidePixelsX:v10];

  homeScreenParallaxSettings5 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [homeScreenParallaxSettings5 setSlidePixelsY:v11];

  homeScreenParallaxSettings6 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [homeScreenParallaxSettings6 setTiltEnabled:1];

  homeScreenParallaxSettings7 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [homeScreenParallaxSettings7 setTiltDirectionX:-1];

  homeScreenParallaxSettings8 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [homeScreenParallaxSettings8 setTiltDirectionY:-1];

  homeScreenParallaxSettings9 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [homeScreenParallaxSettings9 setTiltDegreesX:3.3];

  homeScreenParallaxSettings10 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [homeScreenParallaxSettings10 setTiltDegreesY:5.7];

  homeScreenParallaxSettings11 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [homeScreenParallaxSettings11 setDistanceFromScreen:-100];

  homeScreenParallaxSettings12 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [homeScreenParallaxSettings12 setIncreaseEnabled:1];

  homeScreenParallaxSettings13 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [homeScreenParallaxSettings13 setSlideIncreaseY:50.0];

  lockScreenParallaxSettings = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [lockScreenParallaxSettings setSlideEnabled:1];

  lockScreenParallaxSettings2 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [lockScreenParallaxSettings2 setSlideDirectionX:-1];

  lockScreenParallaxSettings3 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [lockScreenParallaxSettings3 setSlideDirectionY:-1];

  lockScreenParallaxSettings4 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [lockScreenParallaxSettings4 setSlidePixelsX:v12];

  lockScreenParallaxSettings5 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [lockScreenParallaxSettings5 setSlidePixelsY:v13];

  lockScreenParallaxSettings6 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [lockScreenParallaxSettings6 setTiltEnabled:1];

  lockScreenParallaxSettings7 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [lockScreenParallaxSettings7 setTiltDirectionX:-1];

  lockScreenParallaxSettings8 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [lockScreenParallaxSettings8 setTiltDirectionY:-1];

  lockScreenParallaxSettings9 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [lockScreenParallaxSettings9 setTiltDegreesX:3.3];

  lockScreenParallaxSettings10 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [lockScreenParallaxSettings10 setTiltDegreesY:5.7];

  lockScreenParallaxSettings11 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [lockScreenParallaxSettings11 setDistanceFromScreen:-100];

  lockScreenParallaxSettings12 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [lockScreenParallaxSettings12 setIncreaseEnabled:1];

  lockScreenParallaxSettings13 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [lockScreenParallaxSettings13 setSlideIncreaseY:50.0];
}

- (id)parallaxSettingsForVariant:(int64_t)variant
{
  if ((variant + 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.isa + *off_2783643D8[variant + 1]);
  }

  return v4;
}

+ (id)settingsControllerModule
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431E0] rowWithTitle:@"Home Screen Parallax" childSettingsKeyPath:@"homeScreenParallaxSettings"];
  v18[0] = v2;
  v3 = [MEMORY[0x277D431E0] rowWithTitle:@"Lock Screen Parallax" childSettingsKeyPath:@"lockScreenParallaxSettings"];
  v18[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

  v5 = [MEMORY[0x277D43218] sectionWithRows:v4];
  v6 = MEMORY[0x277D431A8];
  action = [MEMORY[0x277D43238] action];
  v8 = [v6 rowWithTitle:@"Restore Defaults" action:action];
  v17[0] = v8;
  v9 = [MEMORY[0x277D431A8] rowWithTitle:@"Set Default Wallpaper (Kills SpringBoard)" outletKeyPath:@"resetWallpaperOutlet"];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  v11 = [MEMORY[0x277D43218] sectionWithRows:v10];
  v12 = MEMORY[0x277D43218];
  v16[0] = v5;
  v16[1] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v14 = [v12 moduleWithTitle:@"Wallpaper" contents:v13];

  return v14;
}

@end