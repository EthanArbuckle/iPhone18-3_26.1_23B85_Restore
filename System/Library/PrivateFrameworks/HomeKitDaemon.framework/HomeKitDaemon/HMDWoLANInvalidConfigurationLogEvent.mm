@interface HMDWoLANInvalidConfigurationLogEvent
- (HMDWoLANInvalidConfigurationLogEvent)initWithAccessory:(id)accessory;
- (HMDWoLANInvalidConfigurationLogEvent)initWithAccessory:(id)accessory maxSupportedWoLANVersion:(id)version wolanVersion:(id)wolanVersion;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
@end

@implementation HMDWoLANInvalidConfigurationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDWoLANInvalidConfigurationLogEvent logType](self, "logType")}];
  [dictionary setObject:v4 forKeyedSubscript:@"logType"];

  wolanVersion = [(HMDWoLANInvalidConfigurationLogEvent *)self wolanVersion];
  [dictionary setObject:wolanVersion forKeyedSubscript:@"wolanVersion"];

  maxSupportedWoLANVersion = [(HMDWoLANInvalidConfigurationLogEvent *)self maxSupportedWoLANVersion];
  [dictionary setObject:maxSupportedWoLANVersion forKeyedSubscript:@"maxSupportedWoLANVersion"];

  v7 = [dictionary copy];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  logType = [(HMDWoLANInvalidConfigurationLogEvent *)self logType];
  wolanVersion = [(HMDWoLANInvalidConfigurationLogEvent *)self wolanVersion];
  maxSupportedWoLANVersion = [(HMDWoLANInvalidConfigurationLogEvent *)self maxSupportedWoLANVersion];
  v7 = [v3 stringWithFormat:@"HMDWoLANInvalidConfigurationLogEvent - Log Type: %ld, wolanVersion: %@, maxSupportedWoLANVersion: %@", logType, wolanVersion, maxSupportedWoLANVersion];

  return v7;
}

- (HMDWoLANInvalidConfigurationLogEvent)initWithAccessory:(id)accessory maxSupportedWoLANVersion:(id)version wolanVersion:(id)wolanVersion
{
  accessoryCopy = accessory;
  versionCopy = version;
  wolanVersionCopy = wolanVersion;
  v15.receiver = self;
  v15.super_class = HMDWoLANInvalidConfigurationLogEvent;
  v11 = [(HMMLogEvent *)&v15 init];
  if (v11)
  {
    identifier = [accessoryCopy identifier];
    accessoryIdentifier = v11->_accessoryIdentifier;
    v11->_accessoryIdentifier = identifier;

    v11->_logType = 1;
    objc_storeStrong(&v11->_wolanVersion, wolanVersion);
    objc_storeStrong(&v11->_maxSupportedWoLANVersion, version);
  }

  return v11;
}

- (HMDWoLANInvalidConfigurationLogEvent)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v9.receiver = self;
  v9.super_class = HMDWoLANInvalidConfigurationLogEvent;
  v5 = [(HMMLogEvent *)&v9 init];
  if (v5)
  {
    identifier = [accessoryCopy identifier];
    accessoryIdentifier = v5->_accessoryIdentifier;
    v5->_accessoryIdentifier = identifier;

    v5->_logType = 0;
  }

  return v5;
}

@end