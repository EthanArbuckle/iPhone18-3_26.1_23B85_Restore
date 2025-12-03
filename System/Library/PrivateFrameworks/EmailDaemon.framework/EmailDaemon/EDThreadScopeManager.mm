@interface EDThreadScopeManager
+ (OS_os_log)log;
+ (id)mailboxTypesToPrecompute;
+ (id)signpostLog;
- (BOOL)_isBlackPearlPredicate:(id *)predicate;
- (BOOL)_shouldPrecomputeMailboxType:(id)type;
- (BOOL)_shouldPrecomputeMailboxWithObjectID:(id)d;
- (BOOL)isThreadScopePrecomputed:(id)precomputed mailboxProvider:(id)provider shouldMigrate:(BOOL *)migrate;
- (EDThreadScopeManager)initWithDataSource:(id)source;
- (EDThreadScopeManagerDataSource)dataSource;
- (NSArray)threadScopes;
- (id)_mailboxFromPrecomputedMailboxScope:(id)scope mailboxProvider:(id)provider mailboxPredicate:(id *)predicate;
- (id)_mailboxScopeFromPredicate:(id)predicate;
- (id)_precomputedMailboxScopeForFilterPredicate:(id)predicate mailboxTypeResolver:(id)resolver foundPredicates:(unint64_t *)predicates;
- (id)_threadScopeInfoForThreadScope:(id)scope;
- (id)_threadScopesWithLastViewedOlderThanLimit;
- (id)precomputedMailboxScopeForThreadScope:(id)scope mailboxTypeResolver:(id)resolver foundPredicates:(unint64_t *)predicates;
- (id)threadScopeFromPrecomputedMailboxScope:(id)scope predicates:(unint64_t)predicates mailboxProvider:(id)provider;
- (id)threadScopesByDatabaseID;
- (int64_t)databaseIDForThreadScope:(id)scope;
- (unint64_t)_findPredicateTypeWithCompoundPredicate:(id)predicate mailboxTypeResolver:(id)resolver outMailboxScope:(id *)scope;
- (unint64_t)_numberOfThreadScopesToEvictFrom:(id)from upTo:(unint64_t *)to;
- (unint64_t)signpostID;
- (void)_evictAtLeast:(unint64_t)least upTo:(unint64_t)to fromThreadScopesWithDatabaseIDs:(id)ds;
- (void)_initializeThreadScopesIfNeeded;
- (void)_sendEventForCoreAnalytics:(id)analytics;
- (void)logExistingThreadScopes;
- (void)removeAllThreadScopes;
- (void)removeThreadScope:(id)scope;
- (void)removeThreadScopesForMailboxScope:(id)scope;
- (void)resetCache;
- (void)setLastViewedDate:(id)date forThreadScope:(id)scope;
@end

@implementation EDThreadScopeManager

- (void)_initializeThreadScopesIfNeeded
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_threadScopesLock);
  p_threadScopes = &self->_threadScopes;
  threadScopes = self->_threadScopes;
  os_unfair_lock_unlock(&self->_threadScopesLock);
  if (!threadScopes)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dataSource = [(EDThreadScopeManager *)self dataSource];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__EDThreadScopeManager__initializeThreadScopesIfNeeded__block_invoke;
    v16[3] = &unk_1E8258E60;
    v7 = v5;
    v17 = v7;
    [dataSource threadScopeManager:self populateThreadScopesWithBlock:v16];

    v15 = 0;
    os_unfair_lock_lock(&self->_threadScopesLock);
    if (*p_threadScopes)
    {
      goto LABEL_9;
    }

    objc_storeStrong(&self->_threadScopes, v5);
    v8 = +[EDThreadScopeManager log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *p_threadScopes;
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Loaded pre-computed thread scopes: %{public}@", buf, 0xCu);
    }

    v10 = [*p_threadScopes count];
    if (v10 < 6)
    {
LABEL_9:
      v12 = 0;
      _threadScopesWithLastViewedOlderThanLimit = 0;
    }

    else
    {
      _threadScopesWithLastViewedOlderThanLimit = [(EDThreadScopeManager *)self _threadScopesWithLastViewedOlderThanLimit];
      v12 = [(EDThreadScopeManager *)self _numberOfThreadScopesToEvictFrom:_threadScopesWithLastViewedOlderThanLimit upTo:&v15];
      v13 = +[EDThreadScopeManager log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218754;
        v19 = v12;
        v20 = 2048;
        v21 = v15;
        v22 = 2048;
        v23 = v10;
        v24 = 2114;
        v25 = _threadScopesWithLastViewedOlderThanLimit;
        _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Evicting %lu-%lu thread scopes (after initializing %lu thread scopes) from: %{public}@", buf, 0x2Au);
      }
    }

    os_unfair_lock_unlock(&self->_threadScopesLock);
    if ([_threadScopesWithLastViewedOlderThanLimit count] && v15)
    {
      [(EDThreadScopeManager *)self _evictAtLeast:v12 upTo:v15 fromThreadScopesWithDatabaseIDs:_threadScopesWithLastViewedOlderThanLimit];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EDThreadScopeManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_104 != -1)
  {
    dispatch_once(&log_onceToken_104, block);
  }

  v2 = log_log_104;

  return v2;
}

