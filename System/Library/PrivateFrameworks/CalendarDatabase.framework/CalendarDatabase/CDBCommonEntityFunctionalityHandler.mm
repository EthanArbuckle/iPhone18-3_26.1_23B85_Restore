@interface CDBCommonEntityFunctionalityHandler
+ (void)_notifyDestructionObservers:(id)a3;
- (CDBCommonEntityFunctionalityHandler)init;
- (void)addDestructionObserver:(CalRelation *)a3;
- (void)dealloc;
- (void)notifyOfEntityDestruction;
- (void)removeDestructionObserver:(CalRelation *)a3;
@end

@implementation CDBCommonEntityFunctionalityHandler

- (CDBCommonEntityFunctionalityHandler)init
{
  v7.receiver = self;
  v7.super_class = CDBCommonEntityFunctionalityHandler;
  v2 = [(CDBCommonEntityFunctionalityHandler *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(CDBCommonEntityFunctionalityHandler *)v2 setDestructionObservers:v3];

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("CDBCommonEntityFunctionalityHandler.lock", v4);
    [(CDBCommonEntityFunctionalityHandler *)v2 setLock:v5];
  }

  return v2;
}

- (void)notifyOfEntityDestruction
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__3;
  v9 = __Block_byref_object_dispose__3;
  v10 = 0;
  v3 = [(CDBCommonEntityFunctionalityHandler *)self lock];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__CDBCommonEntityFunctionalityHandler_notifyOfEntityDestruction__block_invoke;
  v4[3] = &unk_1E86934B0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(v3, v4);

  [objc_opt_class() _notifyDestructionObservers:v6[5]];
  _Block_object_dispose(&v5, 8);
}

void __64__CDBCommonEntityFunctionalityHandler_notifyOfEntityDestruction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) destructionObservers];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) destructionObservers];
  [v6 removeAllObjects];
}

- (void)dealloc
{
  v3 = [(CDBCommonEntityFunctionalityHandler *)self destructionObservers];
  if ([v3 count])
  {
    [objc_opt_class() _notifyDestructionObservers:v3];
  }

  v4.receiver = self;
  v4.super_class = CDBCommonEntityFunctionalityHandler;
  [(CDBCommonEntityFunctionalityHandler *)&v4 dealloc];
}

- (void)addDestructionObserver:(CalRelation *)a3
{
  if (a3)
  {
    v5 = [(CDBCommonEntityFunctionalityHandler *)self lock];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__CDBCommonEntityFunctionalityHandler_addDestructionObserver___block_invoke;
    v7[3] = &unk_1E8693488;
    v7[4] = self;
    v7[5] = a3;
    dispatch_sync(v5, v7);
  }

  else
  {
    v6 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "nil 'observer' given.  Will not add destruction observer.", buf, 2u);
    }
  }
}

void __62__CDBCommonEntityFunctionalityHandler_addDestructionObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) destructionObservers];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeDestructionObserver:(CalRelation *)a3
{
  if (a3)
  {
    CFRetain(a3);
    v5 = [(CDBCommonEntityFunctionalityHandler *)self lock];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__CDBCommonEntityFunctionalityHandler_removeDestructionObserver___block_invoke;
    v7[3] = &unk_1E8693488;
    v7[4] = self;
    v7[5] = a3;
    dispatch_sync(v5, v7);

    CFRelease(a3);
  }

  else
  {
    v6 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "nil 'observer' given.  Will not remove destruction observer.", buf, 2u);
    }
  }
}

void __65__CDBCommonEntityFunctionalityHandler_removeDestructionObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) destructionObservers];
  [v2 removeObject:*(a1 + 40)];
}

+ (void)_notifyDestructionObservers:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        CDBRelationEliminateRelatedObjectReference(*(*(&v9 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end