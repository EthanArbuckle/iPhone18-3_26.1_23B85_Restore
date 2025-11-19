@interface MTEventRecorderAMSMetricsDelegate
+ (id)amsMetricsObjectCache;
- (MTEventRecorderAMSMetricsDelegate)initWithContainerId:(id)a3 amsBag:(id)a4;
- (MTEventRecorderAMSMetricsDelegate)initWithContainerId:(id)a3 profileName:(id)a4 profileVersion:(id)a5;
- (id)_recordEvent:(id)a3 toTopic:(id)a4;
- (id)activeItunesAccount;
- (id)amsContainerIdForTopic:(id)a3;
- (id)amsMetricsForTopic:(id)a3;
- (id)flushUnreportedEvents;
- (id)lookupItunesAccount:(id)a3;
- (id)periodicQueueForTopic:(id)a3;
- (id)recordEvent:(id)a3 toTopic:(id)a4;
- (void)_beginTransaction;
- (void)_endTransaction;
- (void)_flushEvents:(id)a3 topic:(id)a4;
- (void)setFlushMode:(int64_t)a3;
- (void)setFlushTimeInterval:(double)a3;
- (void)setMaximumBatchSize:(int64_t)a3;
- (void)setNumberOfPendingEvents:(int64_t)a3;
- (void)setTransactionEnabled:(BOOL)a3;
@end

@implementation MTEventRecorderAMSMetricsDelegate

- (MTEventRecorderAMSMetricsDelegate)initWithContainerId:(id)a3 amsBag:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(MTEventRecorderAMSMetricsDelegate *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_containerId, a3);
    *&v10->_monitorsLifecycleEvents = 16843009;
    v10->_flushTimeInterval = 60.0;
    v10->_maximumBatchSize = 500;
    v11 = [v8 dictionaryForKey:@"metrics"];
    v12 = [v11 valuePromise];
    metricsBagPromise = v10->_metricsBagPromise;
    v10->_metricsBagPromise = v12;

    objc_initWeak(&location, v10);
    v14 = v10->_metricsBagPromise;
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __64__MTEventRecorderAMSMetricsDelegate_initWithContainerId_amsBag___block_invoke;
    v26 = &unk_2798CD108;
    objc_copyWeak(&v27, &location);
    [(AMSPromise *)v14 addFinishBlock:&v23];
    objc_storeStrong(&v10->_amsBag, a4);
    v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{1, v23, v24, v25, v26}];
    amsMetricsByTopic = v10->_amsMetricsByTopic;
    v10->_amsMetricsByTopic = v15;

    [MEMORY[0x277CEE400] registerBagKeySetForMetricsRecorder:v8];
    v17 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_opt_class();
      v19 = [(MTEventRecorderAMSMetricsDelegate *)v10 containerId];
      v20 = [v8 profile];
      *buf = 138412802;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&dword_258F4B000, v17, OS_LOG_TYPE_DEBUG, "MetricsKit: %@: Created new object with container: %@ bag profile: %@", buf, 0x20u);
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

void __64__MTEventRecorderAMSMetricsDelegate_initWithContainerId_amsBag___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 objectForKeyedSubscript:@"postFrequency"];

  if (v3)
  {
    v4 = [v12 objectForKeyedSubscript:@"postFrequency"];
    [v4 doubleValue];
    v6 = v5 / 1000.0;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setFlushTimeInterval:v6];
  }

  v8 = [v12 objectForKeyedSubscript:@"maxBatchSize"];

  if (v8)
  {
    v9 = [v12 objectForKeyedSubscript:@"maxBatchSize"];
    v10 = [v9 integerValue];
    v11 = objc_loadWeakRetained((a1 + 32));
    [v11 setMaximumBatchSize:v10];
  }
}

- (MTEventRecorderAMSMetricsDelegate)initWithContainerId:(id)a3 profileName:(id)a4 profileVersion:(id)a5
{
  v8 = MEMORY[0x277CEE3F0];
  v9 = a3;
  v10 = [v8 bagForProfile:a4 profileVersion:a5];
  v11 = [(MTEventRecorderAMSMetricsDelegate *)self initWithContainerId:v9 amsBag:v10];

  return v11;
}

+ (id)amsMetricsObjectCache
{
  if (amsMetricsObjectCache_onceToken != -1)
  {
    +[MTEventRecorderAMSMetricsDelegate amsMetricsObjectCache];
  }

  v3 = amsMetricsObjectCache_cache;

  return v3;
}

uint64_t __58__MTEventRecorderAMSMetricsDelegate_amsMetricsObjectCache__block_invoke()
{
  amsMetricsObjectCache_cache = objc_alloc_init(MTNonretainedCache);

  return MEMORY[0x2821F96F8]();
}

