@interface CKDTokenRegistrationURLRequest
- (CKDTokenRegistrationURLRequest)initWithOperation:(id)a3 apsToken:(id)a4 apsEnvironmentString:(id)a5 bundleID:(id)a6 skipBundleIDCheck:(BOOL)a7;
- (id)generateRequestOperations;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)a3;
@end

@implementation CKDTokenRegistrationURLRequest

- (CKDTokenRegistrationURLRequest)initWithOperation:(id)a3 apsToken:(id)a4 apsEnvironmentString:(id)a5 bundleID:(id)a6 skipBundleIDCheck:(BOOL)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = CKDTokenRegistrationURLRequest;
  v16 = [(CKDURLRequest *)&v19 initWithOperation:a3];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_apsToken, a4);
    objc_storeStrong(&v17->_apsEnvironmentString, a5);
    objc_storeStrong(&v17->_bundleID, a6);
    v17->_skipBundleIDCheck = a7;
  }

  return v17;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)a3
{
  v13.receiver = self;
  v13.super_class = CKDTokenRegistrationURLRequest;
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
  v95 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
  {
    v6 = v3;
    v9 = objc_msgSend_requestUUID(self, v7, v8);
    v12 = objc_msgSend_container(self, v10, v11);
    v15 = objc_msgSend_applicationBundleID(v12, v13, v14);
    v18 = objc_msgSend_apsToken(self, v16, v17);
    v21 = objc_msgSend_debugDescription(v18, v19, v20);
    v24 = objc_msgSend_apsEnvironmentString(self, v22, v23);
    v27 = objc_msgSend_bundleID(self, v25, v26);
    *buf = 138544387;
    v86 = v9;
    v87 = 2114;
    v88 = v15;
    v89 = 2113;
    v90 = v21;
    v91 = 2114;
    v92 = v24;
    v93 = 2114;
    v94 = v27;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "req: %{public}@, Sending token registration for %{public}@ with token %{private}@ in aps environment %{public}@ with bundleID %{public}@", buf, 0x34u);
  }

  v28 = objc_msgSend_operationType(self, v4, v5);
  v30 = objc_msgSend_operationRequestWithType_(self, v29, v28);
  v31 = objc_opt_new();
  objc_msgSend_setTokenRegistrationRequest_(v30, v32, v31);

  v33 = objc_opt_new();
  v36 = objc_msgSend_tokenRegistrationRequest(v30, v34, v35);
  objc_msgSend_setTokenRegistrationBody_(v36, v37, v33);

  v40 = objc_msgSend_apsToken(self, v38, v39);
  v43 = objc_msgSend_tokenRegistrationRequest(v30, v41, v42);
  v46 = objc_msgSend_tokenRegistrationBody(v43, v44, v45);
  objc_msgSend_setToken_(v46, v47, v40);

  v50 = objc_msgSend_apsEnvironmentString(self, v48, v49);
  v52 = objc_msgSend_compare_options_(v50, v51, *MEMORY[0x277CEE9E8], 1) == 0;
  v55 = objc_msgSend_tokenRegistrationRequest(v30, v53, v54);
  v58 = objc_msgSend_tokenRegistrationBody(v55, v56, v57);
  objc_msgSend_setApnsEnv_(v58, v59, v52);

  v62 = objc_msgSend_bundleID(self, v60, v61);
  v65 = objc_msgSend_tokenRegistrationRequest(v30, v63, v64);
  v68 = objc_msgSend_tokenRegistrationBody(v65, v66, v67);
  objc_msgSend_setBundleIdentifier_(v68, v69, v62);

  v72 = objc_msgSend_skipBundleIDCheck(self, v70, v71);
  v75 = objc_msgSend_tokenRegistrationRequest(v30, v73, v74);
  v78 = objc_msgSend_tokenRegistrationBody(v75, v76, v77);
  objc_msgSend_setSkipBundleIDCheck_(v78, v79, v72);

  v84 = v30;
  v81 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v80, &v84, 1);

  v82 = *MEMORY[0x277D85DE8];

  return v81;
}

@end