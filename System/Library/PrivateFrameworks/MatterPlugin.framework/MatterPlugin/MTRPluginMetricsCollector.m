@interface MTRPluginMetricsCollector
+ (id)sharedInstance;
- (MTRPluginMetricsCollector)init;
- (void)collectMetric:(id)a3;
- (void)collectMetric:(id)a3 error:(id)a4;
- (void)countMetric:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation MTRPluginMetricsCollector

+ (id)sharedInstance
{
  if (sharedInstance_creation_4 != -1)
  {
    +[MTRPluginMetricsCollector sharedInstance];
  }

  v3 = sharedInstance_sInstance_4;

  return v3;
}

uint64_t __43__MTRPluginMetricsCollector_sharedInstance__block_invoke()
{
  sharedInstance_sInstance_4 = objc_alloc_init(MTRPluginMetricsCollector);

  return MEMORY[0x2821F96F8]();
}

- (MTRPluginMetricsCollector)init
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = MTRPluginMetricsCollector;
  v2 = [(MTRPluginMetricsCollector *)&v21 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D17DC8]);
    [(MTRPluginMetricsCollector *)v2 setMetricDispatcher:v3];

    v4 = objc_alloc(MEMORY[0x277D17D98]);
    v5 = [v4 initWithDelegate:0 filters:MEMORY[0x277CBEBF8]];
    [(MTRPluginMetricsCollector *)v2 setEventObserver:v5];

    v6 = objc_alloc_init(MTRPluginMetricsObserver);
    [(MTRPluginMetricsCollector *)v2 setTransformMetrics:v6];

    v7 = [(MTRPluginMetricsCollector *)v2 metricDispatcher];
    v8 = [(MTRPluginMetricsCollector *)v2 eventObserver];
    [v7 addObserver:v8 forProtocol:&unk_286981658];

    v9 = [(MTRPluginMetricsCollector *)v2 metricDispatcher];
    v10 = [(MTRPluginMetricsCollector *)v2 transformMetrics];
    v22[0] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [v9 addObserver:v10 forEventClasses:v11];

    v12 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginMetricsCollector *)v2 setMetricCounter:v12];

    v13 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:12 options:300.0];
    [(MTRPluginMetricsCollector *)v2 setTimer:v13];

    v14 = [(MTRPluginMetricsCollector *)v2 timer];
    [v14 setDelegate:v2];

    v15 = [(MTRPluginMetricsCollector *)v2 timer];
    v16 = +[MTRPluginServer serverWorkQueue];
    [v15 setDelegateQueue:v16];

    v17 = [(MTRPluginMetricsCollector *)v2 timer];
    [v17 resume];

    v18 = v2;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)collectMetric:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MTRPluginMetricsCollector *)v4 metricDispatcher];
  [v5 submitLogEvent:v6];

  objc_sync_exit(v4);
}

- (void)collectMetric:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(MTRPluginMetricsCollector *)v7 metricDispatcher];
  [v8 submitLogEvent:v9 error:v6];

  objc_sync_exit(v7);
}

- (void)countMetric:(id)a3
{
  v10 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MTRPluginMetricsCollector *)v4 metricCounter];
  v6 = [v5 member:v10];

  if (v6)
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [v6 count];
    v9 = [v7 numberWithInt:{objc_msgSend(v8, "intValue") + 1}];
    [v6 setCount:v9];
  }

  else
  {
    [v10 setCount:&unk_28697C6A8];
    v8 = [(MTRPluginMetricsCollector *)v4 metricCounter];
    [v8 addObject:v10];
  }

  objc_sync_exit(v4);
}

- (void)timerDidFire:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MTRPluginMetricsCollector *)v5 metricCounter];
  v7 = [v6 count];

  if (v7)
  {
    v8 = matterPluginLog_default;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(MTRPluginMetricsCollector *)v5 metricCounter];
      *buf = 138412546;
      v24 = v5;
      v25 = 2048;
      v26 = [v9 count];
      _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ metrics counter fired, submitting count for %ld metrics", buf, 0x16u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [(MTRPluginMetricsCollector *)v5 metricCounter];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          v15 = +[MTRPluginMetricsCollector sharedInstance];
          [v15 collectMetric:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v16 = [(MTRPluginMetricsCollector *)v5 metricCounter];
    [v16 removeAllObjects];
  }

  objc_sync_exit(v5);

  v17 = *MEMORY[0x277D85DE8];
}

@end