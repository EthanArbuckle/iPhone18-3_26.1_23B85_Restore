@interface CKDTokenDeletionURLRequest
- (CKDTokenDeletionURLRequest)initWithOperation:(id)a3 apsToken:(id)a4 apsEnvironmentString:(id)a5 bundleID:(id)a6;
- (id)generateRequestOperations;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)a3;
@end

@implementation CKDTokenDeletionURLRequest

- (CKDTokenDeletionURLRequest)initWithOperation:(id)a3 apsToken:(id)a4 apsEnvironmentString:(id)a5 bundleID:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CKDTokenDeletionURLRequest;
  v14 = [(CKDURLRequest *)&v17 initWithOperation:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_apsToken, a4);
    objc_storeStrong(&v15->_apsEnvironmentString, a5);
    objc_storeStrong(&v15->_bundleID, a6);
  }

  return v15;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)a3
{
  v13.receiver = self;
  v13.super_class = CKDTokenDeletionURLRequest;
  v4 = a3;
  [(CKDURLRequest *)&v13 fillOutEquivalencyPropertiesBuilder:v4];
  v7 = objc_msgSend_apsEnvironmentString(self, v5, v6, v13.receiver, v13.super_class);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v8, v7, @"apsEnvironmentString");

  v11 = objc_msgSend_bundleID(self, v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v12, v11, @"bundleID");
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
  v74 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
  {
    v6 = v3;
    v9 = objc_msgSend_requestUUID(self, v7, v8);
    v12 = objc_msgSend_apsToken(self, v10, v11);
    v15 = objc_msgSend_apsEnvironmentString(self, v13, v14);
    v18 = objc_msgSend_bundleID(self, v16, v17);
    *buf = 138544131;
    v67 = v9;
    v68 = 2113;
    v69 = v12;
    v70 = 2114;
    v71 = v15;
    v72 = 2114;
    v73 = v18;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "req: %{public}@, Unregistering token %{private}@ in aps environment %{public}@ for bundleID %{public}@", buf, 0x2Au);
  }

  v19 = objc_msgSend_operationType(self, v4, v5);
  v21 = objc_msgSend_operationRequestWithType_(self, v20, v19);
  v22 = objc_opt_new();
  objc_msgSend_setTokenUnregistrationRequest_(v21, v23, v22);

  v24 = objc_opt_new();
  v27 = objc_msgSend_tokenUnregistrationRequest(v21, v25, v26);
  objc_msgSend_setTokenRegistrationBody_(v27, v28, v24);

  v31 = objc_msgSend_apsToken(self, v29, v30);
  v34 = objc_msgSend_tokenUnregistrationRequest(v21, v32, v33);
  v37 = objc_msgSend_tokenRegistrationBody(v34, v35, v36);
  objc_msgSend_setToken_(v37, v38, v31);

  v41 = objc_msgSend_apsEnvironmentString(self, v39, v40);
  v43 = objc_msgSend_compare_options_(v41, v42, *MEMORY[0x277CEE9E8], 1) == 0;
  v46 = objc_msgSend_tokenUnregistrationRequest(v21, v44, v45);
  v49 = objc_msgSend_tokenRegistrationBody(v46, v47, v48);
  objc_msgSend_setApnsEnv_(v49, v50, v43);

  v53 = objc_msgSend_bundleID(self, v51, v52);
  v56 = objc_msgSend_tokenUnregistrationRequest(v21, v54, v55);
  v59 = objc_msgSend_tokenRegistrationBody(v56, v57, v58);
  objc_msgSend_setBundleIdentifier_(v59, v60, v53);

  v65 = v21;
  v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v61, &v65, 1);

  v63 = *MEMORY[0x277D85DE8];

  return v62;
}

@end