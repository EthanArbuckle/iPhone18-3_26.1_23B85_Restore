@interface EMMailboxRepository
+ (OS_os_log)log;
+ (id)remoteInterface;
- (EMMailboxRepository)initWithRemoteConnection:(id)a3 accountRepository:(id)a4;
- (NSOrderedSet)mailboxesIfAvailable;
- (NSSet)allMailboxObjectIDs;
- (id)_filterIDsFromMailbox:(id)a3 withQuery:(id)a4;
- (id)_mailboxesFuture;
- (id)mailboxForObjectID:(id)a3;
- (id)mailboxIfAvailableForObjectID:(id)a3;
- (id)mailboxObjectIDsForMailboxType:(int64_t)a3;
- (id)mailboxesForObjectIDs:(id)a3;
- (id)mailboxesIfAvailableForObjectIDs:(id)a3;
- (id)performMailboxChangeAction:(id)a3;
- (id)performQuery:(id)a3 withObserver:(id)a4;
- (id)remoteAllMailboxObjectIDs;
- (id)remoteMailboxObjectIDsForMailboxType:(int64_t)a3;
- (int64_t)mailboxTypeForMailboxObjectID:(id)a3;
- (int64_t)remoteMailboxTypeForMailboxObjectID:(id)a3;
- (void)_prepareMailboxes:(id)a3;
- (void)_startObservingMailboxChangesIfNecessary;
- (void)dealloc;
- (void)mailboxListChanged:(id)a3;
- (void)performQuery:(id)a3 completionHandler:(id)a4;
- (void)recordFrecencyEventWithMailboxIDs:(id)a3;
- (void)recordFrecencyEventWithMailboxURLString:(id)a3;
- (void)recordFrecencyEventWithMailboxesOfMessage:(id)a3;
- (void)refreshMailboxList:(int64_t)a3;
- (void)testRecordFrecencyEventsForAllMailboxes;
- (void)testResetFrecencyForAllMailboxes;
@end

@implementation EMMailboxRepository

+ (id)remoteInterface
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F462A0C0];
  [v12 setClasses:v4 forSelector:sel_mailboxListChanged_ argumentIndex:0 ofReply:0];
  v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4641C80];
  [v13 setClasses:v4 forSelector:sel_getMailboxesWithCompletion_ argumentIndex:0 ofReply:1];
  [v13 setClasses:v7 forSelector:sel_getAllMailboxObjectIDsWithCompletion_ argumentIndex:0 ofReply:1];
  [v13 setClasses:v7 forSelector:sel_mailboxObjectIDsForMailboxType_completionHandler_ argumentIndex:0 ofReply:1];
  [v13 setClasses:v8 forSelector:sel_mailboxTypeForMailboxObjectID_completionHandler_ argumentIndex:0 ofReply:0];
  [v13 setClasses:v11 forSelector:sel_recordFrecencyEventWithMailboxesWithIDs_ argumentIndex:0 ofReply:0];
  [v13 setInterface:v12 forSelector:sel_startObservingMailboxChangesWithChangeObserver_observationIdentifier_ argumentIndex:0 ofReply:0];

  return v13;
}

- (void)_startObservingMailboxChangesIfNecessary
{
  v3 = [(EMMailboxRepository *)self registrationCancelable];

  if (!v3)
  {
    v4 = [(EMRepository *)self connection];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __63__EMMailboxRepository__startObservingMailboxChangesIfNecessary__block_invoke;
    v18[3] = &unk_1E826D7A0;
    v18[4] = self;
    v5 = [v4 remoteObjectProxyWithErrorHandler:v18];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__EMMailboxRepository__startObservingMailboxChangesIfNecessary__block_invoke_94;
    v17[3] = &unk_1E826C5B0;
    v17[4] = self;
    [v5 getMailboxesWithCompletion:v17];
    v6 = [[EMObjectID alloc] initAsEphemeralID:1];
    [v5 startObservingMailboxChangesWithChangeObserver:self observationIdentifier:v6];
    v7 = MEMORY[0x1E699B7F8];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __63__EMMailboxRepository__startObservingMailboxChangesIfNecessary__block_invoke_2;
    v14 = &unk_1E826C148;
    v8 = v5;
    v15 = v8;
    v9 = v6;
    v16 = v9;
    v10 = [v7 tokenWithCancelationBlock:&v11];
    [(EMMailboxRepository *)self setRegistrationCancelable:v10, v11, v12, v13, v14];
  }
}

