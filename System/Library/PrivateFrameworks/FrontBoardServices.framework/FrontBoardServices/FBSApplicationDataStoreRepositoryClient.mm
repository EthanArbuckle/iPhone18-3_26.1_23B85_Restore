@interface FBSApplicationDataStoreRepositoryClient
- (BOOL)_isChangeInFlightForPrefetchedKey:(id)key application:(id)application;
- (BOOL)prefetchedObjectIfAvailableForKey:(id)key application:(id)application outObject:(id *)object;
- (FBSApplicationDataStoreRepositoryClient)init;
- (id)_allPrefetchedChangesInFlightForApplication:(id)application;
- (id)_observers;
- (id)availableDataStores;
- (id)migrateIdentifier:(id)identifier toIdentifier:(id)toIdentifier;
- (id)objectForKey:(id)key forApplication:(id)application;
- (void)_calloutQueue_handleStoreInvalidated:(id)invalidated;
- (void)_calloutQueue_handleValueChanged:(id)changed;
- (void)_sendMessageType:(int)type withMessage:(id)message withReplyHandler:(id)handler waitForReply:(BOOL)reply;
- (void)_sendPrefetchedKeys:(id)keys withCompletion:(id)completion;
- (void)_setChangeInFlight:(BOOL)flight forPrefetchedKey:(id)key application:(id)application;
- (void)_setPrefetchedObjectIfNecessary:(id)necessary forKey:(id)key application:(id)application;
- (void)addObserver:(id)observer;
- (void)addPrefetchedKeys:(id)keys;
- (void)fireCompletion:(id)completion error:(id)error;
- (void)handleMessage:(id)message withType:(int64_t)type;
- (void)invalidate;
- (void)removeAllObjectsForApplication:(id)application withCompletion:(id)completion;
- (void)removeObjectForKey:(id)key forApplication:(id)application withCompletion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)removePrefetchedKeys:(id)keys withCompletion:(id)completion;
- (void)setObject:(id)object forKey:(id)key forApplication:(id)application withCompletion:(id)completion;
- (void)synchronizeWithCompletion:(id)completion;
@end

@implementation FBSApplicationDataStoreRepositoryClient

- (FBSApplicationDataStoreRepositoryClient)init
{
  v13.receiver = self;
  v13.super_class = FBSApplicationDataStoreRepositoryClient;
  v2 = [(FBSServiceFacilityClient *)&v13 initWithConfigurator:&__block_literal_global_3];
  v3 = v2;
  if (v2)
  {
    v2->_prefetchedDataLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E696AB50]);
    prefetchedKeys = v3->_prefetchedKeys;
    v3->_prefetchedKeys = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    prefetchedKeyValues = v3->_prefetchedKeyValues;
    v3->_prefetchedKeyValues = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingChangesToPrefetchedKeys = v3->_pendingChangesToPrefetchedKeys;
    v3->_pendingChangesToPrefetchedKeys = v8;

    v3->_observersLock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = weakObjectsHashTable;
  }

  return v3;
}

void __47__FBSApplicationDataStoreRepositoryClient_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[FBSServiceFacilityClient defaultShellEndpoint];
  [v2 setEndpoint:v3];

  [v2 setIdentifier:@"com.apple.frontboardservices.applicationdatastore"];
  v4 = [off_1E76BCA50 userInitiated];
  [v2 setServiceQuality:v4];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = FBSApplicationDataStoreRepositoryClient;
  [(FBSServiceFacilityClient *)&v2 invalidate];
}

- (void)addPrefetchedKeys:(id)keys
{
  keysCopy = keys;
  os_unfair_lock_assert_not_owner(&self->_prefetchedDataLock);
  os_unfair_lock_lock(&self->_prefetchedDataLock);
  [(NSCountedSet *)self->_prefetchedKeys addObjectsFromArray:keysCopy];

  allObjects = [(NSCountedSet *)self->_prefetchedKeys allObjects];
  os_unfair_lock_unlock(&self->_prefetchedDataLock);
  [(FBSApplicationDataStoreRepositoryClient *)self _sendPrefetchedKeys:allObjects withCompletion:0];
}

