@interface TCMessageContext
+ (id)currentObjectOrPlaceholder;
+ (id)getErrorArray;
+ (id)getWarningArray;
+ (unint64_t)getErrorCount;
+ (unint64_t)saveAffectedObjectStack;
+ (void)createContextForCurrentThread;
+ (void)initialize;
+ (void)popAffectedObject;
+ (void)popAffectedObjectPlaceholder:(id)a3;
+ (void)pushAffectedObject:(id)a3;
+ (void)pushAffectedObjectPlaceholder;
+ (void)removeContextForCurrentThread;
+ (void)reportError:(id)a3;
+ (void)reportErrorException:(id)a3;
+ (void)reportObject:(id)a3 withWarning:(id)a4;
+ (void)reportObjectOrPlaceholder:(id)a3 withWarning:(id)a4 parameters:(char *)a5;
+ (void)reportWarning:(id)a3;
+ (void)reportWarningException:(id)a3;
+ (void)reportWarningsToDelegate;
+ (void)restoreAffectedObjectStack:(unint64_t)a3;
- (TCMessageContext)init;
- (id)currentObjectOrPlaceholder;
- (unint64_t)saveAffectedObjectStack;
- (void)addErrorMessageEntry:(id)a3;
- (void)addWarningMessageEntry:(id)a3;
- (void)dealloc;
- (void)popAffectedObject;
- (void)popAffectedObjectPlaceholder:(id)a3;
- (void)pushAffectedObject:(id)a3;
- (void)pushAffectedObjectPlaceholder;
- (void)replacePlaceholdersWithObjects;
- (void)reportWarningForObject:(id)a3 warning:(id)a4 parameterList:(char *)a5;
- (void)resolveObjectOfCurrentAffectedObjectPlaceholder;
- (void)restoreAffectedObjectStack:(unint64_t)a3;
- (void)setAffectedObject:(id)a3 forPlaceholderWithKey:(id)a4;
@end

@implementation TCMessageContext

+ (void)initialize
{
  if (objc_opt_class() == a1 && (initAllMessages(void)::alreadyDone & 1) == 0)
  {
    initAllMessages(void)::alreadyDone = 1;

    objc_opt_class();
  }
}

- (TCMessageContext)init
{
  v15.receiver = self;
  v15.super_class = TCMessageContext;
  v2 = [(TCMessageContext *)&v15 init];
  if (v2 && (v3 = objc_alloc_init(MEMORY[0x277CBEB58]), m_warnings = v2->m_warnings, v2->m_warnings = v3, m_warnings, v5 = objc_alloc_init(MEMORY[0x277CBEB58]), m_errors = v2->m_errors, v2->m_errors = v5, m_errors, v7 = objc_alloc_init(MEMORY[0x277CBEB18]), m_affectedObjectStack = v2->m_affectedObjectStack, v2->m_affectedObjectStack = v7, m_affectedObjectStack, v9 = objc_alloc_init(MEMORY[0x277CBEB38]), m_placeholderToObjectMap = v2->m_placeholderToObjectMap, v2->m_placeholderToObjectMap = v9, m_placeholderToObjectMap, m_importedFileIsSS = 1, v11 = dispatch_queue_create("com.apple.iWork.TCMessageContext", 0), mMessageSyncQueue = v2->mMessageSyncQueue, v2->mMessageSyncQueue = v11, mMessageSyncQueue, v2->m_warnings) && v2->m_errors && v2->m_affectedObjectStack)
  {
    v13 = v2;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)dealloc
{
  mMessageSyncQueue = self->mMessageSyncQueue;
  if (mMessageSyncQueue)
  {
    self->mMessageSyncQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = TCMessageContext;
  [(TCMessageContext *)&v4 dealloc];
}

+ (void)reportObjectOrPlaceholder:(id)a3 withWarning:(id)a4 parameters:(char *)a5
{
  v11 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x277CCACC8] currentThread];
    v9 = [v8 threadDictionary];
    v10 = [v9 objectForKey:@"TCMessageContext Instance"];

    if (v10)
    {
      [v10 reportWarningForObject:v11 warning:v7 parameterList:a5];
    }
  }
}

+ (id)currentObjectOrPlaceholder
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:@"TCMessageContext Instance"];

  v5 = [v4 currentObjectOrPlaceholder];

  return v5;
}

+ (void)reportObject:(id)a3 withWarning:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [a1 reportObjectOrPlaceholder:v6 withWarning:v7 parameters:&v8];
  }
}

