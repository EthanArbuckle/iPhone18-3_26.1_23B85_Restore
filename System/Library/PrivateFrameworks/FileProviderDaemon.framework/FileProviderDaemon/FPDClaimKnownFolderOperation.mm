@interface FPDClaimKnownFolderOperation
- (BOOL)isDisallowedByOrganization;
- (FPDClaimKnownFolderOperation)initWithDescriptors:(id)descriptors server:(id)server request:(id)request;
- (FPDClaimKnownFolderOperation)initWithKnownFolderLocations:(id)locations domain:(id)domain server:(id)server localizedReason:(id)reason request:(id)request;
- (FPDClaimKnownFolderOperation)initWithKnownFolders:(unint64_t)folders domain:(id)domain server:(id)server attachOptions:(unint64_t)options request:(id)request;
- (void)attachClaimedKnownFoldersWithCompletionHandler:(id)handler;
- (void)detachKnownFolders:(id)folders completionHandler:(id)handler;
- (void)getKnownFolderLocationsWithCompletionHandler:(id)handler;
- (void)isDisallowedByOrganization;
- (void)main;
- (void)notifyUserWithCompletionHandler:(id)handler;
- (void)resolveKnownFolder:(id)folder location:(id)location options:(unint64_t)options completionHandler:(id)handler;
- (void)resolveLogicalURLsOfLocations:(id)locations completionHandler:(id)handler;
@end

@implementation FPDClaimKnownFolderOperation

- (FPDClaimKnownFolderOperation)initWithKnownFolderLocations:(id)locations domain:(id)domain server:(id)server localizedReason:(id)reason request:(id)request
{
  locationsCopy = locations;
  domainCopy = domain;
  serverCopy = server;
  requestCopy = request;
  v19.receiver = self;
  v19.super_class = FPDClaimKnownFolderOperation;
  v16 = [(FPOperation *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_isProviderInitiated = 1;
    v16->_knownFolders = [locationsCopy providedKnownFolders];
    objc_storeStrong(&v17->_locations, locations);
    objc_storeStrong(&v17->_domain, domain);
    objc_storeStrong(&v17->_server, server);
    objc_storeStrong(&v17->_request, request);
    v17->_attachOptions = 2;
    v17->_skipSystemAlerts = 0;
  }

  return v17;
}

- (FPDClaimKnownFolderOperation)initWithKnownFolders:(unint64_t)folders domain:(id)domain server:(id)server attachOptions:(unint64_t)options request:(id)request
{
  domainCopy = domain;
  serverCopy = server;
  requestCopy = request;
  v19.receiver = self;
  v19.super_class = FPDClaimKnownFolderOperation;
  v16 = [(FPOperation *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_isProviderInitiated = 0;
    v16->_knownFolders = folders;
    objc_storeStrong(&v16->_domain, domain);
    objc_storeStrong(&v17->_server, server);
    objc_storeStrong(&v17->_request, request);
    v17->_attachOptions = options;
    v17->_skipSystemAlerts = 0;
  }

  return v17;
}

- (FPDClaimKnownFolderOperation)initWithDescriptors:(id)descriptors server:(id)server request:(id)request
{
  v46 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  serverCopy = server;
  requestCopy = request;
  v44.receiver = self;
  v44.super_class = FPDClaimKnownFolderOperation;
  v12 = [(FPOperation *)&v44 init];
  v13 = v12;
  if (v12)
  {
    obj = server;
    requestCopy2 = request;
    v36 = requestCopy;
    v37 = serverCopy;
    v12->_isProviderInitiated = 0;
    objc_storeStrong(&v12->_descriptors, descriptors);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = descriptorsCopy;
    v14 = descriptorsCopy;
    v15 = [v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (!v15)
    {
      goto LABEL_14;
    }

    v16 = v15;
    v17 = *v41;
    while (1)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v40 + 1) + 8 * i);
        knownFolder = [v19 knownFolder];
        v21 = +[FPDKnownFolderArbiter desktopURL];
        v22 = [knownFolder fp_relationshipToItemAtURL:v21];

        if (v22 == 1)
        {
          v23 = 1;
        }

        else
        {
          knownFolder2 = [v19 knownFolder];
          v25 = +[FPDKnownFolderArbiter documentsURL];
          v26 = [knownFolder2 fp_relationshipToItemAtURL:v25];

          if (v26 != 1)
          {
            continue;
          }

          v23 = 2;
        }

        v13->_knownFolders |= v23;
      }

      v16 = [v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (!v16)
      {
LABEL_14:

        objc_storeStrong(&v13->_server, obj);
        objc_storeStrong(&v13->_request, requestCopy2);
        v13->_attachOptions = 2;
        v13->_skipSystemAlerts = 0;
        v39 = 0;
        extensionManager = [(FPDServer *)v13->_server extensionManager];
        firstObject = [v14 firstObject];
        logicalLocation = [firstObject logicalLocation];
        v30 = [extensionManager domainForURL:logicalLocation reason:&v39];
        domain = v13->_domain;
        v13->_domain = v30;

        serverCopy = v37;
        descriptorsCopy = v38;
        requestCopy = v36;
        break;
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)isDisallowedByOrganization
{
  domain = self->_domain;
  if (domain)
  {
    v4 = domain;
  }

  else
  {
    descriptors = self->_descriptors;
    if (!descriptors || ![(NSArray *)descriptors count])
    {
      v4 = 0;
      goto LABEL_12;
    }

    extensionManager = [(FPDServer *)self->_server extensionManager];
    v11 = [(NSArray *)self->_descriptors objectAtIndexedSubscript:0];
    logicalLocation = [v11 logicalLocation];
    v4 = [extensionManager domainForURL:logicalLocation reason:0];

    if (!v4)
    {
      goto LABEL_12;
    }
  }

  provider = [(FPDDomain *)v4 provider];
  isKnownFolderSyncingAllowedByManagement = [provider isKnownFolderSyncingAllowedByManagement];

  if (isKnownFolderSyncingAllowedByManagement)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(FPDClaimKnownFolderOperation *)self isDisallowedByOrganization];
  }

  v8 = 1;
LABEL_13:

  return v8;
}

- (void)getKnownFolderLocationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (self->_descriptors)
  {
    v6 = *(handlerCopy + 2);
LABEL_5:
    v6();
    goto LABEL_6;
  }

  if (self->_isProviderInitiated)
  {
    locations = self->_locations;
    v6 = *(handlerCopy + 2);
    goto LABEL_5;
  }

  defaultBackend = [(FPDDomain *)self->_domain defaultBackend];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    defaultBackend2 = [(FPDDomain *)self->_domain defaultBackend];
    knownFolders = self->_knownFolders;
    request = self->_request;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__FPDClaimKnownFolderOperation_getKnownFolderLocationsWithCompletionHandler___block_invoke;
    v14[3] = &unk_1E83C1718;
    v14[4] = self;
    v15 = v5;
    [defaultBackend2 getKnownFolderLocations:knownFolders request:request completionHandler:v14];
  }

  else
  {
    v13 = FPNotSupportedError();
    (v5)[2](v5, 0, v13);
  }

