@interface PBUIWallpaperDefaultsDomain
- (void)_bindAndRegisterDefaults;
- (void)clearLegacyDefaults;
@end

@implementation PBUIWallpaperDefaultsDomain

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"homeScreenWallpapers"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBHomeScreenWallpapers" toDefaultValue:0 options:1];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"lockScreenWallpapers"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SBLockScreenWallpapers" toDefaultValue:0 options:1];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enableWallpaperDimming"];
  v6 = MEMORY[0x277CBEC28];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBEnableWallpaperDimming" toDefaultValue:MEMORY[0x277CBEC28] options:1];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"blurPhotosWallpaperInAlwaysOn"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBBlurPhotosWallpaperInAlwaysOn" toDefaultValue:MEMORY[0x277CBEC38] options:1];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"dateWallpaperLastChanged"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBWallpaperLastChangeUserDefaultKey" toDefaultValue:0 options:1];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"dateIrisWallpaperLastPlayed"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBIrisActivationDateUserDefaultKey" toDefaultValue:0 options:1];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"irisWallpaperPlayCount"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"SBIrisActivationCountUserDefaultKey" toDefaultValue:&unk_282FD5CC8 options:1];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"legacyUsesUniqueHomeScreenWallpaper"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v11 withDefaultKey:@"SBUseUniqueHomeScreenWallpaper" toDefaultValue:v6 options:1];
}

- (void)clearLegacyDefaults
{
  _store = [(BSAbstractDefaultDomain *)self _store];
  [_store removeObjectForKey:@"SBUseUniqueHomeScreenWallpaper"];

  [(BSAbstractDefaultDomain *)self synchronizeDefaults];
}

@end