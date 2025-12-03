@interface NTPBTodayConfig(NTAdditions)
- (id)configByResolvingWithTag:()NTAdditions;
@end

@implementation NTPBTodayConfig(NTAdditions)

- (id)configByResolvingWithTag:()NTAdditions
{
  v4 = a3;
  v5 = [self copy];
  todayQueueConfigs = [v5 todayQueueConfigs];
  v7 = [todayQueueConfigs count];

  if (v7 == 1)
  {
    todayQueueConfigs2 = [v5 todayQueueConfigs];
    firstObject = [todayQueueConfigs2 firstObject];

    todaySectionConfigs = [firstObject todaySectionConfigs];
    v11 = [todaySectionConfigs count];

    if (v11 == 1)
    {
      todaySectionConfigs2 = [firstObject todaySectionConfigs];
      firstObject2 = [todaySectionConfigs2 firstObject];

      if ([firstObject2 sectionType] == 6)
      {
        tagTodaySectionConfig = [firstObject2 tagTodaySectionConfig];
        identifier = [v4 identifier];
        [tagTodaySectionConfig setTagID:identifier];

        name = [v4 name];
        nameCompact = [v4 nameCompact];
        [firstObject2 setName:name];
        [firstObject2 setCompactName:nameCompact];
        groupTitleColor = [v4 groupTitleColor];
        v19 = [groupTitleColor hex];
        [firstObject2 setNameColorLight:v19];

        groupDarkStyleTitleColor = [v4 groupDarkStyleTitleColor];
        v21 = [groupDarkStyleTitleColor hex];
        [firstObject2 setNameColorDark:v21];

        identifier2 = [v4 identifier];
        v23 = [@"f8+" stringByAppendingString:identifier2];
        [firstObject2 setPersonalizationFeatureID:v23];

        if (nameCompact)
        {
          v24 = nameCompact;
        }

        else
        {
          v24 = name;
        }

        [firstObject2 setReferralBarName:v24];
        [firstObject2 setShownInFavoritesOnlyMode:1];
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