LABEL_6:
}

void __77__FPDClaimKnownFolderOperation_getKnownFolderLocationsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(*(a1 + 40) + 16);
LABEL_5:
    v7();
    goto LABEL_6;
  }

  if ((*(*(a1 + 32) + 312) & ~[v5 providedKnownFolders]) == 0)
  {
    v7 = *(*(a1 + 40) + 16);
    goto LABEL_5;
  }

  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 312);
    v14 = 138412802;
    v15 = v12;
    v16 = 1024;
    v17 = v13;
    v18 = 2114;
    v19 = v6;
    _os_log_error_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_ERROR, "[ERROR] %@: we asked for locations for %x, got %{public}@", &v14, 0x1Cu);
  }

  v10 = *(a1 + 40);
  v11 = FPNotSupportedError();
  (*(v10 + 16))(v10, 0, v11);

LABEL_6:
  v8 = *MEMORY[0x1E69E9840];
}

- (void)resolveKnownFolder:(id)folder location:(id)location options:(unint64_t)options completionHandler:(id)handler
{
  folderCopy = folder;
  locationCopy = location;
  handlerCopy = handler;
  asExistingLocation = [locationCopy asExistingLocation];
  v14 = asExistingLocation;
  if (!asExistingLocation)
  {
    optionsCopy2 = options;
    v19 = 0;
    goto LABEL_9;
  }

  itemIdentifier = [asExistingLocation itemIdentifier];
  v16 = [itemIdentifier isEqualToString:*MEMORY[0x1E6967258]];

  if (!v16)
  {
    itemIdentifier2 = [v14 itemIdentifier];
    v21 = [itemIdentifier2 isEqualToString:*MEMORY[0x1E6967280]];

    if (v21)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = @"the trash item cannot be used as the location of a known folder";
      goto LABEL_7;
    }

    optionsCopy2 = options;
    v23 = objc_alloc(MEMORY[0x1E69673A0]);
    identifier = [(FPDDomain *)self->_domain identifier];
    itemIdentifier3 = [v14 itemIdentifier];
    v19 = [v23 initWithProviderDomainID:identifier itemIdentifier:itemIdentifier3];

LABEL_9:
    asPathMatchingLocation = [locationCopy asPathMatchingLocation];
    selfCopy = self;
    if (asPathMatchingLocation)
    {
      v27 = objc_alloc(MEMORY[0x1E69673A0]);
      identifier2 = [(FPDDomain *)self->_domain identifier];
      parentItemIdentifier = [asPathMatchingLocation parentItemIdentifier];
      v30 = [v27 initWithProviderDomainID:identifier2 itemIdentifier:parentItemIdentifier];

      filename = [asPathMatchingLocation filename];
      v19 = v30;
      if (v30)
      {
        goto LABEL_11;
      }
    }

    else
    {
      filename = 0;
      if (v19)
      {
LABEL_11:
        if (([filename containsString:@"/"] & 1) == 0 && (objc_msgSend(filename, "isEqualToString:", @".") & 1) == 0 && !objc_msgSend(filename, "isEqualToString:", @".."))
        {
          [(FPDDomain *)selfCopy->_domain defaultBackend];
          v36 = v35 = folderCopy;
          request = selfCopy->_request;
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __86__FPDClaimKnownFolderOperation_resolveKnownFolder_location_options_completionHandler___block_invoke;
          v40[3] = &unk_1E83C1740;
          v44 = handlerCopy;
          v41 = v19;
          v42 = filename;
          v43 = v35;
          v45 = optionsCopy2;
          [v36 itemForItemID:v41 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 request:request completionHandler:v40];

          folderCopy = v35;
          goto LABEL_18;
        }

        v32 = MEMORY[0x1E696ABC0];
        v33 = @"invalid folder name";
LABEL_17:
        v34 = [v32 fp_invalidArgumentError:v33];
        (*(handlerCopy + 2))(handlerCopy, 0, v34);

LABEL_18:
        goto LABEL_19;
      }
    }

    v32 = MEMORY[0x1E696ABC0];
    v33 = @"invalid known folder location";
    goto LABEL_17;
  }

  v17 = MEMORY[0x1E696ABC0];
  v18 = @"the root item cannot be used as the location of a known folder";
