@interface FLFollowUpController
- (BOOL)clearNotificationForItem:(id)item error:(id *)error;
- (BOOL)clearPendingFollowUpItems:(id *)items;
- (BOOL)clearPendingFollowUpItemsWithUniqueIdentifiers:(id)identifiers error:(id *)error;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)postFollowUpItem:(id)item error:(id *)error;
- (FLFollowUpController)initWithClientIdentifier:(id)identifier;
- (FLFollowUpController)initWithClientIdentifier:(id)identifier machServiceName:(id)name delegate:(id)delegate;
- (FLFollowUpController)initWithClientIdentifier:(id)identifier xpcEndpoint:(id)endpoint;
- (FLFollowUpControllerDelegate)delegate;
- (id)pendingFollowUpItems:(id *)items;
- (unint64_t)countOfPendingFollowUpItems:(id *)items;
- (void)_didActivateHSA2LoginNotification:(id)notification;
- (void)_postHSA2LoginCode:(id)code withNotification:(id)notification completion:(id)completion;
- (void)_postHSA2LoginNotification:(id)notification completion:(id)completion;
- (void)_postHSA2PasswordChangeForAppleID:(id)d completion:(id)completion;
- (void)_postHSA2PasswordResetNotification:(id)notification completion:(id)completion;
- (void)_tearDownHSA2LoginNotificationWithPushMessageID:(id)d;
- (void)clearPendingFollowUpItemsWithCompletion:(id)completion;
- (void)clearPendingFollowUpItemsWithUniqueIdentifiers:(id)identifiers completion:(id)completion;
- (void)countOfPendingFollowUpItemsWithCompletion:(id)completion;
- (void)pendingFollowUpItemsWithCompletion:(id)completion;
- (void)postFollowUpItem:(id)item completion:(id)completion;
- (void)updateBadgesForTimer;
@end

@implementation FLFollowUpController

- (FLFollowUpController)initWithClientIdentifier:(id)identifier xpcEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v7 = [(FLFollowUpController *)self initWithClientIdentifier:identifier];
  if (v7)
  {
    v8 = +[FLDaemon sharedInstance];
    [v8 setDaemonXPCEndpoint:endpointCopy];
  }

  return v7;
}

- (FLFollowUpController)initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = FLFollowUpController;
  v6 = [(FLFollowUpController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientIdentifier, identifier);
  }

  return v7;
}

- (FLFollowUpController)initWithClientIdentifier:(id)identifier machServiceName:(id)name delegate:(id)delegate
{
  nameCopy = name;
  delegateCopy = delegate;
  v11 = [(FLFollowUpController *)self initWithClientIdentifier:identifier];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_machServiceName, name);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    if (delegateCopy)
    {
      if (v12->_machServiceName)
      {
        v13 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v12->_machServiceName];
        listener = v12->_listener;
        v12->_listener = v13;

        [(NSXPCListener *)v12->_listener setDelegate:v12];
        [(NSXPCListener *)v12->_listener resume];
      }
    }
  }

  return v12;
}

- (BOOL)postFollowUpItem:(id)item error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = _os_activity_create(&dword_22E696000, "followup/posting-item", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v8 = +[FLDaemon sharedInstance];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __47__FLFollowUpController_postFollowUpItem_error___block_invoke;
  v19[3] = &unk_278852990;
  v19[4] = &v20;
  v9 = [v8 synchronousDaemonWithErrorHandler:v19];

  if (self->_clientIdentifier)
  {
    [itemCopy setClientIdentifier:?];
  }

  Current = CFAbsoluteTimeGetCurrent();
  v11 = _FLLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = itemCopy;
    _os_log_impl(&dword_22E696000, v11, OS_LOG_TYPE_DEFAULT, "Asking daemon server to post follow up item: %@", buf, 0xCu);
  }

  title = [itemCopy title];
  v13 = title == 0;

  if (v13)
  {
    v14 = _FLLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FLFollowUpController postFollowUpItem:v14 error:?];
    }
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__FLFollowUpController_postFollowUpItem_error___block_invoke_2;
  v18[3] = &unk_2788529B8;
  *&v18[6] = Current;
  v18[4] = &v26;
  v18[5] = &v20;
  [v9 postFollowUpItem:itemCopy completion:v18];
  if (error)
  {
    *error = v21[5];
  }

  v15 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  os_activity_scope_leave(&state);

  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __47__FLFollowUpController_postFollowUpItem_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__FLFollowUpController_postFollowUpItem_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __47__FLFollowUpController_postFollowUpItem_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent() - *(a1 + 48)];
    v12 = 138412802;
    v13 = v7;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Posted follow up item with success: %@, error: %@, took: %@", &v12, 0x20u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;

  v11 = *MEMORY[0x277D85DE8];
}