- (NSOrderedSet)mailboxesIfAvailable
{
  v2 = [(EMMailboxRepository *)self _mailboxesFuture];
  v3 = [v2 resultIfAvailable:0];

  return v3;
}

- (id)_mailboxesFuture
{
  os_unfair_lock_lock(&self->_mailboxesPromiseLock);
  v3 = [(EMMailboxRepository *)self mailboxesPromise];
  v4 = [v3 future];

  os_unfair_lock_unlock(&self->_mailboxesPromiseLock);

  return v4;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__EMMailboxRepository_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_20 != -1)
  {
    dispatch_once(&log_onceToken_20, block);
  }

  v2 = log_log_20;

  return v2;
}

void __26__EMMailboxRepository_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_20;
  log_log_20 = v1;
}

- (EMMailboxRepository)initWithRemoteConnection:(id)a3 accountRepository:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = EMMailboxRepository;
  v8 = [(EMRepository *)&v23 initWithRemoteConnection:v6];
  if (v8)
  {
    v24[0] = @"name";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [EMQuery addValidSortDescriptorKeyPaths:v9 forTargetClass:objc_opt_class()];

    v8->_mailboxesPromiseLock._os_unfair_lock_opaque = 0;
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_accountRepository, a4);
    v10 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    observerMap = v8->_observerMap;
    v8->_observerMap = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mailboxesByObjectID = v8->_mailboxesByObjectID;
    v8->_mailboxesByObjectID = v12;

    v14 = [MEMORY[0x1E699B868] promise];
    mailboxesPromise = v8->_mailboxesPromise;
    v8->_mailboxesPromise = v14;

    objc_initWeak(&location, v8);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__EMMailboxRepository_initWithRemoteConnection_accountRepository___block_invoke;
    v20[3] = &unk_1E826C070;
    objc_copyWeak(&v21, &location);
    [v6 addResetHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __66__EMMailboxRepository_initWithRemoteConnection_accountRepository___block_invoke_2;
    v18[3] = &unk_1E826C070;
    objc_copyWeak(&v19, &location);
    [v6 addRecoveryHandler:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

void __66__EMMailboxRepository_initWithRemoteConnection_accountRepository___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRegistrationCancelable:0];
}

void __66__EMMailboxRepository_initWithRemoteConnection_accountRepository___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _restartObservingMailboxChangesIfNecessary];
}

- (void)dealloc
{
  [(EFCancelable *)self->_registrationCancelable cancel];
  v3.receiver = self;
  v3.super_class = EMMailboxRepository;
  [(EMMailboxRepository *)&v3 dealloc];
}

void __63__EMMailboxRepository__startObservingMailboxChangesIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[EMMailboxRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__EMMailboxRepository__startObservingMailboxChangesIfNecessary__block_invoke_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  os_unfair_lock_lock(v5 + 8);
  v6 = [*(a1 + 32) mailboxesPromise];
  os_unfair_lock_unlock(v5 + 8);
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EMErrorDomain" code:1025 userInfo:0];
  [v6 finishWithError:v7];
}

- (void)performQuery:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(EMMailboxRepository *)self _startObservingMailboxChangesIfNecessary];
  v8 = [(EMMailboxRepository *)self _mailboxesFuture];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__EMMailboxRepository_performQuery_completionHandler___block_invoke;
  v14[3] = &unk_1E826D7C8;
  v9 = v6;
  v15 = v9;
  v10 = v7;
  v16 = v10;
  [v8 addSuccessBlock:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__EMMailboxRepository_performQuery_completionHandler___block_invoke_2;
  v12[3] = &unk_1E826C738;
  v11 = v10;
  v13 = v11;
  [v8 addFailureBlock:v12];
}