LABEL_7:
  v22 = [v17 fp_invalidArgumentError:v18];
  (*(handlerCopy + 2))(handlerCopy, 0, v22);

LABEL_19:
}

void __86__FPDClaimKnownFolderOperation_resolveKnownFolder_location_options_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = [v5 fileURL];

    if (v7)
    {
      if ([v6 isFolder])
      {
        v8 = [v6 detachedRootLogicalURL];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = [v6 fileURL];
        }

        v16 = v10;

        v17 = *(a1 + 40);
        if (v17)
        {
          v15 = [v16 URLByAppendingPathComponent:v17 isDirectory:1];

          v18 = [v6 fileURL];
          v19 = [v18 URLByAppendingPathComponent:*(a1 + 40) isDirectory:1];

          v20 = [v19 path];
          v21 = lstat([v20 fileSystemRepresentation], &v32);
          st_mode = v32.st_mode;

          if (v21 < 0 || (st_mode & 0xF000) == 0x4000)
          {
            v25 = [objc_alloc(MEMORY[0x1E69674F8]) initWithKnownFolder:*(a1 + 48) logicalLocation:v15 detachOptions:*(a1 + 64)];
            v29 = objc_alloc(MEMORY[0x1E6967500]);
            v30 = [v6 itemIdentifier];
            v31 = [v29 initWithParentItemIdentifier:v30 filename:*(a1 + 40)];
            [v25 setLocation:v31];

            (*(*(a1 + 56) + 16))();
          }

          else
          {
            v23 = *(a1 + 56);
            v24 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"resolved item location is not a directory"];
            (*(v23 + 16))(v23, 0, v24);

            v25 = 0;
          }
        }

        else
        {
          v25 = [objc_alloc(MEMORY[0x1E69674F8]) initWithKnownFolder:*(a1 + 48) logicalLocation:v16 detachOptions:*(a1 + 64)];
          v26 = objc_alloc(MEMORY[0x1E6967500]);
          v27 = [v6 itemIdentifier];
          v28 = [v26 initWithExistingItemIdentifier:v27];
          [v25 setLocation:v28];

          (*(*(a1 + 56) + 16))();
          v15 = v16;
        }
      }

      else
      {
        v14 = *(a1 + 56);
        v15 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"resolved item location is not a directory"];
        (*(v14 + 16))(v14, 0, v15);
      }
    }

    else
    {
      v11 = *(a1 + 56);
      v12 = [*(a1 + 32) identifier];
      v13 = FPItemNotFoundError();
      (*(v11 + 16))(v11, 0, v13);
    }
  }
}

