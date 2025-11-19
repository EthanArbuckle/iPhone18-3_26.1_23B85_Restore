@interface HMDMatterSoftwareUpdateEndEvent
- (HMDMatterSoftwareUpdateEndEvent)initWithAccessory:(id)a3 linkType:(id)a4 accessorySoftwareVersionNumber:(id)a5 updateSoftwareVersionNumber:(id)a6 error:(id)a7;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMatterSoftwareUpdateEndEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDMatterSoftwareUpdateEndEvent *)self accessoryLinkType];
  [v3 setObject:v4 forKeyedSubscript:@"accessoryLinkType"];

  v5 = [(HMDMatterSoftwareUpdateEndEvent *)self accessoryVendorID];
  [v3 setObject:v5 forKeyedSubscript:@"accessoryVendorID"];

  v6 = [(HMDMatterSoftwareUpdateEndEvent *)self accessoryProductID];
  [v3 setObject:v6 forKeyedSubscript:@"accessoryProductID"];

  v7 = [(HMDMatterSoftwareUpdateEndEvent *)self accessoryFirmwareVersionNumber];
  [v3 setObject:v7 forKeyedSubscript:@"currentAccessoryFirmwareVersionNumber"];

  v8 = [(HMDMatterSoftwareUpdateEndEvent *)self targetFirmwareVersionNumber];
  [v3 setObject:v8 forKeyedSubscript:@"targetAccessoryFirmwareVersionNumber"];

  v9 = [(HMMLogEvent *)self error];
  v10 = v9;
  if (v9)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "code")}];
    [v3 setObject:v11 forKeyedSubscript:@"errorCode"];

    v12 = [v10 domain];
    [v3 setObject:v12 forKeyedSubscript:@"errorDomain"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDMatterSoftwareUpdateEndEvent isAutomaticThirdPartyAccessorySoftwareUpdateEnabled](self, "isAutomaticThirdPartyAccessorySoftwareUpdateEnabled")}];
  [v3 setObject:v13 forKeyedSubscript:@"isAutomaticFirmwareUpdateEnabled"];

  v14 = [(HMDMatterSoftwareUpdateEndEvent *)self vendorDetailsForCoreAnalytics];
  [v3 addEntriesFromDictionary:v14];

  return v3;
}

- (HMDMatterSoftwareUpdateEndEvent)initWithAccessory:(id)a3 linkType:(id)a4 accessorySoftwareVersionNumber:(id)a5 updateSoftwareVersionNumber:(id)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v28.receiver = self;
  v28.super_class = HMDMatterSoftwareUpdateEndEvent;
  v17 = [(HMMLogEvent *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_accessoryLinkType, a4);
    v19 = [v12 matterVendorID];
    accessoryVendorID = v18->_accessoryVendorID;
    v18->_accessoryVendorID = v19;

    v21 = [v12 matterProductID];
    accessoryProductID = v18->_accessoryProductID;
    v18->_accessoryProductID = v21;

    objc_storeStrong(&v18->_accessoryFirmwareVersionNumber, a5);
    objc_storeStrong(&v18->_targetFirmwareVersionNumber, a6);
    [(HMMLogEvent *)v18 setError:v16];
    v23 = [v12 home];
    v18->_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled = [v23 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];

    v24 = [MEMORY[0x277CBEB38] dictionary];
    vendorDetailsForCoreAnalytics = v18->_vendorDetailsForCoreAnalytics;
    v18->_vendorDetailsForCoreAnalytics = v24;

    v26 = [(HMDMatterSoftwareUpdateEndEvent *)v18 vendorDetailsForCoreAnalytics];
    [v12 populateVendorDetailsForCoreAnalytics:v26 keyPrefix:@"accessory"];
  }

  return v18;
}

@end