- (unint64_t)countOfPendingFollowUpItems:(id *)items
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22E696000, "followup/counting-pending-items", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v6 = +[FLDaemon sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__FLFollowUpController_countOfPendingFollowUpItems___block_invoke;
  v15[3] = &unk_278852990;
  v15[4] = &v16;
  v7 = [v6 synchronousDaemonWithErrorHandler:v15];

  v8 = _FLLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentifier = self->_clientIdentifier;
    *buf = 138412290;
    v28 = clientIdentifier;
    _os_log_impl(&dword_22E696000, v8, OS_LOG_TYPE_DEFAULT, "Asking daemon server for count of items with identifier: %@", buf, 0xCu);
  }

  v10 = self->_clientIdentifier;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__FLFollowUpController_countOfPendingFollowUpItems___block_invoke_5;
  v14[3] = &unk_2788529E0;
  v14[4] = &v22;
  v14[5] = &v16;
  [v7 countOfPendingFollowUpItemsForClientIdentifier:v10 completion:v14];
  if (items)
  {
    *items = v17[5];
  }

  v11 = v23[3];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  os_activity_scope_leave(&state);

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void __52__FLFollowUpController_countOfPendingFollowUpItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__FLFollowUpController_postFollowUpItem_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __52__FLFollowUpController_countOfPendingFollowUpItems___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Received count of follow up items for client: %@, error: %@", &v11, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  v10 = *MEMORY[0x277D85DE8];
}

- (id)pendingFollowUpItems:(id *)items
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22E696000, "followup/reading-pending-items", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v6 = +[FLDaemon sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__FLFollowUpController_pendingFollowUpItems___block_invoke;
  v15[3] = &unk_278852990;
  v15[4] = &v16;
  v7 = [v6 synchronousDaemonWithErrorHandler:v15];

  v8 = _FLLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentifier = self->_clientIdentifier;
    *buf = 138412290;
    v30 = clientIdentifier;
    _os_log_impl(&dword_22E696000, v8, OS_LOG_TYPE_DEFAULT, "pendingFollowUpItems: Asking daemon server for pending items with identifier: %@", buf, 0xCu);
  }

  v10 = self->_clientIdentifier;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__FLFollowUpController_pendingFollowUpItems___block_invoke_7;
  v14[3] = &unk_278852A08;
  v14[4] = &v22;
  v14[5] = &v16;
  [v7 pendingFollowUpItemsForClientIdentifier:v10 completion:v14];
  if (items)
  {
    *items = v17[5];
  }

  v11 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  os_activity_scope_leave(&state);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __45__FLFollowUpController_pendingFollowUpItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__FLFollowUpController_postFollowUpItem_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __45__FLFollowUpController_pendingFollowUpItems___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _FLLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_22E696000, v7, OS_LOG_TYPE_DEFAULT, "pendingFollowUpItems: Fetched pending follow up items: %@, error: %@", &v14, 0x16u);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)clearPendingFollowUpItems:(id *)items
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22E696000, "followup/clearing-pending-items", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v6 = +[FLDaemon sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__FLFollowUpController_clearPendingFollowUpItems___block_invoke;
  v15[3] = &unk_278852990;
  v15[4] = &v16;
  v7 = [v6 synchronousDaemonWithErrorHandler:v15];

  v8 = _FLLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentifier = self->_clientIdentifier;
    *buf = 138412290;
    v28 = clientIdentifier;
    _os_log_impl(&dword_22E696000, v8, OS_LOG_TYPE_DEFAULT, "Asking daemon server to clear pending items with identifier: %@", buf, 0xCu);
  }

  v10 = self->_clientIdentifier;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__FLFollowUpController_clearPendingFollowUpItems___block_invoke_9;
  v14[3] = &unk_278852A30;
  v14[4] = &v22;
  v14[5] = &v16;
  [v7 clearPendingFollowUpItemsForClientIdentifier:v10 completion:v14];
  if (items)
  {
    *items = v17[5];
  }

  v11 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  os_activity_scope_leave(&state);

  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

