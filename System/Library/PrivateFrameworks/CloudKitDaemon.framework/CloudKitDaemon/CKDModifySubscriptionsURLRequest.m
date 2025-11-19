@interface CKDModifySubscriptionsURLRequest
- (CKDModifySubscriptionsURLRequest)initWithOperation:(id)a3 subscriptionsToSave:(id)a4 subscriptionIDsToDelete:(id)a5;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)a3;
- (id)requestOperationClasses;
- (id)zoneIDsToLock;
- (void)fillOutEquivalencyPropertiesBuilder:(id)a3;
- (void)fillOutRequestProperties:(id)a3;
- (void)requestDidParseNodeFailure:(id)a3;
@end

@implementation CKDModifySubscriptionsURLRequest

- (CKDModifySubscriptionsURLRequest)initWithOperation:(id)a3 subscriptionsToSave:(id)a4 subscriptionIDsToDelete:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CKDModifySubscriptionsURLRequest;
  v11 = [(CKDURLRequest *)&v16 initWithOperation:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_subscriptionsToSave, a4);
    objc_storeStrong(&v12->_subscriptionIDsToDelete, a5);
    v13 = objc_opt_new();
    subscriptionIDByRequestID = v12->_subscriptionIDByRequestID;
    v12->_subscriptionIDByRequestID = v13;
  }

  return v12;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)a3
{
  v21.receiver = self;
  v21.super_class = CKDModifySubscriptionsURLRequest;
  v4 = a3;
  [(CKDURLRequest *)&v21 fillOutEquivalencyPropertiesBuilder:v4];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_subscriptionsToSave(self, v6, v7, v21.receiver, v21.super_class);
  v10 = objc_msgSend_CKMap_(v8, v9, &unk_28385E640);
  v12 = objc_msgSend_setWithArray_(v5, v11, v10);

  objc_msgSend_setObject_forKeyedSubscript_(v4, v13, v12, @"modifyIDs");
  v14 = MEMORY[0x277CBEB98];
  v17 = objc_msgSend_subscriptionIDsToDelete(self, v15, v16);
  v19 = objc_msgSend_setWithArray_(v14, v18, v17);

  objc_msgSend_setObject_forKeyedSubscript_(v4, v20, v19, @"deleteIDs");
}

- (void)fillOutRequestProperties:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = objc_msgSend_subscriptionsToSave(self, v6, v7);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v24, v28, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = objc_msgSend_zoneID(v14, v15, v16);
          if (!v18)
          {
            goto LABEL_12;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v18 = objc_msgSend_zoneID(v14, v19, v20);
        }

        objc_msgSend_addObject_(v5, v17, v18);
LABEL_12:
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v19, &v24, v28, 16);
    }

    while (v11);
  }

  objc_msgSend_setModifySubscriptionRecordZoneIDs_(v4, v21, v5);
  v23.receiver = self;
  v23.super_class = CKDModifySubscriptionsURLRequest;
  [(CKDURLRequest *)&v23 fillOutRequestProperties:v4];

  v22 = *MEMORY[0x277D85DE8];
}

- (id)zoneIDsToLock
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_defaultRecordZone(MEMORY[0x277CBC5E8], a2, v2);
  v6 = objc_msgSend_zoneID(v3, v4, v5);
  v11[0] = v6;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v11, 1);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)requestOperationClasses
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_subscriptionsToSave(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);

  if (v9)
  {
    v12 = objc_opt_class();
    objc_msgSend_addObject_(v3, v13, v12);
  }

  v14 = objc_msgSend_subscriptionIDsToDelete(self, v10, v11);
  v17 = objc_msgSend_count(v14, v15, v16);

  if (v17)
  {
    v18 = objc_opt_class();
    objc_msgSend_addObject_(v3, v19, v18);
  }

  return v3;
}