void __27__EDThreadScopeManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_104;
  log_log_104 = v1;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__EDThreadScopeManager_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_13 != -1)
  {
    dispatch_once(&signpostLog_onceToken_13, block);
  }

  v2 = signpostLog_log_13;

  return v2;
}

void __35__EDThreadScopeManager_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_13;
  signpostLog_log_13 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EDThreadScopeManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = EDThreadScopeManager;
  v5 = [(EDThreadScopeManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
    v6->_threadScopesLock._os_unfair_lock_opaque = 0;
    v7 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.EmailDaemon.EDThreadScopeManager.evictionScheduler"];
    evictionScheduler = v6->_evictionScheduler;
    v6->_evictionScheduler = v7;

    v9 = objc_alloc_init(MEMORY[0x1E699AC70]);
    analyticsCollector = v6->_analyticsCollector;
    v6->_analyticsCollector = v9;
  }

  return v6;
}

+ (id)mailboxTypesToPrecompute
{
  if (mailboxTypesToPrecompute_onceToken != -1)
  {
    +[EDThreadScopeManager mailboxTypesToPrecompute];
  }

  v3 = mailboxTypesToPrecompute_mailboxTypes;

  return v3;
}

void __48__EDThreadScopeManager_mailboxTypesToPrecompute__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F45E6D90, &unk_1F45E6DA8, &unk_1F45E6DC0, &unk_1F45E6DD8, &unk_1F45E6DF0, &unk_1F45E6E08, 0}];
  v1 = mailboxTypesToPrecompute_mailboxTypes;
  mailboxTypesToPrecompute_mailboxTypes = v0;
}

