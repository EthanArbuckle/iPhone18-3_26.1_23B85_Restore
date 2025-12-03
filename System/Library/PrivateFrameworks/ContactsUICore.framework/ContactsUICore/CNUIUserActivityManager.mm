@interface CNUIUserActivityManager
+ (OS_os_log)log;
- (CNUIUserActivityManager)initWithApplicationWorkspace:(id)workspace;
- (CNUIUserActivityManager)initWithContactStore:(id)store;
- (CNUIUserActivityManager)initWithContactStore:(id)store applicationWorkspace:(id)workspace;
- (CNUIUserActivityManager)initWithContactStore:(id)store applicationWorkspace:(id)workspace interactionDonor:(id)donor;
- (id)makeActivityAdvertisingViewingGroups;
- (id)makeActivityAdvertisingViewingList;
- (id)makeActivityAdvertisingViewingOfContact:(id)contact;
- (void)publishRequestToCreateContact:(id)contact;
- (void)publishRequestToEditContact:(id)contact;
- (void)updateUserActivityState:(id)state withContentsOfContact:(id)contact;
- (void)updateUserActivityState:(id)state withContentsOfListTopContact:(id)contact displayedContact:(id)displayedContact searchString:(id)string isShowingGroups:(BOOL)groups;
@end

@implementation CNUIUserActivityManager

+ (OS_os_log)log
{
  if (log_cn_once_token_1_2 != -1)
  {
    +[CNUIUserActivityManager log];
  }

  v3 = log_cn_once_object_1_2;

  return v3;
}

uint64_t __30__CNUIUserActivityManager_log__block_invoke()
{
  log_cn_once_object_1_2 = os_log_create("contactsui", "activity");

  return MEMORY[0x1EEE66BB8]();
}

- (CNUIUserActivityManager)initWithContactStore:(id)store
{
  storeCopy = store;
  v5 = objc_alloc_init(CNLSApplicationWorkspace);
  v6 = [(CNUIUserActivityManager *)self initWithContactStore:storeCopy applicationWorkspace:v5];

  return v6;
}

- (CNUIUserActivityManager)initWithApplicationWorkspace:(id)workspace
{
  v4 = MEMORY[0x1E695CE18];
  workspaceCopy = workspace;
  v6 = objc_alloc_init(v4);
  v7 = [(CNUIUserActivityManager *)self initWithContactStore:v6 applicationWorkspace:workspaceCopy];

  return v7;
}

- (CNUIUserActivityManager)initWithContactStore:(id)store applicationWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  storeCopy = store;
  v8 = objc_alloc_init(CNUIInteractionDonor);
  v9 = [(CNUIUserActivityManager *)self initWithContactStore:storeCopy applicationWorkspace:workspaceCopy interactionDonor:v8];

  return v9;
}

- (CNUIUserActivityManager)initWithContactStore:(id)store applicationWorkspace:(id)workspace interactionDonor:(id)donor
{
  storeCopy = store;
  workspaceCopy = workspace;
  donorCopy = donor;
  if (storeCopy)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_7 != -1)
  {
    [CNUIUserActivityManager initWithContactStore:applicationWorkspace:interactionDonor:];
  }

  v12 = CNGuardOSLog_cn_once_object_0_7;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_7, OS_LOG_TYPE_FAULT))
  {
    [(CNUICoreContactRefetcher *)v12 initWithContactStore:v13 contactsToRefetch:v14 keysToFetch:v15, v16, v17, v18, v19];
    if (workspaceCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (workspaceCopy)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_7 != -1)
  {
    [CNUIUserActivityManager initWithContactStore:applicationWorkspace:interactionDonor:];
  }

  v20 = CNGuardOSLog_cn_once_object_0_7;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_7, OS_LOG_TYPE_FAULT))
  {
    [(CNUIUserActivityManager *)v20 initWithContactStore:v21 applicationWorkspace:v22 interactionDonor:v23, v24, v25, v26, v27];
  }

