@interface MTRPluginInvokeCommandMetric
- (id)additionalCoreAnalyticsEventDictionary;
@end

@implementation MTRPluginInvokeCommandMetric

void __189__MTRPluginInvokeCommandMetric_invokeCommandMetricForDevice_homeID_clientType_endpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvoke_remoteMessageID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MTRPluginMetricsCollector sharedInstance];
  [v4 collectMetric:*(a1 + 32) error:v3];
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"endpointID";
  v3 = [(MTRPluginInvokeCommandMetric *)self endpointID];
  v13[0] = v3;
  v12[1] = @"clusterID";
  v4 = [(MTRPluginInvokeCommandMetric *)self clusterID];
  v13[1] = v4;
  v12[2] = @"commandID";
  v5 = [(MTRPluginInvokeCommandMetric *)self commandID];
  v13[2] = v5;
  v12[3] = @"timedInvoke";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[MTRPluginInvokeCommandMetric isTimedInvoke](self, "isTimedInvoke")}];
  v13[3] = v6;
  v12[4] = @"clientType";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[MTRPluginInvokeCommandMetric clientType](self, "clientType")}];
  v13[4] = v7;
  v12[5] = @"batchCommand";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[MTRPluginInvokeCommandMetric isBatchCommand](self, "isBatchCommand")}];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end