@interface MFLocalActionReplayHandler
+ (OS_os_log)log;
- (MFLocalActionReplayHandler)initWithLibrary:(id)library account:(id)account;
- (MailAccount)account;
- (NSString)ef_publicDescription;
- (void)_checkForNewActions;
- (void)_replayAllActions;
- (void)addNewAction:(id)action;
- (void)connectionEstablished;
- (void)newActionsAdded;
@end

@implementation MFLocalActionReplayHandler

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__MFLocalActionReplayHandler_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_13 != -1)
  {
    dispatch_once(&log_onceToken_13, block);
  }

  v2 = log_log_13;

  return v2;
}

void __33__MFLocalActionReplayHandler_log__block_invoke(uint64_t a1)
{
  v2 = [*MEMORY[0x1E69B17F0] UTF8String];
  v5 = NSStringFromClass(*(a1 + 32));
  v3 = os_log_create(v2, [v5 UTF8String]);
  v4 = log_log_13;
  log_log_13 = v3;
}

- (MFLocalActionReplayHandler)initWithLibrary:(id)library account:(id)account
{
  v24 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  accountCopy = account;
  v19.receiver = self;
  v19.super_class = MFLocalActionReplayHandler;
  v9 = [(MFLocalActionReplayHandler *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_library, library);
    objc_storeWeak(&v10->_account, accountCopy);
    v11 = objc_opt_new();
    actionsToReplay = v10->_actionsToReplay;
    v10->_actionsToReplay = v11;

    v13 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.localActionReplayScheduler" qualityOfService:25];
    replayScheduler = v10->_replayScheduler;
    v10->_replayScheduler = v13;
  }

  v15 = +[MFLocalActionReplayHandler log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [accountCopy identifier];
    *buf = 138543618;
    v21 = v10;
    v22 = 2114;
    v23 = identifier;
    _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "Created %{public}@ for account %{public}@", buf, 0x16u);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)connectionEstablished
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[MFLocalActionReplayHandler log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [(MFLocalActionReplayHandler *)self ef_publicDescription];
    v7 = 138543362;
    v8 = ef_publicDescription;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ connection established", &v7, 0xCu);
  }

  actionsToReplay = [(MFLocalActionReplayHandler *)self actionsToReplay];
  objc_sync_enter(actionsToReplay);
  if (![(MFLocalActionReplayHandler *)self replayingActions])
  {
    [(MFLocalActionReplayHandler *)self setNeedToCheckForNewActions:1];
    [(MFLocalActionReplayHandler *)self _replayAllActions];
  }

  objc_sync_exit(actionsToReplay);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)newActionsAdded
{
  obj = [(MFLocalActionReplayHandler *)self actionsToReplay];
  objc_sync_enter(obj);
  [(MFLocalActionReplayHandler *)self setNeedToCheckForNewActions:1];
  if (![(MFLocalActionReplayHandler *)self replayingActions])
  {
    [(MFLocalActionReplayHandler *)self _replayAllActions];
  }

  objc_sync_exit(obj);
}

