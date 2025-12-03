@interface PBUIWallpaperUpdateLocationsAction
- (PBUIWallpaperUpdateLocationsAction)initWithLocations:(int64_t)locations wallpaperMode:(int64_t)mode responder:(id)responder;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)locations;
- (int64_t)wallpaperMode;
@end

@implementation PBUIWallpaperUpdateLocationsAction

- (PBUIWallpaperUpdateLocationsAction)initWithLocations:(int64_t)locations wallpaperMode:(int64_t)mode responder:(id)responder
{
  v8 = MEMORY[0x277CF0C80];
  responderCopy = responder;
  v10 = objc_alloc_init(v8);
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:locations];
  [v10 setObject:v11 forSetting:1];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  [v10 setObject:v12 forSetting:2];

  v15.receiver = self;
  v15.super_class = PBUIWallpaperUpdateLocationsAction;
  v13 = [(PBUIWallpaperUpdateLocationsAction *)&v15 initWithInfo:v10 responder:responderCopy];

  return v13;
}

- (int64_t)locations
{
  info = [(PBUIWallpaperUpdateLocationsAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)wallpaperMode
{
  info = [(PBUIWallpaperUpdateLocationsAction *)self info];
  v3 = [info objectForSetting:2];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v3 = @"wallpaperMode";
  if (setting != 2)
  {
    v3 = 0;
  }

  if (setting == 1)
  {
    return @"locations";
  }

  else
  {
    return v3;
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v7 = objectCopy;
  if (setting == 2)
  {
    v8 = PBUIStringForWallpaperMode([objectCopy integerValue]);
    goto LABEL_5;
  }

  if (setting == 1)
  {
    v8 = PBUIStringForWallpaperLocations([objectCopy integerValue]);
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end