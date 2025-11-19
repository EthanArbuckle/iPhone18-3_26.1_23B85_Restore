@interface JFXAnalyticsKeys
+ (id)allEventNames;
+ (id)allIncrementScalarEvents;
@end

@implementation JFXAnalyticsKeys

+ (id)allEventNames
{
  if (allEventNames_onceToken_0 != -1)
  {
    +[JFXAnalyticsKeys allEventNames];
  }

  v3 = allEventNames_eventNamesArray_0;

  return v3;
}

void __33__JFXAnalyticsKeys_allEventNames__block_invoke()
{
  v7 = +[JFXAnalyticsKeys allIncrementScalarEvents];
  v0 = +[JFXAnalyticsKeys allDistributionEvents];
  v1 = [v7 arrayByAddingObjectsFromArray:v0];
  v2 = +[JFXAnalyticsKeys allOverrideScalarEvents];
  v3 = [v1 arrayByAddingObjectsFromArray:v2];
  v4 = +[JFXAnalyticsKeys allIncrementScalarEffectEvents];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];
  v6 = allEventNames_eventNamesArray_0;
  allEventNames_eventNamesArray_0 = v5;
}

+ (id)allIncrementScalarEvents
{
  if (allIncrementScalarEvents_onceToken_1 != -1)
  {
    +[JFXAnalyticsKeys allIncrementScalarEvents];
  }

  v3 = allIncrementScalarEvents_allIncrementScalarEvents_1;

  return v3;
}

void __44__JFXAnalyticsKeys_allIncrementScalarEvents__block_invoke()
{
  v6[11] = *MEMORY[0x277D85DE8];
  v6[0] = @"thermalnominaltolight";
  v6[1] = @"thermallighttomoderate";
  v6[2] = @"thermalmoderatetoheavy";
  v6[3] = @"thermalheavytotrapping";
  v6[4] = @"thermaltrappingtosleeping";
  v6[5] = @"thermalsleepingtotrapping";
  v6[6] = @"thermaltrappingtoheavy";
  v6[7] = @"thermalheavytomoderate";
  v6[8] = @"thermalmoderatetolight";
  v6[9] = @"thermallighttonominal";
  v6[10] = @"facetrackedoverlaychangedplanes";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:11];
  v1 = allIncrementScalarEvents_allIncrementScalarEvents_1;
  allIncrementScalarEvents_allIncrementScalarEvents_1 = v0;

  v2 = allIncrementScalarEvents_allIncrementScalarEvents_1;
  v3 = JFX_CaptureSessionInterruptionReasonsList();
  v4 = [v2 arrayByAddingObjectsFromArray:v3];
  v5 = allIncrementScalarEvents_allIncrementScalarEvents_1;
  allIncrementScalarEvents_allIncrementScalarEvents_1 = v4;
}

@end