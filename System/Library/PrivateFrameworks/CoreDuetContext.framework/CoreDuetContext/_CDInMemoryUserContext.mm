@interface _CDInMemoryUserContext
+ (id)userContext;
- (BOOL)addObjects:(id)a3 andRemoveObjects:(id)a4 fromArrayAtKeyPath:(id)a5;
- (BOOL)addObjects:(id)a3 toArrayAtKeyPath:(id)a4;
- (BOOL)evaluatePredicate:(id)a3;
- (BOOL)hasKnowledgeOfContextualKeyPath:(id)a3;
- (BOOL)hasMultiDeviceRegistrations;
- (BOOL)removeObjects:(id)a3 fromArrayAtKeyPath:(id)a4;
- (BOOL)setObject:(id)a3 forContextualKeyPath:(id)a4;
- (BOOL)unsafe_hasMultiDeviceRegistrations;
- (_CDInMemoryUserContext)init;
- (id)addObjects:(id)a3 andRemoveObjects:(id)a4 fromArrayAtKeyPath:(id)a5 valueDidChange:(BOOL *)a6;
- (id)allDeviceIDs;
- (id)allDevices;
- (id)contextForDeviceWithDeviceID:(id)a3;
- (id)contextForKeyPath:(id)a3;
- (id)description;
- (id)deviceWithDeviceID:(id)a3 fromDevices:(id)a4;
- (id)lastModifiedDateForContextualKeyPath:(id)a3;
- (id)namedDeviceIDsFromPredicate:(id)a3;
- (id)objectForContextualKeyPath:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (id)propertiesForContextualKeyPath:(id)a3;
- (id)remoteDeviceIDs;
- (id)removeObjectsMatchingPredicate:(id)a3 fromArrayAtKeyPath:(id)a4;
- (id)removeObjectsMatchingPredicate:(id)a3 fromArrayAtKeyPath:(id)a4 removedObjects:(id *)a5;
- (id)setObject:(id)a3 returningMetadataForContextualKeyPath:(id)a4;
- (id)unsafe_contextForDeviceWithDeviceID:(id)a3;
- (id)unsafe_multiDeviceRegistrations;
- (id)unsafe_multiDeviceRegistrationsByDeviceID;
- (id)unsafe_remoteDeviceIDs;
- (id)unsafe_remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:(id)a3;
- (id)unsafe_remoteDevices;
- (id)unsafe_remoteDevicesByDeviceIDForRemoteUserContextProxySourceDeviceUUID:(id)a3;
- (id)unsafe_remoteDevicesForRemoteUserContextProxySourceDeviceUUID:(id)a3;
- (id)unsafe_remoteUserContextProxySourceDeviceUUIDs;
- (id)valuesForKeyPaths:(id)a3;
- (id)valuesForKeyPaths:(id)a3 inContextsMatchingPredicate:(id)a4;
- (void)activateDevices:(id)a3 remoteUserContextProxySourceDeviceUUID:(id)a4;
- (void)deregisterCallback:(id)a3;
- (void)registerCallback:(id)a3;
- (void)setContextValue:(id)a3 forContextualKeyPath:(id)a4;
- (void)unsafe_remoteUserContextProxySourceDeviceUUIDs;
@end

@implementation _CDInMemoryUserContext

