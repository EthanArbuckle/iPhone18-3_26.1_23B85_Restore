@interface HMDAccessoryDiagnosticMetricEvent
- (HMDAccessory)accessory;
- (HMDAccessoryDiagnosticMetricEvent)initWithAccessory:(id)a3 diagnostics:(id)a4;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDAccessoryDiagnosticMetricEvent *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v4 metricLoggingTransportDetails];
  v8 = [v6 metricLoggingVendorDetails];
  v9 = [v8 category];
  [v3 setObject:v9 forKeyedSubscript:@"accessoryCategory"];

  v10 = [v8 firmwareVersion];
  [v3 setObject:v10 forKeyedSubscript:@"accessoryFirmwareVersion"];

  v11 = [v8 manufacturer];
  [v3 setObject:v11 forKeyedSubscript:@"accessoryManufacturer"];

  v12 = [v8 model];
  [v3 setObject:v12 forKeyedSubscript:@"accessoryModel"];

  v13 = [v7 accessoryProtocol];
  [v3 setObject:v13 forKeyedSubscript:@"accessoryProtocol"];

  [v6 linkLayerType];
  v14 = HAPLinkLayerTypeDescription();
  [v3 setObject:v14 forKeyedSubscript:@"accessoryTransport"];

  v15 = [v6 expectedTransport];
  [v3 setObject:v15 forKeyedSubscript:@"expectedTransport"];

  v16 = [(HMDAccessoryDiagnosticMetricEvent *)self diagnostics];
  [v3 addEntriesFromDictionary:v16];

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [v4 name];
    [v4 identifier];
    v22 = v25 = v7;
    *buf = 138544130;
    v27 = v20;
    v28 = 2112;
    v29 = v21;
    v30 = 2112;
    v31 = v22;
    v32 = 2112;
    v33 = v3;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Serialized HMDAccessoryDiagnosticMetricEvent for accessory: %@/%@ - %@", buf, 0x2Au);

    v7 = v25;
  }

  objc_autoreleasePoolPop(v17);
  v23 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HMDAccessoryDiagnosticMetricEvent)initWithAccessory:(id)a3 diagnostics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMDAccessoryDiagnosticMetricEvent;
  v8 = [(HMDHAPMetrics *)&v11 initWithHMDAccessory:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_accessory, v6);
    objc_storeStrong(&v9->_diagnostics, a4);
  }

  return v9;
}

@end