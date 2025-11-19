@interface _CDInMemoryContext
+ (id)context;
+ (id)contextWithDeviceID:(id)a3;
- (BOOL)addObjects:(id)a3 andRemoveObjects:(id)a4 fromArrayAtKeyPath:(id)a5;
- (BOOL)addObjects:(id)a3 toArrayAtKeyPath:(id)a4;
- (BOOL)evaluatePredicate:(id)a3 date:(id)a4;
- (BOOL)hasKnowledgeOfContextualKeyPath:(id)a3;
- (BOOL)removeObjects:(id)a3 fromArrayAtKeyPath:(id)a4;
- (BOOL)setObject:(id)a3 forContextualKeyPath:(id)a4;
- (_CDInMemoryContext)init;
- (id)addObjects:(id)a3 andRemoveObjects:(id)a4 fromArrayAtKeyPath:(id)a5 valueDidChange:(BOOL *)a6;
- (id)allRegistrations;
- (id)lastModifiedDateForContextualKeyPath:(id)a3;
- (id)objectForContextualKeyPath:(id)a3;
- (id)propertiesForContextualKeyPath:(id)a3;
- (id)removeObjectsMatchingPredicate:(id)a3 fromArrayAtKeyPath:(id)a4;
- (id)removeObjectsMatchingPredicate:(id)a3 fromArrayAtKeyPath:(id)a4 removedObjects:(id *)a5;
- (id)setObject:(id)a3 returningMetadataForContextualKeyPath:(id)a4;
- (id)unsafe_addObjects:(id)a3 andRemoveObjects:(id)a4 fromArrayAtKeyPath:(id)a5 valueDidChange:(BOOL *)a6;
- (id)unsafe_evaluatedContextWithRegistration:(id)a3 date:(id)a4;
- (id)unsafe_setObject:(id)a3 returningMetadataForContextualKeyPath:(id)a4;
- (void)addCallback:(id)a3 forKeyPath:(id)a4;
- (void)dealloc;
- (void)deregisterCallback:(id)a3;
- (void)evalutateRegistrationPredicatesWithPreviousContextValue:(id)a3 date:(id)a4 keyPath:(id)a5;
- (void)locationCoordinatorCircularRegionsDidChange:(id)a3;
- (void)receiveSystemTimeCallback:(id)a3;
- (void)registerCallback:(id)a3;
- (void)setContextValue:(id)a3 forContextualKeyPath:(id)a4;
- (void)unsafe_deregisterCallback:(id)a3;
- (void)unsafe_deregisterForSystemTimeBasedCallbacksForRegistration:(id)a3;
- (void)unsafe_evalutateRegistrationPredicate:(id)a3 previousContextValue:(id)a4 date:(id)a5 keyPath:(id)a6;
- (void)unsafe_evalutateRegistrationPredicatesWithPreviousContextValue:(id)a3 date:(id)a4 keyPath:(id)a5;
- (void)unsafe_registerFutureSystemTimeBasedCallbacksForRegistration:(id)a3 date:(id)a4;
- (void)unsafe_registerFutureSystemTimeBasedCallbacksForRegistrations:(id)a3 date:(id)a4;
@end

@implementation _CDInMemoryContext

