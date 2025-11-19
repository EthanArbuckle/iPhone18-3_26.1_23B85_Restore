@interface CKDFetchUserPrivacySettingsURLRequest
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)a3;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)a3;
@end

@implementation CKDFetchUserPrivacySettingsURLRequest

- (void)fillOutEquivalencyPropertiesBuilder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKDFetchUserPrivacySettingsURLRequest;
  [(CKDURLRequest *)&v3 fillOutEquivalencyPropertiesBuilder:a3];
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
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_operationType(self, a2, v2);
  v6 = objc_msgSend_operationRequestWithType_(self, v5, v4);
  v7 = objc_opt_new();
  objc_msgSend_setUserPrivacySettingsRetrieveRequest_(v6, v8, v7);

  v13[0] = v6;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v13, 1);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)requestDidParseProtobufObject:(id)a3
{
  v4 = a3;
  objc_msgSend_setUserPrivacySettings_(self, v5, 0);
  if (objc_msgSend_hasUserPrivacySettingsRetrieveResponse(v4, v6, v7))
  {
    v10 = objc_msgSend_userPrivacySettingsRetrieveResponse(v4, v8, v9);
    hasUserPrivacySettings = objc_msgSend_hasUserPrivacySettings(v10, v11, v12);

    if (hasUserPrivacySettings)
    {
      v16 = objc_msgSend_userPrivacySettingsRetrieveResponse(v4, v14, v15);
      v19 = objc_msgSend_userPrivacySettings(v16, v17, v18);
      objc_msgSend_setUserPrivacySettings_(self, v20, v19);
    }
  }

  return 0;
}

@end