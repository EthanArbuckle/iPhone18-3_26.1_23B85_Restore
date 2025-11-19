@interface CKDCheckSupportedDeviceCapabilitiesContinuationParams
- (CKDCheckSupportedDeviceCapabilitiesContinuationParams)initWithContinuationToken:(id)a3 zoneID:(id)a4 capabilitySet:(id)a5;
@end

@implementation CKDCheckSupportedDeviceCapabilitiesContinuationParams

- (CKDCheckSupportedDeviceCapabilitiesContinuationParams)initWithContinuationToken:(id)a3 zoneID:(id)a4 capabilitySet:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CKDCheckSupportedDeviceCapabilitiesContinuationParams;
  v12 = [(CKDCheckSupportedDeviceCapabilitiesContinuationParams *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_continuationToken, a3);
    objc_storeStrong(&v13->_zoneID, a4);
    objc_storeStrong(&v13->_capabilitySet, a5);
  }

  return v13;
}

@end