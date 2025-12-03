@interface CKDSaveUserPrivacySettingsURLRequest
- (CKDSaveUserPrivacySettingsURLRequest)initWithOperation:(id)operation;
- (id)generateRequestOperations;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)setDiscoverable:(BOOL)discoverable;
@end

@implementation CKDSaveUserPrivacySettingsURLRequest

- (CKDSaveUserPrivacySettingsURLRequest)initWithOperation:(id)operation
{
  v4.receiver = self;
  v4.super_class = CKDSaveUserPrivacySettingsURLRequest;
  result = [(CKDURLRequest *)&v4 initWithOperation:operation];
  if (result)
  {
    result->_discoverableTrinary = -1;
  }

  return result;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v12.receiver = self;
  v12.super_class = CKDSaveUserPrivacySettingsURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v12 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v5 = MEMORY[0x277CCABB0];
  v8 = objc_msgSend_discoverableTrinary(self, v6, v7, v12.receiver, v12.super_class);
  v10 = objc_msgSend_numberWithInteger_(v5, v9, v8);
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v11, v10, @"discoverable");
}

- (void)setDiscoverable:(BOOL)discoverable
{
  v4 = CKTernaryFromBOOL();

  MEMORY[0x2821F9670](self, sel_setDiscoverableTrinary_, v4);
}

- (id)requestOperationClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v6, 1);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)generateRequestOperations
{
  v29[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_operationType(self, a2, v2);
  v6 = objc_msgSend_operationRequestWithType_(self, v5, v4);
  v7 = objc_opt_new();
  objc_msgSend_setUserPrivacySettingsUpdateRequest_(v6, v8, v7);

  v9 = objc_opt_new();
  v12 = objc_msgSend_userPrivacySettingsUpdateRequest(v6, v10, v11);
  objc_msgSend_setUserPrivacySettings_(v12, v13, v9);

  if (objc_msgSend_discoverableTrinary(self, v14, v15) != -1)
  {
    objc_msgSend_discoverableTrinary(self, v16, v17);
    v18 = CKBoolFromCKTernary();
    v21 = objc_msgSend_userPrivacySettingsUpdateRequest(v6, v19, v20);
    v24 = objc_msgSend_userPrivacySettings(v21, v22, v23);
    objc_msgSend_setDiscoverable_(v24, v25, v18);
  }

  v29[0] = v6;
  v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v29, 1);

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

@end