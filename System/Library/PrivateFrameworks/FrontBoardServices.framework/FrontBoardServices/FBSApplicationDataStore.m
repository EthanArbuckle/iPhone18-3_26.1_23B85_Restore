@interface FBSApplicationDataStore
+ (id)applicationIdentifiersWithAvailableStores;
+ (id)applicationIdentifiersWithAvailableStoresForBundleID:(id)a3;
+ (id)applicationIdentitiesWithAvailableStores;
+ (id)applicationsWithAvailableStores;
+ (id)storeForApplication:(id)a3;
+ (id)storeForApplicationIdentifier:(id)a3;
+ (id)storeForApplicationIdentity:(id)a3;
+ (void)_doWithClassClient:(id)a3;
+ (void)_setClassClient:(id)a3;
+ (void)setPrefetchedKeys:(id)a3;
+ (void)synchronizeWithCompletion:(id)a3;
- (BOOL)migrateToIdentity:(id)a3 error:(id *)a4;
- (BOOL)migrateWithError:(id *)a3;
- (BOOL)needsMigration;
- (FBSApplicationDataStore)init;
- (id)_initWithBundleId:(id)a3 identity:(id)a4 client:(id)a5;
- (id)archivedObjectForKey:(id)a3;
- (id)description;
- (id)deserializeObjectForKey:(id)a3 ofType:(Class)a4;
- (id)safeArchivedObjectForKey:(id)a3 ofType:(Class)a4;
- (id)safeObjectForKey:(id)a3 ofType:(Class)a4;
- (void)archivedObjectForKey:(id)a3 withResult:(id)a4;
- (void)dealloc;
- (void)deserializeObjectForKey:(id)a3 ofType:(Class)a4 withResult:(id)a5;
- (void)objectForKey:(id)a3 withResult:(id)a4;
- (void)safeArchivedObjectForKey:(id)a3 ofType:(Class)a4 withResult:(id)a5;
- (void)safeObjectForKey:(id)a3 ofType:(Class)a4 withResult:(id)a5;
- (void)serializeObject:(id)a3 forKey:(id)a4;
- (void)setArchivedObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation FBSApplicationDataStore

- (void)dealloc
{
  if (self->_clientNeedsCheckin)
  {
    v3 = +[FBSApplicationDataStoreClientFactory sharedInstance];
    [v3 checkin];
  }

  v4.receiver = self;
  v4.super_class = FBSApplicationDataStore;
  [(FBSApplicationDataStore *)&v4 dealloc];
}

- (FBSApplicationDataStore)init
{
  [MEMORY[0x1E695DF30] raise:@"FBSApplicationDataStoreException" format:@"FBSApplicationDataStore cannot be initialized - use 'storeForApplication:' instead."];

  return 0;
}

- (id)_initWithBundleId:(id)a3 identity:(id)a4 client:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9 && v10)
  {
    v12 = MEMORY[0x1E69635D8];
    v13 = [v10 identityString];
    v9 = [v12 bundleIdentifierForIdentityString:v13 error:0];

    if (!v9)
    {
      [FBSApplicationDataStore _initWithBundleId:v10 identity:a2 client:?];
    }

    goto LABEL_6;
  }

  if (v9)
  {
LABEL_6:
    v23.receiver = self;
    v23.super_class = FBSApplicationDataStore;
    v14 = [(FBSApplicationDataStore *)&v23 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_bundleId, v9);
      objc_storeStrong(&v15->_identity, a4);
      if (v10)
      {
        v16 = [v10 identityString];
      }

      else
      {
        v16 = v9;
      }

      identifier = v15->_identifier;
      v15->_identifier = &v16->isa;

      if (v11)
      {
        objc_storeStrong(&v15->_client, a5);
      }

      else
      {
        v18 = +[FBSApplicationDataStoreClientFactory sharedInstance];
        v19 = [v18 checkout];
        client = v15->_client;
        v15->_client = v19;

        v15->_clientNeedsCheckin = 1;
      }
    }

    self = v15;
    v21 = self;
    goto LABEL_14;
  }

  v9 = FBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [FBSApplicationDataStore _initWithBundleId:v9 identity:? client:?];
  }

  v21 = 0;
