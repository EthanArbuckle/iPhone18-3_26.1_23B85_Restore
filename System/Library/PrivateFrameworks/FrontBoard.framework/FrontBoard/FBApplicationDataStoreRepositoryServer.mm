@interface FBApplicationDataStoreRepositoryServer
+ (id)sharedInstance;
- (id)_init;
- (void)_handleGetAvailableDataStores:(id)a3;
- (void)_handleGetObjectForKey:(id)a3;
- (void)_handleMigrateIdentifier:(id)a3;
- (void)_handleRemoveAllObjects:(id)a3;
- (void)_handleRemoveObjectForKey:(id)a3 context:(id)a4;
- (void)_handleSetChangesInterest:(id)a3 context:(id)a4;
- (void)_handleSetObjectForKey:(id)a3 context:(id)a4;
- (void)_handleSetPrefetchedKeys:(id)a3 context:(id)a4;
- (void)_handleSynchronize:(id)a3;
- (void)applicationDataStoreRepositoryClientContext:(id)a3 repositoryInvalidatedForAppID:(id)a4;
- (void)applicationDataStoreRepositoryClientContext:(id)a3 valueChangedForObject:(id)a4 key:(id)a5 appID:(id)a6;
- (void)noteClientDidConnect:(id)a3 withMessage:(id)a4;
- (void)noteClientDidDisconnect:(id)a3;
- (void)noteDidReceiveMessage:(id)a3 withType:(int64_t)a4 fromClient:(id)a5;
@end

@implementation FBApplicationDataStoreRepositoryServer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[FBApplicationDataStoreRepositoryServer sharedInstance];
  }

  v3 = sharedInstance___shared;

  return v3;
}

void __56__FBApplicationDataStoreRepositoryServer_sharedInstance__block_invoke()
{
  if ([MEMORY[0x1E699FA78] isServerProcess])
  {
    v0 = [[FBApplicationDataStoreRepositoryServer alloc] _init];
    v1 = sharedInstance___shared;
    sharedInstance___shared = v0;
  }
}

- (id)_init
{
  v3 = [@"FBApplicationDataStoreRepositoryServer" UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create(v3, v4);

  v6 = MEMORY[0x1E698F4D0];
  v7 = [MEMORY[0x1E698F500] userInitiated];
  v8 = [v6 queueWithName:@"FBApplicationDataStoreRepositoryServer" serviceQuality:v7 targetQueue:v5];

  v9 = *MEMORY[0x1E699F808];
  v17.receiver = self;
  v17.super_class = FBApplicationDataStoreRepositoryServer;
  v10 = [(FBSServiceFacility *)&v17 initWithIdentifier:v9 queue:v8];
  if (v10)
  {
    v11 = +[FBApplicationDataStoreRepositoryManager sharedInstance];
    v12 = [v11 dataStore];
    dataStore = v10->_dataStore;
    v10->_dataStore = v12;

    v14 = +[FBServiceClientAuthenticator sharedSystemClientAuthenticator];
    connectionAuthenticator = v10->_connectionAuthenticator;
    v10->_connectionAuthenticator = v14;
  }

  return v10;
}

- (void)noteClientDidConnect:(id)a3 withMessage:(id)a4
{
  v5 = a3;
  v6 = [[FBApplicationDataStoreRepositoryServerClientContext alloc] initWithDataStore:self->_dataStore];
  [(FBApplicationDataStoreRepositoryServerClientContext *)v6 setDelegate:self];
  [v5 setContext:v6];
}

- (void)noteClientDidDisconnect:(id)a3
{
  v3 = [a3 context];
  [v3 setDelegate:0];
}

- (void)noteDidReceiveMessage:(id)a3 withType:(int64_t)a4 fromClient:(id)a5
{
  v9 = a3;
  v8 = [a5 context];
  if (a4 <= 3)
  {
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        [(FBApplicationDataStoreRepositoryServer *)self _handleMigrateIdentifier:v9];
      }

      else
      {
        [(FBApplicationDataStoreRepositoryServer *)self _handleGetObjectForKey:v9];
      }
    }

    else if (a4)
    {
      if (a4 == 1)
      {
        [(FBApplicationDataStoreRepositoryServer *)self _handleGetAvailableDataStores:v9];
      }
    }

    else
    {
      [(FBApplicationDataStoreRepositoryServer *)self _handleSynchronize:v9];
    }
  }

  else if (a4 <= 5)
  {
    if (a4 == 4)
    {
      [(FBApplicationDataStoreRepositoryServer *)self _handleSetObjectForKey:v9 context:v8];
    }

    else
    {
      [(FBApplicationDataStoreRepositoryServer *)self _handleRemoveObjectForKey:v9 context:v8];
    }
  }

  else
  {
    switch(a4)
    {
      case 6:
        [(FBApplicationDataStoreRepositoryServer *)self _handleRemoveAllObjects:v9];
        break;
      case 8:
        [(FBApplicationDataStoreRepositoryServer *)self _handleSetChangesInterest:v9 context:v8];
        break;
      case 7:
        [(FBApplicationDataStoreRepositoryServer *)self _handleSetPrefetchedKeys:v9 context:v8];
        break;
    }
  }
}

