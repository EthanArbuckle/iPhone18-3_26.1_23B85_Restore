@interface CKUpdateDeviceCapabilitiesOperationInfo
- (CKUpdateDeviceCapabilitiesOperationInfo)initWithSupportedCapabilities:(id)capabilities lastSentCapabilities:(id)sentCapabilities zoneUsages:(id)usages shareUsages:(id)shareUsages;
@end

@implementation CKUpdateDeviceCapabilitiesOperationInfo

- (CKUpdateDeviceCapabilitiesOperationInfo)initWithSupportedCapabilities:(id)capabilities lastSentCapabilities:(id)sentCapabilities zoneUsages:(id)usages shareUsages:(id)shareUsages
{
  capabilitiesCopy = capabilities;
  sentCapabilitiesCopy = sentCapabilities;
  usagesCopy = usages;
  shareUsagesCopy = shareUsages;
  v24.receiver = self;
  v24.super_class = CKUpdateDeviceCapabilitiesOperationInfo;
  v16 = [(CKOperationInfo *)&v24 init];
  if (v16)
  {
    v17 = objc_msgSend_copy(capabilitiesCopy, v14, v15);
    supportedCapabilities = v16->_supportedCapabilities;
    v16->_supportedCapabilities = v17;

    v21 = objc_msgSend_copy(sentCapabilitiesCopy, v19, v20);
    lastSentCapabilities = v16->_lastSentCapabilities;
    v16->_lastSentCapabilities = v21;

    objc_storeStrong(&v16->_zoneUsages, usages);
    objc_storeStrong(&v16->_shareUsages, shareUsages);
  }

  return v16;
}

@end