@interface FCFetchCoordinator
- (FCFetchCoordinator)init;
- (FCFetchCoordinatorDelegate)delegate;
- (id)fetchKey:(id)key qualityOfService:(int64_t)service completionQueue:(id)queue completion:(id)completion;
- (id)fetchKeys:(id)keys context:(id)context qualityOfService:(int64_t)service relativePriority:(int64_t)priority completionQueue:(id)queue completion:(id)completion;
- (id)fetchKeysUnconditionally:(id)unconditionally context:(id)context qualityOfService:(int64_t)service relativePriority:(int64_t)priority completionQueue:(id)queue completion:(id)completion;
- (void)addFetchGroup:(uint64_t)group;
- (void)operationThrottlerPerformOperation:(id)operation;
- (void)removeFetchGroup:(uint64_t)group;
@end

@implementation FCFetchCoordinator

- (FCFetchCoordinator)init
{
  v14.receiver = self;
  v14.super_class = FCFetchCoordinator;
  v2 = [(FCFetchCoordinator *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
    fetchGroups = v2->_fetchGroups;
    v2->_fetchGroups = v3;

    v5 = [FCMapTable mapTableWithKeyOptions:512 valueOptions:0];
    fetchOperationsByGroup = v2->_fetchOperationsByGroup;
    v2->_fetchOperationsByGroup = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696AB50]);
    allKeys = v2->_allKeys;
    v2->_allKeys = v7;

    v9 = objc_alloc_init(MEMORY[0x1E69B68E8]);
    accessLock = v2->_accessLock;
    v2->_accessLock = v9;

    v11 = [[FCBoostableOperationThrottler alloc] initWithDelegate:v2];
    fetchThrottler = v2->_fetchThrottler;
    v2->_fetchThrottler = v11;
  }

  return v2;
}

uint64_t __50__FCFetchCoordinator_beginFetchesIfNeededWithLock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 40);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 objectForKey:v3];
  if (v6)
  {
    v7 = 0;
  }

  else if (v3 && (v3[9] & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a1 + 40) ^ 1;
  }

  return v7 & 1;
}

- (FCFetchCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)fetchKey:(id)key qualityOfService:(int64_t)service completionQueue:(id)queue completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v10 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  queueCopy = queue;
  keyCopy2 = key;
  v14 = [v10 arrayWithObjects:&keyCopy count:1];

  v15 = [(FCFetchCoordinator *)self fetchKeys:v14 context:0 qualityOfService:service relativePriority:0 completionQueue:queueCopy completion:completionCopy, keyCopy, v19];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)fetchKeys:(id)keys context:(id)context qualityOfService:(int64_t)service relativePriority:(int64_t)priority completionQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  contextCopy = context;
  keysCopy = keys;
  v18 = [FCFetchGroup alloc];
  v19 = [MEMORY[0x1E695DFD8] setWithArray:keysCopy];

  v20 = [(FCFetchGroup *)&v18->super.isa initWithKeys:v19 context:contextCopy shouldFilter:1 qualityOfService:service relativePriority:priority completionQueue:queueCopy completion:completionCopy];
  [(FCFetchCoordinator *)self addFetchGroup:v20];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __101__FCFetchCoordinator_fetchKeys_context_qualityOfService_relativePriority_completionQueue_completion___block_invoke;
  v24[3] = &unk_1E7C36C58;
  v24[4] = self;
  v25 = v20;
  v21 = v20;
  v22 = [FCInterestToken interestTokenWithRemoveInterestBlock:v24];

  return v22;
}

- (void)addFetchGroup:(uint64_t)group
{
  v3 = a2;
  v4 = v3;
  if (group)
  {
    v5 = *(group + 48);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__FCFetchCoordinator_addFetchGroup___block_invoke;
    v6[3] = &unk_1E7C36C58;
    v6[4] = group;
    v7 = v3;
    [v5 performWithLockSync:v6];
  }
}

- (void)removeFetchGroup:(uint64_t)group
{
  v3 = a2;
  v4 = v3;
  if (group)
  {
    v5 = *(group + 48);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__FCFetchCoordinator_removeFetchGroup___block_invoke;
    v6[3] = &unk_1E7C36C58;
    v6[4] = group;
    v7 = v3;
    [v5 performWithLockSync:v6];
  }
}

- (id)fetchKeysUnconditionally:(id)unconditionally context:(id)context qualityOfService:(int64_t)service relativePriority:(int64_t)priority completionQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  contextCopy = context;
  unconditionallyCopy = unconditionally;
  v18 = [FCFetchGroup alloc];
  v19 = [MEMORY[0x1E695DFD8] setWithArray:unconditionallyCopy];

  v20 = [(FCFetchGroup *)&v18->super.isa initWithKeys:v19 context:contextCopy shouldFilter:0 qualityOfService:service relativePriority:priority completionQueue:queueCopy completion:completionCopy];
  [(FCFetchCoordinator *)self addFetchGroup:v20];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __116__FCFetchCoordinator_fetchKeysUnconditionally_context_qualityOfService_relativePriority_completionQueue_completion___block_invoke;
  v24[3] = &unk_1E7C36C58;
  v24[4] = self;
  v25 = v20;
  v21 = v20;
  v22 = [FCInterestToken interestTokenWithRemoveInterestBlock:v24];

  return v22;
}

