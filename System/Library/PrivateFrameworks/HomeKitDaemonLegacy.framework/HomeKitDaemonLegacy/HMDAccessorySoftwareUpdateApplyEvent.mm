@interface HMDAccessorySoftwareUpdateApplyEvent
+ (id)eventWithMetricVendorDetails:(id)a3 stagedVersion:(id)a4 advertisedDuration:(unint64_t)a5 totalAllowedDuration:(unint64_t)a6 status:(int64_t)a7;
- (HMDAccessorySoftwareUpdateApplyEvent)initWithDetails:(id)a3 stagedVersion:(id)a4 advertisedDuration:(unint64_t)a5 totalAllowedDuration:(unint64_t)a6 status:(int64_t)a7;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDAccessorySoftwareUpdateApplyEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDAccessorySoftwareUpdateApplyEvent *)self metricVendorDetails];
  v5 = [v4 manufacturer];
  [v3 setObject:v5 forKeyedSubscript:@"accessoryManufacturer"];

  v6 = [(HMDAccessorySoftwareUpdateApplyEvent *)self metricVendorDetails];
  v7 = [v6 model];
  [v3 setObject:v7 forKeyedSubscript:@"accessoryModel"];

  v8 = [(HMDAccessorySoftwareUpdateApplyEvent *)self metricVendorDetails];
  v9 = [v8 firmwareVersion];
  [v3 setObject:v9 forKeyedSubscript:@"accessoryFirmwareVersion"];

  v10 = [(HMDAccessorySoftwareUpdateApplyEvent *)self stagedVersion];
  v11 = [v10 versionString];
  [v3 setObject:v11 forKeyedSubscript:@"accessoryStagedVersion"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySoftwareUpdateApplyEvent advertisedDuration](self, "advertisedDuration")}];
  [v3 setObject:v12 forKeyedSubscript:@"advertisedDuration"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySoftwareUpdateApplyEvent totalAllowedDuration](self, "totalAllowedDuration")}];
  [v3 setObject:v13 forKeyedSubscript:@"totalAllowedDuration"];

  v14 = [(HMDAccessorySoftwareUpdateApplyEvent *)self status];
  v15 = @"Unknown";
  if (v14 == 2)
  {
    v15 = @"Exceeded Total Allowed Apply Duration";
  }

  if (v14 == 1)
  {
    v16 = @"Exceeded Advertised Apply Duration";
  }

  else
  {
    v16 = v15;
  }

  [v3 setObject:v16 forKeyedSubscript:@"status"];
  v17 = [v3 copy];

  return v17;
}

- (HMDAccessorySoftwareUpdateApplyEvent)initWithDetails:(id)a3 stagedVersion:(id)a4 advertisedDuration:(unint64_t)a5 totalAllowedDuration:(unint64_t)a6 status:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = HMDAccessorySoftwareUpdateApplyEvent;
  v15 = [(HMMLogEvent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_metricVendorDetails, a3);
    objc_storeStrong(&v16->_stagedVersion, a4);
    v16->_advertisedDuration = a5;
    v16->_totalAllowedDuration = a6;
    v16->_status = a7;
  }

  return v16;
}

+ (id)eventWithMetricVendorDetails:(id)a3 stagedVersion:(id)a4 advertisedDuration:(unint64_t)a5 totalAllowedDuration:(unint64_t)a6 status:(int64_t)a7
{
  v11 = a4;
  v12 = a3;
  v13 = [[HMDAccessorySoftwareUpdateApplyEvent alloc] initWithDetails:v12 stagedVersion:v11 advertisedDuration:a5 totalAllowedDuration:a6 status:a7];

  return v13;
}

@end