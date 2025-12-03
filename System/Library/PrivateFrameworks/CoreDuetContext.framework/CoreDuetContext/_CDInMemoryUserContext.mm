@interface _CDInMemoryUserContext
+ (id)userContext;
- (BOOL)addObjects:(id)objects andRemoveObjects:(id)removeObjects fromArrayAtKeyPath:(id)path;
- (BOOL)addObjects:(id)objects toArrayAtKeyPath:(id)path;
- (BOOL)evaluatePredicate:(id)predicate;
- (BOOL)hasKnowledgeOfContextualKeyPath:(id)path;
- (BOOL)hasMultiDeviceRegistrations;
- (BOOL)removeObjects:(id)objects fromArrayAtKeyPath:(id)path;
- (BOOL)setObject:(id)object forContextualKeyPath:(id)path;
- (BOOL)unsafe_hasMultiDeviceRegistrations;
- (_CDInMemoryUserContext)init;
- (id)addObjects:(id)objects andRemoveObjects:(id)removeObjects fromArrayAtKeyPath:(id)path valueDidChange:(BOOL *)change;
- (id)allDeviceIDs;
- (id)allDevices;
- (id)contextForDeviceWithDeviceID:(id)d;
- (id)contextForKeyPath:(id)path;
- (id)description;
- (id)deviceWithDeviceID:(id)d fromDevices:(id)devices;
- (id)lastModifiedDateForContextualKeyPath:(id)path;
- (id)namedDeviceIDsFromPredicate:(id)predicate;
- (id)objectForContextualKeyPath:(id)path;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)propertiesForContextualKeyPath:(id)path;
- (id)remoteDeviceIDs;
- (id)removeObjectsMatchingPredicate:(id)predicate fromArrayAtKeyPath:(id)path;
- (id)removeObjectsMatchingPredicate:(id)predicate fromArrayAtKeyPath:(id)path removedObjects:(id *)objects;
- (id)setObject:(id)object returningMetadataForContextualKeyPath:(id)path;
- (id)unsafe_contextForDeviceWithDeviceID:(id)d;
- (id)unsafe_multiDeviceRegistrations;
- (id)unsafe_multiDeviceRegistrationsByDeviceID;
- (id)unsafe_remoteDeviceIDs;
- (id)unsafe_remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:(id)d;
- (id)unsafe_remoteDevices;
- (id)unsafe_remoteDevicesByDeviceIDForRemoteUserContextProxySourceDeviceUUID:(id)d;
- (id)unsafe_remoteDevicesForRemoteUserContextProxySourceDeviceUUID:(id)d;
- (id)unsafe_remoteUserContextProxySourceDeviceUUIDs;
- (id)valuesForKeyPaths:(id)paths;
- (id)valuesForKeyPaths:(id)paths inContextsMatchingPredicate:(id)predicate;
- (void)activateDevices:(id)devices remoteUserContextProxySourceDeviceUUID:(id)d;
- (void)deregisterCallback:(id)callback;
- (void)registerCallback:(id)callback;
- (void)setContextValue:(id)value forContextualKeyPath:(id)path;
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    contexts = v2->_contexts;
    v2->_contexts = dictionary;

    v7 = [_CDInMemoryContext contextWithDeviceID:v2->_localDeviceID];
    userContext = v2->_userContext;
    v2->_userContext = v7;

    v9 = +[_CDDevice localDevice];
    deviceID = [v9 deviceID];
    localDeviceID = v2->_localDeviceID;
    v2->_localDeviceID = deviceID;

    v12 = [_CDInMemoryContext contextWithDeviceID:v2->_localDeviceID];
    [(NSMutableDictionary *)v2->_contexts setObject:v12 forKeyedSubscript:v2->_localDeviceID];
    array = [MEMORY[0x1E695DF70] array];
    pendingAllDeviceRegistrations = v2->_pendingAllDeviceRegistrations;
    v2->_pendingAllDeviceRegistrations = array;
  }

  return v2;
}

+ (id)userContext
{
  v2 = objc_alloc_init(_CDInMemoryUserContext);

  return v2;
}