- (void)resolveLogicalURLsOfLocations:(id)locations completionHandler:(id)handler
{
  locationsCopy = locations;
  handlerCopy = handler;
  v8 = handlerCopy;
  descriptors = self->_descriptors;
  if (descriptors)
  {
    (*(handlerCopy + 2))(handlerCopy, descriptors, 0);
  }

  else
  {
    v10 = dispatch_group_create();
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = __Block_byref_object_copy__18;
    v36[4] = __Block_byref_object_dispose__18;
    v37 = 0;
    v11 = objc_opt_new();
    shouldCreateBinaryCompatibilitySymlink = [locationsCopy shouldCreateBinaryCompatibilitySymlink];
    desktopLocation = [locationsCopy desktopLocation];

    if (desktopLocation)
    {
      dispatch_group_enter(v10);
      v14 = +[FPDKnownFolderArbiter desktopURL];
      desktopLocation2 = [locationsCopy desktopLocation];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __80__FPDClaimKnownFolderOperation_resolveLogicalURLsOfLocations_completionHandler___block_invoke;
      v32[3] = &unk_1E83C1768;
      v33 = v10;
      v35 = v36;
      v34 = v11;
      [(FPDClaimKnownFolderOperation *)self resolveKnownFolder:v14 location:desktopLocation2 options:shouldCreateBinaryCompatibilitySymlink completionHandler:v32];
    }

    documentsLocation = [locationsCopy documentsLocation];

    if (documentsLocation)
    {
      dispatch_group_enter(v10);
      v17 = +[FPDKnownFolderArbiter documentsURL];
      documentsLocation2 = [locationsCopy documentsLocation];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __80__FPDClaimKnownFolderOperation_resolveLogicalURLsOfLocations_completionHandler___block_invoke_2;
      v28[3] = &unk_1E83C1768;
      v29 = v10;
      v31 = v36;
      v30 = v11;
      [(FPDClaimKnownFolderOperation *)self resolveKnownFolder:v17 location:documentsLocation2 options:shouldCreateBinaryCompatibilitySymlink completionHandler:v28];
    }

    callbackQueue = [(FPOperation *)self callbackQueue];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __80__FPDClaimKnownFolderOperation_resolveLogicalURLsOfLocations_completionHandler___block_invoke_3;
    v22[3] = &unk_1E83C1790;
    v23 = v10;
    v27 = v36;
    v25 = v11;
    v26 = v8;
    selfCopy = self;
    v20 = v11;
    v21 = v10;
    dispatch_group_notify(v21, callbackQueue, v22);

    _Block_object_dispose(v36, 8);
  }
}

void __80__FPDClaimKnownFolderOperation_resolveLogicalURLsOfLocations_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (v5)
  {
    v7 = *(*(a1 + 48) + 8);
    v10 = *(v7 + 40);
    v8 = (v7 + 40);
    v9 = v10;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    objc_storeStrong(v8, v11);
  }

  else
  {
    [*(a1 + 40) addObject:v12];
  }

  objc_sync_exit(v6);

  dispatch_group_leave(*(a1 + 32));
}

void __80__FPDClaimKnownFolderOperation_resolveLogicalURLsOfLocations_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (v5)
  {
    v7 = *(*(a1 + 48) + 8);
    v10 = *(v7 + 40);
    v8 = (v7 + 40);
    v9 = v10;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    objc_storeStrong(v8, v11);
  }

  else
  {
    [*(a1 + 40) addObject:v12];
  }

  objc_sync_exit(v6);

  dispatch_group_leave(*(a1 + 32));
}

