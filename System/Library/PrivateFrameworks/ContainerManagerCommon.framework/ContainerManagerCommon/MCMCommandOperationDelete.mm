@interface MCMCommandOperationDelete
+ (BOOL)deleteContainerRootURL:(id)l userIdentity:(id)identity containerClass:(unint64_t)class containerPathIdentifier:(id)identifier preferDirectDelete:(BOOL)delete error:(id *)error;
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)_writeDeleteManifestsForItems:(id)items error:(id *)error;
- (BOOL)preflightClientAllowed;
- (BOOL)removeAllCodeSignInfo;
- (BOOL)waitForDiskSpaceReclaim;
- (MCMCommandOperationDelete)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (MCMXPCMessageOperationDelete)message;
- (NSArray)concreteContainerIdentities;
- (NSArray)containerIdentities;
- (NSMutableSet)manifests;
- (id)_codeSignIdentifiersToRemoveFor:(id)for amendingCumulativeIdentifiers:(id)identifiers;
- (id)_containerIdentities;
- (id)_containersToDeleteRecursivelyStartingWithContainerIdentities:(id)identities error:(id *)error;
- (id)_deleteManifest:(id)manifest;
- (id)_getManifestWithContainerIdentity:(id)identity;
- (id)_getOrCreateManifestWithContainerIdentity:(id)identity;
- (id)_groupContainersToDeleteWhenReconcilingRemovalOfIdentifiers:(id)identifiers;
- (id)_initWithContainerIdentities:(id)identities manifests:(id)manifests waitForDiskSpaceReclaim:(BOOL)reclaim removeAllCodeSignInfo:(BOOL)info context:(id)context resultPromise:(id)promise;
- (id)_replyFromRelayToDaemonWithContainerIdentities:(id)identities;
- (void)_deleteManifestForContainerIdentity:(id)identity;
- (void)_relayContainerIdentities:(id)identities andAmendResult:(id)result;
- (void)_routeContainersToHandle:(id *)handle toRelay:(id *)relay;
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

