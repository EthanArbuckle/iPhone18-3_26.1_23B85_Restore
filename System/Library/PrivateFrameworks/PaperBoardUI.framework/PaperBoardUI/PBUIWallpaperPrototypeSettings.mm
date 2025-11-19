@interface PBUIWallpaperPrototypeSettings
+ (id)settingsControllerModule;
- (id)parallaxSettingsForVariant:(int64_t)a3;
- (void)setDefaultValues;
@end

@implementation PBUIWallpaperPrototypeSettings

- (void)setDefaultValues
{
  v36.receiver = self;
  v36.super_class = PBUIWallpaperPrototypeSettings;
  [(PTSettings *)&v36 setDefaultValues];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [v5 setSlideEnabled:1];

  v6 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [v6 setSlideDirectionX:-1];

  v7 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [v7 setSlideDirectionY:-1];

  v8 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  v9 = v8;
  v10 = 10.0;
  if (v4 == 1)
  {
    v10 = 30.0;
    v11 = 40.0;
  }

  else
  {
    v11 = 12.0;
  }

  if (v4 == 1)
  {
    v12 = 60.0;
  }

  else
  {
    v12 = 30.0;
  }

  if (v4 == 1)
  {
    v13 = 80.0;
  }

  else
  {
    v13 = 40.0;
  }

  [v8 setSlidePixelsX:v10];

  v14 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [v14 setSlidePixelsY:v11];

  v15 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [v15 setTiltEnabled:1];

  v16 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [v16 setTiltDirectionX:-1];

  v17 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [v17 setTiltDirectionY:-1];

  v18 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [v18 setTiltDegreesX:3.3];

  v19 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [v19 setTiltDegreesY:5.7];

  v20 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [v20 setDistanceFromScreen:-100];

  v21 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [v21 setIncreaseEnabled:1];

  v22 = [(PBUIWallpaperPrototypeSettings *)self homeScreenParallaxSettings];
  [v22 setSlideIncreaseY:50.0];

  v23 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [v23 setSlideEnabled:1];

  v24 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [v24 setSlideDirectionX:-1];

  v25 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [v25 setSlideDirectionY:-1];

  v26 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [v26 setSlidePixelsX:v12];

  v27 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [v27 setSlidePixelsY:v13];

  v28 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [v28 setTiltEnabled:1];

  v29 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [v29 setTiltDirectionX:-1];

  v30 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [v30 setTiltDirectionY:-1];

  v31 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [v31 setTiltDegreesX:3.3];

  v32 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [v32 setTiltDegreesY:5.7];

  v33 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [v33 setDistanceFromScreen:-100];

  v34 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [v34 setIncreaseEnabled:1];

  v35 = [(PBUIWallpaperPrototypeSettings *)self lockScreenParallaxSettings];
  [v35 setSlideIncreaseY:50.0];
}

- (id)parallaxSettingsForVariant:(int64_t)a3
{
  if ((a3 + 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.isa + *off_2783643D8[a3 + 1]);
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
  v7 = [MEMORY[0x277D43238] action];
  v8 = [v6 rowWithTitle:@"Restore Defaults" action:v7];
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