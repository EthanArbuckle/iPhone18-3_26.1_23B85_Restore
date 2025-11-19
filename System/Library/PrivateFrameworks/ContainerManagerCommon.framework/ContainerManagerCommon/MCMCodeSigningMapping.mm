@interface MCMCodeSigningMapping
+ (id)_moveDBIfNeededFromURL:(id)a3 queue:(id)a4 error:(id *)a5;
+ (id)codeSignMappingWithError:(id *)a3;
- (BOOL)_onQueue_addGroupIdentifier:(id)a3 forIdentifier:(id)a4 containerClass:(unint64_t)a5 error:(id *)a6 reconcileHandler:(id)a7;
- (BOOL)_onQueue_identifierHasCallerRegisteredEntitlements:(id)a3;
- (BOOL)_onQueue_invalidateCodeSigningInfoForIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_onQueue_processCodeSigningInfo:(id)a3 identifier:(id)a4 options:(id)a5 oldEntitlements:(id)a6 error:(id *)a7 reconcileHandler:(id)a8;
- (BOOL)_onQueue_removeAllAdvanceCopiesWithError:(id *)a3;
- (BOOL)_onQueue_removeAllInvalidPluginCodeSigningEntriesWithNumRemoved:(int *)a3 error:(id *)a4;
- (BOOL)_onQueue_removeGroupIdentifier:(id)a3 forIdentifier:(id)a4 containerClass:(unint64_t)a5 error:(id *)a6 reconcileHandler:(id)a7;
- (BOOL)_onqueue_enumerateOwnersAndGroupsWithGroupClass:(unint64_t)a3 error:(id *)a4 block:(id)a5;
- (BOOL)addGroupIdentifier:(id)a3 forIdentifier:(id)a4 containerClass:(unint64_t)a5 error:(id *)a6 reconcileHandler:(id)a7;
- (BOOL)enumerateOwnersAndGroupsWithGroupClass:(unint64_t)a3 error:(id *)a4 block:(id)a5;
- (BOOL)identifierHasCallerRegisteredEntitlements:(id)a3;
- (BOOL)identifierHasSystemContainer:(id)a3;
- (BOOL)invalidateCodeSigningInfoForIdentifier:(id)a3 withError:(id *)a4;
- (BOOL)invalidateCodeSigningInfoForIdentifierAndItsChildren:(id)a3 withError:(id *)a4;
- (BOOL)removeAllAdvanceCopiesWithError:(id *)a3;
- (BOOL)removeAllInvalidPluginCodeSigningEntriesWithNumRemoved:(int *)a3 error:(id *)a4;
- (BOOL)removeGroupIdentifier:(id)a3 forIdentifier:(id)a4 containerClass:(unint64_t)a5 error:(id *)a6 reconcileHandler:(id)a7;
- (MCMChildParentMapCache)childParentMapCache;
- (MCMCodeSigningMapping)initWithUserIdentityCache:(id)a3 queue:(id)a4 mappingDB:(id)a5 childParentMapCache:(id)a6 library:(id)a7;
- (MCMManagedPath)library;
- (MCMSQLiteDB)codeSigningMappingDB;
- (MCMUserIdentityCache)userIdentityCache;
- (OS_dispatch_queue)queue;
- (id)_codeSigningInfoForCodeSigningEntry:(id)a3 externalRequest:(BOOL)a4;
- (id)_entitlementsFromCodeSigningEntry:(id)a3;
- (id)_onQueue_codeSigningEntryForIdentifier:(id)a3 withError:(id *)a4;
- (id)_onQueue_copyReferenceCountSetForContainerClass:(unint64_t)a3;
- (id)_onQueue_entitlementsForIdentifier:(id)a3;
- (id)_onQueue_identifiersWithError:(id *)a3;
- (id)_onQueue_invalidateCodeSigningInfoForIdentifierAndItsChildren:(id)a3;
- (id)_onQueue_removeReferenceForGroupIdentifiers:(id)a3 containerClass:(unint64_t)a4;
- (id)_onQueue_setCodeSigningDictionaryValues:(id)a3 forIdentifiers:(id)a4;
- (id)_readCodeSigningMappingFromDiskAtURL:(id)a3;
- (id)appGroupIdentifiersForIdentifier:(id)a3;
- (id)codeSigningEntryForIdentifier:(id)a3 withError:(id *)a4;
- (id)copyReferenceCountSetForContainerClass:(unint64_t)a3;
- (id)entitlementsForIdentifier:(id)a3;
- (id)getCodeSigningInfoForIdentifier:(id)a3;
- (id)groupContainerIdentifiersAssociatedWithIdentifier:(id)a3 containerClass:(unint64_t)a4;
- (id)identifiersWithError:(id *)a3;
- (id)processCallerRegisteredEntitlements:(id)a3 identifier:(id)a4 error:(id *)a5;
- (id)processCodeSigningInfo:(id)a3 identifier:(id)a4 options:(id)a5 error:(id *)a6;
- (id)removeCodeSigningDictionaryForIdentifiers:(id)a3;
- (id)systemGroupIdentifiersForIdentifier:(id)a3;
- (unint64_t)_onQueue_dataContainerTypeForIdentifier:(id)a3;
- (unint64_t)dataContainerTypeForIdentifier:(id)a3;
- (unint64_t)invalidateCodeSigningInfoForAppsWithoutDataContainer;
- (void)_onQueue_handleChangeFromOldGroupContainerIds:(id)a3 toNewGroupContainerIds:(id)a4 containerClass:(unint64_t)a5 reconcileHandler:(id)a6;
- (void)_onQueue_iterateGroupIdsWithKey:(id)a3 fallBackKey:(id)a4 noReferenceKey:(id)a5 forAllIdentifiersUsingBlock:(id)a6;
- (void)_onQueue_migrateAppGroupIdsFromDataContainersToFileUsingContainers:(id)a3;
- (void)_onQueue_migrateCachedCodeSigningInfoFromBundleContainerToMappingWithInfo:(id)a3 identifier:(id)a4 containerClass:(unint64_t)a5;
- (void)_onQueue_migrateCachedCodeSigningInfoFromBundleContainersToMappingWithContainersLegacy:(id)a3 containerClass:(unint64_t)a4;
- (void)_onQueue_migrateDataFromLegacyEntitlementsFileToCodeSigningFile;
- (void)_onQueue_migrateFromMappingFileToDBIfNecessary;
- (void)_onQueue_reconcileSystemContainersWithContext:(id)a3;
- (void)migrateAppGroupIdsFromDataContainersToFile;
- (void)migrateCachedCodeSigningInfoFromBundleContainersToMapping;
- (void)performAllCodeSigningMigrationAndReconciliationWithContext:(id)a3;
- (void)setCodeSigningMappingDB:(id)a3;
@end

@implementation MCMCodeSigningMapping

- (OS_dispatch_queue)queue
{
  result = self->_queue;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMSQLiteDB)codeSigningMappingDB
{
  result = self->_codeSigningMappingDB;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMChildParentMapCache)childParentMapCache
{
  result = self->_childParentMapCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)library
{
  result = self->_library;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMUserIdentityCache)userIdentityCache
{
  result = self->_userIdentityCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setCodeSigningMappingDB:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_codeSigningMappingDB = &self->_codeSigningMappingDB;

  objc_storeStrong(p_codeSigningMappingDB, a3);
}

- (BOOL)_onQueue_removeGroupIdentifier:(id)a3 forIdentifier:(id)a4 containerClass:(unint64_t)a5 error:(id *)a6 reconcileHandler:(id)a7
{
  v35[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v14);

  if (a5 != 7 && a5 != 13)
  {
    v27 = [[MCMError alloc] initWithErrorType:20 category:4];
LABEL_8:
    v26 = 0;
    goto LABEL_10;
  }

  v15 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
  v33 = 0;
  v16 = [v15 codeSigningEntryWithIdentifier:v12 error:&v33];
  v17 = v33;

  if (!v16)
  {
    v27 = [[MCMError alloc] initWithErrorType:67 category:3];

    goto LABEL_8;
  }

  v30 = v17;
  v31 = v11;
  v18 = [(MCMCodeSigningMapping *)self _entitlementsFromCodeSigningEntry:v16];
  v19 = [MCMEntitlements alloc];
  v20 = containermanager_copy_global_configuration();
  v21 = [v20 staticConfig];
  v22 = [v21 containerConfigMap];
  v23 = [(MCMEntitlements *)v19 initWithEntitlements:v18 clientIdentifier:v12 containerConfigMap:v22];

  if (v23)
  {
    v24 = [(MCMEntitlements *)v23 copyEntitlementsDictionaryByRemovingGroupContainerOfClass:a5 groupIdentifier:v31];
    v34 = @"com.apple.MobileContainerManager.Entitlements";
    v35[0] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v32 = 0;
    v26 = [(MCMCodeSigningMapping *)self _onQueue_processCodeSigningInfo:v25 identifier:v12 options:0 oldEntitlements:v23 error:&v32 reconcileHandler:v13];
    v27 = v32;

    v11 = v31;
  }

  else
  {
    v27 = [[MCMError alloc] initWithErrorType:60 category:3];

    v26 = 0;
    v11 = v31;
  }

LABEL_10:

  v28 = *MEMORY[0x1E69E9840];
  return v26;
}

- (BOOL)_onQueue_addGroupIdentifier:(id)a3 forIdentifier:(id)a4 containerClass:(unint64_t)a5 error:(id *)a6 reconcileHandler:(id)a7
{
  v39[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v14);

  if (a5 == 7 || a5 == 13)
  {
    v15 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
    v35 = 0;
    v16 = [v15 codeSigningEntryWithIdentifier:v12 error:&v35];
    v17 = v35;

    v18 = 0x1E695D000uLL;
    v33 = v11;
    if (v16)
    {
      v32 = v17;
      v19 = [(MCMCodeSigningMapping *)self _entitlementsFromCodeSigningEntry:v16];
      v20 = [MCMEntitlements alloc];
      v21 = containermanager_copy_global_configuration();
      v22 = [v21 staticConfig];
      v23 = [v22 containerConfigMap];
      v24 = [(MCMEntitlements *)v20 initWithEntitlements:v19 clientIdentifier:v12 containerConfigMap:v23];

      if (!v24)
      {
        v26 = [[MCMError alloc] initWithErrorType:60 category:3];

        v27 = 0;
        goto LABEL_10;
      }

      v25 = [(MCMEntitlements *)v24 copyEntitlementsDictionaryByAddingGroupContainerOfClass:a5 groupIdentifier:v33];
      v17 = v32;
      v18 = 0x1E695D000;
    }

    else
    {
      v28 = [MCMEntitlements publicEntitlementForGroupContainerClass:a5];
      v38 = v28;
      v39[0] = v11;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];

      v19 = 0;
      v24 = 0;
    }

    v36 = @"com.apple.MobileContainerManager.Entitlements";
    v37 = v25;
    v29 = [*(v18 + 3872) dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v34 = 0;
    v27 = [(MCMCodeSigningMapping *)self _onQueue_processCodeSigningInfo:v29 identifier:v12 options:0 oldEntitlements:v24 error:&v34 reconcileHandler:v13];
    v26 = v34;

LABEL_10:
    v11 = v33;
    goto LABEL_11;
  }

  v26 = [[MCMError alloc] initWithErrorType:20 category:4];
  v27 = 0;
LABEL_11:

  v30 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)removeGroupIdentifier:(id)a3 forIdentifier:(id)a4 containerClass:(unint64_t)a5 error:(id *)a6 reconcileHandler:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v15 = [(MCMCodeSigningMapping *)self queue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __99__MCMCodeSigningMapping_removeGroupIdentifier_forIdentifier_containerClass_error_reconcileHandler___block_invoke;
  v21[3] = &unk_1E86B03F8;
  v21[4] = self;
  v22 = v12;
  v25 = &v28;
  v26 = a5;
  v27 = a6;
  v23 = v13;
  v24 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_sync(v15, v21);

  LOBYTE(v13) = *(v29 + 24);
  _Block_object_dispose(&v28, 8);
  v19 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

uint64_t __99__MCMCodeSigningMapping_removeGroupIdentifier_forIdentifier_containerClass_error_reconcileHandler___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _onQueue_removeGroupIdentifier:*(a1 + 40) forIdentifier:*(a1 + 48) containerClass:*(a1 + 72) error:*(a1 + 80) reconcileHandler:*(a1 + 56)];
  *(*(*(a1 + 64) + 8) + 24) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)addGroupIdentifier:(id)a3 forIdentifier:(id)a4 containerClass:(unint64_t)a5 error:(id *)a6 reconcileHandler:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v15 = [(MCMCodeSigningMapping *)self queue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __96__MCMCodeSigningMapping_addGroupIdentifier_forIdentifier_containerClass_error_reconcileHandler___block_invoke;
  v21[3] = &unk_1E86B03F8;
  v21[4] = self;
  v22 = v12;
  v25 = &v28;
  v26 = a5;
  v27 = a6;
  v23 = v13;
  v24 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_sync(v15, v21);

  LOBYTE(v13) = *(v29 + 24);
  _Block_object_dispose(&v28, 8);
  v19 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

uint64_t __96__MCMCodeSigningMapping_addGroupIdentifier_forIdentifier_containerClass_error_reconcileHandler___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _onQueue_addGroupIdentifier:*(a1 + 40) forIdentifier:*(a1 + 48) containerClass:*(a1 + 72) error:*(a1 + 80) reconcileHandler:*(a1 + 56)];
  *(*(*(a1 + 64) + 8) + 24) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_onqueue_enumerateOwnersAndGroupsWithGroupClass:(unint64_t)a3 error:(id *)a4 block:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = objc_autoreleasePoolPush();
  v11 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__MCMCodeSigningMapping__onqueue_enumerateOwnersAndGroupsWithGroupClass_error_block___block_invoke;
  v16[3] = &unk_1E86B03D0;
  v18 = a3;
  v12 = v8;
  v17 = v12;
  v13 = [v11 enumerateIdentifiersAndCodeSigningInfoUsingBlock:v16];

  objc_autoreleasePoolPop(v10);
  if (a4 && v13)
  {
    *a4 = [[MCMError alloc] initWithNSError:v13 url:0 defaultErrorType:66];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13 == 0;
}