- (void)operationThrottlerPerformOperation:(id)operation
{
  if (self)
  {
    accessLock = self->_accessLock;
  }

  else
  {
    accessLock = 0;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__FCFetchCoordinator_operationThrottlerPerformOperation___block_invoke;
  v4[3] = &unk_1E7C36EA0;
  v4[4] = self;
  [(NFMutexLock *)accessLock performWithLockSync:v4];
}

void __57__FCFetchCoordinator_operationThrottlerPerformOperation___block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = a1;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v3 = [v1[5] copy];
    v4 = [v3 countByEnumeratingWithState:&v72 objects:v76 count:16];
    if (v4)
    {
      v5 = v4;
      v58 = v2;
      v6 = 0;
      v7 = *v73;
      do
      {
        v8 = 0;
        do
        {
          if (*v73 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v72 + 1) + 8 * v8);
          if (v9)
          {
            v10 = *(v9 + 16);
          }

          else
          {
            v10 = 0;
          }

          v11 = v1[4];
          v12 = [v11 intersectsSet:v10];

          if ((v12 & 1) == 0)
          {
            v13 = [v1[5] objectForKey:v9];
            [v13 cancel];
            [v1[5] removeObjectForKey:v9];

            v6 = 1;
          }

          ++v8;
        }

        while (v5 != v8);
        v14 = [v3 countByEnumeratingWithState:&v72 objects:v76 count:16];
        v5 = v14;
      }

      while (v14);

      v2 = v58;
      if (v6)
      {
        [v1[7] tickle];
      }
    }

    else
    {
    }

    v15 = *(v2 + 32);
    if (v15)
    {
      v16 = [MEMORY[0x1E695DFA8] set];
      v57 = [MEMORY[0x1E695DFA8] set];
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v17 = v15[5];
      v18 = [v17 countByEnumeratingWithState:&v68 objects:v76 count:16];
      if (!v18)
      {
        v20 = 0;
        goto LABEL_33;
      }

      v19 = v18;
      v20 = 0;
      v21 = *v69;
      while (1)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v69 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v68 + 1) + 8 * i);
          if (v23)
          {
            v24 = *(v23 + 16);
            if (*(v23 + 9) == 1)
            {
              [v16 unionSet:v24];
              v20 = 1;
              continue;
            }
          }

          else
          {
            v24 = 0;
          }

          [v57 unionSet:v24];
        }

        v19 = [v17 countByEnumeratingWithState:&v68 objects:v76 count:16];
        if (!v19)
        {
LABEL_33:

          v25 = v15[3];
          v26 = [v25 allObjects];
          v27 = [v26 sortedArrayUsingSelector:sel_comparePriority_];

          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __50__FCFetchCoordinator_beginFetchesIfNeededWithLock__block_invoke;
          v66[3] = &unk_1E7C3F938;
          v66[4] = v15;
          v67 = v20 & 1;
          v55 = v27;
          [v27 fc_arrayOfObjectsPassingTest:v66];
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          obj = v65 = 0u;
          v28 = [obj countByEnumeratingWithState:&v62 objects:&v72 count:16];
          v29 = v57;
          if (!v28)
          {
            goto LABEL_75;
          }

          v30 = v28;
          v59 = *v63;
          while (1)
          {
            v31 = 0;
            do
            {
              if (*v63 != v59)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v62 + 1) + 8 * v31);
              if (!v32)
              {
                v33 = [0 mutableCopy];
                if (![v33 count])
                {
                  goto LABEL_63;
                }

LABEL_48:
                v37 = 0;
                goto LABEL_49;
              }

              v33 = [*(v32 + 16) mutableCopy];
              if (*(v32 + 8) == 1)
              {
                v34 = [v15 delegate];
                [v34 fetchCoordinator:v15 filterKeysToFetch:v33 isFirstAttempt:*(v32 + 48) == 0 context:*(v32 + 24)];
              }

              if (![v33 count])
              {
LABEL_63:
                [(FCFetchGroup *)v32 fireCompletion];
                [v15[3] removeObject:v32];
                if (v32)
                {
                  v52 = *(v32 + 16);
                }

                else
                {
                  v52 = 0;
                }

                v46 = v15[4];
                [v46 minusSet:v52];
LABEL_66:

                goto LABEL_67;
              }

              if (*(v32 + 8) != 1)
              {
                goto LABEL_48;
              }

              v35 = [v33 count];
              if (*(v32 + 9))
              {
                v36 = v16;
              }

              else
              {
                v36 = v29;
              }

              [v33 minusSet:v36];
              v37 = v35 != [v33 count];
LABEL_49:
              if (![v33 count])
              {
                goto LABEL_67;
              }

              v38 = v16;
              if (![v15 maxConcurrentFetchCount] || (v39 = v15[5], v40 = objc_msgSend(v39, "count"), v41 = objc_msgSend(v15, "maxConcurrentFetchCount"), v39, v40 < v41))
              {
                v42 = [v15 delegate];
                if (v32)
                {
                  v43 = *(v32 + 24);
                  v44 = *(v32 + 32);
                  v45 = *(v32 + 40);
                }

                else
                {
                  v44 = 0;
                  v43 = 0;
                  v45 = 0;
                }

                v46 = [v42 fetchCoordinator:v15 fetchOperationForKeys:v33 context:v43 qualityOfService:v44 relativePriority:v45];

                if (v32)
                {
                  v47 = *(v32 + 32);
                }

                else
                {
                  v47 = 0;
                }

                v16 = v38;
                [v46 setQualityOfService:v47];
                v60[0] = MEMORY[0x1E69E9820];
                v60[1] = 3221225472;
                v60[2] = __50__FCFetchCoordinator_beginFetchesIfNeededWithLock__block_invoke_2;
                v60[3] = &unk_1E7C37678;
                v60[4] = v15;
                v60[5] = v32;
                v61 = v37;
                [v46 setCompletionBlock:v60];
                [v15[5] setObject:v46 forKey:v32];
                v29 = v57;
                v48 = v57;
                if (v32)
                {
                  if (*(v32 + 9))
                  {
                    v48 = v16;
                  }

                  else
                  {
                    v48 = v57;
                  }
                }

                [v48 unionSet:v33];
                v49 = [v15 delegate];
                v50 = v49;
                if (v32)
                {
                  v51 = *(v32 + 24);
                }

                else
                {
                  v51 = 0;
                }

                [v49 fetchCoordinator:v15 addFetchOperation:v46 context:v51];

                goto LABEL_66;
              }

              v16 = v38;
              v29 = v57;
LABEL_67:

              ++v31;
            }

            while (v30 != v31);
            v53 = [obj countByEnumeratingWithState:&v62 objects:&v72 count:16];
            v30 = v53;
            if (!v53)
            {
LABEL_75:

              goto LABEL_76;
            }
          }
        }
      }
    }
  }

