@interface CKDDeviceCapabilityCheckResult
- (id)initNotSupportedWithUserID:(id)d publicKeys:(id)keys canValidateWithKT:(BOOL)t shareID:(id)iD usageIsManateeSigned:(BOOL)signed capabilitiesIsManateeSigned:(BOOL)manateeSigned;
- (id)initSupported;
- (id)makeClientResult;
@end

@implementation CKDDeviceCapabilityCheckResult

- (id)initNotSupportedWithUserID:(id)d publicKeys:(id)keys canValidateWithKT:(BOOL)t shareID:(id)iD usageIsManateeSigned:(BOOL)signed capabilitiesIsManateeSigned:(BOOL)manateeSigned
{
  dCopy = d;
  keysCopy = keys;
  iDCopy = iD;
  v32.receiver = self;
  v32.super_class = CKDDeviceCapabilityCheckResult;
  v17 = [(CKDDeviceCapabilityCheckResult *)&v32 init];
  v20 = v17;
  if (v17)
  {
    v17->_isSupported = 0;
    v21 = objc_msgSend_copy(dCopy, v18, v19);
    userID = v20->_userID;
    v20->_userID = v21;

    v25 = objc_msgSend_copy(keysCopy, v23, v24);
    publicKeys = v20->_publicKeys;
    v20->_publicKeys = v25;

    v20->_canValidateWithKT = t;
    v29 = objc_msgSend_copy(iDCopy, v27, v28);
    shareID = v20->_shareID;
    v20->_shareID = v29;

    v20->_usageIsManateeSigned = signed;
    v20->_capabilitiesIsManateeSigned = manateeSigned;
  }

  return v20;
}

- (id)initSupported
{
  v3.receiver = self;
  v3.super_class = CKDDeviceCapabilityCheckResult;
  result = [(CKDDeviceCapabilityCheckResult *)&v3 init];
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

- (id)makeClientResult
{
  v3 = objc_alloc(MEMORY[0x277CBC2B8]);
  isSupported = objc_msgSend_isSupported(self, v4, v5);
  v8 = objc_msgSend_initWithIsSupported_(v3, v7, isSupported);

  return v8;
}

@end