LABEL_14:

  return v21;
}

+ (id)storeForApplicationIdentity:(id)a3
{
  v4 = a3;
  NSClassFromString(&cfstr_Lsapplicationi.isa);
  if (!v4)
  {
    [FBSApplicationDataStore storeForApplicationIdentity:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSApplicationDataStore storeForApplicationIdentity:a2];
  }

  v5 = [[FBSApplicationDataStore alloc] _initWithBundleId:0 identity:v4 client:0];

  return v5;
}

+ (id)storeForApplicationIdentifier:(id)a3
{
  v5 = a3;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v5)
  {
    [FBSApplicationDataStore storeForApplicationIdentifier:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSApplicationDataStore storeForApplicationIdentifier:a2];
  }

  if ([v5 fbs_looksLikeAnIdentityString])
  {
    v6 = [objc_alloc(MEMORY[0x1E69635D8]) initWithIdentityString:v5];
    v7 = [a1 storeForApplicationIdentity:v6];
  }

  else
  {
    v7 = [a1 storeForApplication:v5];
  }

  return v7;
}

+ (id)storeForApplication:(id)a3
{
  v3 = a3;
  v4 = [[FBSApplicationDataStore alloc] _initWithBundleId:v3 identity:0 client:0];

  return v4;
}

+ (id)applicationsWithAvailableStores
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a1 applicationIdentifiersWithAvailableStores];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 fbs_looksLikeAnIdentityString] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)applicationIdentitiesWithAvailableStores
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a1 applicationIdentifiersWithAvailableStores];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 fbs_looksLikeAnIdentityString])
        {
          v10 = [objc_alloc(MEMORY[0x1E69635D8]) initWithIdentityString:v9];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)applicationIdentifiersWithAvailableStores
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4;
  v9 = __Block_byref_object_dispose__4;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__FBSApplicationDataStore_applicationIdentifiersWithAvailableStores__block_invoke;
  v4[3] = &unk_1E76BE430;
  v4[4] = &v5;
  [FBSApplicationDataStore _doWithClassClient:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __68__FBSApplicationDataStore_applicationIdentifiersWithAvailableStores__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 availableDataStores];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

+ (id)applicationIdentifiersWithAvailableStoresForBundleID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a1 applicationIdentifiersWithAvailableStores];
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
        if (([v11 isEqualToString:v4] & 1) == 0)
        {
          if (![v11 fbs_looksLikeAnIdentityString])
          {
            continue;
          }

          v12 = [MEMORY[0x1E69635D8] bundleIdentifierForIdentityString:v11 error:0];
          v13 = [v12 isEqualToString:v4];

          if (!v13)
          {
            continue;
          }
        }

        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)needsMigration
{
  identity = self->_identity;
  if (identity)
  {
    return [(LSApplicationIdentity *)identity needsMigration];
  }

  else
  {
    return 1;
  }
}