- (_CDInMemoryContext)init
{
  v19.receiver = self;
  v19.super_class = _CDInMemoryContext;
  v2 = [(_CDInMemoryContext *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.cdcontext.inmemorycontext", v3);
    syncQueue = v2->_syncQueue;
    v2->_syncQueue = v4;

    v6 = [MEMORY[0x1E695DF90] dictionary];
    context = v2->_context;
    v2->_context = v6;

    v8 = dispatch_workloop_create("com.apple.cdcontext.inmemorycontext");
    callbackWorkloop = v2->_callbackWorkloop;
    v2->_callbackWorkloop = v8;

    v10 = [MEMORY[0x1E695DF90] dictionary];
    registrations = v2->_registrations;
    v2->_registrations = v10;

    v12 = +[_CDSystemTimeCallbackScheduler sharedInstance];
    systemTimeCallbackScheduler = v2->_systemTimeCallbackScheduler;
    v2->_systemTimeCallbackScheduler = v12;

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v2 selector:sel_receiveSystemTimeCallback_ name:@"_CDSystemTimeCallbackNotification" object:v2->_systemTimeCallbackScheduler];

    v15 = objc_alloc_init(_CDContextualLocationRegistrationMonitor);
    locationRegistrationMonitor = v2->_locationRegistrationMonitor;
    v2->_locationRegistrationMonitor = v15;

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v2 selector:sel_locationCoordinatorCircularRegionsDidChange_ name:@"_CDCircularRegionsForRegistrationDidChangeNotification" object:v2->_locationRegistrationMonitor];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"_CDSystemTimeCallbackNotification" object:self->_systemTimeCallbackScheduler];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:@"_CDCircularRegionsForRegistrationDidChangeNotification" object:self->_locationRegistrationMonitor];

  v5.receiver = self;
  v5.super_class = _CDInMemoryContext;
  [(_CDInMemoryContext *)&v5 dealloc];
}

+ (id)context
{
  v2 = objc_alloc_init(_CDInMemoryContext);

  return v2;
}

+ (id)contextWithDeviceID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_CDInMemoryContext);
  [(_CDInMemoryContext *)v4 setDeviceID:v3];

  return v4;
}

- (void)locationCoordinatorCircularRegionsDidChange:(id)a3
{
  v4 = a3;
  syncQueue = self->_syncQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66___CDInMemoryContext_locationCoordinatorCircularRegionsDidChange___block_invoke;
  v11[3] = &unk_1E7886250;
  v12 = v4;
  v13 = self;
  v6 = v11;
  v7 = syncQueue;
  v8 = v4;
  v9 = os_transaction_create();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke;
  block[3] = &unk_1E7886668;
  v15 = v9;
  v16 = v6;
  v10 = v9;
  dispatch_async(v7, block);
}

- (void)receiveSystemTimeCallback:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 objectForKeyedSubscript:@"_CDSystemTimeCallbackDateKey"];

  v5 = objc_alloc_init(_CDContextValue);
  [(_CDContextValue *)v5 setValue:v7];
  [(_CDContextValue *)v5 setLastModifiedDate:v7];
  v6 = +[_CDContextQueries keyPathForSystemTime];
  [(_CDInMemoryContext *)self evalutateRegistrationPredicatesWithPreviousContextValue:v5 date:v7 keyPath:v6];
}

- (BOOL)hasKnowledgeOfContextualKeyPath:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___CDInMemoryContext_hasKnowledgeOfContextualKeyPath___block_invoke;
  block[3] = &unk_1E7886508;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(syncQueue, block);
  LOBYTE(syncQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return syncQueue;
}

- (id)objectForContextualKeyPath:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  _cdcontextstore_signpost_get_object_begin();

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49___CDInMemoryContext_objectForContextualKeyPath___block_invoke;
  block[3] = &unk_1E7886530;
  v12 = &v13;
  block[4] = self;
  v7 = v4;
  v11 = v7;
  dispatch_sync(syncQueue, block);
  _cdcontextstore_signpost_get_object_end();
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)setContextValue:(id)a3 forContextualKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59___CDInMemoryContext_setContextValue_forContextualKeyPath___block_invoke;
  block[3] = &unk_1E7886228;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(syncQueue, block);
}