void __54__EMMailboxRepository_performQuery_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) predicate];
  v4 = [v7 filteredOrderedSetUsingPredicate:v3];
  v5 = [*(a1 + 32) sortDescriptors];
  v6 = [v4 sortedArrayUsingDescriptors:v5];

  (*(*(a1 + 40) + 16))();
}

- (id)performQuery:(id)a3 withObserver:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(EMMailboxRepository *)self _startObservingMailboxChangesIfNecessary];
  v8 = [(EMRepository *)self trampoliningObserverForObserver:v7];

  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_observerMap setObject:v6 forKey:v8];
  os_unfair_lock_unlock(&self->_lock);
  v9 = [(EMMailboxRepository *)self mailboxesIfAvailable];
  if (v9)
  {
    v10 = [(EMMailboxRepository *)self _filterIDsFromMailbox:v9 withQuery:v6];
  }

  else
  {
    v10 = 0;
  }

  if ([v10 count])
  {
    v11 = [v10 array];
    [v8 queryMatchedAddedObjectIDs:v11 before:0 extraInfo:0];

    [v8 queryDidFinishInitialLoad];
  }

  v12 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__EMMailboxRepository_performQuery_withObserver___block_invoke;
  v15[3] = &unk_1E826CA80;
  objc_copyWeak(&v17, &location);
  v13 = v8;
  v16 = v13;
  [v12 addCancelationBlock:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v12;
}

void __49__EMMailboxRepository_performQuery_withObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  os_unfair_lock_lock(WeakRetained + 9);
  [*(WeakRetained + 8) removeObjectForKey:*(a1 + 32)];
  os_unfair_lock_unlock(WeakRetained + 9);
}

- (void)_prepareMailboxes:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(EMRepository *)self prepareRepositoryObjects:v4];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 objectID];
        [v5 setObject:v10 forKey:v11];
      }

      v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * j) setParentFromMailboxes:{v5, v17}];
      }

      v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)mailboxForObjectID:(id)a3
{
  v4 = a3;
  [(EMMailboxRepository *)self _startObservingMailboxChangesIfNecessary];
  v5 = [(EMMailboxRepository *)self _mailboxesFuture];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__EMMailboxRepository_mailboxForObjectID___block_invoke;
  v9[3] = &unk_1E826D7F0;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v7 = [v5 then:v9];

  return v7;
}

id __42__EMMailboxRepository_mailboxForObjectID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v3 = *(a1 + 40), os_unfair_lock_lock(v3 + 9), [*(*(a1 + 40) + 40) objectForKeyedSubscript:*(a1 + 32)], v4 = objc_claimAutoreleasedReturnValue(), os_unfair_lock_unlock(v3 + 9), v4))
  {
    v5 = [MEMORY[0x1E699B7C8] futureWithResult:v4];
  }

  else
  {
    v6 = MEMORY[0x1E699B7C8];
    v7 = [MEMORY[0x1E696ABC0] em_itemNotFoundErrorWithItemID:*(a1 + 32)];
    v5 = [v6 futureWithError:v7];
    v4 = v7;
  }

  return v5;
}

- (id)mailboxesForObjectIDs:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__EMMailboxRepository_mailboxesForObjectIDs___block_invoke;
  v5[3] = &unk_1E826D818;
  v5[4] = self;
  v3 = [a3 ef_map:v5];

  return v3;
}

id __45__EMMailboxRepository_mailboxesForObjectIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) mailboxForObjectID:a2];

  return v2;
}

