@interface MCMCommandOperationDelete
+ (BOOL)deleteContainerRootURL:(id)a3 userIdentity:(id)a4 containerClass:(unint64_t)a5 containerPathIdentifier:(id)a6 preferDirectDelete:(BOOL)a7 error:(id *)a8;
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)_writeDeleteManifestsForItems:(id)a3 error:(id *)a4;
- (BOOL)preflightClientAllowed;
- (BOOL)removeAllCodeSignInfo;
- (BOOL)waitForDiskSpaceReclaim;
- (MCMCommandOperationDelete)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMXPCMessageOperationDelete)message;
- (NSArray)concreteContainerIdentities;
- (NSArray)containerIdentities;
- (NSMutableSet)manifests;
- (id)_codeSignIdentifiersToRemoveFor:(id)a3 amendingCumulativeIdentifiers:(id)a4;
- (id)_containerIdentities;
- (id)_containersToDeleteRecursivelyStartingWithContainerIdentities:(id)a3 error:(id *)a4;
- (id)_deleteManifest:(id)a3;
- (id)_getManifestWithContainerIdentity:(id)a3;
- (id)_getOrCreateManifestWithContainerIdentity:(id)a3;
- (id)_groupContainersToDeleteWhenReconcilingRemovalOfIdentifiers:(id)a3;
- (id)_initWithContainerIdentities:(id)a3 manifests:(id)a4 waitForDiskSpaceReclaim:(BOOL)a5 removeAllCodeSignInfo:(BOOL)a6 context:(id)a7 resultPromise:(id)a8;
- (id)_replyFromRelayToDaemonWithContainerIdentities:(id)a3;
- (void)_deleteManifestForContainerIdentity:(id)a3;
- (void)_relayContainerIdentities:(id)a3 andAmendResult:(id)a4;
- (void)_routeContainersToHandle:(id *)a3 toRelay:(id *)a4;
- (void)execute;
@end

@implementation MCMCommandOperationDelete