- (BOOL)isThreadScopePrecomputed:(id)precomputed mailboxProvider:(id)provider shouldMigrate:(BOOL *)migrate
{
  precomputedCopy = precomputed;
  providerCopy = provider;
  [(EDThreadScopeManager *)self _initializeThreadScopesIfNeeded];
  v10 = [(EDThreadScopeManager *)self _threadScopeInfoForThreadScope:precomputedCopy];
  v11 = v10;
  if (!v10)
  {
    v15 = [(EDThreadScopeManager *)self precomputedMailboxScopeForThreadScope:precomputedCopy mailboxTypeResolver:providerCopy foundPredicates:0];

    v13 = 0;
    needsUpdate = v15 != 0;
    if (!migrate)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  needsUpdate = [v10 needsUpdate];
  v13 = needsUpdate ^ 1;
  if (migrate)
  {
LABEL_3:
    *migrate = needsUpdate;
  }

LABEL_4:

  return v13;
}

- (id)_threadScopeInfoForThreadScope:(id)scope
{
  scopeCopy = scope;
  os_unfair_lock_lock(&self->_threadScopesLock);
  v5 = [(NSMutableDictionary *)self->_threadScopes objectForKeyedSubscript:scopeCopy];
  os_unfair_lock_unlock(&self->_threadScopesLock);

  return v5;
}

- (id)precomputedMailboxScopeForThreadScope:(id)scope mailboxTypeResolver:(id)resolver foundPredicates:(unint64_t *)predicates
{
  v26 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  resolverCopy = resolver;
  mailboxScope = [scopeCopy mailboxScope];
  filterPredicate = [scopeCopy filterPredicate];
  if (!filterPredicate)
  {
    if (([mailboxScope excludeTypes] & 1) != 0 || objc_msgSend(mailboxScope, "excludeMailboxes"))
    {
      goto LABEL_8;
    }

    mailboxTypes = [mailboxScope mailboxTypes];
    mailboxScope2 = [scopeCopy mailboxScope];
    mailboxObjectIDs = [mailboxScope2 mailboxObjectIDs];

    v20 = [mailboxTypes count];
    if (([mailboxObjectIDs count] + v20) >= 2)
    {
      if (predicates)
      {
        *predicates = 0;
      }

LABEL_17:
      v15 = 0;
      goto LABEL_18;
    }

    anyObject = [mailboxTypes anyObject];
    if (anyObject && [(EDThreadScopeManager *)self _shouldPrecomputeMailboxType:anyObject])
    {
      if (predicates)
      {
        *predicates = 0;
      }

      mailboxScope = mailboxScope;
    }

    else
    {
      anyObject2 = [mailboxObjectIDs anyObject];
      if (!anyObject2 || ![(EDThreadScopeManager *)self _shouldPrecomputeMailboxWithObjectID:anyObject2])
      {

        if (predicates)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }

      if (predicates)
      {
        *predicates = 0;
      }

      mailboxScope = mailboxScope;
    }

    v15 = mailboxScope;
    goto LABEL_18;
  }

  allMailboxesScope = [MEMORY[0x1E699AD28] allMailboxesScope];

  if (mailboxScope != allMailboxesScope)
  {
    v13 = +[EDThreadScopeManager log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [filterPredicate ef_publicDescription];
      *v25 = 138543362;
      *&v25[4] = ef_publicDescription;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Thread scope has unsupported filter predicate: %{public}@", v25, 0xCu);
    }

LABEL_8:
    if (predicates)
    {
LABEL_9:
      v15 = 0;
      *predicates = 0;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *v25 = 0;
  v16 = [(EDThreadScopeManager *)self _precomputedMailboxScopeForFilterPredicate:filterPredicate mailboxTypeResolver:resolverCopy foundPredicates:v25];

  if (predicates)
  {
    *predicates = *v25;
  }

  mailboxScope = v16;
  v15 = mailboxScope;
LABEL_18:

  v21 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_precomputedMailboxScopeForFilterPredicate:(id)predicate mailboxTypeResolver:(id)resolver foundPredicates:(unint64_t *)predicates
{
  predicateCopy = predicate;
  resolverCopy = resolver;
  v20 = predicateCopy;
  v10 = [(EDThreadScopeManager *)self _isBlackPearlPredicate:&v20];
  v11 = v20;

  if (v10)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v10)
    {
      v15 = [(EDThreadScopeManager *)self _mailboxScopeFromPredicate:v11];
      v16 = 4;
      if (!v15)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

    if (predicates)
    {
      v15 = 0;
LABEL_21:
      v17 = 0;
      *predicates = 0;
      goto LABEL_23;
    }

LABEL_19:
    v15 = 0;
LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  v13 = v11;
  if ([v13 compoundPredicateType] != 2)
  {
    if (predicates)
    {
      *predicates = 0;
    }

    goto LABEL_19;
  }

  v19 = 0;
  v14 = [(EDThreadScopeManager *)self _findPredicateTypeWithCompoundPredicate:v13 mailboxTypeResolver:resolverCopy outMailboxScope:&v19];
  v15 = v19;
  v16 = v14 | v12;

  if (!v15)
  {
LABEL_20:
    if (predicates)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

LABEL_10:
  if (!v16)
  {
    goto LABEL_20;
  }

  if (predicates)
  {
    *predicates = v16;
  }

  v15 = v15;
  v17 = v15;
LABEL_23:

  return v17;
}

- (BOOL)_isBlackPearlPredicate:(id *)predicate
{
  v4 = *predicate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = *predicate;
  if ([v5 compoundPredicateType] == 1 && (objc_msgSend(v5, "subpredicates"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7 == 2))
  {
    subpredicates = [v5 subpredicates];
    firstObject = [subpredicates firstObject];

    subpredicates2 = [v5 subpredicates];
    lastObject = [subpredicates2 lastObject];

    predicateForPrimaryMessages = [MEMORY[0x1E699ADA0] predicateForPrimaryMessages];
    v13 = [firstObject isEqual:predicateForPrimaryMessages];

    v14 = lastObject;
    if (v13 & 1) != 0 || ([MEMORY[0x1E699ADA0] predicateForPrimaryMessages], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(lastObject, "isEqual:", v15), v15, v14 = firstObject, (v16))
    {
      *predicate = v14;
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unint64_t)_findPredicateTypeWithCompoundPredicate:(id)predicate mailboxTypeResolver:(id)resolver outMailboxScope:(id *)scope
{
  v27 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  resolverCopy = resolver;
  [predicateCopy subpredicates];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v8 = v23 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = *v23;
    scopeCopy = scope;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if (v10 || ([(EDThreadScopeManager *)self _mailboxScopeFromPredicate:*(*(&v22 + 1) + 8 * i)], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          if ((v11 & 1) != 0 || ![MEMORY[0x1E699ADA0] isPredicateForMessagesWithActiveFollowUp:v14 mailboxTypeResolver:resolverCopy inSent:0 sentMailboxObjectIDs:0])
          {
            if ((v11 & 2) != 0 || ![MEMORY[0x1E699ADA0] isPredicateForMessagesWithFiredReadLaterDate:v14 accountObjectIDs:0])
            {

              scope = scopeCopy;
              goto LABEL_19;
            }

            v11 |= 2uLL;
          }

          else
          {
            v11 |= 1uLL;
          }
        }

        else
        {
          v10 = v15;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      scope = scopeCopy;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_19:
    v10 = 0;
    v11 = 0;
  }

  if (scope)
  {
    v16 = v10;
    *scope = v10;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)_mailboxScopeFromPredicate:(id)predicate
{
  v16[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v14 = 0;
  v15 = -500;
  v5 = [MEMORY[0x1E699ADA0] isPredicateForMessagesInMailboxObjectID:predicateCopy mailboxObjectID:&v14];
  v6 = v14;
  if (v5 & 1) != 0 || ([MEMORY[0x1E699ADA0] isPredicateForMessagesInMailboxWithType:predicateCopy mailboxType:&v15])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(EDThreadScopeManager *)self _shouldPrecomputeMailboxWithObjectID:v6])
      {
        v7 = MEMORY[0x1E699AD28];
        v16[0] = v6;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
        v9 = [v7 mailboxScopeForMailboxObjectIDs:v8 forExclusion:0];

        goto LABEL_9;
      }
    }

    else
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
      v11 = [(EDThreadScopeManager *)self _shouldPrecomputeMailboxType:v10];

      if (v11)
      {
        v9 = [MEMORY[0x1E699AD28] mailboxScopeForMailboxType:v15 forExclusion:0];
        goto LABEL_9;
      }
    }
  }

  v9 = 0;
LABEL_9:

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_mailboxFromPrecomputedMailboxScope:(id)scope mailboxProvider:(id)provider mailboxPredicate:(id *)predicate
{
  scopeCopy = scope;
  providerCopy = provider;
  mailboxObjectIDs = [scopeCopy mailboxObjectIDs];
  anyObject = [mailboxObjectIDs anyObject];

  v11 = MEMORY[0x1E699ADA0];
  if (anyObject)
  {
    v12 = [MEMORY[0x1E699ADA0] predicateForMessagesInMailboxWithObjectID:anyObject];
    v13 = [providerCopy mailboxForObjectID:anyObject];
    if (!predicate)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  mailboxTypes = [scopeCopy mailboxTypes];
  anyObject2 = [mailboxTypes anyObject];
  v12 = [v11 predicateForMessagesInMailboxWithType:{objc_msgSend(anyObject2, "integerValue")}];

  v13 = 0;
  if (predicate)
  {
LABEL_3:
    v14 = v12;
    *predicate = v12;
  }

LABEL_4:

  return v13;
}

- (id)threadScopeFromPrecomputedMailboxScope:(id)scope predicates:(unint64_t)predicates mailboxProvider:(id)provider
{
  predicatesCopy = predicates;
  v35[1] = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  providerCopy = provider;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((predicatesCopy & 3) != 0)
  {
    v32 = 0;
    v11 = [(EDThreadScopeManager *)self _mailboxFromPrecomputedMailboxScope:scopeCopy mailboxProvider:providerCopy mailboxPredicate:&v32];
    v12 = v32;
    [v10 ef_addOptionalObject:v12];
    allMailboxesScope = [MEMORY[0x1E699AD28] allMailboxesScope];

    scopeCopy = allMailboxesScope;
    if (predicatesCopy)
    {
      v14 = MEMORY[0x1E699ADA0];
      if (v11)
      {
        v35[0] = v11;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
        predicateForMessagesWithActiveFollowUpInSent = [v14 predicateForMessagesWithActiveFollowUpInAccountsOfMailboxes:v15 mailboxTypeResolver:providerCopy];
      }

      else
      {
        predicateForMessagesWithActiveFollowUpInSent = [MEMORY[0x1E699ADA0] predicateForMessagesWithActiveFollowUpInSent];
      }

      [v10 ef_addOptionalObject:predicateForMessagesWithActiveFollowUpInSent];
    }

    if ((predicatesCopy & 2) != 0)
    {
      v17 = MEMORY[0x1E699ADA0];
      if (v11)
      {
        v34 = v11;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
        predicateForFiredReadLaterMessages = [v17 predicateForMessagesForFiredReadLaterDateInAccountsOfMailboxes:v18];
      }

      else
      {
        predicateForFiredReadLaterMessages = [MEMORY[0x1E699ADA0] predicateForFiredReadLaterMessages];
      }

      [v10 ef_addOptionalObject:predicateForFiredReadLaterMessages];
    }
  }

  else
  {
    v11 = 0;
  }

  if ([v10 count])
  {
    v20 = [MEMORY[0x1E696AE18] ef_orCompoundPredicateWithSubpredicates:v10];
    if ((predicatesCopy & 4) == 0)
    {
      v21 = v20;
      goto LABEL_21;
    }

    v22 = v20;
    if (v20)
    {
      goto LABEL_20;
    }
  }

  else if ((predicatesCopy & 4) == 0)
  {
    v21 = 0;
    goto LABEL_21;
  }

  v31 = 0;
  v23 = [(EDThreadScopeManager *)self _mailboxFromPrecomputedMailboxScope:scopeCopy mailboxProvider:providerCopy mailboxPredicate:&v31];
  v22 = v31;
LABEL_20:
  v24 = MEMORY[0x1E696AE18];
  v33[0] = v22;
  predicateForPrimaryMessages = [MEMORY[0x1E699ADA0] predicateForPrimaryMessages];
  v33[1] = predicateForPrimaryMessages;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v27 = [v24 ef_andCompoundPredicateWithSubpredicates:v26];

  v21 = v27;
LABEL_21:
  v28 = [objc_alloc(MEMORY[0x1E699AF08]) initWithMailboxScope:scopeCopy filterPredicate:v21];

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (BOOL)_shouldPrecomputeMailboxWithObjectID:(id)d
{
  dCopy = d;
  if ([dCopy isEphemeral])
  {
    v5 = 0;
  }

  else
  {
    dataSource = [(EDThreadScopeManager *)self dataSource];
    v5 = [dataSource threadScopeManager:self isValidMailboxObjectID:dCopy];
  }

  return v5;
}

- (BOOL)_shouldPrecomputeMailboxType:(id)type
{
  typeCopy = type;
  mailboxTypesToPrecompute = [objc_opt_class() mailboxTypesToPrecompute];
  v5 = [mailboxTypesToPrecompute containsObject:typeCopy];

  return v5;
}

- (NSArray)threadScopes
{
  [(EDThreadScopeManager *)self _initializeThreadScopesIfNeeded];
  os_unfair_lock_lock(&self->_threadScopesLock);
  allKeys = [(NSMutableDictionary *)self->_threadScopes allKeys];
  os_unfair_lock_unlock(&self->_threadScopesLock);

  return allKeys;
}

- (int64_t)databaseIDForThreadScope:(id)scope
{
  scopeCopy = scope;
  [(EDThreadScopeManager *)self _initializeThreadScopesIfNeeded];
  os_unfair_lock_lock(&self->_threadScopesLock);
  v5 = [(NSMutableDictionary *)self->_threadScopes objectForKeyedSubscript:scopeCopy];
  v6 = v5;
  if (v5)
  {
    databaseID = [v5 databaseID];
  }

  else
  {
    databaseID = *MEMORY[0x1E699A728];
  }

  os_unfair_lock_unlock(&self->_threadScopesLock);
  return databaseID;
}

- (id)threadScopesByDatabaseID
{
  [(EDThreadScopeManager *)self _initializeThreadScopesIfNeeded];
  os_unfair_lock_lock(&self->_threadScopesLock);
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_threadScopes, "count")}];
  threadScopes = self->_threadScopes;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__EDThreadScopeManager_threadScopesByDatabaseID__block_invoke;
  v7[3] = &unk_1E8258E10;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)threadScopes enumerateKeysAndObjectsUsingBlock:v7];

  os_unfair_lock_unlock(&self->_threadScopesLock);

  return v5;
}

void __48__EDThreadScopeManager_threadScopesByDatabaseID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "databaseID")}];
  [v6 setObject:v8 forKeyedSubscript:v7];
}