- (BOOL)migrateWithError:(id *)a3
{
  v41 = *MEMORY[0x1E69E9840];
  if (![(FBSApplicationDataStore *)self needsMigration])
  {
    v8 = 0;
    v18 = 1;
    if (!a3)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  identity = self->_identity;
  if (identity)
  {
    v39 = 0;
    v6 = [(LSApplicationIdentity *)identity findApplicationRecordFetchingPlaceholder:1 error:&v39];
    v7 = v39;
    v8 = v7;
    if (v6)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v9 = [v6 identities];
      v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v10)
      {
        v11 = v10;
        v28 = a3;
        v12 = 0;
        v13 = *v36;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v36 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v35 + 1) + 8 * i);
            v16 = [(LSApplicationIdentity *)self->_identity personaType];
            if (v16 == [v15 personaType])
            {
              if (v12)
              {

                v17 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"FBSApplicationDataStore" code:1 configuration:&__block_literal_global_10];

                v12 = 0;
                v8 = v17;
              }

              else
              {
                v12 = v15;
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v11);
        a3 = v28;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v21 = MEMORY[0x1E696ABC0];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __44__FBSApplicationDataStore_migrateWithError___block_invoke_2;
      v33[3] = &unk_1E76BE348;
      v34 = v7;
      v22 = v7;
      v8 = [v21 bs_errorWithDomain:@"FBSApplicationDataStore" code:1 configuration:v33];

      v12 = 0;
      v9 = v34;
    }

    goto LABEL_22;
  }

  bundleId = self->_bundleId;
  v32 = 0;
  v6 = [MEMORY[0x1E69635D8] identityStringsForApplicationWithBundleIdentifier:bundleId error:&v32];
  v8 = v32;
  if ([v6 count])
  {
    v20 = objc_alloc(MEMORY[0x1E69635D8]);
    v9 = [v6 firstObject];
    v12 = [v20 initWithIdentityString:v9];
LABEL_22:

    goto LABEL_23;
  }

  v26 = MEMORY[0x1E696ABC0];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __44__FBSApplicationDataStore_migrateWithError___block_invoke_3;
  v30[3] = &unk_1E76BE2F8;
  v30[4] = self;
  v31 = v8;
  v27 = v8;
  v8 = [v26 bs_errorWithDomain:@"FBSApplicationDataStore" code:1 configuration:v30];

  v12 = 0;
LABEL_23:

  if (v8)
  {
    v18 = 0;
  }

  else
  {
    v29 = 0;
    v18 = [(FBSApplicationDataStore *)self migrateToIdentity:v12 error:&v29];
    v8 = v29;
  }

  if (a3)
  {
    if (v8)
    {
      v23 = FBLogAppDataStore();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(FBSApplicationDataStore *)self migrateWithError:v8];
      }
    }

LABEL_31:
    v24 = v8;
    *a3 = v8;
  }

LABEL_32:

  return v18;
}

void __44__FBSApplicationDataStore_migrateWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setFailureDescription:@"Migration failed"];
  [v2 setFailureReason:@"Target identity is ambiguous"];
}

void __44__FBSApplicationDataStore_migrateWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFailureDescription:@"Migration failed"];
  [v3 setFailureReason:@"No application record found"];
  [v3 setUnderlyingError:*(a1 + 32)];
}

void __44__FBSApplicationDataStore_migrateWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFailureDescription:@"Migration failed"];
  [v3 setFailureReason:{@"No identities found for bundleID %@", *(*(a1 + 32) + 32)}];
  [v3 setUnderlyingError:*(a1 + 40)];
}

- (BOOL)migrateToIdentity:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  NSClassFromString(&cfstr_Lsapplicationi.isa);
  if (!v7)
  {
    [FBSApplicationDataStore migrateToIdentity:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSApplicationDataStore migrateToIdentity:a2 error:?];
  }

  if ([v7 needsMigration])
  {
    [FBSApplicationDataStore migrateToIdentity:a2 error:self];
  }

  v8 = MEMORY[0x1E69635D8];
  v9 = [v7 identityString];
  v10 = [v8 bundleIdentifierForIdentityString:v9 error:0];

  if (![(NSString *)self->_bundleId isEqualToString:v10])
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identity does not match bundleID: %@ vs %@", self->_bundleId, v10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(FBSApplicationDataStore *)a2 migrateToIdentity:v19 error:?];
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
  }

  v11 = FBLogAppDataStore();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = self;
    _os_log_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_DEFAULT, "Migrating %{public}@ to latest identity...", buf, 0xCu);
  }

  identifier = self->_identifier;
  client = self->_client;
  v14 = [v7 identityString];
  v15 = [(FBSApplicationDataStoreRepositoryClient *)client migrateIdentifier:identifier toIdentifier:v14];

  if (v15)
  {
    v16 = FBLogAppDataStore();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [FBSApplicationDataStore migrateToIdentity:v15 error:?];
    }
  }

  if (a4)
  {
    v17 = MEMORY[0x1E696ABC0];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __51__FBSApplicationDataStore_migrateToIdentity_error___block_invoke;
    v20[3] = &unk_1E76BE348;
    v21 = v15;
    *a4 = [v17 bs_errorWithDomain:@"FBSApplicationDataStore" code:1 configuration:v20];
  }

  return v15 == 0;
}