- (NSMutableSet)manifests
{
  result = self->_manifests;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageOperationDelete)message
{
  result = self->_message;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)removeAllCodeSignInfo
{
  result = self->_removeAllCodeSignInfo;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)containerIdentities
{
  result = self->_containerIdentities;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)waitForDiskSpaceReclaim
{
  result = self->_waitForDiskSpaceReclaim;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)concreteContainerIdentities
{
  result = self->_concreteContainerIdentities;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_writeDeleteManifestsForItems:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v28 = a4;
    obj = v5;
    v8 = 0;
    v9 = *v38;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v37 + 1) + 8 * v10);
        v13 = [v12 cacheEntry];
        v14 = [v13 containerPath];
        v15 = [v14 userIdentity];

        v16 = [(MCMCommand *)self context];
        v17 = [v16 userIdentityCache];
        v18 = [v17 libraryRepairForUserIdentity:v15];

        v19 = [v12 manifest];
        v31 = v11;
        v20 = [v19 deleteManifestAfterWritingUsingLibraryRepairForUser:v18 error:&v31];
        v8 = v31;

        v21 = v20 != 0;
        if (!v20)
        {
          v22 = container_log_handle_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v26 = [v12 cacheEntry];
            v27 = [v26 containerIdentity];
            *buf = 138412546;
            v33 = v8;
            v34 = 2112;
            v35 = v27;
            _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Failed to write delete manifest; error = %@, identity = %@", buf, 0x16u);
          }

          v5 = obj;
          goto LABEL_13;
        }

        [v12 setManifest:v20];

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v5 = obj;
      v7 = [obj countByEnumeratingWithState:&v37 objects:v36 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

LABEL_13:

    if (v28 && v8)
    {
      v23 = v8;
      *v28 = v8;
    }
  }

  else
  {

    v8 = 0;
    v21 = 1;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)_deleteManifestForContainerIdentity:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v4 = [(MCMCommandOperationDelete *)self manifests];
  v5 = [v4 count];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(MCMCommandOperationDelete *)self _getManifestWithContainerIdentity:v10];
      if (v6)
      {
        v7 = [(MCMCommandOperationDelete *)self _deleteManifest:v6];
        if (v7)
        {
          v8 = [(MCMCommandOperationDelete *)self manifests];
          [v8 removeObject:v6];
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_deleteManifest:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMCommand *)self context];
  v6 = [v5 userIdentityCache];
  v7 = [v4 concreteContainerIdentity];
  v8 = [v7 userIdentity];
  v9 = [v6 libraryRepairForUserIdentity:v8];

  v16 = 0;
  v10 = [v4 deleteManifestAfterRemovingUsingLibraryRepairForUser:v9 error:&v16];
  v11 = v16;
  if (!v10)
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [v4 concreteContainerIdentity];
      *buf = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = v15;
      _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Could not remove delete manifest; error = %@, identity = %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_getOrCreateManifestWithContainerIdentity:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMCommandOperationDelete *)self _getManifestWithContainerIdentity:v4];
  if (!v5)
  {
    v6 = [MCMDeleteManifest alloc];
    v7 = [(MCMCommand *)self context];
    v8 = [v7 userIdentityCache];
    v5 = [(MCMDeleteManifest *)v6 initWithConcreteContainerIdentity:v4 userIdentityCache:v8];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_getManifestWithContainerIdentity:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(MCMCommandOperationDelete *)self manifests];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 concreteContainerIdentity];
        v11 = [v10 isEqualToContainerIdentity:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_groupContainersToDeleteWhenReconcilingRemovalOfIdentifiers:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = objc_opt_new();
  v5 = [gCodeSigningMapping copyReferenceCountSetForContainerClass:7];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v4;
  v24 = [obj countByEnumeratingWithState:&v42 objects:v41 count:16];
  if (v24)
  {
    v23 = *v43;
    do
    {
      v6 = 0;
      do
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v6;
        v7 = *(*(&v42 + 1) + 8 * v6);
        v8 = [gCodeSigningMapping groupContainerIdentifiersAssociatedWithIdentifier:v7 containerClass:7];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v37 objects:v36 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v38;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v38 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v37 + 1) + 8 * i);
              [v5 removeObject:v13];
              v14 = [v5 countForObject:v13];
              if (v14)
              {
                v15 = v14;
                v16 = container_log_handle_for_category();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412802;
                  v31 = v13;
                  v32 = 2048;
                  v33 = v15;
                  v34 = 2112;
                  v35 = v7;
                  _os_log_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_INFO, "Ref count for [%@] will reach %lu after removing [%@]", buf, 0x20u);
                }
              }

              else
              {
                v17 = [(MCMCommand *)self context];
                v18 = [v17 userIdentityCache];
                v27[0] = MEMORY[0x1E69E9820];
                v27[1] = 3221225472;
                v27[2] = __89__MCMCommandOperationDelete__groupContainersToDeleteWhenReconcilingRemovalOfIdentifiers___block_invoke;
                v27[3] = &unk_1E86AF8F0;
                v27[4] = self;
                v27[5] = v13;
                v29 = 7;
                v27[6] = v7;
                v28 = v26;
                [v18 forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v27];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v37 objects:v36 count:16];
          }

          while (v10);
        }

        v6 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v42 objects:v41 count:16];
    }

    while (v24);
  }

  v19 = [v26 copy];
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void __89__MCMCommandOperationDelete__groupContainersToDeleteWhenReconcilingRemovalOfIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v4 globalConfiguration];
  v6 = [v5 staticConfig];
  v7 = [v6 configForContainerClass:*(a1 + 64)];

  v21 = 1;
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) context];
  v10 = [v9 userIdentityCache];
  v11 = [MCMContainerIdentity containerIdentityWithUserIdentity:v3 identifier:v8 containerConfig:v7 platform:0 transient:0 userIdentityCache:v10 error:&v21];

  v12 = container_log_handle_for_category();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v16 = [v3 shortDescription];
      *buf = 138412802;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_DEFAULT, "Ref count for [%@] will reach zero after removing [%@]; queueing ui=%@ for delete.", buf, 0x20u);
    }

    [*(a1 + 56) addObject:v11];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 40);
      v19 = v21;
      error_description = container_get_error_description();
      *buf = 138412802;
      v23 = v18;
      v24 = 2048;
      v25 = v19;
      v26 = 2080;
      v27 = error_description;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Could not generate identity for [%@] during group reconciliation; error = (%llu) %s", buf, 0x20u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_containersToDeleteRecursivelyStartingWithContainerIdentities:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = [v5 allObjects];
  v8 = [v7 mutableCopy];

  v35 = v5;
  v9 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
  v39 = [MEMORY[0x1E695DFA8] set];
  v37 = v8;
  v38 = v9;
  v36 = self;
  while (1)
  {
    v10 = [v8 lastObject];
    [v8 removeLastObject];
    if (v10)
    {
      do
      {
        v11 = [v10 containerIdentity];
        v12 = [v9 containsObject:v11];

        if ((v12 & 1) == 0)
        {
          v13 = [v10 containerIdentity];
          [v9 addObject:v13];

          v14 = [(MCMCommand *)self context];
          v15 = [v14 containerCache];
          v41 = 0;
          v16 = [v15 entryForContainerIdentity:v10 error:&v41];
          v40 = v41;

          if (v16 && ([v16 metadataMinimal], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v18 = v17;
            v19 = [(MCMCommandOperationDelete *)self _codeSignIdentifiersToRemoveFor:v17 amendingCumulativeIdentifiers:v39];
            v20 = [v16 containerIdentity];
            v21 = [(MCMCommandOperationDelete *)self _getOrCreateManifestWithContainerIdentity:v20];

            do
            {
              v22 = [[MCMCommandOperationDeleteItem alloc] initWithCacheEntry:v16 codeSignIdentifiersToRemove:v19 manifest:v21];
              if (v22)
              {
                [v6 addObject:v22];
              }

              else
              {
                v23 = container_log_handle_for_category();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  v25 = [v18 shortDescription];
                  *buf = 138412290;
                  v43 = v25;
                  _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Could not create delete item; metadata = %@", buf, 0xCu);
                }
              }

              v24 = [v16 next];

              v16 = v24;
            }

            while (v24);

            self = v36;
            v8 = v37;
            v9 = v38;
            v27 = v40;
          }

          else
          {
            v26 = container_log_handle_for_category();
            v27 = v40;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v43 = v40;
              v44 = 2112;
              v45 = v10;
              _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Could not find container from container identity queued for delete; error = %@, identity = %@", buf, 0x16u);
            }

            if ([v40 type] == 21)
            {
              [(MCMCommandOperationDelete *)self _deleteManifestForContainerIdentity:v10];
            }
          }
        }

        v28 = [v8 lastObject];

        [v8 removeLastObject];
        v10 = v28;
      }

      while (v28);
    }

    if (!v39)
    {
      v30 = 0;
      goto LABEL_28;
    }

    if (![v39 count])
    {
      break;
    }

    v29 = [(MCMCommandOperationDelete *)self _groupContainersToDeleteWhenReconcilingRemovalOfIdentifiers:v39];
    v30 = [MEMORY[0x1E695DFA8] set];

    if (!v29 || ![v29 count])
    {

      goto LABEL_28;
    }

    v31 = [v29 allObjects];
    [v8 addObjectsFromArray:v31];

    v9 = v38;
    v39 = v30;
  }

  v30 = v39;
