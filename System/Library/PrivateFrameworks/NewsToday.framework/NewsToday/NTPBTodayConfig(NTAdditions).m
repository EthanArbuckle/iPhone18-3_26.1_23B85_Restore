@interface NTPBTodayConfig(NTAdditions)
- (id)configByResolvingWithTag:()NTAdditions;
@end

@implementation NTPBTodayConfig(NTAdditions)

- (id)configByResolvingWithTag:()NTAdditions
{
  v4 = a3;
  v5 = [a1 copy];
  v6 = [v5 todayQueueConfigs];
  v7 = [v6 count];

  if (v7 == 1)
  {
    v8 = [v5 todayQueueConfigs];
    v9 = [v8 firstObject];

    v10 = [v9 todaySectionConfigs];
    v11 = [v10 count];

    if (v11 == 1)
    {
      v12 = [v9 todaySectionConfigs];
      v13 = [v12 firstObject];

      if ([v13 sectionType] == 6)
      {
        v14 = [v13 tagTodaySectionConfig];
        v15 = [v4 identifier];
        [v14 setTagID:v15];

        v16 = [v4 name];
        v17 = [v4 nameCompact];
        [v13 setName:v16];
        [v13 setCompactName:v17];
        v18 = [v4 groupTitleColor];
        v19 = [v18 hex];
        [v13 setNameColorLight:v19];

        v20 = [v4 groupDarkStyleTitleColor];
        v21 = [v20 hex];
        [v13 setNameColorDark:v21];

        v22 = [v4 identifier];
        v23 = [@"f8+" stringByAppendingString:v22];
        [v13 setPersonalizationFeatureID:v23];

        if (v17)
        {
          v24 = v17;
        }

        else
        {
          v24 = v16;
        }

        [v13 setReferralBarName:v24];
        [v13 setShownInFavoritesOnlyMode:1];
        v25 = v5;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end