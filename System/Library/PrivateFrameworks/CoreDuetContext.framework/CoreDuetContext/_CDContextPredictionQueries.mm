@interface _CDContextPredictionQueries
+ (id)keyPathForCellQualityPrediction;
+ (id)keyPathForWiFiQualityPrediction;
@end

@implementation _CDContextPredictionQueries

+ (id)keyPathForWiFiQualityPrediction
{
  if (keyPathForWiFiQualityPrediction_onceToken != -1)
  {
    +[_CDContextPredictionQueries keyPathForWiFiQualityPrediction];
  }

  v3 = keyPathForWiFiQualityPrediction_wifiQualityPrediction;

  return v3;
}

+ (id)keyPathForCellQualityPrediction
{
  if (keyPathForCellQualityPrediction_onceToken != -1)
  {
    +[_CDContextPredictionQueries keyPathForCellQualityPrediction];
  }

  v3 = keyPathForCellQualityPrediction_cellQualityPrediction;

  return v3;
}

@end