LABEL_28:
  v32 = [v6 copy];

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)_codeSignIdentifiersToRemoveFor:(id)a3 amendingCumulativeIdentifiers:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 containerClass];
  if (v8 > 0xB || ((1 << v8) & 0xED4) == 0)
  {
    goto LABEL_8;
  }

  v10 = [v6 containerClass];
  v11 = 0;
  v12 = 0;
  if (v10 != 7 && v10 != 13)
  {
    v13 = [(MCMCommand *)self context];
    v14 = [v13 containerCache];
    v15 = [v6 containerIdentity];
    v16 = [v14 countContainersForOtherUserIdentitiesWithIdentity:v15 error:0];

    if (v16)
    {
LABEL_8:
      v11 = 0;
LABEL_9:
      v12 = 0;
      goto LABEL_10;
    }

    v20 = MEMORY[0x1E695DFA8];
    v21 = [v6 identifier];
    v12 = [v20 setWithObject:v21];

    v22 = [gCodeSigningMapping childParentMapCache];
    v23 = [v6 identifier];
    v24 = [v22 childBundleIdentifiersForParentIdentifier:v23];

    if (v24)
    {
      [v12 unionSet:v24];
    }

    if (!v12)
    {
      v11 = 0;
      goto LABEL_10;
    }

    if ([v6 transient])
    {
      v44 = 1;
      v25 = [v6 userIdentity];
      v26 = [v6 identifier];
      v41 = [v6 containerIdentity];
      v27 = [v41 containerConfig];
      v28 = [v6 platform];
      v29 = [(MCMCommand *)self context];
      v30 = [v29 userIdentityCache];
      v31 = [MCMContainerIdentity containerIdentityWithUserIdentity:v25 identifier:v26 containerConfig:v27 platform:v28 transient:0 userIdentityCache:v30 error:&v44];

      if (v31)
      {
        v32 = [(MCMCommand *)self context];
        v33 = [v32 containerCache];
        v43 = 0;
        v34 = [v33 entryForContainerIdentity:v31 error:&v43];
        v35 = v43;

        if (v34)
        {
          v42 = v35;
          v36 = [v34 metadataWithError:&v42];
          v11 = v42;

          if (v36)
          {
            v37 = container_log_handle_for_category();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v40 = [v6 identifier];
              *buf = 138412546;
              v46 = v40;
              v47 = 2112;
              v48 = 0;
              _os_log_debug_impl(&dword_1DF2C3000, v37, OS_LOG_TYPE_DEBUG, "Skipping removal of code sign mapping since container to be deleted [%@] is transient and there's a permanent one; error = %@", buf, 0x16u);
            }

            goto LABEL_9;
          }
        }

        else
        {
          v11 = v35;
        }

        goto LABEL_30;
      }

      v38 = container_log_handle_for_category();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = [v6 shortDescription];
        *buf = 138412546;
        v46 = v39;
        v47 = 2048;
        v48 = v44;
        _os_log_error_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_ERROR, "Could not construct container identity from %@ to check for permanent copy: %llu", buf, 0x16u);
      }
    }

    v11 = 0;
