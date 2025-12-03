@interface HMDAccessoryDiagnosticMetricEvent
- (HMDAccessory)accessory;
- (HMDAccessoryDiagnosticMetricEvent)initWithAccessory:(id)accessory diagnostics:(id)diagnostics;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDAccessoryDiagnosticMetricEvent

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v34 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  accessory = [(HMDAccessoryDiagnosticMetricEvent *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = accessory;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  metricLoggingTransportDetails = [accessory metricLoggingTransportDetails];
  metricLoggingVendorDetails = [v6 metricLoggingVendorDetails];
  category = [metricLoggingVendorDetails category];
  [dictionary setObject:category forKeyedSubscript:@"accessoryCategory"];

  firmwareVersion = [metricLoggingVendorDetails firmwareVersion];
  [dictionary setObject:firmwareVersion forKeyedSubscript:@"accessoryFirmwareVersion"];

  manufacturer = [metricLoggingVendorDetails manufacturer];
  [dictionary setObject:manufacturer forKeyedSubscript:@"accessoryManufacturer"];

  model = [metricLoggingVendorDetails model];
  [dictionary setObject:model forKeyedSubscript:@"accessoryModel"];

  accessoryProtocol = [metricLoggingTransportDetails accessoryProtocol];
  [dictionary setObject:accessoryProtocol forKeyedSubscript:@"accessoryProtocol"];

  [v6 linkLayerType];
  v14 = HAPLinkLayerTypeDescription();
  [dictionary setObject:v14 forKeyedSubscript:@"accessoryTransport"];

  expectedTransport = [v6 expectedTransport];
  [dictionary setObject:expectedTransport forKeyedSubscript:@"expectedTransport"];

  diagnostics = [(HMDAccessoryDiagnosticMetricEvent *)self diagnostics];
  [dictionary addEntriesFromDictionary:diagnostics];

  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = HMFGetLogIdentifier();
    name = [accessory name];
    [accessory identifier];
    v22 = v25 = metricLoggingTransportDetails;
    *buf = 138544130;
    v27 = v20;
    v28 = 2112;
    v29 = name;
    v30 = 2112;
    v31 = v22;
    v32 = 2112;
    v33 = dictionary;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Serialized HMDAccessoryDiagnosticMetricEvent for accessory: %@/%@ - %@", buf, 0x2Au);

    metricLoggingTransportDetails = v25;
  }

  objc_autoreleasePoolPop(v17);
  v23 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (HMDAccessoryDiagnosticMetricEvent)initWithAccessory:(id)accessory diagnostics:(id)diagnostics
{
  accessoryCopy = accessory;
  diagnosticsCopy = diagnostics;
  v11.receiver = self;
  v11.super_class = HMDAccessoryDiagnosticMetricEvent;
  v8 = [(HMDHAPMetrics *)&v11 initWithHMDAccessory:accessoryCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_accessory, accessoryCopy);
    objc_storeStrong(&v9->_diagnostics, diagnostics);
  }

  return v9;
}

@end