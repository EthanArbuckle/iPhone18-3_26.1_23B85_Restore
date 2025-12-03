@interface NMSMusicCatalogRecommendationsUpdater
+ ($76119E9FC4E615FCD2412858B276E5B9)_configurationWithBag:(SEL)bag;
+ (double)_nextUpdateDelayAfterDate:(id)date configuration:(id *)configuration;
+ (double)_stalenessIntervalWithBag:(id)bag;
+ (void)_clearLastUpdatedDateIfNeeded;
- (BOOL)_needsInitialContentUpdate;
- (NMSMusicCatalogRecommendationsUpdater)init;
- (void)_handlePairedDeviceRegistryDeviceDidPairNotification:(id)notification;
- (void)_handlePrivacyAcknowledgementDidChangeForIdentifier:(id)identifier isPrivacyAcknowledgementRequired:(BOOL)required;
- (void)_handleSubscriptionStatusDidChangeNotification:(id)notification;
- (void)_performNextUpdateWithScheduler:(id)scheduler completionHandler:(id)handler;
- (void)_performNextUpdateWithScheduler:(id)scheduler urlBag:(id)bag completionHandler:(id)handler;
- (void)_scheduleNextUpdateIfNeeded;
- (void)_scheduleNextUpdateWithBag:(id)bag;
- (void)beginAutomaticContentUpdating;
- (void)endAutomaticContentUpdating;
@end

@implementation NMSMusicCatalogRecommendationsUpdater

- (NMSMusicCatalogRecommendationsUpdater)init
{
  v12.receiver = self;
  v12.super_class = NMSMusicCatalogRecommendationsUpdater;
  v2 = [(NMSMusicCatalogRecommendationsUpdater *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.NanoMusicSync.NMSMusicCatalogRecommendationsUpdater", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    pairedDeviceRegistry = v2->_pairedDeviceRegistry;
    v2->_pairedDeviceRegistry = mEMORY[0x277D2BCF8];

    v7 = +[NMSSubscriptionManager sharedManager];
    subscriptionManager = v2->_subscriptionManager;
    v2->_subscriptionManager = v7;

    mEMORY[0x277D7FBC0] = [MEMORY[0x277D7FBC0] sharedPrivacyInfo];
    privacyInfo = v2->_privacyInfo;
    v2->_privacyInfo = mEMORY[0x277D7FBC0];
  }

  return v2;
}

- (void)beginAutomaticContentUpdating
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__NMSMusicCatalogRecommendationsUpdater_beginAutomaticContentUpdating__block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __70__NMSMusicCatalogRecommendationsUpdater_beginAutomaticContentUpdating__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__handlePairedDeviceRegistryDeviceDidPairNotification_ name:*MEMORY[0x277D2BC68] object:*(*(a1 + 32) + 16)];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:sel__handleSubscriptionStatusDidChangeNotification_ name:@"NMSSubscriptionStatusDidChangeNotification" object:*(*(a1 + 32) + 24)];

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v6 = *MEMORY[0x277D7F958];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__NMSMusicCatalogRecommendationsUpdater_beginAutomaticContentUpdating__block_invoke_2;
  v11[3] = &unk_27993EDA0;
  v11[4] = v4;
  v7 = [v5 beginObservingPrivacyAcknowledgementForIdentifier:v6 handler:v11];
  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return [*(a1 + 32) _scheduleNextUpdateIfNeeded];
}

- (void)endAutomaticContentUpdating
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__NMSMusicCatalogRecommendationsUpdater_endAutomaticContentUpdating__block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

void __68__NMSMusicCatalogRecommendationsUpdater_endAutomaticContentUpdating__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(a1 + 32) name:*MEMORY[0x277D2BC68] object:*(*(a1 + 32) + 16)];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:*(a1 + 32) name:@"NMSSubscriptionStatusDidChangeNotification" object:*(*(a1 + 32) + 24)];

  [*(*(a1 + 32) + 32) endObservingPrivacyAcknowledgementForIdentifier:*MEMORY[0x277D7F958] withToken:*(*(a1 + 32) + 40)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  [*(*(a1 + 32) + 48) invalidate];
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = 0;
}

