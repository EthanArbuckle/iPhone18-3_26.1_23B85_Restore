@interface PBUIWallpaperEffectImageRequestActionResponse
- (CGSize)size;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)actualStyle;
@end

@implementation PBUIWallpaperEffectImageRequestActionResponse

- (int64_t)actualStyle
{
  info = [(PBUIWallpaperEffectImageRequestActionResponse *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (CGSize)size
{
  info = [(PBUIWallpaperEffectImageRequestActionResponse *)self info];
  v3 = [info objectForSetting:2];
  [v3 CGSizeValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 1 > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_2783624E0 + setting - 1);
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v7 = objectCopy;
  if (setting == 2)
  {
    [objectCopy CGSizeValue];
    v8 = NSStringFromCGSize(v12);
    goto LABEL_5;
  }

  if (setting == 1)
  {
    v8 = PBUIWallpaperStyleDescription([objectCopy integerValue]);
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end