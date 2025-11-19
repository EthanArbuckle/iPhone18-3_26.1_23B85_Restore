@interface MTLoadUrlEventHandler
- (id)dnsServersIPAddresses:(id)a3;
- (id)eventType;
- (id)eventVersion:(id)a3;
- (id)knownFields;
- (id)metricsDataWithPerfMeasurement:(id)a3;
- (id)xpSamplingPercentageUsers:(id)a3;
- (id)xpSessionDuration:(id)a3;
@end

@implementation MTLoadUrlEventHandler

- (id)eventType
{
  v7.receiver = self;
  v7.super_class = MTLoadUrlEventHandler;
  v2 = [(MTEventHandler *)&v7 eventType];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"loadUrl";
  }

  v5 = v4;

  return v4;
}

- (id)eventVersion:(id)a3
{
  v8.receiver = self;
  v8.super_class = MTLoadUrlEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_286A4C2F0;
  }

  v6 = v5;

  return v5;
}

- (id)knownFields
{
  v11[18] = *MEMORY[0x277D85DE8];
  v3 = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTEventDataProvider *)self delegate];
    v6 = [v5 knownFields];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MTLoadUrlEventHandler;
    v5 = [(MTEventHandler *)&v10 knownFields];
    v11[0] = @"fetchStartTime";
    v11[1] = @"domainLookupStartTime";
    v11[2] = @"domainLookupEndTime";
    v11[3] = @"connectionStartTime";
    v11[4] = @"connectionEndTime";
    v11[5] = @"secureConnectionStartTime";
    v11[6] = @"requestStartTime";
    v11[7] = @"responseStartTime";
    v11[8] = @"responseEndTime";
    v11[9] = @"requestUrl";
    v11[10] = @"connectionReused";
    v11[11] = @"dnsServersIPAddresses";
    v11[12] = @"edgeNodeCacheStatus";
    v11[13] = @"redirectCount";
    v11[14] = @"resolvedIPAddress";
    v11[15] = @"statusCode";
    v11[16] = @"xpSessionDuration";
    v11[17] = @"xpSamplingPercentageUsers";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:18];
    v6 = [v5 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)xpSessionDuration:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 xpSessionDuration:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"xpSessionDuration"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 config];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__MTLoadUrlEventHandler_xpSessionDuration___block_invoke;
  v14[3] = &unk_2798CD4D0;
  v14[4] = self;
  v10 = [v13 computeWithConfigSources:v14];

LABEL_6:

  return v10;
}

id __43__MTLoadUrlEventHandler_xpSessionDuration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metricsKit];
  v5 = [v4 config];
  v6 = [v5 configValueForKeyPath:@"performance.sessionDuration" sources:v3];

  return v6;
}

- (id)xpSamplingPercentageUsers:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 xpSamplingPercentageUsers:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"xpSamplingPercentageUsers"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 config];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__MTLoadUrlEventHandler_xpSamplingPercentageUsers___block_invoke;
  v14[3] = &unk_2798CD4D0;
  v14[4] = self;
  v10 = [v13 computeWithConfigSources:v14];

LABEL_6:

  return v10;
}

id __51__MTLoadUrlEventHandler_xpSamplingPercentageUsers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metricsKit];
  v5 = [v4 config];
  v6 = [v5 configValueForKeyPath:@"performance.samplingPercentageUsers" sources:v3];

  return v6;
}

- (id)dnsServersIPAddresses:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 dnsServersIPAddresses:v4];
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:@"dnsServersIPAddresses"];
  }

  return v8;
}

- (id)metricsDataWithPerfMeasurement:(id)a3
{
  v4 = a3;
  v5 = [v4 eventData];
  v6 = [(MTEventHandler *)self metricsDataWithEventData:v5];

  v7 = [v4 additionalFields];

  [v6 addFields:{v7, 0}];

  return v6;
}

@end