- (id)mailboxIfAvailableForObjectID:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableDictionary *)self->_mailboxesByObjectID objectForKeyedSubscript:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)mailboxesIfAvailableForObjectIDs:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__EMMailboxRepository_mailboxesIfAvailableForObjectIDs___block_invoke;
  v5[3] = &unk_1E826D840;
  v5[4] = self;
  v3 = [a3 ef_compactMap:v5];

  return v3;
}

id __56__EMMailboxRepository_mailboxesIfAvailableForObjectIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) mailboxIfAvailableForObjectID:a2];

  return v2;
}

- (void)refreshMailboxList:(int64_t)a3
{
  v5 = [(EMRepository *)self connection];
  v4 = [v5 remoteObjectProxy];
  [v4 refreshMailboxList:a3];
}

- (id)performMailboxChangeAction:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E699B868] promise];
  v6 = [(EMRepository *)self connection];
  v7 = [v6 reattemptingRemoteObjectProxy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__EMMailboxRepository_performMailboxChangeAction___block_invoke;
  v11[3] = &unk_1E826D868;
  v8 = v5;
  v12 = v8;
  [v7 performMailboxChangeAction:v4 completionHandler:v11];

  v9 = [v8 future];

  return v9;
}

void __50__EMMailboxRepository_performMailboxChangeAction___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v2 finishWithResult:?];
}

- (NSSet)allMailboxObjectIDs
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableDictionary *)self->_mailboxesByObjectID count])
  {
    v3 = objc_alloc(MEMORY[0x1E695DFD8]);
    v4 = [(NSMutableDictionary *)self->_mailboxesByObjectID allKeys];
    v5 = [v3 initWithArray:v4];

    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v5 = [(EMMailboxRepository *)self remoteAllMailboxObjectIDs];
LABEL_6:

  return v5;
}

- (id)remoteAllMailboxObjectIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v2 = [(EMRepository *)self connection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_27];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__EMMailboxRepository_remoteAllMailboxObjectIDs__block_invoke_105;
  v6[3] = &unk_1E826D890;
  v6[4] = &v7;
  [v3 getAllMailboxObjectIDsWithCompletion:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __48__EMMailboxRepository_remoteAllMailboxObjectIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[EMMailboxRepository log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __48__EMMailboxRepository_remoteAllMailboxObjectIDs__block_invoke_cold_1(v2, v3);
  }
}

- (id)mailboxObjectIDsForMailboxType:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableDictionary *)self->_mailboxesByObjectID count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    mailboxesByObjectID = self->_mailboxesByObjectID;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __54__EMMailboxRepository_mailboxObjectIDsForMailboxType___block_invoke;
    v12 = &unk_1E826D8B8;
    v14 = a3;
    v7 = v5;
    v13 = v7;
    [(NSMutableDictionary *)mailboxesByObjectID enumerateKeysAndObjectsUsingBlock:&v9];

    os_unfair_lock_unlock(&self->_lock);
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v7 = [(EMMailboxRepository *)self remoteMailboxObjectIDsForMailboxType:a3, v9, v10, v11, v12];
LABEL_6:

  return v7;
}

void __54__EMMailboxRepository_mailboxObjectIDsForMailboxType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 type] == *(a1 + 40))
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (id)remoteMailboxObjectIDsForMailboxType:(int64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v4 = [(EMRepository *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__EMMailboxRepository_remoteMailboxObjectIDsForMailboxType___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a3;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__EMMailboxRepository_remoteMailboxObjectIDsForMailboxType___block_invoke_110;
  v8[3] = &unk_1E826D890;
  v8[4] = &v10;
  [v5 mailboxObjectIDsForMailboxType:a3 completionHandler:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __60__EMMailboxRepository_remoteMailboxObjectIDsForMailboxType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[EMMailboxRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__EMMailboxRepository_remoteMailboxObjectIDsForMailboxType___block_invoke_cold_1(a1);
  }
}

- (int64_t)mailboxTypeForMailboxObjectID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSMutableDictionary *)self->_mailboxesByObjectID count])
  {
    v5 = [(NSMutableDictionary *)self->_mailboxesByObjectID objectForKey:v4];
    v6 = [v5 type];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v6 = [(EMMailboxRepository *)self remoteMailboxTypeForMailboxObjectID:v4];
  }

  return v6;
}

