@interface CKDSaveUserPrivacySettingsOperation
- (CKDSaveUserPrivacySettingsOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)activityCreate;
- (void)main;
@end

@implementation CKDSaveUserPrivacySettingsOperation

- (CKDSaveUserPrivacySettingsOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CKDSaveUserPrivacySettingsOperation;
  v9 = [(CKDOperation *)&v11 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v9->_discoverable = objc_msgSend_discoverable(v6, v7, v8);
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/save-user-privacy-settings", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v3 = [CKDSaveUserPrivacySettingsURLRequest alloc];
  v5 = objc_msgSend_initWithOperation_(v3, v4, self);
  if (objc_msgSend_discoverable(self, v6, v7))
  {
    v10 = objc_msgSend_discoverable(self, v8, v9) == 1;
    objc_msgSend_setDiscoverable_(v5, v11, v10);
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, v5);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = sub_2252635DC;
  v21 = &unk_278548748;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  objc_msgSend_setCompletionBlock_(v5, v12, &v18);
  objc_msgSend_setRequest_(self, v13, v5, v18, v19, v20, v21);
  v16 = objc_msgSend_container(self, v14, v15);
  objc_msgSend_performRequest_(v16, v17, v5);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

@end