LABEL_30:
    if ([v12 count])
    {
      [v7 unionSet:v12];
    }
  }

LABEL_10:
  v17 = [v12 copy];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_containerIdentities
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCommandOperationDelete *)self containerIdentities];
  v4 = v3;
  v5 = MEMORY[0x1E695E0F0];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [MEMORY[0x1E695DFA8] setWithArray:v6];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(MCMCommandOperationDelete *)self manifests];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) concreteContainerIdentity];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_replyFromRelayToDaemonWithContainerIdentities:(id)a3
{
  v82 = *MEMORY[0x1E69E9840];
  v3 = a3;
  __s[1] = 0;
  v4 = xpc_array_create(0, 0);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v78 objects:v77 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v79;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v79 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v78 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          *v49 = 1;
          v12 = [v11 createLibsystemContainerWithError:v49];
          if (v12)
          {
            v13 = v12;
            v14 = xpc_dictionary_create(0, 0, 0);
            container_xpc_encode_container_object();
            xpc_array_append_value(v4, v14);
            MEMORY[0x1E12D3190](v13);
          }

          else
          {
            v14 = container_log_handle_for_category();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = *v49;
              error_description = container_get_error_description();
              *buf = 138412802;
              *&v69[0] = v11;
              WORD4(v69[0]) = 2048;
              *(v69 + 10) = v15;
              WORD1(v69[1]) = 2080;
              *(&v69[1] + 4) = error_description;
              _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Could not allocate container object for delete relay using %@: (%llu) %s", buf, 0x20u);
            }
          }
        }

        else
        {
          v11 = container_log_handle_for_category();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            *&v69[0] = v10;
            _os_log_fault_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_FAULT, "Non-libsystem identity encountered when constructing delete relay: %@", buf, 0xCu);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v78 objects:v77 count:16];
    }

    while (v7);
  }

  v17 = self;
  v18 = [(MCMCommandOperationDelete *)self waitForDiskSpaceReclaim];
  v19 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v19, "Command", 3uLL);
  xpc_dictionary_set_uint64(v19, "Flags", v18);
  xpc_dictionary_set_value(v19, "ContainersArray", v4);
  v20 = container_log_handle_for_category();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

  if (v21)
  {
    v22 = MEMORY[0x1E12D46E0](v19);
    __s[0] = v22;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    current_persona_originator_info = voucher_get_current_persona_originator_info();
    v46 = DWORD2(v74);
    v44 = DWORD1(v75);
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    current_persona_proximate_info = voucher_get_current_persona_proximate_info();
    v41 = DWORD1(v72);
    v42 = DWORD2(v71);
    v70 = 0;
    memset(v69, 0, sizeof(v69));
    *buf = 2;
    current_persona = voucher_get_current_persona();
    if (current_persona == -1 || (kpersona_info() & 0x80000000) != 0)
    {
      v40 = "<unknown>";
      v26 = "NOPERSONA";
    }

    else
    {
      if ((DWORD1(v69[0]) - 2) > 4)
      {
        v26 = "<unknown>";
      }

      else
      {
        v26 = off_1E86AF910[DWORD1(v69[0]) - 2];
      }

      v40 = &v69[5] + 4;
    }

    v27 = container_log_handle_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v44 & ~(current_persona_originator_info >> 31);
      v28 = v46 & ~(current_persona_originator_info >> 31);
      v47 = v41 & ~(current_persona_proximate_info >> 31);
      v29 = v42 & ~(current_persona_proximate_info >> 31);
      v30 = geteuid();
      v31 = getuid();
      *v49 = 67111427;
      *&v49[4] = current_persona;
      v50 = 2082;
      v51 = v26;
      v52 = 2082;
      v53 = v40;
      v54 = 1024;
      v55 = v28;
      v56 = 1024;
      v57 = v45;
      v17 = self;
      v58 = 1024;
      v59 = v29;
      v60 = 1024;
      v61 = v47;
      v62 = 1024;
      v63 = v30;
      v64 = 1024;
      v65 = v31;
      v66 = 2081;
      v67 = v22;
      _os_log_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_DEFAULT, "Container delete; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], euid = %u, uid = %u, message = %{private}s", v49, 0x4Au);
    }

    if (v22)
    {
      free(v22);
      memset_s(__s, 8uLL, 0, 8uLL);
    }
  }

  *v49 = 1;
  container_xpc_set_use_shared_connection();
  v32 = [(MCMCommand *)v17 context];
  v33 = [v32 clientIdentity];
  [v33 createLibsystemClient];

  v34 = container_client_copy_encoded_xpc_object();
  if (v34)
  {
    v35 = 0;
    if (*v49 == 1)
    {
      xpc_dictionary_set_value(v19, "ProxyForClient", v34);
      v35 = container_xpc_send_sync_message();
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = container_error_copy_unlocalized_description();
  *&v74 = v36;
  v37 = container_log_handle_for_category();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&v69[0] = v36;
    _os_log_debug_impl(&dword_1DF2C3000, v37, OS_LOG_TYPE_DEBUG, "Delete relay response: %s", buf, 0xCu);
  }

  if (v36)
  {
    free(v36);
    memset_s(&v74, 8uLL, 0, 8uLL);
  }

  container_free_client();
  container_error_free();

  v38 = *MEMORY[0x1E69E9840];

  return v35;
}

