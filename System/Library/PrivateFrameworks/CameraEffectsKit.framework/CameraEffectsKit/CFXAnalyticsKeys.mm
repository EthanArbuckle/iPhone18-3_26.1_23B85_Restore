@interface CFXAnalyticsKeys
+ (id)allDistributionEvents;
+ (id)allEventNames;
+ (id)allIncrementScalarEffectEvents;
+ (id)allIncrementScalarEvents;
@end

@implementation CFXAnalyticsKeys

+ (id)allEventNames
{
  if (allEventNames_onceToken != -1)
  {
    +[CFXAnalyticsKeys allEventNames];
  }

  v3 = allEventNames_eventNamesArray;

  return v3;
}

void __33__CFXAnalyticsKeys_allEventNames__block_invoke()
{
  v3 = +[CFXAnalyticsKeys allIncrementScalarEvents];
  v0 = +[CFXAnalyticsKeys allDistributionEvents];
  v1 = [v3 arrayByAddingObjectsFromArray:v0];
  v2 = allEventNames_eventNamesArray;
  allEventNames_eventNamesArray = v1;
}

+ (id)allIncrementScalarEffectEvents
{
  if (allIncrementScalarEffectEvents_onceToken != -1)
  {
    +[CFXAnalyticsKeys allIncrementScalarEffectEvents];
  }

  v3 = allIncrementScalarEffectEvents_allIncrementScalarEffectEvents;

  return v3;
}

void __50__CFXAnalyticsKeys_allIncrementScalarEffectEvents__block_invoke()
{
  v2[5] = *MEMORY[0x277D85DE8];
  v2[0] = @"filterusedwithid";
  v2[1] = @"labelusedwithid";
  v2[2] = @"shapeusedwithid";
  v2[3] = @"messagesstickerusedwithid";
  v2[4] = @"animojiusedwithid";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:5];
  v1 = allIncrementScalarEffectEvents_allIncrementScalarEffectEvents;
  allIncrementScalarEffectEvents_allIncrementScalarEffectEvents = v0;
}

+ (id)allIncrementScalarEvents
{
  if (allIncrementScalarEvents_onceToken != -1)
  {
    +[CFXAnalyticsKeys allIncrementScalarEvents];
  }

  v3 = allIncrementScalarEvents_allIncrementScalarEvents;

  return v3;
}

void __44__CFXAnalyticsKeys_allIncrementScalarEvents__block_invoke()
{
  v2[13] = *MEMORY[0x277D85DE8];
  v2[0] = @"thermalnominaltolight";
  v2[1] = @"thermallighttomoderate";
  v2[2] = @"thermalmoderatetoheavy";
  v2[3] = @"thermalheavytotrapping";
  v2[4] = @"thermaltrappingtosleeping";
  v2[5] = @"thermalsleepingtotrapping";
  v2[6] = @"thermaltrappingtoheavy";
  v2[7] = @"thermalheavytomoderate";
  v2[8] = @"thermalmoderatetolight";
  v2[9] = @"thermallighttonominal";
  v2[10] = @"extensionlaunched";
  v2[11] = @"sentpostcapturewithfuncamphoto";
  v2[12] = @"sentpostcapturewithfuncamvideo";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:13];
  v1 = allIncrementScalarEvents_allIncrementScalarEvents;
  allIncrementScalarEvents_allIncrementScalarEvents = v0;
}

+ (id)allDistributionEvents
{
  if (allDistributionEvents_onceToken != -1)
  {
    +[CFXAnalyticsKeys allDistributionEvents];
  }

  v3 = allDistributionEvents_allDistributionEventNamesArray;

  return v3;
}

void __41__CFXAnalyticsKeys_allDistributionEvents__block_invoke()
{
  v2[5] = *MEMORY[0x277D85DE8];
  v2[0] = @"activetime";
  v2[1] = @"activefrontcameratime";
  v2[2] = @"activebackcameratime";
  v2[3] = @"activeexternalcameratime";
  v2[4] = @"videoduration";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:5];
  v1 = allDistributionEvents_allDistributionEventNamesArray;
  allDistributionEvents_allDistributionEventNamesArray = v0;
}

@end