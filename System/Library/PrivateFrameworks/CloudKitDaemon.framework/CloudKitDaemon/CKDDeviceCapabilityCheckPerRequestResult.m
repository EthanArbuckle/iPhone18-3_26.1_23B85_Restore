@interface CKDDeviceCapabilityCheckPerRequestResult
- (CKDDeviceCapabilityCheckPerRequestResult)initWithZoneID:(id)a3 capabilitySet:(id)a4 result:(id)a5 error:(id)a6;
@end

@implementation CKDDeviceCapabilityCheckPerRequestResult

- (CKDDeviceCapabilityCheckPerRequestResult)initWithZoneID:(id)a3 capabilitySet:(id)a4 result:(id)a5 error:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CKDDeviceCapabilityCheckPerRequestResult;
  v15 = [(CKDDeviceCapabilityCheckPerRequestResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_zoneID, a3);
    objc_storeStrong(&v16->_capabilitySet, a4);
    objc_storeStrong(&v16->_result, a5);
    objc_storeStrong(&v16->_error, a6);
  }

  return v16;
}

@end