LABEL_10:
  if (!donorCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_7 != -1)
    {
      [CNUIUserActivityManager initWithContactStore:applicationWorkspace:interactionDonor:];
    }

    v28 = CNGuardOSLog_cn_once_object_0_7;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_7, OS_LOG_TYPE_FAULT))
    {
      [(CNUIUserActivityManager *)v28 initWithContactStore:v29 applicationWorkspace:v30 interactionDonor:v31, v32, v33, v34, v35];
    }
  }

  v40.receiver = self;
  v40.super_class = CNUIUserActivityManager;
  v36 = [(CNUIUserActivityManager *)&v40 init];
  v37 = v36;
  if (v36)
  {
    objc_storeStrong(&v36->_contactStore, store);
    objc_storeStrong(&v37->_applicationWorkspace, workspace);
    objc_storeStrong(&v37->_interactionDonor, donor);
    v38 = v37;
  }

  return v37;
}

- (void)publishRequestToCreateContact:(id)contact
{
  v6 = objc_alloc_init(CNUICreateContactIntent);
  v4 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v6 response:0];
  interactionDonor = [(CNUIUserActivityManager *)self interactionDonor];
  [interactionDonor donateInteraction:v4];
}

- (void)publishRequestToEditContact:(id)contact
{
  contactCopy = contact;
  v5 = objc_alloc(MEMORY[0x1E696B090]);
  v6 = [v5 initWithActivityType:CNUIActivityTypeEditingContact];
  contactStore = [(CNUIUserActivityManager *)self contactStore];
  v8 = [contactStore userActivityUserInfoForContact:contactCopy];
  [v6 setUserInfo:v8];

  applicationWorkspace = [(CNUIUserActivityManager *)self applicationWorkspace];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CNUIUserActivityManager_publishRequestToEditContact___block_invoke;
  v11[3] = &unk_1E76E8FA0;
  v11[4] = self;
  v12 = contactCopy;
  v10 = contactCopy;
  [applicationWorkspace openUserActivity:v6 inApplication:0 options:0 completionHandler:v11];
}

void __55__CNUIUserActivityManager_publishRequestToEditContact___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [objc_opt_class() log];
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A31E6000, v7, OS_LOG_TYPE_INFO, "opened contacts successfully", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __55__CNUIUserActivityManager_publishRequestToEditContact___block_invoke_cold_1(a1, v5, v7);
  }
}