- (id)valuesForKeyPaths:(id)paths inContextsMatchingPredicate:(id)predicate
{
  pathsCopy = paths;
  predicateCopy = predicate;
  array = [MEMORY[0x1E695DF70] array];
  syncQueue = self->_syncQueue;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __72___CDInMemoryUserContext_valuesForKeyPaths_inContextsMatchingPredicate___block_invoke;
  v18 = &unk_1E7886618;
  selfCopy = self;
  v20 = predicateCopy;
  v21 = pathsCopy;
  v22 = array;
  v10 = array;
  v11 = pathsCopy;
  v12 = predicateCopy;
  dispatch_sync(syncQueue, &v15);
  v13 = [MEMORY[0x1E695DEC8] arrayWithArray:{v10, v15, v16, v17, v18, selfCopy}];

  return v13;
}

- (id)valuesForKeyPaths:(id)paths
{
  v21 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(pathsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = pathsCopy;
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

- (id)contextForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isUserCentric])
  {
    v5 = self->_userContext;
  }

  else
  {
    deviceID = [pathCopy deviceID];
    v5 = [(_CDInMemoryUserContext *)self contextForDeviceWithDeviceID:deviceID];
  }

  return v5;
}

- (id)contextForDeviceWithDeviceID:(id)d
{
  dCopy = d;
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
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(syncQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)unsafe_contextForDeviceWithDeviceID:(id)d
{
  dCopy = d;
  v5 = [dCopy isEqualToString:self->_localDeviceID];
  contexts = self->_contexts;
  if (v5)
  {
    v7 = [(NSMutableDictionary *)contexts objectForKeyedSubscript:self->_localDeviceID];
  }

  else
  {
    v7 = [(NSMutableDictionary *)contexts objectForKeyedSubscript:dCopy];
    if (!v7)
    {
      v7 = [_CDInMemoryContext contextWithDeviceID:dCopy];
      [(NSMutableDictionary *)self->_contexts setObject:v7 forKeyedSubscript:dCopy];
    }
  }

  return v7;
}

- (BOOL)hasKnowledgeOfContextualKeyPath:(id)path
{
  pathCopy = path;
  v5 = [(_CDInMemoryUserContext *)self contextForKeyPath:pathCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hasKnowledgeOfContextualKeyPath:pathCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)objectForContextualKeyPath:(id)path
{
  pathCopy = path;
  v5 = [(_CDInMemoryUserContext *)self contextForKeyPath:pathCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForContextualKeyPath:pathCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)lastModifiedDateForContextualKeyPath:(id)path
{
  pathCopy = path;
  v5 = [(_CDInMemoryUserContext *)self contextForKeyPath:pathCopy];
  v6 = [v5 lastModifiedDateForContextualKeyPath:pathCopy];

  return v6;
}

- (id)propertiesForContextualKeyPath:(id)path
{
  pathCopy = path;
  v5 = [(_CDInMemoryUserContext *)self contextForKeyPath:pathCopy];
  v6 = [v5 propertiesForContextualKeyPath:pathCopy];

  return v6;
}

- (void)setContextValue:(id)value forContextualKeyPath:(id)path
{
  pathCopy = path;
  valueCopy = value;
  v8 = [(_CDInMemoryUserContext *)self contextForKeyPath:pathCopy];
  [v8 setContextValue:valueCopy forContextualKeyPath:pathCopy];
}

- (id)addObjects:(id)objects andRemoveObjects:(id)removeObjects fromArrayAtKeyPath:(id)path valueDidChange:(BOOL *)change
{
  pathCopy = path;
  removeObjectsCopy = removeObjects;
  objectsCopy = objects;
  v13 = [(_CDInMemoryUserContext *)self contextForKeyPath:pathCopy];
  v14 = [v13 addObjects:objectsCopy andRemoveObjects:removeObjectsCopy fromArrayAtKeyPath:pathCopy valueDidChange:change];

  return v14;
}

- (id)removeObjectsMatchingPredicate:(id)predicate fromArrayAtKeyPath:(id)path removedObjects:(id *)objects
{
  pathCopy = path;
  predicateCopy = predicate;
  v10 = [(_CDInMemoryUserContext *)self contextForKeyPath:pathCopy];
  v11 = [v10 removeObjectsMatchingPredicate:predicateCopy fromArrayAtKeyPath:pathCopy removedObjects:objects];

  return v11;
}

- (id)setObject:(id)object returningMetadataForContextualKeyPath:(id)path
{
  pathCopy = path;
  objectCopy = object;
  v8 = [(_CDInMemoryUserContext *)self contextForKeyPath:pathCopy];
  v9 = [v8 setObject:objectCopy returningMetadataForContextualKeyPath:pathCopy];

  return v9;
}

- (BOOL)setObject:(id)object forContextualKeyPath:(id)path
{
  pathCopy = path;
  objectCopy = object;
  v8 = [(_CDInMemoryUserContext *)self contextForKeyPath:pathCopy];
  v9 = [v8 setObject:objectCopy returningMetadataForContextualKeyPath:pathCopy];

  return v9 != 0;
}

- (BOOL)addObjects:(id)objects toArrayAtKeyPath:(id)path
{
  pathCopy = path;
  objectsCopy = objects;
  v8 = [(_CDInMemoryUserContext *)self contextForKeyPath:pathCopy];
  v9 = [v8 addObjects:objectsCopy toArrayAtKeyPath:pathCopy];

  return v9;
}

- (BOOL)removeObjects:(id)objects fromArrayAtKeyPath:(id)path
{
  pathCopy = path;
  objectsCopy = objects;
  v8 = [(_CDInMemoryUserContext *)self contextForKeyPath:pathCopy];
  v9 = [v8 removeObjects:objectsCopy fromArrayAtKeyPath:pathCopy];

  return v9;
}

- (id)removeObjectsMatchingPredicate:(id)predicate fromArrayAtKeyPath:(id)path
{
  pathCopy = path;
  predicateCopy = predicate;
  v8 = [(_CDInMemoryUserContext *)self contextForKeyPath:pathCopy];
  v9 = [v8 removeObjectsMatchingPredicate:predicateCopy fromArrayAtKeyPath:pathCopy];

  return v9;
}

- (BOOL)addObjects:(id)objects andRemoveObjects:(id)removeObjects fromArrayAtKeyPath:(id)path
{
  pathCopy = path;
  removeObjectsCopy = removeObjects;
  objectsCopy = objects;
  v11 = [(_CDInMemoryUserContext *)self contextForKeyPath:pathCopy];
  v12 = [v11 addObjects:objectsCopy andRemoveObjects:removeObjectsCopy fromArrayAtKeyPath:pathCopy];

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
  selfCopy = self;
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
  selfCopy = self;
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

- (id)deviceWithDeviceID:(id)d fromDevices:(id)devices
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  devicesCopy = devices;
  v7 = [devicesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(devicesCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        deviceID = [v10 deviceID];
        v12 = [deviceID isEqualToString:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [devicesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  unsafe_remoteUserContextProxySourceDeviceUUIDs = [(_CDInMemoryUserContext *)self unsafe_remoteUserContextProxySourceDeviceUUIDs];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [unsafe_remoteUserContextProxySourceDeviceUUIDs countByEnumeratingWithState:&v13 objects:v19 count:16];
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
          objc_enumerationMutation(unsafe_remoteUserContextProxySourceDeviceUUIDs);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          mdcsChannel = [(_CDInMemoryUserContext *)self unsafe_remoteDevicesForRemoteUserContextProxySourceDeviceUUID:v9];
          if ([mdcsChannel count])
          {
            [v3 addObjectsFromArray:mdcsChannel];
          }
        }

        else
        {
          mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v18 = v9;
            _os_log_error_impl(&dword_1A9611000, mdcsChannel, OS_LOG_TYPE_ERROR, "Invalid object in remote user context proxy source device array: %@", buf, 0xCu);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [unsafe_remoteUserContextProxySourceDeviceUUIDs countByEnumeratingWithState:&v13 objects:v19 count:16];
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
  unsafe_remoteUserContextProxySourceDeviceUUIDs = [(_CDInMemoryUserContext *)self unsafe_remoteUserContextProxySourceDeviceUUIDs];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [unsafe_remoteUserContextProxySourceDeviceUUIDs countByEnumeratingWithState:&v13 objects:v19 count:16];
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
          objc_enumerationMutation(unsafe_remoteUserContextProxySourceDeviceUUIDs);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          mdcsChannel = [(_CDInMemoryUserContext *)self unsafe_remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:v9];
          if ([mdcsChannel count])
          {
            [v3 unionSet:mdcsChannel];
          }
        }

        else
        {
          mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v18 = v9;
            _os_log_error_impl(&dword_1A9611000, mdcsChannel, OS_LOG_TYPE_ERROR, "Invalid object in remote user context proxy source device array: %@", buf, 0xCu);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [unsafe_remoteUserContextProxySourceDeviceUUIDs countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)unsafe_remoteDevicesForRemoteUserContextProxySourceDeviceUUID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v17 = dCopy;
  v6 = [(_CDInMemoryUserContext *)self unsafe_remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:dCopy];
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
        device = [v12 device];
        if (device)
        {
          [v5 addObject:device];
        }

        else
        {
          mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v23 = v11;
            _os_log_error_impl(&dword_1A9611000, mdcsChannel, OS_LOG_TYPE_ERROR, "Missing device for device %{public}@", buf, 0xCu);
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

- (id)unsafe_remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:(id)d
{
  contexts = self->_contexts;
  localDeviceID = self->_localDeviceID;
  dCopy = d;
  v6 = [(NSMutableDictionary *)contexts objectForKeyedSubscript:localDeviceID];
  v7 = [_CDContextQueries keyPathForMDCSDeviceIDsWithProxySourceDeviceUUID:dCopy];

  v8 = [v6 objectForKeyedSubscript:v7];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v6 setObject:0 forKeyedSubscript:v7];
      mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
      if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_ERROR))
      {
        [_CDInMemoryUserContext unsafe_remoteDeviceIDsForRemoteUserContextProxySourceDeviceUUID:];
      }
    }
  }

  return v8;
}

- (id)unsafe_remoteDevicesByDeviceIDForRemoteUserContextProxySourceDeviceUUID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v6 = [(_CDInMemoryUserContext *)self unsafe_remoteDevicesForRemoteUserContextProxySourceDeviceUUID:dCopy];
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
        deviceID = [v11 deviceID];
        [v5 setObject:v11 forKeyedSubscript:deviceID];
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
      mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
      if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_ERROR))
      {
        [_CDInMemoryUserContext unsafe_remoteUserContextProxySourceDeviceUUIDs];
      }

      v4 = 0;
    }
  }

  return v4;
}

