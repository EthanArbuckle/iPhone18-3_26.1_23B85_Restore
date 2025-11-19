@interface HMDAccessoryReachabilityChangedLogEvent
- (HMDAccessoryReachabilityChangedLogEvent)init;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)__initWithReachable:(BOOL)a3 changed:(BOOL)a4 duration:(double)a5 accessory:(id)a6 transportReport:(id)a7;
@end

@implementation HMDAccessoryReachabilityChangedLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCABB0];
  [(HMDAccessoryReachabilityChangedLogEvent *)self duration];
  v6 = [v4 numberWithInteger:v5];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryReachabilityChangedLogEvent accessoryBatteryPowered](self, "accessoryBatteryPowered")}];
  [v3 setObject:v7 forKeyedSubscript:@"accessoryBatteryPowered"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryReachabilityChangedLogEvent accessoryBridged](self, "accessoryBridged")}];
  [v3 setObject:v8 forKeyedSubscript:@"accessoryBridged"];

  v9 = [(HMDAccessoryReachabilityChangedLogEvent *)self accessoryCategory];
  [v3 setObject:v9 forKeyedSubscript:@"accessoryCategory"];

  v10 = [(HMDAccessoryReachabilityChangedLogEvent *)self accessoryFirmwareVersion];
  [v3 setObject:v10 forKeyedSubscript:@"accessoryFirmwareVersion"];

  v11 = [(HMDAccessoryReachabilityChangedLogEvent *)self accessoryManufacturer];
  [v3 setObject:v11 forKeyedSubscript:@"accessoryManufacturer"];

  v12 = [(HMDAccessoryReachabilityChangedLogEvent *)self accessoryModel];
  [v3 setObject:v12 forKeyedSubscript:@"accessoryModel"];

  v13 = [(HMDAccessoryReachabilityChangedLogEvent *)self accessoryNumber];
  [v3 setObject:v13 forKeyedSubscript:@"accessoryNumber"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryReachabilityChangedLogEvent batteryLow](self, "batteryLow")}];
  [v3 setObject:v14 forKeyedSubscript:@"batteryLow"];

  if ([(HMDAccessoryReachabilityChangedLogEvent *)self changed])
  {
    v15 = &unk_283E72338;
  }

  else
  {
    v15 = &unk_283E72350;
  }

  [v3 setObject:v15 forKeyedSubscript:@"changeCount"];
  [v3 setObject:v6 forKeyedSubscript:@"duration"];
  v16 = MEMORY[0x277CCABB0];
  v17 = [(HMDAccessoryReachabilityChangedLogEvent *)self transportReport];
  v18 = [v16 numberWithBool:{objc_msgSend(v17, "hasAdvertisement")}];
  [v3 setObject:v18 forKeyedSubscript:@"hasAdvertisement"];

  v19 = [(HMDAccessoryReachabilityChangedLogEvent *)self transportReport];
  v20 = [v19 protocol];
  [v3 setObject:v20 forKeyedSubscript:@"protocol"];

  v21 = [(HMDAccessoryReachabilityChangedLogEvent *)self transportReport];
  v22 = [v21 protocolVersion];
  [v3 setObject:v22 forKeyedSubscript:@"protocolVersion"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryReachabilityChangedLogEvent reachable](self, "reachable")}];
  [v3 setObject:v23 forKeyedSubscript:@"reachable"];

  v24 = [(HMDAccessoryReachabilityChangedLogEvent *)self transportReport];
  v25 = [v24 reason];
  [v3 setObject:v25 forKeyedSubscript:@"reason"];

  v26 = [(HMDAccessoryReachabilityChangedLogEvent *)self transportReport];
  v27 = [v26 linkType];
  [v3 setObject:v27 forKeyedSubscript:@"transport"];

  if ([(HMDAccessoryReachabilityChangedLogEvent *)self reachable])
  {
    v28 = @"unreachableDuration";
  }

  else
  {
    v28 = @"reachableDuration";
  }

  [v3 setObject:v6 forKeyedSubscript:v28];
  v29 = [v3 copy];

  return v29;
}

- (id)__initWithReachable:(BOOL)a3 changed:(BOOL)a4 duration:(double)a5 accessory:(id)a6 transportReport:(id)a7
{
  v12 = a6;
  v13 = a7;
  v28.receiver = self;
  v28.super_class = HMDAccessoryReachabilityChangedLogEvent;
  v14 = [(HMMLogEvent *)&v28 init];
  v15 = v14;
  if (v14)
  {
    v14->_reachable = a3;
    v14->_changed = a4;
    v14->_duration = a5;
    v14->_accessoryBridged = [v12 isPrimary] ^ 1;
    v15->_accessoryBatteryPowered = [v12 hasBattery];
    v15->_batteryLow = 0;
    objc_storeStrong(&v15->_transportReport, a7);
    v16 = [v12 metricLoggingVendorDetails];
    v17 = [v16 model];
    accessoryModel = v15->_accessoryModel;
    v15->_accessoryModel = v17;

    v19 = [v16 manufacturer];
    accessoryManufacturer = v15->_accessoryManufacturer;
    v15->_accessoryManufacturer = v19;

    v21 = [v16 category];
    accessoryCategory = v15->_accessoryCategory;
    v15->_accessoryCategory = v21;

    v23 = [v16 firmwareVersion];
    accessoryFirmwareVersion = v15->_accessoryFirmwareVersion;
    v15->_accessoryFirmwareVersion = v23;

    v25 = [v16 differentiationNumber];
    accessoryNumber = v15->_accessoryNumber;
    v15->_accessoryNumber = v25;
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