+ (void)reportWarning:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 currentObjectOrPlaceholder];
    [a1 reportObjectOrPlaceholder:v5 withWarning:v4 parameters:&v6];
  }
}

+ (void)reportError:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCACC8] currentThread];
    v5 = [v4 threadDictionary];
    v6 = [v5 objectForKey:@"TCMessageContext Instance"];

    if (v6)
    {
      v7 = [TCMessageEntry alloc];
      v8 = [v3 messageTag];
      v9 = [v3 messageText];
      v10 = [(TCMessageEntry *)v7 initWithTag:v8 affectedObject:0 text:v9 parameters:&v11];

      [v6 addErrorMessageEntry:v10];
    }
  }
}

+ (void)reportWarningException:(id)a3
{
  v9 = a3;
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v5 = [v4 threadDictionary];
  v6 = [v5 objectForKey:@"TCMessageContext Instance"];

  if (v6)
  {
    v7 = createEntryForException(v9);
    v8 = [a1 currentObjectOrPlaceholder];
    [v7 addAffectedObject:v8];

    [v6 addWarningMessageEntry:v7];
  }
}

+ (void)reportErrorException:(id)a3
{
  v7 = a3;
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v4 = [v3 threadDictionary];
  v5 = [v4 objectForKey:@"TCMessageContext Instance"];

  if (v5)
  {
    v6 = createEntryForException(v7);
    [v5 addErrorMessageEntry:v6];
  }
}

+ (void)createContextForCurrentThread
{
  v4 = objc_alloc_init(TCMessageContext);
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  [v3 setObject:v4 forKey:@"TCMessageContext Instance"];
}

+ (void)removeContextForCurrentThread
{
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v2 = [v3 threadDictionary];
  [v2 removeObjectForKey:@"TCMessageContext Instance"];
}

+ (id)getWarningArray
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:@"TCMessageContext Instance"];

  if (v4)
  {
    v5 = [v4[1] allObjects];
    v6 = [v5 sortedArrayUsingSelector:sel_timeStampCompare_];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getErrorArray
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:@"TCMessageContext Instance"];

  if (v4)
  {
    v5 = [v4[2] allObjects];
    v6 = [v5 sortedArrayUsingSelector:sel_timeStampCompare_];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unint64_t)getErrorCount
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:@"TCMessageContext Instance"];

  if (v4)
  {
    v5 = [v4[2] count];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)pushAffectedObject:(id)a3
{
  v6 = a3;
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v4 = [v3 threadDictionary];
  v5 = [v4 objectForKey:@"TCMessageContext Instance"];

  [v5 pushAffectedObject:v6];
}

+ (void)popAffectedObject
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:@"TCMessageContext Instance"];

  [v4 popAffectedObject];
}

+ (void)pushAffectedObjectPlaceholder
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:@"TCMessageContext Instance"];

  [v4 pushAffectedObjectPlaceholder];
}

+ (void)popAffectedObjectPlaceholder:(id)a3
{
  v6 = a3;
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v4 = [v3 threadDictionary];
  v5 = [v4 objectForKey:@"TCMessageContext Instance"];

  [v5 popAffectedObjectPlaceholder:v6];
}

+ (unint64_t)saveAffectedObjectStack
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:@"TCMessageContext Instance"];

  v5 = [v4 saveAffectedObjectStack];
  return v5;
}

+ (void)restoreAffectedObjectStack:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v5 = [v4 threadDictionary];
  v6 = [v5 objectForKey:@"TCMessageContext Instance"];

  [v6 restoreAffectedObjectStack:a3];
}

+ (void)reportWarningsToDelegate
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:@"TCMessageContext Instance"];

  [v4 reportWarningsToDelegate];
}

- (void)reportWarningForObject:(id)a3 warning:(id)a4 parameterList:(char *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    mMessageSyncQueue = self->mMessageSyncQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__TCMessageContext_reportWarningForObject_warning_parameterList___block_invoke;
    v12[3] = &unk_2799C7838;
    v13 = v9;
    v15 = self;
    v16 = a5;
    v14 = v8;
    dispatch_sync(mMessageSyncQueue, v12);
  }
}

