@interface CSVibrancyUtility
+ (void)updateVibrantView:(id)view backgroundView:(id)backgroundView colorProvider:(id)provider;
@end

@implementation CSVibrancyUtility

+ (void)updateVibrantView:(id)view backgroundView:(id)backgroundView colorProvider:(id)provider
{
  providerCopy = provider;
  backgroundViewCopy = backgroundView;
  viewCopy = view;
  legibilitySettings = [viewCopy legibilitySettings];
  averageColorForCurrentWallpaper = [providerCopy averageColorForCurrentWallpaper];
  [viewCopy setBackgroundColor:averageColorForCurrentWallpaper];
  [viewCopy setBackgroundView:backgroundViewCopy];

  [providerCopy contrastForCurrentWallpaper];
  v12 = v11;

  v13 = [MEMORY[0x277D66018] vibrantSettingsWithReferenceColor:averageColorForCurrentWallpaper referenceContrast:legibilitySettings legibilitySettings:v12];
  [viewCopy setVibrantSettings:v13];
}

@end