void __50__FLFollowUpController_clearPendingFollowUpItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__FLFollowUpController_postFollowUpItem_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __50__FLFollowUpController_clearPendingFollowUpItems___block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Cleared pending follow up items with success: %@, error: %@", &v11, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)clearPendingFollowUpItemsWithUniqueIdentifiers:(id)identifiers error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v7 = +[FLDaemon sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__FLFollowUpController_clearPendingFollowUpItemsWithUniqueIdentifiers_error___block_invoke;
  v16[3] = &unk_278852990;
  v16[4] = &v17;
  v8 = [v7 synchronousDaemonWithErrorHandler:v16];

  v9 = _FLLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentifier = self->_clientIdentifier;
    *buf = 138412546;
    v28 = clientIdentifier;
    v29 = 2112;
    v30 = identifiersCopy;
    _os_log_impl(&dword_22E696000, v9, OS_LOG_TYPE_DEFAULT, "Asking daemon server to clear pending items with identifier: %@, uniqueIdentifiers: %@", buf, 0x16u);
  }

  v11 = self->_clientIdentifier;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__FLFollowUpController_clearPendingFollowUpItemsWithUniqueIdentifiers_error___block_invoke_10;
  v15[3] = &unk_278852A30;
  v15[4] = &v23;
  v15[5] = &v17;
  [v8 clearPendingFollowUpItemsForClientIdentifier:v11 uniqueIdentifiers:identifiersCopy completion:v15];
  if (error)
  {
    *error = v18[5];
  }

  v12 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