void __80__FPDClaimKnownFolderOperation_resolveLogicalURLsOfLocations_completionHandler___block_invoke_3(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    (*(*(a1 + 56) + 16))();
    goto LABEL_31;
  }

  v3 = 0;
  *(*(a1 + 40) + 376) = 1;
  *&v2 = 134218240;
  v32 = v2;
LABEL_4:
  if (v3 >= [*(a1 + 48) count])
  {
    v31 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
    goto LABEL_31;
  }

  v4 = [*(a1 + 48) objectAtIndexedSubscript:v3];
  v5 = v4;
  if (*(*(a1 + 40) + 376) == 1)
  {
    memset(&v36, 0, sizeof(v36));
    v6 = [v4 knownFolder];
    v7 = v6;
    if (lstat([v6 fileSystemRepresentation], &v36))
    {
      v8 = 0;
    }

    else
    {
      v8 = (v36.st_mode & 0xF000) == 40960;
    }

    v9 = v8;

    if (!v9)
    {
      goto LABEL_17;
    }

    memset(&v35, 0, sizeof(v35));
    memset(&v34, 0, sizeof(v34));
    v10 = [v5 knownFolder];
    v11 = v10;
    if (stat([v10 fileSystemRepresentation], &v34))
    {
      goto LABEL_16;
    }

    v12 = [v5 logicalLocation];
    v13 = v12;
    if (stat([v12 fileSystemRepresentation], &v35))
    {

LABEL_16:
LABEL_17:
      *(*(a1 + 40) + 376) = 0;
      goto LABEL_18;
    }

    v24 = v34.st_ino == v35.st_ino;

    if (!v24)
    {
      goto LABEL_17;
    }

    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = [*(a1 + 48) count];
      *buf = v32;
      v38 = v3;
      v39 = 2048;
      v40 = v26;
      _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] known folder %lu out of %lu is a symlink to the logical location", buf, 0x16u);
    }
  }

LABEL_18:
  for (i = ++v3; ; ++i)
  {
    if (i >= [*(a1 + 48) count])
    {

      goto LABEL_4;
    }

    v15 = [*(a1 + 48) objectAtIndexedSubscript:i];
    v16 = [v5 logicalLocation];
    v17 = [v15 logicalLocation];
    v18 = [v16 fp_relationshipToItemAtURL:v17] == 2;

    if (!v18)
    {
      v27 = *(a1 + 56);
      v28 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"claimed locations are related to each other"];
      (*(v27 + 16))(v27, 0, v28);
      goto LABEL_30;
    }

    v19 = [v5 logicalLocation];
    v20 = [v19 URLByDeletingLastPathComponent];
    v21 = [v15 logicalLocation];
    v22 = [v21 URLByDeletingLastPathComponent];
    v23 = [v20 fp_relationshipToItemAtURL:v22] == 1;

    if (!v23)
    {
      break;
    }
  }

  v29 = *(a1 + 56);
  v28 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"claimed locations should have the same parent directory"];
  (*(v29 + 16))(v29, 0, v28);
LABEL_30:

LABEL_31:
  objc_sync_exit(obj);

  v30 = *MEMORY[0x1E69E9840];
}

- (void)notifyUserWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (self->_isProviderInitiated && !self->_skipSystemAlerts)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [FPDClaimKnownFolderOperation notifyUserWithCompletionHandler:];
    }

    if (os_variant_has_internal_content())
    {
      v7 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
      v8 = [v7 stringForKey:@"forceClaimPromptResult"];
      if ([v8 isEqualToString:@"approve"])
      {
        v9 = fp_current_or_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [FPDClaimKnownFolderOperation notifyUserWithCompletionHandler:];
        }

        v10 = [MEMORY[0x1E695DF00] now];
        [v10 timeIntervalSince1970];
        [v7 setDouble:@"forceClaimPromptLastInterception" forKey:?];

        v5[2](v5, 0);
        goto LABEL_20;
      }

      if ([v8 isEqualToString:@"decline"])
      {
        v11 = fp_current_or_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [FPDClaimKnownFolderOperation notifyUserWithCompletionHandler:];
        }

        v12 = [MEMORY[0x1E695DF00] now];
        [v12 timeIntervalSince1970];
        [v7 setDouble:@"forceClaimPromptLastInterception" forKey:?];

        v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
        (v5)[2](v5, v13);
        goto LABEL_19;
      }
    }

    provider = [(FPDDomain *)self->_domain provider];
    v7 = [provider providerDomainForDomain:self->_domain];

    provider2 = [(FPDDomain *)self->_domain provider];
    [v7 setShouldHideDomainDisplayName:{objc_msgSend(provider2, "shouldHideDomainDisplayName")}];

    v8 = [objc_opt_new() initWithProviderDomain:v7];
    if ([v8 presentAlertWithUserAprovalToContinue])
    {
      v5[2](v5, 0);
LABEL_20:

      goto LABEL_21;
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    (v5)[2](v5, v13);
LABEL_19:

    goto LABEL_20;
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_21:
}

- (void)attachClaimedKnownFoldersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  descriptors = self->_descriptors;
  if (descriptors)
  {
    v6 = [(NSArray *)descriptors fp_map:&__block_literal_global_27];
    v7 = [[FPDAttachKnownFolderOperation alloc] initWithKnownFolderURLs:v6 onlyForDomain:0 server:self->_server options:self->_attachOptions request:self->_request];
  }

  else
  {
    v7 = [[FPDAttachKnownFolderOperation alloc] initWithKnownFolders:self->_knownFolders onlyForDomain:0 server:self->_server options:self->_attachOptions request:self->_request];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__FPDClaimKnownFolderOperation_attachClaimedKnownFoldersWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E83C17B8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(FPOperation *)v7 setFinishedBlock:v9];
  [(FPOperation *)v7 start];
}

- (void)detachKnownFolders:(id)folders completionHandler:(id)handler
{
  handlerCopy = handler;
  foldersCopy = folders;
  v8 = [[FPDDetachKnownFolderOperation alloc] initWithKnownFolder:foldersCopy server:self->_server request:self->_request];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__FPDClaimKnownFolderOperation_detachKnownFolders_completionHandler___block_invoke;
  v10[3] = &unk_1E83C17B8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(FPOperation *)v8 setFinishedBlock:v10];
  [(FPOperation *)v8 start];
}

- (void)main
{
  v43[1] = *MEMORY[0x1E69E9840];
  if (![(FPDClaimKnownFolderOperation *)self isDisallowedByOrganization])
  {
    domain = self->_domain;
    if (domain)
    {
      volume = [(FPDDomain *)domain volume];
      role = [volume role];

      if (role != 1)
      {
        v17 = fp_current_or_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [(FPDDomain *)self->_domain identifier];
          fp_obfuscatedProviderDomainID = [identifier fp_obfuscatedProviderDomainID];
          *buf = 138412546;
          selfCopy4 = self;
          v40 = 2114;
          *v41 = fp_obfuscatedProviderDomainID;
          _os_log_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@: %{public}@ is not on the home volume", buf, 0x16u);
        }

        provider = [(FPDDomain *)self->_domain provider];
        v21 = [provider providerDomainForDomain:self->_domain];

        if ([v21 isiCloudDriveProvider])
        {
          v22 = FPLoc();
        }

        else
        {
          domainFullDisplayName = [v21 domainFullDisplayName];
          v22 = FPLoc();
        }

        v23 = MEMORY[0x1E696ABC0];
        v24 = *MEMORY[0x1E696A798];
        v42 = *MEMORY[0x1E696A578];
        v43[0] = v22;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:{1, domainFullDisplayName}];
        v26 = [v23 errorWithDomain:v24 code:18 userInfo:v25];
        [(FPOperation *)self finishWithResult:0 error:v26];

        goto LABEL_20;
      }

      v9 = self->_domain;
      if (self->_isProviderInitiated)
      {
LABEL_22:
        if (!v9)
        {
          goto LABEL_24;
        }

        nsDomain = [(FPDDomain *)v9 nsDomain];
        v28 = self->_knownFolders & ~[nsDomain supportedKnownFolders];

        if (!v28)
        {
          goto LABEL_24;
        }

        v31 = fp_current_or_default_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          knownFolders = self->_knownFolders;
          identifier2 = [(FPDDomain *)self->_domain identifier];
          fp_obfuscatedProviderDomainID2 = [identifier2 fp_obfuscatedProviderDomainID];
          *buf = 138412802;
          selfCopy4 = self;
          v40 = 1024;
          *v41 = knownFolders;
          *&v41[4] = 2114;
          *&v41[6] = fp_obfuscatedProviderDomainID2;
          _os_log_impl(&dword_1CEFC7000, v31, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@: attempting to switch %x to %{public}@ that doesn't support those folders", buf, 0x1Cu);
        }

        v21 = FPNotSupportedError();
        [(FPOperation *)self finishWithResult:0 error:v21];
LABEL_20:

LABEL_27:
        v30 = *MEMORY[0x1E69E9840];
        return;
      }

      if (v9)
      {
        nsDomain2 = [(FPDDomain *)v9 nsDomain];
        replicatedKnownFolders = [nsDomain2 replicatedKnownFolders];
        v12 = self->_knownFolders;

        if (v12 && (v12 & replicatedKnownFolders) == v12)
        {
          v13 = fp_current_or_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            identifier3 = [(FPDDomain *)self->_domain identifier];
            fp_obfuscatedProviderDomainID3 = [identifier3 fp_obfuscatedProviderDomainID];
            v16 = self->_knownFolders;
            *buf = 138412802;
            selfCopy4 = self;
            v40 = 2114;
            *v41 = fp_obfuscatedProviderDomainID3;
            *&v41[8] = 1024;
            *&v41[10] = v16;
            _os_log_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@: %{public}@ is already syncing the requested folders %x", buf, 0x1Cu);
          }

          [(FPOperation *)self finishWithResult:0 error:0];
          goto LABEL_27;
        }

        v9 = self->_domain;
        goto LABEL_22;
      }
    }