- (void)removePrefetchedKeys:(id)keys withCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  completionCopy = completion;
  os_unfair_lock_assert_not_owner(&self->_prefetchedDataLock);
  os_unfair_lock_lock(&self->_prefetchedDataLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = keysCopy;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(NSCountedSet *)self->_prefetchedKeys removeObject:*(*(&v14 + 1) + 8 * v12++), v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  allObjects = [(NSCountedSet *)self->_prefetchedKeys allObjects];
  os_unfair_lock_unlock(&self->_prefetchedDataLock);
  [(FBSApplicationDataStoreRepositoryClient *)self _sendPrefetchedKeys:allObjects withCompletion:completionCopy];
}

- (void)_sendPrefetchedKeys:(id)keys withCompletion:(id)completion
{
  keysCopy = keys;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__FBSApplicationDataStoreRepositoryClient__sendPrefetchedKeys_withCompletion___block_invoke;
  v13[3] = &unk_1E76BD578;
  v14 = keysCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__FBSApplicationDataStoreRepositoryClient__sendPrefetchedKeys_withCompletion___block_invoke_2;
  v11[3] = &unk_1E76BD5C8;
  v11[4] = self;
  v12 = completionCopy;
  v8 = completionCopy == 0;
  v9 = completionCopy;
  v10 = keysCopy;
  [(FBSApplicationDataStoreRepositoryClient *)self _sendMessageType:7 withMessage:v13 withReplyHandler:v11 waitForReply:v8];
}

void __78__FBSApplicationDataStoreRepositoryClient__sendPrefetchedKeys_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(*(a1 + 32) + 96);
      v7 = [v5 mutableCopy];
      [v6 setObject:v7 forKey:v8];
    }
  }
}

- (void)synchronizeWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__FBSApplicationDataStoreRepositoryClient_synchronizeWithCompletion___block_invoke_2;
  v7[3] = &unk_1E76BD5C8;
  v7[4] = self;
  v8 = completionCopy;
  v5 = completionCopy == 0;
  v6 = completionCopy;
  [(FBSApplicationDataStoreRepositoryClient *)self _sendMessageType:0 withMessage:&__block_literal_global_12 withReplyHandler:v7 waitForReply:v5];
}

- (id)availableDataStores
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__FBSApplicationDataStoreRepositoryClient_availableDataStores__block_invoke_2;
  v4[3] = &unk_1E76BD610;
  v4[4] = &v5;
  [(FBSApplicationDataStoreRepositoryClient *)self _sendMessageType:1 withMessage:&__block_literal_global_14 withReplyHandler:v4 waitForReply:1];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __62__FBSApplicationDataStoreRepositoryClient_availableDataStores__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    BSDeserializeCFValueFromXPCDictionaryWithKey();
  }
}

- (id)migrateIdentifier:(id)identifier toIdentifier:(id)toIdentifier
{
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  v9 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v9)
  {
    [FBSApplicationDataStoreRepositoryClient migrateIdentifier:a2 toIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSApplicationDataStoreRepositoryClient migrateIdentifier:a2 toIdentifier:?];
  }

  v10 = toIdentifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v10)
  {
    [FBSApplicationDataStoreRepositoryClient migrateIdentifier:a2 toIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSApplicationDataStoreRepositoryClient migrateIdentifier:a2 toIdentifier:?];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__FBSApplicationDataStoreRepositoryClient_migrateIdentifier_toIdentifier___block_invoke;
  v16[3] = &unk_1E76BD638;
  v11 = v9;
  v17 = v11;
  v12 = v10;
  v18 = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__FBSApplicationDataStoreRepositoryClient_migrateIdentifier_toIdentifier___block_invoke_2;
  v15[3] = &unk_1E76BD610;
  v15[4] = &v19;
  [(FBSApplicationDataStoreRepositoryClient *)self _sendMessageType:2 withMessage:v16 withReplyHandler:v15 waitForReply:1];
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __74__FBSApplicationDataStoreRepositoryClient_migrateIdentifier_toIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = v4;
  xdict = a2;
  xpc_dictionary_set_string(xdict, "appID", [v4 UTF8String]);
  xpc_dictionary_set_string(xdict, "appID2", [*(a1 + 40) UTF8String]);
}

