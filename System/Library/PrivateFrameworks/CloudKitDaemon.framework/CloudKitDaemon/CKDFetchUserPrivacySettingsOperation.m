@interface CKDFetchUserPrivacySettingsOperation
- (CKDFetchUserPrivacySettingsOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)activityCreate;
- (void)_handleRetrievedPrivacySettings:(id)a3;
- (void)main;
@end

@implementation CKDFetchUserPrivacySettingsOperation

- (CKDFetchUserPrivacySettingsOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v5.receiver = self;
  v5.super_class = CKDFetchUserPrivacySettingsOperation;
  return [(CKDOperation *)&v5 initWithOperationInfo:a3 container:a4];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/get-user-privacy-settings", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_handleRetrievedPrivacySettings:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_22506F000, v5, OS_LOG_TYPE_INFO, "Found user privacy settings %@", &v13, 0xCu);
  }

  if (objc_msgSend_hasDiscoverable(v4, v6, v7))
  {
    if (objc_msgSend_discoverable(v4, v8, v9))
    {
      objc_msgSend_setDiscoverable_(self, v10, 1);
    }

    else
    {
      objc_msgSend_setDiscoverable_(self, v10, 2);
    }
  }

  else
  {
    objc_msgSend_setDiscoverable_(self, v8, 0);
  }

  objc_msgSend_finishWithError_(self, v11, 0);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v3 = [CKDFetchUserPrivacySettingsURLRequest alloc];
  v5 = objc_msgSend_initWithOperation_(v3, v4, self);
  objc_initWeak(&location, self);
  objc_initWeak(&from, v5);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = sub_225263058;
  v15 = &unk_278548748;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  objc_msgSend_setCompletionBlock_(v5, v6, &v12);
  objc_msgSend_setRequest_(self, v7, v5, v12, v13, v14, v15);
  v10 = objc_msgSend_container(self, v8, v9);
  objc_msgSend_performRequest_(v10, v11, v5);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

@end