- (id)amsMetricsForTopic:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MTEventRecorderAMSMetricsDelegate *)v5 amsMetricsByTopic];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (!v7)
  {
    v8 = [(MTEventRecorderAMSMetricsDelegate *)v5 amsContainerIdForTopic:v4];
    v9 = +[MTEventRecorderAMSMetricsDelegate amsMetricsObjectCache];
    v10 = MEMORY[0x277CCACA8];
    v11 = [(MTEventRecorderAMSMetricsDelegate *)v5 amsBag];
    v12 = [v10 stringWithFormat:@"%@-%lu", v8, objc_msgSend(v11, "hash")];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __56__MTEventRecorderAMSMetricsDelegate_amsMetricsForTopic___block_invoke;
    v24[3] = &unk_2798CD150;
    v13 = v8;
    v25 = v13;
    v26 = v5;
    v7 = [v9 objectForKeyedSubscript:v12 creation:v24];
    [v7 setFlushTimerEnabled:v5->_flushTimerEnabled];
    [v7 setMaxBatchSize:v5->_maximumBatchSize];
    if (objc_opt_respondsToSelector())
    {
      [v7 setMonitorsLifecycleEvents:{-[MTEventRecorderAMSMetricsDelegate monitorsLifecycleEvents](v5, "monitorsLifecycleEvents")}];
    }

    v14 = [(MTEventRecorderAMSMetricsDelegate *)v5 amsMetricsByTopic];
    [v14 setObject:v7 forKeyedSubscript:v4];

    v15 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = [(MTEventRecorderAMSMetricsDelegate *)v5 amsBag];
      v18 = [v17 profile];
      *buf = 138412802;
      v28 = v16;
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_258F4B000, v15, OS_LOG_TYPE_DEBUG, "MetricsKit: %@: Created new AMSMetrics for containerId: %@ bag profile: %@", buf, 0x20u);
    }
  }

  objc_sync_exit(v5);

  if (!v7)
  {
    v19 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      *buf = 138412290;
      v28 = v20;
      v21 = v20;
      _os_log_impl(&dword_258F4B000, v19, OS_LOG_TYPE_ERROR, "MetricsKit: %@: Failed to create AMSMetrics, check to make sure AMSBag is provided.", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v7;
}

id __56__MTEventRecorderAMSMetricsDelegate_amsMetricsForTopic___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CEE590]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) amsBag];
  v5 = [v2 initWithContainerID:v3 bag:v4];

  return v5;
}

- (id)periodicQueueForTopic:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MTEventRecorderAMSMetricsDelegate *)v5 periodicQueuesByTopic];

  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    [(MTEventRecorderAMSMetricsDelegate *)v5 setPeriodicQueuesByTopic:v7];
  }

  v8 = [(MTEventRecorderAMSMetricsDelegate *)v5 periodicQueuesByTopic];
  v9 = [v8 objectForKeyedSubscript:v4];

  if (!v9)
  {
    v9 = objc_alloc_init(MTPeriodicQueue);
    [(MTPeriodicQueue *)v9 setFlushTimeInterval:v5->_flushTimeInterval];
    [(MTPeriodicQueue *)v9 setFlushTimerEnabled:v5->_flushTimerEnabled];
    [(MTPeriodicQueue *)v9 setMaximumBatchSize:v5->_maximumBatchSize];
    objc_initWeak(&location, v5);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__MTEventRecorderAMSMetricsDelegate_periodicQueueForTopic___block_invoke;
    v13[3] = &unk_2798CD178;
    objc_copyWeak(&v15, &location);
    v10 = v4;
    v14 = v10;
    [(MTPeriodicQueue *)v9 setFlushHandler:v13];
    v11 = [(MTEventRecorderAMSMetricsDelegate *)v5 periodicQueuesByTopic];
    [v11 setObject:v9 forKeyedSubscript:v10];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v5);

  return v9;
}

void __59__MTEventRecorderAMSMetricsDelegate_periodicQueueForTopic___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _flushEvents:v3 topic:*(a1 + 32)];
}

