@interface DBSmartWidgetSource
+ (NSArray)registeredSources;
+ (void)load;
+ (void)registerSource:(Class)source;
- (DBSmartWidgetSource)initWithDelegate:(id)delegate resourceProvider:(id)provider;
- (DBSmartWidgetSourceDelegate)delegate;
- (NSArray)predictions;
- (id)description;
- (void)handleEvent:(id)event;
- (void)refreshDisabled;
- (void)refreshPredictions;
@end

@implementation DBSmartWidgetSource

void __41__DBSmartWidgetSource_refreshPredictions__block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  [v2 sourceDidRefresh:WeakRetained predictionsUpdated:*(a1 + 40)];
}

- (DBSmartWidgetSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(DBSmartWidgetSource *)self disabled])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  lastRefresh = [(DBSmartWidgetSource *)self lastRefresh];
  v8 = [DBDateFormatter formattedDateTimeStamp:lastRefresh];
  predictions = [(DBSmartWidgetSource *)self predictions];
  v10 = [v3 stringWithFormat:@"<%@: %p disabled=%@ lastRefresh=%@ predictions.count=%lu>", v5, self, v6, v8, objc_msgSend(predictions, "count")];

  return v10;
}

- (NSArray)predictions
{
  currentPredictions = [(DBSmartWidgetSource *)self currentPredictions];
  allValues = [currentPredictions allValues];

  return allValues;
}

- (void)refreshPredictions
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "start %{public}@", &v2, 0xCu);
}

void __41__DBSmartWidgetSource_refreshPredictions__block_invoke(uint64_t a1)
{
  v1 = a1;
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained disabled])
  {
    [WeakRetained setCurrentPredictions:MEMORY[0x277CBEC10]];
    v3 = 0;
  }

  else
  {
    v22 = v1;
    v4 = [WeakRetained freshPredictions];
    v5 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          v12 = [WeakRetained currentPredictions];
          v13 = [v11 uniqueIdentifier];
          v14 = [v12 objectForKeyedSubscript:v13];

          if (v14)
          {
            v15 = [v14 score];
            if (([v14 updateWithPrediction:v11] & 1) != 0 || v15 != objc_msgSend(v14, "score"))
            {
              v8 = 1;
            }

            v16 = [v14 uniqueIdentifier];
            [v5 setObject:v14 forKeyedSubscript:v16];
          }

          else
          {
            v16 = [v11 uniqueIdentifier];
            [v5 setObject:v11 forKeyedSubscript:v16];
            v8 = 1;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v17 = [WeakRetained currentPredictions];
    v18 = [v17 count];
    v19 = v18 != [v5 count];

    v3 = v19 | v8;
    [WeakRetained setCurrentPredictions:v5];

    v1 = v22;
  }

  v20 = [MEMORY[0x277CBEAA8] now];
  [WeakRetained setLastRefresh:v20];

  v21 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __41__DBSmartWidgetSource_refreshPredictions__block_invoke_cold_1(WeakRetained, v3 & 1, v21);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__DBSmartWidgetSource_refreshPredictions__block_invoke_15;
  block[3] = &unk_278F03BB8;
  objc_copyWeak(&v25, (v1 + 32));
  v26 = v3 & 1;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v25);
}

void __41__DBSmartWidgetSource_refreshPredictions__block_invoke_cold_1(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = @"YES";
  if ((a2 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_debug_impl(&dword_248146000, log, OS_LOG_TYPE_DEBUG, "done %{public}@ predictionsDidUpdate=%{public}@", &v4, 0x16u);
}

+ (void)load
{
  v2 = objc_opt_class();
  if (v2 != objc_opt_class())
  {
    v3 = objc_opt_class();

    [DBSmartWidgetSource registerSource:v3];
  }
}

+ (void)registerSource:(Class)source
{
  if (registerSource__onceToken != -1)
  {
    +[DBSmartWidgetSource registerSource:];
  }

  obj = _registeredSources;
  objc_sync_enter(obj);
  [_registeredSources addObject:source];
  objc_sync_exit(obj);
}

uint64_t __38__DBSmartWidgetSource_registerSource___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _registeredSources;
  _registeredSources = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (NSArray)registeredSources
{
  v2 = _registeredSources;
  objc_sync_enter(v2);
  v3 = [_registeredSources copy];
  objc_sync_exit(v2);

  return v3;
}

- (DBSmartWidgetSource)initWithDelegate:(id)delegate resourceProvider:(id)provider
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = DBSmartWidgetSource;
  v6 = [(DBSmartWidgetSource *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, delegateCopy);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"%@.workQueue", v11];

    v13 = dispatch_queue_create([v12 UTF8String], v8);
    workQueue = v7->_workQueue;
    v7->_workQueue = v13;

    [(DBSmartWidgetSource *)v7 refreshDisabled];
  }

  return v7;
}

- (void)refreshDisabled
{
  disabled = [(DBSmartWidgetSource *)self disabled];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = MEMORY[0x277CCACA8];
  sourceName = [objc_opt_class() sourceName];
  v7 = [v5 stringWithFormat:@"CARSmartWidgetDisablePrediction_%@", sourceName];
  v9 = [standardUserDefaults objectForKey:v7];

  if (v9)
  {
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = [(DBSmartWidgetSource *)self defaultsDisabled];
  }

  [(DBSmartWidgetSource *)self setDisabled:bOOLValue];
  if (disabled != [(DBSmartWidgetSource *)self disabled])
  {
    [(DBSmartWidgetSource *)self refreshPredictions];
  }
}

- (void)handleEvent:(id)event
{
  eventCopy = event;
  delegate = [(DBSmartWidgetSource *)self delegate];
  [delegate handleEvent:eventCopy];
}

@end