void __74__FBSApplicationDataStoreRepositoryClient_migrateIdentifier_toIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    objc_opt_class();
    BSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4101 userInfo:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)objectForKey:(id)key forApplication:(id)application
{
  keyCopy = key;
  applicationCopy = application;
  v8 = applicationCopy;
  v9 = 0;
  if (keyCopy && applicationCopy)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__1;
    v24 = __Block_byref_object_dispose__1;
    v25 = 0;
    obj = 0;
    v10 = [(FBSApplicationDataStoreRepositoryClient *)self prefetchedObjectIfAvailableForKey:keyCopy application:applicationCopy outObject:&obj];
    objc_storeStrong(&v25, obj);
    if (!v10)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __71__FBSApplicationDataStoreRepositoryClient_objectForKey_forApplication___block_invoke;
      v16[3] = &unk_1E76BD638;
      v17 = keyCopy;
      v18 = v8;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __71__FBSApplicationDataStoreRepositoryClient_objectForKey_forApplication___block_invoke_2;
      v12[3] = &unk_1E76BD660;
      v15 = &v20;
      v12[4] = self;
      v13 = v17;
      v14 = v18;
      [(FBSApplicationDataStoreRepositoryClient *)self _sendMessageType:3 withMessage:v16 withReplyHandler:v12 waitForReply:1];
    }

    v9 = v21[5];
    _Block_object_dispose(&v20, 8);
  }

  return v9;
}

void __71__FBSApplicationDataStoreRepositoryClient_objectForKey_forApplication___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = v4;
  xdict = a2;
  xpc_dictionary_set_string(xdict, "key", [v4 UTF8String]);
  xpc_dictionary_set_string(xdict, "appID", [*(a1 + 40) UTF8String]);
}

uint64_t __71__FBSApplicationDataStoreRepositoryClient_objectForKey_forApplication___block_invoke_2(void *a1, uint64_t a2)
{
  if (a2)
  {
    BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
  }

  v3 = a1[6];
  v4 = *(*(a1[7] + 8) + 40);
  v5 = a1[4];
  v6 = a1[5];

  return [v5 _setPrefetchedObjectIfNecessary:v4 forKey:v6 application:v3];
}

- (void)setObject:(id)object forKey:(id)key forApplication:(id)application withCompletion:(id)completion
{
  objectCopy = object;
  keyCopy = key;
  applicationCopy = application;
  completionCopy = completion;
  if (keyCopy && applicationCopy)
  {
    if (objectCopy)
    {
      [(FBSApplicationDataStoreRepositoryClient *)self _setPrefetchedObjectIfNecessary:objectCopy forKey:keyCopy application:applicationCopy];
      [(FBSApplicationDataStoreRepositoryClient *)self _setChangeInFlight:1 forPrefetchedKey:keyCopy application:applicationCopy];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __90__FBSApplicationDataStoreRepositoryClient_setObject_forKey_forApplication_withCompletion___block_invoke;
      v18[3] = &unk_1E76BD688;
      v19 = keyCopy;
      v20 = objectCopy;
      v21 = applicationCopy;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __90__FBSApplicationDataStoreRepositoryClient_setObject_forKey_forApplication_withCompletion___block_invoke_2;
      v14[3] = &unk_1E76BD6B0;
      v14[4] = self;
      v15 = v19;
      v16 = v21;
      v17 = completionCopy;
      [(FBSApplicationDataStoreRepositoryClient *)self _sendMessageType:4 withMessage:v18 withReplyHandler:v14 waitForReply:0];
    }

    else
    {
      [(FBSApplicationDataStoreRepositoryClient *)self removeObjectForKey:keyCopy forApplication:applicationCopy withCompletion:completionCopy];
    }
  }

  else
  {
    [(FBSApplicationDataStoreRepositoryClient *)self fireCompletion:completionCopy error:0];
  }
}

void __90__FBSApplicationDataStoreRepositoryClient_setObject_forKey_forApplication_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3;
  xpc_dictionary_set_string(a2, "key", [v3 UTF8String]);
  BSSerializeCFValueToXPCDictionaryWithKey();
}