void __51__FBSApplicationDataStore_migrateToIdentity_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFailureDescription:@"Migration failed"];
  [v3 setUnderlyingError:*(a1 + 32)];
}

- (void)objectForKey:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (objectForKey_withResult__onceToken != -1)
    {
      [FBSApplicationDataStore objectForKey:withResult:];
    }

    v8 = objectForKey_withResult__queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__FBSApplicationDataStore_objectForKey_withResult___block_invoke_2;
    block[3] = &unk_1E76BD4E0;
    v11 = v7;
    block[4] = self;
    v10 = v6;
    dispatch_async(v8, block);
  }
}

void __51__FBSApplicationDataStore_objectForKey_withResult___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (id)safeObjectForKey:(id)a3 ofType:(Class)a4
{
  v5 = [(FBSApplicationDataStore *)self objectForKey:a3];
  if (a4)
  {
    if (objc_opt_isKindOfClass())
    {
      a4 = v5;
    }

    else
    {
      a4 = 0;
    }
  }

  v6 = a4;

  return a4;
}

- (void)safeObjectForKey:(id)a3 ofType:(Class)a4 withResult:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__FBSApplicationDataStore_safeObjectForKey_ofType_withResult___block_invoke;
    v10[3] = &unk_1E76BE478;
    v11 = v8;
    v12 = a4;
    [(FBSApplicationDataStore *)self objectForKey:a3 withResult:v10];
  }
}

void __62__FBSApplicationDataStore_safeObjectForKey_ofType_withResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (*(a1 + 40))
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(v4 + 16))(v4, v6);
}

- (id)deserializeObjectForKey:(id)a3 ofType:(Class)a4
{
  v7 = a3;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v7)
  {
    [FBSApplicationDataStore deserializeObjectForKey:a2 ofType:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSApplicationDataStore deserializeObjectForKey:a2 ofType:?];
  }

  if (!a4)
  {
    [FBSApplicationDataStore deserializeObjectForKey:a2 ofType:?];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [(FBSApplicationDataStore *)self safeObjectForKey:v7 ofType:objc_opt_class()];
  if (v9)
  {
    v10 = [MEMORY[0x1E69E58C0] bs_secureObjectFromData:v9 ofClass:a4];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v8);
  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (void)deserializeObjectForKey:(id)a3 ofType:(Class)a4 withResult:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v9;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v11)
  {
    [FBSApplicationDataStore deserializeObjectForKey:a2 ofType:? withResult:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSApplicationDataStore deserializeObjectForKey:a2 ofType:? withResult:?];
  }

  if (!a4)
  {
    [FBSApplicationDataStore deserializeObjectForKey:a2 ofType:? withResult:?];
  }

  if (!v10)
  {
    [FBSApplicationDataStore deserializeObjectForKey:a2 ofType:? withResult:?];
  }

  v12 = objc_opt_class();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__FBSApplicationDataStore_deserializeObjectForKey_ofType_withResult___block_invoke;
  v14[3] = &unk_1E76BE4A0;
  v15 = v10;
  v16 = a4;
  v13 = v10;
  [(FBSApplicationDataStore *)self safeObjectForKey:v11 ofType:v12 withResult:v14];
}

void __69__FBSApplicationDataStore_deserializeObjectForKey_ofType_withResult___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E69E58C0] bs_secureObjectFromData:v10 ofClass:*(a1 + 40)];
  objc_autoreleasePoolPop(v3);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v4;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  (*(v5 + 16))(v5, v9);
}

- (void)serializeObject:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (!v10)
  {
    [FBSApplicationDataStore serializeObject:a2 forKey:?];
  }

  v8 = v7;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v8)
  {
    [FBSApplicationDataStore serializeObject:a2 forKey:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSApplicationDataStore serializeObject:a2 forKey:?];
  }

  v9 = [MEMORY[0x1E69E58C0] bs_secureDataFromObject:v10];
  [(FBSApplicationDataStore *)self setObject:v9 forKey:v8];
}