void __65__TCMessageContext_reportWarningForObject_warning_parameterList___block_invoke(uint64_t a1)
{
  v2 = [TCMessageEntry alloc];
  v3 = [*(a1 + 32) messageTag];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) messageText];
  v6 = [(TCMessageEntry *)v2 initWithTag:v3 affectedObject:v4 text:v5 parameters:*(a1 + 56)];

  [*(*(a1 + 48) + 8) tc_addMessageEntry:v6];
}

- (id)currentObjectOrPlaceholder
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  mMessageSyncQueue = self->mMessageSyncQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__TCMessageContext_Private__currentObjectOrPlaceholder__block_invoke;
  v5[3] = &unk_2799C7860;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mMessageSyncQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __55__TCMessageContext_Private__currentObjectOrPlaceholder__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) lastObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [MEMORY[0x277CBEB68] null];

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  if (v5 == v6)
  {
    *(v7 + 40) = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    v12 = *(*(*(a1 + 40) + 8) + 40);
    [v12 setInUse:1];
    v9 = [v12 key];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v8 = v12;
  }
}

- (void)addErrorMessageEntry:(id)a3
{
  v4 = a3;
  mMessageSyncQueue = self->mMessageSyncQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__TCMessageContext_Private__addErrorMessageEntry___block_invoke;
  v7[3] = &unk_2799C7888;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(mMessageSyncQueue, v7);
}

- (void)addWarningMessageEntry:(id)a3
{
  v4 = a3;
  mMessageSyncQueue = self->mMessageSyncQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__TCMessageContext_Private__addWarningMessageEntry___block_invoke;
  v7[3] = &unk_2799C7888;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(mMessageSyncQueue, v7);
}

- (void)pushAffectedObject:(id)a3
{
  v4 = a3;
  mMessageSyncQueue = self->mMessageSyncQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__TCMessageContext_Private__pushAffectedObject___block_invoke;
  v7[3] = &unk_2799C7888;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(mMessageSyncQueue, v7);
}

void __48__TCMessageContext_Private__pushAffectedObject___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v4 = v2;
    v3 = [MEMORY[0x277CBEB68] null];

    v2 = v3;
  }

  v5 = v2;
  [*(*(a1 + 40) + 24) addObject:v2];
}

- (void)popAffectedObject
{
  mMessageSyncQueue = self->mMessageSyncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__TCMessageContext_Private__popAffectedObject__block_invoke;
  block[3] = &unk_2799C78B0;
  block[4] = self;
  dispatch_sync(mMessageSyncQueue, block);
}

void __46__TCMessageContext_Private__popAffectedObject__block_invoke(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 24) lastObject];
  v2 = objc_opt_class();
  v3 = TSUDynamicCast(v2, v4);
  [*(*(a1 + 32) + 24) removeLastObject];
}

- (void)pushAffectedObjectPlaceholder
{
  mMessageSyncQueue = self->mMessageSyncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TCMessageContext_Private__pushAffectedObjectPlaceholder__block_invoke;
  block[3] = &unk_2799C78B0;
  block[4] = self;
  dispatch_sync(mMessageSyncQueue, block);
}

void __58__TCMessageContext_Private__pushAffectedObjectPlaceholder__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(TCMessagePlaceholderInfo);
  [*(*(a1 + 32) + 24) addObject:?];
}

- (void)resolveObjectOfCurrentAffectedObjectPlaceholder
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->m_affectedObjectStack lastObject];
  v4 = objc_opt_class();
  v5 = TSUDynamicCast(v4, v3);
  v6 = v5;
  if (v5)
  {
    if ([v5 isInUse])
    {
      m_placeholderToObjectMap = self->m_placeholderToObjectMap;
      v8 = [v6 key];
      v9 = [(NSMutableDictionary *)m_placeholderToObjectMap objectForKeyedSubscript:v8];

      if (!v9)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [(NSMutableArray *)self->m_affectedObjectStack reverseObjectEnumerator];
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          v12 = *v23;
          while (2)
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v22 + 1) + 8 * i);
              if (v14 != v6)
              {
                v15 = [MEMORY[0x277CBEB68] null];
                v16 = v14 == v15;

                if (!v16)
                {
                  v11 = v14;
                  goto LABEL_15;
                }
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_15:

        v17 = objc_opt_class();
        v18 = TSUDynamicCast(v17, v11);
        v19 = v18;
        if (v18)
        {
          v20 = [v18 key];

          v11 = v20;
          [v19 setInUse:1];
        }

        v21 = [v6 key];
        [(TCMessageContext *)self setAffectedObject:v11 forPlaceholderWithKey:v21];
      }
    }
  }
}