- (id)unsafe_setObject:(id)a3 returningMetadataForContextualKeyPath:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_syncQueue);
  v8 = _os_activity_create(&dword_1A9611000, "CoreDuet: ContextStore setObject:forContextualKeyPath:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *v24 = 0;
  *&v24[8] = 0;
  os_activity_scope_enter(v8, v24);
  os_activity_scope_leave(v24);

  v9 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if ([v6 conformsToProtocol:&unk_1F1D26DB0])
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
    }

    else
    {
      _CDRedactedObjectForKeyPath(v7, v6);
    }
    v11 = ;
    *v24 = 138543618;
    *&v24[4] = v7;
    *&v24[12] = 2112;
    *&v24[14] = v11;
    _os_log_impl(&dword_1A9611000, v9, OS_LOG_TYPE_INFO, "Setting value for %{public}@: %@", v24, 0x16u);
  }

  v12 = [v7 key];
  _cdcontextstore_signpost_set_object_begin();

  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [(NSMutableDictionary *)self->_context objectForKeyedSubscript:v7];
  v15 = [v14 value];
  v16 = v15;
  if (v6 | v15)
  {
    if (!v6 || !v15 || ![v6 isEqual:v15])
    {
      goto LABEL_13;
    }

    v17 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v24 = 138543362;
      *&v24[4] = v7;
      _os_log_impl(&dword_1A9611000, v17, OS_LOG_TYPE_INFO, "Setting value for %{public}@ is equal to previous value", v24, 0xCu);
    }

    if (([v7 isEphemeral] & 1) == 0)
    {
      _cdcontextstore_signpost_set_object_end();
      v21 = v14;
    }

    else
    {
LABEL_13:
      v18 = objc_alloc_init(_CDContextValue);
      v19 = [v6 copy];
      [(_CDContextValue *)v18 setValue:v19];

      [(_CDContextValue *)v18 setLastModifiedDate:v13];
      if (!v14)
      {
        v20 = [(_CDContextValue *)v18 metadata];
        [v20 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_CDContextMetadataKeyFirstValueAfterReboot"];
      }

      [(NSMutableDictionary *)self->_context setObject:v18 forKeyedSubscript:v7];
      v21 = v18;
      [(_CDInMemoryContext *)self unsafe_evalutateRegistrationPredicatesWithPreviousContextValue:v14 date:v13 keyPath:v7];
      _cdcontextstore_signpost_set_object_end();
    }
  }

  else
  {
    _cdcontextstore_signpost_set_object_end();
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)setObject:(id)a3 returningMetadataForContextualKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  syncQueue = self->_syncQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70___CDInMemoryContext_setObject_returningMetadataForContextualKeyPath___block_invoke;
  v13[3] = &unk_1E7886558;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(syncQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (BOOL)setObject:(id)a3 forContextualKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  syncQueue = self->_syncQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53___CDInMemoryContext_setObject_forContextualKeyPath___block_invoke;
  v12[3] = &unk_1E7886558;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v9 = v7;
  v10 = v6;
  dispatch_sync(syncQueue, v12);
  LOBYTE(syncQueue) = v17[5] != 0;

  _Block_object_dispose(&v16, 8);
  return syncQueue;
}

- (id)lastModifiedDateForContextualKeyPath:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59___CDInMemoryContext_lastModifiedDateForContextualKeyPath___block_invoke;
  block[3] = &unk_1E7886530;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(syncQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)propertiesForContextualKeyPath:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___CDInMemoryContext_propertiesForContextualKeyPath___block_invoke;
  block[3] = &unk_1E7886530;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(syncQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)removeObjectsMatchingPredicate:(id)a3 fromArrayAtKeyPath:(id)a4
{
  v7 = 0;
  v4 = [(_CDInMemoryContext *)self removeObjectsMatchingPredicate:a3 fromArrayAtKeyPath:a4 removedObjects:&v7];
  v5 = v7;

  return v5;
}

