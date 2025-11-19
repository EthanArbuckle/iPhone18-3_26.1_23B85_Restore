@interface CKDBackingPlatformAccount
- (CKDBackingPlatformAccount)initWithAppleAccount:(id)a3;
- (id)ckAccount;
- (void)updateAccountPropertiesAndSaveAccount:(id)a3;
@end

@implementation CKDBackingPlatformAccount

- (id)ckAccount
{
  v3 = objc_msgSend_appleAccount(self, a2, v2);
  v6 = objc_msgSend_ck_cloudKitAccount(v3, v4, v5);

  return v6;
}

- (CKDBackingPlatformAccount)initWithAppleAccount:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_ck_cloudKitAccount(v4, v5, v6);

  if (v7)
  {
    v12.receiver = self;
    v12.super_class = CKDBackingPlatformAccount;
    self = [(CKDBackingAccount *)&v12 initWithAppleAccount:v4];
    v8 = self;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      *buf = 134218242;
      v14 = v4;
      v15 = 2112;
      v16 = v4;
      _os_log_fault_impl(&dword_22506F000, v9, OS_LOG_TYPE_FAULT, "There's an iCloud account without a CloudKit Child Account. Ignoring it. %p: %@", buf, 0x16u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)updateAccountPropertiesAndSaveAccount:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_sharedAccountStore(CKDAccountStore, v5, v6);
  v10 = objc_msgSend_accountStore(v7, v8, v9);

  v13 = objc_msgSend_appleAccount(self, v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_225116534;
  v17[3] = &unk_278545C50;
  v19 = self;
  v20 = v4;
  v18 = v10;
  v14 = v10;
  v15 = v4;
  objc_msgSend_aa_updatePropertiesForAppleAccount_completion_(v14, v16, v13, v17);
}

@end