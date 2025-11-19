@interface MTPerfBaseEventDataProvider
- (id)knownFields;
- (id)xpSamplingForced:(id)a3;
@end

@implementation MTPerfBaseEventDataProvider

- (id)knownFields
{
  v14[11] = *MEMORY[0x277D85DE8];
  v3 = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTEventDataProvider *)self delegate];
    v6 = [v5 knownFields];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MTPerfBaseEventDataProvider;
    v7 = [(MTBaseEventDataProvider *)&v13 knownFields];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
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

    v5 = v9;

    v6 = [v5 arrayByAddingObject:@"xpSamplingForced"];
  }

  v10 = v6;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)xpSamplingForced:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 xpSamplingForced:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"xpSamplingForced"];
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
  v14[2] = __48__MTPerfBaseEventDataProvider_xpSamplingForced___block_invoke;
  v14[3] = &unk_2798CD4D0;
  v14[4] = self;
  v10 = [v13 computeWithConfigSources:v14];

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