- (int64_t)remoteMailboxTypeForMailboxObjectID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -500;
  v5 = [(EMRepository *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__EMMailboxRepository_remoteMailboxTypeForMailboxObjectID___block_invoke;
  v11[3] = &unk_1E826D7A0;
  v6 = v4;
  v12 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__EMMailboxRepository_remoteMailboxTypeForMailboxObjectID___block_invoke_111;
  v10[3] = &unk_1E826D900;
  v10[4] = &v13;
  [v7 mailboxTypeForMailboxObjectID:v6 completionHandler:v10];

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __59__EMMailboxRepository_remoteMailboxTypeForMailboxObjectID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[EMMailboxRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__EMMailboxRepository_remoteMailboxTypeForMailboxObjectID___block_invoke_cold_1(a1);
  }
}

- (id)_filterIDsFromMailbox:(id)a3 withQuery:(id)a4
{
  v5 = a3;
  v6 = [a4 predicate];
  v7 = [v5 filteredOrderedSetUsingPredicate:v6];

  v8 = [v7 ef_compactMap:&__block_literal_global_115];

  return v8;
}

id __55__EMMailboxRepository__filterIDsFromMailbox_withQuery___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectID];

  return v2;
}

- (void)mailboxListChanged:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v3 = +[EMMailboxRepository log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v64 = [v34 count];
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "Received New Mailbox List count:%lu", buf, 0xCu);
  }

  [(EMMailboxRepository *)self _prepareMailboxes:v34];
  v35 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v34];
  v4 = [(EMMailboxRepository *)self mailboxesIfAvailable];
  os_unfair_lock_lock(&self->_lock);
  v39 = v4;
  v40 = [v4 mutableCopy];
  [v40 minusOrderedSet:v35];
  mailboxesByObjectID = self->_mailboxesByObjectID;
  v6 = [v40 array];
  v7 = [v6 ef_mapSelector:sel_objectID];
  [(NSMutableDictionary *)mailboxesByObjectID removeObjectsForKeys:v7];

  v41 = [v35 mutableCopy];
  [v41 minusOrderedSet:v4];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v35;
  v8 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v8)
  {
    v9 = *v57;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v57 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v56 + 1) + 8 * i);
        v12 = self->_mailboxesByObjectID;
        v13 = [v11 objectID];
        [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];
      }

      v8 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v8);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v38 = self->_observerMap;
  v14 = [(NSMapTable *)v38 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v14)
  {
    v15 = *v53;
    v36 = *v53;
    do
    {
      v16 = 0;
      v37 = v14;
      do
      {
        if (*v53 != v15)
        {
          objc_enumerationMutation(v38);
        }

        v17 = *(*(&v52 + 1) + 8 * v16);
        v18 = [(NSMapTable *)self->_observerMap objectForKey:v17];
        v19 = [(EMMailboxRepository *)self _filterIDsFromMailbox:obj withQuery:v18];
        v44 = [(EMMailboxRepository *)self _filterIDsFromMailbox:v41 withQuery:v18];
        v20 = [(EMMailboxRepository *)self _filterIDsFromMailbox:v40 withQuery:v18];
        if ([v44 count])
        {
          if (v39)
          {
            v21 = [MEMORY[0x1E696AD50] indexSet];
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v22 = v44;
            v23 = [v22 countByEnumeratingWithState:&v48 objects:v60 count:16];
            if (v23)
            {
              v24 = *v49;
              do
              {
                for (j = 0; j != v23; ++j)
                {
                  if (*v49 != v24)
                  {
                    objc_enumerationMutation(v22);
                  }

                  [v21 addIndex:{objc_msgSend(v19, "indexOfObject:", *(*(&v48 + 1) + 8 * j))}];
                }

                v23 = [v22 countByEnumeratingWithState:&v48 objects:v60 count:16];
              }

              while (v23);
            }

            v15 = v36;
            v14 = v37;
            v45[0] = MEMORY[0x1E69E9820];
            v45[1] = 3221225472;
            v45[2] = __42__EMMailboxRepository_mailboxListChanged___block_invoke;
            v45[3] = &unk_1E826D928;
            v46 = v19;
            v47 = v17;
            [v21 enumerateRangesUsingBlock:v45];
          }

          else
          {
            v26 = [v44 array];
            [v17 queryMatchedAddedObjectIDs:v26 before:0 extraInfo:0];

            [v17 queryDidFinishInitialLoad];
          }
        }

        if ([v20 count])
        {
          v27 = [v20 array];
          [v17 queryMatchedDeletedObjectIDs:v27];
        }

        ++v16;
      }

      while (v16 != v14);
      v14 = [(NSMapTable *)v38 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v14);
  }

  os_unfair_lock_unlock(&self->_lock);
  os_unfair_lock_lock(&self->_mailboxesPromiseLock);
  v28 = [(EMMailboxRepository *)self mailboxesPromise];
  v29 = [v28 future];
  v30 = [v29 isFinished];

  if (v30)
  {
    v31 = [MEMORY[0x1E699B868] promise];
    [(EMMailboxRepository *)self setMailboxesPromise:v31];
  }

  v32 = [(EMMailboxRepository *)self mailboxesPromise];
  os_unfair_lock_unlock(&self->_mailboxesPromiseLock);
  [v32 finishWithResult:obj];

  v33 = *MEMORY[0x1E69E9840];
}

