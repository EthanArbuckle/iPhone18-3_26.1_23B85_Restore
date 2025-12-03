@interface HeartRateStore
+ (id)sharedStore;
- (HeartRateStore)init;
- (void)_updateHeartRateEnabled;
- (void)_updateHeartRateWithCompletion:(id)completion;
- (void)recentHeartRateWithCompletion:(id)completion;
@end

@implementation HeartRateStore

+ (id)sharedStore
{
  if (sharedStore_onceToken != -1)
  {
    +[HeartRateStore sharedStore];
  }

  v3 = sharedStore_store;

  return v3;
}

uint64_t __29__HeartRateStore_sharedStore__block_invoke()
{
  sharedStore_store = objc_alloc_init(HeartRateStore);

  return MEMORY[0x2821F96F8]();
}

- (HeartRateStore)init
{
  v7.receiver = self;
  v7.super_class = HeartRateStore;
  v2 = [(HeartRateStore *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(HeartRateStore *)v2 _updateHeartRateEnabled];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _heartRateEnabledPreferenceChangeNotification, @"NanoLifestylePrivacyEnableHeartRateNotification", 0, CFNotificationSuspensionBehaviorDrop);
    v5 = v3;
  }

  return v3;
}

- (void)recentHeartRateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
    v5 = CFAbsoluteTimeGetCurrent() - self->_recentHeartRateTime;
    recentHeartRate = 85;
    if (self->_heartRateEnabled)
    {
      v7 = v8;
      if (v5 <= 660.0)
      {
        recentHeartRate = self->_recentHeartRate;
      }
    }

    else
    {
      v7 = v8;
    }

    v7[2](v7, recentHeartRate);
    completionCopy = v8;
    if (self->_heartRateEnabled && v5 > 660.0 && !self->_heartRateQuery)
    {
      [(HeartRateStore *)self _updateHeartRateWithCompletion:v8];
      completionCopy = v8;
    }
  }
}

- (void)_updateHeartRateWithCompletion:(id)completion
{
  v28[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (self->_heartRateEnabled && [MEMORY[0x277CCD4D8] isHealthDataAvailable])
  {
    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __49__HeartRateStore__updateHeartRateWithCompletion___block_invoke;
    v24[3] = &unk_278F7A1B8;
    objc_copyWeak(&v26, &location);
    v25 = completionCopy;
    v5 = MEMORY[0x24C1E9BB0](v24);
    date = [MEMORY[0x277CBEAA8] date];
    v7 = [date dateByAddingTimeInterval:-660.0];

    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", *MEMORY[0x277CCC778], v7];
    v9 = *MEMORY[0x277CCCB90];
    v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
    v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD38] ascending:0];
    v12 = objc_alloc(MEMORY[0x277CCD8D0]);
    v28[0] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v14 = [v12 initWithSampleType:v10 predicate:v8 limit:1 sortDescriptors:v13 resultsHandler:v5];
    heartRateQuery = self->_heartRateQuery;
    self->_heartRateQuery = v14;

    healthStore = self->_healthStore;
    if (healthStore)
    {
      [(HKHealthStore *)healthStore executeQuery:self->_heartRateQuery];
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277CCD4D8]);
      v18 = self->_healthStore;
      self->_healthStore = v17;

      v19 = self->_healthStore;
      v20 = MEMORY[0x277CBEB98];
      v21 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:v9];
      v22 = [v20 setWithObject:v21];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __49__HeartRateStore__updateHeartRateWithCompletion___block_invoke_3;
      v23[3] = &unk_278F7A1E0;
      v23[4] = self;
      [(HKHealthStore *)v19 requestAuthorizationToShareTypes:0 readTypes:v22 completion:v23];
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

void __49__HeartRateStore__updateHeartRateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 count])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__HeartRateStore__updateHeartRateWithCompletion___block_invoke_2;
    block[3] = &unk_278F7A190;
    v7 = v4;
    objc_copyWeak(&v9, (a1 + 40));
    v8 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v9);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setHeartRateQuery:0];
  }
}

void __49__HeartRateStore__updateHeartRateWithCompletion___block_invoke_2(uint64_t a1)
{
  v11 = [*(a1 + 32) firstObject];
  v2 = [v11 quantity];
  v3 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
  [v2 doubleValueForUnit:v3];
  v5 = v4;

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setRecentHeartRate:v5];

  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v11 endDate];
  [v8 timeIntervalSinceReferenceDate];
  [v7 setRecentHeartRateTime:?];

  v9 = objc_loadWeakRetained((a1 + 48));
  [v9 setHeartRateQuery:0];

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5);
  }
}

- (void)_updateHeartRateEnabled
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableHeartRate", @"com.apple.nanolifestyle.privacy", &keyExistsAndHasValidFormat);
  isRunningInStoreDemoMode = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
  v5 = 0;
  if ((isRunningInStoreDemoMode & 1) == 0)
  {
    if (AppBooleanValue)
    {
      v6 = 1;
    }

    else
    {
      v6 = keyExistsAndHasValidFormat == 0;
    }

    v5 = v6;
  }

  self->_heartRateEnabled = v5;
}

@end