- (_CDInMemoryUserContext)init
{
  v16.receiver = self;
  v16.super_class = _CDInMemoryUserContext;
  v2 = [(_CDInMemoryUserContext *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.CDUserContext.ramglobalcontext", 0);
    syncQueue = v2->_syncQueue;
    v2->_syncQueue = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    contexts = v2->_contexts;
    v2->_contexts = v5;

    v7 = [_CDInMemoryContext contextWithDeviceID:v2->_localDeviceID];
    userContext = v2->_userContext;
    v2->_userContext = v7;

    v9 = +[_CDDevice localDevice];
    v10 = [v9 deviceID];
    localDeviceID = v2->_localDeviceID;
    v2->_localDeviceID = v10;

    v12 = [_CDInMemoryContext contextWithDeviceID:v2->_localDeviceID];
    [(NSMutableDictionary *)v2->_contexts setObject:v12 forKeyedSubscript:v2->_localDeviceID];
    v13 = [MEMORY[0x1E695DF70] array];
    pendingAllDeviceRegistrations = v2->_pendingAllDeviceRegistrations;
    v2->_pendingAllDeviceRegistrations = v13;
  }

  return v2;
}

+ (id)userContext
{
  v2 = objc_alloc_init(_CDInMemoryUserContext);

  return v2;
}

- (id)valuesForKeyPaths:(id)a3 inContextsMatchingPredicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  syncQueue = self->_syncQueue;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __72___CDInMemoryUserContext_valuesForKeyPaths_inContextsMatchingPredicate___block_invoke;
  v18 = &unk_1E7886618;
  v19 = self;
  v20 = v7;
  v21 = v6;
  v22 = v8;
  v10 = v8;
  v11 = v6;
  v12 = v7;
  dispatch_sync(syncQueue, &v15);
  v13 = [MEMORY[0x1E695DEC8] arrayWithArray:{v10, v15, v16, v17, v18, v19}];

  return v13;
}

- (id)valuesForKeyPaths:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(_CDInMemoryUserContext *)self propertiesForContextualKeyPath:v11, v16];
        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)contextForKeyPath:(id)a3
{
  v4 = a3;
  if ([v4 isUserCentric])
  {
    v5 = self->_userContext;
  }

  else
  {
    v6 = [v4 deviceID];
    v5 = [(_CDInMemoryUserContext *)self contextForDeviceWithDeviceID:v6];
  }

  return v5;
}

- (id)contextForDeviceWithDeviceID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___CDInMemoryUserContext_contextForDeviceWithDeviceID___block_invoke;
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

- (id)unsafe_contextForDeviceWithDeviceID:(id)a3
{
  v4 = a3;
  v5 = [v4 isEqualToString:self->_localDeviceID];
  contexts = self->_contexts;
  if (v5)
  {
    v7 = [(NSMutableDictionary *)contexts objectForKeyedSubscript:self->_localDeviceID];
  }

  else
  {
    v7 = [(NSMutableDictionary *)contexts objectForKeyedSubscript:v4];
    if (!v7)
    {
      v7 = [_CDInMemoryContext contextWithDeviceID:v4];
      [(NSMutableDictionary *)self->_contexts setObject:v7 forKeyedSubscript:v4];
    }
  }

  return v7;
}

- (BOOL)hasKnowledgeOfContextualKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(_CDInMemoryUserContext *)self contextForKeyPath:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hasKnowledgeOfContextualKeyPath:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)objectForContextualKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(_CDInMemoryUserContext *)self contextForKeyPath:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForContextualKeyPath:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)lastModifiedDateForContextualKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(_CDInMemoryUserContext *)self contextForKeyPath:v4];
  v6 = [v5 lastModifiedDateForContextualKeyPath:v4];

  return v6;
}

- (id)propertiesForContextualKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(_CDInMemoryUserContext *)self contextForKeyPath:v4];
  v6 = [v5 propertiesForContextualKeyPath:v4];

  return v6;
}

- (void)setContextValue:(id)a3 forContextualKeyPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_CDInMemoryUserContext *)self contextForKeyPath:v6];
  [v8 setContextValue:v7 forContextualKeyPath:v6];
}

- (id)addObjects:(id)a3 andRemoveObjects:(id)a4 fromArrayAtKeyPath:(id)a5 valueDidChange:(BOOL *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(_CDInMemoryUserContext *)self contextForKeyPath:v10];
  v14 = [v13 addObjects:v12 andRemoveObjects:v11 fromArrayAtKeyPath:v10 valueDidChange:a6];

  return v14;
}

- (id)removeObjectsMatchingPredicate:(id)a3 fromArrayAtKeyPath:(id)a4 removedObjects:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(_CDInMemoryUserContext *)self contextForKeyPath:v8];
  v11 = [v10 removeObjectsMatchingPredicate:v9 fromArrayAtKeyPath:v8 removedObjects:a5];

  return v11;
}

- (id)setObject:(id)a3 returningMetadataForContextualKeyPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_CDInMemoryUserContext *)self contextForKeyPath:v6];
  v9 = [v8 setObject:v7 returningMetadataForContextualKeyPath:v6];

  return v9;
}

