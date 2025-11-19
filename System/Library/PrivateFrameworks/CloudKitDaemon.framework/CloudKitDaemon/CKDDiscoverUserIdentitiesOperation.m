@interface CKDDiscoverUserIdentitiesOperation
- (CKDDiscoverUserIdentitiesOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)activityCreate;
- (void)_discoverIdentitiesWithLookupInfos:(id)a3 completionBlock:(id)a4;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_handleDiscoveredIdentity:(id)a3 lookupInfo:(id)a4 responseCode:(id)a5;
- (void)main;
@end

@implementation CKDDiscoverUserIdentitiesOperation

- (CKDDiscoverUserIdentitiesOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CKDDiscoverUserIdentitiesOperation;
  v9 = [(CKDOperation *)&v13 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_userIdentityLookupInfos(v6, v7, v8);
    userIdentityLookupInfos = v9->_userIdentityLookupInfos;
    v9->_userIdentityLookupInfos = v10;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/discover-user-identities", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_handleDiscoveredIdentity:(id)a3 lookupInfo:(id)a4 responseCode:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v37 = v9;
    v38 = 2112;
    v39 = v8;
    _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "For lookup info %@, discovered identity %@", buf, 0x16u);
  }

  if (objc_msgSend_code(v10, v12, v13) == 1)
  {
    if (v8)
    {
      v16 = objc_msgSend_callbackQueue(self, v14, v15);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_225260FE8;
      block[3] = &unk_278546990;
      block[4] = self;
      v34 = v9;
      v35 = v8;
      dispatch_async(v16, block);
    }
  }

  else
  {
    v17 = MEMORY[0x277CBC560];
    v18 = *MEMORY[0x277CBC120];
    v19 = sub_2253962A4(v10);
    v22 = objc_msgSend_request(self, v20, v21);
    v23 = sub_225395734(v22, v10);
    v25 = objc_msgSend_errorWithDomain_code_userInfo_format_(v17, v24, v18, v19, v23, @"Error discovering identity for lookup info %@", v9);
    objc_msgSend_setError_(self, v26, v25);

    v29 = objc_msgSend_request(self, v27, v28);
    objc_msgSend_cancel(v29, v30, v31);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_discoverIdentitiesWithLookupInfos:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_count(v6, v8, v9))
  {
    v10 = [CKDDiscoverUserIdentitiesURLRequest alloc];
    v11 = objc_opt_class();
    v14 = objc_msgSend_adopterProvidedLookupInfos(v11, v12, v13);
    v16 = objc_msgSend_initWithOperation_lookupInfos_adopterProvidedLookupInfos_(v10, v15, self, v6, v14);
    objc_initWeak(&location, self);
    objc_initWeak(&from, v16);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_225261298;
    v31[3] = &unk_27854B3D0;
    objc_copyWeak(&v32, &location);
    objc_msgSend_setProgressBlock_(v16, v17, v31);
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = sub_22526133C;
    v27 = &unk_27854B3F8;
    objc_copyWeak(&v29, &location);
    v28 = v7;
    objc_copyWeak(&v30, &from);
    objc_msgSend_setCompletionBlock_(v16, v18, &v24);
    objc_msgSend_setRequest_(self, v19, v16, v24, v25, v26, v27);
    v22 = objc_msgSend_container(self, v20, v21);
    objc_msgSend_performRequest_(v22, v23, v16);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)main
{
  v4 = objc_msgSend_userIdentityLookupInfos(self, a2, v2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22526148C;
  v6[3] = &unk_2785470C0;
  v6[4] = self;
  objc_msgSend__discoverIdentitiesWithLookupInfos_completionBlock_(self, v5, v4, v6);
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = a3;
  objc_msgSend_setDiscoverUserIdentitiesProgressBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDDiscoverUserIdentitiesOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:v4];
}

@end