void __77__FLFollowUpController_clearPendingFollowUpItemsWithUniqueIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__FLFollowUpController_postFollowUpItem_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __77__FLFollowUpController_clearPendingFollowUpItemsWithUniqueIdentifiers_error___block_invoke_10(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Cleared pending follow up item identifiers with success: %@, error: %@", &v11, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)clearNotificationForItem:(id)item error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v6 = _os_activity_create(&dword_22E696000, "followup/clearing-notification", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v7 = +[FLDaemon sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__FLFollowUpController_clearNotificationForItem_error___block_invoke;
  v14[3] = &unk_278852990;
  v14[4] = &v15;
  v8 = [v7 synchronousDaemonWithErrorHandler:v14];

  v9 = _FLLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = itemCopy;
    _os_log_impl(&dword_22E696000, v9, OS_LOG_TYPE_DEFAULT, "Asking daemon server to clear notifications for item: %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__FLFollowUpController_clearNotificationForItem_error___block_invoke_11;
  v13[3] = &unk_278852A30;
  v13[4] = &v21;
  v13[5] = &v15;
  [v8 clearNotificationForItem:itemCopy completion:v13];
  if (error)
  {
    *error = v16[5];
  }

  v10 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  os_activity_scope_leave(&state);

  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void __55__FLFollowUpController_clearNotificationForItem_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__FLFollowUpController_postFollowUpItem_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __55__FLFollowUpController_clearNotificationForItem_error___block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Cleared notification with success: %@, error: %@", &v11, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)postFollowUpItem:(id)item completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  v8 = +[FLDaemon sharedInstance];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__FLFollowUpController_postFollowUpItem_completion___block_invoke;
  v18[3] = &unk_278852A58;
  v9 = completionCopy;
  v19 = v9;
  v10 = [v8 daemonWithErrorHandler:v18];

  if (self->_clientIdentifier)
  {
    [itemCopy setClientIdentifier:?];
  }

  v11 = _FLLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = itemCopy;
    _os_log_impl(&dword_22E696000, v11, OS_LOG_TYPE_DEFAULT, "Asking daemon server to post follow up item: %@", buf, 0xCu);
  }

  title = [itemCopy title];

  if (!title)
  {
    v13 = _FLLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FLFollowUpController postFollowUpItem:v13 error:?];
    }
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__FLFollowUpController_postFollowUpItem_completion___block_invoke_12;
  v16[3] = &unk_278852A80;
  v17 = v9;
  v14 = v9;
  [v10 postFollowUpItem:itemCopy completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __52__FLFollowUpController_postFollowUpItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__FLFollowUpController_postFollowUpItem_error___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __52__FLFollowUpController_postFollowUpItem_completion___block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Posted follow up item with success: %@, error: %@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)countOfPendingFollowUpItemsWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[FLDaemon sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__FLFollowUpController_countOfPendingFollowUpItemsWithCompletion___block_invoke;
  v15[3] = &unk_278852A58;
  v6 = completionCopy;
  v16 = v6;
  v7 = [v5 daemonWithErrorHandler:v15];

  v8 = _FLLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentifier = self->_clientIdentifier;
    *buf = 138412290;
    v18 = clientIdentifier;
    _os_log_impl(&dword_22E696000, v8, OS_LOG_TYPE_DEFAULT, "Asking daemon server for count of items with identifier: %@", buf, 0xCu);
  }

  v10 = self->_clientIdentifier;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__FLFollowUpController_countOfPendingFollowUpItemsWithCompletion___block_invoke_13;
  v13[3] = &unk_278852AA8;
  v14 = v6;
  v11 = v6;
  [v7 countOfPendingFollowUpItemsForClientIdentifier:v10 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __66__FLFollowUpController_countOfPendingFollowUpItemsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__FLFollowUpController_postFollowUpItem_error___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __66__FLFollowUpController_countOfPendingFollowUpItemsWithCompletion___block_invoke_13(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Received count of follow up items for client: %@, error: %@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)pendingFollowUpItemsWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[FLDaemon sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__FLFollowUpController_pendingFollowUpItemsWithCompletion___block_invoke;
  v15[3] = &unk_278852A58;
  v6 = completionCopy;
  v16 = v6;
  v7 = [v5 daemonWithErrorHandler:v15];

  v8 = _FLLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentifier = self->_clientIdentifier;
    *buf = 138412290;
    v18 = clientIdentifier;
    _os_log_impl(&dword_22E696000, v8, OS_LOG_TYPE_DEFAULT, "pendingFollowUpItemsWithCompletion: Asking daemon server for pending items with identifier: %@", buf, 0xCu);
  }

  v10 = self->_clientIdentifier;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__FLFollowUpController_pendingFollowUpItemsWithCompletion___block_invoke_14;
  v13[3] = &unk_278852AD0;
  v14 = v6;
  v11 = v6;
  [v7 pendingFollowUpItemsForClientIdentifier:v10 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __59__FLFollowUpController_pendingFollowUpItemsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__FLFollowUpController_postFollowUpItem_error___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __59__FLFollowUpController_pendingFollowUpItemsWithCompletion___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _FLLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_22E696000, v7, OS_LOG_TYPE_DEFAULT, "pendingFollowUpItemsWithCompletion: Fetched pending follow up items: %@, error: %@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)clearPendingFollowUpItemsWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[FLDaemon sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__FLFollowUpController_clearPendingFollowUpItemsWithCompletion___block_invoke;
  v15[3] = &unk_278852A58;
  v6 = completionCopy;
  v16 = v6;
  v7 = [v5 daemonWithErrorHandler:v15];

  v8 = _FLLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentifier = self->_clientIdentifier;
    *buf = 138412290;
    v18 = clientIdentifier;
    _os_log_impl(&dword_22E696000, v8, OS_LOG_TYPE_DEFAULT, "Asking daemon server to clear pending items with identifier: %@", buf, 0xCu);
  }

  v10 = self->_clientIdentifier;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__FLFollowUpController_clearPendingFollowUpItemsWithCompletion___block_invoke_15;
  v13[3] = &unk_278852A80;
  v14 = v6;
  v11 = v6;
  [v7 clearPendingFollowUpItemsForClientIdentifier:v10 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __64__FLFollowUpController_clearPendingFollowUpItemsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__FLFollowUpController_postFollowUpItem_error___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __64__FLFollowUpController_clearPendingFollowUpItemsWithCompletion___block_invoke_15(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Cleared pending follow up items with success: %@, error: %@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)clearPendingFollowUpItemsWithUniqueIdentifiers:(id)identifiers completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  completionCopy = completion;
  v8 = +[FLDaemon sharedInstance];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__FLFollowUpController_clearPendingFollowUpItemsWithUniqueIdentifiers_completion___block_invoke;
  v18[3] = &unk_278852A58;
  v9 = completionCopy;
  v19 = v9;
  v10 = [v8 daemonWithErrorHandler:v18];

  v11 = _FLLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentifier = self->_clientIdentifier;
    *buf = 138412546;
    v21 = clientIdentifier;
    v22 = 2112;
    v23 = identifiersCopy;
    _os_log_impl(&dword_22E696000, v11, OS_LOG_TYPE_DEFAULT, "Asking daemon server to clear pending items with identifier: %@, uniqueIdentifiers: %@", buf, 0x16u);
  }

  v13 = self->_clientIdentifier;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__FLFollowUpController_clearPendingFollowUpItemsWithUniqueIdentifiers_completion___block_invoke_16;
  v16[3] = &unk_278852A80;
  v17 = v9;
  v14 = v9;
  [v10 clearPendingFollowUpItemsForClientIdentifier:v13 uniqueIdentifiers:identifiersCopy completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __82__FLFollowUpController_clearPendingFollowUpItemsWithUniqueIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__FLFollowUpController_postFollowUpItem_error___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __82__FLFollowUpController_clearPendingFollowUpItemsWithUniqueIdentifiers_completion___block_invoke_16(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Cleared pending follow up item identifiers with success: %@, error: %@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateBadgesForTimer
{
  v2 = +[FLDaemon sharedInstance];
  v3 = [v2 daemonWithErrorHandler:&__block_literal_global_2];

  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22E696000, v4, OS_LOG_TYPE_DEFAULT, "Asking daemon server to update badge counts", v5, 2u);
  }

  [v3 updateBadgesForTimer];
}

void __44__FLFollowUpController_updateBadgesForTimer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __47__FLFollowUpController_postFollowUpItem_error___block_invoke_cold_1();
  }
}

