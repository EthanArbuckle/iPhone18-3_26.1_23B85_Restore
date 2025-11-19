@interface IRStatisticsMO
+ (void)setPropertiesOfStatisticsMO:(id)a3 withStatisticsDO:(id)a4;
- (id)convert;
@end

@implementation IRStatisticsMO

+ (void)setPropertiesOfStatisticsMO:(id)a3 withStatisticsDO:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 setNumberOfContextChanges:{objc_msgSend(v5, "numberOfContextChanges")}];
  [v6 setNumberOfMiLoPredictions:{objc_msgSend(v5, "numberOfMiLoPredictions")}];
  [v6 setNumberOfMiLoPredictionsInUpdatesMode:{objc_msgSend(v5, "numberOfMiLoPredictionsInUpdatesMode")}];
  [v6 setLastMiLoLSLItems:{objc_msgSend(v5, "lastMiLoLSLItems")}];
  [v6 setLastMiLoQualityReasonBitmap:{objc_msgSend(v5, "lastMiLoQualityReasonBitmap")}];
  [v6 setLastMiLoQuality:{objc_msgSend(v5, "lastMiLoQuality")}];
  [v6 setLastMiLoModels:{objc_msgSend(v5, "lastMiLoModels")}];
  [v6 setTimeInUpdatesModeInSeconds:{objc_msgSend(v5, "timeInUpdatesModeInSeconds")}];
  [v6 setNumberOfPickerChoiceEvents:{objc_msgSend(v5, "numberOfPickerChoiceEvents")}];
  [v6 setNumberOfCorrectPickerChoiceEvents:{objc_msgSend(v5, "numberOfCorrectPickerChoiceEvents")}];
  v7 = [v5 lastClearDate];

  [v6 setLastClearDate:v7];
}

- (id)convert
{
  v15 = [(IRStatisticsMO *)self numberOfContextChanges];
  v3 = [(IRStatisticsMO *)self numberOfMiLoPredictions];
  v4 = [(IRStatisticsMO *)self numberOfMiLoPredictionsInUpdatesMode];
  v5 = [(IRStatisticsMO *)self lastMiLoLSLItems];
  v6 = [(IRStatisticsMO *)self lastMiLoQualityReasonBitmap];
  v7 = [(IRStatisticsMO *)self lastMiLoQuality];
  v8 = [(IRStatisticsMO *)self lastMiLoModels];
  v9 = [(IRStatisticsMO *)self timeInUpdatesModeInSeconds];
  v10 = [(IRStatisticsMO *)self numberOfPickerChoiceEvents];
  v11 = [(IRStatisticsMO *)self numberOfCorrectPickerChoiceEvents];
  v12 = [(IRStatisticsMO *)self lastClearDate];
  v13 = [IRStatisticsDO statisticsDOWithNumberOfContextChanges:v15 numberOfMiLoPredictions:v3 numberOfMiLoPredictionsInUpdatesMode:v4 lastMiLoLSLItems:v5 lastMiLoQualityReasonBitmap:v6 lastMiLoQuality:v7 lastMiLoModels:v8 timeInUpdatesModeInSeconds:v9 numberOfPickerChoiceEvents:v10 numberOfCorrectPickerChoiceEvents:v11 lastClearDate:v12];

  return v13;
}

@end