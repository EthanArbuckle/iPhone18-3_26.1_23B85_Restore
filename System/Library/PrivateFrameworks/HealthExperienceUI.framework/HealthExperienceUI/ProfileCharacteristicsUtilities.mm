@interface ProfileCharacteristicsUtilities
+ (id)displayStringForBiologicalSex:(int64_t)sex;
+ (id)displayStringForBloodType:(int64_t)type;
+ (id)displayStringForFitzpatrickSkinType:(int64_t)type;
+ (id)displayStringForWheelchairUse:(int64_t)use;
+ (int64_t)characteristicsTypeCountForDisplayType:(id)type;
@end

@implementation ProfileCharacteristicsUtilities

+ (int64_t)characteristicsTypeCountForDisplayType:(id)type
{
  displayTypeIdentifier = [type displayTypeIdentifier];
  if (displayTypeIdentifier > 87)
  {
    if (displayTypeIdentifier != 88)
    {
      if (displayTypeIdentifier == 103)
      {
        return 3;
      }

      return 0;
    }

    return 7;
  }

  else
  {
    if (displayTypeIdentifier != 64)
    {
      if (displayTypeIdentifier == 66)
      {
        return 9;
      }

      return 0;
    }

    return 4;
  }
}

+ (id)displayStringForBiologicalSex:(int64_t)sex
{
  v4 = WDBundle();
  v5 = v4;
  if ((sex - 1) > 2)
  {
    v6 = @"BIOLOGICAL_SEX_NOT_SET";
  }

  else
  {
    v6 = off_1E7EEB4C8[sex - 1];
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];

  return v7;
}

+ (id)displayStringForBloodType:(int64_t)type
{
  v4 = WDBundle();
  v5 = v4;
  if ((type - 1) > 7)
  {
    v6 = @"BLOOD_TYPE_NOT_SET";
  }

  else
  {
    v6 = off_1E7EEB4E0[type - 1];
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];

  return v7;
}

+ (id)displayStringForFitzpatrickSkinType:(int64_t)type
{
  if (type > 6)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E7EEB520[type];
    v4 = WDBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  }

  return v5;
}

+ (id)displayStringForWheelchairUse:(int64_t)use
{
  if (use)
  {
    v3 = HKWheelchairUseDisplayName();
  }

  else
  {
    v4 = WDBundle();
    v3 = [v4 localizedStringForKey:@"WHEELCHAIR_USE_NOT_SET" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  }

  return v3;
}

@end