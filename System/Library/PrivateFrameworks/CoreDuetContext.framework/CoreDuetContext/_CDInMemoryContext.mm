@interface _CDInMemoryContext
+ (id)context;
+ (id)contextWithDeviceID:(id)d;
- (BOOL)addObjects:(id)objects andRemoveObjects:(id)removeObjects fromArrayAtKeyPath:(id)path;
- (BOOL)addObjects:(id)objects toArrayAtKeyPath:(id)path;
- (BOOL)evaluatePredicate:(id)predicate date:(id)date;
- (BOOL)hasKnowledgeOfContextualKeyPath:(id)path;
- (BOOL)removeObjects:(id)objects fromArrayAtKeyPath:(id)path;
- (BOOL)setObject:(id)object forContextualKeyPath:(id)path;
- (_CDInMemoryContext)init;
- (id)addObjects:(id)objects andRemoveObjects:(id)removeObjects fromArrayAtKeyPath:(id)path valueDidChange:(BOOL *)change;
- (id)allRegistrations;
- (id)lastModifiedDateForContextualKeyPath:(id)path;
- (id)objectForContextualKeyPath:(id)path;
- (id)propertiesForContextualKeyPath:(id)path;
- (id)removeObjectsMatchingPredicate:(id)predicate fromArrayAtKeyPath:(id)path;
- (id)removeObjectsMatchingPredicate:(id)predicate fromArrayAtKeyPath:(id)path removedObjects:(id *)objects;
- (id)setObject:(id)object returningMetadataForContextualKeyPath:(id)path;
- (id)unsafe_addObjects:(id)objects andRemoveObjects:(id)removeObjects fromArrayAtKeyPath:(id)path valueDidChange:(BOOL *)change;
- (id)unsafe_evaluatedContextWithRegistration:(id)registration date:(id)date;
- (id)unsafe_setObject:(id)object returningMetadataForContextualKeyPath:(id)path;
- (void)addCallback:(id)callback forKeyPath:(id)path;
- (void)dealloc;
- (void)deregisterCallback:(id)callback;
- (void)evalutateRegistrationPredicatesWithPreviousContextValue:(id)value date:(id)date keyPath:(id)path;
- (void)locationCoordinatorCircularRegionsDidChange:(id)change;
- (void)receiveSystemTimeCallback:(id)callback;
- (void)registerCallback:(id)callback;
- (void)setContextValue:(id)value forContextualKeyPath:(id)path;
- (void)unsafe_deregisterCallback:(id)callback;
- (void)unsafe_deregisterForSystemTimeBasedCallbacksForRegistration:(id)registration;
- (void)unsafe_evalutateRegistrationPredicate:(id)predicate previousContextValue:(id)value date:(id)date keyPath:(id)path;
- (void)unsafe_evalutateRegistrationPredicatesWithPreviousContextValue:(id)value date:(id)date keyPath:(id)path;
- (void)unsafe_registerFutureSystemTimeBasedCallbacksForRegistration:(id)registration date:(id)date;
- (void)unsafe_registerFutureSystemTimeBasedCallbacksForRegistrations:(id)registrations date:(id)date;
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    context = v2->_context;
    v2->_context = dictionary;

    v8 = dispatch_workloop_create("com.apple.cdcontext.inmemorycontext");
    callbackWorkloop = v2->_callbackWorkloop;
    v2->_callbackWorkloop = v8;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    registrations = v2->_registrations;
    v2->_registrations = dictionary2;

    v12 = +[_CDSystemTimeCallbackScheduler sharedInstance];
    systemTimeCallbackScheduler = v2->_systemTimeCallbackScheduler;
    v2->_systemTimeCallbackScheduler = v12;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_receiveSystemTimeCallback_ name:@"_CDSystemTimeCallbackNotification" object:v2->_systemTimeCallbackScheduler];

    v15 = objc_alloc_init(_CDContextualLocationRegistrationMonitor);
    locationRegistrationMonitor = v2->_locationRegistrationMonitor;
    v2->_locationRegistrationMonitor = v15;

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_locationCoordinatorCircularRegionsDidChange_ name:@"_CDCircularRegionsForRegistrationDidChangeNotification" object:v2->_locationRegistrationMonitor];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_CDSystemTimeCallbackNotification" object:self->_systemTimeCallbackScheduler];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"_CDCircularRegionsForRegistrationDidChangeNotification" object:self->_locationRegistrationMonitor];

  v5.receiver = self;
  v5.super_class = _CDInMemoryContext;
  [(_CDInMemoryContext *)&v5 dealloc];
}