- (id)archivedObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(FBSApplicationDataStore *)self safeObjectForKey:v4 ofType:objc_opt_class()];

  v6 = _FBSCreateUnsafeObjectFromData(v5);

  return v6;
}

- (void)archivedObjectForKey:(id)a3 withResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__FBSApplicationDataStore_archivedObjectForKey_withResult___block_invoke;
    v9[3] = &unk_1E76BE4C8;
    v10 = v6;
    [(FBSApplicationDataStore *)self safeObjectForKey:v7 ofType:v8 withResult:v9];

    v7 = v10;
  }

  else
  {
    [(FBSApplicationDataStore *)self safeObjectForKey:v7 ofType:v8 withResult:0];
  }
}

uint64_t __59__FBSApplicationDataStore_archivedObjectForKey_withResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = _FBSCreateUnsafeObjectFromData(a2);
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = v3;
    v4 = (*(v4 + 16))();
    v3 = v6;
  }

  return MEMORY[0x1EEE66BB8](v4, v3);
}

- (id)safeArchivedObjectForKey:(id)a3 ofType:(Class)a4
{
  v5 = [(FBSApplicationDataStore *)self archivedObjectForKey:a3];
  if (a4)
  {
    if (objc_opt_isKindOfClass())
    {
      a4 = v5;
    }

    else
    {
      a4 = 0;
    }
  }

  v6 = a4;

  return a4;
}

- (void)safeArchivedObjectForKey:(id)a3 ofType:(Class)a4 withResult:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__FBSApplicationDataStore_safeArchivedObjectForKey_ofType_withResult___block_invoke;
    v10[3] = &unk_1E76BE478;
    v11 = v8;
    v12 = a4;
    [(FBSApplicationDataStore *)self archivedObjectForKey:a3 withResult:v10];
  }
}

void __70__FBSApplicationDataStore_safeArchivedObjectForKey_ofType_withResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (*(a1 + 40))
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(v4 + 16))(v4, v6);
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  if (v7)
  {
    if (v6)
    {
      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v6, 0);

      if (!DeepCopy)
      {
        v6 = FBLogAppDataStore();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [FBSApplicationDataStore setObject:forKey:];
        }

        goto LABEL_11;
      }
    }

    else
    {
      DeepCopy = 0;
    }

    [(FBSApplicationDataStoreRepositoryClient *)self->_client setObject:DeepCopy forKey:v7 forApplication:self->_identifier withCompletion:0];
    v6 = DeepCopy;
    goto LABEL_11;
  }

  v9 = FBLogAppDataStore();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [FBSApplicationDataStore setObject:forKey:];
  }

LABEL_11:
}

- (void)setArchivedObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v12 = 0;
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:0 error:&v12];
    v10 = v12;
    if (v10)
    {
      v11 = FBLogAppDataStore();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [FBSApplicationDataStore setArchivedObject:forKey:];
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        [FBSApplicationDataStore setArchivedObject:forKey:];
      }
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v9 = 0;
  }

  [(FBSApplicationDataStore *)self setObject:v9 forKey:v7];
}

+ (void)synchronizeWithCompletion:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__FBSApplicationDataStore_synchronizeWithCompletion___block_invoke;
  v5[3] = &unk_1E76BE4F0;
  v6 = v3;
  v4 = v3;
  [FBSApplicationDataStore _doWithClassClient:v5];
}

void __53__FBSApplicationDataStore_synchronizeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __53__FBSApplicationDataStore_synchronizeWithCompletion___block_invoke_2;
    v4[3] = &unk_1E76BDB58;
    v5 = v3;
    [a2 synchronizeWithCompletion:v4];
  }

  else
  {

    [a2 synchronizeWithCompletion:0];
  }
}

