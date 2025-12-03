@interface PBUIWallpaperDidChangeAction
- (PBUIWallpaperDidChangeAction)initWithVariant:(int64_t)variant;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)variant;
@end

@implementation PBUIWallpaperDidChangeAction

- (PBUIWallpaperDidChangeAction)initWithVariant:(int64_t)variant
{
  v5 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:variant];
  [v5 setObject:v6 forSetting:1];

  v9.receiver = self;
  v9.super_class = PBUIWallpaperDidChangeAction;
  v7 = [(PBUIWallpaperDidChangeAction *)&v9 initWithInfo:v5 responder:0];

  return v7;
}

- (int64_t)variant
{
  info = [(PBUIWallpaperDidChangeAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"variant";
  }

  else
  {
    return 0;
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    v7 = PBUIStringForWallpaperVariant([object integerValue]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end