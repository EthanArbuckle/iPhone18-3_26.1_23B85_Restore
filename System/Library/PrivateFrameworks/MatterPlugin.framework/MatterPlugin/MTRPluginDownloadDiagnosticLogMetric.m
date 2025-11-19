@interface MTRPluginDownloadDiagnosticLogMetric
- (id)additionalCoreAnalyticsEventDictionary;
@end

@implementation MTRPluginDownloadDiagnosticLogMetric

- (id)additionalCoreAnalyticsEventDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"logType";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[MTRPluginDownloadDiagnosticLogMetric logType](self, "logType")}];
  v8[1] = @"clientType";
  v9[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[MTRPluginDownloadDiagnosticLogMetric clientType](self, "clientType")}];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end