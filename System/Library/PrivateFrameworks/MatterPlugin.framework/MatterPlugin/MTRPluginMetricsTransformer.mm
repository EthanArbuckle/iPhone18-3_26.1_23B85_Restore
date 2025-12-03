@interface MTRPluginMetricsTransformer
- (MTRPluginMetricsTransformer)init;
- (id)registerCommandPath:(id)path class:(Class)class;
- (void)dispatchInvokeCommandExpectationMetric:(id)metric;
- (void)unregisterCommandPath:(id)path;
@end

@implementation MTRPluginMetricsTransformer

- (MTRPluginMetricsTransformer)init
{
  v6.receiver = self;
  v6.super_class = MTRPluginMetricsTransformer;
  v2 = [(MTRPluginMetricsTransformer *)&v6 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    [(MTRPluginMetricsTransformer *)v2 setCommandPathRegistry:strongToStrongObjectsMapTable];

    v4 = v2;
  }

  return v2;
}

- (id)registerCommandPath:(id)path class:(Class)class
{
  v24 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    commandPathRegistry = [(MTRPluginMetricsTransformer *)self commandPathRegistry];
    v16 = 138413058;
    selfCopy = self;
    v18 = 2112;
    v19 = pathCopy;
    v20 = 2112;
    classCopy2 = class;
    v22 = 2112;
    v23 = commandPathRegistry;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Attempting to add commandPath %@ with class %@, registry: %@", &v16, 0x2Au);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  commandPathRegistry2 = [(MTRPluginMetricsTransformer *)selfCopy2 commandPathRegistry];
  [commandPathRegistry2 setObject:class forKey:pathCopy];

  v12 = matterPluginLog_default;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    commandPathRegistry3 = [(MTRPluginMetricsTransformer *)selfCopy2 commandPathRegistry];
    v16 = 138413058;
    selfCopy = selfCopy2;
    v18 = 2112;
    v19 = pathCopy;
    v20 = 2112;
    classCopy2 = class;
    v22 = 2112;
    v23 = commandPathRegistry3;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Adding commandPath %@ with class %@, registry: %@", &v16, 0x2Au);
  }

  objc_sync_exit(selfCopy2);
  v14 = *MEMORY[0x277D85DE8];

  return pathCopy;
}

- (void)unregisterCommandPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  commandPathRegistry = [(MTRPluginMetricsTransformer *)selfCopy commandPathRegistry];
  [commandPathRegistry removeObjectForKey:pathCopy];

  objc_sync_exit(selfCopy);
}

- (void)dispatchInvokeCommandExpectationMetric:(id)metric
{
  v26 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = MEMORY[0x277CD52F0];
  invokeCommandMetric = [metricCopy invokeCommandMetric];
  clusterID = [invokeCommandMetric clusterID];
  invokeCommandMetric2 = [metricCopy invokeCommandMetric];
  commandID = [invokeCommandMetric2 commandID];
  v11 = [v6 commandPathWithEndpointID:&unk_28697C408 clusterID:clusterID commandID:commandID];

  commandPathRegistry = [(MTRPluginMetricsTransformer *)selfCopy commandPathRegistry];
  v13 = [commandPathRegistry objectForKey:v11];

  v14 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138413058;
    v19 = selfCopy;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = metricCopy;
    _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, "%@ Found class %@ matching commandPath %@ to transform invoke command expectation metric %@", &v18, 0x2Au);
  }

  if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = [v13 transformInvokeCommandExpectationMetric:metricCopy];
    v16 = +[MTRPluginMetricsCollector sharedInstance];
    [v16 collectMetric:v15];
  }

  objc_sync_exit(selfCopy);
  v17 = *MEMORY[0x277D85DE8];
}

@end