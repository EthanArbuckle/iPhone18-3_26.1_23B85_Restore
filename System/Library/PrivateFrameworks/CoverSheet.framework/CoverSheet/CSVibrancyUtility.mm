@interface CSVibrancyUtility
+ (void)updateVibrantView:(id)a3 backgroundView:(id)a4 colorProvider:(id)a5;
@end

@implementation CSVibrancyUtility

+ (void)updateVibrantView:(id)a3 backgroundView:(id)a4 colorProvider:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v14 = [v9 legibilitySettings];
  v10 = [v7 averageColorForCurrentWallpaper];
  [v9 setBackgroundColor:v10];
  [v9 setBackgroundView:v8];

  [v7 contrastForCurrentWallpaper];
  v12 = v11;

  v13 = [MEMORY[0x277D66018] vibrantSettingsWithReferenceColor:v10 referenceContrast:v14 legibilitySettings:v12];
  [v9 setVibrantSettings:v13];
}

@end