- (void)_routeContainersToHandle:(id *)a3 toRelay:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = [(MCMCommandOperationDelete *)self _containerIdentities];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v12 disposition];
        if (v13)
        {
          if (v13 == 2)
          {
            v14 = v6;
          }

          else
          {
            if (v13 != 1)
            {
              continue;
            }

            v14 = v5;
          }

          [v14 addObject:v12];
        }

        else
        {
          v15 = container_log_handle_for_category();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            v16 = [(MCMCommand *)self context];
            v17 = [v16 clientIdentity];
            *buf = 138412546;
            v23 = v12;
            v24 = 2112;
            v25 = v17;
            _os_log_fault_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_FAULT, "Attempt to delete container for different user or container class not supported, ignored: %@; client: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v9);
  }

  if (a3)
  {
    *a3 = [v5 copy];
  }

  if (a4)
  {
    *a4 = [v6 copy];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_relayContainerIdentities:(id)a3 andAmendResult:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v6 = a4;
  if ([v9 count])
  {
    v7 = [(MCMCommandOperationDelete *)self _replyFromRelayToDaemonWithContainerIdentities:v9];
    if (v7)
    {
      [v6 mergeWithXPCResult:v7];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)execute
{
  v65 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v54 = 0;
  v55 = 0;
  [(MCMCommandOperationDelete *)self _routeContainersToHandle:&v55 toRelay:&v54];
  v3 = v55;
  v47 = v54;
  v48 = v3;
  if (![(MCMCommandOperationReclaimDiskSpace *)v3 count])
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEBUG, "Nothing to delete locally", buf, 2u);
    }

    v5 = 0;
    v11 = 0;
    goto LABEL_45;
  }

  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v62 = v3;
    _os_log_debug_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEBUG, "Queueing containers for deletion: %@", buf, 0xCu);
  }

  v53 = 0;
  v5 = [(MCMCommandOperationDelete *)self _containersToDeleteRecursivelyStartingWithContainerIdentities:v3 error:&v53];
  v6 = v53;
  if (!v5)
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v62 = v6;
      v63 = 2112;
      v64 = v3;
      _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Failed to collect identities for deletion; error = %@, staring set = %@", buf, 0x16u);
    }

    v11 = 0;
    v5 = 0;
    if (v6)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  if (![(MCMCommandOperationReclaimDiskSpace *)v5 count])
  {
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v62 = v3;
      _os_log_debug_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_DEBUG, "Collected zero identities for deletion; starting set = %@", buf, 0xCu);
    }

    v11 = 0;
    if (v6)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  v7 = [(MCMCommandOperationDelete *)self manifests];
  v8 = [(MCMCommandOperationReclaimDiskSpace *)v7 count];
  v9 = v8 == 0;
  if (v8)
  {
LABEL_7:

    goto LABEL_23;
  }

  v14 = [(MCMCommandOperationReclaimDiskSpace *)v5 count]> 1;

  if (v14)
  {
    v52 = v6;
    v15 = [(MCMCommandOperationDelete *)self _writeDeleteManifestsForItems:v5 error:&v52];
    v7 = v52;

    if (!v15)
    {
      if ([(MCMCommandOperationReclaimDiskSpace *)v7 category]!= 1 || [(MCMCommandOperationReclaimDiskSpace *)v7 POSIXerrno]!= 28)
      {
        v22 = container_log_handle_for_category();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v62 = v7;
          v63 = 2112;
          v64 = v5;
          _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Failed to write manifest for deletion; error = %@, containers = %@", buf, 0x16u);
        }

        goto LABEL_34;
      }

      v21 = container_log_handle_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v62 = v5;
        _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Failed to write manifest for deletion because ENOSPC, ignoring and enabling direct delete; containers = %@", buf, 0xCu);
      }

      v6 = 0;
      goto LABEL_7;
    }

    v9 = 0;
    v6 = v7;
  }

  else
  {
    v9 = 0;
  }