- (BOOL)setObject:(id)a3 forContextualKeyPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_CDInMemoryUserContext *)self contextForKeyPath:v6];
  v9 = [v8 setObject:v7 returningMetadataForContextualKeyPath:v6];

  return v9 != 0;
}

- (BOOL)addObjects:(id)a3 toArrayAtKeyPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_CDInMemoryUserContext *)self contextForKeyPath:v6];
  v9 = [v8 addObjects:v7 toArrayAtKeyPath:v6];

  return v9;
}

- (BOOL)removeObjects:(id)a3 fromArrayAtKeyPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_CDInMemoryUserContext *)self contextForKeyPath:v6];
  v9 = [v8 removeObjects:v7 fromArrayAtKeyPath:v6];

  return v9;
}

- (id)removeObjectsMatchingPredicate:(id)a3 fromArrayAtKeyPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_CDInMemoryUserContext *)self contextForKeyPath:v6];
  v9 = [v8 removeObjectsMatchingPredicate:v7 fromArrayAtKeyPath:v6];

  return v9;
}

- (BOOL)addObjects:(id)a3 andRemoveObjects:(id)a4 fromArrayAtKeyPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_CDInMemoryUserContext *)self contextForKeyPath:v8];
  v12 = [v11 addObjects:v10 andRemoveObjects:v9 fromArrayAtKeyPath:v8];

  return v12;
}

- (id)allDevices
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  syncQueue = self->_syncQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36___CDInMemoryUserContext_allDevices__block_invoke;
  v8[3] = &unk_1E7886250;
  v5 = v3;
  v9 = v5;
  v10 = self;
  dispatch_sync(syncQueue, v8);
  v6 = v5;

  return v5;
}

- (id)allDeviceIDs
{
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:3];
  syncQueue = self->_syncQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38___CDInMemoryUserContext_allDeviceIDs__block_invoke;
  v8[3] = &unk_1E7886250;
  v5 = v3;
  v9 = v5;
  v10 = self;
  dispatch_sync(syncQueue, v8);
  v6 = v5;

  return v5;
}

- (id)remoteDeviceIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41___CDInMemoryUserContext_remoteDeviceIDs__block_invoke;
  v5[3] = &unk_1E7886690;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)deviceWithDeviceID:(id)a3 fromDevices:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 deviceID];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)unsafe_remoteDevices
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v4 = [(_CDInMemoryUserContext *)self unsafe_remoteUserContextProxySourceDeviceUUIDs];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [(_CDInMemoryUserContext *)self unsafe_remoteDevicesForRemoteUserContextProxySourceDeviceUUID:v9];
          if ([v10 count])
          {
            [v3 addObjectsFromArray:v10];
          }
        }

        else
        {
          v10 = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v18 = v9;
            _os_log_error_impl(&dword_1A9611000, v10, OS_LOG_TYPE_ERROR, "Invalid object in remote user context proxy source device array: %@", buf, 0xCu);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)unsafe_remoteDeviceIDs
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:2];
  v4 = [(_CDInMemoryUserContext *)self unsafe_remoteUserContextProxySourceDeviceUUIDs];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [(_CDInMemoryUserContext *)self unsafe_remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:v9];
          if ([v10 count])
          {
            [v3 unionSet:v10];
          }
        }

        else
        {
          v10 = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v18 = v9;
            _os_log_error_impl(&dword_1A9611000, v10, OS_LOG_TYPE_ERROR, "Invalid object in remote user context proxy source device array: %@", buf, 0xCu);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)unsafe_remoteDevicesForRemoteUserContextProxySourceDeviceUUID:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v17 = v4;
  v6 = [(_CDInMemoryUserContext *)self unsafe_remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:v4];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(_CDInMemoryUserContext *)self unsafe_contextForDeviceWithDeviceID:v11];
        v13 = [v12 device];
        if (v13)
        {
          [v5 addObject:v13];
        }

        else
        {
          v14 = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v23 = v11;
            _os_log_error_impl(&dword_1A9611000, v14, OS_LOG_TYPE_ERROR, "Missing device for device %{public}@", buf, 0xCu);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)unsafe_remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:(id)a3
{
  contexts = self->_contexts;
  localDeviceID = self->_localDeviceID;
  v5 = a3;
  v6 = [(NSMutableDictionary *)contexts objectForKeyedSubscript:localDeviceID];
  v7 = [_CDContextQueries keyPathForMDCSDeviceIDsWithProxySourceDeviceUUID:v5];

  v8 = [v6 objectForKeyedSubscript:v7];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v6 setObject:0 forKeyedSubscript:v7];
      v9 = [MEMORY[0x1E6997908] mdcsChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_CDInMemoryUserContext unsafe_remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:];
      }
    }
  }

  return v8;
}