- (void)_postHSA2LoginNotification:(id)notification completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  completionCopy = completion;
  v7 = +[FLDaemon sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__FLFollowUpController__postHSA2LoginNotification_completion___block_invoke;
  v15[3] = &unk_278852A58;
  v8 = completionCopy;
  v16 = v8;
  v9 = [v7 daemonWithErrorHandler:v15];

  v10 = _FLLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = notificationCopy;
    _os_log_impl(&dword_22E696000, v10, OS_LOG_TYPE_DEFAULT, "Asking daemon server to post HSA2 login notification: %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__FLFollowUpController__postHSA2LoginNotification_completion___block_invoke_17;
  v13[3] = &unk_278852AA8;
  v14 = v8;
  v11 = v8;
  [v9 postHSA2LoginNotification:notificationCopy completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __62__FLFollowUpController__postHSA2LoginNotification_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__FLFollowUpController_postFollowUpItem_error___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __62__FLFollowUpController__postHSA2LoginNotification_completion___block_invoke_17(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = a2;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Posted HSA2 login notification with response: %lu, error: %@", &v9, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_postHSA2PasswordChangeForAppleID:(id)d completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v7 = +[FLDaemon sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__FLFollowUpController__postHSA2PasswordChangeForAppleID_completion___block_invoke;
  v15[3] = &unk_278852A58;
  v8 = completionCopy;
  v16 = v8;
  v9 = [v7 daemonWithErrorHandler:v15];

  v10 = _FLLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = dCopy;
    _os_log_impl(&dword_22E696000, v10, OS_LOG_TYPE_DEFAULT, "Asking daemon server to post HSA2 password change notification for Apple ID: %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__FLFollowUpController__postHSA2PasswordChangeForAppleID_completion___block_invoke_18;
  v13[3] = &unk_278852AA8;
  v14 = v8;
  v11 = v8;
  [v9 postHSA2PasswordChangeForAppleID:dCopy completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __69__FLFollowUpController__postHSA2PasswordChangeForAppleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__FLFollowUpController_postFollowUpItem_error___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __69__FLFollowUpController__postHSA2PasswordChangeForAppleID_completion___block_invoke_18(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = a2;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Posted HSA2 password change notification with response: %lu, error: %@", &v9, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_postHSA2LoginCode:(id)code withNotification:(id)notification completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  notificationCopy = notification;
  completionCopy = completion;
  v10 = +[FLDaemon sharedInstance];
  v11 = [v10 daemonWithErrorHandler:&__block_literal_global_20];

  v12 = _FLLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v18 = codeCopy;
    v19 = 2112;
    v20 = notificationCopy;
    _os_log_impl(&dword_22E696000, v12, OS_LOG_TYPE_DEFAULT, "Asking daemon server to post HSA2 login code notification with number: %{private}@, notification: %@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__FLFollowUpController__postHSA2LoginCode_withNotification_completion___block_invoke_21;
  v15[3] = &unk_278852AA8;
  v16 = completionCopy;
  v13 = completionCopy;
  [v11 postHSA2LoginCode:codeCopy withNotification:notificationCopy completion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __71__FLFollowUpController__postHSA2LoginCode_withNotification_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __71__FLFollowUpController__postHSA2LoginCode_withNotification_completion___block_invoke_cold_1();
  }
}

void __71__FLFollowUpController__postHSA2LoginCode_withNotification_completion___block_invoke_21(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = a2;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Posted HSA2 login code notification with response: %lu, error: %@", &v9, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_tearDownHSA2LoginNotificationWithPushMessageID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = +[FLDaemon sharedInstance];
  v5 = [v4 daemonWithErrorHandler:&__block_literal_global_23];

  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = dCopy;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Tearing down HSA2 login notification with identifier: %@", &v8, 0xCu);
  }

  [v5 tearDownHSA2LoginNotificationWithPushMessageID:dCopy];
  v7 = *MEMORY[0x277D85DE8];
}

void __72__FLFollowUpController__tearDownHSA2LoginNotificationWithPushMessageID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __72__FLFollowUpController__tearDownHSA2LoginNotificationWithPushMessageID___block_invoke_cold_1();
  }
}

- (void)_postHSA2PasswordResetNotification:(id)notification completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  completionCopy = completion;
  v7 = +[FLDaemon sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__FLFollowUpController__postHSA2PasswordResetNotification_completion___block_invoke;
  v15[3] = &unk_278852A58;
  v8 = completionCopy;
  v16 = v8;
  v9 = [v7 daemonWithErrorHandler:v15];

  v10 = _FLLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = notificationCopy;
    _os_log_impl(&dword_22E696000, v10, OS_LOG_TYPE_DEFAULT, "Asking daemon server to post HSA2 password reset notification: %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__FLFollowUpController__postHSA2PasswordResetNotification_completion___block_invoke_24;
  v13[3] = &unk_278852A80;
  v14 = v8;
  v11 = v8;
  [v9 postHSA2PasswordResetNotification:notificationCopy completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __70__FLFollowUpController__postHSA2PasswordResetNotification_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__FLFollowUpController_postFollowUpItem_error___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __70__FLFollowUpController__postHSA2PasswordResetNotification_completion___block_invoke_24(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Posted HSA2 password reset notification with success: %@, error: %@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_didActivateHSA2LoginNotification:(id)notification
{
  v10 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v4 = +[FLDaemon sharedInstance];
  v5 = [v4 daemonWithErrorHandler:&__block_literal_global_26];

  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = notificationCopy;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Notifying daemon of HSA2 login notification activation: %@", &v8, 0xCu);
  }

  [v5 didActivateHSA2LoginNotificationNotification:notificationCopy];
  v7 = *MEMORY[0x277D85DE8];
}

void __58__FLFollowUpController__didActivateHSA2LoginNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __58__FLFollowUpController__didActivateHSA2LoginNotification___block_invoke_cold_1();
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x277CCAE90];
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&unk_28433BE80];
  [connectionCopy setExportedInterface:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [connectionCopy setExportedObject:WeakRetained];

  [connectionCopy resume];
  return 1;
}

- (FLFollowUpControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __47__FLFollowUpController_postFollowUpItem_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_22E696000, v0, v1, "Remote daemon server returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__FLFollowUpController__postHSA2LoginCode_withNotification_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_22E696000, v0, v1, "Failed to post login code: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__FLFollowUpController__tearDownHSA2LoginNotificationWithPushMessageID___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_22E696000, v0, v1, "Error communicating with daemon while tearing down HSA2 login notification: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__FLFollowUpController__didActivateHSA2LoginNotification___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_22E696000, v0, v1, "Error communicating with daemon while activating HSA2 login notification: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end