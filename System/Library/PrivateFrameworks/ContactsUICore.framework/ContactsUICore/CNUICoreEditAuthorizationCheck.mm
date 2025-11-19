@interface CNUICoreEditAuthorizationCheck
+ (BOOL)isAuthorizationPasscodeEnabledOnDevice;
+ (id)containerProviderWithContactStore:(id)a3;
+ (id)log;
- (BOOL)authorizationPasscodeEnabledOnDevice;
- (BOOL)canPerformValidAuthorizationCheck;
- (BOOL)editAltersRestrictedInformation;
- (BOOL)shouldBypassRestrictionsGivenAuthorizationResult:(int64_t)a3;
- (BOOL)shouldPromptForPasscodeAuthorization;
- (BOOL)shouldRespectParentalRestrictions;
- (CNUICoreEditAuthorizationCheck)initWithContact:(id)a3 parentContainer:(id)a4 ignoresParentalRestrictions:(BOOL)a5;
- (CNUICoreEditAuthorizationCheck)initWithContact:(id)a3 parentContainer:(id)a4 ignoresParentalRestrictions:(BOOL)a5 linkedParentContainerProvider:(id)a6;
- (CNUICoreEditAuthorizationCheck)initWithContact:(id)a3 parentContainer:(id)a4 ignoresParentalRestrictions:(BOOL)a5 screenTimePasscodeStatusCheck:(id)a6 linkedParentContainerProvider:(id)a7;
@end

@implementation CNUICoreEditAuthorizationCheck

+ (id)log
{
  if (log_cn_once_token_1_4 != -1)
  {
    +[CNUICoreEditAuthorizationCheck log];
  }

  v3 = log_cn_once_object_1_4;

  return v3;
}

uint64_t __37__CNUICoreEditAuthorizationCheck_log__block_invoke()
{
  log_cn_once_object_1_4 = os_log_create("com.apple.contactsui", "passcode");

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)isAuthorizationPasscodeEnabledOnDevice
{
  v2 = objc_alloc_init(CNUICoreScreentimePasscodeInspector);
  v3 = [(CNUICoreScreentimePasscodeInspector *)v2 screentimePasscodeStatus]== 2;

  return v3;
}

+ (id)containerProviderWithContactStore:(id)a3
{
  v3 = a3;
  v4 = [[CNUICoreContactStoreProductionFacade alloc] initWithContactStore:v3];

  return v4;
}

- (CNUICoreEditAuthorizationCheck)initWithContact:(id)a3 parentContainer:(id)a4 ignoresParentalRestrictions:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E695CE18];
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v8);
  v12 = objc_alloc_init(CNUICoreScreentimePasscodeInspector);
  v13 = [objc_opt_class() containerProviderWithContactStore:v11];
  v14 = [(CNUICoreEditAuthorizationCheck *)self initWithContact:v10 parentContainer:v9 ignoresParentalRestrictions:v5 screenTimePasscodeStatusCheck:v12 linkedParentContainerProvider:v13];

  return v14;
}

- (CNUICoreEditAuthorizationCheck)initWithContact:(id)a3 parentContainer:(id)a4 ignoresParentalRestrictions:(BOOL)a5 linkedParentContainerProvider:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(CNUICoreScreentimePasscodeInspector);
  v14 = [(CNUICoreEditAuthorizationCheck *)self initWithContact:v12 parentContainer:v11 ignoresParentalRestrictions:v6 screenTimePasscodeStatusCheck:v13 linkedParentContainerProvider:v10];

  return v14;
}

- (CNUICoreEditAuthorizationCheck)initWithContact:(id)a3 parentContainer:(id)a4 ignoresParentalRestrictions:(BOOL)a5 screenTimePasscodeStatusCheck:(id)a6 linkedParentContainerProvider:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CNUICoreEditAuthorizationCheck;
  v17 = [(CNUICoreEditAuthorizationCheck *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contact, a3);
    objc_storeStrong(&v18->_parentContainer, a4);
    v18->_ignoresParentalRestrictions = a5;
    objc_storeStrong(&v18->_screenTimePasscodeStatusCheck, a6);
    objc_storeStrong(&v18->_linkedParentContainerProvider, a7);
    v19 = v18;
  }

  return v18;
}

- (BOOL)shouldPromptForPasscodeAuthorization
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&dword_1A31E6000, v3, OS_LOG_TYPE_INFO, "- will check if editing contact requires passcode authorization -", v13, 2u);
  }

  if (![(CNUICoreEditAuthorizationCheck *)self canPerformValidAuthorizationCheck])
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13[0]) = 0;
      v9 = "- can't determine if editing contact requires passcode authorization -";
      v10 = v7;
      v11 = 2;
LABEL_13:
      _os_log_impl(&dword_1A31E6000, v10, OS_LOG_TYPE_INFO, v9, v13, v11);
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v4 = [(CNUICoreEditAuthorizationCheck *)self shouldRespectParentalRestrictions];
  v5 = [(CNUICoreEditAuthorizationCheck *)self editAltersRestrictedInformation];
  v6 = v5;
  if (!v4 || !v5 || ![(CNUICoreEditAuthorizationCheck *)self authorizationPasscodeEnabledOnDevice])
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13[0] = 67109632;
      v13[1] = v4;
      v14 = 1024;
      v15 = v6;
      v16 = 1024;
      v17 = 0;
      v9 = "- should not show authorization prompt (%hhd,%hhd,%hhd) -";
      v10 = v7;
      v11 = 20;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v7 = [objc_opt_class() log];
  v8 = 1;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&dword_1A31E6000, v7, OS_LOG_TYPE_INFO, "- should show authorization prompt -", v13, 2u);
  }