- (void)addNewAction:(id)action
{
  v14 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  actionsToReplay = [(MFLocalActionReplayHandler *)self actionsToReplay];
  objc_sync_enter(actionsToReplay);
  v6 = +[MFLocalActionReplayHandler log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [(MFLocalActionReplayHandler *)self ef_publicDescription];
    v10 = 138543618;
    v11 = ef_publicDescription;
    v12 = 2114;
    v13 = actionCopy;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ added action %{public}@", &v10, 0x16u);
  }

  actionsToReplay2 = [(MFLocalActionReplayHandler *)self actionsToReplay];
  [actionsToReplay2 addObject:actionCopy];

  if (![(MFLocalActionReplayHandler *)self replayingActions])
  {
    [(MFLocalActionReplayHandler *)self _replayAllActions];
  }

  objc_sync_exit(actionsToReplay);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_replayAllActions
{
  v18 = *MEMORY[0x1E69E9840];
  actionsToReplay = [(MFLocalActionReplayHandler *)self actionsToReplay];
  objc_sync_enter(actionsToReplay);
  actionsToReplay2 = [(MFLocalActionReplayHandler *)self actionsToReplay];
  v5 = [actionsToReplay2 count];

  objc_sync_exit(actionsToReplay);
  v6 = +[MFLocalActionReplayHandler log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [(MFLocalActionReplayHandler *)self ef_publicDescription];
    *buf = 138412546;
    v15 = ef_publicDescription;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Replaying all actions %@: %ld action(s) to replay", buf, 0x16u);
  }

  [(MFLocalActionReplayHandler *)self setReplayingActions:1];
  v8 = [MEMORY[0x1E699B860] transactionWithDescription:@"com.apple.mobilemail.localActionReplayScheduler"];
  replayScheduler = [(MFLocalActionReplayHandler *)self replayScheduler];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__MFLocalActionReplayHandler__replayAllActions__block_invoke;
  v12[3] = &unk_1E7AA26E0;
  v12[4] = self;
  v10 = v8;
  v13 = v10;
  [replayScheduler performBlock:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __47__MFLocalActionReplayHandler__replayAllActions__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) library];
  v3 = [v2 persistence];
  v4 = [v3 messageChangeManager];

  *&v5 = 138543874;
  v26 = v5;
  while (1)
  {
    [*(a1 + 32) _checkForNewActions];
    v6 = [*(a1 + 32) actionsToReplay];
    objc_sync_enter(v6);
    v7 = [*(a1 + 32) actionsToReplay];
    v8 = [v7 firstObject];

    objc_sync_exit(v6);
    if (!v8)
    {
      break;
    }

    v9 = +[MFLocalActionReplayHandler log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) ef_publicDescription];
      *buf = 138543618;
      v28 = v10;
      v29 = 2114;
      v30 = v8;
      _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ replaying action %{public}@", buf, 0x16u);
    }

    v11 = [*(a1 + 32) account];
    v12 = [v11 replayAction:v8];

    if (!v12)
    {
      v18 = +[MFLocalActionReplayHandler log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [*(a1 + 32) ef_publicDescription];
        *buf = 138543618;
        v28 = v19;
        v29 = 2114;
        v30 = v8;
        _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Did not get results back for action: %{public}@. Will stop replaying actions.", buf, 0x16u);
      }

      break;
    }

    v13 = [v4 persistResults:v12 forAction:v8];
    v14 = +[MFLocalActionReplayHandler log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) ef_publicDescription];
      *buf = v26;
      v28 = v15;
      v29 = 2114;
      v30 = v8;
      v31 = 1024;
      v32 = v13;
      _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ action %{public}@ finished, needToReplayAction = %d", buf, 0x1Cu);
    }

    if ((v13 & 1) == 0)
    {
      v16 = [*(a1 + 32) actionsToReplay];
      objc_sync_enter(v16);
      v17 = [*(a1 + 32) actionsToReplay];
      [v17 removeObject:v8];

      objc_sync_exit(v16);
    }
  }

  v20 = [*(a1 + 32) actionsToReplay];
  objc_sync_enter(v20);
  [*(a1 + 32) setReplayingActions:0];
  if ([*(a1 + 32) needToCheckForNewActions])
  {
    [*(a1 + 32) _replayAllActions];
  }

  v21 = +[MFLocalActionReplayHandler log];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [*(a1 + 32) ef_publicDescription];
    v23 = [*(a1 + 32) actionsToReplay];
    v24 = [v23 count];
    *buf = 138543618;
    v28 = v22;
    v29 = 2048;
    v30 = v24;
    _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished replaying actions. %ld action(s) left to replay", buf, 0x16u);
  }

  objc_sync_exit(v20);
  [*(a1 + 40) invalidate];

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_checkForNewActions
{
  actionsToReplay = [(MFLocalActionReplayHandler *)self actionsToReplay];
  objc_sync_enter(actionsToReplay);
  needToCheckForNewActions = [(MFLocalActionReplayHandler *)self needToCheckForNewActions];
  [(MFLocalActionReplayHandler *)self setNeedToCheckForNewActions:0];
  objc_sync_exit(actionsToReplay);

  if (needToCheckForNewActions)
  {
    actionsToReplay2 = [(MFLocalActionReplayHandler *)self actionsToReplay];
    lastObject = [actionsToReplay2 lastObject];
    persistentID = [lastObject persistentID];
    databaseID = [persistentID databaseID];

    library = [(MFLocalActionReplayHandler *)self library];
    persistence = [library persistence];
    localActionPersistence = [persistence localActionPersistence];
    account = [(MFLocalActionReplayHandler *)self account];
    uRLString = [account URLString];
    v16 = [localActionPersistence messageActionsForAccountURL:uRLString previousActionID:databaseID];

    actionsToReplay3 = [(MFLocalActionReplayHandler *)self actionsToReplay];
    objc_sync_enter(actionsToReplay3);
    actionsToReplay4 = [(MFLocalActionReplayHandler *)self actionsToReplay];
    [actionsToReplay4 addObjectsFromArray:v16];

    objc_sync_exit(actionsToReplay3);
  }
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  account = [(MFLocalActionReplayHandler *)self account];
  ef_publicDescription = [account ef_publicDescription];
  v6 = [v3 stringWithFormat:@"%@ for account: %@", self, ef_publicDescription];

  return v6;
}

- (MailAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

@end