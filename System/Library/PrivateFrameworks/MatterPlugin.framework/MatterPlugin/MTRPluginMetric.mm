@interface MTRPluginMetric
+ (id)numberValueFromDataValueDictionary:(id)dictionary;
- (MTRDevice)device;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)initMetricWithName:(id)name device:(id)device homeID:(id)d remoteMessageID:(id)iD;
- (id)initMetricWithName:(id)name sourceMetric:(id)metric;
@end

@implementation MTRPluginMetric

- (id)initMetricWithName:(id)name device:(id)device homeID:(id)d remoteMessageID:(id)iD
{
  nameCopy = name;
  deviceCopy = device;
  iDCopy = iD;
  v17.receiver = self;
  v17.super_class = MTRPluginMetric;
  v13 = [(HMMHomeLogEvent *)&v17 initWithHomeUUID:d];
  v14 = v13;
  if (v13)
  {
    [(MTRPluginMetric *)v13 setName:nameCopy];
    [(MTRPluginMetric *)v14 setDevice:deviceCopy];
    [(MTRPluginMetric *)v14 setRemoteMessageID:iDCopy];
    v15 = v14;
  }

  return v14;
}

- (id)initMetricWithName:(id)name sourceMetric:(id)metric
{
  nameCopy = name;
  metricCopy = metric;
  [metricCopy startTime];
  v9 = v8;
  homeUUID = [metricCopy homeUUID];
  v16.receiver = self;
  v16.super_class = MTRPluginMetric;
  v11 = [(HMMHomeLogEvent *)&v16 initWithStartTime:homeUUID homeUUID:v9];

  if (v11)
  {
    [(MTRPluginMetric *)v11 setName:nameCopy];
    device = [metricCopy device];
    [(MTRPluginMetric *)v11 setDevice:device];

    remoteMessageID = [metricCopy remoteMessageID];
    [(MTRPluginMetric *)v11 setRemoteMessageID:remoteMessageID];

    [(HMMLogEvent *)v11 markEndTime];
    v14 = v11;
  }

  return v11;
}

+ (id)numberValueFromDataValueDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v5 = *MEMORY[0x277CD5188];
    v6 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CD5188]];
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  device = [(MTRPluginMetric *)self device];

  if (device)
  {
    device2 = [(MTRPluginMetric *)self device];
    vendorID = [device2 vendorID];
    [dictionary setObject:vendorID forKeyedSubscript:@"vendorID"];

    device3 = [(MTRPluginMetric *)self device];
    productID = [device3 productID];
    [dictionary setObject:productID forKeyedSubscript:@"productID"];

    device4 = [(MTRPluginMetric *)self device];
    nodeID = [device4 nodeID];
    [dictionary setObject:nodeID forKeyedSubscript:@"nodeID"];

    device5 = [(MTRPluginMetric *)self device];
    networkCommissioningFeatures = [device5 networkCommissioningFeatures];
    v13 = MEMORY[0x277CBEC38];
    v14 = MEMORY[0x277CBEC28];
    if ((networkCommissioningFeatures & 2) != 0)
    {
      v15 = MEMORY[0x277CBEC38];
    }

    else
    {
      v15 = MEMORY[0x277CBEC28];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"supportsThread"];

    device6 = [(MTRPluginMetric *)self device];
    if ([device6 networkCommissioningFeatures])
    {
      v17 = v13;
    }

    else
    {
      v17 = v14;
    }

    [dictionary setObject:v17 forKeyedSubscript:@"supportsWiFi"];

    device7 = [(MTRPluginMetric *)self device];
    if (([device7 networkCommissioningFeatures] & 4) != 0)
    {
      v19 = v13;
    }

    else
    {
      v19 = v14;
    }

    [dictionary setObject:v19 forKeyedSubscript:@"supportsEthernet"];
  }

  remoteMessageID = [(MTRPluginMetric *)self remoteMessageID];

  if (remoteMessageID)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"remoteMode"];
    remoteMessageID2 = [(MTRPluginMetric *)self remoteMessageID];
    uUIDString = [remoteMessageID2 UUIDString];
    [dictionary setObject:uUIDString forKeyedSubscript:@"remoteMessageID"];
  }

  else
  {
    [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"remoteMode"];
  }

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [dictionary setObject:v23 forKeyedSubscript:@"durationMs"];

  additionalCoreAnalyticsEventDictionary = [(MTRPluginMetric *)self additionalCoreAnalyticsEventDictionary];
  if (additionalCoreAnalyticsEventDictionary)
  {
    [dictionary addEntriesFromDictionary:additionalCoreAnalyticsEventDictionary];
  }

  return dictionary;
}

- (MTRDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end