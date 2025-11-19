@interface MTRPluginMetric
+ (id)numberValueFromDataValueDictionary:(id)a3;
- (MTRDevice)device;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)initMetricWithName:(id)a3 device:(id)a4 homeID:(id)a5 remoteMessageID:(id)a6;
- (id)initMetricWithName:(id)a3 sourceMetric:(id)a4;
@end

@implementation MTRPluginMetric

- (id)initMetricWithName:(id)a3 device:(id)a4 homeID:(id)a5 remoteMessageID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = MTRPluginMetric;
  v13 = [(HMMHomeLogEvent *)&v17 initWithHomeUUID:a5];
  v14 = v13;
  if (v13)
  {
    [(MTRPluginMetric *)v13 setName:v10];
    [(MTRPluginMetric *)v14 setDevice:v11];
    [(MTRPluginMetric *)v14 setRemoteMessageID:v12];
    v15 = v14;
  }

  return v14;
}

- (id)initMetricWithName:(id)a3 sourceMetric:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 startTime];
  v9 = v8;
  v10 = [v7 homeUUID];
  v16.receiver = self;
  v16.super_class = MTRPluginMetric;
  v11 = [(HMMHomeLogEvent *)&v16 initWithStartTime:v10 homeUUID:v9];

  if (v11)
  {
    [(MTRPluginMetric *)v11 setName:v6];
    v12 = [v7 device];
    [(MTRPluginMetric *)v11 setDevice:v12];

    v13 = [v7 remoteMessageID];
    [(MTRPluginMetric *)v11 setRemoteMessageID:v13];

    [(HMMLogEvent *)v11 markEndTime];
    v14 = v11;
  }

  return v11;
}

+ (id)numberValueFromDataValueDictionary:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x277CD5188];
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
    if ([v6 isEqual:*MEMORY[0x277CD5178]])
    {
LABEL_9:

LABEL_10:
      v10 = *MEMORY[0x277CD51A0];
      v11 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v4 objectForKeyedSubscript:v10];
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_16;
    }

    v7 = [v4 objectForKeyedSubscript:v5];
    if ([v7 isEqual:*MEMORY[0x277CD5198]])
    {
LABEL_8:

      goto LABEL_9;
    }

    v8 = [v4 objectForKeyedSubscript:v5];
    if ([v8 isEqual:*MEMORY[0x277CD50C0]])
    {
LABEL_7:

      goto LABEL_8;
    }

    v9 = [v4 objectForKeyedSubscript:v5];
    if ([v9 isEqual:*MEMORY[0x277CD5150]])
    {

      goto LABEL_7;
    }

    v13 = [v4 objectForKeyedSubscript:v5];
    v14 = [v13 isEqual:*MEMORY[0x277CD5118]];

    if (v14)
    {
      goto LABEL_10;
    }
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(MTRPluginMetric *)self device];

  if (v4)
  {
    v5 = [(MTRPluginMetric *)self device];
    v6 = [v5 vendorID];
    [v3 setObject:v6 forKeyedSubscript:@"vendorID"];

    v7 = [(MTRPluginMetric *)self device];
    v8 = [v7 productID];
    [v3 setObject:v8 forKeyedSubscript:@"productID"];

    v9 = [(MTRPluginMetric *)self device];
    v10 = [v9 nodeID];
    [v3 setObject:v10 forKeyedSubscript:@"nodeID"];

    v11 = [(MTRPluginMetric *)self device];
    v12 = [v11 networkCommissioningFeatures];
    v13 = MEMORY[0x277CBEC38];
    v14 = MEMORY[0x277CBEC28];
    if ((v12 & 2) != 0)
    {
      v15 = MEMORY[0x277CBEC38];
    }

    else
    {
      v15 = MEMORY[0x277CBEC28];
    }

    [v3 setObject:v15 forKeyedSubscript:@"supportsThread"];

    v16 = [(MTRPluginMetric *)self device];
    if ([v16 networkCommissioningFeatures])
    {
      v17 = v13;
    }

    else
    {
      v17 = v14;
    }

    [v3 setObject:v17 forKeyedSubscript:@"supportsWiFi"];

    v18 = [(MTRPluginMetric *)self device];
    if (([v18 networkCommissioningFeatures] & 4) != 0)
    {
      v19 = v13;
    }

    else
    {
      v19 = v14;
    }

    [v3 setObject:v19 forKeyedSubscript:@"supportsEthernet"];
  }

  v20 = [(MTRPluginMetric *)self remoteMessageID];

  if (v20)
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"remoteMode"];
    v21 = [(MTRPluginMetric *)self remoteMessageID];
    v22 = [v21 UUIDString];
    [v3 setObject:v22 forKeyedSubscript:@"remoteMessageID"];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"remoteMode"];
  }

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [v3 setObject:v23 forKeyedSubscript:@"durationMs"];

  v24 = [(MTRPluginMetric *)self additionalCoreAnalyticsEventDictionary];
  if (v24)
  {
    [v3 addEntriesFromDictionary:v24];
  }

  return v3;
}

- (MTRDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end