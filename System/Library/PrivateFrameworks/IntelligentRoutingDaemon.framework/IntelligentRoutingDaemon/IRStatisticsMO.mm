@interface IRStatisticsMO
+ (void)setPropertiesOfStatisticsMO:(id)o withStatisticsDO:(id)dO;
- (id)convert;
@end

@implementation IRStatisticsMO

+ (void)setPropertiesOfStatisticsMO:(id)o withStatisticsDO:(id)dO
{
  dOCopy = dO;
  oCopy = o;
  [oCopy setNumberOfContextChanges:{objc_msgSend(dOCopy, "numberOfContextChanges")}];
  [oCopy setNumberOfMiLoPredictions:{objc_msgSend(dOCopy, "numberOfMiLoPredictions")}];
  [oCopy setNumberOfMiLoPredictionsInUpdatesMode:{objc_msgSend(dOCopy, "numberOfMiLoPredictionsInUpdatesMode")}];
  [oCopy setLastMiLoLSLItems:{objc_msgSend(dOCopy, "lastMiLoLSLItems")}];
  [oCopy setLastMiLoQualityReasonBitmap:{objc_msgSend(dOCopy, "lastMiLoQualityReasonBitmap")}];
  [oCopy setLastMiLoQuality:{objc_msgSend(dOCopy, "lastMiLoQuality")}];
  [oCopy setLastMiLoModels:{objc_msgSend(dOCopy, "lastMiLoModels")}];
  [oCopy setTimeInUpdatesModeInSeconds:{objc_msgSend(dOCopy, "timeInUpdatesModeInSeconds")}];
  [oCopy setNumberOfPickerChoiceEvents:{objc_msgSend(dOCopy, "numberOfPickerChoiceEvents")}];
  [oCopy setNumberOfCorrectPickerChoiceEvents:{objc_msgSend(dOCopy, "numberOfCorrectPickerChoiceEvents")}];
  lastClearDate = [dOCopy lastClearDate];

  [oCopy setLastClearDate:lastClearDate];
}

- (id)convert
{
  numberOfContextChanges = [(IRStatisticsMO *)self numberOfContextChanges];
  numberOfMiLoPredictions = [(IRStatisticsMO *)self numberOfMiLoPredictions];
  numberOfMiLoPredictionsInUpdatesMode = [(IRStatisticsMO *)self numberOfMiLoPredictionsInUpdatesMode];
  lastMiLoLSLItems = [(IRStatisticsMO *)self lastMiLoLSLItems];
  lastMiLoQualityReasonBitmap = [(IRStatisticsMO *)self lastMiLoQualityReasonBitmap];
  lastMiLoQuality = [(IRStatisticsMO *)self lastMiLoQuality];
  lastMiLoModels = [(IRStatisticsMO *)self lastMiLoModels];
  timeInUpdatesModeInSeconds = [(IRStatisticsMO *)self timeInUpdatesModeInSeconds];
  numberOfPickerChoiceEvents = [(IRStatisticsMO *)self numberOfPickerChoiceEvents];
  numberOfCorrectPickerChoiceEvents = [(IRStatisticsMO *)self numberOfCorrectPickerChoiceEvents];
  lastClearDate = [(IRStatisticsMO *)self lastClearDate];
  v13 = [IRStatisticsDO statisticsDOWithNumberOfContextChanges:numberOfContextChanges numberOfMiLoPredictions:numberOfMiLoPredictions numberOfMiLoPredictionsInUpdatesMode:numberOfMiLoPredictionsInUpdatesMode lastMiLoLSLItems:lastMiLoLSLItems lastMiLoQualityReasonBitmap:lastMiLoQualityReasonBitmap lastMiLoQuality:lastMiLoQuality lastMiLoModels:lastMiLoModels timeInUpdatesModeInSeconds:timeInUpdatesModeInSeconds numberOfPickerChoiceEvents:numberOfPickerChoiceEvents numberOfCorrectPickerChoiceEvents:numberOfCorrectPickerChoiceEvents lastClearDate:lastClearDate];

  return v13;
}

@end