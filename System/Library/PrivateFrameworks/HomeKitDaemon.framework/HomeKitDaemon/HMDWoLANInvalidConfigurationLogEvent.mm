@interface HMDWoLANInvalidConfigurationLogEvent
- (HMDWoLANInvalidConfigurationLogEvent)initWithAccessory:(id)a3;
- (HMDWoLANInvalidConfigurationLogEvent)initWithAccessory:(id)a3 maxSupportedWoLANVersion:(id)a4 wolanVersion:(id)a5;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
@end

@implementation HMDWoLANInvalidConfigurationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDWoLANInvalidConfigurationLogEvent logType](self, "logType")}];
  [v3 setObject:v4 forKeyedSubscript:@"logType"];

  v5 = [(HMDWoLANInvalidConfigurationLogEvent *)self wolanVersion];
  [v3 setObject:v5 forKeyedSubscript:@"wolanVersion"];

  v6 = [(HMDWoLANInvalidConfigurationLogEvent *)self maxSupportedWoLANVersion];
  [v3 setObject:v6 forKeyedSubscript:@"maxSupportedWoLANVersion"];

  v7 = [v3 copy];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDWoLANInvalidConfigurationLogEvent *)self logType];
  v5 = [(HMDWoLANInvalidConfigurationLogEvent *)self wolanVersion];
  v6 = [(HMDWoLANInvalidConfigurationLogEvent *)self maxSupportedWoLANVersion];
  v7 = [v3 stringWithFormat:@"HMDWoLANInvalidConfigurationLogEvent - Log Type: %ld, wolanVersion: %@, maxSupportedWoLANVersion: %@", v4, v5, v6];

  return v7;
}

- (HMDWoLANInvalidConfigurationLogEvent)initWithAccessory:(id)a3 maxSupportedWoLANVersion:(id)a4 wolanVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HMDWoLANInvalidConfigurationLogEvent;
  v11 = [(HMMLogEvent *)&v15 init];
  if (v11)
  {
    v12 = [v8 identifier];
    accessoryIdentifier = v11->_accessoryIdentifier;
    v11->_accessoryIdentifier = v12;

    v11->_logType = 1;
    objc_storeStrong(&v11->_wolanVersion, a5);
    objc_storeStrong(&v11->_maxSupportedWoLANVersion, a4);
  }

  return v11;
}

- (HMDWoLANInvalidConfigurationLogEvent)initWithAccessory:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDWoLANInvalidConfigurationLogEvent;
  v5 = [(HMMLogEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 identifier];
    accessoryIdentifier = v5->_accessoryIdentifier;
    v5->_accessoryIdentifier = v6;

    v5->_logType = 0;
  }

  return v5;
}

@end