- (void)setLastViewedDate:(id)date forThreadScope:(id)scope
{
  v15 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  scopeCopy = scope;
  v8 = +[EDThreadScopeManager log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = dateCopy;
    v13 = 2114;
    v14 = scopeCopy;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Setting lastViewedDate=%{public}@ for thread scope: %{public}@", &v11, 0x16u);
  }

  os_unfair_lock_lock(&self->_threadScopesLock);
  v9 = [(NSMutableDictionary *)self->_threadScopes objectForKeyedSubscript:scopeCopy];
  [v9 setLastViewedDate:dateCopy];

  os_unfair_lock_unlock(&self->_threadScopesLock);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeAllThreadScopes
{
  v3 = +[EDThreadScopeManager log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Resetting all pre-computed thread scopes", v7, 2u);
  }

  os_unfair_lock_lock(&self->_threadScopesLock);
  threadScopes = self->_threadScopes;
  if (threadScopes)
  {
    [(NSMutableDictionary *)threadScopes removeAllObjects];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = self->_threadScopes;
    self->_threadScopes = v5;
  }

  os_unfair_lock_unlock(&self->_threadScopesLock);
}

- (void)removeThreadScope:(id)scope
{
  v9 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  v5 = +[EDThreadScopeManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = scopeCopy;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Resetting pre-computed thread scope: %{public}@", &v7, 0xCu);
  }

  os_unfair_lock_lock(&self->_threadScopesLock);
  [(NSMutableDictionary *)self->_threadScopes removeObjectForKey:scopeCopy];
  os_unfair_lock_unlock(&self->_threadScopesLock);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeThreadScopesForMailboxScope:(id)scope
{
  v15 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  v5 = +[EDThreadScopeManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = scopeCopy;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Resetting pre-computed thread scopes for mailbox scope: %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_threadScopesLock);
  threadScopes = self->_threadScopes;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__EDThreadScopeManager_removeThreadScopesForMailboxScope___block_invoke;
  v11[3] = &unk_1E8258E38;
  v7 = scopeCopy;
  v12 = v7;
  v8 = [(NSMutableDictionary *)threadScopes keysOfEntriesPassingTest:v11];
  allObjects = [v8 allObjects];

  [(NSMutableDictionary *)self->_threadScopes removeObjectsForKeys:allObjects];
  os_unfair_lock_unlock(&self->_threadScopesLock);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __58__EDThreadScopeManager_removeThreadScopesForMailboxScope___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mailboxScope];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)resetCache
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  dataSource = [(EDThreadScopeManager *)self dataSource];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__EDThreadScopeManager_resetCache__block_invoke;
  v8[3] = &unk_1E8258E60;
  v5 = v3;
  v9 = v5;
  [dataSource threadScopeManager:self populateThreadScopesWithBlock:v8];

  os_unfair_lock_lock(&self->_threadScopesLock);
  threadScopes = self->_threadScopes;
  self->_threadScopes = v5;
  v7 = v5;

  os_unfair_lock_unlock(&self->_threadScopesLock);
}