void __85__MCMCodeSigningMapping__onqueue_enumerateOwnersAndGroupsWithGroupClass_error_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MCMEntitlements alloc];
  v8 = [v6 codeSigningInfo];
  v9 = [v8 objectForKeyedSubscript:@"com.apple.MobileContainerManager.Entitlements"];
  v10 = containermanager_copy_global_configuration();
  v11 = [v10 staticConfig];
  v12 = [v11 containerConfigMap];
  v13 = [(MCMEntitlements *)v7 initWithEntitlements:v9 clientIdentifier:v5 containerConfigMap:v12];

  v14 = *(a1 + 40);
  if (v14 == 13)
  {
    v15 = [(MCMEntitlements *)v13 systemGroupIdentifiers];
  }

  else if (v14 == 7)
  {
    v15 = [(MCMEntitlements *)v13 appGroupIdentifiers];
  }

  else
  {
    v15 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v24 + 1) + 8 * v20);
        (*(*(a1 + 32) + 16))();
        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)enumerateOwnersAndGroupsWithGroupClass:(unint64_t)a3 error:(id *)a4 block:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__4357;
  v27 = __Block_byref_object_dispose__4358;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v9 = [(MCMCodeSigningMapping *)self queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__MCMCodeSigningMapping_enumerateOwnersAndGroupsWithGroupClass_error_block___block_invoke;
  v14[3] = &unk_1E86B03A8;
  v16 = &v19;
  v17 = &v23;
  v14[4] = self;
  v18 = a3;
  v10 = v8;
  v15 = v10;
  dispatch_sync(v9, v14);

  v11 = *(v20 + 24);
  if (a4 && (v20[3] & 1) == 0)
  {
    *a4 = v24[5];
    v11 = *(v20 + 24);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  v12 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

void __76__MCMCodeSigningMapping_enumerateOwnersAndGroupsWithGroupClass_error_block___block_invoke(uint64_t a1)
{
  obj[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = *(*(a1 + 56) + 8);
  obj[0] = *(v3 + 40);
  v4 = [*(a1 + 32) _onqueue_enumerateOwnersAndGroupsWithGroupClass:v2 error:obj block:*(a1 + 40)];
  objc_storeStrong((v3 + 40), obj[0]);
  *(*(*(a1 + 48) + 8) + 24) = v4;
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)_onQueue_removeAllInvalidPluginCodeSigningEntriesWithNumRemoved:(int *)a3 error:(id *)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
  LOBYTE(a4) = [v8 deleteAllInvalidPluginCodeSigningEntriesWithNumChanges:a3 error:a4];

  v9 = *MEMORY[0x1E69E9840];
  return a4;
}

- (BOOL)removeAllInvalidPluginCodeSigningEntriesWithNumRemoved:(int *)a3 error:(id *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = [(MCMCodeSigningMapping *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__MCMCodeSigningMapping_removeAllInvalidPluginCodeSigningEntriesWithNumRemoved_error___block_invoke;
  block[3] = &unk_1E86B0380;
  block[4] = self;
  block[5] = &v11;
  block[6] = a3;
  block[7] = a4;
  dispatch_sync(v7, block);

  LOBYTE(a4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  v8 = *MEMORY[0x1E69E9840];
  return a4;
}

uint64_t __86__MCMCodeSigningMapping_removeAllInvalidPluginCodeSigningEntriesWithNumRemoved_error___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _onQueue_removeAllInvalidPluginCodeSigningEntriesWithNumRemoved:*(a1 + 48) error:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_onQueue_removeAllAdvanceCopiesWithError:(id *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
  LOBYTE(a3) = [v6 deleteAllAdvanceCopiesOfCodeSigningEntriesWithError:a3];

  v7 = *MEMORY[0x1E69E9840];
  return a3;
}

- (BOOL)removeAllAdvanceCopiesWithError:(id *)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(MCMCodeSigningMapping *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__MCMCodeSigningMapping_removeAllAdvanceCopiesWithError___block_invoke;
  v8[3] = &unk_1E86B0708;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = a3;
  dispatch_sync(v5, v8);

  LOBYTE(a3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  v6 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t __57__MCMCodeSigningMapping_removeAllAdvanceCopiesWithError___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _onQueue_removeAllAdvanceCopiesWithError:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_onQueue_removeReferenceForGroupIdentifiers:(id)a3 containerClass:(unint64_t)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v29 = self;
  v5 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__MCMCodeSigningMapping__onQueue_removeReferenceForGroupIdentifiers_containerClass___block_invoke;
  aBlock[3] = &unk_1E86B0330;
  v36 = a4;
  aBlock[4] = v29;
  v25 = v6;
  v35 = v25;
  v28 = _Block_copy(aBlock);
  if (v27 && [v27 count])
  {
    v7 = [(MCMCodeSigningMapping *)v29 _onQueue_copyReferenceCountSetForContainerClass:a4];
    if (v7)
    {
      if (a4 == 13)
      {
        v8 = container_log_handle_for_category();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v27;
          _os_log_debug_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_DEBUG, "Would have removed system group container references for %@", buf, 0xCu);
        }
      }

      else
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v9 = v27;
        v10 = [v9 countByEnumeratingWithState:&v44 objects:v43 count:16];
        if (v10)
        {
          v11 = *v45;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v45 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v44 + 1) + 8 * i);
              v14 = [v7 countForObject:v13, v25];
              if (v14 == 1)
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                v42 = 1;
                v15 = container_log_handle_for_category();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *v37 = 138543618;
                  v38 = v13;
                  v39 = 2048;
                  v40 = 1;
                  _os_log_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_DEFAULT, "Reference count for [%{public}@] is %lu, including for delete", v37, 0x16u);
                }

                if ([MCMUserIdentity isUserIdentityRequiredForContainerClass:a4])
                {
                  v16 = [(MCMCodeSigningMapping *)v29 userIdentityCache];
                  v31[0] = MEMORY[0x1E69E9820];
                  v31[1] = 3221225472;
                  v31[2] = __84__MCMCodeSigningMapping__onQueue_removeReferenceForGroupIdentifiers_containerClass___block_invoke_128;
                  v31[3] = &unk_1E86B0358;
                  v33 = buf;
                  v17 = v28;
                  v31[4] = v13;
                  v32 = v17;
                  [v16 forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v31];
                }

                else if (*(*&buf[8] + 24) == 1)
                {
                  v19 = [(MCMCodeSigningMapping *)v29 userIdentityCache];
                  v20 = [v19 globalSystemUserIdentity];
                  v21 = (*(v28 + 2))(v28, v13, v20);
                  *(*&buf[8] + 24) = v21;
                }

                else
                {
                  *(*&buf[8] + 24) = 0;
                }

                if (*(*&buf[8] + 24) == 1)
                {
                  [v7 removeObject:v13];
                }

                _Block_object_dispose(buf, 8);
              }

              else
              {
                v18 = container_log_handle_for_category();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  *&buf[4] = v13;
                  *&buf[12] = 2048;
                  *&buf[14] = v14;
                  _os_log_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEFAULT, "Reference count for [%{public}@] is %lu", buf, 0x16u);
                }
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v44 objects:v43 count:16];
          }

          while (v10);
        }
      }
    }

    else
    {
      v7 = container_log_handle_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a4;
        _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Failed to get reference count information for class: %llu", buf, 0xCu);
      }
    }
  }

  v22 = [v25 copy];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

BOOL __84__MCMCodeSigningMapping__onQueue_removeReferenceForGroupIdentifiers_containerClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 homeDirectoryExists])
  {
    v7 = containermanager_copy_global_configuration();
    v8 = [v7 staticConfig];
    v9 = [v8 configForContainerClass:*(a1 + 48)];

    v19 = 1;
    v10 = [*(a1 + 32) userIdentityCache];
    v11 = [MCMContainerIdentity containerIdentityWithUserIdentity:v6 identifier:v5 containerConfig:v9 platform:0 userIdentityCache:v10 error:&v19];

    v12 = v11 != 0;
    if (v11)
    {
      [*(a1 + 40) addObject:v11];
    }

    else
    {
      v13 = container_log_handle_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = v19;
        error_description = container_get_error_description();
        v18 = *(a1 + 48);
        *buf = 134219010;
        v21 = v16;
        v22 = 2080;
        v23 = error_description;
        v24 = 2112;
        v25 = v6;
        v26 = 2112;
        v27 = v5;
        v28 = 2048;
        v29 = v18;
        _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Could not generate identity for ref cnt delete of container; error = (%llu) %s, userIdentity = %@, identifier = %@, class = %llu", buf, 0x34u);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __84__MCMCodeSigningMapping__onQueue_removeReferenceForGroupIdentifiers_containerClass___block_invoke_128(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1[6] + 8);
  if (*(v1 + 24) == 1)
  {
    v3 = a1[4];
    result = (*(a1[5] + 16))();
    v1 = *(a1[6] + 8);
  }

  else
  {
    result = 0;
  }

  *(v1 + 24) = result;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_onQueue_handleChangeFromOldGroupContainerIds:(id)a3 toNewGroupContainerIds:(id)a4 containerClass:(unint64_t)a5 reconcileHandler:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v13);

  v14 = objc_opt_new();
  v15 = objc_opt_new();
  if (!(v10 | v11))
  {
    v11 = 0;
    v10 = 0;
LABEL_7:
    if (!v12)
    {
      goto LABEL_9;
    }

LABEL_8:
    v12[2](v12, v14, v15);
    goto LABEL_9;
  }

  if ([v10 isEqualToSet:v11])
  {
    goto LABEL_7;
  }

  if (!v10)
  {
    v10 = objc_opt_new();
    if (!v11)
    {
      goto LABEL_11;
    }

LABEL_12:
    v17 = [v10 mutableCopy];
    v18 = [v11 mutableCopy];
    [v17 minusSet:v11];
    v27 = a5;
    v19 = [v17 copy];

    [v18 minusSet:v19];
    v20 = [v18 copy];

    v10 = v19;
    a5 = v27;
    goto LABEL_13;
  }

  if (v11)
  {
    goto LABEL_12;
  }

LABEL_11:
  v11 = objc_opt_new();
  if (v11)
  {
    goto LABEL_12;
  }

  v20 = 0;
LABEL_13:
  v21 = [v10 allObjects];
  v22 = [(MCMCodeSigningMapping *)self _onQueue_removeReferenceForGroupIdentifiers:v21 containerClass:a5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __126__MCMCodeSigningMapping__onQueue_handleChangeFromOldGroupContainerIds_toNewGroupContainerIds_containerClass_reconcileHandler___block_invoke;
  aBlock[3] = &unk_1E86B07D0;
  v11 = v20;
  v34 = a5;
  v31 = v11;
  v32 = self;
  v33 = v15;
  v23 = _Block_copy(aBlock);
  if ([MCMUserIdentity isUserIdentityRequiredForContainerClass:a5])
  {
    v24 = [(MCMCodeSigningMapping *)self userIdentityCache];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __126__MCMCodeSigningMapping__onQueue_handleChangeFromOldGroupContainerIds_toNewGroupContainerIds_containerClass_reconcileHandler___block_invoke_126;
    v28[3] = &unk_1E86B0308;
    v29 = v23;
    [v24 forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v28];

    v25 = v29;
  }

  else
  {
    v25 = [(MCMCodeSigningMapping *)self userIdentityCache];
    v26 = [v25 globalSystemUserIdentity];
    (*(v23 + 2))(v23, v26);
  }

  v14 = v22;
  if (v12)
  {
    goto LABEL_8;
  }

LABEL_9:

  v16 = *MEMORY[0x1E69E9840];
}

void __126__MCMCodeSigningMapping__onQueue_handleChangeFromOldGroupContainerIds_toNewGroupContainerIds_containerClass_reconcileHandler___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * v7);
        v9 = containermanager_copy_global_configuration();
        v10 = [v9 staticConfig];
        v11 = [v10 configForContainerClass:*(a1 + 56)];

        v20 = 1;
        v12 = [*(a1 + 40) userIdentityCache];
        v13 = [MCMContainerIdentity containerIdentityWithUserIdentity:v3 identifier:v8 containerConfig:v11 platform:0 userIdentityCache:v12 error:&v20];

        if (v13)
        {
          [*(a1 + 48) addObject:v13];
        }

        else
        {
          v14 = container_log_handle_for_category();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v18 = v20;
            error_description = container_get_error_description();
            v16 = *(a1 + 56);
            *buf = 134219010;
            v22 = v18;
            v23 = 2080;
            v24 = error_description;
            v25 = 2112;
            v26 = v3;
            v27 = 2112;
            v28 = v8;
            v29 = 2048;
            v30 = v16;
            _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Could not generate identity for ref cnt add of container; error = (%llu) %s, userIdentity = %@, identifier = %@, class = %llu", buf, 0x34u);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __126__MCMCodeSigningMapping__onQueue_handleChangeFromOldGroupContainerIds_toNewGroupContainerIds_containerClass_reconcileHandler___block_invoke_126(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 16);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

- (id)_onQueue_copyReferenceCountSetForContainerClass:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v5);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4357;
  v17 = __Block_byref_object_dispose__4358;
  v18 = [MEMORY[0x1E696AB50] setWithCapacity:0];
  if (a3 == 7)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F5A77050];
    v8 = 0;
    v7 = @"com.apple.private.MobileContainerManager.appGroup.noReference";
    goto LABEL_5;
  }

  if (a3 == 13)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObject:@"com.apple.security.system-groups"];
    v7 = 0;
    v8 = @"com.apple.security.system-group-containers";