- (void)_handlePairedDeviceRegistryDeviceDidPairNotification:(id)notification
{
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Received device did pair notification.", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__NMSMusicCatalogRecommendationsUpdater__handlePairedDeviceRegistryDeviceDidPairNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleSubscriptionStatusDidChangeNotification:(id)notification
{
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Received subscription did change notification.", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__NMSMusicCatalogRecommendationsUpdater__handleSubscriptionStatusDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handlePrivacyAcknowledgementDidChangeForIdentifier:(id)identifier isPrivacyAcknowledgementRequired:(BOOL)required
{
  requiredCopy = required;
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = NMLogForCategory(5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = identifierCopy;
    v13 = 2048;
    v14 = requiredCopy;
    _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Received privacy acknowledgement did change for %@, isPrivacyAcknowledgementRequired: %ld.", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __126__NMSMusicCatalogRecommendationsUpdater__handlePrivacyAcknowledgementDidChangeForIdentifier_isPrivacyAcknowledgementRequired___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleNextUpdateIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_updateScheduler)
  {
    v3 = NMLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Invalidating previously scheduled update.", buf, 2u);
    }

    [(NSBackgroundActivityScheduler *)self->_updateScheduler invalidate];
    updateScheduler = self->_updateScheduler;
    self->_updateScheduler = 0;
  }

  if (([(NRPairedDeviceRegistry *)self->_pairedDeviceRegistry isPaired]& 1) == 0)
  {
    v8 = NMLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v9 = "[Recommendation] (Music) (Catalog) Device is not paired, won't schedule next update.";
LABEL_15:
      _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    }

LABEL_16:

    [objc_opt_class() _clearLastUpdatedDateIfNeeded];
    return;
  }

  if (![(NMSSubscriptionManager *)self->_subscriptionManager hasCapability:1])
  {
    v8 = NMLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v9 = "[Recommendation] (Music) (Catalog) Account does not have full catalog playback capability, won't schedule next update.";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  privacyAcknowledgementRequiredForMusic = [(ICPrivacyInfo *)self->_privacyInfo privacyAcknowledgementRequiredForMusic];
  v6 = NMLogForCategory(5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (privacyAcknowledgementRequiredForMusic)
  {
    if (v7)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Privacy acknowledgement is required for Music, won't schedule next update.", buf, 2u);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Will get bag to determine next update window...", buf, 2u);
    }

    objc_initWeak(buf, self);
    v10 = objc_alloc(MEMORY[0x277D7FC30]);
    activeAccount = [MEMORY[0x277D7FCA0] activeAccount];
    v12 = [v10 initWithIdentity:activeAccount];

    mEMORY[0x277D7FC68] = [MEMORY[0x277D7FC68] sharedBagProvider];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__NMSMusicCatalogRecommendationsUpdater__scheduleNextUpdateIfNeeded__block_invoke;
    v14[3] = &unk_27993EDC8;
    objc_copyWeak(&v15, buf);
    [mEMORY[0x277D7FC68] getBagForRequestContext:v12 withCompletionHandler:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

void __68__NMSMusicCatalogRecommendationsUpdater__scheduleNextUpdateIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = NMLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__NMSMusicCatalogRecommendationsUpdater__scheduleNextUpdateIfNeeded__block_invoke_cold_1();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__NMSMusicCatalogRecommendationsUpdater__scheduleNextUpdateIfNeeded__block_invoke_24;
    v11[3] = &unk_27993E570;
    v11[4] = WeakRetained;
    v12 = v5;
    dispatch_async(v10, v11);
  }
}

- (void)_scheduleNextUpdateWithBag:(id)bag
{
  v46 = *MEMORY[0x277D85DE8];
  bagCopy = bag;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [objc_alloc(MEMORY[0x277CCA8B8]) initWithIdentifier:@"com.apple.NanoMusicSync.NMSMusicCatalogRecommendationsUpdater"];
  v40 = 0uLL;
  v41 = 0;
  v6 = objc_opt_class();
  if (v6)
  {
    [v6 _configurationWithBag:bagCopy];
  }

  else
  {
    v40 = 0uLL;
    v41 = 0;
  }

  v7 = +[NMSyncDefaults sharedDefaults];
  catalogRecommendationsLastUpdateDate = [v7 catalogRecommendationsLastUpdateDate];

  if (catalogRecommendationsLastUpdateDate)
  {
    v9 = objc_opt_class();
    *buf = v40;
    *&buf[16] = v41;
    [v9 _nextUpdateDelayAfterDate:catalogRecommendationsLastUpdateDate configuration:buf];
    v11 = v10;
    v12 = v10 > 0.0;
    v13 = NMLogForCategory(5);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        *buf = 138412290;
        *&buf[4] = catalogRecommendationsLastUpdateDate;
        _os_log_impl(&dword_25B27B000, v13, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Last updated date is %@, will schedule next update for later.", buf, 0xCu);
      }

      [v5 setInterval:(86400 * v40)];
      [v5 setDelay:v11];
      [v5 setTolerance:1800.0];
    }

    else
    {
      if (v14)
      {
        *buf = 138412290;
        *&buf[4] = catalogRecommendationsLastUpdateDate;
        _os_log_impl(&dword_25B27B000, v13, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Last updated date is %@, will schedule next update for now.", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = NMLogForCategory(5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v15, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Last updated date not found, will schedule next update for now at a higher priority.", buf, 2u);
    }

    [v5 setQualityOfService:17];
  }

  if (self->_retryAttempt)
  {
    v16 = NMLogForCategory(5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      retryAttempt = self->_retryAttempt;
      *buf = 134217984;
      *&buf[4] = retryAttempt;
      _os_log_impl(&dword_25B27B000, v16, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Will schedule retry attempt: %lu.", buf, 0xCu);
    }

    v18 = self->_retryAttempt;
    v19 = [&unk_286C8D430 count];
    if (v18 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    v21 = [&unk_286C8D418 objectAtIndexedSubscript:v20 - 1];
    [v21 doubleValue];
    v23 = v22;
    [v5 delay];
    [v5 setDelay:v24 + v23 * 60.0];

    [v5 setInterval:(86400 * v40)];
    [v5 setTolerance:60.0];
  }

  v25 = NMLogForCategory(5);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = MEMORY[0x277CBEAA8];
    [v5 delay];
    v27 = [v26 dateWithTimeIntervalSinceNow:?];
    [v5 delay];
    v29 = v28;
    [v5 tolerance];
    v31 = v30;
    [v5 interval];
    *buf = 138413058;
    *&buf[4] = v27;
    *&buf[12] = 2048;
    *&buf[14] = v29;
    *&buf[22] = 2048;
    v43 = v31 / 60.0;
    v44 = 2048;
    v45 = v32;
    _os_log_impl(&dword_25B27B000, v25, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Scheduling next update for %@ (in %f seconds) +/-%f minutes, interval: %f.", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __68__NMSMusicCatalogRecommendationsUpdater__scheduleNextUpdateWithBag___block_invoke;
  v37[3] = &unk_27993EDF0;
  objc_copyWeak(&v39, buf);
  v33 = v5;
  v38 = v33;
  [(NSBackgroundActivityScheduler *)v33 scheduleWithBlock:v37];
  updateScheduler = self->_updateScheduler;
  self->_updateScheduler = v33;
  v35 = v33;

  objc_destroyWeak(&v39);
  objc_destroyWeak(buf);

  v36 = *MEMORY[0x277D85DE8];
}

void __68__NMSMusicCatalogRecommendationsUpdater__scheduleNextUpdateWithBag___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__NMSMusicCatalogRecommendationsUpdater__scheduleNextUpdateWithBag___block_invoke_2;
    block[3] = &unk_27993DE68;
    block[4] = WeakRetained;
    v8 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v6, block);
  }

  else
  {
    (*(v3 + 2))(v3, 1);
  }
}

+ ($76119E9FC4E615FCD2412858B276E5B9)_configurationWithBag:(SEL)bag
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = v5;
  *&retstr->var0 = xmmword_25B2CED60;
  retstr->var1.length = 235;
  if (v5)
  {
    v7 = [v5 numberForBagKey:@"forYouFetchMinutesStart"];
    v8 = [v6 numberForBagKey:@"forYouFetchMinutesEnd"];
    v9 = NMLogForCategory(5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412546;
      v27 = v7;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Next update window from bag is: %@ - %@", &v26, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && ([v7 intValue] & 0x80000000) == 0 && objc_msgSend(v8, "intValue") <= 1439 && (v10 = objc_msgSend(v8, "intValue"), v10 > objc_msgSend(v7, "intValue")))
    {
      intValue = [v7 intValue];
      intValue2 = [v8 intValue];
      intValue3 = [v7 intValue];
      retstr->var1.location = intValue;
      retstr->var1.length = intValue2 - intValue3;
    }

    else
    {
      v14 = NMLogForCategory(5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[NMSMusicCatalogRecommendationsUpdater _configurationWithBag:];
      }
    }
  }

  v15 = CFPreferencesCopyAppValue(@"debugForYouFetchConfigEnabled", @"com.apple.NanoMusicSync");
  if ([v15 BOOLValue])
  {
    v16 = CFPreferencesCopyAppValue(@"debugForYouFetchMinutesStart", @"com.apple.NanoMusicSync");
    v17 = CFPreferencesCopyAppValue(@"debugForYouFetchMinutesEnd", @"com.apple.NanoMusicSync");
    v18 = NMLogForCategory(5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412546;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_25B27B000, v18, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) (DebugOverrides) Update window from defaults is: %@ - %@", &v26, 0x16u);
    }

    intValue4 = [v16 intValue];
    intValue5 = [v17 intValue];
    intValue6 = [v16 intValue];
    retstr->var1.location = intValue4;
    retstr->var1.length = intValue5 - intValue6;
    v22 = CFPreferencesCopyAppValue(@"debugForYouFetchDaysFrequency", @"com.apple.NanoMusicSync");
    if (v22)
    {
      v23 = NMLogForCategory(5);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412290;
        v27 = v22;
        _os_log_impl(&dword_25B27B000, v23, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) (DebugOverrides) Update interval from defaults is: %@ days.", &v26, 0xCu);
      }

      retstr->var0 = [v22 integerValue];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

+ (double)_nextUpdateDelayAfterDate:(id)date configuration:(id *)configuration
{
  v5 = MEMORY[0x277CBEAB8];
  dateCopy = date;
  v7 = objc_alloc_init(v5);
  [v7 setDay:configuration->var0];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar dateByAddingComponents:v7 toDate:dateCopy options:2];

  v10 = [currentCalendar components:2097180 fromDate:v9];
  location = configuration->var1.location;
  v12 = location + arc4random_uniform(configuration->var1.length);
  [v10 setHour:v12 / 60];
  [v10 setMinute:v12 % 60];
  v13 = [currentCalendar dateFromComponents:v10];
  [v13 timeIntervalSinceNow];
  v15 = v14;

  return v15;
}

- (BOOL)_needsInitialContentUpdate
{
  v2 = +[NMSyncDefaults sharedDefaults];
  catalogRecommendationsLastUpdateDate = [v2 catalogRecommendationsLastUpdateDate];
  v4 = catalogRecommendationsLastUpdateDate == 0;

  return v4;
}

- (void)_performNextUpdateWithScheduler:(id)scheduler completionHandler:(id)handler
{
  schedulerCopy = scheduler;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  if (([(NRPairedDeviceRegistry *)self->_pairedDeviceRegistry isPaired]& 1) == 0)
  {
    v9 = NMLogForCategory(5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v15 = "[Recommendation] (Music) (Catalog) Device is not paired, won't perform next update.";
LABEL_10:
      _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
    }

LABEL_11:

    [objc_opt_class() _clearLastUpdatedDateIfNeeded];
    handlerCopy[2](handlerCopy, 1);
    goto LABEL_12;
  }

  v8 = [(NMSSubscriptionManager *)self->_subscriptionManager hasCapability:1];
  v9 = NMLogForCategory(5);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v10)
    {
      LOWORD(buf[0]) = 0;
      v15 = "[Recommendation] (Music) (Catalog) Account does not have full catalog playback capability, won't perform next update.";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v10)
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Will get bag to determine current staleness period...", buf, 2u);
  }

  objc_initWeak(buf, self);
  v11 = objc_alloc(MEMORY[0x277D7FC30]);
  activeAccount = [MEMORY[0x277D7FCA0] activeAccount];
  v13 = [v11 initWithIdentity:activeAccount];

  mEMORY[0x277D7FC68] = [MEMORY[0x277D7FC68] sharedBagProvider];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__NMSMusicCatalogRecommendationsUpdater__performNextUpdateWithScheduler_completionHandler___block_invoke;
  v16[3] = &unk_27993EE18;
  objc_copyWeak(&v19, buf);
  v17 = schedulerCopy;
  v18 = handlerCopy;
  [mEMORY[0x277D7FC68] getBagForRequestContext:v13 withCompletionHandler:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
LABEL_12:
}

void __91__NMSMusicCatalogRecommendationsUpdater__performNextUpdateWithScheduler_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = NMLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __91__NMSMusicCatalogRecommendationsUpdater__performNextUpdateWithScheduler_completionHandler___block_invoke_cold_1();
    }
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __91__NMSMusicCatalogRecommendationsUpdater__performNextUpdateWithScheduler_completionHandler___block_invoke_63;
    v11[3] = &unk_27993E978;
    v11[4] = WeakRetained;
    v12 = a1[4];
    v13 = v5;
    v14 = a1[5];
    dispatch_async(v10, v11);
  }

  else
  {
    (*(a1[5] + 2))();
  }
}