- (void)_handleSetPrefetchedKeys:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 payload];
  v9 = *MEMORY[0x1E699F850];
  v10 = BSDeserializeCFValueFromXPCDictionaryWithKey();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [MEMORY[0x1E695DFD8] setWithArray:v10];
  }

  else
  {
    v11 = 0;
  }

  [v6 setPrefetchedKeys:v11];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__FBApplicationDataStoreRepositoryServer__handleSetPrefetchedKeys_context___block_invoke;
  v13[3] = &unk_1E783BDF8;
  v13[4] = self;
  v14 = v11;
  v12 = v11;
  [v7 sendReplyMessageWithPacker:v13];
}

void __75__FBApplicationDataStoreRepositoryServer__handleSetPrefetchedKeys_context___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 56);
  v5 = [v3 allObjects];
  v6 = [v4 allObjectsForKeys:v5];

  if (v6)
  {
    v7 = *MEMORY[0x1E699F850];
    BSSerializeCFValueToXPCDictionaryWithKey();
  }
}

- (void)_handleSetChangesInterest:(id)a3 context:(id)a4
{
  v5 = a4;
  v8 = a3;
  v6 = [v8 payload];
  v7 = xpc_dictionary_get_BOOL(v6, *MEMORY[0x1E699F820]);

  [v5 setInterestedInAllChanges:v7];
  [v8 sendReplyMessageWithPacker:&__block_literal_global_12];
}

- (void)_handleSynchronize:(id)a3
{
  dataStore = self->_dataStore;
  v4 = a3;
  [(FBApplicationDataStoreRepository *)dataStore flushSynchronously];
  [v4 sendReplyMessageWithPacker:&__block_literal_global_14];
}

- (void)_handleGetAvailableDataStores:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__FBApplicationDataStoreRepositoryServer__handleGetAvailableDataStores___block_invoke;
  v3[3] = &unk_1E783B268;
  v3[4] = self;
  [a3 sendReplyMessageWithPacker:v3];
}

void __72__FBApplicationDataStoreRepositoryServer__handleGetAvailableDataStores___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 32) + 56) applicationIdentifiersWithState];
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DEC8] array];
  }

  v4 = *MEMORY[0x1E699F838];
  BSSerializeCFValueToXPCDictionaryWithKey();
}

- (void)_handleMigrateIdentifier:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 payload];
  v6 = *MEMORY[0x1E699F828];
  v7 = BSDeserializeStringFromXPCDictionaryWithKey();
  v8 = *MEMORY[0x1E699F830];
  v9 = BSDeserializeStringFromXPCDictionaryWithKey();
  v10 = v9;
  if (v7)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A588];
    v20[0] = @"Invalid parameters ";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = [v12 errorWithDomain:@"FBApplicationDataStore" code:1 userInfo:v13];
  }

  else
  {
    v14 = [(FBApplicationDataStoreRepository *)self->_dataStore migrateIdentifier:v7 toIdentifier:v9];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__FBApplicationDataStoreRepositoryServer__handleMigrateIdentifier___block_invoke;
  v17[3] = &unk_1E783B268;
  v18 = v14;
  v15 = v14;
  [v4 sendReplyMessageWithPacker:v17];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleGetObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v6 = *MEMORY[0x1E699F840];
  v7 = BSDeserializeStringFromXPCDictionaryWithKey();
  v8 = *MEMORY[0x1E699F828];
  v9 = BSDeserializeStringFromXPCDictionaryWithKey();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__FBApplicationDataStoreRepositoryServer__handleGetObjectForKey___block_invoke;
  v12[3] = &unk_1E783BE20;
  v13 = v7;
  v14 = v9;
  v15 = self;
  v10 = v9;
  v11 = v7;
  [v4 sendReplyMessageWithPacker:v12];
}

void __65__FBApplicationDataStoreRepositoryServer__handleGetObjectForKey___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (a1[4] && a1[5])
  {
    v6 = v3;
    v4 = [*(a1[6] + 56) objectForKey:? forApplication:?];
    if (v4)
    {
      v5 = *MEMORY[0x1E699F848];
      BSSerializeCFValueToXPCDictionaryWithKey();
    }

    v3 = v6;
  }
}

