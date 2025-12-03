@interface MTRPluginMetricsCollector
+ (id)sharedInstance;
- (MTRPluginMetricsCollector)init;
- (void)collectMetric:(id)metric;
- (void)collectMetric:(id)metric error:(id)error;
- (void)countMetric:(id)metric;
- (void)timerDidFire:(id)fire;
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

    metricDispatcher = [(MTRPluginMetricsCollector *)v2 metricDispatcher];
    eventObserver = [(MTRPluginMetricsCollector *)v2 eventObserver];
    [metricDispatcher addObserver:eventObserver forProtocol:&unk_286981658];

    metricDispatcher2 = [(MTRPluginMetricsCollector *)v2 metricDispatcher];
    transformMetrics = [(MTRPluginMetricsCollector *)v2 transformMetrics];
    v22[0] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [metricDispatcher2 addObserver:transformMetrics forEventClasses:v11];

    v12 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginMetricsCollector *)v2 setMetricCounter:v12];

    v13 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:12 options:300.0];
    [(MTRPluginMetricsCollector *)v2 setTimer:v13];

    timer = [(MTRPluginMetricsCollector *)v2 timer];
    [timer setDelegate:v2];

    timer2 = [(MTRPluginMetricsCollector *)v2 timer];
    v16 = +[MTRPluginServer serverWorkQueue];
    [timer2 setDelegateQueue:v16];

    timer3 = [(MTRPluginMetricsCollector *)v2 timer];
    [timer3 resume];

    v18 = v2;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)collectMetric:(id)metric
{
  metricCopy = metric;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  metricDispatcher = [(MTRPluginMetricsCollector *)selfCopy metricDispatcher];
  [metricDispatcher submitLogEvent:metricCopy];

  objc_sync_exit(selfCopy);
}

- (void)collectMetric:(id)metric error:(id)error
{
  metricCopy = metric;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  metricDispatcher = [(MTRPluginMetricsCollector *)selfCopy metricDispatcher];
  [metricDispatcher submitLogEvent:metricCopy error:errorCopy];

  objc_sync_exit(selfCopy);
}

- (void)countMetric:(id)metric
{
  metricCopy = metric;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  metricCounter = [(MTRPluginMetricsCollector *)selfCopy metricCounter];
  v6 = [metricCounter member:metricCopy];

  if (v6)
  {
    v7 = MEMORY[0x277CCABB0];
    metricCounter2 = [v6 count];
    v9 = [v7 numberWithInt:{objc_msgSend(metricCounter2, "intValue") + 1}];
    [v6 setCount:v9];
  }

  else
  {
    [metricCopy setCount:&unk_28697C6A8];
    metricCounter2 = [(MTRPluginMetricsCollector *)selfCopy metricCounter];
    [metricCounter2 addObject:metricCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)timerDidFire:(id)fire
{
  v27 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  metricCounter = [(MTRPluginMetricsCollector *)selfCopy metricCounter];
  v7 = [metricCounter count];

  if (v7)
  {
    v8 = matterPluginLog_default;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      metricCounter2 = [(MTRPluginMetricsCollector *)selfCopy metricCounter];
      *buf = 138412546;
      v24 = selfCopy;
      v25 = 2048;
      v26 = [metricCounter2 count];
      _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ metrics counter fired, submitting count for %ld metrics", buf, 0x16u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    metricCounter3 = [(MTRPluginMetricsCollector *)selfCopy metricCounter];
    v11 = [metricCounter3 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(metricCounter3);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          v15 = +[MTRPluginMetricsCollector sharedInstance];
          [v15 collectMetric:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [metricCounter3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    metricCounter4 = [(MTRPluginMetricsCollector *)selfCopy metricCounter];
    [metricCounter4 removeAllObjects];
  }

  objc_sync_exit(selfCopy);

  v17 = *MEMORY[0x277D85DE8];
}

@end