LABEL_23:
  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v62 = v5;
    _os_log_debug_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEBUG, "Deleting containers: %@", buf, 0xCu);
  }

  v51 = v6;
  v11 = [(MCMCommandOperationDelete *)self _deleteItems:v5 directDelete:v9 error:&v51];
  v7 = v51;

  if (!v11)
  {
    v18 = container_log_handle_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v62 = v7;
      v63 = 2112;
      v64 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Failed to delete containers; error = %@, containers = %@", buf, 0x16u);
    }

LABEL_34:
    v11 = 0;
    goto LABEL_35;
  }

  if (![v11 count])
  {
    v17 = container_log_handle_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v62 = v7;
      v63 = 2112;
      v64 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Deleted zero containers; error = %@, containers = %@", buf, 0x16u);
    }
  }

LABEL_35:
  v6 = v7;
  if (v7)
  {
LABEL_36:
    v19 = [(MCMResultBase *)[MCMResultOperationDelete alloc] initWithError:v6];
    v20 = 0;
    goto LABEL_55;
  }

LABEL_45:
  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v11 = v11;
  v25 = [v11 countByEnumeratingWithState:&v57 objects:v56 count:16];
  if (v25)
  {
    v26 = *v58;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v58 != v26)
        {
          objc_enumerationMutation(v11);
        }

        v28 = *(*(&v57 + 1) + 8 * i);
        v29 = [v28 containerPath];
        [v23 addObject:v29];

        v30 = [v28 containerIdentity];
        [v24 addObject:v30];
      }

      v25 = [v11 countByEnumeratingWithState:&v57 objects:v56 count:16];
    }

    while (v25);
  }

  v31 = [MCMResultOperationDelete alloc];
  v32 = [(MCMCommand *)self context];
  v33 = [v32 clientIdentity];
  v34 = [(MCMResultWithContainersArrayBase *)v31 initWithContainerPaths:v23 containerIdentities:v24 includePath:1 clientIdentity:v33 skipSandboxExtensions:1];

  [(MCMCommandOperationDelete *)self _relayContainerIdentities:v47 andAmendResult:v34];
  v35 = [MCMResultPromise alloc];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __36__MCMCommandOperationDelete_execute__block_invoke;
  v49[3] = &unk_1E86AF8C8;
  v49[4] = self;
  v19 = v34;
  v50 = v19;
  v36 = [(MCMResultPromise *)v35 initWithCompletion:v49];
  v37 = [MCMCommandOperationReclaimDiskSpace alloc];
  LODWORD(v31) = [(MCMCommandOperationDelete *)self waitForDiskSpaceReclaim];
  v38 = [(MCMCommand *)self context];
  v39 = [(MCMCommand *)self reply];
  v40 = [(MCMCommandOperationReclaimDiskSpace *)v37 initWithAsynchronously:v31 ^ 1 context:v38 resultPromise:v36 handoffForReply:v39];

  v41 = container_log_handle_for_category();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    v45 = [objc_opt_class() command];
    *buf = 134218240;
    v62 = v40;
    v63 = 2048;
    v64 = v45;
    _os_log_debug_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_DEBUG, "Completed delete, executing command <%p; %llu>...", buf, 0x16u);
  }

  [(MCMCommandOperationReclaimDiskSpace *)v40 execute];
  v6 = 0;
  v20 = 1;
