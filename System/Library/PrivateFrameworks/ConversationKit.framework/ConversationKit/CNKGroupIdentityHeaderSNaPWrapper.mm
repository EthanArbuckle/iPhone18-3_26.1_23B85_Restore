@interface CNKGroupIdentityHeaderSNaPWrapper
- (void)configureGroupIdentityHeaderViewController:(id)a3 contact:(id)a4;
- (void)groupIdentityHeaderViewController:(id)a3 didDismissSharedProfileBannerWithUpdatedContact:(id)a4 forAction:(unint64_t)a5;
- (void)groupIdentityHeaderViewController:(id)a3 sharedProfileBannerDidUpdateContact:(id)a4 forAction:(unint64_t)a5;
- (void)handleSharedProfileUpdateForController:(id)a3 contact:(id)a4;
- (void)setOracleUsingController:(id)a3 contact:(id)a4;
@end

@implementation CNKGroupIdentityHeaderSNaPWrapper

- (void)configureGroupIdentityHeaderViewController:(id)a3 contact:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ConversationKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1BBC58000, v8, OS_LOG_TYPE_DEFAULT, "[CNKGroupIdentityHeaderSNaPWrapper] Configuring viewController: %@ with contact: %@", &v9, 0x16u);
  }

  [v6 setDelegate:self];
  [(CNKGroupIdentityHeaderSNaPWrapper *)self setOracleUsingController:v6 contact:v7];
}

- (void)groupIdentityHeaderViewController:(id)a3 sharedProfileBannerDidUpdateContact:(id)a4 forAction:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = ConversationKitLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BBC58000, v9, OS_LOG_TYPE_DEFAULT, "[CNKGroupIdentityHeaderSNaPWrapper] Received sharedProfileBannerDidUpdateContact callback", v10, 2u);
  }

  [(CNKGroupIdentityHeaderSNaPWrapper *)self handleSharedProfileUpdateForController:v8 contact:v7];
}

- (void)groupIdentityHeaderViewController:(id)a3 didDismissSharedProfileBannerWithUpdatedContact:(id)a4 forAction:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = ConversationKitLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BBC58000, v9, OS_LOG_TYPE_DEFAULT, "[CNKGroupIdentityHeaderSNaPWrapper] Received didDismissSharedProfileBannerWithUpdatedContact callback", v10, 2u);
  }

  [(CNKGroupIdentityHeaderSNaPWrapper *)self handleSharedProfileUpdateForController:v8 contact:v7];
}

- (void)setOracleUsingController:(id)a3 contact:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = ConversationKitLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1BBC58000, v7, OS_LOG_TYPE_DEFAULT, "[CNKGroupIdentityHeaderSNaPWrapper] Setting oracle on controller: %@ with contact: %@", &v15, 0x16u);
  }

  v8 = objc_alloc(MEMORY[0x1E695CF98]);
  v9 = [MEMORY[0x1E69D8A58] sharedInstance];
  v10 = [v9 contactStore];
  v11 = [v8 initWithContact:v6 contactStore:v10];

  v12 = ConversationKitLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v11 currentNickname];
    v14 = [v11 pendingNickname];
    v15 = 138412802;
    v16 = v11;
    v17 = 2112;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_1BBC58000, v12, OS_LOG_TYPE_DEFAULT, "[CNKGroupIdentityHeaderSNaPWrapper] Created oracle %@ current nickname %@ pending nickname %@", &v15, 0x20u);
  }

  [v5 setSharedProfileStateOracle:v11];
}

- (void)handleSharedProfileUpdateForController:(id)a3 contact:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ConversationKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_1BBC58000, v8, OS_LOG_TYPE_DEFAULT, "[CNKGroupIdentityHeaderSNaPWrapper] Handling shared profile update for controller: %@ with contact: %@", buf, 0x16u);
  }

  v9 = [v6 group];
  v10 = [v9 numberOfContacts];

  if (v10 == 1)
  {
    v11 = objc_alloc(MEMORY[0x1E695D158]);
    v12 = [v6 group];
    v13 = [v12 groupName];
    v14 = [v6 group];
    v15 = [v14 groupPhoto];
    v18 = v7;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v17 = [v11 initGroupWithName:v13 photo:v15 contacts:v16];

    [v6 groupIdentityDidUpdate:v17];
    [(CNKGroupIdentityHeaderSNaPWrapper *)self setOracleUsingController:v6 contact:v7];
  }
}

@end