uint64_t __90__FBSApplicationDataStoreRepositoryClient_setObject_forKey_forApplication_withCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setChangeInFlight:0 forPrefetchedKey:*(a1 + 40) application:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);

  return [v2 fireCompletion:v3 error:0];
}

- (void)removeObjectForKey:(id)key forApplication:(id)application withCompletion:(id)completion
{
  keyCopy = key;
  applicationCopy = application;
  completionCopy = completion;
  if (keyCopy && applicationCopy)
  {
    [(FBSApplicationDataStoreRepositoryClient *)self _setPrefetchedObjectIfNecessary:0 forKey:keyCopy application:applicationCopy];
    [(FBSApplicationDataStoreRepositoryClient *)self _setChangeInFlight:1 forPrefetchedKey:keyCopy application:applicationCopy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __92__FBSApplicationDataStoreRepositoryClient_removeObjectForKey_forApplication_withCompletion___block_invoke;
    v15[3] = &unk_1E76BD638;
    v16 = keyCopy;
    v17 = applicationCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __92__FBSApplicationDataStoreRepositoryClient_removeObjectForKey_forApplication_withCompletion___block_invoke_2;
    v11[3] = &unk_1E76BD6B0;
    v11[4] = self;
    v12 = v16;
    v13 = v17;
    v14 = completionCopy;
    [(FBSApplicationDataStoreRepositoryClient *)self _sendMessageType:5 withMessage:v15 withReplyHandler:v11 waitForReply:0];
  }

  else
  {
    [(FBSApplicationDataStoreRepositoryClient *)self fireCompletion:completionCopy error:0];
  }
}

void __92__FBSApplicationDataStoreRepositoryClient_removeObjectForKey_forApplication_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = v4;
  xdict = a2;
  xpc_dictionary_set_string(xdict, "key", [v4 UTF8String]);
  xpc_dictionary_set_string(xdict, "appID", [*(a1 + 40) UTF8String]);
}

uint64_t __92__FBSApplicationDataStoreRepositoryClient_removeObjectForKey_forApplication_withCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setChangeInFlight:0 forPrefetchedKey:*(a1 + 40) application:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);

  return [v2 fireCompletion:v3 error:0];
}

- (void)removeAllObjectsForApplication:(id)application withCompletion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  if (applicationCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __89__FBSApplicationDataStoreRepositoryClient_removeAllObjectsForApplication_withCompletion___block_invoke;
    v10[3] = &unk_1E76BD578;
    v11 = applicationCopy;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __89__FBSApplicationDataStoreRepositoryClient_removeAllObjectsForApplication_withCompletion___block_invoke_2;
    v8[3] = &unk_1E76BD5C8;
    v8[4] = self;
    v9 = completionCopy;
    [(FBSApplicationDataStoreRepositoryClient *)self _sendMessageType:6 withMessage:v10 withReplyHandler:v8 waitForReply:0];
  }

  else
  {
    [(FBSApplicationDataStoreRepositoryClient *)self fireCompletion:completionCopy error:0];
  }
}

void __89__FBSApplicationDataStoreRepositoryClient_removeAllObjectsForApplication_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3;
  xdict = a2;
  xpc_dictionary_set_string(xdict, "appID", [v3 UTF8String]);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_assert_not_owner(&self->_observersLock);
  os_unfair_lock_lock(&self->_observersLock);
  if (![(NSHashTable *)self->_observers count])
  {
    [(FBSApplicationDataStoreRepositoryClient *)self _sendMessageType:8 withMessage:&__block_literal_global_30 withReplyHandler:0 waitForReply:0];
  }

  [(NSHashTable *)self->_observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_assert_not_owner(&self->_observersLock);
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  if (![(NSHashTable *)self->_observers count])
  {
    [(FBSApplicationDataStoreRepositoryClient *)self _sendMessageType:8 withMessage:&__block_literal_global_32 withReplyHandler:0 waitForReply:0];
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)handleMessage:(id)message withType:(int64_t)type
{
  messageCopy = message;
  v7 = messageCopy;
  if (type == 10)
  {
    v8 = messageCopy;
    messageCopy = [(FBSApplicationDataStoreRepositoryClient *)self _calloutQueue_handleStoreInvalidated:messageCopy];
  }

  else
  {
    if (type != 9)
    {
      goto LABEL_6;
    }

    v8 = messageCopy;
    messageCopy = [(FBSApplicationDataStoreRepositoryClient *)self _calloutQueue_handleValueChanged:messageCopy];
  }

  v7 = v8;
LABEL_6:

  MEMORY[0x1EEE66BB8](messageCopy, v7);
}

- (void)_calloutQueue_handleValueChanged:(id)changed
{
  v4 = *MEMORY[0x1E69E9840];
  payload = [changed payload];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(payload, "key")}];
  objc_claimAutoreleasedReturnValue();
  BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
}