- (id)removeObjectsMatchingPredicate:(id)a3 fromArrayAtKeyPath:(id)a4 removedObjects:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87___CDInMemoryContext_removeObjectsMatchingPredicate_fromArrayAtKeyPath_removedObjects___block_invoke;
  block[3] = &unk_1E7886580;
  block[4] = self;
  v11 = v9;
  v16 = v11;
  v18 = &v20;
  v12 = v8;
  v17 = v12;
  v19 = &v26;
  dispatch_sync(syncQueue, block);
  if (a5)
  {
    *a5 = v27[5];
  }

  v13 = v21[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (id)addObjects:(id)a3 andRemoveObjects:(id)a4 fromArrayAtKeyPath:(id)a5 valueDidChange:(BOOL *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  syncQueue = self->_syncQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84___CDInMemoryContext_addObjects_andRemoveObjects_fromArrayAtKeyPath_valueDidChange___block_invoke;
  v19[3] = &unk_1E78865A8;
  v23 = &v29;
  v19[4] = self;
  v14 = v10;
  v20 = v14;
  v15 = v11;
  v21 = v15;
  v16 = v12;
  v22 = v16;
  v24 = &v25;
  dispatch_sync(syncQueue, v19);
  if (a6)
  {
    *a6 = *(v26 + 24);
  }

  v17 = v30[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v17;
}

- (id)unsafe_addObjects:(id)a3 andRemoveObjects:(id)a4 fromArrayAtKeyPath:(id)a5 valueDidChange:(BOOL *)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  dispatch_assert_queue_V2(self->_syncQueue);
  if (a6)
  {
    *a6 = 0;
  }

  v13 = [(NSMutableDictionary *)self->_context objectForKeyedSubscript:v12];
  if (![v10 count] && !objc_msgSend(v11, "count"))
  {
    goto LABEL_33;
  }

  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = [v13 value];
  if (!v14 || (v15 = v14, [v13 value], v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16, v15, (isKindOfClass & 1) != 0))
  {
LABEL_8:
    v39 = v12;
    v18 = [v13 value];
    v19 = [v18 mutableCopy];

    if (!v19)
    {
      v19 = [MEMORY[0x1E695DF70] array];
    }

    if ([v19 count])
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v20 = v11;
      v21 = [v20 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v45;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v45 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [v19 removeObject:*(*(&v44 + 1) + 8 * i)];
          }

          v22 = [v20 countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v22);
      }
    }

    v38 = a6;
    v25 = v11;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v26 = v10;
    v27 = [v26 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v41;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v40 + 1) + 8 * j);
          if (([v19 containsObject:{v31, v38}] & 1) == 0)
          {
            [v19 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v28);
    }

    v32 = [v13 value];
    v33 = [v19 isEqual:v32];

    if (v33)
    {
      v34 = v13;
      v11 = v25;
      v12 = v39;
    }

    else
    {
      v35 = [v19 copy];
      v12 = v39;
      v34 = [(_CDInMemoryContext *)self unsafe_setObject:v35 returningMetadataForContextualKeyPath:v39];

      v11 = v25;
      if (v38)
      {
        *v38 = 1;
      }
    }
  }

  else
  {
LABEL_33:
    v34 = v13;
  }

  v36 = *MEMORY[0x1E69E9840];

  return v34;
}

- (BOOL)addObjects:(id)a3 andRemoveObjects:(id)a4 fromArrayAtKeyPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] || objc_msgSend(v9, "count"))
  {
    v14 = 0;
    v11 = [(_CDInMemoryContext *)self addObjects:v8 andRemoveObjects:v9 fromArrayAtKeyPath:v10 valueDidChange:&v14];
    v12 = v14;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (BOOL)addObjects:(id)a3 toArrayAtKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v11 = 0;
    v8 = [(_CDInMemoryContext *)self addObjects:v6 andRemoveObjects:0 fromArrayAtKeyPath:v7 valueDidChange:&v11];
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)removeObjects:(id)a3 fromArrayAtKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v11 = 0;
    v8 = [(_CDInMemoryContext *)self addObjects:0 andRemoveObjects:v6 fromArrayAtKeyPath:v7 valueDidChange:&v11];
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)addCallback:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45___CDInMemoryContext_addCallback_forKeyPath___block_invoke;
  block[3] = &unk_1E7886228;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_sync(syncQueue, block);
}