LABEL_5:
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __73__MCMCodeSigningMapping__onQueue_copyReferenceCountSetForContainerClass___block_invoke;
    v12[3] = &unk_1E86B02E0;
    v12[4] = &v13;
    [(MCMCodeSigningMapping *)self _onQueue_iterateGroupIdsWithKey:v6 fallBackKey:v8 noReferenceKey:v7 forAllIdentifiersUsingBlock:v12];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void __73__MCMCodeSigningMapping__onQueue_copyReferenceCountSetForContainerClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = 138412546;
        v14 = v5;
        v15 = 2112;
        v16 = v7;
        _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "Entitlements for identifier %@ references container IDs: %@", &v13, 0x16u);
      }

      v10 = *(*(*(a1 + 32) + 8) + 40);
      v11 = [v7 allObjects];
      [v10 addObjectsFromArray:v11];
    }

    else
    {
      v11 = container_log_handle_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412546;
        v14 = v5;
        v15 = 2112;
        v16 = v7;
        _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "identifier: %@ has non-array type of group container IDs: %@", &v13, 0x16u);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)copyReferenceCountSetForContainerClass:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4357;
  v14 = __Block_byref_object_dispose__4358;
  v15 = 0;
  v5 = [(MCMCodeSigningMapping *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__MCMCodeSigningMapping_copyReferenceCountSetForContainerClass___block_invoke;
  v9[3] = &unk_1E86B0708;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = a3;
  dispatch_sync(v5, v9);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __64__MCMCodeSigningMapping_copyReferenceCountSetForContainerClass___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _onQueue_copyReferenceCountSetForContainerClass:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)invalidateCodeSigningInfoForIdentifier:(id)a3 withError:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = [(MCMCodeSigningMapping *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__MCMCodeSigningMapping_invalidateCodeSigningInfoForIdentifier_withError___block_invoke;
  block[3] = &unk_1E86B0088;
  block[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(v7, block);

  LOBYTE(self) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  v9 = *MEMORY[0x1E69E9840];
  return self & 1;
}

uint64_t __74__MCMCodeSigningMapping_invalidateCodeSigningInfoForIdentifier_withError___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _onQueue_invalidateCodeSigningInfoForIdentifier:*(a1 + 40) error:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)invalidateCodeSigningInfoForIdentifierAndItsChildren:(id)a3 withError:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4357;
  v20 = __Block_byref_object_dispose__4358;
  v21 = 0;
  v7 = [(MCMCodeSigningMapping *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__MCMCodeSigningMapping_invalidateCodeSigningInfoForIdentifierAndItsChildren_withError___block_invoke;
  v13[3] = &unk_1E86B0DB8;
  v15 = &v16;
  v13[4] = self;
  v8 = v6;
  v14 = v8;
  dispatch_sync(v7, v13);

  v9 = v17[5];
  if (a4 && v9)
  {
    *a4 = v9;
    v9 = v17[5];
  }

  v10 = v9 == 0;

  _Block_object_dispose(&v16, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __88__MCMCodeSigningMapping_invalidateCodeSigningInfoForIdentifierAndItsChildren_withError___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _onQueue_invalidateCodeSigningInfoForIdentifierAndItsChildren:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_onQueue_identifiersWithError:(id *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
  v7 = [v6 identifiersWithError:a3];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)identifiersWithError:(id *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4357;
  v21 = __Block_byref_object_dispose__4358;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4357;
  v15 = __Block_byref_object_dispose__4358;
  v16 = 0;
  v5 = [(MCMCodeSigningMapping *)self queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__MCMCodeSigningMapping_identifiersWithError___block_invoke;
  v10[3] = &unk_1E86B0730;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = &v17;
  dispatch_sync(v5, v10);

  v6 = v12[5];
  if (a3 && !v6)
  {
    *a3 = v18[5];
    v6 = v12[5];
  }

  v7 = v6;
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __46__MCMCodeSigningMapping_identifiersWithError___block_invoke(void *a1)
{
  obj[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj[0] = *(v3 + 40);
  v4 = [v2 _onQueue_identifiersWithError:obj];
  objc_storeStrong((v3 + 40), obj[0]);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *MEMORY[0x1E69E9840];
}

- (unint64_t)invalidateCodeSigningInfoForAppsWithoutDataContainer
{
  v74 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v3 = [(MCMCodeSigningMapping *)self identifiersWithError:&v53];
  v35 = v53;
  if (!v3)
  {
    v4 = container_log_handle_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v64) = 138412290;
      *(&v64 + 4) = v35;
      _os_log_error_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_ERROR, "Failed to enumerate containers when invalidating code signing info: %@", &v64, 0xCu);
    }
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v3;
  v39 = [obj countByEnumeratingWithState:&v70 objects:v69 count:16];
  if (v39)
  {
    v38 = *v71;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v71 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v70 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        *&v64 = 0;
        *(&v64 + 1) = &v64;
        v65 = 0x3032000000;
        v66 = __Block_byref_object_copy__4357;
        v67 = __Block_byref_object_dispose__4358;
        v68 = 0;
        v47 = 0;
        v48 = &v47;
        v49 = 0x3032000000;
        v50 = __Block_byref_object_copy__4357;
        v51 = __Block_byref_object_dispose__4358;
        v52 = 0;
        v8 = [(MCMCodeSigningMapping *)self queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __77__MCMCodeSigningMapping_invalidateCodeSigningInfoForAppsWithoutDataContainer__block_invoke;
        block[3] = &unk_1E86B0848;
        block[4] = self;
        block[5] = v6;
        block[6] = &v64;
        block[7] = &v47;
        dispatch_sync(v8, block);

        if (v48[5])
        {
          v9 = container_log_handle_for_category();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v30 = v48[5];
            *v58 = 138412546;
            *&v58[4] = v6;
            *&v58[12] = 2112;
            *&v58[14] = v30;
            _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Error fetching code sign info for %@ to check for invalidation: %@", v58, 0x16u);
          }
        }

        else
        {
          v10 = [*(*(&v64 + 1) + 40) isRegisteredByCaller];
          v11 = 0;
          v12 = [*(*(&v64 + 1) + 40) dataContainerClass] - 3;
          v37 = v12;
          if (*(*(&v64 + 1) + 40) && v12 <= 3)
          {
            v13 = [(MCMCodeSigningMapping *)self childParentMapCache];
            v14 = [v13 parentIdentifierForChildIdentifier:v6];

            v11 = v14 != 0;
          }

          v15 = container_log_handle_for_category();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v31 = *(*(&v64 + 1) + 40);
            *v58 = 138413314;
            *&v58[4] = v6;
            *&v58[12] = 2048;
            *&v58[14] = v31;
            *&v58[22] = 1024;
            v59 = v10;
            v60 = 1024;
            v61 = v37 < 4;
            v62 = 1024;
            v63 = v11;
            _os_log_debug_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_DEBUG, "Checking for invalidation: identifier = %@, codeSigningEntry = <%p>, isRegisteredByCaller = %d, isPlugIn = %d, hasParent = %d", v58, 0x28u);
          }

          if (!(v10 & 1 | (v37 < 4 && v11)))
          {
            v16 = 0;
            v17 = 0;
            *v58 = 0;
            *&v58[8] = v58;
            *&v58[16] = 0x2020000000;
            LOBYTE(v59) = 0;
            do
            {
              v18 = qword_1DF3BE560[v17];
              v19 = containermanager_copy_global_configuration();
              v20 = [v19 staticConfig];
              v21 = [v20 configForContainerClass:v18];

              v22 = [(MCMCodeSigningMapping *)self userIdentityCache];
              v42[0] = MEMORY[0x1E69E9820];
              v42[1] = 3221225472;
              v42[2] = __77__MCMCodeSigningMapping_invalidateCodeSigningInfoForAppsWithoutDataContainer__block_invoke_102;
              v42[3] = &unk_1E86B0290;
              v45 = v58;
              v42[4] = v6;
              v23 = v21;
              v43 = v23;
              v44 = self;
              [v22 forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v42];

              LOBYTE(v20) = *(*&v58[8] + 24);
              v24 = v16 | v20;
              v16 = 1;
              v17 = 1;
            }

            while ((v24 & 1) == 0);
            if ((*(*&v58[8] + 24) & 1) == 0)
            {
              v25 = container_log_handle_for_category();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v55 = v6;
                v56 = 1024;
                v57 = v37 < 4;
                _os_log_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_DEFAULT, "Invalidating: identifier = %@, isPlugin = %d", buf, 0x12u);
              }

              v26 = (v48 + 5);
              v41 = v48[5];
              v27 = [(MCMCodeSigningMapping *)self invalidateCodeSigningInfoForIdentifierAndItsChildren:v6 withError:&v41];
              objc_storeStrong(v26, v41);
              if (!v27)
              {
                v40[0] = MEMORY[0x1E69E9820];
                v40[1] = 3221225472;
                v40[2] = __77__MCMCodeSigningMapping_invalidateCodeSigningInfoForAppsWithoutDataContainer__block_invoke_104;
                v40[3] = &unk_1E86B02B8;
                v40[4] = v6;
                v40[5] = &v47;
                v28 = __77__MCMCodeSigningMapping_invalidateCodeSigningInfoForAppsWithoutDataContainer__block_invoke_104(v40);
                v29 = v48[5];
                v48[5] = v28;
              }
            }

            _Block_object_dispose(v58, 8);
          }
        }

        _Block_object_dispose(&v47, 8);

        _Block_object_dispose(&v64, 8);
        objc_autoreleasePoolPop(v7);
      }

      v39 = [obj countByEnumeratingWithState:&v70 objects:v69 count:16];
    }

    while (v39);
  }

  if (v35)
  {
    v32 = [v35 code];
  }

  else
  {
    v32 = 1;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

void __77__MCMCodeSigningMapping_invalidateCodeSigningInfoForAppsWithoutDataContainer__block_invoke(uint64_t a1)
{
  obj[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) codeSigningMappingDB];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj[0] = *(v4 + 40);
  v5 = [v2 codeSigningEntryWithIdentifier:v3 error:obj];
  objc_storeStrong((v4 + 40), obj[0]);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x1E69E9840];
}

void __77__MCMCodeSigningMapping_invalidateCodeSigningInfoForAppsWithoutDataContainer__block_invoke_102(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(*(a1[7] + 8) + 24))
  {
    v2 = *MEMORY[0x1E69E9840];
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = a2;
    v9 = [v7 userIdentityCache];
    v12 = [MCMContainerIdentity containerIdentityWithUserIdentity:v8 identifier:v5 containerConfig:v6 platform:0 transient:0 userIdentityCache:v9 error:0];

    if (v12)
    {
      v10 = [gContainerCache entryForContainerIdentity:v12 error:0];
      if (v10)
      {
        *(*(a1[7] + 8) + 24) = 1;
      }
    }

    v11 = *MEMORY[0x1E69E9840];
  }
}

id __77__MCMCodeSigningMapping_invalidateCodeSigningInfoForAppsWithoutDataContainer__block_invoke_104(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [v2 initWithFormat:@"Failed to invalidate code signing info for %@ : %@", v3, *(*(*(a1 + 40) + 8) + 40)];
  v22[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMCodeSigningMapping invalidateCodeSigningInfoForAppsWithoutDataContainer]_block_invoke"];
  v23[0] = v5;
  v23[1] = &unk_1F5A76618;
  v6 = *MEMORY[0x1E696A578];
  v22[1] = @"SourceFileLine";
  v22[2] = v6;
  v23[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v19 = v4;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v19 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:66 userInfo:v9];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)entitlementsForIdentifier:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__4357;
  v44 = __Block_byref_object_dispose__4358;
  v45 = 0;
  v5 = [(MCMCodeSigningMapping *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MCMCodeSigningMapping_entitlementsForIdentifier___block_invoke;
  block[3] = &unk_1E86B0DB8;
  v39 = &v40;
  block[4] = self;
  v6 = v4;
  v38 = v6;
  dispatch_sync(v5, block);

  if (!v41[5])
  {
    v7 = containermanager_copy_global_configuration();
    v8 = [v7 dispositionForContainerClass:1] == 1;

    if (v8)
    {
      v9 = containermanager_copy_global_configuration();
      v10 = [v9 staticConfig];
      v11 = [v10 configForContainerClass:1];

      v12 = +[MCMUserIdentityCache defaultUserIdentity];
      v13 = [(MCMCodeSigningMapping *)self userIdentityCache];
      v14 = [MCMContainerIdentity containerIdentityWithUserIdentity:v12 identifier:v6 containerConfig:v11 platform:0 transient:0 userIdentityCache:v13 error:0];

      if (v14)
      {
        v33 = [gContainerCache entryForContainerIdentity:v14 error:0];
        v15 = [v33 metadataWithError:0];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 info];
          v18 = [v17 objectForKeyedSubscript:@"com.apple.MobileInstallation.CachedCodeSigningInfo"];
          objc_opt_class();
          v19 = v18;
          if (objc_opt_isKindOfClass())
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }

          if (v20)
          {
            v21 = [v20 mutableCopy];
            v22 = container_log_handle_for_category();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v32 = [v16 identifier];
              *buf = 138412290;
              v47 = v32;
              _os_log_debug_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_DEBUG, "Migrating code signing info from bundle container upon request for %@", buf, 0xCu);
            }

            v23 = [v20 objectForKeyedSubscript:@"Entitlements"];
            [v21 setObject:v23 forKeyedSubscript:@"com.apple.MobileContainerManager.Entitlements"];

            v24 = [[MCMCodeSigningEntry alloc] initWithCodeSigningInfo:v21 andDataContainerClass:2];
            v25 = [(MCMCodeSigningMapping *)self queue];
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __51__MCMCodeSigningMapping_entitlementsForIdentifier___block_invoke_101;
            v34[3] = &unk_1E86B0898;
            v34[4] = self;
            v26 = v24;
            v35 = v26;
            v36 = v16;
            dispatch_sync(v25, v34);

            v27 = [v21 objectForKeyedSubscript:@"com.apple.MobileContainerManager.Entitlements"];
            v28 = v41[5];
            v41[5] = v27;
          }
        }
      }
    }
  }

  v29 = v41[5];

  _Block_object_dispose(&v40, 8);
  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

uint64_t __51__MCMCodeSigningMapping_entitlementsForIdentifier___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _onQueue_entitlementsForIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

void __51__MCMCodeSigningMapping_entitlementsForIdentifier___block_invoke_101(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) codeSigningMappingDB];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) identifier];
  v10 = 0;
  v5 = [v2 addCodeSigningEntry:v3 withIdentifier:v4 error:&v10];
  v6 = v10;

  if ((v5 & 1) == 0)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 48) identifier];
      *buf = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Failed to write code signing info to DB for %@ : %@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)getCodeSigningInfoForIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4357;
  v18 = __Block_byref_object_dispose__4358;
  v19 = 0;
  v5 = [(MCMCodeSigningMapping *)self entitlementsForIdentifier:v4];
  v6 = [(MCMCodeSigningMapping *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__MCMCodeSigningMapping_getCodeSigningInfoForIdentifier___block_invoke;
  v11[3] = &unk_1E86B0DB8;
  v12 = v4;
  v13 = &v14;
  v11[4] = self;
  v7 = v4;
  dispatch_sync(v6, v11);

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

uint64_t __57__MCMCodeSigningMapping_getCodeSigningInfoForIdentifier___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _onQueue_codeSigningInfoForIdentifier:*(a1 + 40) externalRequest:1];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

- (id)processCodeSigningInfo:(id)a3 identifier:(id)a4 options:(id)a5 error:(id *)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__4357;
  v40 = __Block_byref_object_dispose__4358;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__4357;
  v34 = __Block_byref_object_dispose__4358;
  v35 = 0;
  v13 = [(MCMCodeSigningMapping *)self entitlementsForIdentifier:v11];
  v14 = [(MCMCodeSigningMapping *)self queue];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __73__MCMCodeSigningMapping_processCodeSigningInfo_identifier_options_error___block_invoke;
  v23[3] = &unk_1E86B0268;
  v23[4] = self;
  v15 = v10;
  v24 = v15;
  v16 = v11;
  v25 = v16;
  v17 = v12;
  v26 = v17;
  v18 = v13;
  v27 = v18;
  v28 = &v36;
  v29 = &v30;
  dispatch_sync(v14, v23);

  v19 = v31;
  if (a6 && !v31[5])
  {
    *a6 = v37[5];
    v19 = v31;
  }

  v20 = v19[5];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

void __73__MCMCodeSigningMapping_processCodeSigningInfo_identifier_options_error___block_invoke(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[8];
  v4 = *(a1[9] + 8);
  v5 = a1[6];
  v6 = a1[7];
  v9[0] = *(v4 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__MCMCodeSigningMapping_processCodeSigningInfo_identifier_options_error___block_invoke_2;
  v8[3] = &unk_1E86B0240;
  v8[4] = a1[10];
  [v2 _onQueue_processCodeSigningInfo:v1 identifier:v5 options:v6 oldEntitlements:v3 error:v9 reconcileHandler:v8];
  objc_storeStrong((v4 + 40), v9[0]);
  v7 = *MEMORY[0x1E69E9840];
}

void __73__MCMCodeSigningMapping_processCodeSigningInfo_identifier_options_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  v3 = (*(*(a1 + 32) + 8) + 40);

  objc_storeStrong(v3, a2);
}

- (id)processCallerRegisteredEntitlements:(id)a3 identifier:(id)a4 error:(id *)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v18 = [[MCMError alloc] initWithErrorType:18];
    v10 = 0;
    v19 = 0;
    v12 = 0;
    if (!a5)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v39 = 0;
  v10 = [(MCMCodeSigningMapping *)self codeSigningEntryForIdentifier:v9 withError:&v39];
  v11 = v39;
  v12 = v11;
  if (!v10)
  {
    v20 = [v11 domain];
    if ([v20 isEqualToString:@"MCMErrorDomain"])
    {
      v21 = [v12 code];

      if (v21 == 67)
      {
        goto LABEL_3;
      }

      if (v12)
      {
        goto LABEL_12;
      }
    }

    else
    {

      if (v12)
      {
LABEL_12:
        v22 = [v12 domain];
        v23 = [v22 isEqual:@"MCMErrorDomain"];

        if (v23)
        {
          v24 = [MCMError alloc];
          v25 = [v12 code];
          v26 = v24;
LABEL_30:
          v34 = [(MCMError *)v26 initWithErrorType:v25];
LABEL_31:
          v18 = v34;
          v10 = 0;
          v19 = 0;
          if (!a5)
          {
            goto LABEL_34;
          }

          goto LABEL_32;
        }

        v32 = [v12 domain];
        v33 = [v32 isEqual:@"MCMErrorDomain"];

        v26 = [MCMError alloc];
        if (v33)
        {
          v34 = -[MCMError initWithErrorType:category:path:POSIXerrno:](v26, "initWithErrorType:category:path:POSIXerrno:", 40, 1, 0, [v12 code]);
          goto LABEL_31;
        }

LABEL_29:
        v25 = 40;
        goto LABEL_30;
      }
    }

    v26 = [MCMError alloc];
    goto LABEL_29;
  }

LABEL_3:
  v13 = [v10 codeSigningInfo];

  if (v13)
  {
    if (![v10 isRegisteredByCaller])
    {
      v19 = objc_opt_new();
LABEL_21:
      v18 = 0;
      goto LABEL_34;
    }

    v14 = [v10 codeSigningInfo];
    v15 = [v14 objectForKeyedSubscript:@"com.apple.MobileContainerManager.Entitlements"];
    objc_opt_class();
    v16 = v15;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v27 = [v8 rawEntitlements];
      v28 = [v17 isEqualToDictionary:v27];

      if (v28)
      {
        v19 = objc_opt_new();

        goto LABEL_21;
      }
    }

    v29 = container_log_handle_for_category();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v9;
      _os_log_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_DEFAULT, "%@ has changed entitlements. Re-registering.", buf, 0xCu);
    }
  }

  v40 = @"com.apple.MobileContainerManager.Entitlements";
  v30 = [v8 rawEntitlements];
  v41 = v30;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v38 = 0;
  v19 = [(MCMCodeSigningMapping *)self processCodeSigningInfo:v31 identifier:v9 options:&unk_1F5A75AC8 error:&v38];
  v18 = v38;

  if (a5)
  {
LABEL_32:
    if (v18)
    {
      v35 = v18;
      *a5 = v18;
    }
  }

