@interface PBUIWallpaperEffectImageRequestActionResponse
- (CGSize)size;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int64_t)actualStyle;
@end

@implementation PBUIWallpaperEffectImageRequestActionResponse

- (int64_t)actualStyle
{
  v2 = [(PBUIWallpaperEffectImageRequestActionResponse *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

- (CGSize)size
{
  v2 = [(PBUIWallpaperEffectImageRequestActionResponse *)self info];
  v3 = [v2 objectForSetting:2];
  [v3 CGSizeValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_2783624E0 + a3 - 1);
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v6 = a4;
  v7 = v6;
  if (a5 == 2)
  {
    [v6 CGSizeValue];
    v8 = NSStringFromCGSize(v12);
    goto LABEL_5;
  }

  if (a5 == 1)
  {
    v8 = PBUIWallpaperStyleDescription([v6 integerValue]);
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end