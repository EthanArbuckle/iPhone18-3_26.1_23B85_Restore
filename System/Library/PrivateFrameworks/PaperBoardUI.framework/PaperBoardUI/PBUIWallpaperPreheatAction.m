@interface PBUIWallpaperPreheatAction
- (PBUIWallpaperPreheatAction)initWithVariant:(int64_t)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int64_t)variant;
@end

@implementation PBUIWallpaperPreheatAction

- (PBUIWallpaperPreheatAction)initWithVariant:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v6 forSetting:1];

  v9.receiver = self;
  v9.super_class = PBUIWallpaperPreheatAction;
  v7 = [(PBUIWallpaperPreheatAction *)&v9 initWithInfo:v5 responder:0];

  return v7;
}

- (int64_t)variant
{
  v2 = [(PBUIWallpaperPreheatAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"locations";
  }

  else
  {
    return 0;
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  if (a5 == 1)
  {
    v7 = PBUIStringForWallpaperVariant([a4 integerValue]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end