- (id)unsafe_remoteDevicesByDeviceIDForRemoteUserContextProxySourceDeviceUUID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v6 = [(_CDInMemoryUserContext *)self unsafe_remoteDevicesForRemoteUserContextProxySourceDeviceUUID:v4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 deviceID];
        [v5 setObject:v11 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)unsafe_remoteUserContextProxySourceDeviceUUIDs
{
  v2 = [(NSMutableDictionary *)self->_contexts objectForKeyedSubscript:self->_localDeviceID];
  v3 = +[_CDContextQueries keyPathForMDCSProxies];
  v4 = [v2 objectForKeyedSubscript:v3];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      [v2 setObject:0 forKeyedSubscript:v3];
      v5 = [MEMORY[0x1E6997908] mdcsChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [_CDInMemoryUserContext unsafe_remoteUserContextProxySourceDeviceUUIDs];
      }

      v4 = 0;
    }
  }

  return v4;
}

- (void)activateDevices:(id)a3 remoteUserContextProxySourceDeviceUUID:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[_CDContextQueries keyPathForMDCSProxies];
  v18[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [(_CDInMemoryUserContext *)self addObjects:v9 toArrayAtKeyPath:v8];

  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81___CDInMemoryUserContext_activateDevices_remoteUserContextProxySourceDeviceUUID___block_invoke;
  block[3] = &unk_1E7886228;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_sync(syncQueue, block);

  v13 = *MEMORY[0x1E69E9840];
}

- (id)namedDeviceIDsFromPredicate:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:5];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 keyPaths];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) deviceID];
        v12 = v11;
        if (v11 && ([v11 isEqualToString:self->_localDeviceID] & 1) == 0)
        {
          [v5 addObject:v12];
        }

        else
        {

          v5 = 0;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count]< 2)
  {
    if ([v5 count])
    {
      goto LABEL_18;
    }

    v13 = v5;
    v5 = 0;
  }

  else
  {
    v13 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(_CDInMemoryUserContext *)v4 namedDeviceIDsFromPredicate:v13];
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)registerCallback:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [v4 predicate];
  v6 = [v5 keyPaths];

  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    LOBYTE(v9) = 0;
    v10 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v6);
        }

        if (v9)
        {
          v9 = 1;
        }

        else
        {
          v9 = [*(*(&v30 + 1) + 8 * i) isUserCentric];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);

    if (v9)
    {
      [(_CDInMemoryContext *)self->_userContext registerCallback:v4];
      goto LABEL_23;
    }
  }

  else
  {
  }

  v12 = [v4 deviceSet];
  if (v12 != 1)
  {
    if (v12)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (![v4 isMultiDeviceRegistration])
  {
LABEL_20:
    v17 = [(NSMutableDictionary *)self->_contexts objectForKeyedSubscript:self->_localDeviceID];
    [v17 registerCallback:v4];

    goto LABEL_23;
  }

  v13 = [v4 predicate];
  v14 = [(_CDInMemoryUserContext *)self namedDeviceIDsFromPredicate:v13];

  v15 = [(_CDInMemoryUserContext *)self allDevices];
  if ([v14 count])
  {
    v16 = v14;
  }

  else
  {
    v16 = [(_CDInMemoryUserContext *)self allDeviceIDs];
  }

  v18 = v16;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___CDInMemoryUserContext_registerCallback___block_invoke;
  block[3] = &unk_1E78866B8;
  v25 = v16;
  v26 = v14;
  v27 = v4;
  v28 = self;
  v29 = v15;
  v20 = v15;
  v21 = v14;
  v22 = v18;
  dispatch_sync(syncQueue, block);

LABEL_23:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)deregisterCallback:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceSet];
  if (v5 != 1)
  {
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (![v4 isMultiDeviceRegistration])
  {
LABEL_7:
    v10 = [(NSMutableDictionary *)self->_contexts objectForKeyedSubscript:self->_localDeviceID];
    [v10 deregisterCallback:v4];

    goto LABEL_10;
  }

  v6 = [v4 predicate];
  v7 = [(_CDInMemoryUserContext *)self namedDeviceIDsFromPredicate:v6];

  v8 = [(_CDInMemoryUserContext *)self allDevices];
  if ([v7 count])
  {
    v9 = v7;
  }

  else
  {
    v9 = [(_CDInMemoryUserContext *)self allDeviceIDs];
  }

  v11 = v9;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45___CDInMemoryUserContext_deregisterCallback___block_invoke;
  block[3] = &unk_1E78866B8;
  v17 = v9;
  v18 = v7;
  v19 = v4;
  v20 = self;
  v21 = v8;
  v13 = v8;
  v14 = v7;
  v15 = v11;
  dispatch_sync(syncQueue, block);

LABEL_10:
}