- (void)_handleSetObjectForKey:(id)a3 context:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__FBApplicationDataStoreRepositoryServer__handleSetObjectForKey_context___block_invoke;
  v7[3] = &unk_1E783BDF8;
  v8 = v5;
  v9 = self;
  v6 = v5;
  [v6 sendReplyMessageWithPacker:v7];
}

void __73__FBApplicationDataStoreRepositoryServer__handleSetObjectForKey_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) payload];
  v3 = *MEMORY[0x1E699F848];
  v9 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();

  if (v9)
  {
    v4 = [*(a1 + 32) payload];
    v5 = *MEMORY[0x1E699F840];
    v6 = BSDeserializeStringFromXPCDictionaryWithKey();
    v7 = *MEMORY[0x1E699F828];
    v8 = BSDeserializeStringFromXPCDictionaryWithKey();
    [*(*(a1 + 40) + 56) setObject:v9 forKey:v6 forApplication:v8];
  }
}

- (void)_handleRemoveObjectForKey:(id)a3 context:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__FBApplicationDataStoreRepositoryServer__handleRemoveObjectForKey_context___block_invoke;
  v7[3] = &unk_1E783BDF8;
  v8 = v5;
  v9 = self;
  v6 = v5;
  [v6 sendReplyMessageWithPacker:v7];
}

void __76__FBApplicationDataStoreRepositoryServer__handleRemoveObjectForKey_context___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) payload];
  v2 = *MEMORY[0x1E699F840];
  v3 = BSDeserializeStringFromXPCDictionaryWithKey();
  v4 = *MEMORY[0x1E699F828];
  v5 = BSDeserializeStringFromXPCDictionaryWithKey();
  [*(*(a1 + 40) + 56) removeObjectForKey:v3 forApplication:v5];
}

- (void)_handleRemoveAllObjects:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__FBApplicationDataStoreRepositoryServer__handleRemoveAllObjects___block_invoke;
  v6[3] = &unk_1E783BDF8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 sendReplyMessageWithPacker:v6];
}

void __66__FBApplicationDataStoreRepositoryServer__handleRemoveAllObjects___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) payload];
  v3 = *MEMORY[0x1E699F828];
  v4 = BSDeserializeStringFromXPCDictionaryWithKey();

  [*(*(a1 + 40) + 56) removeAllObjectsForApplication:v4];
}

- (void)applicationDataStoreRepositoryClientContext:(id)a3 valueChangedForObject:(id)a4 key:(id)a5 appID:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a3 clientHandle];
  if (v13)
  {
    v14 = MEMORY[0x1E699FCF8];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __118__FBApplicationDataStoreRepositoryServer_applicationDataStoreRepositoryClientContext_valueChangedForObject_key_appID___block_invoke;
    v17[3] = &unk_1E783BE20;
    v18 = v11;
    v19 = v12;
    v20 = v10;
    v15 = [v14 messageWithPacker:v17];
    v16 = [MEMORY[0x1E695DFD8] setWithObject:v13];
    [(FBSServiceFacility *)self sendMessage:v15 withType:9 toClients:v16];
  }
}

void __118__FBApplicationDataStoreRepositoryServer_applicationDataStoreRepositoryClientContext_valueChangedForObject_key_appID___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E699F840], [*(a1 + 32) UTF8String]);
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E699F828], [*(a1 + 40) UTF8String]);
  v3 = *(a1 + 48);
  v4 = [MEMORY[0x1E695DFB0] null];
  LOBYTE(v3) = [v3 isEqual:v4];

  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 48);
    v6 = *MEMORY[0x1E699F848];
    BSSerializeCFValueToXPCDictionaryWithKey();
  }
}

- (void)applicationDataStoreRepositoryClientContext:(id)a3 repositoryInvalidatedForAppID:(id)a4
{
  v6 = a4;
  v7 = [a3 clientHandle];
  if (v7)
  {
    v8 = MEMORY[0x1E699FCF8];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __116__FBApplicationDataStoreRepositoryServer_applicationDataStoreRepositoryClientContext_repositoryInvalidatedForAppID___block_invoke;
    v11[3] = &unk_1E783B268;
    v12 = v6;
    v9 = [v8 messageWithPacker:v11];
    v10 = [MEMORY[0x1E695DFD8] setWithObject:v7];
    [(FBSServiceFacility *)self sendMessage:v9 withType:10 toClients:v10];
  }
}

void __116__FBApplicationDataStoreRepositoryServer_applicationDataStoreRepositoryClientContext_repositoryInvalidatedForAppID___block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E699F828];
  v4 = *(a1 + 32);
  v5 = v4;
  xdict = a2;
  xpc_dictionary_set_string(xdict, v3, [v4 UTF8String]);
}

@end