LABEL_34:

  v36 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)systemGroupIdentifiersForIdentifier:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCodeSigningMapping *)self entitlementsForIdentifier:a3];
  v4 = [v3 systemGroupIdentifiers];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)appGroupIdentifiersForIdentifier:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCodeSigningMapping *)self entitlementsForIdentifier:a3];
  v4 = [v3 appGroupIdentifiers];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (unint64_t)dataContainerTypeForIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [(MCMCodeSigningMapping *)self queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__MCMCodeSigningMapping_dataContainerTypeForIdentifier___block_invoke;
  v10[3] = &unk_1E86B0DB8;
  v11 = v4;
  v12 = &v13;
  v10[4] = self;
  v6 = v4;
  dispatch_sync(v5, v10);

  v7 = v14[3];
  _Block_object_dispose(&v13, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __56__MCMCodeSigningMapping_dataContainerTypeForIdentifier___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _onQueue_dataContainerTypeForIdentifier:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)identifierHasSystemContainer:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCodeSigningMapping *)self entitlementsForIdentifier:a3];
  v4 = [v3 hasSystemContainer];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)identifierHasCallerRegisteredEntitlements:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(MCMCodeSigningMapping *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__MCMCodeSigningMapping_identifierHasCallerRegisteredEntitlements___block_invoke;
  v9[3] = &unk_1E86B0DB8;
  v10 = v4;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  dispatch_sync(v5, v9);

  LOBYTE(v4) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v4 & 1;
}

uint64_t __67__MCMCodeSigningMapping_identifierHasCallerRegisteredEntitlements___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _onQueue_identifierHasCallerRegisteredEntitlements:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)codeSigningEntryForIdentifier:(id)a3 withError:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4357;
  v20 = __Block_byref_object_dispose__4358;
  v21 = 0;
  v7 = [(MCMCodeSigningMapping *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MCMCodeSigningMapping_codeSigningEntryForIdentifier_withError___block_invoke;
  block[3] = &unk_1E86B0088;
  block[4] = self;
  v13 = v6;
  v14 = &v16;
  v15 = a4;
  v8 = v6;
  dispatch_sync(v7, block);

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t __65__MCMCodeSigningMapping_codeSigningEntryForIdentifier_withError___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _onQueue_codeSigningEntryForIdentifier:*(a1 + 40) withError:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

- (id)removeCodeSigningDictionaryForIdentifiers:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v28;
    *&v8 = 138412546;
    v20 = v8;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v27 + 1) + 8 * v12);
        v21 = v13;
        v15 = [(MCMCodeSigningMapping *)self processCodeSigningInfo:0 identifier:v14 options:0 error:&v21, v20];
        v10 = v21;

        if (v15)
        {
          [v5 unionSet:v15];
        }

        else
        {
          v16 = container_log_handle_for_category();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v23 = v14;
            v24 = 2112;
            v25 = v10;
            _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to clear entitlements for %@ : %@", buf, 0x16u);
          }
        }

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [v6 countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v9);
  }

  v17 = [v5 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)groupContainerIdentifiersAssociatedWithIdentifier:(id)a3 containerClass:(unint64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [(MCMCodeSigningMapping *)self entitlementsForIdentifier:a3];
  v6 = v5;
  if (a4 == 13)
  {
    v8 = containermanager_copy_global_configuration();
    v9 = [v8 systemContainerMode];

    if (v9)
    {
      v7 = [v6 systemGroupIdentifiers];
LABEL_6:
      v10 = v7;
      if (v7)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a4 == 7)
  {
    v7 = [v5 appGroupIdentifiers];
    goto LABEL_6;
  }

  v10 = objc_opt_new();
LABEL_8:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_onQueue_iterateGroupIdsWithKey:(id)a3 fallBackKey:(id)a4 noReferenceKey:(id)a5 forAllIdentifiersUsingBlock:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v14);

  v15 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __112__MCMCodeSigningMapping__onQueue_iterateGroupIdsWithKey_fallBackKey_noReferenceKey_forAllIdentifiersUsingBlock___block_invoke;
  v23[3] = &unk_1E86B0218;
  v23[4] = self;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  v20 = [v15 enumerateIdentifiersAndCodeSigningInfoUsingBlock:v23];

  if (v20)
  {
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v20;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Failed to enumerate code signing info: %@", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __112__MCMCodeSigningMapping__onQueue_iterateGroupIdsWithKey_fallBackKey_noReferenceKey_forAllIdentifiersUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) _entitlementsFromCodeSigningEntry:a3];
  v7 = [MEMORY[0x1E695DFA8] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = a1;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v24;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 = [MCMEntitlements copyGroupEntitlementForIdentifier:v5 entitlements:v6 groupKey:*(*(&v23 + 1) + 8 * v13)];

        [v7 unionSet:v11];
        ++v13;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  if (v21[6] && ![v7 count])
  {
    v15 = [MCMEntitlements copyGroupEntitlementForIdentifier:v5 entitlements:v6 groupKey:v21[6]];

    v16 = [v15 mutableCopy];
    v11 = v15;
    v7 = v16;
  }

  if (v21[7] && [v7 count])
  {
    v17 = [MCMEntitlements copyGroupEntitlementForIdentifier:v5 entitlements:v6 groupKey:v21[7]];

    [v7 minusSet:v17];
    v11 = v17;
  }

  if (![v7 count])
  {

    v7 = 0;
  }

  v18 = v21[8];
  v19 = [v7 copy];
  (*(v18 + 16))(v18, v5, v19);

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)_onQueue_invalidateCodeSigningInfoForIdentifier:(id)a3 error:(id *)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
  LOBYTE(a4) = [v8 invalidateCodeSigningWithIdentifier:v6 error:a4];

  v9 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)_onQueue_invalidateCodeSigningInfoForIdentifierAndItsChildren:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
  v11[0] = 0;
  [v6 invalidateCodeSigningForIdentifierAndAllChildren:v4 error:v11];

  v7 = v11[0];
  v8 = v11[0];

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)_onQueue_processCodeSigningInfo:(id)a3 identifier:(id)a4 options:(id)a5 oldEntitlements:(id)a6 error:(id *)a7 reconcileHandler:(id)a8
{
  v109 = *MEMORY[0x1E69E9840];
  v81 = a3;
  v84 = a4;
  v85 = a5;
  v79 = a6;
  v75 = a8;
  v78 = self;
  v13 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v13);

  v77 = objc_opt_new();
  v76 = objc_opt_new();
  v80 = objc_opt_new();
  v82 = objc_opt_new();
  v83 = objc_opt_new();
  if (!v84)
  {
    v22 = 0;
    v23 = [[MCMError alloc] initWithErrorType:18];
    v24 = 0;
    v89 = 0;
    v90 = 0;
    v86 = 0;
    v88 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
LABEL_91:
    v32 = 0;
    if (a7 && v23)
    {
      v69 = v23;
      v32 = 0;
      *a7 = v23;
    }

    goto LABEL_94;
  }

  v14 = v85;
  if (!v85)
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  v85 = v14;
  v15 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
  v98 = 0;
  v90 = [v15 codeSigningEntryWithIdentifier:v84 error:&v98];
  v87 = v98;

  if (!v90)
  {
    v29 = [v87 domain];
    if ([v29 isEqualToString:@"MCMErrorDomain"])
    {
      v30 = [v87 code] == 67;

      if (v30)
      {

        v87 = 0;
        goto LABEL_5;
      }
    }

    else
    {
    }

    v31 = container_log_handle_for_category();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v100 = v84;
      v101 = 2112;
      v102 = v87;
      _os_log_error_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_ERROR, "Error retrieving entry from DB with identifier %@ : %@", buf, 0x16u);
    }

    v22 = 0;
    v24 = 0;
    v89 = 0;
    v90 = 0;
    v86 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v32 = 0;
LABEL_78:
    v19 = v87;
    goto LABEL_79;
  }

LABEL_5:
  v16 = [v85 objectForKeyedSubscript:@"com.apple.MobileContainerManager.DataContainerClass"];
  [v83 setDataContainerClass:{objc_msgSend(v16, "unsignedLongLongValue")}];

  v86 = [v85 objectForKeyedSubscript:@"com.apple.MobileContainerManager.ParentBundleID"];
  if (!v86)
  {
LABEL_29:
    v37 = [v85 objectForKeyedSubscript:@"RegByCaller"];
    objc_opt_class();
    v38 = v37;
    if (objc_opt_isKindOfClass())
    {
      v89 = v38;
    }

    else
    {
      v89 = 0;
    }

    if (v89 && [v89 BOOLValue])
    {
      [v83 setRegisteredByCaller:1];
    }

    v39 = [v85 objectForKeyedSubscript:@"com.apple.MobileContainerManager.PlaceholderEntitlements"];
    objc_opt_class();
    v40 = v39;
    if (objc_opt_isKindOfClass())
    {
      v24 = v40;
    }

    else
    {
      v24 = 0;
    }

    if (v24 && [v24 BOOLValue])
    {
      [v83 setPlaceholder:1];
    }

    v41 = [v85 objectForKeyedSubscript:@"com.apple.MobileContainerManager.AdvanceCopy"];
    objc_opt_class();
    v42 = v41;
    if (objc_opt_isKindOfClass())
    {
      v22 = v42;
    }

    else
    {
      v22 = 0;
    }

    if (v22 && [v22 BOOLValue])
    {
      [v83 setAdvanceCopy:1];
    }

    [v83 setCodeSigningInfo:v81];
    if (v90 && ([v90 isEqual:v83] & 1) != 0)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v72 = [v81 objectForKeyedSubscript:@"com.apple.MobileContainerManager.Entitlements"];
      v43 = [MCMEntitlements alloc];
      v44 = containermanager_copy_global_configuration();
      v45 = [v44 staticConfig];
      v46 = [v45 containerConfigMap];
      v73 = [(MCMEntitlements *)v43 initWithEntitlements:v72 clientIdentifier:v84 containerConfigMap:v46];

      v47 = containermanager_copy_global_configuration();
      v48 = [v47 systemContainerMode] == 0;

      if (!v48 && [v79 hasSystemContainer] && !-[MCMEntitlements hasSystemContainer](v73, "hasSystemContainer"))
      {
        v49 = containermanager_copy_global_configuration();
        v50 = [v49 staticConfig];
        v51 = [v50 configForContainerClass:12];

        v52 = [(MCMCodeSigningMapping *)v78 userIdentityCache];
        v53 = [MCMContainerIdentity containerIdentityWithIdentifier:v84 containerConfig:v51 platform:0 userIdentityCache:v52 error:0];

        if (v53)
        {
          [v77 addObject:v53];
        }

        else
        {
          v55 = container_log_handle_for_category();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v100 = v84;
            v101 = 2112;
            v102 = v87;
            _os_log_error_impl(&dword_1DF2C3000, v55, OS_LOG_TYPE_ERROR, "Failed to create system container identity for %@: %@", buf, 0x16u);
          }

          v87 = 0;
        }
      }

      v28 = [(MCMEntitlements *)v73 appGroupIdentifiers];
      v26 = [v79 appGroupIdentifiers];
      if (v26 | v28)
      {
        v94[0] = MEMORY[0x1E69E9820];
        v94[1] = 3221225472;
        v94[2] = __115__MCMCodeSigningMapping__onQueue_processCodeSigningInfo_identifier_options_oldEntitlements_error_reconcileHandler___block_invoke;
        v94[3] = &unk_1E86B01F0;
        v95 = v77;
        v96 = v76;
        [(MCMCodeSigningMapping *)v78 _onQueue_handleChangeFromOldGroupContainerIds:v26 toNewGroupContainerIds:v28 containerClass:7 reconcileHandler:v94];
      }

      v56 = containermanager_copy_global_configuration();
      v57 = [v56 systemContainerMode] == 0;

      if (v57 || (-[MCMEntitlements systemGroupIdentifiers](v73, "systemGroupIdentifiers"), v58 = objc_claimAutoreleasedReturnValue(), [v79 systemGroupIdentifiers], v59 = objc_claimAutoreleasedReturnValue(), !(v59 | v58)))
      {
        v25 = 0;
        v27 = 0;
      }

      else
      {
        v91[0] = MEMORY[0x1E69E9820];
        v91[1] = 3221225472;
        v91[2] = __115__MCMCodeSigningMapping__onQueue_processCodeSigningInfo_identifier_options_oldEntitlements_error_reconcileHandler___block_invoke_2;
        v91[3] = &unk_1E86B01F0;
        v92 = v77;
        v93 = v76;
        [(MCMCodeSigningMapping *)v78 _onQueue_handleChangeFromOldGroupContainerIds:v59 toNewGroupContainerIds:v58 containerClass:13 reconcileHandler:v91];

        v25 = v59;
        v27 = v58;
      }

      v60 = container_log_handle_for_category();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413314;
        v100 = v84;
        v101 = 2112;
        v102 = v26;
        v103 = 2112;
        v104 = v28;
        v105 = 2112;
        v106 = v25;
        v107 = 2112;
        v108 = v27;
        _os_log_impl(&dword_1DF2C3000, v60, OS_LOG_TYPE_DEFAULT, "Reconciled [%@]; old app groups: %@, new app groups: %@, old system groups: %@, new system groups: %@", buf, 0x34u);
      }

      if (v81)
      {
        v61 = v83;
      }

      else
      {
        v62 = objc_opt_new();

        v61 = v62;
      }

      v83 = v61;
      [v80 addObject:?];
      [v82 addObject:v84];
    }

    if ([v82 count])
    {
      v19 = [(MCMCodeSigningMapping *)v78 _onQueue_setCodeSigningDictionaryValues:v80 forIdentifiers:v82];

      v32 = 1;
      goto LABEL_79;
    }

    v32 = 1;
    goto LABEL_78;
  }

  v17 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
  v97 = v87;
  v18 = [v17 codeSigningEntryWithIdentifier:v86 error:&v97];
  v19 = v97;

  if (v18)
  {
    v87 = v19;
    goto LABEL_8;
  }

  v33 = [v19 domain];
  if ([v33 isEqualToString:@"MCMErrorDomain"])
  {
    v34 = [v19 code] == 67;

    if (v34)
    {

      v87 = 0;
LABEL_8:
      v20 = [v18 childBundleIdentifiers];
      v21 = [v20 mutableCopy];

      if (v21)
      {
        if (!v18)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v21 = objc_opt_new();
        if (!v18)
        {
LABEL_23:
          v18 = objc_opt_new();
        }
      }

      if (([v21 containsObject:v84] & 1) == 0)
      {
        [v21 addObject:v84];
        v35 = [v21 copy];
        [v18 setChildBundleIdentifiers:v35];

        v36 = container_log_handle_for_category();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v100 = v21;
          v101 = 2112;
          v102 = v86;
          v103 = 2112;
          v104 = v84;
          _os_log_debug_impl(&dword_1DF2C3000, v36, OS_LOG_TYPE_DEBUG, "Staging Child Bundles: %@ for parent ID: %@ by appending: %@", buf, 0x20u);
        }

        [v80 addObject:v18];
        [v82 addObject:v86];
      }

      goto LABEL_29;
    }
  }

  else
  {
  }

  v54 = container_log_handle_for_category();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v100 = v84;
    v101 = 2112;
    v102 = v19;
    _os_log_error_impl(&dword_1DF2C3000, v54, OS_LOG_TYPE_ERROR, "Error retrieving entry from DB with identifier %@ : %@", buf, 0x16u);
  }

  v22 = 0;
  v24 = 0;
  v89 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v32 = 0;