- (void)registerCallback:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 predicate];
  v6 = [v5 keyPaths];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(_CDInMemoryContext *)self addCallback:v4 forKeyPath:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)unsafe_deregisterCallback:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_syncQueue);
  v5 = _os_activity_create(&dword_1A9611000, "CoreDuet: ContextStore Deregister", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v5, state);
  os_activity_scope_leave(state);

  v6 = [v4 clientIdentifier];

  v7 = [MEMORY[0x1E6997908] contextChannel];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = [v4 clientIdentifier];
    v10 = [v4 identifier];
    *state = 138543618;
    *&state[4] = v9;
    *&state[12] = 2112;
    *&state[14] = v10;
    _os_log_impl(&dword_1A9611000, v7, OS_LOG_TYPE_INFO, "Deregistering callback for client: %{public}@, registration: %@", state, 0x16u);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = [v4 identifier];
    *state = 138412290;
    *&state[4] = v9;
    _os_log_impl(&dword_1A9611000, v7, OS_LOG_TYPE_INFO, "Deregistering callback for registration: %@", state, 0xCu);
  }

LABEL_7:
  v11 = [v4 predicate];
  v12 = [v11 keyPaths];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [(NSMutableDictionary *)self->_registrations objectForKeyedSubscript:v18, v26];
        [v19 removeObject:v4];

        v20 = +[_CDContextQueries keyPathForSystemTime];
        v21 = [v18 isEqual:v20];

        if (v21)
        {
          [(_CDInMemoryContext *)self unsafe_deregisterForSystemTimeBasedCallbacksForRegistration:v4];
        }

        v22 = +[_CDContextQueries keyPathForCircularLocationRegions];
        v23 = [v18 isEqual:v22];

        if (v23)
        {
          v24 = [(_CDInMemoryContext *)self locationRegistrationMonitor];
          [v24 removeRegistration:v4];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)deregisterCallback:(id)a3
{
  v4 = a3;
  syncQueue = self->_syncQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41___CDInMemoryContext_deregisterCallback___block_invoke;
  v7[3] = &unk_1E7886250;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(syncQueue, v7);
}

- (BOOL)evaluatePredicate:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  syncQueue = self->_syncQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45___CDInMemoryContext_evaluatePredicate_date___block_invoke;
  v12[3] = &unk_1E78865F0;
  v12[4] = self;
  v13 = v7;
  v14 = v6;
  v15 = &v16;
  v9 = v6;
  v10 = v7;
  dispatch_sync(syncQueue, v12);
  LOBYTE(v6) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v6;
}

- (void)evalutateRegistrationPredicatesWithPreviousContextValue:(id)a3 date:(id)a4 keyPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  syncQueue = self->_syncQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91___CDInMemoryContext_evalutateRegistrationPredicatesWithPreviousContextValue_date_keyPath___block_invoke;
  v15[3] = &unk_1E7886618;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(syncQueue, v15);
}

- (void)unsafe_evalutateRegistrationPredicatesWithPreviousContextValue:(id)a3 date:(id)a4 keyPath:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_syncQueue);
  v11 = [(NSMutableDictionary *)self->_registrations objectForKeyedSubscript:v10];
  v12 = [v11 copy];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(_CDInMemoryContext *)self unsafe_evalutateRegistrationPredicate:*(*(&v19 + 1) + 8 * v17++) previousContextValue:v8 date:v9 keyPath:v10, v19];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  [(_CDInMemoryContext *)self unsafe_registerFutureSystemTimeBasedCallbacksForRegistrations:v13 date:v9];
  v18 = *MEMORY[0x1E69E9840];
}

