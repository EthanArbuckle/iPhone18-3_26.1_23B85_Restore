@interface CKDResetUserPrivacySettingsOperation
- (id)activityCreate;
- (void)main;
@end

@implementation CKDResetUserPrivacySettingsOperation

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/reset-user-privacy-settings", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v3 = [CKDResetUserPrivacySettingsURLRequest alloc];
  v5 = objc_msgSend_initWithOperation_(v3, v4, self);
  objc_initWeak(&location, self);
  objc_initWeak(&from, v5);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = sub_2252632B8;
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