uint64_t __53__FBSApplicationDataStore_synchronizeWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)setPrefetchedKeys:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [a3 copy];
  v4 = FBLogAppDataStore();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1A2DBB000, v4, OS_LOG_TYPE_DEFAULT, "Setting prefetched keys: %@", buf, 0xCu);
  }

  v5 = +[FBSApplicationDataStoreClientFactory sharedInstance];
  [v5 setPrefetchedKeys:v3];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__FBSApplicationDataStore_setPrefetchedKeys___block_invoke;
  v8[3] = &unk_1E76BE518;
  v9 = v3;
  v6 = v3;
  [FBSApplicationDataStore _doWithClassClient:v8];
  v7 = FBLogAppDataStore();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2DBB000, v7, OS_LOG_TYPE_DEFAULT, "Finishing prefetching", buf, 2u);
  }
}

+ (void)_setClassClient:(id)a3
{
  v4 = a3;
  if (__classClient != v4)
  {
    v5 = v4;
    objc_storeStrong(&__classClient, a3);
    v4 = v5;
  }
}

+ (void)_doWithClassClient:(id)a3
{
  v7 = a3;
  v3 = __classClient;
  v4 = v3;
  if (!v3)
  {
    v5 = +[FBSApplicationDataStoreClientFactory sharedInstance];
    v4 = [v5 checkout];
  }

  if (v7)
  {
    v7[2](v7, v4);
  }

  if (!v3)
  {
    v6 = +[FBSApplicationDataStoreClientFactory sharedInstance];
    [v6 checkin];
  }
}

- (id)description
{
  v3 = @"TBD";
  if (!self->_identity)
  {
    v3 = @"legacy";
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", self->_bundleId, v3];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"<%@: %p %@>", v7, self, v4];;

  return v8;
}

- (void)_initWithBundleId:(void *)a1 identity:(const char *)a2 client:.cold.2(void *a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = [a1 fbs_mediumDescription];
  v4 = [v3 stringWithFormat:@"no bundleID found for identity %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v14 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, 2u);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)storeForApplicationIdentity:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:LSApplicationIdentityClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)storeForApplicationIdentity:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)storeForApplicationIdentifier:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)storeForApplicationIdentifier:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)migrateWithError:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)migrateToIdentity:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:LSApplicationIdentityClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)migrateToIdentity:(uint64_t)a3 error:.cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"FBSApplicationDataStore.m";
  v16 = 1024;
  v17 = 220;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

- (void)migrateToIdentity:(uint64_t)a1 error:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  v2 = [a2 succinctDescription];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)migrateToIdentity:(char *)a1 error:(uint64_t)a2 .cold.4(char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"provided identity itself requires migration"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_12();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_4_3();
    v9 = 2048;
    v10 = a2;
    v11 = v7;
    v12 = @"FBSApplicationDataStore.m";
    v13 = 1024;
    v14 = 218;
    v15 = v7;
    v16 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)migrateToIdentity:(char *)a1 error:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)deserializeObjectForKey:(char *)a1 ofType:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)deserializeObjectForKey:(char *)a1 ofType:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"type", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)deserializeObjectForKey:(char *)a1 ofType:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)deserializeObjectForKey:(char *)a1 ofType:withResult:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)deserializeObjectForKey:(char *)a1 ofType:withResult:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"resultBlock", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)deserializeObjectForKey:(char *)a1 ofType:withResult:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"type", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)deserializeObjectForKey:(char *)a1 ofType:withResult:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)serializeObject:(char *)a1 forKey:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)serializeObject:(char *)a1 forKey:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)serializeObject:(char *)a1 forKey:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"object", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setObject:forKey:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_5();
  _os_log_error_impl(&dword_1A2DBB000, v0, OS_LOG_TYPE_ERROR, "ERROR: value provided for key %{public}@ is not a valid property list", v1, 0xCu);
}

- (void)setObject:forKey:.cold.2()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setArchivedObject:forKey:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_5_5();
  v1 = v0;
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)setArchivedObject:forKey:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FBSApplicationDataStore setArchivedObject:forKey:]"];
  v2 = objc_opt_class();
  v3 = NSStringFromProtocol(&unk_1F15B0680);
  [v0 handleFailureInFunction:v1 file:@"FBSApplicationDataStore.m" lineNumber:385 description:{@"%@ does not conform to <%@>", v2, v3}];
}

@end