- (void)unsafe_evalutateRegistrationPredicate:(id)a3 previousContextValue:(id)a4 date:(id)a5 keyPath:(id)a6
{
  v115 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_syncQueue);
  v96 = self;
  v98 = [(_CDInMemoryContext *)self unsafe_evaluatedContextWithRegistration:v10 date:v12];
  v14 = [v98 objectForKeyedSubscript:v13];
  v15 = +[_CDContextQueries keyPathForSystemTime];
  v16 = [v13 isEqual:v15];

  if ((v16 & 1) == 0)
  {
    if (!(v11 | v14) || v11 && v14 && ([v14 value], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "value"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqual:", v21), v21, v20, v22))
    {
      v17 = [v10 predicate];
      v18 = [v17 evaluateOnEveryKeyPathUpdate];

      if (!v18)
      {
        goto LABEL_59;
      }

      v19 = [MEMORY[0x1E6997908] contextChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [_CDInMemoryContext unsafe_evalutateRegistrationPredicate:v19 previousContextValue:? date:? keyPath:?];
      }
    }
  }

  v23 = [v10 predicate];
  v24 = [v23 firesOnAnyChange];

  v97 = v13;
  if (v24)
  {
    goto LABEL_11;
  }

  v48 = [v10 predicate];
  v49 = [v48 keyPaths];

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v50 = v49;
  v51 = [v50 countByEnumeratingWithState:&v109 objects:v114 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v110;
    while (2)
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v110 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = [v98 objectForKeyedSubscript:*(*(&v109 + 1) + 8 * i)];

        if (!v55)
        {
          v60 = v50;
          v13 = v97;
          goto LABEL_58;
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v109 objects:v114 count:16];
      if (v52)
      {
        continue;
      }

      break;
    }
  }

  v56 = [v10 predicate];
  v57 = v56;
  v58 = v16 ? 0 : v11;
  v59 = [v56 evaluateWithState:v98 previousValue:v58];

  v13 = v97;
  if (v59)
  {
LABEL_11:
    if (v16)
    {
      v25 = [MEMORY[0x1E6997908] mdcsChannel];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [_CDInMemoryContext unsafe_evalutateRegistrationPredicate:v10 previousContextValue:v25 date:? keyPath:?];
      }

      [(_CDInMemoryContext *)v96 unsafe_deregisterCallback:v10];
    }

    else
    {
      v61 = [v10 predicate];
      [v61 minimumDurationInPreviousState];
      v63 = v62;

      if (v11 && v63 > 2.22507386e-308)
      {
        v64 = [v11 lastModifiedDate];
        if (!v64 || ([v11 metadata], v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "objectForKeyedSubscript:", @"_CDContextMetadataKeyFirstValueAfterReboot"), v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend(v66, "BOOLValue"), v66, v65, v67))
        {
          v68 = [MEMORY[0x1E695DF00] distantPast];

          v64 = v68;
        }

        [v12 timeIntervalSinceDate:v64];
        v70 = v69;
        v71 = [v10 predicate];
        [v71 minimumDurationInPreviousState];
        v73 = v72;

        if (v70 < v73)
        {
          goto LABEL_59;
        }
      }
    }

    v26 = [v10 informativeCallback];

    v94 = v14;
    v95 = v12;
    if (v26)
    {
      v27 = MEMORY[0x1E695DF90];
      v28 = [v10 predicate];
      v29 = [v28 keyPaths];
      v30 = [v27 dictionaryWithCapacity:{objc_msgSend(v29, "count") + 4}];

      v92 = v11;
      v31 = [v11 copy];
      [v30 setObject:v31 forKeyedSubscript:@"OldValue"];

      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v93 = v10;
      v32 = [v10 predicate];
      v33 = [v32 keyPaths];

      v34 = [v33 countByEnumeratingWithState:&v105 objects:v113 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = 0;
        v37 = *v106;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v106 != v37)
            {
              objc_enumerationMutation(v33);
            }

            v39 = *(*(&v105 + 1) + 8 * j);
            v40 = [v98 objectForKeyedSubscript:v39];
            v41 = [v39 deviceID];

            if (!v41)
            {
              v42 = [v39 copy];

              [v42 setDeviceID:v96->_deviceID];
              v39 = v42;
            }

            v43 = [v40 copy];

            if ([v39 isEqual:v97])
            {
              v44 = [v97 deviceID];

              if (v44)
              {
                v45 = [v39 copy];

                v46 = [v97 deviceID];
                [v45 setDeviceID:v46];

                v39 = v45;
              }

              [v30 setObject:v39 forKeyedSubscript:@"KeyPath"];
              [v30 setObject:v43 forKeyedSubscript:@"NewValue"];
              v47 = v43;

              v36 = v47;
            }

            [v30 setObject:v43 forKeyedSubscript:v39];
          }

          v35 = [v33 countByEnumeratingWithState:&v105 objects:v113 count:16];
        }

        while (v35);
      }

      else
      {
        v36 = 0;
      }

      v11 = v92;
      if (!v92)
      {
        goto LABEL_55;
      }

      v74 = [v92 value];
      if (!v74)
      {
        goto LABEL_55;
      }

      v75 = v74;
      v76 = [v92 value];
      v77 = [MEMORY[0x1E695DFB0] null];
      v78 = [v76 isEqual:v77];

      if ((v78 & 1) == 0)
      {
        if (v36)
        {
          v87 = [v36 value];
          v79 = _CDInformativeContextualChangeRemoval;
          if (v87)
          {
            v88 = v87;
            v89 = [v36 value];
            v90 = [MEMORY[0x1E695DFB0] null];
            v91 = [v89 isEqual:v90];

            if (!v91)
            {
              v79 = _CDInformativeContextualChangeReplacement;
            }
          }
        }

        else
        {
          v79 = _CDInformativeContextualChangeRemoval;
        }
      }

      else
      {
LABEL_55:
        v79 = _CDInformativeContextualChangeInsertion;
      }

      [v30 setObject:*v79 forKeyedSubscript:@"Kind"];
      v26 = [v30 copy];

      v10 = v93;
      v13 = v97;
    }

    v80 = [v10 callback];
    v81 = os_transaction_create();
    v82 = [v10 qualityOfService];
    callbackWorkloop = v96->_callbackWorkloop;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94___CDInMemoryContext_unsafe_evalutateRegistrationPredicate_previousContextValue_date_keyPath___block_invoke;
    block[3] = &unk_1E7886640;
    v100 = v10;
    v101 = v13;
    v102 = v26;
    v103 = v81;
    v104 = v80;
    v84 = v81;
    v50 = v80;
    v60 = v26;
    v85 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v82, 0, block);
    dispatch_async(callbackWorkloop, v85);

    v14 = v94;
    v12 = v95;