LABEL_76:
  v54 = *MEMORY[0x1E69E9840];
}

uint64_t __36__FCFetchCoordinator_addFetchGroup___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  [v3 addObject:*(a1 + 40)];
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[4];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4;
  [v7 unionSet:v6];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 56);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(v10 + 32);
  }

  else
  {
    v11 = 0;
  }

  return [v9 tickleWithQualityOfService:v11];
}

uint64_t __39__FCFetchCoordinator_removeFetchGroup___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  result = [v3 containsObject:*(a1 + 40)];
  if (result)
  {
    [(FCFetchGroup *)*(a1 + 40) fireCompletion];
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 24);
    }

    else
    {
      v6 = 0;
    }

    [v6 removeObject:*(a1 + 40)];
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = v7[4];
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 16);
    }

    else
    {
      v9 = 0;
    }

    v10 = v7;
    [v10 minusSet:v9];

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 56);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = *(v13 + 32);
    }

    else
    {
      v14 = 0;
    }

    return [v12 tickleWithQualityOfService:v14];
  }

  return result;
}

uint64_t __50__FCFetchCoordinator_beginFetchesIfNeededWithLock__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 48);
  }

  else
  {
    v2 = 0;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__FCFetchCoordinator_beginFetchesIfNeededWithLock__block_invoke_3;
  v5[3] = &unk_1E7C37678;
  v3 = *(a1 + 40);
  v5[4] = v1;
  v5[5] = v3;
  v6 = *(a1 + 48);
  return [v2 performWithLockSync:v5];
}

void __50__FCFetchCoordinator_beginFetchesIfNeededWithLock__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[3];
  }

  v3 = v2;
  if ([v3 containsObject:*(a1 + 40)])
  {
    v4 = *(a1 + 48);

    if (v4)
    {
      goto LABEL_13;
    }

    [(FCFetchGroup *)*(a1 + 40) fireCompletion];
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 24);
    }

    else
    {
      v6 = 0;
    }

    [v6 removeObject:*(a1 + 40)];
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = v7[4];
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 16);
    }

    else
    {
      v9 = 0;
    }

    v3 = v7;
    [v3 minusSet:v9];
  }

LABEL_13:
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 40);
  }

  else
  {
    v11 = 0;
  }

  [v11 removeObjectForKey:*(a1 + 40)];
  v12 = *(a1 + 40);
  if (v12)
  {
    ++*(v12 + 48);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = v13[3];
  }

  v14 = v13;
  v15 = [v14 allObjects];
  v21 = [v15 sortedArrayUsingSelector:sel_comparePriority_];

  if ([v21 count])
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      v16 = v16[7];
    }

    v17 = v16;
    v18 = [v21 firstObject];
    v19 = v18;
    if (v18)
    {
      v20 = *(v18 + 32);
    }

    else
    {
      v20 = 0;
    }

    [v17 tickleWithQualityOfService:v20];
  }
}

@end