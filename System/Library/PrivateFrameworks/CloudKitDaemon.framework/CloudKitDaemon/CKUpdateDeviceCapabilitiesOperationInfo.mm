@interface CKUpdateDeviceCapabilitiesOperationInfo
- (CKUpdateDeviceCapabilitiesOperationInfo)initWithSupportedCapabilities:(id)a3 lastSentCapabilities:(id)a4 zoneUsages:(id)a5 shareUsages:(id)a6;
@end

@implementation CKUpdateDeviceCapabilitiesOperationInfo

- (CKUpdateDeviceCapabilitiesOperationInfo)initWithSupportedCapabilities:(id)a3 lastSentCapabilities:(id)a4 zoneUsages:(id)a5 shareUsages:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = CKUpdateDeviceCapabilitiesOperationInfo;
  v16 = [(CKOperationInfo *)&v24 init];
  if (v16)
  {
    v17 = objc_msgSend_copy(v10, v14, v15);
    supportedCapabilities = v16->_supportedCapabilities;
    v16->_supportedCapabilities = v17;

    v21 = objc_msgSend_copy(v11, v19, v20);
    lastSentCapabilities = v16->_lastSentCapabilities;
    v16->_lastSentCapabilities = v21;

    objc_storeStrong(&v16->_zoneUsages, a5);
    objc_storeStrong(&v16->_shareUsages, a6);
  }

  return v16;
}

@end