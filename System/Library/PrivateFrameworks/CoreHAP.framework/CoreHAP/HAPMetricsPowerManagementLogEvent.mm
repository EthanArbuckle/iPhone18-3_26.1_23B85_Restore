@interface HAPMetricsPowerManagementLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
- (id)initForHAPAccessory:(id)accessory withLogType:(int64_t)type;
- (id)initForSuspendedAccessory:(id)accessory;
@end

@implementation HAPMetricsPowerManagementLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HAPMetricsPowerManagementLogEvent logType](self, "logType")}];
  [dictionary setObject:v4 forKeyedSubscript:@"logType"];

  v5 = [dictionary copy];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  accessoryIdentifier = [(HAPMetricsPowerManagementLogEvent *)self accessoryIdentifier];
  v5 = [v3 stringWithFormat:@"HAPMetricsPowerManagementLogEvent - Accessory Identifier: %@, Log Type: %ld", accessoryIdentifier, -[HAPMetricsPowerManagementLogEvent logType](self, "logType")];

  return v5;
}

- (id)initForSuspendedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v9.receiver = self;
  v9.super_class = HAPMetricsPowerManagementLogEvent;
  v5 = [(HMMLogEvent *)&v9 init];
  if (v5)
  {
    identifier = [accessoryCopy identifier];
    accessoryIdentifier = v5->_accessoryIdentifier;
    v5->_accessoryIdentifier = identifier;

    v5->_logType = 2;
  }

  return v5;
}

- (id)initForHAPAccessory:(id)accessory withLogType:(int64_t)type
{
  accessoryCopy = accessory;
  v11.receiver = self;
  v11.super_class = HAPMetricsPowerManagementLogEvent;
  v7 = [(HMMLogEvent *)&v11 init];
  if (v7)
  {
    identifier = [accessoryCopy identifier];
    accessoryIdentifier = v7->_accessoryIdentifier;
    v7->_accessoryIdentifier = identifier;

    v7->_logType = type;
  }

  return v7;
}

@end