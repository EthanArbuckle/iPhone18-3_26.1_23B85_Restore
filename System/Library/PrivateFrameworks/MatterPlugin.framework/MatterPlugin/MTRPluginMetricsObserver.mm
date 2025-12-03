@interface MTRPluginMetricsObserver
- (MTRPluginMetricsObserver)init;
- (void)observeEvent:(id)event;
@end

@implementation MTRPluginMetricsObserver

- (MTRPluginMetricsObserver)init
{
  v40 = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = MTRPluginMetricsObserver;
  v2 = [(MTRPluginMetricsObserver *)&v37 init];
  if (v2)
  {
    v3 = objc_alloc_init(MTRPluginMetricsTransformer);
    [(MTRPluginMetricsObserver *)v2 setMetricsTransformer:v3];

    metricsTransformer = [(MTRPluginMetricsObserver *)v2 metricsTransformer];
    v5 = +[MTRPluginRVCRunModeMetric commandPath];
    v6 = [metricsTransformer registerCommandPath:v5 class:objc_opt_class()];

    metricsTransformer2 = [(MTRPluginMetricsObserver *)v2 metricsTransformer];
    v8 = +[MTRPluginRVCCleanModeMetric commandPath];
    v9 = [metricsTransformer2 registerCommandPath:v8 class:objc_opt_class()];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = +[MTRPluginRVCOperationalStateMetric commandPaths];
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      do
      {
        v14 = 0;
        do
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * v14);
          metricsTransformer3 = [(MTRPluginMetricsObserver *)v2 metricsTransformer];
          v17 = [metricsTransformer3 registerCommandPath:v15 class:objc_opt_class()];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v12);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = +[MTRPluginServiceAreaMetric commandPaths];
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        v22 = 0;
        do
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v29 + 1) + 8 * v22);
          metricsTransformer4 = [(MTRPluginMetricsObserver *)v2 metricsTransformer];
          v25 = [metricsTransformer4 registerCommandPath:v23 class:objc_opt_class()];

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v20);
    }

    v26 = v2;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)observeEvent:(id)event
{
  v14 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = selfCopy;
      v12 = 2112;
      v13 = eventCopy;
      _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ dispatching invoke command expectation metric for event %@", &v10, 0x16u);
    }

    metricsTransformer = [(MTRPluginMetricsObserver *)selfCopy metricsTransformer];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = eventCopy;
    }

    else
    {
      v8 = 0;
    }

    [metricsTransformer dispatchInvokeCommandExpectationMetric:v8];
  }

  objc_sync_exit(selfCopy);

  v9 = *MEMORY[0x277D85DE8];
}

@end