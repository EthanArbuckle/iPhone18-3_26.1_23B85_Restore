@interface HAPMetricsPowerManagementLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
- (id)initForHAPAccessory:(id)a3 withLogType:(int64_t)a4;
- (id)initForSuspendedAccessory:(id)a3;
@end

@implementation HAPMetricsPowerManagementLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HAPMetricsPowerManagementLogEvent logType](self, "logType")}];
  [v3 setObject:v4 forKeyedSubscript:@"logType"];

  v5 = [v3 copy];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPMetricsPowerManagementLogEvent *)self accessoryIdentifier];
  v5 = [v3 stringWithFormat:@"HAPMetricsPowerManagementLogEvent - Accessory Identifier: %@, Log Type: %ld", v4, -[HAPMetricsPowerManagementLogEvent logType](self, "logType")];

  return v5;
}

- (id)initForSuspendedAccessory:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HAPMetricsPowerManagementLogEvent;
  v5 = [(HMMLogEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 identifier];
    accessoryIdentifier = v5->_accessoryIdentifier;
    v5->_accessoryIdentifier = v6;

    v5->_logType = 2;
  }

  return v5;
}

- (id)initForHAPAccessory:(id)a3 withLogType:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HAPMetricsPowerManagementLogEvent;
  v7 = [(HMMLogEvent *)&v11 init];
  if (v7)
  {
    v8 = [v6 identifier];
    accessoryIdentifier = v7->_accessoryIdentifier;
    v7->_accessoryIdentifier = v8;

    v7->_logType = a4;
  }

  return v7;
}

@end