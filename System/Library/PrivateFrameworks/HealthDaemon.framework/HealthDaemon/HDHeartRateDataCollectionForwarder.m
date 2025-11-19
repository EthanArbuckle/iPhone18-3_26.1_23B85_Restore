@interface HDHeartRateDataCollectionForwarder
- (HDHeartRateDataCollectionForwarder)init;
- (void)dealloc;
- (void)insertSamples:(id)a3 device:(id)a4 source:(id)a5;
@end

@implementation HDHeartRateDataCollectionForwarder

- (HDHeartRateDataCollectionForwarder)init
{
  v16.receiver = self;
  v16.super_class = HDHeartRateDataCollectionForwarder;
  v2 = [(HDHeartRateDataCollectionForwarder *)&v16 init];
  if (v2)
  {
    v3 = HKCreateSerialDispatchQueue();
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_heartRateEnabledInPrivacy = HKIsHeartRateEnabled();
    objc_initWeak(&location, v2);
    v2->_privacyPreferencesNotificationToken = -1;
    v5 = [*MEMORY[0x277CCE4C0] UTF8String];
    v6 = v2->_queue;
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __42__HDHeartRateDataCollectionForwarder_init__block_invoke;
    v13 = &unk_278613BF0;
    objc_copyWeak(&v14, &location);
    notify_register_dispatch(v5, &v2->_privacyPreferencesNotificationToken, v6, &v10);
    if (v2->_heartRateEnabledInPrivacy)
    {
      v7 = [(HDHeartRateDataCollectionForwarder *)v2 _newCatherineFeeder:v10];
      catherineFeeder = v2->_catherineFeeder;
      v2->_catherineFeeder = v7;
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

uint64_t __42__HDHeartRateDataCollectionForwarder_init__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained;
    dispatch_assert_queue_V2(*(WeakRetained + 8));
    WeakRetained = HKIsHeartRateEnabled();
    v2 = v10;
    if (*(v10 + 16) != WeakRetained)
    {
      v3 = WeakRetained;
      *(v10 + 16) = WeakRetained;
      _HKInitializeLogging();
      v4 = *MEMORY[0x277CCC2D0];
      WeakRetained = os_log_type_enabled(*MEMORY[0x277CCC2D0], OS_LOG_TYPE_DEFAULT);
      v2 = v10;
      if (WeakRetained)
      {
        v5 = "disabled";
        if (v3)
        {
          v5 = "enabled";
        }

        *buf = 136315138;
        v12 = v5;
        _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "heart rate privacy setting changed to %s", buf, 0xCu);
        v2 = v10;
      }
    }

    v6 = *(v2 + 24);
    if (v6)
    {
      if (*(v2 + 16))
      {
        goto LABEL_13;
      }

      v7 = 0;
    }

    else
    {
      if (!*(v2 + 16))
      {
        goto LABEL_13;
      }

      v7 = [v2 _newCatherineFeeder];
      v2 = v10;
      v6 = *(v10 + 24);
    }

    *(v2 + 24) = v7;

    v2 = v10;
  }

LABEL_13:
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2821F96F8](WeakRetained, v2);
}

- (void)dealloc
{
  privacyPreferencesNotificationToken = self->_privacyPreferencesNotificationToken;
  if (privacyPreferencesNotificationToken != -1)
  {
    notify_cancel(privacyPreferencesNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = HDHeartRateDataCollectionForwarder;
  [(HDHeartRateDataCollectionForwarder *)&v4 dealloc];
}

- (void)insertSamples:(id)a3 device:(id)a4 source:(id)a5
{
  v7 = a3;
  if (self->_heartRateEnabledInPrivacy && ([a5 _isAppleWatch] & 1) == 0)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__HDHeartRateDataCollectionForwarder_insertSamples_device_source___block_invoke;
    v8[3] = &unk_278627648;
    v8[4] = self;
    [v7 enumerateObjectsUsingBlock:v8];
  }
}

void __66__HDHeartRateDataCollectionForwarder_insertSamples_device_source___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 quantity];
  v5 = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
  [v4 doubleValueForUnit:v5];
  v7 = v6;

  v8 = [v3 metadata];

  v9 = [v8 valueForKey:*MEMORY[0x277CCE028]];

  if (v9)
  {
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC2D0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D0], OS_LOG_TYPE_INFO))
    {
      v13 = MEMORY[0x277CCABB0];
      v14 = v12;
      v15 = [v13 numberWithDouble:v7];
      v16 = HKSensitiveLogItem();
      v18 = 138543618;
      v19 = v16;
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_INFO, "feeding %{public}@ with confidence:%f@ to catherine", &v18, 0x16u);
    }
  }

  [*(*(a1 + 32) + 24) feedCatherine:v7 confidence:v11];

  v17 = *MEMORY[0x277D85DE8];
}

@end