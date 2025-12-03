@interface HMDAccessorySoftwareUpdateApplyEvent
+ (id)eventWithMetricVendorDetails:(id)details stagedVersion:(id)version advertisedDuration:(unint64_t)duration totalAllowedDuration:(unint64_t)allowedDuration status:(int64_t)status;
- (HMDAccessorySoftwareUpdateApplyEvent)initWithDetails:(id)details stagedVersion:(id)version advertisedDuration:(unint64_t)duration totalAllowedDuration:(unint64_t)allowedDuration status:(int64_t)status;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDAccessorySoftwareUpdateApplyEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  metricVendorDetails = [(HMDAccessorySoftwareUpdateApplyEvent *)self metricVendorDetails];
  manufacturer = [metricVendorDetails manufacturer];
  [dictionary setObject:manufacturer forKeyedSubscript:@"accessoryManufacturer"];

  metricVendorDetails2 = [(HMDAccessorySoftwareUpdateApplyEvent *)self metricVendorDetails];
  model = [metricVendorDetails2 model];
  [dictionary setObject:model forKeyedSubscript:@"accessoryModel"];

  metricVendorDetails3 = [(HMDAccessorySoftwareUpdateApplyEvent *)self metricVendorDetails];
  firmwareVersion = [metricVendorDetails3 firmwareVersion];
  [dictionary setObject:firmwareVersion forKeyedSubscript:@"accessoryFirmwareVersion"];

  stagedVersion = [(HMDAccessorySoftwareUpdateApplyEvent *)self stagedVersion];
  versionString = [stagedVersion versionString];
  [dictionary setObject:versionString forKeyedSubscript:@"accessoryStagedVersion"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySoftwareUpdateApplyEvent advertisedDuration](self, "advertisedDuration")}];
  [dictionary setObject:v12 forKeyedSubscript:@"advertisedDuration"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySoftwareUpdateApplyEvent totalAllowedDuration](self, "totalAllowedDuration")}];
  [dictionary setObject:v13 forKeyedSubscript:@"totalAllowedDuration"];

  status = [(HMDAccessorySoftwareUpdateApplyEvent *)self status];
  v15 = @"Unknown";
  if (status == 2)
  {
    v15 = @"Exceeded Total Allowed Apply Duration";
  }

  if (status == 1)
  {
    v16 = @"Exceeded Advertised Apply Duration";
  }

  else
  {
    v16 = v15;
  }

  [dictionary setObject:v16 forKeyedSubscript:@"status"];
  v17 = [dictionary copy];

  return v17;
}

- (HMDAccessorySoftwareUpdateApplyEvent)initWithDetails:(id)details stagedVersion:(id)version advertisedDuration:(unint64_t)duration totalAllowedDuration:(unint64_t)allowedDuration status:(int64_t)status
{
  detailsCopy = details;
  versionCopy = version;
  v18.receiver = self;
  v18.super_class = HMDAccessorySoftwareUpdateApplyEvent;
  v15 = [(HMMLogEvent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_metricVendorDetails, details);
    objc_storeStrong(&v16->_stagedVersion, version);
    v16->_advertisedDuration = duration;
    v16->_totalAllowedDuration = allowedDuration;
    v16->_status = status;
  }

  return v16;
}

+ (id)eventWithMetricVendorDetails:(id)details stagedVersion:(id)version advertisedDuration:(unint64_t)duration totalAllowedDuration:(unint64_t)allowedDuration status:(int64_t)status
{
  versionCopy = version;
  detailsCopy = details;
  v13 = [[HMDAccessorySoftwareUpdateApplyEvent alloc] initWithDetails:detailsCopy stagedVersion:versionCopy advertisedDuration:duration totalAllowedDuration:allowedDuration status:status];

  return v13;
}

@end