- (id)generateRequestOperations
{
  v130 = *MEMORY[0x277D85DE8];
  v116 = objc_opt_new();
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  obj = objc_msgSend_subscriptionsToSave(self, v3, v4);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v122, v129, 16);
  if (v6)
  {
    v8 = v6;
    v114 = *v123;
    do
    {
      v9 = 0;
      do
      {
        if (*v123 != v114)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v122 + 1) + 8 * v9);
        v11 = objc_msgSend_operationRequestWithType_(self, v7, 300);
        v12 = objc_opt_new();
        objc_msgSend_setSubscriptionCreateRequest_(v11, v13, v12);

        v16 = objc_msgSend_translator(self, v14, v15);
        v121 = 0;
        v18 = objc_msgSend_pSubscriptionFromSubscription_error_(v16, v17, v10, &v121);
        v19 = v121;
        v22 = objc_msgSend_subscriptionCreateRequest(v11, v20, v21);
        objc_msgSend_setSubscription_(v22, v23, v18);

        v26 = objc_msgSend_subscriptionCreateRequest(v11, v24, v25);
        v29 = objc_msgSend_subscription(v26, v27, v28);

        if (v29)
        {
          objc_msgSend_addObject_(v116, v30, v11);
          v33 = objc_msgSend_subscriptionID(v10, v31, v32);
          v36 = objc_msgSend_subscriptionIDByRequestID(self, v34, v35);
          v39 = objc_msgSend_request(v11, v37, v38);
          v42 = objc_msgSend_operationUUID(v39, v40, v41);
          objc_msgSend_setObject_forKeyedSubscript_(v36, v43, v33, v42);

LABEL_14:
          goto LABEL_15;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v44 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v128 = v19;
          _os_log_error_impl(&dword_22506F000, v44, OS_LOG_TYPE_ERROR, "Failed to convert subscription: %@", buf, 0xCu);
        }

        v47 = objc_msgSend_subscriptionModifiedBlock(self, v45, v46);

        if (v47)
        {
          v33 = objc_opt_new();
          objc_msgSend_setCode_(v33, v48, 3);
          v49 = objc_opt_new();
          objc_msgSend_setError_(v33, v50, v49);

          v51 = objc_opt_new();
          v54 = objc_msgSend_error(v33, v52, v53);
          objc_msgSend_setClientError_(v54, v55, v51);

          v58 = objc_msgSend_error(v33, v56, v57);
          v61 = objc_msgSend_clientError(v58, v59, v60);
          objc_msgSend_setType_(v61, v62, 7);

          v65 = objc_msgSend_error(v33, v63, v64);
          objc_msgSend_setErrorKey_(v65, v66, @"Invalid subscription");

          v67 = MEMORY[0x277CCACA8];
          v70 = objc_msgSend_localizedDescription(v19, v68, v69);
          v72 = objc_msgSend_stringWithFormat_(v67, v71, @"The subscription could not be converted because it is invalid: %@", v70);
          v75 = objc_msgSend_error(v33, v73, v74);
          objc_msgSend_setErrorDescription_(v75, v76, v72);

          v36 = objc_msgSend_subscriptionModifiedBlock(self, v77, v78);
          v39 = objc_msgSend_subscriptionID(v10, v79, v80);
          (v36)[2](v36, v39, v33);
          goto LABEL_14;
        }

LABEL_15:

        ++v9;
      }

      while (v8 != v9);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v122, v129, 16);
    }

    while (v8);
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = objc_msgSend_subscriptionIDsToDelete(self, v81, v82);
  v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v115, v83, &v117, v126, 16);
  if (v84)
  {
    v86 = v84;
    v87 = *v118;
    do
    {
      for (i = 0; i != v86; ++i)
      {
        if (*v118 != v87)
        {
          objc_enumerationMutation(v115);
        }

        v89 = *(*(&v117 + 1) + 8 * i);
        v90 = objc_msgSend_operationRequestWithType_(self, v85, 302);
        v91 = objc_opt_new();
        objc_msgSend_setSubscriptionDeleteRequest_(v90, v92, v91);

        v95 = objc_msgSend_CKDPIdentifier_Subscription(v89, v93, v94);
        v98 = objc_msgSend_subscriptionDeleteRequest(v90, v96, v97);
        objc_msgSend_setIdentifier_(v98, v99, v95);

        objc_msgSend_addObject_(v116, v100, v90);
        v103 = objc_msgSend_subscriptionIDByRequestID(self, v101, v102);
        v106 = objc_msgSend_request(v90, v104, v105);
        v109 = objc_msgSend_operationUUID(v106, v107, v108);
        objc_msgSend_setObject_forKeyedSubscript_(v103, v110, v89, v109);
      }

      v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v115, v85, &v117, v126, 16);
    }

    while (v86);
  }

  v111 = *MEMORY[0x277D85DE8];

  return v116;
}

- (id)requestDidParseProtobufObject:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_subscriptionIDByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(v4, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_subscriptionModifiedBlock(self, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_subscriptionModifiedBlock(self, v19, v20);
    v24 = objc_msgSend_result(v4, v22, v23);
    (v21)[2](v21, v15, v24);
  }

  return 0;
}

- (void)requestDidParseNodeFailure:(id)a3
{
  v24 = a3;
  v6 = objc_msgSend_subscriptionIDByRequestID(self, v4, v5);
  v9 = objc_msgSend_response(v24, v7, v8);
  v12 = objc_msgSend_operationUUID(v9, v10, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(v6, v13, v12);

  v17 = objc_msgSend_subscriptionModifiedBlock(self, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_subscriptionModifiedBlock(self, v18, v19);
    v23 = objc_msgSend_result(v24, v21, v22);
    (v20)[2](v20, v14, v23);
  }
}

@end