LABEL_24:
    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_impl(&dword_1CEFC7000, v29, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@: resolving locations", buf, 0xCu);
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __36__FPDClaimKnownFolderOperation_main__block_invoke;
    v37[3] = &unk_1E83C1808;
    v37[4] = self;
    [(FPDClaimKnownFolderOperation *)self getKnownFolderLocationsWithCompletionHandler:v37];
    goto LABEL_27;
  }

  v3 = MEMORY[0x1E696ABC0];
  v36 = FPLoc();
  v4 = [v3 fp_disallowedByManagement:?];
  [(FPOperation *)self finishWithResult:0 error:v4];

  v5 = *MEMORY[0x1E69E9840];
}

void __36__FPDClaimKnownFolderOperation_main__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) completedWithResult:0 error:a3];
  }

  else
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@: resolving logical URLs", buf, 0xCu);
    }

    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __36__FPDClaimKnownFolderOperation_main__block_invoke_117;
    v10[3] = &unk_1E83C17E0;
    v10[4] = v8;
    [v8 resolveLogicalURLsOfLocations:v5 completionHandler:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __36__FPDClaimKnownFolderOperation_main__block_invoke_117(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || [*(a1 + 32) isCancelled])
  {
    [*(a1 + 32) completedWithResult:0 error:v6];
  }

  else
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@: notify user", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__FPDClaimKnownFolderOperation_main__block_invoke_118;
    v11[3] = &unk_1E83BE760;
    v11[4] = v10;
    v12 = v5;
    [v10 notifyUserWithCompletionHandler:v11];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __36__FPDClaimKnownFolderOperation_main__block_invoke_118(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 || [*(a1 + 32) isCancelled])
  {
    [*(a1 + 32) completedWithResult:0 error:v3];
  }

  else
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@: attach folders", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __36__FPDClaimKnownFolderOperation_main__block_invoke_119;
    v8[3] = &unk_1E83BE760;
    v8[4] = v7;
    v9 = *(a1 + 40);
    [v7 attachClaimedKnownFoldersWithCompletionHandler:v8];
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __36__FPDClaimKnownFolderOperation_main__block_invoke_119(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 || [*(a1 + 32) isCancelled])
  {
    [*(a1 + 32) completedWithResult:0 error:v3];
  }

  else
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@: detach folders", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__FPDClaimKnownFolderOperation_main__block_invoke_120;
    v9[3] = &unk_1E83BDFC8;
    v9[4] = v7;
    [v7 detachKnownFolders:v8 completionHandler:v9];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)isDisallowedByOrganization
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(self + 328);
  providerDomainID = [a2 providerDomainID];
  fp_obfuscatedProviderDomainID = [providerDomainID fp_obfuscatedProviderDomainID];
  v8 = *(self + 368);
  v10 = 138412802;
  v11 = v5;
  v12 = 2114;
  v13 = fp_obfuscatedProviderDomainID;
  v14 = 2114;
  v15 = v8;
  _os_log_error_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Management Disallows claiming known folders %@ by %{public}@ for %{public}@", &v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

@end