LABEL_55:
  v42 = +[MCMTestLocks sharedInstance];
  [v42 waitOnLock:11];

  if (!v20 || ![(MCMCommandOperationDelete *)self waitForDiskSpaceReclaim])
  {
    v43 = [(MCMCommand *)self resultPromise];
    [v43 completeWithResult:v19];
  }

  objc_autoreleasePoolPop(context);
  v44 = *MEMORY[0x1E69E9840];
}

id __36__MCMCommandOperationDelete_execute__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) waitForDiskSpaceReclaim])
  {
    v4 = [*(a1 + 32) resultPromise];
    [v4 completeWithResult:*(a1 + 40)];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)preflightClientAllowed
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCommand *)self context];
  v4 = [v3 clientIdentity];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(MCMCommandOperationDelete *)self containerIdentities];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (![v4 isAllowedToPerformOperationType:2 containerIdentity:*(*(&v14 + 1) + 8 * i) part:0 partDomain:0 access:0])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (MCMCommandOperationDelete)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v17.receiver = self;
  v17.super_class = MCMCommandOperationDelete;
  v10 = [(MCMCommand *)&v17 initWithMessage:v9 context:a4 reply:a5];
  if (v10)
  {
    v11 = [v9 concreteContainerIdentities];
    containerIdentities = v10->_containerIdentities;
    v10->_containerIdentities = v11;

    v13 = [MEMORY[0x1E695DFA8] set];
    manifests = v10->_manifests;
    v10->_manifests = v13;

    v10->_removeAllCodeSignInfo = 0;
    v10->_waitForDiskSpaceReclaim = [v9 waitForDiskSpaceReclaim];
    objc_storeStrong(&v10->_message, a3);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)_initWithContainerIdentities:(id)a3 manifests:(id)a4 waitForDiskSpaceReclaim:(BOOL)a5 removeAllCodeSignInfo:(BOOL)a6 context:(id)a7 resultPromise:(id)a8
{
  v25 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v24.receiver = self;
  v24.super_class = MCMCommandOperationDelete;
  v16 = [(MCMCommand *)&v24 initWithContext:a7 resultPromise:a8];
  v17 = v16;
  if (v16)
  {
    if (v14)
    {
      v18 = v14;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v16->_containerIdentities, v18);
    v19 = [v15 mutableCopy];
    v20 = v19;
    if (!v19)
    {
      v20 = [MEMORY[0x1E695DFA8] set];
    }

    objc_storeStrong(&v17->_manifests, v20);
    if (!v19)
    {
    }

    v17->_removeAllCodeSignInfo = a6;
    v17->_waitForDiskSpaceReclaim = a5;
    message = v17->_message;
    v17->_message = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (Class)incomingMessageClass
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return objc_opt_class();
}

+ (unint64_t)command
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 3;
}