LABEL_58:
  }

LABEL_59:

  v86 = *MEMORY[0x1E69E9840];
}

- (void)unsafe_registerFutureSystemTimeBasedCallbacksForRegistrations:(id)a3 date:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18 = self;
  v19 = a4;
  dispatch_assert_queue_V2(self->_syncQueue);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 predicate];
        v14 = [v13 keyPaths];
        v15 = +[_CDContextQueries keyPathForSystemTime];
        v16 = [v14 containsObject:v15];

        if (v16)
        {
          [(_CDInMemoryContext *)v18 unsafe_registerFutureSystemTimeBasedCallbacksForRegistration:v12 date:v19];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)unsafe_registerFutureSystemTimeBasedCallbacksForRegistration:(id)a3 date:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_syncQueue);
  v8 = [v6 qualityOfService];
  v9 = [v6 predicate];
  v28 = [v6 identifier];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = [v9 timeBasedPredicateEvaluationIntervals];
  v29 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v29)
  {
    v27 = *v31;
    *&v11 = 138412546;
    v25 = v11;
    v26 = v10;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(v10);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [v13 startDate];
        v15 = [v13 endDate];
        v16 = [v15 compare:v7];

        if (v16 != 1)
        {
          goto LABEL_12;
        }

        v17 = [(_CDInMemoryContext *)self unsafe_evaluatedContextWithRegistration:v6 date:v14];
        if (![v9 evaluateWithState:v17 previousValue:0])
        {

LABEL_12:
          v17 = [(_CDInMemoryContext *)self systemTimeCallbackScheduler];
          [v17 unscheduleCallbackAtDate:v14 identifier:v28 requiringDeviceWake:v8 > 0x18];
          goto LABEL_13;
        }

        v18 = v9;
        v19 = v7;
        v20 = v6;
        v21 = [MEMORY[0x1E6997908] contextChannel];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v23 = _CDFormattedDate();
          *buf = v25;
          v35 = v23;
          v36 = 2112;
          v37 = v28;
          _os_log_debug_impl(&dword_1A9611000, v21, OS_LOG_TYPE_DEBUG, "Registering system time callback at %@ for registration %@", buf, 0x16u);
        }

        v22 = [(_CDInMemoryContext *)self systemTimeCallbackScheduler];
        [v22 scheduleCallbackAtDate:v14 identifier:v28 requiringDeviceWake:v8 > 0x18];

        v6 = v20;
        v7 = v19;
        v9 = v18;
        v10 = v26;