- (void)setTransactionEnabled:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  v4->_transactionEnabled = v3;
  if (v3)
  {
    if (v4->_numberOfPendingEvents >= 1)
    {
      [(MTEventRecorderAMSMetricsDelegate *)v4 _beginTransaction];
    }
  }

  else
  {
    [(MTEventRecorderAMSMetricsDelegate *)v4 _endTransaction];
  }

  v5 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = v3;
    v6 = v9;
    _os_log_impl(&dword_258F4B000, v5, OS_LOG_TYPE_DEBUG, "MetricsKit: %@: Updated transactionEnabled to %d", &v8, 0x12u);
  }

  objc_sync_exit(v4);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setFlushMode:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  if ([(NSMutableDictionary *)v4->_amsMetricsByTopic count]|| [(NSMutableDictionary *)v4->_periodicQueuesByTopic count])
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"Flush mode cannot be changed after recording events for the class %@", v11];
    v13 = [v8 exceptionWithName:*MEMORY[0x277CBE658] reason:v12 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

  objc_sync_exit(v4);

  v4->_flushMode = a3;
  v5 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v16 = objc_opt_class();
    v17 = 2048;
    v18 = a3;
    v6 = v16;
    _os_log_impl(&dword_258F4B000, v5, OS_LOG_TYPE_DEBUG, "MetricsKit: %@: Updated flushMode to %ld", buf, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setFlushTimeInterval:(double)a3
{
  self->_flushTimeInterval = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MTEventRecorderAMSMetricsDelegate *)v4 periodicQueuesByTopic];
  v7 = [v5 allValues];

  objc_sync_exit(v4);
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v7 setValue:v6 forKey:@"flushTimeInterval"];
}

- (void)setMaximumBatchSize:(int64_t)a3
{
  self->_maximumBatchSize = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MTEventRecorderAMSMetricsDelegate *)v4 amsMetricsByTopic];
  v10 = [v5 allValues];

  v6 = [(MTEventRecorderAMSMetricsDelegate *)v4 periodicQueuesByTopic];
  v7 = [v6 allValues];

  objc_sync_exit(v4);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v10 setValue:v8 forKey:@"maxBatchSize"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v7 setValue:v9 forKey:@"maximumBatchSize"];
}

- (void)setNumberOfPendingEvents:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  numberOfPendingEvents = obj->_numberOfPendingEvents;
  obj->_numberOfPendingEvents = a3;
  if (a3 != 1 || numberOfPendingEvents)
  {
    if (!a3)
    {
      [(MTEventRecorderAMSMetricsDelegate *)obj _endTransaction];
    }
  }

  else
  {
    [(MTEventRecorderAMSMetricsDelegate *)obj _beginTransaction];
  }

  objc_sync_exit(obj);
}

- (void)_beginTransaction
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_transactionEnabled)
  {
    [@"com.apple.amp-ae.metricskit.amsqueue" UTF8String];
    v3 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v3;

    v5 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = objc_opt_class();
      v6 = v9;
      _os_log_impl(&dword_258F4B000, v5, OS_LOG_TYPE_DEBUG, "MetricsKit: %@: begin transaction", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_endTransaction
{
  v8 = *MEMORY[0x277D85DE8];
  transaction = self->_transaction;
  if (transaction)
  {
    self->_transaction = 0;

    v3 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = objc_opt_class();
      v4 = v7;
      _os_log_impl(&dword_258F4B000, v3, OS_LOG_TYPE_DEBUG, "MetricsKit: %@: end transaction", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)lookupItunesAccount:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "integerValue")}];

    v3 = v4;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [MEMORY[0x277CB8F50] ams_sharedAccountStore];
  v6 = [v5 ams_iTunesAccounts];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 ams_DSID];
        v12 = v11;
        if (v11 && ([v11 isEqualToNumber:v3] & 1) != 0)
        {
          v7 = v10;

          goto LABEL_14;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)activeItunesAccount
{
  v2 = [MEMORY[0x277CB8F50] ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  return v3;
}

- (id)recordEvent:(id)a3 toTopic:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"eventType"];
  v9 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v28 = objc_opt_class();
    v29 = 2112;
    v30 = v8;
    v10 = v28;
    _os_log_impl(&dword_258F4B000, v9, OS_LOG_TYPE_DEBUG, "MetricsKit: %@: Start recording %@ event", buf, 0x16u);
  }

  v11 = objc_alloc_init(MTPromise);
  objc_initWeak(buf, self);
  metricsBagPromise = self->_metricsBagPromise;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __57__MTEventRecorderAMSMetricsDelegate_recordEvent_toTopic___block_invoke;
  v21[3] = &unk_2798CD1C8;
  objc_copyWeak(&v26, buf);
  v13 = v11;
  v22 = v13;
  v14 = v6;
  v23 = v14;
  v15 = v7;
  v24 = v15;
  v16 = v8;
  v25 = v16;
  [(AMSPromise *)metricsBagPromise addFinishBlock:v21];
  v17 = v25;
  v18 = v13;

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __57__MTEventRecorderAMSMetricsDelegate_recordEvent_toTopic___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = objc_opt_class();
    v4 = [WeakRetained _recordEvent:*(a1 + 40) toTopic:*(a1 + 48)];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __57__MTEventRecorderAMSMetricsDelegate_recordEvent_toTopic___block_invoke_2;
    v5[3] = &unk_2798CD1A0;
    v8 = v3;
    v6 = *(a1 + 56);
    v7 = *(a1 + 32);
    [v4 addFinishBlock:v5];
  }

  else
  {
    [*(a1 + 32) finishWithResult:MEMORY[0x277CBEC10]];
  }
}