+ (id)context
{
  v2 = objc_alloc_init(_CDInMemoryContext);

  return v2;
}

+ (id)contextWithDeviceID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(_CDInMemoryContext);
  [(_CDInMemoryContext *)v4 setDeviceID:dCopy];

  return v4;
}

- (void)locationCoordinatorCircularRegionsDidChange:(id)change
{
  changeCopy = change;
  syncQueue = self->_syncQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66___CDInMemoryContext_locationCoordinatorCircularRegionsDidChange___block_invoke;
  v11[3] = &unk_1E7886250;
  v12 = changeCopy;
  selfCopy = self;
  v6 = v11;
  v7 = syncQueue;
  v8 = changeCopy;
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

- (void)receiveSystemTimeCallback:(id)callback
{
  userInfo = [callback userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"_CDSystemTimeCallbackDateKey"];

  v5 = objc_alloc_init(_CDContextValue);
  [(_CDContextValue *)v5 setValue:v7];
  [(_CDContextValue *)v5 setLastModifiedDate:v7];
  v6 = +[_CDContextQueries keyPathForSystemTime];
  [(_CDInMemoryContext *)self evalutateRegistrationPredicatesWithPreviousContextValue:v5 date:v7 keyPath:v6];
}

- (BOOL)hasKnowledgeOfContextualKeyPath:(id)path
{
  pathCopy = path;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___CDInMemoryContext_hasKnowledgeOfContextualKeyPath___block_invoke;
  block[3] = &unk_1E7886508;
  v9 = pathCopy;
  v10 = &v11;
  block[4] = self;
  v6 = pathCopy;
  dispatch_sync(syncQueue, block);
  LOBYTE(syncQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return syncQueue;
}

- (id)objectForContextualKeyPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy key];
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
  v7 = pathCopy;
  v11 = v7;
  dispatch_sync(syncQueue, block);
  _cdcontextstore_signpost_get_object_end();
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)setContextValue:(id)value forContextualKeyPath:(id)path
{
  valueCopy = value;
  pathCopy = path;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59___CDInMemoryContext_setContextValue_forContextualKeyPath___block_invoke;
  block[3] = &unk_1E7886228;
  block[4] = self;
  v12 = pathCopy;
  v13 = valueCopy;
  v9 = valueCopy;
  v10 = pathCopy;
  dispatch_sync(syncQueue, block);
}