- (void)activateDevices:(id)devices remoteUserContextProxySourceDeviceUUID:(id)d
{
  v18[1] = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  dCopy = d;
  v8 = +[_CDContextQueries keyPathForMDCSProxies];
  v18[0] = dCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [(_CDInMemoryUserContext *)self addObjects:v9 toArrayAtKeyPath:v8];

  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81___CDInMemoryUserContext_activateDevices_remoteUserContextProxySourceDeviceUUID___block_invoke;
  block[3] = &unk_1E7886228;
  v15 = devicesCopy;
  selfCopy = self;
  v17 = dCopy;
  v11 = dCopy;
  v12 = devicesCopy;
  dispatch_sync(syncQueue, block);

  v13 = *MEMORY[0x1E69E9840];
}

- (id)namedDeviceIDsFromPredicate:(id)predicate
{
  v21 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:5];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  keyPaths = [predicateCopy keyPaths];
  v7 = [keyPaths countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(keyPaths);
        }

        deviceID = [*(*(&v16 + 1) + 8 * i) deviceID];
        v12 = deviceID;
        if (deviceID && ([deviceID isEqualToString:self->_localDeviceID] & 1) == 0)
        {
          [v5 addObject:v12];
        }

        else
        {

          v5 = 0;
        }
      }

      v8 = [keyPaths countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count]< 2)
  {
    if ([v5 count])
    {
      goto LABEL_18;
    }

    mdcsChannel = v5;
    v5 = 0;
  }

  else
  {
    mdcsChannel = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(mdcsChannel, OS_LOG_TYPE_ERROR))
    {
      [(_CDInMemoryUserContext *)predicateCopy namedDeviceIDsFromPredicate:mdcsChannel];
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)registerCallback:(id)callback
{
  v35 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  predicate = [callbackCopy predicate];
  keyPaths = [predicate keyPaths];

  v7 = [keyPaths countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    LOBYTE(isUserCentric) = 0;
    v10 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(keyPaths);
        }

        if (isUserCentric)
        {
          isUserCentric = 1;
        }

        else
        {
          isUserCentric = [*(*(&v30 + 1) + 8 * i) isUserCentric];
        }
      }

      v8 = [keyPaths countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);

    if (isUserCentric)
    {
      [(_CDInMemoryContext *)self->_userContext registerCallback:callbackCopy];
      goto LABEL_23;
    }
  }

  else
  {
  }

  deviceSet = [callbackCopy deviceSet];
  if (deviceSet != 1)
  {
    if (deviceSet)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (![callbackCopy isMultiDeviceRegistration])
  {
LABEL_20:
    v17 = [(NSMutableDictionary *)self->_contexts objectForKeyedSubscript:self->_localDeviceID];
    [v17 registerCallback:callbackCopy];

    goto LABEL_23;
  }

  predicate2 = [callbackCopy predicate];
  v14 = [(_CDInMemoryUserContext *)self namedDeviceIDsFromPredicate:predicate2];

  allDevices = [(_CDInMemoryUserContext *)self allDevices];
  if ([v14 count])
  {
    allDeviceIDs = v14;
  }

  else
  {
    allDeviceIDs = [(_CDInMemoryUserContext *)self allDeviceIDs];
  }

  v18 = allDeviceIDs;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___CDInMemoryUserContext_registerCallback___block_invoke;
  block[3] = &unk_1E78866B8;
  v25 = allDeviceIDs;
  v26 = v14;
  v27 = callbackCopy;
  selfCopy = self;
  v29 = allDevices;
  v20 = allDevices;
  v21 = v14;
  v22 = v18;
  dispatch_sync(syncQueue, block);

LABEL_23:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)deregisterCallback:(id)callback
{
  callbackCopy = callback;
  deviceSet = [callbackCopy deviceSet];
  if (deviceSet != 1)
  {
    if (deviceSet)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (![callbackCopy isMultiDeviceRegistration])
  {
LABEL_7:
    v10 = [(NSMutableDictionary *)self->_contexts objectForKeyedSubscript:self->_localDeviceID];
    [v10 deregisterCallback:callbackCopy];

    goto LABEL_10;
  }

  predicate = [callbackCopy predicate];
  v7 = [(_CDInMemoryUserContext *)self namedDeviceIDsFromPredicate:predicate];

  allDevices = [(_CDInMemoryUserContext *)self allDevices];
  if ([v7 count])
  {
    allDeviceIDs = v7;
  }

  else
  {
    allDeviceIDs = [(_CDInMemoryUserContext *)self allDeviceIDs];
  }

  v11 = allDeviceIDs;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45___CDInMemoryUserContext_deregisterCallback___block_invoke;
  block[3] = &unk_1E78866B8;
  v17 = allDeviceIDs;
  v18 = v7;
  v19 = callbackCopy;
  selfCopy = self;
  v21 = allDevices;
  v13 = allDevices;
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
            allRegistrations = [v10 allRegistrations];
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v13 = allRegistrations;
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
  unsafe_multiDeviceRegistrationsByDeviceID = [(_CDInMemoryUserContext *)self unsafe_multiDeviceRegistrationsByDeviceID];
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{2 * objc_msgSend(unsafe_multiDeviceRegistrationsByDeviceID, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = unsafe_multiDeviceRegistrationsByDeviceID;
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

  allObjects = [v3 allObjects];

  v11 = *MEMORY[0x1E69E9840];

  return allObjects;
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
            allRegistrations = [v10 allRegistrations];
            if ([allRegistrations count])
            {
              [v3 setObject:allRegistrations forKeyedSubscript:v9];
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

- (BOOL)evaluatePredicate:(id)predicate
{
  v21 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  keyPaths = [predicateCopy keyPaths];
  v7 = [keyPaths countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(keyPaths);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(_CDInMemoryUserContext *)self propertiesForContextualKeyPath:v10];
        [dictionary setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [keyPaths countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  predicate = [predicateCopy predicate];
  v13 = [predicate evaluateWithObject:dictionary substitutionVariables:&unk_1F1D19200];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  v5 = [(_CDInMemoryUserContext *)self contextForKeyPath:subscriptCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForContextualKeyPath:subscriptCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  syncQueue = self->_syncQueue;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __37___CDInMemoryUserContext_description__block_invoke;
  v11 = &unk_1E7886250;
  v12 = string;
  selfCopy = self;
  v5 = string;
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