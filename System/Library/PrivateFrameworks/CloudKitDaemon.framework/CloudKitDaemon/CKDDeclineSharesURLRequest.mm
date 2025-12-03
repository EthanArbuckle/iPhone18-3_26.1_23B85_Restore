@interface CKDDeclineSharesURLRequest
- (CKDDeclineSharesURLRequest)initWithOperation:(id)operation shareMetadatasToDecline:(id)decline;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (id)zoneIDsToLock;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDDeclineSharesURLRequest

- (CKDDeclineSharesURLRequest)initWithOperation:(id)operation shareMetadatasToDecline:(id)decline
{
  declineCopy = decline;
  v13.receiver = self;
  v13.super_class = CKDDeclineSharesURLRequest;
  v8 = [(CKDURLRequest *)&v13 initWithOperation:operation];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_shareMetadatasToDecline, decline);
    v10 = objc_opt_new();
    shareMetadataByRequestID = v9->_shareMetadataByRequestID;
    v9->_shareMetadataByRequestID = v10;
  }

  return v9;
}

- (id)zoneIDsToLock
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = objc_msgSend_shareMetadatasToDecline(self, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v24, v28, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = objc_msgSend_shareRecordID(*(*(&v24 + 1) + 8 * i), v9, v10);
        v17 = objc_msgSend_zoneID(v14, v15, v16);

        if (v17)
        {
          objc_msgSend_addObject_(v3, v18, v17);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v24, v28, 16);
    }

    while (v11);
  }

  v21 = objc_msgSend_allObjects(v3, v19, v20);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v15.receiver = self;
  v15.super_class = CKDDeclineSharesURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v15 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_shareMetadatasToDecline(self, v6, v7, v15.receiver, v15.super_class);
  v11 = objc_msgSend_ckEquivalencyProperties(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v5, v12, v11);

  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v14, v13, @"shareMetadatas");
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_shareMetadatasToDecline(self, v5, v6);
  v9 = objc_msgSend_CKMap_(v7, v8, &unk_28385E620);

  objc_msgSend_setModifyRecordIDs_(propertiesCopy, v10, v9);
  v11.receiver = self;
  v11.super_class = CKDDeclineSharesURLRequest;
  [(CKDURLRequest *)&v11 fillOutRequestProperties:propertiesCopy];
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
  v52 = *MEMORY[0x277D85DE8];
  v46 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = objc_msgSend_shareMetadatasToDecline(self, v3, v4);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v47, v51, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v48;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        v13 = objc_msgSend_operationType(self, v7, v8);
        v15 = objc_msgSend_operationRequestWithType_(self, v14, v13);
        v16 = objc_opt_new();
        objc_msgSend_setShareDeclineRequest_(v15, v17, v16);
        v20 = objc_msgSend_translator(self, v18, v19);
        v23 = objc_msgSend_shareRecordID(v12, v21, v22);
        v25 = objc_msgSend_pShareIdentifierFromRecordID_(v20, v24, v23);
        objc_msgSend_setShareId_(v16, v26, v25);

        v29 = objc_msgSend_participantID(v12, v27, v28);

        if (v29)
        {
          v32 = objc_msgSend_participantID(v12, v30, v31);
          objc_msgSend_setParticipantId_(v16, v33, v32);
        }

        v34 = objc_msgSend_shareMetadataByRequestID(self, v30, v31);
        v37 = objc_msgSend_request(v15, v35, v36);
        v40 = objc_msgSend_operationUUID(v37, v38, v39);
        objc_msgSend_setObject_forKeyedSubscript_(v34, v41, v12, v40);

        objc_msgSend_addObject_(v46, v42, v15);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v47, v51, 16);
    }

    while (v9);
  }

  v43 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)requestDidParseProtobufObject:(id)object
{
  objectCopy = object;
  v7 = objc_msgSend_shareMetadataByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(objectCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_shareDeclinedBlock(self, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_shareDeclinedBlock(self, v19, v20);
    v24 = objc_msgSend_shareURL(v15, v22, v23);
    v27 = objc_msgSend_result(objectCopy, v25, v26);
    (v21)[2](v21, v24, v27);
  }

  return 0;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  failureCopy = failure;
  v6 = objc_msgSend_shareMetadataByRequestID(self, v4, v5);
  v9 = objc_msgSend_response(failureCopy, v7, v8);
  v12 = objc_msgSend_operationUUID(v9, v10, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(v6, v13, v12);

  v17 = objc_msgSend_shareDeclinedBlock(self, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_shareDeclinedBlock(self, v18, v19);
    v23 = objc_msgSend_shareURL(v14, v21, v22);
    v26 = objc_msgSend_result(failureCopy, v24, v25);
    (v20)[2](v20, v23, v26);
  }
}

@end