- (void)_setChangeInFlight:(BOOL)flight forPrefetchedKey:(id)key application:(id)application
{
  flightCopy = flight;
  keyCopy = key;
  applicationCopy = application;
  os_unfair_lock_assert_not_owner(&self->_prefetchedDataLock);
  os_unfair_lock_lock(&self->_prefetchedDataLock);
  v9 = [(NSMutableDictionary *)self->_pendingChangesToPrefetchedKeys objectForKey:applicationCopy];
  v10 = v9;
  if (flightCopy && !v9)
  {
    v10 = [MEMORY[0x1E696AB50] set];
    [(NSMutableDictionary *)self->_pendingChangesToPrefetchedKeys setObject:v10 forKey:applicationCopy];
  }

  if (flightCopy)
  {
    [v10 addObject:keyCopy];
  }

  else
  {
    [v10 removeObject:keyCopy];
    if (v10 && ![v10 count])
    {
      [(NSMutableDictionary *)self->_pendingChangesToPrefetchedKeys removeObjectForKey:applicationCopy];
    }
  }

  os_unfair_lock_unlock(&self->_prefetchedDataLock);
}

- (BOOL)_isChangeInFlightForPrefetchedKey:(id)key application:(id)application
{
  applicationCopy = application;
  keyCopy = key;
  os_unfair_lock_assert_not_owner(&self->_prefetchedDataLock);
  os_unfair_lock_lock(&self->_prefetchedDataLock);
  v8 = [(NSMutableDictionary *)self->_pendingChangesToPrefetchedKeys objectForKey:applicationCopy];

  LOBYTE(applicationCopy) = [v8 containsObject:keyCopy];
  os_unfair_lock_unlock(&self->_prefetchedDataLock);
  return applicationCopy;
}

- (id)_allPrefetchedChangesInFlightForApplication:(id)application
{
  applicationCopy = application;
  os_unfair_lock_assert_not_owner(&self->_prefetchedDataLock);
  os_unfair_lock_lock(&self->_prefetchedDataLock);
  v5 = [(NSMutableDictionary *)self->_pendingChangesToPrefetchedKeys objectForKey:applicationCopy];

  os_unfair_lock_unlock(&self->_prefetchedDataLock);

  return v5;
}

- (void)_calloutQueue_handleStoreInvalidated:(id)invalidated
{
  v25 = *MEMORY[0x1E69E9840];
  payload = [invalidated payload];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(payload, "appID")}];
  os_unfair_lock_assert_not_owner(&self->_prefetchedDataLock);
  os_unfair_lock_lock(&self->_prefetchedDataLock);
  v5 = [(NSMutableDictionary *)self->_prefetchedKeyValues objectForKey:v4];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v7 = [(NSMutableDictionary *)self->_pendingChangesToPrefetchedKeys objectForKey:v4];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __80__FBSApplicationDataStoreRepositoryClient__calloutQueue_handleStoreInvalidated___block_invoke;
  v21[3] = &unk_1E76BD6D8;
  v15 = v5;
  v22 = v15;
  v8 = dictionary;
  v23 = v8;
  [v7 enumerateObjectsUsingBlock:v21];
  [(NSMutableDictionary *)self->_prefetchedKeyValues setObject:v8 forKey:v4];
  os_unfair_lock_unlock(&self->_prefetchedDataLock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  _observers = [(FBSApplicationDataStoreRepositoryClient *)self _observers];
  v10 = [_observers countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(_observers);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v14 applicationDataStoreRepositoryClient:self storeInvalidatedForApplication:v4];
        }
      }

      v11 = [_observers countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v11);
  }
}

