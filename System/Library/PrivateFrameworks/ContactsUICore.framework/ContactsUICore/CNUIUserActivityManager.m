@interface CNUIUserActivityManager
+ (OS_os_log)log;
- (CNUIUserActivityManager)initWithApplicationWorkspace:(id)a3;
- (CNUIUserActivityManager)initWithContactStore:(id)a3;
- (CNUIUserActivityManager)initWithContactStore:(id)a3 applicationWorkspace:(id)a4;
- (CNUIUserActivityManager)initWithContactStore:(id)a3 applicationWorkspace:(id)a4 interactionDonor:(id)a5;
- (id)makeActivityAdvertisingViewingGroups;
- (id)makeActivityAdvertisingViewingList;
- (id)makeActivityAdvertisingViewingOfContact:(id)a3;
- (void)publishRequestToCreateContact:(id)a3;
- (void)publishRequestToEditContact:(id)a3;
- (void)updateUserActivityState:(id)a3 withContentsOfContact:(id)a4;
- (void)updateUserActivityState:(id)a3 withContentsOfListTopContact:(id)a4 displayedContact:(id)a5 searchString:(id)a6 isShowingGroups:(BOOL)a7;
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

- (CNUIUserActivityManager)initWithContactStore:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNLSApplicationWorkspace);
  v6 = [(CNUIUserActivityManager *)self initWithContactStore:v4 applicationWorkspace:v5];

  return v6;
}

- (CNUIUserActivityManager)initWithApplicationWorkspace:(id)a3
{
  v4 = MEMORY[0x1E695CE18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(CNUIUserActivityManager *)self initWithContactStore:v6 applicationWorkspace:v5];

  return v7;
}

- (CNUIUserActivityManager)initWithContactStore:(id)a3 applicationWorkspace:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CNUIInteractionDonor);
  v9 = [(CNUIUserActivityManager *)self initWithContactStore:v7 applicationWorkspace:v6 interactionDonor:v8];

  return v9;
}

- (CNUIUserActivityManager)initWithContactStore:(id)a3 applicationWorkspace:(id)a4 interactionDonor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
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
    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (v10)
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
  if (!v11)
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
    objc_storeStrong(&v36->_contactStore, a3);
    objc_storeStrong(&v37->_applicationWorkspace, a4);
    objc_storeStrong(&v37->_interactionDonor, a5);
    v38 = v37;
  }

  return v37;
}

- (void)publishRequestToCreateContact:(id)a3
{
  v6 = objc_alloc_init(CNUICreateContactIntent);
  v4 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v6 response:0];
  v5 = [(CNUIUserActivityManager *)self interactionDonor];
  [v5 donateInteraction:v4];
}

- (void)publishRequestToEditContact:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E696B090]);
  v6 = [v5 initWithActivityType:CNUIActivityTypeEditingContact];
  v7 = [(CNUIUserActivityManager *)self contactStore];
  v8 = [v7 userActivityUserInfoForContact:v4];
  [v6 setUserInfo:v8];

  v9 = [(CNUIUserActivityManager *)self applicationWorkspace];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CNUIUserActivityManager_publishRequestToEditContact___block_invoke;
  v11[3] = &unk_1E76E8FA0;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [v9 openUserActivity:v6 inApplication:0 options:0 completionHandler:v11];
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

- (id)makeActivityAdvertisingViewingOfContact:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNUIUserActivityManager *)self contactStore];
  v6 = [v5 userActivityUserInfoForContact:v4];

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
      v12 = v4;
      _os_log_impl(&dword_1A31E6000, v9, OS_LOG_TYPE_INFO, "activity continuity - %@ needs to save the user activity", &v11, 0xCu);
    }
  }

  else
  {
    v9 = [objc_opt_class() log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(CNUIUserActivityManager *)v4 makeActivityAdvertisingViewingOfContact:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (void)updateUserActivityState:(id)a3 withContentsOfListTopContact:(id)a4 displayedContact:(id)a5 searchString:(id)a6 isShowingGroups:(BOOL)a7
{
  v7 = a7;
  v40 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v13 && ([MEMORY[0x1E695CD80] stringFromContact:v13 style:0], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v16;
    [v12 setTitle:v16];
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  else
  {
    v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"NO_NAME" value:&stru_1F162C170 table:@"Localized"];
    [v12 setTitle:v20];

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  v21 = [(CNUIUserActivityManager *)self contactStore];
  v22 = [v21 userActivityUserInfoForContact:v13];
  [v18 setObject:v22 forKeyedSubscript:CNUIActivityUserInformationListTopContactKey];

LABEL_6:
  if (v14)
  {
    v23 = [(CNUIUserActivityManager *)self contactStore];
    v24 = [v23 userActivityUserInfoForContact:v14];
    [v18 setObject:v24 forKeyedSubscript:CNUIActivityUserInformationDisplayedContactKey];
  }

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    [v18 setObject:v15 forKeyedSubscript:CNUIActivityUserInformationSearchStringKey];
  }

  v25 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  [v18 setObject:v25 forKeyedSubscript:CNUIActivityUserInformationIsShowingGroupsKey];

  [v12 setUserInfo:v18];
  v26 = MEMORY[0x1E695DFD8];
  v27 = [v12 userInfo];
  v28 = [v27 allKeys];
  v29 = [v26 setWithArray:v28];
  [v12 setRequiredUserInfoKeys:v29];

  if (objc_opt_respondsToSelector())
  {
    v30 = [v13 searchableItemAttributeSetForUserActivity];
    [v12 setContentAttributeSet:v30];
  }

  v31 = [objc_opt_class() log];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [v12 title];
    v33 = [v12 userInfo];
    v34 = 138412802;
    v35 = v12;
    v36 = 2112;
    v37 = v32;
    v38 = 2112;
    v39 = v33;
    _os_log_impl(&dword_1A31E6000, v31, OS_LOG_TYPE_INFO, "activity continuity - updated %@ with title %@, userInfo %@", &v34, 0x20u);
  }
}

- (void)updateUserActivityState:(id)a3 withContentsOfContact:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695CD80] stringFromContact:v7 style:0];
  if (v8)
  {
    [v6 setTitle:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"NO_NAME" value:&stru_1F162C170 table:@"Localized"];
    [v6 setTitle:v10];
  }

  v11 = [(CNUIUserActivityManager *)self contactStore];
  v12 = [v11 userActivityUserInfoForContact:v7];
  [v6 setUserInfo:v12];

  v13 = MEMORY[0x1E695DFD8];
  v14 = [v6 userInfo];
  v15 = [v14 allKeys];
  v16 = [v13 setWithArray:v15];
  [v6 setRequiredUserInfoKeys:v16];

  if (objc_opt_respondsToSelector())
  {
    v17 = [v7 searchableItemAttributeSetForUserActivity];
    [v6 setContentAttributeSet:v17];
  }

  v18 = [objc_opt_class() log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v6 title];
    v20 = [v6 userInfo];
    v21 = 138412802;
    v22 = v6;
    v23 = 2112;
    v24 = v19;
    v25 = 2112;
    v26 = v20;
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