@interface HMDMatterSoftwareUpdateEndEvent
- (HMDMatterSoftwareUpdateEndEvent)initWithAccessory:(id)accessory linkType:(id)type accessorySoftwareVersionNumber:(id)number updateSoftwareVersionNumber:(id)versionNumber error:(id)error;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMatterSoftwareUpdateEndEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  accessoryLinkType = [(HMDMatterSoftwareUpdateEndEvent *)self accessoryLinkType];
  [dictionary setObject:accessoryLinkType forKeyedSubscript:@"accessoryLinkType"];

  accessoryVendorID = [(HMDMatterSoftwareUpdateEndEvent *)self accessoryVendorID];
  [dictionary setObject:accessoryVendorID forKeyedSubscript:@"accessoryVendorID"];

  accessoryProductID = [(HMDMatterSoftwareUpdateEndEvent *)self accessoryProductID];
  [dictionary setObject:accessoryProductID forKeyedSubscript:@"accessoryProductID"];

  accessoryFirmwareVersionNumber = [(HMDMatterSoftwareUpdateEndEvent *)self accessoryFirmwareVersionNumber];
  [dictionary setObject:accessoryFirmwareVersionNumber forKeyedSubscript:@"currentAccessoryFirmwareVersionNumber"];

  targetFirmwareVersionNumber = [(HMDMatterSoftwareUpdateEndEvent *)self targetFirmwareVersionNumber];
  [dictionary setObject:targetFirmwareVersionNumber forKeyedSubscript:@"targetAccessoryFirmwareVersionNumber"];

  error = [(HMMLogEvent *)self error];
  v10 = error;
  if (error)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(error, "code")}];
    [dictionary setObject:v11 forKeyedSubscript:@"errorCode"];

    domain = [v10 domain];
    [dictionary setObject:domain forKeyedSubscript:@"errorDomain"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDMatterSoftwareUpdateEndEvent isAutomaticThirdPartyAccessorySoftwareUpdateEnabled](self, "isAutomaticThirdPartyAccessorySoftwareUpdateEnabled")}];
  [dictionary setObject:v13 forKeyedSubscript:@"isAutomaticFirmwareUpdateEnabled"];

  vendorDetailsForCoreAnalytics = [(HMDMatterSoftwareUpdateEndEvent *)self vendorDetailsForCoreAnalytics];
  [dictionary addEntriesFromDictionary:vendorDetailsForCoreAnalytics];

  return dictionary;
}

- (HMDMatterSoftwareUpdateEndEvent)initWithAccessory:(id)accessory linkType:(id)type accessorySoftwareVersionNumber:(id)number updateSoftwareVersionNumber:(id)versionNumber error:(id)error
{
  accessoryCopy = accessory;
  typeCopy = type;
  numberCopy = number;
  versionNumberCopy = versionNumber;
  errorCopy = error;
  v28.receiver = self;
  v28.super_class = HMDMatterSoftwareUpdateEndEvent;
  v17 = [(HMMLogEvent *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_accessoryLinkType, type);
    matterVendorID = [accessoryCopy matterVendorID];
    accessoryVendorID = v18->_accessoryVendorID;
    v18->_accessoryVendorID = matterVendorID;

    matterProductID = [accessoryCopy matterProductID];
    accessoryProductID = v18->_accessoryProductID;
    v18->_accessoryProductID = matterProductID;

    objc_storeStrong(&v18->_accessoryFirmwareVersionNumber, number);
    objc_storeStrong(&v18->_targetFirmwareVersionNumber, versionNumber);
    [(HMMLogEvent *)v18 setError:errorCopy];
    home = [accessoryCopy home];
    v18->_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled = [home isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    vendorDetailsForCoreAnalytics = v18->_vendorDetailsForCoreAnalytics;
    v18->_vendorDetailsForCoreAnalytics = dictionary;

    vendorDetailsForCoreAnalytics = [(HMDMatterSoftwareUpdateEndEvent *)v18 vendorDetailsForCoreAnalytics];
    [accessoryCopy populateVendorDetailsForCoreAnalytics:vendorDetailsForCoreAnalytics keyPrefix:@"accessory"];
  }

  return v18;
}

@end