void __57__MTEventRecorderAMSMetricsDelegate_recordEvent_toTopic___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MTMetricsKitOSLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 48);
      v10 = *(a1 + 32);
      v14 = 138412802;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_258F4B000, v7, OS_LOG_TYPE_DEBUG, "MetricsKit: %@: Failed recording %@ event with error: %@", &v14, 0x20u);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    if (v8)
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 32);
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_258F4B000, v7, OS_LOG_TYPE_DEBUG, "MetricsKit: %@: Finished recording %@ event", &v14, 0x16u);
    }

    [*(a1 + 40) finishWithResult:v5];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_recordEvent:(id)a3 toTopic:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"dsId"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = [objc_alloc(MEMORY[0x277CEE5A0]) initWithTopic:v7];
  if (isKindOfClass)
  {
    if (objc_opt_respondsToSelector())
    {
      [v10 setAnonymous:1];
    }
  }

  else if ([(MTEventRecorderAMSMetricsDelegate *)self personalizedWithItunesAccount])
  {
    if (!v8 || ([(MTEventRecorderAMSMetricsDelegate *)self lookupItunesAccount:v8], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = [(MTEventRecorderAMSMetricsDelegate *)self activeItunesAccount];
    }

    [v10 setAccount:v11];
  }

  v12 = [MTReflectUtil removeNullValuesFromDictionary:v6];
  [v10 addPropertiesWithDictionary:v12];
  flushMode = self->_flushMode;
  if (flushMode == 2)
  {
    [(MTEventRecorderAMSMetricsDelegate *)self setNumberOfPendingEvents:[(MTEventRecorderAMSMetricsDelegate *)self numberOfPendingEvents]+ 1];
    v26 = v10;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    [(MTEventRecorderAMSMetricsDelegate *)self _flushEvents:v18 topic:v7];
  }

  else if (flushMode == 1)
  {
    v19 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_opt_class();
      v21 = v20;
      v22 = [v6 objectForKeyedSubscript:@"eventType"];
      *buf = 138412546;
      v28 = v20;
      v29 = 2112;
      v30 = v22;
      _os_log_impl(&dword_258F4B000, v19, OS_LOG_TYPE_DEBUG, "MetricsKit: %@: enqueue %@ event using in-memory queue", buf, 0x16u);
    }

    [(MTEventRecorderAMSMetricsDelegate *)self setNumberOfPendingEvents:[(MTEventRecorderAMSMetricsDelegate *)self numberOfPendingEvents]+ 1];
    v18 = [(MTEventRecorderAMSMetricsDelegate *)self periodicQueueForTopic:v7];
    [v18 appendObject:v10];
  }

  else
  {
    if (flushMode)
    {
      goto LABEL_20;
    }

    v14 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = [v6 objectForKeyedSubscript:@"eventType"];
      *buf = 138412546;
      v28 = v15;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_258F4B000, v14, OS_LOG_TYPE_DEBUG, "MetricsKit: %@: enqueue %@ event using AMSMetrics", buf, 0x16u);
    }

    v18 = [(MTEventRecorderAMSMetricsDelegate *)self amsMetricsForTopic:v7];
    [v18 enqueueEvent:v10];
  }

