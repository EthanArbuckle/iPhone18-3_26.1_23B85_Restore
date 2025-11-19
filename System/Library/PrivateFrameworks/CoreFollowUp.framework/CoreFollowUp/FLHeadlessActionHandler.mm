@interface FLHeadlessActionHandler
+ (id)handlerWithItem:(id)a3;
- (FLHeadlessActionHandler)initWithItem:(id)a3;
- (void)dealloc;
- (void)handleAction:(id)a3 completion:(id)a4;
- (void)handleExtensionBasedAction:(id)a3 completion:(id)a4;
@end

@implementation FLHeadlessActionHandler

- (FLHeadlessActionHandler)initWithItem:(id)a3
{
  v5 = a3;
  v6 = [(FLHeadlessActionHandler *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
  }

  return v7;
}

+ (id)handlerWithItem:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithItem:v4];

  return v5;
}

- (void)handleAction:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_22E696000, "followup/handling-action", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  os_activity_scope_enter(v8, &v18);
  v9 = [(FLHeadlessActionHandler *)self item];
  v10 = [v9 extensionIdentifier];
  if (v10)
  {
    v11 = +[FLEnvironment currentEnvironment];
    v12 = [v11 followUpExtensionSupportEnabled];

    if (v12)
    {
      [(FLHeadlessActionHandler *)self handleExtensionBasedAction:v6 completion:v7];
      goto LABEL_10;
    }
  }

  else
  {
  }

  if ([v6 _loadActionURL])
  {
    v7[2](v7, 1, 0);
  }

  else
  {
    v13 = _FLLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = [(FLHeadlessActionHandler *)self item];
      v17 = [v16 uniqueIdentifier];
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v17;
      _os_log_error_impl(&dword_22E696000, v13, OS_LOG_TYPE_ERROR, "Action could not be handled for %@ - %@", buf, 0x16u);
    }

    v14 = FLError(1666);
    (v7)[2](v7, 0, v14);
  }

LABEL_10:
  os_activity_scope_leave(&v18);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleExtensionBasedAction:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_22E696000, "followup/silent-handling-action", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = _FLLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(FLHeadlessActionHandler *)self item];
    *buf = 138412290;
    v20 = v10;
    _os_log_impl(&dword_22E696000, v9, OS_LOG_TYPE_DEFAULT, "Starting to load extension for follow up: %@", buf, 0xCu);
  }

  v11 = +[FLHeadlessExtensionLoader sharedExtensionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__FLHeadlessActionHandler_handleExtensionBasedAction_completion___block_invoke;
  block[3] = &unk_278852920;
  block[4] = self;
  v16 = v6;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_async(v11, block);

  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x277D85DE8];
}

void __65__FLHeadlessActionHandler_handleExtensionBasedAction_completion___block_invoke(uint64_t a1)
{
  v2 = [FLHeadlessExtensionLoader alloc];
  v3 = [*(a1 + 32) item];
  v4 = [v3 extensionIdentifier];
  v5 = [(FLHeadlessExtensionLoader *)v2 initWithIdentifier:v4];

  v6 = [(FLHeadlessExtensionLoader *)v5 remoteInterface];
  v7 = _FLLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E696000, v7, OS_LOG_TYPE_DEFAULT, "Extension context loaded", buf, 2u);
  }

  if (v6)
  {
    v8 = [*(a1 + 32) item];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__FLHeadlessActionHandler_handleExtensionBasedAction_completion___block_invoke_2;
    v12[3] = &unk_2788528F8;
    v9 = *(a1 + 40);
    v14 = *(a1 + 48);
    v13 = v5;
    [v6 processFollowUpItem:v8 selectedAction:v9 completion:v12];

    v10 = v14;
  }

  else
  {
    v11 = *(a1 + 48);
    v10 = FLError(1660);
    (*(v11 + 16))(v11, 0, v10);
  }
}

uint64_t __65__FLHeadlessActionHandler_handleExtensionBasedAction_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_22E696000, v4, OS_LOG_TYPE_DEFAULT, "Headless extension processed follow up: %@", &v8, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E696000, v3, OS_LOG_TYPE_DEFAULT, "Handler checking out", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = FLHeadlessActionHandler;
  [(FLHeadlessActionHandler *)&v4 dealloc];
}

@end