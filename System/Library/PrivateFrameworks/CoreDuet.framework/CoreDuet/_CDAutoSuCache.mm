@interface _CDAutoSuCache
+ (id)sharedCache;
- (id)cachedPredictedSleepDictionaryForDate:(id)a3;
- (void)clear;
- (void)setCachedPredictedSleepDictionary:(id)a3 validityStartDate:(id)a4 validityEndDate:(id)a5;
@end

@implementation _CDAutoSuCache

+ (id)sharedCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29___CDAutoSuCache_sharedCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (void)setCachedPredictedSleepDictionary:(id)a3 validityStartDate:(id)a4 validityEndDate:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  [(_CDAutoSuCache *)v10 setPredictedSleep:v11];
  [(_CDAutoSuCache *)v10 setPredictedSleepValidityStartDate:v8];
  [(_CDAutoSuCache *)v10 setPredictedSleepValidityEndDate:v9];
  objc_sync_exit(v10);
}

- (id)cachedPredictedSleepDictionaryForDate:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(_CDAutoSuCache *)v5 predictedSleepValidityStartDate];
  if (v6)
  {
    v7 = [(_CDAutoSuCache *)v5 predictedSleepValidityEndDate];

    if (v7)
    {
      v8 = [(_CDAutoSuCache *)v5 predictedSleepValidityStartDate];
      v9 = [v8 laterDate:v4];
      if ([v9 isEqualToDate:v4])
      {
        v10 = [(_CDAutoSuCache *)v5 predictedSleepValidityEndDate];
        v11 = [v10 earlierDate:v4];
        v12 = [v11 isEqualToDate:v4];

        if (v12)
        {
          v6 = [(_CDAutoSuCache *)v5 predictedSleep];
          goto LABEL_8;
        }
      }

      else
      {
      }
    }

    v6 = 0;
  }

LABEL_8:
  objc_sync_exit(v5);

  return v6;
}

@end