- (id)makeActivityAdvertisingViewingOfContact:(id)contact
{
  v13 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  contactStore = [(CNUIUserActivityManager *)self contactStore];
  v6 = [contactStore userActivityUserInfoForContact:contactCopy];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E696B090]);
    v8 = [v7 initWithActivityType:CNUIActivityTypeViewingContact];
    [v8 setEligibleForSearch:1];
    [v8 setEligibleForPublicIndexing:1];
    [v8 setEligibleForHandoff:1];
    [v8 _setEligibleForPrediction:0];
    v9 = [objc_opt_class() log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = contactCopy;
      _os_log_impl(&dword_1A31E6000, v9, OS_LOG_TYPE_INFO, "activity continuity - %@ needs to save the user activity", &v11, 0xCu);
    }
  }

  else
  {
    v9 = [objc_opt_class() log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(CNUIUserActivityManager *)contactCopy makeActivityAdvertisingViewingOfContact:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (void)updateUserActivityState:(id)state withContentsOfListTopContact:(id)contact displayedContact:(id)displayedContact searchString:(id)string isShowingGroups:(BOOL)groups
{
  groupsCopy = groups;
  v40 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  contactCopy = contact;
  displayedContactCopy = displayedContact;
  stringCopy = string;
  if (contactCopy && ([MEMORY[0x1E695CD80] stringFromContact:contactCopy style:0], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v16;
    [stateCopy setTitle:v16];
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  else
  {
    v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"NO_NAME" value:&stru_1F162C170 table:@"Localized"];
    [stateCopy setTitle:v20];

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (!contactCopy)
    {
      goto LABEL_6;
    }
  }

  contactStore = [(CNUIUserActivityManager *)self contactStore];
  v22 = [contactStore userActivityUserInfoForContact:contactCopy];
  [v18 setObject:v22 forKeyedSubscript:CNUIActivityUserInformationListTopContactKey];

LABEL_6:
  if (displayedContactCopy)
  {
    contactStore2 = [(CNUIUserActivityManager *)self contactStore];
    v24 = [contactStore2 userActivityUserInfoForContact:displayedContactCopy];
    [v18 setObject:v24 forKeyedSubscript:CNUIActivityUserInformationDisplayedContactKey];
  }

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    [v18 setObject:stringCopy forKeyedSubscript:CNUIActivityUserInformationSearchStringKey];
  }

  v25 = [MEMORY[0x1E696AD98] numberWithBool:groupsCopy];
  [v18 setObject:v25 forKeyedSubscript:CNUIActivityUserInformationIsShowingGroupsKey];

  [stateCopy setUserInfo:v18];
  v26 = MEMORY[0x1E695DFD8];
  userInfo = [stateCopy userInfo];
  allKeys = [userInfo allKeys];
  v29 = [v26 setWithArray:allKeys];
  [stateCopy setRequiredUserInfoKeys:v29];

  if (objc_opt_respondsToSelector())
  {
    searchableItemAttributeSetForUserActivity = [contactCopy searchableItemAttributeSetForUserActivity];
    [stateCopy setContentAttributeSet:searchableItemAttributeSetForUserActivity];
  }

  v31 = [objc_opt_class() log];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    title = [stateCopy title];
    userInfo2 = [stateCopy userInfo];
    v34 = 138412802;
    v35 = stateCopy;
    v36 = 2112;
    v37 = title;
    v38 = 2112;
    v39 = userInfo2;
    _os_log_impl(&dword_1A31E6000, v31, OS_LOG_TYPE_INFO, "activity continuity - updated %@ with title %@, userInfo %@", &v34, 0x20u);
  }
}

- (void)updateUserActivityState:(id)state withContentsOfContact:(id)contact
{
  v27 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  contactCopy = contact;
  v8 = [MEMORY[0x1E695CD80] stringFromContact:contactCopy style:0];
  if (v8)
  {
    [stateCopy setTitle:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"NO_NAME" value:&stru_1F162C170 table:@"Localized"];
    [stateCopy setTitle:v10];
  }

  contactStore = [(CNUIUserActivityManager *)self contactStore];
  v12 = [contactStore userActivityUserInfoForContact:contactCopy];
  [stateCopy setUserInfo:v12];

  v13 = MEMORY[0x1E695DFD8];
  userInfo = [stateCopy userInfo];
  allKeys = [userInfo allKeys];
  v16 = [v13 setWithArray:allKeys];
  [stateCopy setRequiredUserInfoKeys:v16];

  if (objc_opt_respondsToSelector())
  {
    searchableItemAttributeSetForUserActivity = [contactCopy searchableItemAttributeSetForUserActivity];
    [stateCopy setContentAttributeSet:searchableItemAttributeSetForUserActivity];
  }

  v18 = [objc_opt_class() log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    title = [stateCopy title];
    userInfo2 = [stateCopy userInfo];
    v21 = 138412802;
    v22 = stateCopy;
    v23 = 2112;
    v24 = title;
    v25 = 2112;
    v26 = userInfo2;
    _os_log_impl(&dword_1A31E6000, v18, OS_LOG_TYPE_INFO, "activity continuity - updated %@ with title %@, userInfo %@", &v21, 0x20u);
  }
}

- (id)makeActivityAdvertisingViewingList
{
  v2 = objc_alloc(MEMORY[0x1E696B090]);
  v3 = [v2 initWithActivityType:CNUIActivityTypeViewingList];

  return v3;
}

- (id)makeActivityAdvertisingViewingGroups
{
  v2 = objc_alloc(MEMORY[0x1E696B090]);
  v3 = [v2 initWithActivityType:CNUIActivityTypeViewingGroups];

  return v3;
}

void __55__CNUIUserActivityManager_publishRequestToEditContact___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1A31E6000, log, OS_LOG_TYPE_ERROR, "error opening contacts to edit mode for contact: %@, error: %@", &v4, 0x16u);
}

- (void)makeActivityAdvertisingViewingOfContact:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_DEBUG, "activity continuity - %@ has no user activity", &v2, 0xCu);
}

@end