LABEL_15:

  return v8;
}

- (BOOL)shouldBypassRestrictionsGivenAuthorizationResult:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_1A31E6000, v5, OS_LOG_TYPE_INFO, "- will check if should bypass restrictions when saving -", v12, 2u);
  }

  if (![(CNUICoreEditAuthorizationCheck *)self canPerformValidAuthorizationCheck])
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12[0]) = 0;
      v9 = "- can't determine if bypass of restrictions should be allowed -";
      goto LABEL_14;
    }

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  if (![(CNUICoreEditAuthorizationCheck *)self editAltersRestrictedInformation])
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12[0]) = 0;
      v9 = "- should not bypass restrictions when saving because info isn't restricted-";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v6 = 0;
  v7 = ![(CNUICoreEditAuthorizationCheck *)self shouldRespectParentalRestrictions];
  if (a3 != 2 && (v7 & 1) == 0)
  {
    if ([(CNUICoreEditAuthorizationCheck *)self authorizationPasscodeEnabledOnDevice])
    {
      v8 = [objc_opt_class() log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12[0]) = 0;
        v9 = "- should not bypass restrictions when saving -";
LABEL_14:
        _os_log_impl(&dword_1A31E6000, v8, OS_LOG_TYPE_INFO, v9, v12, 2u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v6 = 1;
  }

  v8 = [objc_opt_class() log];
  v10 = 1;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12[0] = 67109632;
    v12[1] = v7;
    v13 = 1024;
    v14 = a3 == 2;
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&dword_1A31E6000, v8, OS_LOG_TYPE_INFO, "- should bypass restrictions when saving (%hhd,%hhd,%hhd) -", v12, 0x14u);
  }

LABEL_16:

  return v10;
}

- (BOOL)canPerformValidAuthorizationCheck
{
  v3 = [(CNUICoreEditAuthorizationCheck *)self contact];

  v4 = [(CNUICoreEditAuthorizationCheck *)self parentContainer];

  if (v4)
  {
    v5 = [(CNUICoreEditAuthorizationCheck *)self parentContainer];
    LOBYTE(v6) = v5 != 0;
  }

  else
  {
    v7 = *MEMORY[0x1E6996530];
    v5 = [(CNUICoreEditAuthorizationCheck *)self contact];
    v8 = [v5 linkedContacts];
    v6 = (*(v7 + 16))(v7, v8) ^ 1;
  }

  if (v3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (BOOL)shouldRespectParentalRestrictions
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [(CNUICoreEditAuthorizationCheck *)self ignoresParentalRestrictions];
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = @"restrictions will be enforced";
    if (v2)
    {
      v4 = @"restrictions will be ignored";
    }

    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1A31E6000, v3, OS_LOG_TYPE_INFO, "%{public}@", &v6, 0xCu);
  }

  return !v2;
}

- (BOOL)editAltersRestrictedInformation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695CE70];
  v4 = [(CNUICoreEditAuthorizationCheck *)self contact];
  LOBYTE(v3) = [v3 isWhitelistedContact:v4];

  v5 = [(CNUICoreEditAuthorizationCheck *)self parentContainer];
  v6 = [v5 isGuardianRestricted];

  v7 = [(CNUICoreEditAuthorizationCheck *)self contact];
  v8 = [v7 linkedContacts];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__CNUICoreEditAuthorizationCheck_editAltersRestrictedInformation__block_invoke;
  v17[3] = &unk_1E76E81C0;
  v17[4] = self;
  v9 = [v8 _cn_any:v17];

  v10 = v3 | v6 | v9;
  v11 = [objc_opt_class() log];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v12)
    {
      *buf = 0;
      v13 = "editing is permitted";
      v14 = v11;
      v15 = 2;
LABEL_6:
      _os_log_impl(&dword_1A31E6000, v14, OS_LOG_TYPE_INFO, v13, buf, v15);
    }
  }

  else if (v12)
  {
    *buf = 67109632;
    v19 = 0;
    v20 = 1024;
    v21 = 0;
    v22 = 1024;
    v23 = 0;
    v13 = "editing is restricted (%hhd,%hhd,%hhd)";
    v14 = v11;
    v15 = 20;
    goto LABEL_6;
  }

  return v10 & 1;
}

uint64_t __65__CNUICoreEditAuthorizationCheck_editAltersRestrictedInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 linkedParentContainerProvider];
  v5 = [v4 containerForContact:v3];

  v6 = [v5 isGuardianRestricted];
  return v6;
}

- (BOOL)authorizationPasscodeEnabledOnDevice
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(CNUICoreEditAuthorizationCheck *)self screenTimePasscodeStatusCheck];
  v3 = [v2 screentimePasscodeStatus];

  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"passcode is disabled";
    if (v3 == 2)
    {
      v5 = @"passode is enabled";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1A31E6000, v4, OS_LOG_TYPE_INFO, "%{public}@", &v7, 0xCu);
  }

  return v3 == 2;
}

@end