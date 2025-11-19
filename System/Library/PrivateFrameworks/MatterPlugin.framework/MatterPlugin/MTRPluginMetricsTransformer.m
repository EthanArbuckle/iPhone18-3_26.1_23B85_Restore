@interface MTRPluginMetricsTransformer
- (MTRPluginMetricsTransformer)init;
- (id)registerCommandPath:(id)a3 class:(Class)a4;
- (void)dispatchInvokeCommandExpectationMetric:(id)a3;
- (void)unregisterCommandPath:(id)a3;
@end

@implementation MTRPluginMetricsTransformer

- (MTRPluginMetricsTransformer)init
{
  v6.receiver = self;
  v6.super_class = MTRPluginMetricsTransformer;
  v2 = [(MTRPluginMetricsTransformer *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    [(MTRPluginMetricsTransformer *)v2 setCommandPathRegistry:v3];

    v4 = v2;
  }

  return v2;
}

- (id)registerCommandPath:(id)a3 class:(Class)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(MTRPluginMetricsTransformer *)self commandPathRegistry];
    v16 = 138413058;
    v17 = self;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = a4;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Attempting to add commandPath %@ with class %@, registry: %@", &v16, 0x2Au);
  }

  v10 = self;
  objc_sync_enter(v10);
  v11 = [(MTRPluginMetricsTransformer *)v10 commandPathRegistry];
  [v11 setObject:a4 forKey:v6];

  v12 = matterPluginLog_default;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(MTRPluginMetricsTransformer *)v10 commandPathRegistry];
    v16 = 138413058;
    v17 = v10;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = a4;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Adding commandPath %@ with class %@, registry: %@", &v16, 0x2Au);
  }

  objc_sync_exit(v10);
  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)unregisterCommandPath:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MTRPluginMetricsTransformer *)v4 commandPathRegistry];
  [v5 removeObjectForKey:v6];

  objc_sync_exit(v4);
}

- (void)dispatchInvokeCommandExpectationMetric:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = MEMORY[0x277CD52F0];
  v7 = [v4 invokeCommandMetric];
  v8 = [v7 clusterID];
  v9 = [v4 invokeCommandMetric];
  v10 = [v9 commandID];
  v11 = [v6 commandPathWithEndpointID:&unk_28697C408 clusterID:v8 commandID:v10];

  v12 = [(MTRPluginMetricsTransformer *)v5 commandPathRegistry];
  v13 = [v12 objectForKey:v11];

  v14 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138413058;
    v19 = v5;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, "%@ Found class %@ matching commandPath %@ to transform invoke command expectation metric %@", &v18, 0x2Au);
  }

  if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = [v13 transformInvokeCommandExpectationMetric:v4];
    v16 = +[MTRPluginMetricsCollector sharedInstance];
    [v16 collectMetric:v15];
  }

  objc_sync_exit(v5);
  v17 = *MEMORY[0x277D85DE8];
}

@end