void __34__EDThreadScopeManager_resetCache__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v11 = a3;
  v9 = a5;
  v10 = [[_EDThreadScopeInfo alloc] initWithDatabaseID:a2 needsUpdate:a4 lastViewedDate:v9];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:v11];
}

void __55__EDThreadScopeManager__initializeThreadScopesIfNeeded__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v11 = a3;
  v9 = a5;
  v10 = [[_EDThreadScopeInfo alloc] initWithDatabaseID:a2 needsUpdate:a4 lastViewedDate:v9];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:v11];
}

- (void)_evictAtLeast:(unint64_t)least upTo:(unint64_t)to fromThreadScopesWithDatabaseIDs:(id)ds
{
  dsCopy = ds;
  evictionScheduler = [(EDThreadScopeManager *)self evictionScheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__EDThreadScopeManager__evictAtLeast_upTo_fromThreadScopesWithDatabaseIDs___block_invoke;
  v11[3] = &unk_1E8252DA0;
  v11[4] = self;
  v10 = dsCopy;
  v12 = v10;
  leastCopy = least;
  toCopy = to;
  [evictionScheduler performBlock:v11];
}

void __75__EDThreadScopeManager__evictAtLeast_upTo_fromThreadScopesWithDatabaseIDs___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = [*(a1 + 32) dataSource];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __75__EDThreadScopeManager__evictAtLeast_upTo_fromThreadScopesWithDatabaseIDs___block_invoke_2;
  v39[3] = &unk_1E8258E88;
  v39[4] = v3;
  v5 = v28;
  v40 = v5;
  [v2 threadScopeManager:v3 gatherStatisticsForThreadScopesWithDatabaseIDs:v4 block:v39];

  v6 = [v5 allKeys];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __75__EDThreadScopeManager__evictAtLeast_upTo_fromThreadScopesWithDatabaseIDs___block_invoke_33;
  v37[3] = &unk_1E8258EB0;
  v7 = v5;
  v38 = v7;
  v29 = [v6 sortedArrayUsingComparator:v37];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = v29;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v10)
  {
    v11 = *v34;
    do
    {
      v12 = 0;
      do
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v33 + 1) + 8 * v12);
        if ([v8 count] < *(a1 + 48))
        {
          [v8 addObject:v13];
          v14 = +[EDThreadScopeManager log];
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_11;
          }

          *buf = 138412290;
          v42 = v13;
          v15 = v14;
          v16 = "Adding %@ for eviction: below min";
          goto LABEL_15;
        }

        v17 = [v7 objectForKeyedSubscript:v13];
        [v17 doubleValue];
        v19 = v18;

        if (v19 <= 100.0)
        {
          goto LABEL_17;
        }

        [v8 addObject:v13];
        v14 = +[EDThreadScopeManager log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v42 = v13;
          v15 = v14;
          v16 = "Adding %@ for eviction: score below threshold";
LABEL_15:
          _os_log_debug_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEBUG, v16, buf, 0xCu);
        }