LABEL_79:
  v88 = v19;
  if (v19)
  {
    v63 = [v19 domain];
    v64 = [v63 isEqual:@"MCMErrorDomain"];

    if (v64)
    {
      v65 = -[MCMError initWithErrorType:]([MCMError alloc], "initWithErrorType:", [v88 code]);
    }

    else
    {
      v67 = [v88 domain];
      v68 = [v67 isEqual:*MEMORY[0x1E696A798]];

      if (v68)
      {
        v65 = -[MCMError initWithErrorType:category:path:POSIXerrno:]([MCMError alloc], "initWithErrorType:category:path:POSIXerrno:", 40, 1, 0, [v88 code]);
      }

      else
      {
        v65 = [[MCMError alloc] initWithErrorType:40];
      }
    }

    v23 = v65;
    goto LABEL_91;
  }

  v66 = !v32;
  if (!v75)
  {
    v66 = 1;
  }

  if (v66)
  {
    v23 = 0;
    v88 = 0;
  }

  else
  {
    v75[2]();
    v23 = 0;
    v88 = 0;
    v32 = 1;
  }

LABEL_94:

  v70 = *MEMORY[0x1E69E9840];
  return v32;
}

void __115__MCMCodeSigningMapping__onQueue_processCodeSigningInfo_identifier_options_oldEntitlements_error_reconcileHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v7 = a3;
  [v5 unionSet:a2];
  [*(a1 + 40) unionSet:v7];
  v6 = *MEMORY[0x1E69E9840];
}

void __115__MCMCodeSigningMapping__onQueue_processCodeSigningInfo_identifier_options_oldEntitlements_error_reconcileHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v7 = a3;
  [v5 unionSet:a2];
  [*(a1 + 40) unionSet:v7];
  v6 = *MEMORY[0x1E69E9840];
}

id __115__MCMCodeSigningMapping__onQueue_processCodeSigningInfo_identifier_options_oldEntitlements_error_reconcileHandler___block_invoke_93(uint64_t a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [v3 callStackSymbols];
  v5 = [v2 initWithFormat:@"Got exception: %@ : %@", v3, v4];

  v15[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMCodeSigningMapping _onQueue_processCodeSigningInfo:identifier:options:oldEntitlements:error:reconcileHandler:]_block_invoke"];
  v16[0] = v6;
  v16[1] = &unk_1F5A76600;
  v7 = *MEMORY[0x1E696A578];
  v15[1] = @"SourceFileLine";
  v15[2] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:40 userInfo:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (unint64_t)_onQueue_dataContainerTypeForIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
  v15 = 0;
  v7 = [v6 codeSigningEntryWithIdentifier:v4 error:&v15];
  v8 = v15;

  if (v7)
  {
    goto LABEL_2;
  }

  v10 = [v8 domain];
  if ([v10 isEqualToString:@"MCMErrorDomain"])
  {
    v11 = [v8 code];

    if (v11 == 67)
    {
LABEL_2:
      v9 = [v7 dataContainerClass];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v12 = container_log_handle_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v17 = v4;
    v18 = 2112;
    v19 = v8;
    _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Error retrieving entry from DB with identifier %@ : %@", buf, 0x16u);
  }

  v9 = 0;
LABEL_10:

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_onQueue_identifierHasCallerRegisteredEntitlements:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
  v15 = 0;
  v7 = [v6 codeSigningEntryWithIdentifier:v4 error:&v15];
  v8 = v15;

  if (v7)
  {
    goto LABEL_2;
  }

  v10 = [v8 domain];
  if ([v10 isEqualToString:@"MCMErrorDomain"])
  {
    v11 = [v8 code];

    if (v11 == 67)
    {
LABEL_2:
      v9 = [v7 isRegisteredByCaller];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v12 = container_log_handle_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v17 = v4;
    v18 = 2112;
    v19 = v8;
    _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Error retrieving entry from DB with identifier %@ : %@", buf, 0x16u);
  }

  v9 = 0;
LABEL_10:

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)_onQueue_codeSigningEntryForIdentifier:(id)a3 withError:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
  v17 = 0;
  v9 = [v8 codeSigningEntryWithIdentifier:v6 error:&v17];
  v10 = v17;

  if (!v9)
  {
    v11 = [v10 domain];
    if ([v11 isEqualToString:@"MCMErrorDomain"])
    {
      v12 = [v10 code];

      if (v12 == 67)
      {
        if (!a4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else
    {
    }

    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v10;
      _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Error retrieving entry from DB with identifier %@ : %@", buf, 0x16u);
    }

    if (a4)
    {
LABEL_5:
      v13 = v10;
      *a4 = v10;
    }
  }

LABEL_6:

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_entitlementsFromCodeSigningEntry:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCodeSigningMapping *)self _codeSigningInfoForCodeSigningEntry:a3 externalRequest:0];
  v4 = [v3 objectForKeyedSubscript:@"com.apple.MobileContainerManager.Entitlements"];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_onQueue_entitlementsForIdentifier:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MCMCodeSigningMapping *)self _onQueue_codeSigningInfoForIdentifier:v4 externalRequest:0];
  v7 = [MCMEntitlements alloc];
  v8 = [v6 objectForKeyedSubscript:@"com.apple.MobileContainerManager.Entitlements"];
  v9 = containermanager_copy_global_configuration();
  v10 = [v9 staticConfig];
  v11 = [v10 containerConfigMap];
  v12 = [(MCMEntitlements *)v7 initWithEntitlements:v8 clientIdentifier:v4 containerConfigMap:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_codeSigningInfoForCodeSigningEntry:(id)a3 externalRequest:(BOOL)a4
{
  v4 = a4;
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v4 && (([v5 isPlaceholder] & 1) != 0 || (objc_msgSend(v6, "isAdvanceCopy") & 1) != 0 || (objc_msgSend(v6, "isInvalid") & 1) != 0 || (objc_msgSend(v6, "isRegisteredByKernel") & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 codeSigningInfo];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_onQueue_setCodeSigningDictionaryValues:(id)a3 forIdentifiers:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 count];
  if (v9 != [v7 count])
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __80__MCMCodeSigningMapping__onQueue_setCodeSigningDictionaryValues_forIdentifiers___block_invoke;
    v40[3] = &unk_1E86B0BE8;
    v41 = v6;
    v42 = v7;
    v11 = __80__MCMCodeSigningMapping__onQueue_setCodeSigningDictionaryValues_forIdentifiers___block_invoke(v40);

    v14 = v41;
    goto LABEL_31;
  }

  if (![v6 count] || !objc_msgSend(v6, "count"))
  {
    v11 = 0;
    goto LABEL_33;
  }

  v11 = 0;
  v12 = 0;
  *&v10 = 138412290;
  v35 = v10;
  while (1)
  {
    v13 = v11;
    v14 = [v6 objectAtIndex:{v12, v35}];
    v15 = [v7 objectAtIndex:v12];
    v16 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
    v39 = v11;
    v17 = [v16 codeSigningEntryWithIdentifier:v15 error:&v39];
    v11 = v39;

    if (v17)
    {
      goto LABEL_9;
    }

    v18 = [v11 domain];
    if (![v18 isEqualToString:@"MCMErrorDomain"])
    {
      break;
    }

    v19 = [v11 code];

    if (v19 != 67)
    {
      goto LABEL_37;
    }

    v11 = 0;
LABEL_9:
    v20 = [v14 codeSigningInfo];

    if (!v20)
    {

      v14 = 0;
    }

    if (!(v17 | v14) || ([v14 isEqual:v17] & 1) != 0)
    {
      goto LABEL_26;
    }

    v21 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
    v22 = v21;
    if (v14)
    {
      v38 = v11;
      v23 = [v21 addCodeSigningEntry:v14 withIdentifier:v15 error:&v38];
      v36 = v38;

      if (v23)
      {
        v24 = container_log_handle_for_category();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v44 = v15;
          v45 = 2112;
          v46 = v14;
          v25 = v24;
          v26 = "Set Code Signing Mapping for ID: %@ : %@";
          v27 = 22;
LABEL_20:
          _os_log_debug_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_DEBUG, v26, buf, v27);
        }
      }

      else
      {
        v24 = container_log_handle_for_category();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v44 = v15;
          v45 = 2112;
          v29 = v36;
          v46 = v36;
          v30 = v24;
          v31 = "Failed to write code signing info to DB for %@ : %@";
LABEL_29:
          _os_log_error_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x16u);
          goto LABEL_25;
        }
      }
    }

    else
    {
      v37 = v11;
      v28 = [v21 deleteCodeSigningEntryWithIdentifier:v15 error:&v37];
      v36 = v37;

      if (v28)
      {
        v24 = container_log_handle_for_category();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = v35;
          v44 = v15;
          v25 = v24;
          v26 = "Deleted Code Signing Mapping for ID: %@";
          v27 = 12;
          goto LABEL_20;
        }
      }

      else
      {
        v24 = container_log_handle_for_category();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v44 = v15;
          v45 = 2112;
          v29 = v36;
          v46 = v36;
          v30 = v24;
          v31 = "Failed to delete code signing info from DB for %@ : %@";
          goto LABEL_29;
        }
      }
    }

    v29 = v36;
LABEL_25:

    v11 = v29;
LABEL_26:

    if (++v12 >= [v6 count])
    {
      goto LABEL_33;
    }
  }

LABEL_37:
  v34 = container_log_handle_for_category();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v44 = v15;
    v45 = 2112;
    v46 = v11;
    _os_log_error_impl(&dword_1DF2C3000, v34, OS_LOG_TYPE_ERROR, "Error retrieving entry from DB with identifier %@ : %@", buf, 0x16u);
  }

LABEL_31:
LABEL_33:

  v32 = *MEMORY[0x1E69E9840];

  return v11;
}

id __80__MCMCodeSigningMapping__onQueue_setCodeSigningDictionaryValues_forIdentifiers___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't act on an invalid input: values count: %ld, IDs count: %ld", objc_msgSend(*(a1 + 32), "count"), objc_msgSend(*(a1 + 40), "count")];
  v11[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMCodeSigningMapping _onQueue_setCodeSigningDictionaryValues:forIdentifiers:]_block_invoke"];
  v12[0] = v2;
  v12[1] = &unk_1F5A765E8;
  v3 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v3;
  v12[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:60 userInfo:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_readCodeSigningMappingFromDiskAtURL:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v24 = 0;
  v4 = [MEMORY[0x1E695DF20] MCM_dictionaryWithContentsOfURL:v3 options:0 error:&v24];
  v5 = v24;
  v6 = v5;
  if (v4)
  {
    v7 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [v4 allKeys];
    v8 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v22 = v6;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = [MCMCodeSigningEntry alloc];
          v15 = [v4 objectForKeyedSubscript:v12];
          v16 = [(MCMCodeSigningEntry *)v14 initWithSerializedDictionary:v15];

          [v7 setObject:v16 forKeyedSubscript:v12];
          objc_autoreleasePoolPop(v13);
        }

        v9 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
      }

      while (v9);
      v6 = v22;
    }
  }

  else
  {
    v17 = [v5 domain];
    if ([v17 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v18 = [v6 code];

      if (v18 == 2)
      {
        v7 = 0;
        goto LABEL_18;
      }
    }

    else
    {
    }

    obj = container_log_handle_for_category();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      v21 = [v3 path];
      *buf = 138412546;
      v31 = v21;
      v32 = 2112;
      v33 = v6;
      _os_log_error_impl(&dword_1DF2C3000, obj, OS_LOG_TYPE_ERROR, "Failed to read code signing mapping file at %@ : %@", buf, 0x16u);
    }

    v7 = 0;
  }

