@interface HMDAccessoryReachabilityChangedLogEvent
- (HMDAccessoryReachabilityChangedLogEvent)init;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)__initWithReachable:(BOOL)reachable changed:(BOOL)changed duration:(double)duration accessory:(id)accessory transportReport:(id)report;
@end

@implementation HMDAccessoryReachabilityChangedLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCABB0];
  [(HMDAccessoryReachabilityChangedLogEvent *)self duration];
  v6 = [v4 numberWithInteger:v5];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryReachabilityChangedLogEvent accessoryBatteryPowered](self, "accessoryBatteryPowered")}];
  [dictionary setObject:v7 forKeyedSubscript:@"accessoryBatteryPowered"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryReachabilityChangedLogEvent accessoryBridged](self, "accessoryBridged")}];
  [dictionary setObject:v8 forKeyedSubscript:@"accessoryBridged"];

  accessoryCategory = [(HMDAccessoryReachabilityChangedLogEvent *)self accessoryCategory];
  [dictionary setObject:accessoryCategory forKeyedSubscript:@"accessoryCategory"];

  accessoryFirmwareVersion = [(HMDAccessoryReachabilityChangedLogEvent *)self accessoryFirmwareVersion];
  [dictionary setObject:accessoryFirmwareVersion forKeyedSubscript:@"accessoryFirmwareVersion"];

  accessoryManufacturer = [(HMDAccessoryReachabilityChangedLogEvent *)self accessoryManufacturer];
  [dictionary setObject:accessoryManufacturer forKeyedSubscript:@"accessoryManufacturer"];

  accessoryModel = [(HMDAccessoryReachabilityChangedLogEvent *)self accessoryModel];
  [dictionary setObject:accessoryModel forKeyedSubscript:@"accessoryModel"];

  accessoryNumber = [(HMDAccessoryReachabilityChangedLogEvent *)self accessoryNumber];
  [dictionary setObject:accessoryNumber forKeyedSubscript:@"accessoryNumber"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryReachabilityChangedLogEvent batteryLow](self, "batteryLow")}];
  [dictionary setObject:v14 forKeyedSubscript:@"batteryLow"];

  if ([(HMDAccessoryReachabilityChangedLogEvent *)self changed])
  {
    v15 = &unk_283E72338;
  }

  else
  {
    v15 = &unk_283E72350;
  }

  [dictionary setObject:v15 forKeyedSubscript:@"changeCount"];
  [dictionary setObject:v6 forKeyedSubscript:@"duration"];
  v16 = MEMORY[0x277CCABB0];
  transportReport = [(HMDAccessoryReachabilityChangedLogEvent *)self transportReport];
  v18 = [v16 numberWithBool:{objc_msgSend(transportReport, "hasAdvertisement")}];
  [dictionary setObject:v18 forKeyedSubscript:@"hasAdvertisement"];

  transportReport2 = [(HMDAccessoryReachabilityChangedLogEvent *)self transportReport];
  protocol = [transportReport2 protocol];
  [dictionary setObject:protocol forKeyedSubscript:@"protocol"];

  transportReport3 = [(HMDAccessoryReachabilityChangedLogEvent *)self transportReport];
  protocolVersion = [transportReport3 protocolVersion];
  [dictionary setObject:protocolVersion forKeyedSubscript:@"protocolVersion"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryReachabilityChangedLogEvent reachable](self, "reachable")}];
  [dictionary setObject:v23 forKeyedSubscript:@"reachable"];

  transportReport4 = [(HMDAccessoryReachabilityChangedLogEvent *)self transportReport];
  reason = [transportReport4 reason];
  [dictionary setObject:reason forKeyedSubscript:@"reason"];

  transportReport5 = [(HMDAccessoryReachabilityChangedLogEvent *)self transportReport];
  linkType = [transportReport5 linkType];
  [dictionary setObject:linkType forKeyedSubscript:@"transport"];

  if ([(HMDAccessoryReachabilityChangedLogEvent *)self reachable])
  {
    v28 = @"unreachableDuration";
  }

  else
  {
    v28 = @"reachableDuration";
  }

  [dictionary setObject:v6 forKeyedSubscript:v28];
  v29 = [dictionary copy];

  return v29;
}

- (id)__initWithReachable:(BOOL)reachable changed:(BOOL)changed duration:(double)duration accessory:(id)accessory transportReport:(id)report
{
  accessoryCopy = accessory;
  reportCopy = report;
  v28.receiver = self;
  v28.super_class = HMDAccessoryReachabilityChangedLogEvent;
  v14 = [(HMMLogEvent *)&v28 init];
  v15 = v14;
  if (v14)
  {
    v14->_reachable = reachable;
    v14->_changed = changed;
    v14->_duration = duration;
    v14->_accessoryBridged = [accessoryCopy isPrimary] ^ 1;
    v15->_accessoryBatteryPowered = [accessoryCopy hasBattery];
    v15->_batteryLow = 0;
    objc_storeStrong(&v15->_transportReport, report);
    metricLoggingVendorDetails = [accessoryCopy metricLoggingVendorDetails];
    model = [metricLoggingVendorDetails model];
    accessoryModel = v15->_accessoryModel;
    v15->_accessoryModel = model;

    manufacturer = [metricLoggingVendorDetails manufacturer];
    accessoryManufacturer = v15->_accessoryManufacturer;
    v15->_accessoryManufacturer = manufacturer;

    category = [metricLoggingVendorDetails category];
    accessoryCategory = v15->_accessoryCategory;
    v15->_accessoryCategory = category;

    firmwareVersion = [metricLoggingVendorDetails firmwareVersion];
    accessoryFirmwareVersion = v15->_accessoryFirmwareVersion;
    v15->_accessoryFirmwareVersion = firmwareVersion;

    differentiationNumber = [metricLoggingVendorDetails differentiationNumber];
    accessoryNumber = v15->_accessoryNumber;
    v15->_accessoryNumber = differentiationNumber;
  }

  return v15;
}

- (HMDAccessoryReachabilityChangedLogEvent)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end