LABEL_11:

        if ([v8 count] >= *(a1 + 56))
        {
          goto LABEL_17;
        }

        ++v12;
      }

      while (v10 != v12);
      v20 = [v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
      v10 = v20;
    }

    while (v20);
  }

LABEL_17:

  v21 = +[EDThreadScopeManager signpostLog];
  v22 = [*(a1 + 32) signpostID];
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 138543362;
    v42 = v8;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v21, OS_SIGNPOST_EVENT, v22, "THREAD MIGRATION SCOPE", "Attempting to evict thread scopes with database IDs: %{public}@", buf, 0xCu);
  }

  [*(a1 + 32) _sendEventForCoreAnalytics:@"Evict"];
  v23 = [*(a1 + 32) dataSource];
  v24 = *(a1 + 32);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __75__EDThreadScopeManager__evictAtLeast_upTo_fromThreadScopesWithDatabaseIDs___block_invoke_38;
  v30[3] = &unk_1E8258F00;
  v30[4] = v24;
  v25 = v8;
  v31 = v25;
  v26 = v7;
  v32 = v26;
  [v23 threadScopeManager:v24 evictThreadScopesWithDatabaseIDs:v25 completionBlock:v30];

  v27 = *MEMORY[0x1E69E9840];
}

void __75__EDThreadScopeManager__evictAtLeast_upTo_fromThreadScopesWithDatabaseIDs___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  [v7 timeIntervalSinceNow];
  v9 = v8;
  if (v8 <= 0.0)
  {
    v11 = -v8;
  }

  else
  {
    v10 = +[EDThreadScopeManager log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v19 = 134218498;
      v20 = v9;
      v21 = 2048;
      v22 = a2;
      v23 = 2114;
      v24 = v7;
      _os_log_error_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_ERROR, "Last viewed %f seconds in the future for thread scope %lld: %{public}@", &v19, 0x20u);
    }

    v11 = 0.0;
  }

  [*(a1 + 32) _evictionScoreForCount:a4 timeInterval:v11];
  v13 = v12;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v15 = *(a1 + 40);
  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v15 setObject:v14 forKeyedSubscript:v16];

  v17 = +[EDThreadScopeManager log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134218752;
    v20 = *&a2;
    v21 = 2048;
    v22 = v13;
    v23 = 2048;
    v24 = a4;
    v25 = 2048;
    v26 = v11;
    _os_log_debug_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEBUG, "Eviction score for %llu: %f (%llu count, %f time)", &v19, 0x2Au);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __75__EDThreadScopeManager__evictAtLeast_upTo_fromThreadScopesWithDatabaseIDs___block_invoke_33(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [v7 compare:v6];

  return v8;
}

