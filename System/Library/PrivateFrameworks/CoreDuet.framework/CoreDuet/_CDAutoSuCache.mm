@interface _CDAutoSuCache
+ (id)sharedCache;
- (id)cachedPredictedSleepDictionaryForDate:(id)date;
- (void)clear;
- (void)setCachedPredictedSleepDictionary:(id)dictionary validityStartDate:(id)date validityEndDate:(id)endDate;
@end

@implementation _CDAutoSuCache

+ (id)sharedCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29___CDAutoSuCache_sharedCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCache_onceToken != -1)
  {
    dispatch_once(&sharedCache_onceToken, block);
  }

  v2 = sharedCache_sharedInstance;

  return v2;
}

- (void)clear
{
  obj = self;
  objc_sync_enter(obj);
  [(_CDAutoSuCache *)obj setPredictedSleep:0];
  [(_CDAutoSuCache *)obj setPredictedSleepValidityStartDate:0];
  [(_CDAutoSuCache *)obj setPredictedSleepValidityEndDate:0];
  objc_sync_exit(obj);
}

- (void)setCachedPredictedSleepDictionary:(id)dictionary validityStartDate:(id)date validityEndDate:(id)endDate
{
  dictionaryCopy = dictionary;
  dateCopy = date;
  endDateCopy = endDate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(_CDAutoSuCache *)selfCopy setPredictedSleep:dictionaryCopy];
  [(_CDAutoSuCache *)selfCopy setPredictedSleepValidityStartDate:dateCopy];
  [(_CDAutoSuCache *)selfCopy setPredictedSleepValidityEndDate:endDateCopy];
  objc_sync_exit(selfCopy);
}

- (id)cachedPredictedSleepDictionaryForDate:(id)date
{
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  predictedSleepValidityStartDate = [(_CDAutoSuCache *)selfCopy predictedSleepValidityStartDate];
  if (predictedSleepValidityStartDate)
  {
    predictedSleepValidityEndDate = [(_CDAutoSuCache *)selfCopy predictedSleepValidityEndDate];

    if (predictedSleepValidityEndDate)
    {
      predictedSleepValidityStartDate2 = [(_CDAutoSuCache *)selfCopy predictedSleepValidityStartDate];
      v9 = [predictedSleepValidityStartDate2 laterDate:dateCopy];
      if ([v9 isEqualToDate:dateCopy])
      {
        predictedSleepValidityEndDate2 = [(_CDAutoSuCache *)selfCopy predictedSleepValidityEndDate];
        v11 = [predictedSleepValidityEndDate2 earlierDate:dateCopy];
        v12 = [v11 isEqualToDate:dateCopy];

        if (v12)
        {
          predictedSleepValidityStartDate = [(_CDAutoSuCache *)selfCopy predictedSleep];
          goto LABEL_8;
        }
      }

      else
      {
      }
    }

    predictedSleepValidityStartDate = 0;
  }

LABEL_8:
  objc_sync_exit(selfCopy);

  return predictedSleepValidityStartDate;
}

@end