- (void)popAffectedObjectPlaceholder:(id)a3
{
  v4 = a3;
  mMessageSyncQueue = self->mMessageSyncQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__TCMessageContext_Private__popAffectedObjectPlaceholder___block_invoke;
  v7[3] = &unk_2799C7888;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(mMessageSyncQueue, v7);
}

void __58__TCMessageContext_Private__popAffectedObjectPlaceholder___block_invoke(uint64_t a1)
{
  v10 = [*(*(a1 + 32) + 24) lastObject];
  v2 = objc_opt_class();
  v3 = TSUDynamicCast(v2, v10);
  v4 = v3;
  if (v3 && [v3 isInUse])
  {
    v5 = *(a1 + 40);
    if (!v5 || ([MEMORY[0x277CBEB68] null], v6 = objc_claimAutoreleasedReturnValue(), v6, v5 == v6))
    {
      [*(a1 + 32) resolveObjectOfCurrentAffectedObjectPlaceholder];
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = [v4 key];
      [v7 setAffectedObject:v8 forPlaceholderWithKey:v9];
    }
  }

  [*(*(a1 + 32) + 24) removeLastObject];
}

- (unint64_t)saveAffectedObjectStack
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mMessageSyncQueue = self->mMessageSyncQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__TCMessageContext_Private__saveAffectedObjectStack__block_invoke;
  v5[3] = &unk_2799C7860;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mMessageSyncQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __52__TCMessageContext_Private__saveAffectedObjectStack__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)restoreAffectedObjectStack:(unint64_t)a3
{
  mMessageSyncQueue = self->mMessageSyncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__TCMessageContext_Private__restoreAffectedObjectStack___block_invoke;
  v4[3] = &unk_2799C78D8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(mMessageSyncQueue, v4);
}

unint64_t __56__TCMessageContext_Private__restoreAffectedObjectStack___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) count];
  for (result = [*(*(a1 + 32) + 24) count]; result > *(a1 + 40); result = objc_msgSend(*(*(a1 + 32) + 24), "count"))
  {
    v3 = [*(*(a1 + 32) + 24) lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) resolveObjectOfCurrentAffectedObjectPlaceholder];
    }

    [*(*(a1 + 32) + 24) removeLastObject];
  }

  return result;
}

- (void)setAffectedObject:(id)a3 forPlaceholderWithKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  [(NSMutableDictionary *)self->m_placeholderToObjectMap setObject:v8 forKey:v7];
}

- (void)replacePlaceholdersWithObjects
{
  if ([(NSMutableDictionary *)self->m_placeholderToObjectMap count])
  {
    v14 = [(NSMutableSet *)self->m_warnings copy];
    v15 = [v14 objectEnumerator];
    while (1)
    {
      v3 = [v15 nextObject];
      v4 = v3;
      if (!v3)
      {
        break;
      }

      v5 = [v3 affectedObjects];
      v6 = [v5 count];
      v7 = v6;
      if (v6)
      {
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = [v5 objectAtIndex:--v9];
          if (v10 == @"kTCMessageContext_NullObjectThatMakesWarningUnremovable")
          {
            [v5 removeObjectAtIndex:v9];
            v8 = 1;
          }

          else
          {
            for (i = [(NSMutableDictionary *)self->m_placeholderToObjectMap objectForKey:v10];
            {
              v12 = [(NSMutableDictionary *)self->m_placeholderToObjectMap objectForKey:i];
              if (!v12)
              {
                break;
              }
            }

            if (i)
            {
              v13 = [MEMORY[0x277CBEB68] null];

              if (i == v13)
              {
                [v5 removeObjectAtIndex:v9];
              }

              else if (i == @"kTCMessageContext_NullObjectThatMakesWarningUnremovable")
              {
                [v5 removeObjectAtIndex:v9];
                v8 = 1;
              }

              else
              {
                [v5 replaceObjectAtIndex:v9 withObject:i];
              }

              [(NSMutableDictionary *)self->m_placeholderToObjectMap setObject:i forKey:v10];
            }
          }
        }

        while (v9);
        if (v7)
        {
          if (!(([v5 count] != 0) | v8 & 1))
          {
            [(NSMutableSet *)self->m_warnings removeObject:v4];
          }
        }
      }
    }

    [(NSMutableDictionary *)self->m_placeholderToObjectMap removeAllObjects];
  }
}

@end