+ (BOOL)deleteContainerRootURL:(id)a3 userIdentity:(id)a4 containerClass:(unint64_t)a5 containerPathIdentifier:(id)a6 preferDirectDelete:(BOOL)a7 error:(id *)a8
{
  v54 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = +[MCMFileManager defaultManager];
  if (a7)
  {
    v16 = 0;
LABEL_3:
    v17 = 0;
    goto LABEL_14;
  }

  v43 = v14;
  v18 = v13;
  v19 = a8;
  v20 = v18;
  v21 = [MCMContainerClassDeletedPath containerPathForUserIdentity:"containerPathForUserIdentity:containerClass:" containerClass:?];
  v47 = 0;
  v22 = [v21 createIfNecessaryWithError:&v47];
  v23 = v47;
  if ((v22 & 1) == 0)
  {
    v24 = container_log_handle_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v49 = v23;
      v50 = 2112;
      v51 = v21;
      _os_log_error_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_ERROR, "Failed to create deathrow directory; error = %@, class path = %@", buf, 0x16u);
    }

    v23 = 0;
  }

  v25 = [v21 classURL];
  v46 = v23;
  v26 = [v15 createTemporaryDirectoryInDirectoryURL:v25 withNamePrefix:@"deleting." error:&v46];
  v17 = v46;

  if (v26)
  {
    v27 = v22 ^ 1;
    a8 = v19;
  }

  else
  {
    v28 = container_log_handle_for_category();
    a8 = v19;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v49 = v17;
      v50 = 2112;
      v51 = v21;
      _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "Failed to create unique deathrow directory; error = %@, class path = %@", buf, 0x16u);
    }

    v17 = 0;
    v27 = 1;
  }

  v13 = v20;
  v14 = v43;
  v16 = [v26 URLByAppendingPathComponent:v43 isDirectory:1];

  if ((v27 & 1) == 0)
  {
    v45 = v17;
    v36 = [v15 moveItemAtURL:v12 toURL:v16 error:&v45];
    v30 = v45;

    if (v36)
    {
      goto LABEL_20;
    }

    v39 = container_log_handle_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v41 = [v12 path];
      v42 = [v16 path];
      *buf = 138412802;
      v49 = v41;
      v50 = 2112;
      v51 = v42;
      v52 = 2112;
      v53 = v30;
      _os_log_error_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_ERROR, "Couldn't stage for deletion from [%@] to [%@]; trying a direct delete instead: %@", buf, 0x20u);
    }

    goto LABEL_3;
  }

LABEL_14:
  v44 = v17;
  v29 = [v15 removeItemAtURL:v12 error:&v44];
  v30 = v44;

  if (v29)
  {
LABEL_20:
    v33 = 0;
    v35 = 1;
    goto LABEL_22;
  }

  v31 = container_log_handle_for_category();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v40 = [v12 path];
    *buf = 138412546;
    v49 = v40;
    v50 = 2112;
    v51 = v30;
    _os_log_error_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_ERROR, "Failed to delete container at %@: %@", buf, 0x16u);
  }

  v32 = [[MCMError alloc] initWithNSError:v30 url:v12 defaultErrorType:28];
  v33 = v32;
  if (a8)
  {
    v34 = v32;
    v35 = 0;
    *a8 = v33;
  }

  else
  {
    v35 = 0;
  }

LABEL_22:

  v37 = *MEMORY[0x1E69E9840];
  return v35;
}

@end