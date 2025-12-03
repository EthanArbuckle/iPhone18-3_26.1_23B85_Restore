@interface PBUIPosterWallpaperMigrationInfo
- (id)_initWithPairingType:(char)type lockProvider:(char)provider homeProvider:(char)homeProvider;
- (id)description;
@end

@implementation PBUIPosterWallpaperMigrationInfo

- (id)_initWithPairingType:(char)type lockProvider:(char)provider homeProvider:(char)homeProvider
{
  v9.receiver = self;
  v9.super_class = PBUIPosterWallpaperMigrationInfo;
  result = [(PBUIPosterWallpaperMigrationInfo *)&v9 init];
  if (result)
  {
    *(result + 8) = type;
    *(result + 9) = provider;
    *(result + 10) = homeProvider;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = PBUIStringForPosterWallpaperPairingType(self->_pairingType);
  v7 = PBUIStringForPosterWallpaperMigrationProvider(self->_lockProvider);
  v8 = PBUIStringForPosterWallpaperMigrationProvider(self->_homeProvider);
  v9 = [v3 stringWithFormat:@"<%@:%p pairing=%@ lockProvider=%@ homeProvider=%@>", v5, self, v6, v7, v8];

  return v9;
}

@end