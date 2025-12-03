@interface CKDCheckSupportedDeviceCapabilitiesContinuationParams
- (CKDCheckSupportedDeviceCapabilitiesContinuationParams)initWithContinuationToken:(id)token zoneID:(id)d capabilitySet:(id)set;
@end

@implementation CKDCheckSupportedDeviceCapabilitiesContinuationParams

- (CKDCheckSupportedDeviceCapabilitiesContinuationParams)initWithContinuationToken:(id)token zoneID:(id)d capabilitySet:(id)set
{
  tokenCopy = token;
  dCopy = d;
  setCopy = set;
  v15.receiver = self;
  v15.super_class = CKDCheckSupportedDeviceCapabilitiesContinuationParams;
  v12 = [(CKDCheckSupportedDeviceCapabilitiesContinuationParams *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_continuationToken, token);
    objc_storeStrong(&v13->_zoneID, d);
    objc_storeStrong(&v13->_capabilitySet, set);
  }

  return v13;
}

@end