void __80__FBSApplicationDataStoreRepositoryClient__calloutQueue_handleStoreInvalidated___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKey:?];
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKey:v4];
  }
}

- (void)_setPrefetchedObjectIfNecessary:(id)necessary forKey:(id)key application:(id)application
{
  necessaryCopy = necessary;
  keyCopy = key;
  applicationCopy = application;
  os_unfair_lock_assert_not_owner(&self->_prefetchedDataLock);
  os_unfair_lock_lock(&self->_prefetchedDataLock);
  if ([(NSCountedSet *)self->_prefetchedKeys countForObject:keyCopy])
  {
    dictionary = [(NSMutableDictionary *)self->_prefetchedKeyValues objectForKey:applicationCopy];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_prefetchedKeyValues setObject:dictionary forKey:applicationCopy];
    }

    if (necessaryCopy)
    {
      [dictionary setObject:necessaryCopy forKey:keyCopy];
    }

    else
    {
      [dictionary removeObjectForKey:keyCopy];
    }
  }

  os_unfair_lock_unlock(&self->_prefetchedDataLock);
}

- (BOOL)prefetchedObjectIfAvailableForKey:(id)key application:(id)application outObject:(id *)object
{
  keyCopy = key;
  applicationCopy = application;
  os_unfair_lock_assert_not_owner(&self->_prefetchedDataLock);
  os_unfair_lock_lock(&self->_prefetchedDataLock);
  v10 = [(NSMutableDictionary *)self->_prefetchedKeyValues objectForKey:applicationCopy];

  if (v10)
  {
    v11 = [v10 objectForKey:keyCopy];
    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = [(NSCountedSet *)self->_prefetchedKeys countForObject:keyCopy]!= 0 || v12;
  null = [MEMORY[0x1E695DFB0] null];
  if ([v11 isEqual:null])
  {
    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  v16 = v15;

  os_unfair_lock_unlock(&self->_prefetchedDataLock);
  if (object)
  {
    if (v13)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    *object = v17;
  }

  return v13;
}

- (id)_observers
{
  os_unfair_lock_assert_not_owner(&self->_observersLock);
  os_unfair_lock_lock(&self->_observersLock);
  v3 = [(NSHashTable *)self->_observers copy];
  os_unfair_lock_unlock(&self->_observersLock);

  return v3;
}

- (void)_sendMessageType:(int)type withMessage:(id)message withReplyHandler:(id)handler waitForReply:(BOOL)reply
{
  replyCopy = reply;
  messageCopy = message;
  handlerCopy = handler;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __102__FBSApplicationDataStoreRepositoryClient__sendMessageType_withMessage_withReplyHandler_waitForReply___block_invoke;
  v17[3] = &unk_1E76BD700;
  v18 = messageCopy;
  v12 = messageCopy;
  v13 = [FBSXPCMessage messageWithPacker:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __102__FBSApplicationDataStoreRepositoryClient__sendMessageType_withMessage_withReplyHandler_waitForReply___block_invoke_2;
  v15[3] = &unk_1E76BD728;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(FBSServiceFacilityClient *)self sendMessage:v13 withType:type replyHandler:v15 waitForReply:replyCopy timeout:0.0];
}

void __102__FBSApplicationDataStoreRepositoryClient__sendMessageType_withMessage_withReplyHandler_waitForReply___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 payload];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)fireCompletion:(id)completion error:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  if (completionCopy)
  {
    calloutQueue = [(FBSServiceFacilityClient *)self calloutQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__FBSApplicationDataStoreRepositoryClient_fireCompletion_error___block_invoke;
    v9[3] = &unk_1E76BD750;
    v11 = completionCopy;
    v10 = errorCopy;
    dispatch_async(calloutQueue, v9);
  }
}

- (void)migrateIdentifier:(char *)a1 toIdentifier:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)migrateIdentifier:(char *)a1 toIdentifier:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)migrateIdentifier:(char *)a1 toIdentifier:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)migrateIdentifier:(char *)a1 toIdentifier:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end