@interface CKDFetchSubscriptionsURLRequest
- (CKDFetchSubscriptionsURLRequest)initWithOperation:(id)a3 subscriptionIDs:(id)a4;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)a3;
- (id)requestOperationClasses;
- (id)zoneIDsToLock;
- (void)fillOutEquivalencyPropertiesBuilder:(id)a3;
- (void)requestDidParseNodeFailure:(id)a3;
@end

@implementation CKDFetchSubscriptionsURLRequest

- (CKDFetchSubscriptionsURLRequest)initWithOperation:(id)a3 subscriptionIDs:(id)a4
{
  v7 = a4;
  v17.receiver = self;
  v17.super_class = CKDFetchSubscriptionsURLRequest;
  v8 = [(CKDURLRequest *)&v17 initWithOperation:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_subscriptionIDs, a4);
    v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
    subscriptions = v9->_subscriptions;
    v9->_subscriptions = v12;

    v14 = objc_opt_new();
    subscriptionIDByRequestID = v9->_subscriptionIDByRequestID;
    v9->_subscriptionIDByRequestID = v14;
  }

  return v9;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)a3
{
  v12.receiver = self;
  v12.super_class = CKDFetchSubscriptionsURLRequest;
  v4 = a3;
  [(CKDURLRequest *)&v12 fillOutEquivalencyPropertiesBuilder:v4];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_subscriptionIDs(self, v6, v7, v12.receiver, v12.super_class);
  v10 = objc_msgSend_setWithArray_(v5, v9, v8);

  objc_msgSend_setObject_forKeyedSubscript_(v4, v11, v10, @"ids");
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
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v6, 1);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)generateRequestOperations
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v6 = objc_msgSend_subscriptionIDs(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);

  if (v9)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = objc_msgSend_subscriptionIDs(self, v10, v11);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v52, v56, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v53;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v53 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v52 + 1) + 8 * i);
          v20 = objc_msgSend_operationType(self, v14, v15);
          v22 = objc_msgSend_operationRequestWithType_(self, v21, v20);
          v23 = objc_opt_new();
          objc_msgSend_setSubscriptionRetrieveRequest_(v22, v24, v23);

          v27 = objc_msgSend_CKDPIdentifier_Subscription(v19, v25, v26);
          v30 = objc_msgSend_subscriptionRetrieveRequest(v22, v28, v29);
          objc_msgSend_setIdentifier_(v30, v31, v27);

          objc_msgSend_addObject_(v3, v32, v22);
          v35 = objc_msgSend_subscriptionIDByRequestID(self, v33, v34);
          v38 = objc_msgSend_request(v22, v36, v37);
          v41 = objc_msgSend_operationUUID(v38, v39, v40);
          objc_msgSend_setObject_forKeyedSubscript_(v35, v42, v19, v41);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v52, v56, 16);
      }

      while (v16);
    }
  }

  else
  {
    v43 = objc_msgSend_operationType(self, v10, v11);
    v45 = objc_msgSend_operationRequestWithType_(self, v44, v43);
    v46 = objc_opt_new();
    objc_msgSend_setSubscriptionRetrieveRequest_(v45, v47, v46);

    objc_msgSend_addObject_(v3, v48, v45);
  }

  v49 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)requestDidParseProtobufObject:(id)a3
{
  v95 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_hasSubscriptionRetrieveResponse(v4, v5, v6))
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = v4;
    v9 = objc_msgSend_subscriptionRetrieveResponse(v4, v7, v8);
    v12 = objc_msgSend_subscriptions(v9, v10, v11);

    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v86, v94, 16);
    if (!v14)
    {
      v19 = 0;
      goto LABEL_25;
    }

    v18 = v14;
    v19 = 0;
    v20 = *v87;
    *&v17 = 138543618;
    v83 = v17;
    while (1)
    {
      v21 = 0;
      do
      {
        v22 = v19;
        if (*v87 != v20)
        {
          objc_enumerationMutation(v12);
        }

        v23 = *(*(&v86 + 1) + 8 * v21);
        v24 = objc_msgSend_translator(self, v15, v16, v83);
        v85 = v19;
        v26 = objc_msgSend_subscriptionFromPSubscription_error_(v24, v25, v23, &v85);
        v19 = v85;

        if (v26)
        {
          objc_msgSend_addObject_(self->_subscriptions, v27, v26);
          v30 = objc_msgSend_subscriptionFetchedBlock(self, v28, v29);

          if (!v30)
          {
            goto LABEL_14;
          }

          v33 = objc_msgSend_subscriptionFetchedBlock(self, v31, v32);
          v36 = objc_msgSend_subscriptionID(v26, v34, v35);
          v39 = objc_msgSend_result(v84, v37, v38);
          v33[2](v33, v26, v36, v39);

          goto LABEL_10;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v40 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v33 = v40;
          v36 = objc_msgSend_localizedDescription(v19, v41, v42);
          *buf = v83;
          v91 = v36;
          v92 = 2112;
          v93 = v23;
          _os_log_error_impl(&dword_22506F000, v33, OS_LOG_TYPE_ERROR, "Unable to read subscription object, discarding: %{public}@: %@", buf, 0x16u);
LABEL_10:
        }

LABEL_14:

        ++v21;
      }

      while (v18 != v21);
      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v86, v94, 16);
      v18 = v43;
      if (!v43)
      {
LABEL_25:

        v4 = v84;
        goto LABEL_29;
      }
    }
  }

  v44 = objc_msgSend_result(v4, v7, v8);
  hasError = objc_msgSend_hasError(v44, v45, v46);

  if (hasError)
  {
    v50 = objc_msgSend_subscriptionIDs(self, v48, v49);
    v53 = objc_msgSend_count(v50, v51, v52);

    if (v53)
    {
      v56 = objc_msgSend_subscriptionIDByRequestID(self, v54, v55);
      v59 = objc_msgSend_response(v4, v57, v58);
      v62 = objc_msgSend_operationUUID(v59, v60, v61);
      v64 = objc_msgSend_objectForKeyedSubscript_(v56, v63, v62);

      v67 = objc_msgSend_subscriptionFetchedBlock(self, v65, v66);

      if (v67)
      {
        v70 = objc_msgSend_subscriptionFetchedBlock(self, v68, v69);
        v73 = objc_msgSend_result(v4, v71, v72);
        (v70)[2](v70, 0, v64, v73);
      }
    }

    else
    {
      v74 = objc_msgSend_errorFetchingAllSubscriptionsBlock(self, v54, v55);

      if (v74)
      {
        v77 = objc_msgSend_errorFetchingAllSubscriptionsBlock(self, v75, v76);
        v80 = objc_msgSend_result(v4, v78, v79);
        (v77)[2](v77, v80);
      }
    }
  }

  v19 = 0;