- (BOOL)_writeDeleteManifestsForItems:(id)items error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  itemsCopy = items;
  v6 = [itemsCopy countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    errorCopy = error;
    obj = itemsCopy;
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
        cacheEntry = [v12 cacheEntry];
        containerPath = [cacheEntry containerPath];
        userIdentity = [containerPath userIdentity];

        context = [(MCMCommand *)self context];
        userIdentityCache = [context userIdentityCache];
        v18 = [userIdentityCache libraryRepairForUserIdentity:userIdentity];

        manifest = [v12 manifest];
        v31 = v11;
        v20 = [manifest deleteManifestAfterWritingUsingLibraryRepairForUser:v18 error:&v31];
        v8 = v31;

        v21 = v20 != 0;
        if (!v20)
        {
          v22 = container_log_handle_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            cacheEntry2 = [v12 cacheEntry];
            containerIdentity = [cacheEntry2 containerIdentity];
            *buf = 138412546;
            v33 = v8;
            v34 = 2112;
            v35 = containerIdentity;
            _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Failed to write delete manifest; error = %@, identity = %@", buf, 0x16u);
          }

          itemsCopy = obj;
          goto LABEL_13;
        }

        [v12 setManifest:v20];

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      itemsCopy = obj;
      v7 = [obj countByEnumeratingWithState:&v37 objects:v36 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

LABEL_13:

    if (errorCopy && v8)
    {
      v23 = v8;
      *errorCopy = v8;
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

- (void)_deleteManifestForContainerIdentity:(id)identity
{
  v11 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  manifests = [(MCMCommandOperationDelete *)self manifests];
  v5 = [manifests count];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(MCMCommandOperationDelete *)self _getManifestWithContainerIdentity:identityCopy];
      if (v6)
      {
        v7 = [(MCMCommandOperationDelete *)self _deleteManifest:v6];
        if (v7)
        {
          manifests2 = [(MCMCommandOperationDelete *)self manifests];
          [manifests2 removeObject:v6];
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_deleteManifest:(id)manifest
{
  v21 = *MEMORY[0x1E69E9840];
  manifestCopy = manifest;
  context = [(MCMCommand *)self context];
  userIdentityCache = [context userIdentityCache];
  concreteContainerIdentity = [manifestCopy concreteContainerIdentity];
  userIdentity = [concreteContainerIdentity userIdentity];
  v9 = [userIdentityCache libraryRepairForUserIdentity:userIdentity];

  v16 = 0;
  v10 = [manifestCopy deleteManifestAfterRemovingUsingLibraryRepairForUser:v9 error:&v16];
  v11 = v16;
  if (!v10)
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      concreteContainerIdentity2 = [manifestCopy concreteContainerIdentity];
      *buf = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = concreteContainerIdentity2;
      _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Could not remove delete manifest; error = %@, identity = %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_getOrCreateManifestWithContainerIdentity:(id)identity
{
  v11 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v5 = [(MCMCommandOperationDelete *)self _getManifestWithContainerIdentity:identityCopy];
  if (!v5)
  {
    v6 = [MCMDeleteManifest alloc];
    context = [(MCMCommand *)self context];
    userIdentityCache = [context userIdentityCache];
    v5 = [(MCMDeleteManifest *)v6 initWithConcreteContainerIdentity:identityCopy userIdentityCache:userIdentityCache];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_getManifestWithContainerIdentity:(id)identity
{
  v19 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  manifests = [(MCMCommandOperationDelete *)self manifests];
  v6 = [manifests countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(manifests);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        concreteContainerIdentity = [v9 concreteContainerIdentity];
        v11 = [concreteContainerIdentity isEqualToContainerIdentity:identityCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [manifests countByEnumeratingWithState:&v15 objects:v14 count:16];
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

- (id)_groupContainersToDeleteWhenReconcilingRemovalOfIdentifiers:(id)identifiers
{
  v46 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v26 = objc_opt_new();
  v5 = [gCodeSigningMapping copyReferenceCountSetForContainerClass:7];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = identifiersCopy;
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
                context = [(MCMCommand *)self context];
                userIdentityCache = [context userIdentityCache];
                v27[0] = MEMORY[0x1E69E9820];
                v27[1] = 3221225472;
                v27[2] = __89__MCMCommandOperationDelete__groupContainersToDeleteWhenReconcilingRemovalOfIdentifiers___block_invoke;
                v27[3] = &unk_1E86AF8F0;
                v27[4] = self;
                v27[5] = v13;
                v29 = 7;
                v27[6] = v7;
                v28 = v26;
                [userIdentityCache forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v27];
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

- (id)_containersToDeleteRecursivelyStartingWithContainerIdentities:(id)identities error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(identitiesCopy, "count")}];
  allObjects = [identitiesCopy allObjects];
  v8 = [allObjects mutableCopy];

  v35 = identitiesCopy;
  v9 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(identitiesCopy, "count")}];
  v39 = [MEMORY[0x1E695DFA8] set];
  v37 = v8;
  v38 = v9;
  selfCopy = self;
  while (1)
  {
    lastObject = [v8 lastObject];
    [v8 removeLastObject];
    if (lastObject)
    {
      do
      {
        containerIdentity = [lastObject containerIdentity];
        v12 = [v9 containsObject:containerIdentity];

        if ((v12 & 1) == 0)
        {
          containerIdentity2 = [lastObject containerIdentity];
          [v9 addObject:containerIdentity2];

          context = [(MCMCommand *)self context];
          containerCache = [context containerCache];
          v41 = 0;
          v16 = [containerCache entryForContainerIdentity:lastObject error:&v41];
          v40 = v41;

          if (v16 && ([v16 metadataMinimal], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v18 = v17;
            v19 = [(MCMCommandOperationDelete *)self _codeSignIdentifiersToRemoveFor:v17 amendingCumulativeIdentifiers:v39];
            containerIdentity3 = [v16 containerIdentity];
            v21 = [(MCMCommandOperationDelete *)self _getOrCreateManifestWithContainerIdentity:containerIdentity3];

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
                  shortDescription = [v18 shortDescription];
                  *buf = 138412290;
                  v43 = shortDescription;
                  _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Could not create delete item; metadata = %@", buf, 0xCu);
                }
              }

              next = [v16 next];

              v16 = next;
            }

            while (next);

            self = selfCopy;
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
              v45 = lastObject;
              _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Could not find container from container identity queued for delete; error = %@, identity = %@", buf, 0x16u);
            }

            if ([v40 type] == 21)
            {
              [(MCMCommandOperationDelete *)self _deleteManifestForContainerIdentity:lastObject];
            }
          }
        }

        lastObject2 = [v8 lastObject];

        [v8 removeLastObject];
        lastObject = lastObject2;
      }

      while (lastObject2);
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

    allObjects2 = [v29 allObjects];
    [v8 addObjectsFromArray:allObjects2];

    v9 = v38;
    v39 = v30;
  }

  v30 = v39;
LABEL_28:
  v32 = [v6 copy];

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)_codeSignIdentifiersToRemoveFor:(id)for amendingCumulativeIdentifiers:(id)identifiers
{
  v49 = *MEMORY[0x1E69E9840];
  forCopy = for;
  identifiersCopy = identifiers;
  containerClass = [forCopy containerClass];
  if (containerClass > 0xB || ((1 << containerClass) & 0xED4) == 0)
  {
    goto LABEL_8;
  }

  containerClass2 = [forCopy containerClass];
  v11 = 0;
  v12 = 0;
  if (containerClass2 != 7 && containerClass2 != 13)
  {
    context = [(MCMCommand *)self context];
    containerCache = [context containerCache];
    containerIdentity = [forCopy containerIdentity];
    v16 = [containerCache countContainersForOtherUserIdentitiesWithIdentity:containerIdentity error:0];

    if (v16)
    {
LABEL_8:
      v11 = 0;
LABEL_9:
      v12 = 0;
      goto LABEL_10;
    }

    v20 = MEMORY[0x1E695DFA8];
    identifier = [forCopy identifier];
    v12 = [v20 setWithObject:identifier];

    childParentMapCache = [gCodeSigningMapping childParentMapCache];
    identifier2 = [forCopy identifier];
    v24 = [childParentMapCache childBundleIdentifiersForParentIdentifier:identifier2];

    if (v24)
    {
      [v12 unionSet:v24];
    }

    if (!v12)
    {
      v11 = 0;
      goto LABEL_10;
    }

    if ([forCopy transient])
    {
      v44 = 1;
      userIdentity = [forCopy userIdentity];
      identifier3 = [forCopy identifier];
      containerIdentity2 = [forCopy containerIdentity];
      containerConfig = [containerIdentity2 containerConfig];
      platform = [forCopy platform];
      context2 = [(MCMCommand *)self context];
      userIdentityCache = [context2 userIdentityCache];
      v31 = [MCMContainerIdentity containerIdentityWithUserIdentity:userIdentity identifier:identifier3 containerConfig:containerConfig platform:platform transient:0 userIdentityCache:userIdentityCache error:&v44];

      if (v31)
      {
        context3 = [(MCMCommand *)self context];
        containerCache2 = [context3 containerCache];
        v43 = 0;
        v34 = [containerCache2 entryForContainerIdentity:v31 error:&v43];
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
              identifier4 = [forCopy identifier];
              *buf = 138412546;
              v46 = identifier4;
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
        shortDescription = [forCopy shortDescription];
        *buf = 138412546;
        v46 = shortDescription;
        v47 = 2048;
        v48 = v44;
        _os_log_error_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_ERROR, "Could not construct container identity from %@ to check for permanent copy: %llu", buf, 0x16u);
      }
    }

    v11 = 0;
LABEL_30:
    if ([v12 count])
    {
      [identifiersCopy unionSet:v12];
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
  containerIdentities = [(MCMCommandOperationDelete *)self containerIdentities];
  v4 = containerIdentities;
  v5 = MEMORY[0x1E695E0F0];
  if (containerIdentities)
  {
    v5 = containerIdentities;
  }

  v6 = v5;

  v7 = [MEMORY[0x1E695DFA8] setWithArray:v6];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  manifests = [(MCMCommandOperationDelete *)self manifests];
  v9 = [manifests countByEnumeratingWithState:&v18 objects:v17 count:16];
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
          objc_enumerationMutation(manifests);
        }

        concreteContainerIdentity = [*(*(&v18 + 1) + 8 * i) concreteContainerIdentity];
        [v7 addObject:concreteContainerIdentity];
      }

      v10 = [manifests countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_replyFromRelayToDaemonWithContainerIdentities:(id)identities
{
  v82 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  __s[1] = 0;
  v4 = xpc_array_create(0, 0);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v5 = identitiesCopy;
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

  selfCopy2 = self;
  waitForDiskSpaceReclaim = [(MCMCommandOperationDelete *)self waitForDiskSpaceReclaim];
  v19 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v19, "Command", 3uLL);
  xpc_dictionary_set_uint64(v19, "Flags", waitForDiskSpaceReclaim);
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
      selfCopy2 = self;
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
  context = [(MCMCommand *)selfCopy2 context];
  clientIdentity = [context clientIdentity];
  [clientIdentity createLibsystemClient];

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

- (void)_routeContainersToHandle:(id *)handle toRelay:(id *)relay
{
  v31 = *MEMORY[0x1E69E9840];
  _containerIdentities = [(MCMCommandOperationDelete *)self _containerIdentities];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = _containerIdentities;
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
        disposition = [v12 disposition];
        if (disposition)
        {
          if (disposition == 2)
          {
            v14 = v6;
          }

          else
          {
            if (disposition != 1)
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
            context = [(MCMCommand *)self context];
            clientIdentity = [context clientIdentity];
            *buf = 138412546;
            v23 = v12;
            v24 = 2112;
            v25 = clientIdentity;
            _os_log_fault_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_FAULT, "Attempt to delete container for different user or container class not supported, ignored: %@; client: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v9);
  }

  if (handle)
  {
    *handle = [v5 copy];
  }

  if (relay)
  {
    *relay = [v6 copy];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_relayContainerIdentities:(id)identities andAmendResult:(id)result
{
  v10 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  resultCopy = result;
  if ([identitiesCopy count])
  {
    v7 = [(MCMCommandOperationDelete *)self _replyFromRelayToDaemonWithContainerIdentities:identitiesCopy];
    if (v7)
    {
      [resultCopy mergeWithXPCResult:v7];
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

  manifests = [(MCMCommandOperationDelete *)self manifests];
  v8 = [(MCMCommandOperationReclaimDiskSpace *)manifests count];
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
    manifests = v52;

    if (!v15)
    {
      if ([(MCMCommandOperationReclaimDiskSpace *)manifests category]!= 1 || [(MCMCommandOperationReclaimDiskSpace *)manifests POSIXerrno]!= 28)
      {
        v22 = container_log_handle_for_category();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v62 = manifests;
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
    v6 = manifests;
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
  manifests = v51;

  if (!v11)
  {
    v18 = container_log_handle_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v62 = manifests;
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
      v62 = manifests;
      v63 = 2112;
      v64 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Deleted zero containers; error = %@, containers = %@", buf, 0x16u);
    }
  }

LABEL_35:
  v6 = manifests;
  if (manifests)
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
        containerPath = [v28 containerPath];
        [v23 addObject:containerPath];

        containerIdentity = [v28 containerIdentity];
        [v24 addObject:containerIdentity];
      }

      v25 = [v11 countByEnumeratingWithState:&v57 objects:v56 count:16];
    }

    while (v25);
  }

  v31 = [MCMResultOperationDelete alloc];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  v34 = [(MCMResultWithContainersArrayBase *)v31 initWithContainerPaths:v23 containerIdentities:v24 includePath:1 clientIdentity:clientIdentity skipSandboxExtensions:1];

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
  context2 = [(MCMCommand *)self context];
  reply = [(MCMCommand *)self reply];
  v40 = [(MCMCommandOperationReclaimDiskSpace *)v37 initWithAsynchronously:v31 ^ 1 context:context2 resultPromise:v36 handoffForReply:reply];

  v41 = container_log_handle_for_category();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    command = [objc_opt_class() command];
    *buf = 134218240;
    v62 = v40;
    v63 = 2048;
    v64 = command;
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
    resultPromise = [(MCMCommand *)self resultPromise];
    [resultPromise completeWithResult:v19];
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
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  containerIdentities = [(MCMCommandOperationDelete *)self containerIdentities];
  v6 = [containerIdentities countByEnumeratingWithState:&v14 objects:v13 count:16];
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
          objc_enumerationMutation(containerIdentities);
        }

        if (![clientIdentity isAllowedToPerformOperationType:2 containerIdentity:*(*(&v14 + 1) + 8 * i) part:0 partDomain:0 access:0])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [containerIdentities countByEnumeratingWithState:&v14 objects:v13 count:16];
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

- (MCMCommandOperationDelete)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v17.receiver = self;
  v17.super_class = MCMCommandOperationDelete;
  v10 = [(MCMCommand *)&v17 initWithMessage:messageCopy context:context reply:reply];
  if (v10)
  {
    concreteContainerIdentities = [messageCopy concreteContainerIdentities];
    containerIdentities = v10->_containerIdentities;
    v10->_containerIdentities = concreteContainerIdentities;

    v13 = [MEMORY[0x1E695DFA8] set];
    manifests = v10->_manifests;
    v10->_manifests = v13;

    v10->_removeAllCodeSignInfo = 0;
    v10->_waitForDiskSpaceReclaim = [messageCopy waitForDiskSpaceReclaim];
    objc_storeStrong(&v10->_message, message);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)_initWithContainerIdentities:(id)identities manifests:(id)manifests waitForDiskSpaceReclaim:(BOOL)reclaim removeAllCodeSignInfo:(BOOL)info context:(id)context resultPromise:(id)promise
{
  v25 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  manifestsCopy = manifests;
  v24.receiver = self;
  v24.super_class = MCMCommandOperationDelete;
  v16 = [(MCMCommand *)&v24 initWithContext:context resultPromise:promise];
  v17 = v16;
  if (v16)
  {
    if (identitiesCopy)
    {
      v18 = identitiesCopy;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v16->_containerIdentities, v18);
    v19 = [manifestsCopy mutableCopy];
    v20 = v19;
    if (!v19)
    {
      v20 = [MEMORY[0x1E695DFA8] set];
    }

    objc_storeStrong(&v17->_manifests, v20);
    if (!v19)
    {
    }

    v17->_removeAllCodeSignInfo = info;
    v17->_waitForDiskSpaceReclaim = reclaim;
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

+ (BOOL)deleteContainerRootURL:(id)l userIdentity:(id)identity containerClass:(unint64_t)class containerPathIdentifier:(id)identifier preferDirectDelete:(BOOL)delete error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identityCopy = identity;
  identifierCopy = identifier;
  v15 = +[MCMFileManager defaultManager];
  if (delete)
  {
    v16 = 0;
LABEL_3:
    v17 = 0;
    goto LABEL_14;
  }

  v43 = identifierCopy;
  v18 = identityCopy;
  errorCopy = error;
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

  classURL = [v21 classURL];
  v46 = v23;
  v26 = [v15 createTemporaryDirectoryInDirectoryURL:classURL withNamePrefix:@"deleting." error:&v46];
  v17 = v46;

  if (v26)
  {
    v27 = v22 ^ 1;
    error = errorCopy;
  }

  else
  {
    v28 = container_log_handle_for_category();
    error = errorCopy;
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

  identityCopy = v20;
  identifierCopy = v43;
  v16 = [v26 URLByAppendingPathComponent:v43 isDirectory:1];

  if ((v27 & 1) == 0)
  {
    v45 = v17;
    v36 = [v15 moveItemAtURL:lCopy toURL:v16 error:&v45];
    v30 = v45;

    if (v36)
    {
      goto LABEL_20;
    }

    v39 = container_log_handle_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      path2 = [v16 path];
      *buf = 138412802;
      v49 = path;
      v50 = 2112;
      v51 = path2;
      v52 = 2112;
      v53 = v30;
      _os_log_error_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_ERROR, "Couldn't stage for deletion from [%@] to [%@]; trying a direct delete instead: %@", buf, 0x20u);
    }

    goto LABEL_3;
  }

LABEL_14:
  v44 = v17;
  v29 = [v15 removeItemAtURL:lCopy error:&v44];
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
    path3 = [lCopy path];
    *buf = 138412546;
    v49 = path3;
    v50 = 2112;
    v51 = v30;
    _os_log_error_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_ERROR, "Failed to delete container at %@: %@", buf, 0x16u);
  }

  v32 = [[MCMError alloc] initWithNSError:v30 url:lCopy defaultErrorType:28];
  v33 = v32;
  if (error)
  {
    v34 = v32;
    v35 = 0;
    *error = v33;
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