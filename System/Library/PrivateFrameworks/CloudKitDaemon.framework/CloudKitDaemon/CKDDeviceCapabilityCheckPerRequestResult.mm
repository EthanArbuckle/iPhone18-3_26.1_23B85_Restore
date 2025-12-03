@interface CKDDeviceCapabilityCheckPerRequestResult
- (CKDDeviceCapabilityCheckPerRequestResult)initWithZoneID:(id)d capabilitySet:(id)set result:(id)result error:(id)error;
@end

@implementation CKDDeviceCapabilityCheckPerRequestResult

- (CKDDeviceCapabilityCheckPerRequestResult)initWithZoneID:(id)d capabilitySet:(id)set result:(id)result error:(id)error
{
  dCopy = d;
  setCopy = set;
  resultCopy = result;
  errorCopy = error;
  v18.receiver = self;
  v18.super_class = CKDDeviceCapabilityCheckPerRequestResult;
  v15 = [(CKDDeviceCapabilityCheckPerRequestResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_zoneID, d);
    objc_storeStrong(&v16->_capabilitySet, set);
    objc_storeStrong(&v16->_result, result);
    objc_storeStrong(&v16->_error, error);
  }

  return v16;
}

@end