LABEL_29:

  v81 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)requestDidParseNodeFailure:(id)a3
{
  v35 = a3;
  v6 = objc_msgSend_subscriptionIDs(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);

  if (!v9)
  {
    v30 = objc_msgSend_errorFetchingAllSubscriptionsBlock(self, v10, v11);

    if (!v30)
    {
      goto LABEL_8;
    }

    v20 = objc_msgSend_errorFetchingAllSubscriptionsBlock(self, v31, v32);
    v26 = objc_msgSend_result(v35, v33, v34);
    v20[2](v20, v26);
    goto LABEL_6;
  }

  v12 = objc_msgSend_subscriptionIDByRequestID(self, v10, v11);
  v15 = objc_msgSend_response(v35, v13, v14);
  v18 = objc_msgSend_operationUUID(v15, v16, v17);
  v20 = objc_msgSend_objectForKeyedSubscript_(v12, v19, v18);

  v23 = objc_msgSend_subscriptionFetchedBlock(self, v21, v22);

  if (v23)
  {
    v26 = objc_msgSend_subscriptionFetchedBlock(self, v24, v25);
    v29 = objc_msgSend_result(v35, v27, v28);
    (v26)[2](v26, 0, v20, v29);

LABEL_6:
  }

LABEL_8:
}

@end