LABEL_13:
      }

      v29 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v29);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)unsafe_deregisterForSystemTimeBasedCallbacksForRegistration:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_syncQueue);
  v5 = [v4 identifier];
  if (v5)
  {
    v6 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(_CDInMemoryContext *)v5 unsafe_deregisterForSystemTimeBasedCallbacksForRegistration:v6];
    }

    v7 = [v4 qualityOfService];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v4;
    v8 = [v4 predicate];
    v9 = [v8 timeBasedPredicateEvaluationIntervals];

    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          v15 = [(_CDInMemoryContext *)self systemTimeCallbackScheduler];
          v16 = [v14 startDate];
          [v15 unscheduleCallbackAtDate:v16 identifier:v5 requiringDeviceWake:v7 > 0x18];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v4 = v18;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)unsafe_evaluatedContextWithRegistration:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_syncQueue);
  v8 = [(NSMutableDictionary *)self->_context mutableCopy];
  v9 = objc_alloc_init(_CDContextValue);
  [(_CDContextValue *)v9 setValue:v7];
  [(_CDContextValue *)v9 setLastModifiedDate:v7];
  v10 = +[_CDContextQueries keyPathForSystemTime];
  [v8 setObject:v9 forKeyedSubscript:v10];

  v11 = [v6 locationManagerEffectiveBundleID];
  if (v11)
  {
    v12 = [(_CDInMemoryContext *)self locationRegistrationMonitor];
    v13 = [v12 regionInfosForRegistration:v6];

    v14 = objc_alloc_init(_CDContextValue);
    [(_CDContextValue *)v14 setValue:v13];
    [(_CDContextValue *)v14 setLastModifiedDate:v7];
    v15 = +[_CDContextQueries keyPathForCircularLocationRegions];
    [v8 setObject:v14 forKeyedSubscript:v15];
  }

  v16 = [v8 copy];

  return v16;
}

- (id)allRegistrations
{
  v3 = objc_opt_new();
  syncQueue = self->_syncQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38___CDInMemoryContext_allRegistrations__block_invoke;
  v9[3] = &unk_1E7886250;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(syncQueue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)unsafe_evalutateRegistrationPredicate:(uint64_t)a1 previousContextValue:(NSObject *)a2 date:keyPath:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A9611000, a2, OS_LOG_TYPE_DEBUG, "Automatically de-registering system time registration callback: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)unsafe_deregisterForSystemTimeBasedCallbacksForRegistration:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A9611000, a2, OS_LOG_TYPE_DEBUG, "Deregistering system time callbacks for registration %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end