LABEL_20:
  v23 = [MTPromise promiseWithResult:v12];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)_flushEvents:(id)a3 topic:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = v9;
    *buf = 138412546;
    v24 = v9;
    v25 = 2048;
    v26 = [v6 count];
    _os_log_impl(&dword_258F4B000, v8, OS_LOG_TYPE_DEBUG, "MetricsKit: %@: Start flushing %lu in-memory events", buf, 0x16u);
  }

  v11 = [(MTEventRecorderAMSMetricsDelegate *)self _sortedEventsFromBatch:v6];
  v12 = [(MTEventRecorderAMSMetricsDelegate *)self amsMetricsForTopic:v7];
  v13 = [v12 flushEvents:v11];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__MTEventRecorderAMSMetricsDelegate__flushEvents_topic___block_invoke;
  v18[3] = &unk_2798CD1F0;
  v19 = v11;
  v20 = self;
  v21 = v6;
  v22 = v7;
  v14 = v7;
  v15 = v6;
  v16 = v11;
  [v13 addFinishBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __56__MTEventRecorderAMSMetricsDelegate__flushEvents_topic___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 || [v5 integerValue] <= 0 && objc_msgSend(*(a1 + 32), "count") == 1)
  {
    v7 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      *v21 = 138412546;
      *&v21[4] = objc_opt_class();
      *&v21[12] = 2112;
      *&v21[14] = v6;
      v9 = *&v21[4];
      _os_log_impl(&dword_258F4B000, v7, OS_LOG_TYPE_ERROR, "MetricsKit: %@: Failed to flush events with error: %@", v21, 0x16u);
    }

    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) count];
  }

  else
  {
    v12 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 40);
      v14 = objc_opt_class();
      v15 = *(a1 + 48);
      v16 = v14;
      *v21 = 138412546;
      *&v21[4] = v14;
      *&v21[12] = 2048;
      *&v21[14] = [v15 count];
      _os_log_impl(&dword_258F4B000, v12, OS_LOG_TYPE_DEBUG, "MetricsKit: %@: Finished flushing %lu in-memory events", v21, 0x16u);
    }

    v17 = [v5 integerValue];
    if (v17 != [*(a1 + 32) count])
    {
      v18 = [*(a1 + 32) subarrayWithRange:{objc_msgSend(v5, "integerValue"), objc_msgSend(*(a1 + 32), "count") - objc_msgSend(v5, "integerValue")}];
      v19 = [*(a1 + 40) periodicQueueForTopic:*(a1 + 56)];
      [v19 insertObjects:v18];
    }

    v10 = *(a1 + 40);
    v11 = [v5 integerValue];
  }

  [v10 setNumberOfPendingEvents:{objc_msgSend(v10, "numberOfPendingEvents", *v21, *&v21[16], v22) - v11}];

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __60__MTEventRecorderAMSMetricsDelegate__sortedEventsFromBatch___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 account];
  v7 = [v6 ams_DSID];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &unk_286A4C218;
  }

  v10 = v9;

  v11 = [v5 account];
  v12 = [v11 ams_DSID];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &unk_286A4C218;
  }

  v15 = v14;

  v16 = [v10 compare:v15];
  if (!v16)
  {
    v17 = [v4 canaryIdentifier];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &stru_286A3A510;
    }

    v20 = v19;

    v21 = [v5 canaryIdentifier];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_286A3A510;
    }

    v24 = v23;

    v16 = [(__CFString *)v20 compare:v24];
  }

  return v16;
}

- (id)flushUnreportedEvents
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MTEventRecorderAMSMetricsDelegate *)v2 amsMetricsByTopic];
  v4 = [v3 allValues];

  v5 = [(MTEventRecorderAMSMetricsDelegate *)v2 periodicQueuesByTopic];
  v6 = [v5 allValues];

  objc_sync_exit(v2);
  if (([v4 count] || objc_msgSend(v6, "count")) && (objc_msgSend(v6, "makeObjectsPerformSelector:", sel_flushObjects), objc_msgSend(v4, "count")))
  {
    v7 = [v4 mt_map:&__block_literal_global_58];
    v8 = objc_alloc_init(MTPromise);
    v9 = [MEMORY[0x277CEE638] promiseWithAll:v7];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__MTEventRecorderAMSMetricsDelegate_flushUnreportedEvents__block_invoke_2;
    v12[3] = &unk_2798CD258;
    v10 = v8;
    v13 = v10;
    [v9 addFinishBlock:v12];
  }

  else
  {
    v10 = [MTPromise promiseWithResult:&unk_286A4C218];
  }

  return v10;
}

void __58__MTEventRecorderAMSMetricsDelegate_flushUnreportedEvents__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 32) finishWithError:a3];
  }

  else
  {
    if ([v5 count] == 1)
    {
      v7 = *(a1 + 32);
      v8 = [v6 firstObject];
      [v7 finishWithResult:v8];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v12 += [*(*(&v18 + 1) + 8 * i) integerValue];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v15 = *(a1 + 32);
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
    [v15 finishWithResult:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)amsContainerIdForTopic:(id)a3
{
  v4 = a3;
  containerId = self->_containerId;
  if (containerId)
  {
    v6 = containerId;
  }

  else
  {
    v7 = +[MTFrameworkEnvironment sharedEnvironment];
    v6 = [v7 metricsKitBundleIdentifier];
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v6, v4];

  return v8;
}

@end