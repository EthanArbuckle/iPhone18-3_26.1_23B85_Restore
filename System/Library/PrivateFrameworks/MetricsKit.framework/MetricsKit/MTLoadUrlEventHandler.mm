@interface MTLoadUrlEventHandler
- (id)dnsServersIPAddresses:(id)addresses;
- (id)eventType;
- (id)eventVersion:(id)version;
- (id)knownFields;
- (id)metricsDataWithPerfMeasurement:(id)measurement;
- (id)xpSamplingPercentageUsers:(id)users;
- (id)xpSessionDuration:(id)duration;
@end

@implementation MTLoadUrlEventHandler

- (id)eventType
{
  v7.receiver = self;
  v7.super_class = MTLoadUrlEventHandler;
  eventType = [(MTEventHandler *)&v7 eventType];
  v3 = eventType;
  if (eventType)
  {
    v4 = eventType;
  }

  else
  {
    v4 = @"loadUrl";
  }

  v5 = v4;

  return v4;
}

- (id)eventVersion:(id)version
{
  v8.receiver = self;
  v8.super_class = MTLoadUrlEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:version];
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
  delegate = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    knownFields = [delegate2 knownFields];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MTLoadUrlEventHandler;
    delegate2 = [(MTEventHandler *)&v10 knownFields];
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
    knownFields = [delegate2 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return knownFields;
}

- (id)xpSessionDuration:(id)duration
{
  durationCopy = duration;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 xpSessionDuration:durationCopy];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [durationCopy objectForKeyedSubscript:@"xpSessionDuration"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  config = [metricsKit config];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__MTLoadUrlEventHandler_xpSessionDuration___block_invoke;
  v14[3] = &unk_2798CD4D0;
  v14[4] = self;
  v10 = [config computeWithConfigSources:v14];

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

- (id)xpSamplingPercentageUsers:(id)users
{
  usersCopy = users;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 xpSamplingPercentageUsers:usersCopy];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [usersCopy objectForKeyedSubscript:@"xpSamplingPercentageUsers"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  config = [metricsKit config];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__MTLoadUrlEventHandler_xpSamplingPercentageUsers___block_invoke;
  v14[3] = &unk_2798CD4D0;
  v14[4] = self;
  v10 = [config computeWithConfigSources:v14];

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

- (id)dnsServersIPAddresses:(id)addresses
{
  addressesCopy = addresses;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 dnsServersIPAddresses:addressesCopy];
  }

  else
  {
    v8 = [addressesCopy objectForKeyedSubscript:@"dnsServersIPAddresses"];
  }

  return v8;
}

- (id)metricsDataWithPerfMeasurement:(id)measurement
{
  measurementCopy = measurement;
  eventData = [measurementCopy eventData];
  v6 = [(MTEventHandler *)self metricsDataWithEventData:eventData];

  additionalFields = [measurementCopy additionalFields];

  [v6 addFields:{additionalFields, 0}];

  return v6;
}

@end