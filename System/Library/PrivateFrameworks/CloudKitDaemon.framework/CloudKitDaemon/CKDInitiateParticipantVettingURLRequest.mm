@interface CKDInitiateParticipantVettingURLRequest
- (CKDInitiateParticipantVettingURLRequest)initWithOperation:(id)a3 shareRecordID:(id)a4 encryptedKey:(id)a5 participantID:(id)a6 baseToken:(id)a7;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)a3;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)a3;
- (void)fillOutRequestProperties:(id)a3;
- (void)requestDidParseNodeFailure:(id)a3;
@end

@implementation CKDInitiateParticipantVettingURLRequest

- (CKDInitiateParticipantVettingURLRequest)initWithOperation:(id)a3 shareRecordID:(id)a4 encryptedKey:(id)a5 participantID:(id)a6 baseToken:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = CKDInitiateParticipantVettingURLRequest;
  v17 = [(CKDURLRequest *)&v20 initWithOperation:a3];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_shareRecordID, a4);
    objc_storeStrong(&v18->_encryptedKey, a5);
    objc_storeStrong(&v18->_participantID, a6);
    objc_storeStrong(&v18->_baseToken, a7);
  }

  return v18;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)a3
{
  v13.receiver = self;
  v13.super_class = CKDInitiateParticipantVettingURLRequest;
  v4 = a3;
  [(CKDURLRequest *)&v13 fillOutEquivalencyPropertiesBuilder:v4];
  v7 = objc_msgSend_shareRecordID(self, v5, v6, v13.receiver, v13.super_class);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v8, v7, @"shareRecordID");

  v11 = objc_msgSend_participantID(self, v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v12, v11, @"participantID");
}

- (void)fillOutRequestProperties:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_shareRecordID(self, v5, v6);
  v13[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v13, 1);
  objc_msgSend_setModifyRecordIDs_(v4, v10, v9);

  v12.receiver = self;
  v12.super_class = CKDInitiateParticipantVettingURLRequest;
  [(CKDURLRequest *)&v12 fillOutRequestProperties:v4];

  v11 = *MEMORY[0x277D85DE8];
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
  v46[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_operationType(self, a2, v2);
  v6 = objc_msgSend_operationRequestWithType_(self, v5, v4);
  v7 = objc_opt_new();
  objc_msgSend_setShareVettingInitiateRequest_(v6, v8, v7);

  v11 = objc_msgSend_translator(self, v9, v10);
  v14 = objc_msgSend_shareRecordID(self, v12, v13);
  v16 = objc_msgSend_pShareIdentifierFromRecordID_(v11, v15, v14);
  v19 = objc_msgSend_shareVettingInitiateRequest(v6, v17, v18);
  objc_msgSend_setShareId_(v19, v20, v16);

  v23 = objc_msgSend_encryptedKey(self, v21, v22);
  v26 = objc_msgSend_shareVettingInitiateRequest(v6, v24, v25);
  objc_msgSend_setEncryptedKey_(v26, v27, v23);

  v30 = objc_msgSend_participantID(self, v28, v29);
  v33 = objc_msgSend_shareVettingInitiateRequest(v6, v31, v32);
  objc_msgSend_setParticipantId_(v33, v34, v30);

  v37 = objc_msgSend_baseToken(self, v35, v36);
  v40 = objc_msgSend_shareVettingInitiateRequest(v6, v38, v39);
  objc_msgSend_setBaseToken_(v40, v41, v37);

  v46[0] = v6;
  v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v42, v46, 1);

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)requestDidParseProtobufObject:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_vettingInitiationRequestCompletionBlock(self, v5, v6);

  if (v7)
  {
    if (objc_msgSend_hasShareVettingInitiateResponse(v4, v8, v9))
    {
      v12 = objc_msgSend_vettingInitiationRequestCompletionBlock(self, v10, v11);

      if (v12)
      {
        v15 = objc_msgSend_shareVettingInitiateResponse(v4, v13, v14);
        hasVettingError = objc_msgSend_hasVettingError(v15, v16, v17);

        v23 = objc_msgSend_vettingInitiationRequestCompletionBlock(self, v19, v20);
        if (hasVettingError)
        {
          v24 = objc_msgSend_shareVettingInitiateResponse(v4, v21, v22);
          v29 = objc_msgSend_vettingError(v24, v25, v26) - 2;
          if (v29 >= 4)
          {
            v30 = 1;
          }

          else
          {
            v30 = v29 + 2;
          }

          v31 = objc_msgSend_result(v4, v27, v28);
          (v23)[2](v23, v30, v31);
        }

        else
        {
          v24 = objc_msgSend_result(v4, v21, v22);
          (v23)[2](v23, 0, v24);
        }

        goto LABEL_12;
      }
    }

    else
    {
      v32 = objc_msgSend_result(v4, v10, v11);
      hasError = objc_msgSend_hasError(v32, v33, v34);

      if (hasError)
      {
        v23 = objc_msgSend_vettingInitiationRequestCompletionBlock(self, v36, v37);
        v24 = objc_msgSend_result(v4, v38, v39);
        (v23)[2](v23, -1, v24);
LABEL_12:
      }
    }
  }

  return 0;
}

- (void)requestDidParseNodeFailure:(id)a3
{
  v13 = a3;
  v6 = objc_msgSend_vettingInitiationRequestCompletionBlock(self, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_vettingInitiationRequestCompletionBlock(self, v7, v8);
    v12 = objc_msgSend_result(v13, v10, v11);
    (v9)[2](v9, -1, v12);
  }
}

@end