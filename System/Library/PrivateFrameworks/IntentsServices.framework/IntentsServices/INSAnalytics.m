@interface INSAnalytics
+ (id)sharedAnalytics;
- (INSAnalyticsDataSource)dataSource;
- (id)_init;
- (id)contextDictionaryForCommand:(id)a3;
- (id)contextDictionaryForError:(id)a3;
- (void)addObserver:(id)a3;
- (void)logEventWithType:(int64_t)a3 context:(id)a4 contextNoCopy:(BOOL)a5;
- (void)removeObserver:(id)a3;
@end

@implementation INSAnalytics

+ (id)sharedAnalytics
{
  if (sharedAnalytics_onceToken != -1)
  {
    dispatch_once(&sharedAnalytics_onceToken, &__block_literal_global);
  }

  v3 = sharedAnalytics_analytics;

  return v3;
}

- (INSAnalyticsDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)contextDictionaryForError:(id)a3
{
  v4 = a3;
  v5 = [(INSAnalytics *)self dataSource];
  v6 = [v5 analytics:self contextDictionaryForError:v4];

  return v6;
}

- (id)contextDictionaryForCommand:(id)a3
{
  v4 = a3;
  v5 = [(INSAnalytics *)self dataSource];
  v6 = [v5 analytics:self contextDictionaryForCommand:v4];

  return v6;
}

- (void)logEventWithType:(int64_t)a3 context:(id)a4 contextNoCopy:(BOOL)a5
{
  v8 = a4;
  observerQueue = self->_observerQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__INSAnalytics_logEventWithType_context_contextNoCopy___block_invoke;
  v11[3] = &unk_2797EA950;
  v12 = v8;
  v13 = a3;
  v11[4] = self;
  v14 = a5;
  v10 = v8;
  dispatch_async(observerQueue, v11);
}

void __55__INSAnalytics_logEventWithType_context_contextNoCopy___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) analytics:*(a1 + 32) needsToLogEventWithType:*(a1 + 48) context:*(a1 + 40) contextNoCopy:*(a1 + 56)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__INSAnalytics_removeObserver___block_invoke;
  v7[3] = &unk_2797EABB0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(observerQueue, v7);
}

void __31__INSAnalytics_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__INSAnalytics_addObserver___block_invoke;
  v7[3] = &unk_2797EABB0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(observerQueue, v7);
}

void __28__INSAnalytics_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = INSAnalytics;
  v2 = [(INSAnalytics *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] hashTableWithWeakObjects];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_create("INSAnalyticsObserversQueue", 0);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v5;
  }

  return v2;
}

uint64_t __31__INSAnalytics_sharedAnalytics__block_invoke()
{
  sharedAnalytics_analytics = [[INSAnalytics alloc] _init];

  return MEMORY[0x2821F96F8]();
}

@end