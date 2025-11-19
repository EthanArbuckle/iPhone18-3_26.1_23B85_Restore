@interface ProfileCharacteristicsUtilities
+ (id)displayStringForBiologicalSex:(int64_t)a3;
+ (id)displayStringForBloodType:(int64_t)a3;
+ (id)displayStringForFitzpatrickSkinType:(int64_t)a3;
+ (id)displayStringForWheelchairUse:(int64_t)a3;
+ (int64_t)characteristicsTypeCountForDisplayType:(id)a3;
@end

@implementation ProfileCharacteristicsUtilities

+ (int64_t)characteristicsTypeCountForDisplayType:(id)a3
{
  v3 = [a3 displayTypeIdentifier];
  if (v3 > 87)
  {
    if (v3 != 88)
    {
      if (v3 == 103)
      {
        return 3;
      }

      return 0;
    }

    return 7;
  }

  else
  {
    if (v3 != 64)
    {
      if (v3 == 66)
      {
        return 9;
      }

      return 0;
    }

    return 4;
  }
}

+ (id)displayStringForBiologicalSex:(int64_t)a3
{
  v4 = WDBundle();
  v5 = v4;
  if ((a3 - 1) > 2)
  {
    v6 = @"BIOLOGICAL_SEX_NOT_SET";
  }

  else
  {
    v6 = off_1E7EEB4C8[a3 - 1];
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];

  return v7;
}

+ (id)displayStringForBloodType:(int64_t)a3
{
  v4 = WDBundle();
  v5 = v4;
  if ((a3 - 1) > 7)
  {
    v6 = @"BLOOD_TYPE_NOT_SET";
  }

  else
  {
    v6 = off_1E7EEB4E0[a3 - 1];
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];

  return v7;
}

+ (id)displayStringForFitzpatrickSkinType:(int64_t)a3
{
  if (a3 > 6)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E7EEB520[a3];
    v4 = WDBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  }

  return v5;
}

+ (id)displayStringForWheelchairUse:(int64_t)a3
{
  if (a3)
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