void __75__EDThreadScopeManager__evictAtLeast_upTo_fromThreadScopesWithDatabaseIDs___block_invoke_38(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    os_unfair_lock_lock(v3 + 4);
    v4 = *(*(a1 + 32) + 8);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__EDThreadScopeManager__evictAtLeast_upTo_fromThreadScopesWithDatabaseIDs___block_invoke_2_39;
    v7[3] = &unk_1E8258ED8;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    v10 = *(a1 + 48);
    [v4 ef_removeObjectsPassingTest:v7];

    os_unfair_lock_unlock(v3 + 4);
  }
}

uint64_t __75__EDThreadScopeManager__evictAtLeast_upTo_fromThreadScopesWithDatabaseIDs___block_invoke_2_39(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 databaseID];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:v7];
  v10 = [v8 containsObject:v9];

  if (v10)
  {
    v11 = +[EDThreadScopeManager signpostLog];
    v12 = [*(a1 + 40) signpostID];
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x1E696AD98] numberWithLongLong:v7];
      v15 = [v13 objectForKeyedSubscript:v14];
      v18 = 134218498;
      v19 = v7;
      v20 = 2114;
      v21 = v5;
      v22 = 2114;
      v23 = v15;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v11, OS_SIGNPOST_EVENT, v12, "THREAD MIGRATION SCOPE", "Evicting thread scope with database ID: %llu -> %{public}@ = %{public}@", &v18, 0x20u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)_sendEventForCoreAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:&unk_1F45E6E20 forKeyedSubscript:analyticsCopy];
  [v4 setObject:&unk_1F45E6E20 forKeyedSubscript:@"migration"];
  v5 = [objc_alloc(MEMORY[0x1E699AC78]) initWithEventName:@"com.apple.mail.threadmigration" collectionData:v4];
  analyticsCollector = [(EDThreadScopeManager *)self analyticsCollector];
  [analyticsCollector logOneTimeEvent:v5];
}

