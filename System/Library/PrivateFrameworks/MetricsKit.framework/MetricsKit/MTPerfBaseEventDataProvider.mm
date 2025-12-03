@interface MTPerfBaseEventDataProvider
- (id)knownFields;
- (id)xpSamplingForced:(id)forced;
@end

@implementation MTPerfBaseEventDataProvider

- (id)knownFields
{
  v14[11] = *MEMORY[0x277D85DE8];
  delegate = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    knownFields = [delegate2 knownFields];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MTPerfBaseEventDataProvider;
    knownFields2 = [(MTBaseEventDataProvider *)&v13 knownFields];
    v8 = knownFields2;
    if (knownFields2)
    {
      v9 = knownFields2;
    }

    else
    {
      v14[0] = @"app";
      v14[1] = @"appVersion";
      v14[2] = @"hardwareFamily";
      v14[3] = @"os";
      v14[4] = @"osBuildNumber";
      v14[5] = @"osVersion";
      v14[6] = @"connection";
      v14[7] = @"clientEventId";
      v14[8] = @"timezoneOffset";
      v14[9] = @"eventTime";
      v14[10] = @"xpVersionMetricsKit";
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:11];
    }

    delegate2 = v9;

    knownFields = [delegate2 arrayByAddingObject:@"xpSamplingForced"];
  }

  v10 = knownFields;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)xpSamplingForced:(id)forced
{
  forcedCopy = forced;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 xpSamplingForced:forcedCopy];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [forcedCopy objectForKeyedSubscript:@"xpSamplingForced"];
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
  v14[2] = __48__MTPerfBaseEventDataProvider_xpSamplingForced___block_invoke;
  v14[3] = &unk_2798CD4D0;
  v14[4] = self;
  v10 = [config computeWithConfigSources:v14];

LABEL_6:

  return v10;
}

id __48__MTPerfBaseEventDataProvider_xpSamplingForced___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metricsKit];
  v5 = [v4 config];
  v6 = [v5 configValueForKeyPath:@"performance.samplingForced" sources:v3];

  return v6;
}

@end