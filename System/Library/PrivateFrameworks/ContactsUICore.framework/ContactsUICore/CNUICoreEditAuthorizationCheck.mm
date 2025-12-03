@interface CNUICoreEditAuthorizationCheck
+ (BOOL)isAuthorizationPasscodeEnabledOnDevice;
+ (id)containerProviderWithContactStore:(id)store;
+ (id)log;
- (BOOL)authorizationPasscodeEnabledOnDevice;
- (BOOL)canPerformValidAuthorizationCheck;
- (BOOL)editAltersRestrictedInformation;
- (BOOL)shouldBypassRestrictionsGivenAuthorizationResult:(int64_t)result;
- (BOOL)shouldPromptForPasscodeAuthorization;
- (BOOL)shouldRespectParentalRestrictions;
- (CNUICoreEditAuthorizationCheck)initWithContact:(id)contact parentContainer:(id)container ignoresParentalRestrictions:(BOOL)restrictions;
- (CNUICoreEditAuthorizationCheck)initWithContact:(id)contact parentContainer:(id)container ignoresParentalRestrictions:(BOOL)restrictions linkedParentContainerProvider:(id)provider;
- (CNUICoreEditAuthorizationCheck)initWithContact:(id)contact parentContainer:(id)container ignoresParentalRestrictions:(BOOL)restrictions screenTimePasscodeStatusCheck:(id)check linkedParentContainerProvider:(id)provider;
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

+ (id)containerProviderWithContactStore:(id)store
{
  storeCopy = store;
  v4 = [[CNUICoreContactStoreProductionFacade alloc] initWithContactStore:storeCopy];

  return v4;
}

- (CNUICoreEditAuthorizationCheck)initWithContact:(id)contact parentContainer:(id)container ignoresParentalRestrictions:(BOOL)restrictions
{
  restrictionsCopy = restrictions;
  v8 = MEMORY[0x1E695CE18];
  containerCopy = container;
  contactCopy = contact;
  v11 = objc_alloc_init(v8);
  v12 = objc_alloc_init(CNUICoreScreentimePasscodeInspector);
  v13 = [objc_opt_class() containerProviderWithContactStore:v11];
  v14 = [(CNUICoreEditAuthorizationCheck *)self initWithContact:contactCopy parentContainer:containerCopy ignoresParentalRestrictions:restrictionsCopy screenTimePasscodeStatusCheck:v12 linkedParentContainerProvider:v13];

  return v14;
}

- (CNUICoreEditAuthorizationCheck)initWithContact:(id)contact parentContainer:(id)container ignoresParentalRestrictions:(BOOL)restrictions linkedParentContainerProvider:(id)provider
{
  restrictionsCopy = restrictions;
  providerCopy = provider;
  containerCopy = container;
  contactCopy = contact;
  v13 = objc_alloc_init(CNUICoreScreentimePasscodeInspector);
  v14 = [(CNUICoreEditAuthorizationCheck *)self initWithContact:contactCopy parentContainer:containerCopy ignoresParentalRestrictions:restrictionsCopy screenTimePasscodeStatusCheck:v13 linkedParentContainerProvider:providerCopy];

  return v14;
}

- (CNUICoreEditAuthorizationCheck)initWithContact:(id)contact parentContainer:(id)container ignoresParentalRestrictions:(BOOL)restrictions screenTimePasscodeStatusCheck:(id)check linkedParentContainerProvider:(id)provider
{
  contactCopy = contact;
  containerCopy = container;
  checkCopy = check;
  providerCopy = provider;
  v21.receiver = self;
  v21.super_class = CNUICoreEditAuthorizationCheck;
  v17 = [(CNUICoreEditAuthorizationCheck *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contact, contact);
    objc_storeStrong(&v18->_parentContainer, container);
    v18->_ignoresParentalRestrictions = restrictions;
    objc_storeStrong(&v18->_screenTimePasscodeStatusCheck, check);
    objc_storeStrong(&v18->_linkedParentContainerProvider, provider);
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

  shouldRespectParentalRestrictions = [(CNUICoreEditAuthorizationCheck *)self shouldRespectParentalRestrictions];
  editAltersRestrictedInformation = [(CNUICoreEditAuthorizationCheck *)self editAltersRestrictedInformation];
  v6 = editAltersRestrictedInformation;
  if (!shouldRespectParentalRestrictions || !editAltersRestrictedInformation || ![(CNUICoreEditAuthorizationCheck *)self authorizationPasscodeEnabledOnDevice])
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13[0] = 67109632;
      v13[1] = shouldRespectParentalRestrictions;
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

- (BOOL)shouldBypassRestrictionsGivenAuthorizationResult:(int64_t)result
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
  if (result != 2 && (v7 & 1) == 0)
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
    v14 = result == 2;
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&dword_1A31E6000, v8, OS_LOG_TYPE_INFO, "- should bypass restrictions when saving (%hhd,%hhd,%hhd) -", v12, 0x14u);
  }

LABEL_16:

  return v10;
}

- (BOOL)canPerformValidAuthorizationCheck
{
  contact = [(CNUICoreEditAuthorizationCheck *)self contact];

  parentContainer = [(CNUICoreEditAuthorizationCheck *)self parentContainer];

  if (parentContainer)
  {
    parentContainer2 = [(CNUICoreEditAuthorizationCheck *)self parentContainer];
    LOBYTE(v6) = parentContainer2 != 0;
  }

  else
  {
    v7 = *MEMORY[0x1E6996530];
    parentContainer2 = [(CNUICoreEditAuthorizationCheck *)self contact];
    linkedContacts = [parentContainer2 linkedContacts];
    v6 = (*(v7 + 16))(v7, linkedContacts) ^ 1;
  }

  if (contact)
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
  ignoresParentalRestrictions = [(CNUICoreEditAuthorizationCheck *)self ignoresParentalRestrictions];
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = @"restrictions will be enforced";
    if (ignoresParentalRestrictions)
    {
      v4 = @"restrictions will be ignored";
    }

    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1A31E6000, v3, OS_LOG_TYPE_INFO, "%{public}@", &v6, 0xCu);
  }

  return !ignoresParentalRestrictions;
}

- (BOOL)editAltersRestrictedInformation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695CE70];
  contact = [(CNUICoreEditAuthorizationCheck *)self contact];
  LOBYTE(v3) = [v3 isWhitelistedContact:contact];

  parentContainer = [(CNUICoreEditAuthorizationCheck *)self parentContainer];
  isGuardianRestricted = [parentContainer isGuardianRestricted];

  contact2 = [(CNUICoreEditAuthorizationCheck *)self contact];
  linkedContacts = [contact2 linkedContacts];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__CNUICoreEditAuthorizationCheck_editAltersRestrictedInformation__block_invoke;
  v17[3] = &unk_1E76E81C0;
  v17[4] = self;
  v9 = [linkedContacts _cn_any:v17];

  v10 = v3 | isGuardianRestricted | v9;
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
  screenTimePasscodeStatusCheck = [(CNUICoreEditAuthorizationCheck *)self screenTimePasscodeStatusCheck];
  screentimePasscodeStatus = [screenTimePasscodeStatusCheck screentimePasscodeStatus];

  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"passcode is disabled";
    if (screentimePasscodeStatus == 2)
    {
      v5 = @"passode is enabled";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1A31E6000, v4, OS_LOG_TYPE_INFO, "%{public}@", &v7, 0xCu);
  }

  return screentimePasscodeStatus == 2;
}

@end