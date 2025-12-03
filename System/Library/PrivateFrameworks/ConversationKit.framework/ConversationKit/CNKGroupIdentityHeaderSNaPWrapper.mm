@interface CNKGroupIdentityHeaderSNaPWrapper
- (void)configureGroupIdentityHeaderViewController:(id)controller contact:(id)contact;
- (void)groupIdentityHeaderViewController:(id)controller didDismissSharedProfileBannerWithUpdatedContact:(id)contact forAction:(unint64_t)action;
- (void)groupIdentityHeaderViewController:(id)controller sharedProfileBannerDidUpdateContact:(id)contact forAction:(unint64_t)action;
- (void)handleSharedProfileUpdateForController:(id)controller contact:(id)contact;
- (void)setOracleUsingController:(id)controller contact:(id)contact;
@end

@implementation CNKGroupIdentityHeaderSNaPWrapper

- (void)configureGroupIdentityHeaderViewController:(id)controller contact:(id)contact
{
  v13 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  contactCopy = contact;
  v8 = ConversationKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = controllerCopy;
    v11 = 2112;
    v12 = contactCopy;
    _os_log_impl(&dword_1BBC58000, v8, OS_LOG_TYPE_DEFAULT, "[CNKGroupIdentityHeaderSNaPWrapper] Configuring viewController: %@ with contact: %@", &v9, 0x16u);
  }

  [controllerCopy setDelegate:self];
  [(CNKGroupIdentityHeaderSNaPWrapper *)self setOracleUsingController:controllerCopy contact:contactCopy];
}

- (void)groupIdentityHeaderViewController:(id)controller sharedProfileBannerDidUpdateContact:(id)contact forAction:(unint64_t)action
{
  contactCopy = contact;
  controllerCopy = controller;
  v9 = ConversationKitLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BBC58000, v9, OS_LOG_TYPE_DEFAULT, "[CNKGroupIdentityHeaderSNaPWrapper] Received sharedProfileBannerDidUpdateContact callback", v10, 2u);
  }

  [(CNKGroupIdentityHeaderSNaPWrapper *)self handleSharedProfileUpdateForController:controllerCopy contact:contactCopy];
}

- (void)groupIdentityHeaderViewController:(id)controller didDismissSharedProfileBannerWithUpdatedContact:(id)contact forAction:(unint64_t)action
{
  contactCopy = contact;
  controllerCopy = controller;
  v9 = ConversationKitLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BBC58000, v9, OS_LOG_TYPE_DEFAULT, "[CNKGroupIdentityHeaderSNaPWrapper] Received didDismissSharedProfileBannerWithUpdatedContact callback", v10, 2u);
  }

  [(CNKGroupIdentityHeaderSNaPWrapper *)self handleSharedProfileUpdateForController:controllerCopy contact:contactCopy];
}

- (void)setOracleUsingController:(id)controller contact:(id)contact
{
  v21 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  contactCopy = contact;
  v7 = ConversationKitLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = controllerCopy;
    v17 = 2112;
    v18 = contactCopy;
    _os_log_impl(&dword_1BBC58000, v7, OS_LOG_TYPE_DEFAULT, "[CNKGroupIdentityHeaderSNaPWrapper] Setting oracle on controller: %@ with contact: %@", &v15, 0x16u);
  }

  v8 = objc_alloc(MEMORY[0x1E695CF98]);
  mEMORY[0x1E69D8A58] = [MEMORY[0x1E69D8A58] sharedInstance];
  contactStore = [mEMORY[0x1E69D8A58] contactStore];
  v11 = [v8 initWithContact:contactCopy contactStore:contactStore];

  v12 = ConversationKitLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    currentNickname = [v11 currentNickname];
    pendingNickname = [v11 pendingNickname];
    v15 = 138412802;
    v16 = v11;
    v17 = 2112;
    v18 = currentNickname;
    v19 = 2112;
    v20 = pendingNickname;
    _os_log_impl(&dword_1BBC58000, v12, OS_LOG_TYPE_DEFAULT, "[CNKGroupIdentityHeaderSNaPWrapper] Created oracle %@ current nickname %@ pending nickname %@", &v15, 0x20u);
  }

  [controllerCopy setSharedProfileStateOracle:v11];
}

- (void)handleSharedProfileUpdateForController:(id)controller contact:(id)contact
{
  v23 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  contactCopy = contact;
  v8 = ConversationKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = controllerCopy;
    v21 = 2112;
    v22 = contactCopy;
    _os_log_impl(&dword_1BBC58000, v8, OS_LOG_TYPE_DEFAULT, "[CNKGroupIdentityHeaderSNaPWrapper] Handling shared profile update for controller: %@ with contact: %@", buf, 0x16u);
  }

  group = [controllerCopy group];
  numberOfContacts = [group numberOfContacts];

  if (numberOfContacts == 1)
  {
    v11 = objc_alloc(MEMORY[0x1E695D158]);
    group2 = [controllerCopy group];
    groupName = [group2 groupName];
    group3 = [controllerCopy group];
    groupPhoto = [group3 groupPhoto];
    v18 = contactCopy;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v17 = [v11 initGroupWithName:groupName photo:groupPhoto contacts:v16];

    [controllerCopy groupIdentityDidUpdate:v17];
    [(CNKGroupIdentityHeaderSNaPWrapper *)self setOracleUsingController:controllerCopy contact:contactCopy];
  }
}

@end