- (id)unsafe_setObject:(id)object returningMetadataForContextualKeyPath:(id)path
{
  v25 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  pathCopy = path;
  dispatch_assert_queue_V2(self->_syncQueue);
  v8 = _os_activity_create(&dword_1A9611000, "CoreDuet: ContextStore setObject:forContextualKeyPath:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *v24 = 0;
  *&v24[8] = 0;
  os_activity_scope_enter(v8, v24);
  os_activity_scope_leave(v24);

  contextChannel = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_INFO))
  {
    if ([objectCopy conformsToProtocol:&unk_1F1D26DB0])
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
    }

    else
    {
      _CDRedactedObjectForKeyPath(pathCopy, objectCopy);
    }
    v11 = ;
    *v24 = 138543618;
    *&v24[4] = pathCopy;
    *&v24[12] = 2112;
    *&v24[14] = v11;
    _os_log_impl(&dword_1A9611000, contextChannel, OS_LOG_TYPE_INFO, "Setting value for %{public}@: %@", v24, 0x16u);
  }

  v12 = [pathCopy key];
  _cdcontextstore_signpost_set_object_begin();

  date = [MEMORY[0x1E695DF00] date];
  v14 = [(NSMutableDictionary *)self->_context objectForKeyedSubscript:pathCopy];
  value = [v14 value];
  v16 = value;
  if (objectCopy | value)
  {
    if (!objectCopy || !value || ![objectCopy isEqual:value])
    {
      goto LABEL_13;
    }

    contextChannel2 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel2, OS_LOG_TYPE_INFO))
    {
      *v24 = 138543362;
      *&v24[4] = pathCopy;
      _os_log_impl(&dword_1A9611000, contextChannel2, OS_LOG_TYPE_INFO, "Setting value for %{public}@ is equal to previous value", v24, 0xCu);
    }

    if (([pathCopy isEphemeral] & 1) == 0)
    {
      _cdcontextstore_signpost_set_object_end();
      v21 = v14;
    }

    else
    {
LABEL_13:
      v18 = objc_alloc_init(_CDContextValue);
      v19 = [objectCopy copy];
      [(_CDContextValue *)v18 setValue:v19];

      [(_CDContextValue *)v18 setLastModifiedDate:date];
      if (!v14)
      {
        metadata = [(_CDContextValue *)v18 metadata];
        [metadata setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_CDContextMetadataKeyFirstValueAfterReboot"];
      }

      [(NSMutableDictionary *)self->_context setObject:v18 forKeyedSubscript:pathCopy];
      v21 = v18;
      [(_CDInMemoryContext *)self unsafe_evalutateRegistrationPredicatesWithPreviousContextValue:v14 date:date keyPath:pathCopy];
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

- (id)setObject:(id)object returningMetadataForContextualKeyPath:(id)path
{
  objectCopy = object;
  pathCopy = path;
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
  v14 = objectCopy;
  v15 = pathCopy;
  v16 = &v17;
  v9 = pathCopy;
  v10 = objectCopy;
  dispatch_sync(syncQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (BOOL)setObject:(id)object forContextualKeyPath:(id)path
{
  objectCopy = object;
  pathCopy = path;
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
  v13 = objectCopy;
  v14 = pathCopy;
  v15 = &v16;
  v9 = pathCopy;
  v10 = objectCopy;
  dispatch_sync(syncQueue, v12);
  LOBYTE(syncQueue) = v17[5] != 0;

  _Block_object_dispose(&v16, 8);
  return syncQueue;
}

- (id)lastModifiedDateForContextualKeyPath:(id)path
{
  pathCopy = path;
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
  v10 = pathCopy;
  v11 = &v12;
  block[4] = self;
  v6 = pathCopy;
  dispatch_sync(syncQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)propertiesForContextualKeyPath:(id)path
{
  pathCopy = path;
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
  v10 = pathCopy;
  v11 = &v12;
  block[4] = self;
  v6 = pathCopy;
  dispatch_sync(syncQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)removeObjectsMatchingPredicate:(id)predicate fromArrayAtKeyPath:(id)path
{
  v7 = 0;
  v4 = [(_CDInMemoryContext *)self removeObjectsMatchingPredicate:predicate fromArrayAtKeyPath:path removedObjects:&v7];
  v5 = v7;

  return v5;
}

- (id)removeObjectsMatchingPredicate:(id)predicate fromArrayAtKeyPath:(id)path removedObjects:(id *)objects
{
  predicateCopy = predicate;
  pathCopy = path;
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
  v11 = pathCopy;
  v16 = v11;
  v18 = &v20;
  v12 = predicateCopy;
  v17 = v12;
  v19 = &v26;
  dispatch_sync(syncQueue, block);
  if (objects)
  {
    *objects = v27[5];
  }

  v13 = v21[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (id)addObjects:(id)objects andRemoveObjects:(id)removeObjects fromArrayAtKeyPath:(id)path valueDidChange:(BOOL *)change
{
  objectsCopy = objects;
  removeObjectsCopy = removeObjects;
  pathCopy = path;
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
  v14 = objectsCopy;
  v20 = v14;
  v15 = removeObjectsCopy;
  v21 = v15;
  v16 = pathCopy;
  v22 = v16;
  v24 = &v25;
  dispatch_sync(syncQueue, v19);
  if (change)
  {
    *change = *(v26 + 24);
  }

  v17 = v30[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v17;
}

- (id)unsafe_addObjects:(id)objects andRemoveObjects:(id)removeObjects fromArrayAtKeyPath:(id)path valueDidChange:(BOOL *)change
{
  v50 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  removeObjectsCopy = removeObjects;
  pathCopy = path;
  dispatch_assert_queue_V2(self->_syncQueue);
  if (change)
  {
    *change = 0;
  }

  v13 = [(NSMutableDictionary *)self->_context objectForKeyedSubscript:pathCopy];
  if (![objectsCopy count] && !objc_msgSend(removeObjectsCopy, "count"))
  {
    goto LABEL_33;
  }

  if (!v13)
  {
    goto LABEL_8;
  }

  value = [v13 value];
  if (!value || (v15 = value, [v13 value], v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16, v15, (isKindOfClass & 1) != 0))
  {
LABEL_8:
    v39 = pathCopy;
    value2 = [v13 value];
    array = [value2 mutableCopy];

    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    if ([array count])
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v20 = removeObjectsCopy;
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

            [array removeObject:*(*(&v44 + 1) + 8 * i)];
          }

          v22 = [v20 countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v22);
      }
    }

    changeCopy = change;
    v25 = removeObjectsCopy;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v26 = objectsCopy;
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
          if (([array containsObject:{v31, changeCopy}] & 1) == 0)
          {
            [array addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v28);
    }

    value3 = [v13 value];
    v33 = [array isEqual:value3];

    if (v33)
    {
      v34 = v13;
      removeObjectsCopy = v25;
      pathCopy = v39;
    }

    else
    {
      v35 = [array copy];
      pathCopy = v39;
      v34 = [(_CDInMemoryContext *)self unsafe_setObject:v35 returningMetadataForContextualKeyPath:v39];

      removeObjectsCopy = v25;
      if (changeCopy)
      {
        *changeCopy = 1;
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

- (BOOL)addObjects:(id)objects andRemoveObjects:(id)removeObjects fromArrayAtKeyPath:(id)path
{
  objectsCopy = objects;
  removeObjectsCopy = removeObjects;
  pathCopy = path;
  if ([objectsCopy count] || objc_msgSend(removeObjectsCopy, "count"))
  {
    v14 = 0;
    v11 = [(_CDInMemoryContext *)self addObjects:objectsCopy andRemoveObjects:removeObjectsCopy fromArrayAtKeyPath:pathCopy valueDidChange:&v14];
    v12 = v14;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (BOOL)addObjects:(id)objects toArrayAtKeyPath:(id)path
{
  objectsCopy = objects;
  pathCopy = path;
  if ([objectsCopy count])
  {
    v11 = 0;
    v8 = [(_CDInMemoryContext *)self addObjects:objectsCopy andRemoveObjects:0 fromArrayAtKeyPath:pathCopy valueDidChange:&v11];
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)removeObjects:(id)objects fromArrayAtKeyPath:(id)path
{
  objectsCopy = objects;
  pathCopy = path;
  if ([objectsCopy count])
  {
    v11 = 0;
    v8 = [(_CDInMemoryContext *)self addObjects:0 andRemoveObjects:objectsCopy fromArrayAtKeyPath:pathCopy valueDidChange:&v11];
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)addCallback:(id)callback forKeyPath:(id)path
{
  callbackCopy = callback;
  pathCopy = path;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45___CDInMemoryContext_addCallback_forKeyPath___block_invoke;
  block[3] = &unk_1E7886228;
  v12 = callbackCopy;
  v13 = pathCopy;
  selfCopy = self;
  v9 = pathCopy;
  v10 = callbackCopy;
  dispatch_sync(syncQueue, block);
}

- (void)registerCallback:(id)callback
{
  v17 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  predicate = [callbackCopy predicate];
  keyPaths = [predicate keyPaths];

  v7 = [keyPaths countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(keyPaths);
        }

        [(_CDInMemoryContext *)self addCallback:callbackCopy forKeyPath:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [keyPaths countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)unsafe_deregisterCallback:(id)callback
{
  v32 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  dispatch_assert_queue_V2(self->_syncQueue);
  v5 = _os_activity_create(&dword_1A9611000, "CoreDuet: ContextStore Deregister", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v5, state);
  os_activity_scope_leave(state);

  clientIdentifier = [callbackCopy clientIdentifier];

  contextChannel = [MEMORY[0x1E6997908] contextChannel];
  v8 = os_log_type_enabled(contextChannel, OS_LOG_TYPE_INFO);
  if (clientIdentifier)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    clientIdentifier2 = [callbackCopy clientIdentifier];
    identifier = [callbackCopy identifier];
    *state = 138543618;
    *&state[4] = clientIdentifier2;
    *&state[12] = 2112;
    *&state[14] = identifier;
    _os_log_impl(&dword_1A9611000, contextChannel, OS_LOG_TYPE_INFO, "Deregistering callback for client: %{public}@, registration: %@", state, 0x16u);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    clientIdentifier2 = [callbackCopy identifier];
    *state = 138412290;
    *&state[4] = clientIdentifier2;
    _os_log_impl(&dword_1A9611000, contextChannel, OS_LOG_TYPE_INFO, "Deregistering callback for registration: %@", state, 0xCu);
  }

LABEL_7:
  predicate = [callbackCopy predicate];
  keyPaths = [predicate keyPaths];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = keyPaths;
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
        [v19 removeObject:callbackCopy];

        v20 = +[_CDContextQueries keyPathForSystemTime];
        v21 = [v18 isEqual:v20];

        if (v21)
        {
          [(_CDInMemoryContext *)self unsafe_deregisterForSystemTimeBasedCallbacksForRegistration:callbackCopy];
        }

        v22 = +[_CDContextQueries keyPathForCircularLocationRegions];
        v23 = [v18 isEqual:v22];

        if (v23)
        {
          locationRegistrationMonitor = [(_CDInMemoryContext *)self locationRegistrationMonitor];
          [locationRegistrationMonitor removeRegistration:callbackCopy];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)deregisterCallback:(id)callback
{
  callbackCopy = callback;
  syncQueue = self->_syncQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41___CDInMemoryContext_deregisterCallback___block_invoke;
  v7[3] = &unk_1E7886250;
  v8 = callbackCopy;
  selfCopy = self;
  v6 = callbackCopy;
  dispatch_sync(syncQueue, v7);
}

- (BOOL)evaluatePredicate:(id)predicate date:(id)date
{
  predicateCopy = predicate;
  dateCopy = date;
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
  v13 = dateCopy;
  v14 = predicateCopy;
  v15 = &v16;
  v9 = predicateCopy;
  v10 = dateCopy;
  dispatch_sync(syncQueue, v12);
  LOBYTE(predicateCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return predicateCopy;
}

- (void)evalutateRegistrationPredicatesWithPreviousContextValue:(id)value date:(id)date keyPath:(id)path
{
  valueCopy = value;
  dateCopy = date;
  pathCopy = path;
  syncQueue = self->_syncQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91___CDInMemoryContext_evalutateRegistrationPredicatesWithPreviousContextValue_date_keyPath___block_invoke;
  v15[3] = &unk_1E7886618;
  v15[4] = self;
  v16 = valueCopy;
  v17 = dateCopy;
  v18 = pathCopy;
  v12 = pathCopy;
  v13 = dateCopy;
  v14 = valueCopy;
  dispatch_sync(syncQueue, v15);
}

- (void)unsafe_evalutateRegistrationPredicatesWithPreviousContextValue:(id)value date:(id)date keyPath:(id)path
{
  v24 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  dateCopy = date;
  pathCopy = path;
  dispatch_assert_queue_V2(self->_syncQueue);
  v11 = [(NSMutableDictionary *)self->_registrations objectForKeyedSubscript:pathCopy];
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

        [(_CDInMemoryContext *)self unsafe_evalutateRegistrationPredicate:*(*(&v19 + 1) + 8 * v17++) previousContextValue:valueCopy date:dateCopy keyPath:pathCopy, v19];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  [(_CDInMemoryContext *)self unsafe_registerFutureSystemTimeBasedCallbacksForRegistrations:v13 date:dateCopy];
  v18 = *MEMORY[0x1E69E9840];
}

- (void)unsafe_evalutateRegistrationPredicate:(id)predicate previousContextValue:(id)value date:(id)date keyPath:(id)path
{
  v115 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  valueCopy = value;
  dateCopy = date;
  pathCopy = path;
  dispatch_assert_queue_V2(self->_syncQueue);
  selfCopy = self;
  v98 = [(_CDInMemoryContext *)self unsafe_evaluatedContextWithRegistration:predicateCopy date:dateCopy];
  v14 = [v98 objectForKeyedSubscript:pathCopy];
  v15 = +[_CDContextQueries keyPathForSystemTime];
  v16 = [pathCopy isEqual:v15];

  if ((v16 & 1) == 0)
  {
    if (!(valueCopy | v14) || valueCopy && v14 && ([v14 value], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(valueCopy, "value"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqual:", v21), v21, v20, v22))
    {
      predicate = [predicateCopy predicate];
      evaluateOnEveryKeyPathUpdate = [predicate evaluateOnEveryKeyPathUpdate];

      if (!evaluateOnEveryKeyPathUpdate)
      {
        goto LABEL_59;
      }

      contextChannel = [MEMORY[0x1E6997908] contextChannel];
      if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEBUG))
      {
        [_CDInMemoryContext unsafe_evalutateRegistrationPredicate:contextChannel previousContextValue:? date:? keyPath:?];
      }
    }
  }

  predicate2 = [predicateCopy predicate];
  firesOnAnyChange = [predicate2 firesOnAnyChange];

  v97 = pathCopy;
  if (firesOnAnyChange)
  {
    goto LABEL_11;
  }

  predicate3 = [predicateCopy predicate];
  keyPaths = [predicate3 keyPaths];

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v50 = keyPaths;
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
          pathCopy = v97;
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

  predicate4 = [predicateCopy predicate];
  v57 = predicate4;
  v58 = v16 ? 0 : valueCopy;
  v59 = [predicate4 evaluateWithState:v98 previousValue:v58];

  pathCopy = v97;
  if (v59)
  {
LABEL_11:
    if (v16)
    {
      mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
      if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_DEBUG))
      {
        [_CDInMemoryContext unsafe_evalutateRegistrationPredicate:predicateCopy previousContextValue:mdcsChannel date:? keyPath:?];
      }

      [(_CDInMemoryContext *)selfCopy unsafe_deregisterCallback:predicateCopy];
    }

    else
    {
      predicate5 = [predicateCopy predicate];
      [predicate5 minimumDurationInPreviousState];
      v63 = v62;

      if (valueCopy && v63 > 2.22507386e-308)
      {
        lastModifiedDate = [valueCopy lastModifiedDate];
        if (!lastModifiedDate || ([valueCopy metadata], v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "objectForKeyedSubscript:", @"_CDContextMetadataKeyFirstValueAfterReboot"), v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend(v66, "BOOLValue"), v66, v65, v67))
        {
          distantPast = [MEMORY[0x1E695DF00] distantPast];

          lastModifiedDate = distantPast;
        }

        [dateCopy timeIntervalSinceDate:lastModifiedDate];
        v70 = v69;
        predicate6 = [predicateCopy predicate];
        [predicate6 minimumDurationInPreviousState];
        v73 = v72;

        if (v70 < v73)
        {
          goto LABEL_59;
        }
      }
    }

    informativeCallback = [predicateCopy informativeCallback];

    v94 = v14;
    v95 = dateCopy;
    if (informativeCallback)
    {
      v27 = MEMORY[0x1E695DF90];
      predicate7 = [predicateCopy predicate];
      keyPaths2 = [predicate7 keyPaths];
      v30 = [v27 dictionaryWithCapacity:{objc_msgSend(keyPaths2, "count") + 4}];

      v92 = valueCopy;
      v31 = [valueCopy copy];
      [v30 setObject:v31 forKeyedSubscript:@"OldValue"];

      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v93 = predicateCopy;
      predicate8 = [predicateCopy predicate];
      keyPaths3 = [predicate8 keyPaths];

      v34 = [keyPaths3 countByEnumeratingWithState:&v105 objects:v113 count:16];
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
              objc_enumerationMutation(keyPaths3);
            }

            v39 = *(*(&v105 + 1) + 8 * j);
            v40 = [v98 objectForKeyedSubscript:v39];
            deviceID = [v39 deviceID];

            if (!deviceID)
            {
              v42 = [v39 copy];

              [v42 setDeviceID:selfCopy->_deviceID];
              v39 = v42;
            }

            v43 = [v40 copy];

            if ([v39 isEqual:v97])
            {
              deviceID2 = [v97 deviceID];

              if (deviceID2)
              {
                v45 = [v39 copy];

                deviceID3 = [v97 deviceID];
                [v45 setDeviceID:deviceID3];

                v39 = v45;
              }

              [v30 setObject:v39 forKeyedSubscript:@"KeyPath"];
              [v30 setObject:v43 forKeyedSubscript:@"NewValue"];
              v47 = v43;

              v36 = v47;
            }

            [v30 setObject:v43 forKeyedSubscript:v39];
          }

          v35 = [keyPaths3 countByEnumeratingWithState:&v105 objects:v113 count:16];
        }

        while (v35);
      }

      else
      {
        v36 = 0;
      }

      valueCopy = v92;
      if (!v92)
      {
        goto LABEL_55;
      }

      value = [v92 value];
      if (!value)
      {
        goto LABEL_55;
      }

      v75 = value;
      value2 = [v92 value];
      null = [MEMORY[0x1E695DFB0] null];
      v78 = [value2 isEqual:null];

      if ((v78 & 1) == 0)
      {
        if (v36)
        {
          value3 = [v36 value];
          v79 = _CDInformativeContextualChangeRemoval;
          if (value3)
          {
            v88 = value3;
            value4 = [v36 value];
            null2 = [MEMORY[0x1E695DFB0] null];
            v91 = [value4 isEqual:null2];

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
      informativeCallback = [v30 copy];

      predicateCopy = v93;
      pathCopy = v97;
    }

    callback = [predicateCopy callback];
    v81 = os_transaction_create();
    qualityOfService = [predicateCopy qualityOfService];
    callbackWorkloop = selfCopy->_callbackWorkloop;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94___CDInMemoryContext_unsafe_evalutateRegistrationPredicate_previousContextValue_date_keyPath___block_invoke;
    block[3] = &unk_1E7886640;
    v100 = predicateCopy;
    v101 = pathCopy;
    v102 = informativeCallback;
    v103 = v81;
    v104 = callback;
    v84 = v81;
    v50 = callback;
    v60 = informativeCallback;
    v85 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qualityOfService, 0, block);
    dispatch_async(callbackWorkloop, v85);

    v14 = v94;
    dateCopy = v95;
LABEL_58:
  }

LABEL_59:

  v86 = *MEMORY[0x1E69E9840];
}

- (void)unsafe_registerFutureSystemTimeBasedCallbacksForRegistrations:(id)registrations date:(id)date
{
  v25 = *MEMORY[0x1E69E9840];
  registrationsCopy = registrations;
  selfCopy = self;
  dateCopy = date;
  dispatch_assert_queue_V2(self->_syncQueue);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = registrationsCopy;
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
        predicate = [v12 predicate];
        keyPaths = [predicate keyPaths];
        v15 = +[_CDContextQueries keyPathForSystemTime];
        v16 = [keyPaths containsObject:v15];

        if (v16)
        {
          [(_CDInMemoryContext *)selfCopy unsafe_registerFutureSystemTimeBasedCallbacksForRegistration:v12 date:dateCopy];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)unsafe_registerFutureSystemTimeBasedCallbacksForRegistration:(id)registration date:(id)date
{
  v39 = *MEMORY[0x1E69E9840];
  registrationCopy = registration;
  dateCopy = date;
  dispatch_assert_queue_V2(self->_syncQueue);
  qualityOfService = [registrationCopy qualityOfService];
  predicate = [registrationCopy predicate];
  identifier = [registrationCopy identifier];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  timeBasedPredicateEvaluationIntervals = [predicate timeBasedPredicateEvaluationIntervals];
  v29 = [timeBasedPredicateEvaluationIntervals countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v29)
  {
    v27 = *v31;
    *&v11 = 138412546;
    v25 = v11;
    v26 = timeBasedPredicateEvaluationIntervals;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(timeBasedPredicateEvaluationIntervals);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        startDate = [v13 startDate];
        endDate = [v13 endDate];
        v16 = [endDate compare:dateCopy];

        if (v16 != 1)
        {
          goto LABEL_12;
        }

        systemTimeCallbackScheduler = [(_CDInMemoryContext *)self unsafe_evaluatedContextWithRegistration:registrationCopy date:startDate];
        if (![predicate evaluateWithState:systemTimeCallbackScheduler previousValue:0])
        {

LABEL_12:
          systemTimeCallbackScheduler = [(_CDInMemoryContext *)self systemTimeCallbackScheduler];
          [systemTimeCallbackScheduler unscheduleCallbackAtDate:startDate identifier:identifier requiringDeviceWake:qualityOfService > 0x18];
          goto LABEL_13;
        }

        v18 = predicate;
        v19 = dateCopy;
        v20 = registrationCopy;
        contextChannel = [MEMORY[0x1E6997908] contextChannel];
        if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEBUG))
        {
          v23 = _CDFormattedDate();
          *buf = v25;
          v35 = v23;
          v36 = 2112;
          v37 = identifier;
          _os_log_debug_impl(&dword_1A9611000, contextChannel, OS_LOG_TYPE_DEBUG, "Registering system time callback at %@ for registration %@", buf, 0x16u);
        }

        systemTimeCallbackScheduler2 = [(_CDInMemoryContext *)self systemTimeCallbackScheduler];
        [systemTimeCallbackScheduler2 scheduleCallbackAtDate:startDate identifier:identifier requiringDeviceWake:qualityOfService > 0x18];

        registrationCopy = v20;
        dateCopy = v19;
        predicate = v18;
        timeBasedPredicateEvaluationIntervals = v26;
LABEL_13:
      }

      v29 = [timeBasedPredicateEvaluationIntervals countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v29);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)unsafe_deregisterForSystemTimeBasedCallbacksForRegistration:(id)registration
{
  v24 = *MEMORY[0x1E69E9840];
  registrationCopy = registration;
  dispatch_assert_queue_V2(self->_syncQueue);
  identifier = [registrationCopy identifier];
  if (identifier)
  {
    contextChannel = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEBUG))
    {
      [(_CDInMemoryContext *)identifier unsafe_deregisterForSystemTimeBasedCallbacksForRegistration:contextChannel];
    }

    qualityOfService = [registrationCopy qualityOfService];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = registrationCopy;
    predicate = [registrationCopy predicate];
    timeBasedPredicateEvaluationIntervals = [predicate timeBasedPredicateEvaluationIntervals];

    v10 = [timeBasedPredicateEvaluationIntervals countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(timeBasedPredicateEvaluationIntervals);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          systemTimeCallbackScheduler = [(_CDInMemoryContext *)self systemTimeCallbackScheduler];
          startDate = [v14 startDate];
          [systemTimeCallbackScheduler unscheduleCallbackAtDate:startDate identifier:identifier requiringDeviceWake:qualityOfService > 0x18];

          ++v13;
        }

        while (v11 != v13);
        v11 = [timeBasedPredicateEvaluationIntervals countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    registrationCopy = v18;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)unsafe_evaluatedContextWithRegistration:(id)registration date:(id)date
{
  registrationCopy = registration;
  dateCopy = date;
  dispatch_assert_queue_V2(self->_syncQueue);
  v8 = [(NSMutableDictionary *)self->_context mutableCopy];
  v9 = objc_alloc_init(_CDContextValue);
  [(_CDContextValue *)v9 setValue:dateCopy];
  [(_CDContextValue *)v9 setLastModifiedDate:dateCopy];
  v10 = +[_CDContextQueries keyPathForSystemTime];
  [v8 setObject:v9 forKeyedSubscript:v10];

  locationManagerEffectiveBundleID = [registrationCopy locationManagerEffectiveBundleID];
  if (locationManagerEffectiveBundleID)
  {
    locationRegistrationMonitor = [(_CDInMemoryContext *)self locationRegistrationMonitor];
    v13 = [locationRegistrationMonitor regionInfosForRegistration:registrationCopy];

    v14 = objc_alloc_init(_CDContextValue);
    [(_CDContextValue *)v14 setValue:v13];
    [(_CDContextValue *)v14 setLastModifiedDate:dateCopy];
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