LABEL_18:
  v19 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)performAllCodeSigningMigrationAndReconciliationWithContext:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  multiuser_flags = 0;
  v5 = MEMORY[0x1E12D3930]();
  if (host_get_multiuser_config_flags(v5, &multiuser_flags) || (multiuser_flags & 0x80000000) == 0)
  {
    [(MCMCodeSigningMapping *)self migrateAppGroupIdsFromDataContainersToFile];
  }

  v6 = [(MCMCodeSigningMapping *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__MCMCodeSigningMapping_performAllCodeSigningMigrationAndReconciliationWithContext___block_invoke;
  block[3] = &unk_1E86B0E08;
  block[4] = self;
  dispatch_sync(v6, block);

  v7 = [(MCMCodeSigningMapping *)self migrateCachedCodeSigningInfoFromBundleContainersToMapping];
  multiuser_flags = 0;
  v8 = MEMORY[0x1E12D3930](v7);
  if (host_get_multiuser_config_flags(v8, &multiuser_flags) || (multiuser_flags & 0x80000000) == 0)
  {
    v9 = +[MCMGroupManager defaultManager];
    [v9 reconcileGroupContainersForContainerClass:7 context:v4];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __84__MCMCodeSigningMapping_performAllCodeSigningMigrationAndReconciliationWithContext___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x1E69E9840];

  return [v1 _onQueue_migrateDataFromLegacyEntitlementsFileToCodeSigningFile];
}

- (void)_onQueue_reconcileSystemContainersWithContext:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v4 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v4);

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__4357;
  v41 = __Block_byref_object_dispose__4358;
  v42 = 0;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  v6 = [(MCMCodeSigningMapping *)self userIdentityCache];
  v30 = [v6 defaultUserIdentity];

  v7 = [(MCMCodeSigningMapping *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MCMCodeSigningMapping__onQueue_reconcileSystemContainersWithContext___block_invoke;
  block[3] = &unk_1E86B0DB8;
  v36 = &v37;
  block[4] = self;
  v32 = v5;
  v35 = v32;
  dispatch_sync(v7, block);

  if (v38[5])
  {
    log = container_log_handle_for_category();
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v8 = v38[5];
      *buf = 138412290;
      v50 = v8;
      _os_log_error_impl(&dword_1DF2C3000, log, OS_LOG_TYPE_ERROR, "Failed to enumerate system container references: %@", buf, 0xCu);
    }
  }

  else
  {
    v9 = [v31 containerCache];
    v10 = [MEMORY[0x1E695DFD8] setWithObject:v30];
    v33 = 0;
    v28 = [v9 entriesForUserIdentities:v10 contentClass:12 transient:0 error:&v33];
    log = v33;

    if (v28)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v11 = v28;
      v12 = [v11 countByEnumeratingWithState:&v45 objects:v44 count:16];
      if (v12)
      {
        v13 = *v46;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v46 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = [*(*(&v45 + 1) + 8 * i) metadataMinimal];
            v16 = [v15 identifier];
            v17 = [v32 containsObject:v16];

            if ((v17 & 1) == 0)
            {
              v18 = container_log_handle_for_category();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v26 = [v15 identifier];
                *buf = 138412290;
                v50 = v26;
                _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Removing system container with identifier %@", buf, 0xCu);
              }

              v19 = objc_alloc_init(MCMResultPromise);
              v20 = [v15 containerIdentity];
              v43 = v20;
              v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
              v22 = [MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:v21 removeAllCodeSignInfo:0 context:v31 resultPromise:v19];

              [v22 execute];
              v23 = [(MCMResultPromise *)v19 result];
              v24 = [v23 error];

              if (v24)
              {
                v25 = container_log_handle_for_category();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v50 = v24;
                  _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "Failed to destroy system container(s) with no references; error = %@", buf, 0xCu);
                }
              }
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v45 objects:v44 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v11 = container_log_handle_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v50 = log;
        _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch system container list: %@", buf, 0xCu);
      }
    }
  }

  _Block_object_dispose(&v37, 8);
  v27 = *MEMORY[0x1E69E9840];
}

void __71__MCMCodeSigningMapping__onQueue_reconcileSystemContainersWithContext___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) codeSigningMappingDB];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__MCMCodeSigningMapping__onQueue_reconcileSystemContainersWithContext___block_invoke_2;
  v8[3] = &unk_1E86B01C8;
  v3 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v4 = [v2 enumerateIdentifiersAndCodeSigningInfoUsingBlock:v8];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *MEMORY[0x1E69E9840];
}

void __71__MCMCodeSigningMapping__onQueue_reconcileSystemContainersWithContext___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) _entitlementsFromCodeSigningEntry:a3];
  v7 = [MCMEntitlements alloc];
  v8 = containermanager_copy_global_configuration();
  v9 = [v8 staticConfig];
  v10 = [v9 containerConfigMap];
  v11 = [(MCMEntitlements *)v7 initWithEntitlements:v6 clientIdentifier:v5 containerConfigMap:v10];

  if ([(MCMEntitlements *)v11 hasSystemContainer])
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "System container exists for identifier %@", &v14, 0xCu);
    }

    [*(a1 + 40) addObject:v5];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_onQueue_migrateCachedCodeSigningInfoFromBundleContainerToMappingWithInfo:(id)a3 identifier:(id)a4 containerClass:(unint64_t)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
  v28 = 0;
  v12 = [v11 codeSigningEntryWithIdentifier:v9 error:&v28];
  v13 = v28;

  if (v12 && ([v12 isInvalid] & 1) == 0)
  {
    v17 = container_log_handle_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v30 = v9;
      _os_log_debug_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_DEBUG, "Deleting cached code signing info for %@ because we already have it in mapping", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v14 = [v13 domain];
  if ([v14 isEqualToString:@"MCMErrorDomain"] && objc_msgSend(v13, "code") == 67)
  {

    goto LABEL_7;
  }

  v15 = [v12 isInvalid];

  if ((v15 & 1) == 0)
  {
    v17 = container_log_handle_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v30 = v9;
      v31 = 2112;
      v32 = v13;
      _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Error retrieving entry from DB with identifier %@ : %@", buf, 0x16u);
    }

LABEL_17:
    v21 = v13;
    goto LABEL_27;
  }

LABEL_7:
  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v30 = v9;
    _os_log_debug_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEBUG, "Migrating code signing info for %@", buf, 0xCu);
  }

  v17 = [v8 mutableCopy];
  v18 = [v8 objectForKeyedSubscript:@"Entitlements"];
  [v17 setObject:v18 forKeyedSubscript:@"com.apple.MobileContainerManager.Entitlements"];

  v19 = [MCMCodeSigningEntry alloc];
  v20 = 2;
  if (a5 > 4)
  {
    if (a5 == 5)
    {
      v20 = 6;
      goto LABEL_22;
    }

    if (a5 != 14)
    {
      goto LABEL_20;
    }
  }

  else if (a5 != 1)
  {
    if (a5 == 3)
    {
      v20 = 4;
      goto LABEL_22;
    }

LABEL_20:
    v20 = 0;
  }

LABEL_22:
  v22 = [(MCMCodeSigningEntry *)v19 initWithCodeSigningInfo:v17 andDataContainerClass:v20];
  v23 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
  v27 = v13;
  v24 = [v23 addCodeSigningEntry:v22 withIdentifier:v9 error:&v27];
  v21 = v27;

  if ((v24 & 1) == 0)
  {
    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v30 = v9;
      v31 = 2112;
      v32 = v21;
      _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "Failed to write migrated cached cs info from bundle container to DB for %@ : %@", buf, 0x16u);
    }
  }

LABEL_27:
  v26 = *MEMORY[0x1E69E9840];
}

- (void)_onQueue_migrateCachedCodeSigningInfoFromBundleContainersToMappingWithContainersLegacy:(id)a3 containerClass:(unint64_t)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v7);

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v63 objects:v62 count:16];
  if (v9)
  {
    v11 = v9;
    v50 = *v64;
    *&v10 = 138412546;
    v44 = v10;
    v45 = v8;
    v46 = self;
    v47 = a4;
    do
    {
      v12 = 0;
      v48 = v11;
      do
      {
        if (*v64 != v50)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v63 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v55 = 0;
        v15 = [v13 metadataWithError:&v55];
        v16 = v55;
        v17 = v16;
        if (v15)
        {
          v51 = v16;
          v52 = v14;
          v18 = [v15 info];
          v19 = [v18 objectForKeyedSubscript:@"com.apple.MobileInstallation.CachedCodeSigningInfo"];
          objc_opt_class();
          v20 = v19;
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }

          if (!v21)
          {
            goto LABEL_39;
          }

          v22 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
          v23 = [v15 identifier];
          v54 = 0;
          v24 = [v22 codeSigningEntryWithIdentifier:v23 error:&v54];
          v25 = v54;

          v49 = v24;
          if (v24 && ([v24 isInvalid] & 1) == 0)
          {
            v29 = container_log_handle_for_category();
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_28;
            }

            v33 = [v15 identifier];
            *buf = 138412290;
            v57 = v33;
            _os_log_debug_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_DEBUG, "Deleting cached code signing info for %@ because we already have it in mapping", buf, 0xCu);
          }

          else
          {
            v26 = [v25 domain];
            if ([v26 isEqualToString:@"MCMErrorDomain"] && objc_msgSend(v25, "code") == 67)
            {

              goto LABEL_19;
            }

            v27 = [v24 isInvalid];

            if (v27)
            {
LABEL_19:
              v28 = container_log_handle_for_category();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                v40 = [v15 identifier];
                *buf = 138412290;
                v57 = v40;
                _os_log_debug_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_DEBUG, "Migrating code signing info for %@", buf, 0xCu);
              }

              v29 = [v21 mutableCopy];
              v30 = [v21 objectForKeyedSubscript:@"Entitlements"];
              [v29 setObject:v30 forKeyedSubscript:@"com.apple.MobileContainerManager.Entitlements"];

              v31 = [MCMCodeSigningEntry alloc];
              if (a4 > 4)
              {
                if (a4 == 5)
                {
                  v32 = 6;
                }

                else
                {
                  v32 = 2;
                  if (a4 != 14)
                  {
                    goto LABEL_31;
                  }
                }
              }

              else
              {
                v32 = 2;
                if (a4 == 1)
                {
                  goto LABEL_33;
                }

                if (a4 == 3)
                {
                  v32 = 4;
                  goto LABEL_33;
                }

LABEL_31:
                v32 = 0;
              }

LABEL_33:
              v35 = [(MCMCodeSigningEntry *)v31 initWithCodeSigningInfo:v29 andDataContainerClass:v32];
              v36 = [(MCMCodeSigningMapping *)self codeSigningMappingDB];
              v37 = [v15 identifier];
              v53 = v25;
              v38 = [v36 addCodeSigningEntry:v35 withIdentifier:v37 error:&v53];
              v34 = v53;

              if ((v38 & 1) == 0)
              {
                v39 = container_log_handle_for_category();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  v41 = [v15 identifier];
                  *buf = v44;
                  v57 = v41;
                  v58 = 2112;
                  v59 = v34;
                  _os_log_error_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_ERROR, "Failed to write migrated cached cs info from bundle container to DB for %@ : %@", buf, 0x16u);
                }
              }

              self = v46;
              a4 = v47;
              v8 = v45;
LABEL_38:

              v11 = v48;
LABEL_39:
              v17 = v51;
              v14 = v52;
              goto LABEL_40;
            }

            v29 = container_log_handle_for_category();
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
LABEL_28:
              v34 = v25;
              goto LABEL_38;
            }

            v33 = [v15 identifier];
            *buf = v44;
            v57 = v33;
            v58 = 2112;
            v59 = v25;
            _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Error retrieving entry from DB with identifier %@ : %@", buf, 0x16u);
          }

          goto LABEL_28;
        }

        v21 = container_log_handle_for_category();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v57 = "[MCMCodeSigningMapping _onQueue_migrateCachedCodeSigningInfoFromBundleContainersToMappingWithContainersLegacy:containerClass:]";
          v58 = 2112;
          v59 = v13;
          v60 = 2112;
          v61 = v17;
          _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "%s: Could not fetch metadata for %@; error = %@", buf, 0x20u);
        }

LABEL_40:

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v11 != v12);
      v42 = [v8 countByEnumeratingWithState:&v63 objects:v62 count:16];
      v11 = v42;
    }

    while (v42);
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)migrateCachedCodeSigningInfoFromBundleContainersToMapping
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  if (([v4 hasMigrationOccurredForType:@"CodeSigningMigration"] & 1) == 0)
  {
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_DEBUG, "Performing code signing migration", buf, 2u);
    }

    v6 = containermanager_copy_global_configuration();
    v7 = [v6 classIterator];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__MCMCodeSigningMapping_migrateCachedCodeSigningInfoFromBundleContainersToMapping__block_invoke;
    v9[3] = &unk_1E86B01A0;
    v9[4] = self;
    [v7 selectWithFlags:0x10000040000 iterator:v9];

    [v4 setMigrationCompleteForType:@"CodeSigningMigration"];
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x1E69E9840];
}

void __82__MCMCodeSigningMapping_migrateCachedCodeSigningInfoFromBundleContainersToMapping__block_invoke(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 handledByProxy])
  {
    container_query_create();
    [v3 containerClass];
    container_query_set_class();
    container_query_set_include_other_owners();
    container_query_operation_set_flags();
    v47[1] = MEMORY[0x1E69E9820];
    v47[2] = 3221225472;
    v47[3] = __82__MCMCodeSigningMapping_migrateCachedCodeSigningInfoFromBundleContainersToMapping__block_invoke_2;
    v47[4] = &unk_1E86B0178;
    v47[5] = *(a1 + 32);
    v48 = v3;
    container_query_iterate_results_sync();
    container_query_free();

    goto LABEL_29;
  }

  v4 = [*(a1 + 32) userIdentityCache];
  v5 = [v4 defaultUserIdentity];

  v41 = [MCMClientConnection privilegedClientConnectionWithUserIdentity:v5];
  v6 = gContainerCache;
  v7 = [MEMORY[0x1E695DFD8] setWithObject:v5];
  v47[0] = 0;
  v8 = [v6 entriesForUserIdentities:v7 contentClass:objc_msgSend(v3 transient:"containerClass") error:{0, v47}];
  v9 = v47[0];

  if (v8)
  {
    v36 = v9;
    v38 = v5;
    v10 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__MCMCodeSigningMapping_migrateCachedCodeSigningInfoFromBundleContainersToMapping__block_invoke_58;
    block[3] = &unk_1E86B0898;
    block[4] = *(a1 + 32);
    v37 = v8;
    v11 = v8;
    v45 = v11;
    v39 = v3;
    v46 = v3;
    dispatch_sync(v10, block);

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v56 objects:v55 count:16];
    if (!v12)
    {
      goto LABEL_24;
    }

    v13 = v12;
    v14 = *v57;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v57 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v56 + 1) + 8 * v15);
        v43 = 0;
        v17 = [v16 metadataWithError:&v43];
        v18 = v43;
        if (!v17)
        {
          v23 = container_log_handle_for_category();
          if (os_log_type_enabled(&v23->super, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v50 = "[MCMCodeSigningMapping migrateCachedCodeSigningInfoFromBundleContainersToMapping]_block_invoke_2";
            v51 = 2112;
            v52 = v16;
            v53 = 2112;
            v54 = v18;
            _os_log_error_impl(&dword_1DF2C3000, &v23->super, OS_LOG_TYPE_ERROR, "%s: Could not fetch metadata for %@; error = %@", buf, 0x20u);
          }

          goto LABEL_21;
        }

        v19 = [v17 info];
        v20 = [v19 objectForKeyedSubscript:@"com.apple.MobileInstallation.CachedCodeSigningInfo"];
        objc_opt_class();
        v21 = v20;
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        if (v22)
        {
          v23 = objc_alloc_init(MCMResultPromise);
          v24 = [MCMCommandSetInfoValue alloc];
          v25 = [v17 containerIdentity];
          v26 = [v41 context];
          v27 = [(MCMCommandSetInfoValue *)v24 initWithKey:@"com.apple.MobileInstallation.CachedCodeSigningInfo" value:0 containerIdentity:v25 context:v26 resultPromise:v23];

          [(MCMCommandSetInfoValue *)v27 execute];
          v28 = [(MCMResultPromise *)v23 result];
          v29 = [v28 error];

          if (v29)
          {
            v30 = container_log_handle_for_category();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = [v17 containerIdentity];
              v40 = [(MCMResultPromise *)v23 result];
              v32 = [v40 error];
              *buf = 138412546;
              v50 = v31;
              v51 = 2112;
              v52 = v32;
              _os_log_error_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_ERROR, "Error setting info value for identity %@ : %@", buf, 0x16u);
            }
          }