- (void)_performNextUpdateWithScheduler:(id)scheduler urlBag:(id)bag completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  schedulerCopy = scheduler;
  bagCopy = bag;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  if ([schedulerCopy shouldDefer])
  {
    v11 = NMLogForCategory(5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v11, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Background task asked to defer, won't perform next update.", buf, 2u);
    }

    handlerCopy[2](handlerCopy, 2);
    goto LABEL_16;
  }

  [objc_opt_class() _stalenessIntervalWithBag:bagCopy];
  if (v12 < 0.0)
  {
    v13 = NMLogForCategory(5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v13, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Bag indicates to never fetch, won't perform next update.", buf, 2u);
    }

LABEL_8:

    handlerCopy[2](handlerCopy, 1);
    date = [MEMORY[0x277CBEAA8] date];
    v15 = +[NMSyncDefaults sharedDefaults];
    [v15 setCatalogRecommendationsLastUpdateDate:date];

    [(NMSMusicCatalogRecommendationsUpdater *)self _scheduleNextUpdateIfNeeded];
    goto LABEL_16;
  }

  v16 = v12;
  v17 = [[NMSAppActivityStatus alloc] initWithBundleID:@"com.apple.NanoMusic"];
  v18 = [(NMSAppActivityStatus *)v17 isAppContentDormantWithInterval:v16];

  v13 = NMLogForCategory(5);
  v19 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v19)
    {
      *buf = 134217984;
      v26 = v16;
      _os_log_impl(&dword_25B27B000, v13, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) App is considered content dormant for staleness interval: %f, won't perform next update.", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (v19)
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v13, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Performing catalog recommendations request...", buf, 2u);
  }

  objc_initWeak(buf, self);
  v20 = objc_alloc_init(NMSMusicRecommendationsRequest);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __98__NMSMusicCatalogRecommendationsUpdater__performNextUpdateWithScheduler_urlBag_completionHandler___block_invoke;
  v22[3] = &unk_27993EE40;
  objc_copyWeak(&v24, buf);
  v23 = handlerCopy;
  [(NMSMusicRecommendationsRequest *)v20 performWithResponseHandler:v22];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