- (id)_threadScopesWithLastViewedOlderThanLimit
{
  os_unfair_lock_assert_owner(&self->_threadScopesLock);
  v3 = [(NSMutableDictionary *)self->_threadScopes ef_filter:&__block_literal_global_53];
  v4 = [v3 ef_mapValues:&__block_literal_global_56_0];

  return v4;
}

BOOL __65__EDThreadScopeManager__threadScopesWithLastViewedOlderThanLimit__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 lastViewedDate];
  v5 = [v3 databaseID];
  v6 = v4;
  [v6 timeIntervalSinceNow];
  v8 = v7;
  if (v7 <= 0.0)
  {
    v10 = v7 < -604800.0;
  }

  else
  {
    v9 = +[EDThreadScopeManager log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218498;
      v14 = v8;
      v15 = 2048;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      _os_log_error_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_ERROR, "Last viewed %f seconds in the future for thread scope %lld: %{public}@", &v13, 0x20u);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

id __65__EDThreadScopeManager__threadScopesWithLastViewedOlderThanLimit__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "databaseID")}];

  return v3;
}

- (unint64_t)_numberOfThreadScopesToEvictFrom:(id)from upTo:(unint64_t *)to
{
  fromCopy = from;
  os_unfair_lock_assert_owner(&self->_threadScopesLock);
  v7 = [(NSMutableDictionary *)self->_threadScopes count];
  v8 = v7;
  if (v7 >= 5)
  {
    v9 = v7 - 5;
  }

  else
  {
    v9 = 0;
  }

  v10 = [fromCopy count];
  if (to)
  {
    if (v10 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    *to = v11;
  }

  v12 = v8 - 10;
  if (v8 < 0xA)
  {
    v12 = 0;
  }

  if (v10 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  return v13;
}

- (void)logExistingThreadScopes
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_threadScopesLock);
  allKeys = [(NSMutableDictionary *)self->_threadScopes allKeys];
  os_unfair_lock_unlock(&self->_threadScopesLock);
  v4 = +[EDThreadScopeManager log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Existing thread scopes:", buf, 2u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = allKeys;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v8 = *v16;
    *&v7 = 138543362;
    v14 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = [EDThreadScopeManager log:v14];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          ef_publicDescription = [v10 ef_publicDescription];
          *buf = v14;
          v20 = ef_publicDescription;
          _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (EDThreadScopeManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end