LABEL_21:
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v56 objects:v55 count:16];
      if (!v13)
      {
LABEL_24:

        v5 = v38;
        v3 = v39;
        v9 = v36;
        v8 = v37;
        goto LABEL_28;
      }
    }
  }

  v33 = container_log_handle_for_category();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v35 = [v3 containerClass];
    *buf = 134218242;
    v50 = v35;
    v51 = 2112;
    v52 = v9;
    _os_log_error_impl(&dword_1DF2C3000, v33, OS_LOG_TYPE_ERROR, "Failed to fetch list of containers for class %llu : %@", buf, 0x16u);
  }

LABEL_28:
LABEL_29:

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t __82__MCMCodeSigningMapping_migrateCachedCodeSigningInfoFromBundleContainersToMapping__block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = container_object_get_info();
  v3 = v2;
  if (v2)
  {
    v4 = xpc_dictionary_get_value(v2, "com.apple.MobileInstallation.CachedCodeSigningInfo");
    if (v4)
    {
      v5 = v4;
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:container_get_identifier()];
      v7 = _CFXPCCreateCFObjectFromXPCObject();
      v8 = [*(a1 + 32) queue];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __82__MCMCodeSigningMapping_migrateCachedCodeSigningInfoFromBundleContainersToMapping__block_invoke_3;
      v16[3] = &unk_1E86B0150;
      v16[4] = *(a1 + 32);
      v17 = v7;
      v9 = v6;
      v18 = v9;
      v19 = *(a1 + 40);
      v10 = v7;
      dispatch_sync(v8, v16);

      v11 = container_set_info_value();
      if (v11 != 1)
      {
        v12 = v11;
        v13 = container_log_handle_for_category();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v21 = v9;
          v22 = 2048;
          v23 = v12;
          _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Error setting info value for identity %@ : %llu", buf, 0x16u);
        }
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __82__MCMCodeSigningMapping_migrateCachedCodeSigningInfoFromBundleContainersToMapping__block_invoke_58(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) containerClass];
  v4 = *MEMORY[0x1E69E9840];

  return [v1 _onQueue_migrateCachedCodeSigningInfoFromBundleContainersToMappingWithContainersLegacy:v2 containerClass:v3];
}

uint64_t __82__MCMCodeSigningMapping_migrateCachedCodeSigningInfoFromBundleContainersToMapping__block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) containerClass];
  v5 = *MEMORY[0x1E69E9840];

  return [v1 _onQueue_migrateCachedCodeSigningInfoFromBundleContainerToMappingWithInfo:v2 identifier:v3 containerClass:v4];
}

- (void)_onQueue_migrateDataFromLegacyEntitlementsFileToCodeSigningFile
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MCMCodeSigningMapping *)self library];
  v5 = [v4 url];

  if (v5)
  {
    v6 = [v5 URLByAppendingPathComponent:@"mcm_entitlements.plist" isDirectory:0];
    v7 = +[MCMFileManager defaultManager];
    v8 = [v7 itemDoesNotExistAtURL:v6];

    if ((v8 & 1) == 0)
    {
      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "Performing legacy entitlement migration", &buf, 2u);
      }

      v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfURL:v6];
      v11 = v10;
      if (v10)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v38 = 0x3032000000;
        v39 = __Block_byref_object_copy__4357;
        v40 = __Block_byref_object_dispose__4358;
        v41 = 0;
        v12 = [v10 objectForKeyedSubscript:@"com.apple.MobileContainerManager.ChildPluginBundleIDs"];
        v13 = [v11 objectForKeyedSubscript:@"com.apple.MobileContainerManager.EntitlementsRegisteredByCaller"];
        v14 = [v11 objectForKeyedSubscript:@"com.apple.MobileContainerManager.PlaceholderEntitlements"];
        [v11 removeObjectForKey:@"com.apple.MobileContainerManager.ChildPluginBundleIDs"];
        [v11 removeObjectForKey:@"com.apple.MobileContainerManager.EntitlementsRegisteredByCaller"];
        [v11 removeObjectForKey:@"com.apple.MobileContainerManager.PlaceholderEntitlements"];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __88__MCMCodeSigningMapping__onQueue_migrateDataFromLegacyEntitlementsFileToCodeSigningFile__block_invoke;
        v28[3] = &unk_1E86B0128;
        p_buf = &buf;
        v28[4] = self;
        v15 = v13;
        v29 = v15;
        v16 = v12;
        v30 = v16;
        v17 = v14;
        v31 = v17;
        [v11 enumerateKeysAndObjectsUsingBlock:v28];
        v18 = +[MCMFileManager defaultManager];
        v19 = (*(&buf + 1) + 40);
        obj = *(*(&buf + 1) + 40);
        v20 = [v18 removeItemAtURL:v6 error:&obj];
        objc_storeStrong(v19, obj);

        if ((v20 & 1) == 0)
        {
          v21 = container_log_handle_for_category();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v25 = [v6 path];
            v26 = *(*(&buf + 1) + 40);
            *v33 = 138412546;
            v34 = v25;
            v35 = 2112;
            v36 = v26;
            _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Failed to remove legacy file at %@: %@", v33, 0x16u);
          }
        }

        v22 = container_log_handle_for_category();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *v33 = 0;
          _os_log_debug_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_DEBUG, "Legacy entitlement migration completed", v33, 2u);
        }

        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v11 = container_log_handle_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v24 = [v6 path];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v24;
          _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Entitlement File exists at %@, but we unexpectedly cant read it", &buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v6 = container_log_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_ERROR, "Failed to get library url.", &buf, 2u);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __88__MCMCodeSigningMapping__onQueue_migrateDataFromLegacyEntitlementsFileToCodeSigningFile__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = v5;
  v10 = v6;
  v11 = [*(a1 + 32) codeSigningMappingDB];
  v12 = *(*(a1 + 64) + 8);
  obj = *(v12 + 40);
  v13 = [v11 codeSigningEntryWithIdentifier:v9 error:&obj];
  objc_storeStrong((v12 + 40), obj);

  if (v13 && ([v13 isInvalid] & 1) == 0)
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v36 = v9;
      _os_log_debug_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_DEBUG, "Already have code signing info for %@.  No need to migrate legacy entitlements.", buf, 0xCu);
    }
  }

  else
  {
    v14 = [*(*(*(a1 + 64) + 8) + 40) domain];
    if ([v14 isEqualToString:@"MCMErrorDomain"] && objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "code") == 67)
    {

LABEL_7:
      v16 = container_log_handle_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = v9;
        _os_log_debug_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEBUG, "Migrating legacy entitlements for %@", buf, 0xCu);
      }

      v17 = [MCMCodeSigningEntry alloc];
      v39 = @"com.apple.MobileContainerManager.Entitlements";
      v40[0] = v10;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      v19 = [(MCMCodeSigningEntry *)v17 initWithCodeSigningInfo:v18 andDataContainerClass:0];

      v20 = [*(a1 + 40) objectForKeyedSubscript:v9];
      objc_opt_class();
      v21 = v20;
      v22 = 0;
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      v23 = [*(a1 + 48) objectForKeyedSubscript:v9];

      if (v23)
      {
        v24 = [*(a1 + 48) objectForKeyedSubscript:v9];
        [v19 setChildBundleIdentifiers:v24];
      }

      v25 = [*(a1 + 56) objectForKeyedSubscript:v9];

      if (v25)
      {
        [v19 setPlaceholder:1];
      }

      if (v22 && [v22 BOOLValue])
      {
        [v19 setRegisteredByCaller:1];
      }

      else
      {
        [v19 setInvalid:1];
      }

      v26 = [*(a1 + 32) codeSigningMappingDB];
      v27 = *(*(a1 + 64) + 8);
      v33 = *(v27 + 40);
      v28 = [v26 addCodeSigningEntry:v19 withIdentifier:v9 error:&v33];
      objc_storeStrong((v27 + 40), v33);

      if ((v28 & 1) == 0)
      {
        v29 = container_log_handle_for_category();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v32 = *(*(*(a1 + 64) + 8) + 40);
          *buf = 138412546;
          v36 = v9;
          v37 = 2112;
          v38 = v32;
          _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Failed to write migrated legacy info to DB for %@ : %@", buf, 0x16u);
        }
      }

      goto LABEL_28;
    }

    v15 = [v13 isInvalid];

    if (v15)
    {
      goto LABEL_7;
    }

    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v31 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412546;
      v36 = v9;
      v37 = 2112;
      v38 = v31;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Error retrieving entry from DB with identifier %@ : %@", buf, 0x16u);
    }
  }

LABEL_28:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_onQueue_migrateAppGroupIdsFromDataContainersToFileUsingContainers:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v43 = self;
  v5 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v5);

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v58 objects:v57 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v59;
    v41 = *v59;
    v42 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v59 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v58 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v46 = 0;
        v13 = [v11 metadataWithError:&v46];
        v14 = v46;
        if (!v13)
        {
          v25 = container_log_handle_for_category();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v52 = "[MCMCodeSigningMapping _onQueue_migrateAppGroupIdsFromDataContainersToFileUsingContainers:]";
            v53 = 2112;
            v54 = v11;
            v55 = 2112;
            v56 = v14;
            _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "%s: Could not fetch metadata for %@; error = %@", buf, 0x20u);
          }

          goto LABEL_30;
        }

        v15 = [v13 info];

        if (!v15)
        {
          goto LABEL_31;
        }

        v16 = [v13 info];
        v17 = [v16 objectForKeyedSubscript:@"com.apple.MobileInstallation.GroupContainerIDs"];

        if (v17)
        {
          v18 = container_log_handle_for_category();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v32 = [v13 identifier];
            *buf = 138412546;
            v52 = v32;
            v53 = 2112;
            v54 = v17;
            _os_log_debug_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEBUG, "Data container for userId: 501, identifier %@ references container IDs: %@", buf, 0x16u);
          }

          v19 = [(MCMCodeSigningMapping *)v43 codeSigningMappingDB];
          v20 = [v13 identifier];
          v45 = 0;
          v21 = [v19 codeSigningEntryWithIdentifier:v20 error:&v45];
          v22 = v45;

          if (v21)
          {
            v23 = container_log_handle_for_category();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v24 = [v13 identifier];
              *buf = 138412290;
              v52 = v24;
              _os_log_debug_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_DEBUG, "Deleting app group entitlements for %@ because we already have them in mapping", buf, 0xCu);
              goto LABEL_34;
            }

            goto LABEL_27;
          }

          v26 = [v22 domain];
          if ([v26 isEqualToString:@"MCMErrorDomain"])
          {
            v27 = [v22 code];

            if (v27 == 67)
            {
              v28 = container_log_handle_for_category();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                v33 = [v13 identifier];
                *buf = 138412290;
                v52 = v33;
                _os_log_debug_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_DEBUG, "Migrating app group entitlements for %@", buf, 0xCu);
              }

              v29 = [MCMCodeSigningEntry alloc];
              v48 = v17;
              v49 = @"com.apple.MobileContainerManager.Entitlements";
              v47 = @"com.apple.security.application-groups";
              v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
              v50 = v38;
              v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
              v23 = -[MCMCodeSigningEntry initWithCodeSigningInfo:andDataContainerClass:](v29, "initWithCodeSigningInfo:andDataContainerClass:", v30, [v13 containerClass]);

              [v23 setInvalid:1];
              v39 = [(MCMCodeSigningMapping *)v43 codeSigningMappingDB];
              v36 = [v13 identifier];
              v44 = v22;
              v37 = [v39 addCodeSigningEntry:v23 withIdentifier:v36 error:&v44];
              v25 = v44;

              if ((v37 & 1) == 0)
              {
                v31 = container_log_handle_for_category();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  v40 = [v13 identifier];
                  *buf = 138412546;
                  v52 = v40;
                  v53 = 2112;
                  v54 = v25;
                  _os_log_error_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_ERROR, "Failed to write migrated group id info to DB for %@ : %@", buf, 0x16u);
                }
              }

              goto LABEL_28;
            }
          }

          else
          {
          }

          v23 = container_log_handle_for_category();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = [v13 identifier];
            *buf = 138412546;
            v52 = v24;
            v53 = 2112;
            v54 = v22;
            _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Error retrieving entry from DB with identifier %@ : %@", buf, 0x16u);
LABEL_34:
          }

LABEL_27:
          v25 = v22;
LABEL_28:

          v9 = v41;
          v6 = v42;
          goto LABEL_29;
        }

        v25 = 0;
LABEL_29:

