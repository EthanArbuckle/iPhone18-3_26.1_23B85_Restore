@interface CKDFetchWebAuthTokenOperation
- (CKDFetchWebAuthTokenOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)main;
@end

@implementation CKDFetchWebAuthTokenOperation

- (CKDFetchWebAuthTokenOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = CKDFetchWebAuthTokenOperation;
  v9 = [(CKDDatabaseOperation *)&v16 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_APIToken(infoCopy, v7, v8);
    v13 = objc_msgSend_copy(v10, v11, v12);
    APIToken = v9->_APIToken;
    v9->_APIToken = v13;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-web-auth-token", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v49 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v19 = v3;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v23 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v22, 1, 0, 0);
    v26 = objc_msgSend_CKPropertiesStyleString(v23, v24, v25);
    v28 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v27, 0, 1, 0);
    v31 = objc_msgSend_CKPropertiesStyleString(v28, v29, v30);
    *location = 138544130;
    *&location[4] = v21;
    v43 = 2048;
    selfCopy = self;
    v45 = 2114;
    v46 = v26;
    v47 = 2112;
    v48 = v31;
    _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Fetch web auth token operation <%{public}@: %p; %{public}@, %@> is starting", location, 0x2Au);
  }

  v4 = [CKDFetchWebAuthTokenURLRequest alloc];
  v6 = objc_msgSend_initWithOperation_(v4, v5, self);
  v9 = objc_msgSend_APIToken(self, v7, v8);
  objc_msgSend_setAPIToken_(v6, v10, v9);

  objc_initWeak(location, self);
  objc_initWeak(&from, v6);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_22525B94C;
  v38[3] = &unk_27854B208;
  objc_copyWeak(&v39, location);
  v38[4] = self;
  objc_copyWeak(&v40, &from);
  objc_msgSend_setTokenFetchedBlock_(v6, v11, v38);
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = sub_22525BB9C;
  v35 = &unk_278548748;
  objc_copyWeak(&v36, location);
  objc_copyWeak(&v37, &from);
  objc_msgSend_setCompletionBlock_(v6, v12, &v32);
  objc_msgSend_setRequest_(self, v13, v6, v32, v33, v34, v35);
  v16 = objc_msgSend_container(self, v14, v15);
  objc_msgSend_performRequest_(v16, v17, v6);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);

  v18 = *MEMORY[0x277D85DE8];
}

@end