- (BOOL)hasMultiDeviceRegistrations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53___CDInMemoryUserContext_hasMultiDeviceRegistrations__block_invoke;
  v5[3] = &unk_1E7886690;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)unsafe_hasMultiDeviceRegistrations
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = self->_contexts;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v21 = 0;
    v6 = *v28;
    v7 = 0x1E7885000uLL;
    v22 = v3;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        if (([v9 isEqualToString:self->_localDeviceID] & 1) == 0)
        {
          v10 = [(NSMutableDictionary *)self->_contexts objectForKeyedSubscript:v9];
          v11 = *(v7 + 3872);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v10 allRegistrations];
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v13 = v12;
            v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = v7;
              v17 = *v24;
              while (2)
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v24 != v17)
                  {
                    objc_enumerationMutation(v13);
                  }

                  if ([*(*(&v23 + 1) + 8 * j) isMultiDeviceRegistration])
                  {
                    v21 = 1;
                    goto LABEL_18;
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }

LABEL_18:
              v7 = v16;
              v3 = v22;
            }
          }
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v5);
  }

  else
  {
    v21 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v21 & 1;
}

- (id)unsafe_multiDeviceRegistrations
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(_CDInMemoryUserContext *)self unsafe_multiDeviceRegistrationsByDeviceID];
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{2 * objc_msgSend(v2, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v4 objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * i), v13}];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 allObjects];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)unsafe_multiDeviceRegistrationsByDeviceID
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_contexts, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_contexts;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (([v9 isEqualToString:{self->_localDeviceID, v14}] & 1) == 0)
        {
          v10 = [(NSMutableDictionary *)self->_contexts objectForKeyedSubscript:v9];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 allRegistrations];
            if ([v11 count])
            {
              [v3 setObject:v11 forKeyedSubscript:v9];
            }
          }
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)evaluatePredicate:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 keyPaths];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(_CDInMemoryUserContext *)self propertiesForContextualKeyPath:v10];
        [v5 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = [v4 predicate];
  v13 = [v12 evaluateWithObject:v5 substitutionVariables:&unk_1F1D19200];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = [(_CDInMemoryUserContext *)self contextForKeyPath:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForContextualKeyPath:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  syncQueue = self->_syncQueue;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __37___CDInMemoryUserContext_description__block_invoke;
  v11 = &unk_1E7886250;
  v12 = v3;
  v13 = self;
  v5 = v3;
  dispatch_sync(syncQueue, &v8);
  v6 = [MEMORY[0x1E696AEC0] stringWithString:{v5, v8, v9, v10, v11}];

  return v6;
}

- (void)unsafe_remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1A9611000, v1, OS_LOG_TYPE_ERROR, "Invalid object at %{public}@: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)unsafe_remoteUserContextProxySourceDeviceUUIDs
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A9611000, v0, OS_LOG_TYPE_ERROR, "Invalid object at %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)namedDeviceIDsFromPredicate:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 keyPaths];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A9611000, a2, OS_LOG_TYPE_ERROR, "Multi-device predicates are not yet supported: %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)evaluatePredicate:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1A9611000, v0, OS_LOG_TYPE_FAULT, "Invalid predicate: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end