LABEL_30:
LABEL_31:

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v34 = [v6 countByEnumeratingWithState:&v58 objects:v57 count:16];
      v8 = v34;
    }

    while (v34);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)migrateAppGroupIdsFromDataContainersToFile
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  if (([v3 hasMigrationOccurredForType:@"GroupIdMigration"] & 1) == 0)
  {
    v34 = v3;
    v35 = v2;
    v4 = container_log_handle_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEBUG, "Performing group ID migration", buf, 2u);
    }

    v5 = [(MCMCodeSigningMapping *)self userIdentityCache];
    v6 = [v5 userIdentityForLegacyMobileUser];

    v36 = v6;
    v7 = [MCMClientConnection privilegedClientConnectionWithUserIdentity:v6];
    v8 = 0;
    p_superclass = &OBJC_METACLASS___MCMCommandQuery.superclass;
    while (1)
    {
      v10 = gContainerCache;
      v11 = [MEMORY[0x1E695DFD8] setWithObject:v36];
      v12 = qword_1DF3BE4D0[v8];
      v44 = 0;
      v13 = [v10 entriesForUserIdentities:v11 contentClass:v12 transient:0 error:&v44];
      v14 = v44;

      if (!v13)
      {
        break;
      }

      v38 = v14;
      v39 = v8;
      v15 = [(MCMCodeSigningMapping *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__MCMCodeSigningMapping_migrateAppGroupIdsFromDataContainersToFile__block_invoke;
      block[3] = &unk_1E86B0CC8;
      block[4] = self;
      v16 = v13;
      v43 = v16;
      dispatch_sync(v15, block);

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = v16;
      v17 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v47;
        do
        {
          v20 = 0;
          do
          {
            if (*v47 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = [*(*(&v46 + 1) + 8 * v20) metadataMinimal];
            v22 = objc_alloc_init((p_superclass + 309));
            v23 = [MCMCommandSetInfoValue alloc];
            v24 = [v21 containerIdentity];
            v25 = [v7 context];
            v26 = [(MCMCommandSetInfoValue *)v23 initWithKey:@"com.apple.MobileInstallation.GroupContainerIDs" value:0 containerIdentity:v24 context:v25 resultPromise:v22];

            [(MCMCommandSetInfoValue *)v26 execute];
            v27 = [v22 result];
            v28 = [v27 error];

            if (v28)
            {
              v29 = container_log_handle_for_category();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v30 = [v21 containerIdentity];
                v40 = [v22 result];
                v31 = [v40 error];
                *buf = 138412546;
                v51 = v30;
                v52 = 2112;
                v53 = v31;
                _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Failed to clear group id metadata for %@ : %@", buf, 0x16u);

                p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
              }
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
        }

        while (v18);
      }

      v8 = v39 + 1;
      if (v39 == 2)
      {
        v3 = v34;
        [v34 setMigrationCompleteForType:@"GroupIdMigration"];
        goto LABEL_22;
      }
    }

    v32 = container_log_handle_for_category();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v51 = v12;
      v52 = 2112;
      v53 = v14;
      _os_log_error_impl(&dword_1DF2C3000, v32, OS_LOG_TYPE_ERROR, "Failed to fetch list of containers for userId: 501, class %ld : %@", buf, 0x16u);
    }

    v3 = v34;
LABEL_22:

    v2 = v35;
  }

  objc_autoreleasePoolPop(v2);
  v33 = *MEMORY[0x1E69E9840];
}

uint64_t __67__MCMCodeSigningMapping_migrateAppGroupIdsFromDataContainersToFile__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _onQueue_migrateAppGroupIdsFromDataContainersToFileUsingContainers:v3];
}

- (void)_onQueue_migrateFromMappingFileToDBIfNecessary
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCodeSigningMapping *)self queue];
  dispatch_assert_queue_V2(v3);

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__4357;
  v28 = __Block_byref_object_dispose__4358;
  v29 = 0;
  v4 = [(MCMCodeSigningMapping *)self library];
  v5 = [v4 url];

  if (v5)
  {
    v6 = [v5 URLByAppendingPathComponent:@"mcm_code_signing_info.plist" isDirectory:0];
    v7 = [(MCMCodeSigningMapping *)self _readCodeSigningMappingFromDiskAtURL:v6];
    if (v7)
    {
      *v30 = 0;
      v31 = v30;
      v32 = 0x2020000000;
      v33 = 0;
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v8 = container_log_handle_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_DEBUG, "Migrating code signing info from file to DB", buf, 2u);
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __71__MCMCodeSigningMapping__onQueue_migrateFromMappingFileToDBIfNecessary__block_invoke;
      v19[3] = &unk_1E86B0100;
      v19[4] = self;
      v19[5] = &v24;
      v19[6] = &v20;
      v19[7] = v30;
      [v7 enumerateKeysAndObjectsUsingBlock:v19];
      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(v31 + 12);
        v16 = *(v21 + 12);
        *buf = 67109376;
        *v35 = v15;
        *&v35[4] = 1024;
        *&v35[6] = v16;
        _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "Successfully migrated %d entries, failed to migrate %d", buf, 0xEu);
      }

      if (*(v31 + 12))
      {
        v10 = +[MCMFileManager defaultManager];
        v11 = (v25 + 5);
        obj = v25[5];
        v12 = [v10 removeItemAtURL:v6 error:&obj];
        objc_storeStrong(v11, obj);

        if ((v12 & 1) == 0)
        {
          v13 = container_log_handle_for_category();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v17 = v25[5];
            *buf = 138412290;
            *v35 = v17;
            _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Failed to remove legacy code signing mapping file: %@", buf, 0xCu);
          }
        }
      }

      _Block_object_dispose(&v20, 8);
      _Block_object_dispose(v30, 8);
    }
  }

  else
  {
    v6 = container_log_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v30 = 0;
      _os_log_error_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_ERROR, "Failed to get library url.", v30, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  v14 = *MEMORY[0x1E69E9840];
}

void __71__MCMCodeSigningMapping__onQueue_migrateFromMappingFileToDBIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = v5;
  v9 = v6;
  v10 = [*(a1 + 32) codeSigningMappingDB];
  v11 = *(*(a1 + 40) + 8);
  obj = *(v11 + 40);
  v12 = [v10 addCodeSigningEntry:v9 withIdentifier:v8 error:&obj];
  objc_storeStrong((v11 + 40), obj);

  if (v12)
  {
    v13 = 56;
  }

  else
  {
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = v18;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Failed to migrate code signing entry for %@ : %@", buf, 0x16u);
    }

    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;

    v13 = 48;
  }

  ++*(*(*(a1 + v13) + 8) + 24);

  objc_autoreleasePoolPop(v7);
  v17 = *MEMORY[0x1E69E9840];
}

- (MCMCodeSigningMapping)initWithUserIdentityCache:(id)a3 queue:(id)a4 mappingDB:(id)a5 childParentMapCache:(id)a6 library:(id)a7
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = MCMCodeSigningMapping;
  v17 = [(MCMCodeSigningMapping *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_queue, a4);
    objc_storeStrong(&v18->_userIdentityCache, a3);
    objc_storeStrong(&v18->_codeSigningMappingDB, a5);
    objc_storeStrong(&v18->_library, a7);
    objc_storeStrong(&v18->_childParentMapCache, a6);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__MCMCodeSigningMapping_initWithUserIdentityCache_queue_mappingDB_childParentMapCache_library___block_invoke;
    block[3] = &unk_1E86B0E08;
    v23 = v18;
    dispatch_sync(v13, block);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t __95__MCMCodeSigningMapping_initWithUserIdentityCache_queue_mappingDB_childParentMapCache_library___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x1E69E9840];

  return [v1 _onQueue_migrateFromMappingFileToDBIfNecessary];
}

+ (id)_moveDBIfNeededFromURL:(id)a3 queue:(id)a4 error:(id *)a5
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v47 = a4;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__4357;
  v62 = __Block_byref_object_dispose__4358;
  v63 = 0;
  v7 = +[MCMUserIdentitySharedCache sharedInstance];
  v8 = [v7 defaultUserIdentity];
  v9 = [v7 managedUserPathRegistryForUserIdentity:v8];

  v10 = [v9 containermanagerUserLibrary];
  v11 = [v10 url];
  v12 = v11;
  if (!v11)
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:&stru_1F5A5B2B8];
    *v64 = @"FunctionName";
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[MCMCodeSigningMapping _moveDBIfNeededFromURL:queue:error:]_block_invoke"];
    *buf = v31;
    *&buf[8] = &unk_1F5A765D0;
    v32 = *MEMORY[0x1E696A578];
    *&v64[8] = @"SourceFileLine";
    *&v64[16] = v32;
    *&buf[16] = v30;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v64 count:3];

    v34 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:132 userInfo:v33];

    v35 = v59[5];
    v59[5] = v34;

    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_FAULT, "Failed to get user library url.", buf, 2u);
    }

    goto LABEL_12;
  }

  v13 = [v11 URLByAppendingPathComponent:@"references" isDirectory:0];
  v14 = [v13 URLByAppendingPathExtension:@"sqlite3"];

  v57 = 0;
  v15 = +[MCMFileManager defaultManager];
  v16 = (v59 + 5);
  obj = v59[5];
  LOBYTE(v13) = [v15 itemAtURL:v6 exists:&v57 isDirectory:0 error:&obj];
  objc_storeStrong(v16, obj);

  if ((v13 & 1) == 0)
  {
    v36 = container_log_handle_for_category();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      v43 = v59[5];
      *buf = 138412546;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v43;
      _os_log_fault_impl(&dword_1DF2C3000, v36, OS_LOG_TYPE_FAULT, "Failed to check if old database exists at [%@], error = %@", buf, 0x16u);
    }

LABEL_12:
    v26 = 0;
LABEL_19:

    goto LABEL_20;
  }

  if (v57 != 1)
  {
LABEL_18:
    v26 = v14;
    goto LABEL_19;
  }

  v17 = +[MCMFileManager defaultManager];
  [v17 removeItemAtURL:v14 error:0];

  v18 = [v14 URLByDeletingPathExtension];
  v46 = [v18 URLByAppendingPathExtension:@"sqlite3-wal"];

  v19 = +[MCMFileManager defaultManager];
  [v19 removeItemAtURL:v46 error:0];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v67 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MCMCodeSigningMapping__moveDBIfNeededFromURL_queue_error___block_invoke;
  block[3] = &unk_1E86B00D8;
  v54 = buf;
  v20 = v6;
  v51 = v20;
  v21 = v14;
  v52 = v21;
  v53 = v47;
  v55 = &v58;
  dispatch_sync(v53, block);
  v45 = v21;
  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    v26 = container_log_handle_for_category();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v37 = v59[5];
    *v64 = 138412802;
    *&v64[4] = v20;
    *&v64[12] = 2112;
    *&v64[14] = v21;
    *&v64[22] = 2112;
    v65 = v37;
    v38 = "Failed to move database from [%@] to [%@], error = %@";
    v39 = v26;
    v40 = 32;
LABEL_29:
    _os_log_fault_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_FAULT, v38, v64, v40);
    goto LABEL_16;
  }

  v22 = +[MCMFileManager defaultManager];
  v23 = (v59 + 5);
  v49 = v59[5];
  v24 = [v22 removeItemAtURL:v20 error:&v49];
  objc_storeStrong(v23, v49);

  if (v24)
  {
    v25 = [v20 URLByDeletingPathExtension];
    v26 = [v25 URLByAppendingPathExtension:@"sqlite3-wal"];

    v27 = +[MCMFileManager defaultManager];
    [v27 removeItemAtURL:v26 error:0];

    v28 = 0;
    v29 = 1;
    goto LABEL_17;
  }

  v26 = container_log_handle_for_category();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    v44 = v59[5];
    *v64 = 138412546;
    *&v64[4] = v20;
    *&v64[12] = 2112;
    *&v64[14] = v44;
    v38 = "Failed to delete database from [%@], error = %@";
    v39 = v26;
    v40 = 22;
    goto LABEL_29;
  }

LABEL_16:
  v29 = 0;
  v28 = 1;
LABEL_17:

  _Block_object_dispose(buf, 8);
  if (v29)
  {
    goto LABEL_18;
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_23;
  }

  v26 = 0;
LABEL_20:
  if (a5 && !v26)
  {
    v26 = 0;
    *a5 = v59[5];
  }

LABEL_23:

  _Block_object_dispose(&v58, 8);
  v41 = *MEMORY[0x1E69E9840];

  return v26;
}

void __60__MCMCodeSigningMapping__moveDBIfNeededFromURL_queue_error___block_invoke(void *a1)
{
  obj[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj[0] = *(v5 + 40);
  v6 = [MCMSQLiteDB moveDBWithURL:v2 toURL:v3 queue:v4 error:obj];
  objc_storeStrong((v5 + 40), obj[0]);
  *(*(a1[7] + 8) + 24) = v6;
  v7 = *MEMORY[0x1E69E9840];
}

+ (id)codeSignMappingWithError:(id *)a3
{
  v28 = a1;
  v43 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__4357;
  v39 = __Block_byref_object_dispose__4358;
  v40 = 0;
  v3 = containermanager_copy_global_configuration();
  v4 = [v3 managedPathRegistry];
  v5 = [v4 containermanagerLibrary];

  v6 = dispatch_queue_create("com.apple.MobileContainerManager.EntitlementQueue", 0);
  v7 = [v5 url];
  v8 = [v7 URLByAppendingPathComponent:@"containers" isDirectory:0];
  v9 = [v8 URLByAppendingPathExtension:@"sqlite3"];

  if (!v9)
  {
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      LOWORD(multiuser_flags) = 0;
      _os_log_fault_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_FAULT, "Failed to get global library url.", &multiuser_flags, 2u);
    }

    v12 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  multiuser_flags = 0;
  v10 = MEMORY[0x1E12D3930]();
  if (host_get_multiuser_config_flags(v10, &multiuser_flags) || (multiuser_flags & 0x80000000) == 0)
  {
    v34 = 0;
    v12 = [(objc_class *)v28 _moveDBIfNeededFromURL:v9 queue:v6 error:&v34, v28];
    v15 = v34;
    v11 = v15;
    if (v12)
    {
      goto LABEL_10;
    }

    if (v15)
    {
      v27 = container_log_handle_for_category();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        multiuser_flags = 138412290;
        v42 = v11;
        _os_log_fault_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_FAULT, "Failed to move database: error = %@", &multiuser_flags, 0xCu);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v9;
LABEL_10:

  v16 = containermanager_copy_global_configuration();
  v17 = [v16 libraryRepair];
  v33 = 0;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __50__MCMCodeSigningMapping_codeSignMappingWithError___block_invoke;
  v30[3] = &unk_1E86B00B0;
  v18 = v6;
  v31 = v18;
  v32 = &v35;
  [v17 fixAndRetryIfPermissionsErrorWithURL:v12 error:&v33 duringBlock:v30];
  v14 = v33;

  if (v36[5])
  {
    v19 = [MCMChildParentMapCache alloc];
    v13 = [(MCMChildParentMapCache *)v19 initWithDB:v36[5] queue:v18];
    v20 = [v28 alloc];
    v21 = +[MCMUserIdentitySharedCache sharedInstance];
    v22 = [v20 initWithUserIdentityCache:v21 queue:v18 mappingDB:v36[5] childParentMapCache:v13 library:v5];

    goto LABEL_15;
  }

  v13 = container_log_handle_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    multiuser_flags = 138412290;
    v42 = v14;
    _os_log_fault_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_FAULT, "Failed to initialize database; error = %@", &multiuser_flags, 0xCu);
  }

LABEL_14:
  v22 = 0;
LABEL_15:

  if (a3)
  {
    v23 = v14;
    *a3 = v14;
  }

  v24 = v22;

  _Block_object_dispose(&v35, 8);
  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

BOOL __50__MCMCodeSigningMapping_codeSignMappingWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MCMCodeSigningMapping_codeSignMappingWithError___block_invoke_2;
  block[3] = &unk_1E86B0088;
  v14 = v5;
  v12 = *(a1 + 32);
  v7 = v12;
  v15 = v12;
  v16 = a3;
  v8 = v5;
  dispatch_sync(v6, block);
  v9 = *(*(*(a1 + 40) + 8) + 40) != 0;

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __50__MCMCodeSigningMapping_codeSignMappingWithError___block_invoke_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [[MCMSQLiteDB alloc] initWithURL:a1[4] queue:a1[5] error:a1[7]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

@end