LABEL_16:

  v21 = *MEMORY[0x277D85DE8];
}

void __98__NMSMusicCatalogRecommendationsUpdater__performNextUpdateWithScheduler_urlBag_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NMLogForCategory(5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __98__NMSMusicCatalogRecommendationsUpdater__performNextUpdateWithScheduler_urlBag_completionHandler___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Finished performing catalog recommendations request: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = WeakRetained[1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __98__NMSMusicCatalogRecommendationsUpdater__performNextUpdateWithScheduler_urlBag_completionHandler___block_invoke_69;
    v13[3] = &unk_27993E978;
    v14 = v6;
    v15 = v10;
    v16 = v5;
    v17 = *(a1 + 32);
    dispatch_async(v11, v13);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __98__NMSMusicCatalogRecommendationsUpdater__performNextUpdateWithScheduler_urlBag_completionHandler___block_invoke_69(void *a1)
{
  if (!a1[4])
  {
    v2 = *(a1[5] + 64);
    if (v2)
    {
      (*(v2 + 16))(v2, a1[6]);
    }
  }

  (*(a1[7] + 16))();
  v3 = a1[5];
  if (a1[4])
  {
    ++*(v3 + 56);
  }

  else
  {
    *(v3 + 56) = 0;
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = +[NMSyncDefaults sharedDefaults];
    [v5 setCatalogRecommendationsLastUpdateDate:v4];
  }

  v6 = a1[5];

  return [v6 _scheduleNextUpdateIfNeeded];
}

+ (double)_stalenessIntervalWithBag:(id)bag
{
  v19 = *MEMORY[0x277D85DE8];
  bagCopy = bag;
  v4 = bagCopy;
  if (bagCopy)
  {
    v5 = [bagCopy numberForBagKey:@"forYouFetchDaysTillStale"];
    v6 = NMLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Update staleness period from bag is: %@ days", &v17, 0xCu);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 doubleValue];
      v8 = v7 * 24.0 * 60.0 * 60.0;
    }

    else
    {
      v9 = NMLogForCategory(5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[NMSMusicCatalogRecommendationsUpdater _stalenessIntervalWithBag:];
      }

      v8 = 1209600.0;
    }
  }

  else
  {
    v8 = 1209600.0;
  }

  v10 = CFPreferencesCopyAppValue(@"debugForYouFetchConfigEnabled", @"com.apple.NanoMusicSync");
  if ([v10 BOOLValue])
  {
    v11 = CFPreferencesCopyAppValue(@"debugForYouFetchMinutesTillStale", @"com.apple.NanoMusicSync");
    [v11 doubleValue];
    v13 = v12;
    v14 = NMLogForCategory(5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v11;
      _os_log_impl(&dword_25B27B000, v14, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) (DebugOverrides) Update staleness period from defaults is: %@ minutes", &v17, 0xCu);
    }

    v8 = v13 * 60.0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (void)_clearLastUpdatedDateIfNeeded
{
  v2 = +[NMSyncDefaults sharedDefaults];
  catalogRecommendationsLastUpdateDate = [v2 catalogRecommendationsLastUpdateDate];

  if (catalogRecommendationsLastUpdateDate)
  {
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Music) (Catalog) Clearing last updated date.", v6, 2u);
    }

    v5 = +[NMSyncDefaults sharedDefaults];
    [v5 setCatalogRecommendationsLastUpdateDate:0];
  }
}

void __68__NMSMusicCatalogRecommendationsUpdater__scheduleNextUpdateIfNeeded__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __91__NMSMusicCatalogRecommendationsUpdater__performNextUpdateWithScheduler_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __98__NMSMusicCatalogRecommendationsUpdater__performNextUpdateWithScheduler_urlBag_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end