void __42__EMMailboxRepository_mailboxListChanged___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v9 = [*(a1 + 32) objectAtIndexedSubscript:a2 - 1];
  }

  else
  {
    v9 = 0;
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) array];
  v8 = [v7 subarrayWithRange:{a2, a3}];
  [v6 queryMatchedAddedObjectIDs:v8 after:v9 extraInfo:0];
}

- (void)recordFrecencyEventWithMailboxURLString:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
    if (v5)
    {
      v6 = [[EMMailboxObjectID alloc] initWithURL:v5];
      v7 = v6;
      if (v6)
      {
        v10[0] = v6;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
        [(EMMailboxRepository *)self recordFrecencyEventWithMailboxIDs:v8];
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)recordFrecencyEventWithMailboxesOfMessage:(id)a3
{
  v4 = [a3 mailboxObjectIDs];
  [(EMMailboxRepository *)self recordFrecencyEventWithMailboxIDs:?];
}

- (void)recordFrecencyEventWithMailboxIDs:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    v4 = [(EMRepository *)self connection];
    v5 = [v4 remoteObjectProxy];
    [v5 recordFrecencyEventWithMailboxesWithIDs:v6];
  }
}

- (void)testRecordFrecencyEventsForAllMailboxes
{
  v3 = [(EMRepository *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 testRecordFrecencyEventsForAllMailboxes];
}

- (void)testResetFrecencyForAllMailboxes
{
  v3 = [(EMRepository *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 testResetFrecencyForAllMailboxes];
}

void __63__EMMailboxRepository__startObservingMailboxChangesIfNecessary__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "Error establishing xpc connection : %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __48__EMMailboxRepository_remoteAllMailboxObjectIDs__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "Failed getAllMailboxObjectIDsWithCompletion: error:%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __60__EMMailboxRepository_remoteMailboxObjectIDsForMailboxType___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_1(&dword_1C6655000, v2, v3, "Failed mailboxObjectIDsForMailboxType:%li error:%{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

void __59__EMMailboxRepository_remoteMailboxTypeForMailboxObjectID___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_1(&dword_1C6655000, v2, v3, "Failed mailboxTypeForMailboxObjectID:%{public}@ error:%{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

@end