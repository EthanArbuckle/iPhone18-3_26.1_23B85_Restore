@interface FPDClaimKnownFolderOperation
- (BOOL)isDisallowedByOrganization;
- (FPDClaimKnownFolderOperation)initWithDescriptors:(id)a3 server:(id)a4 request:(id)a5;
- (FPDClaimKnownFolderOperation)initWithKnownFolderLocations:(id)a3 domain:(id)a4 server:(id)a5 localizedReason:(id)a6 request:(id)a7;
- (FPDClaimKnownFolderOperation)initWithKnownFolders:(unint64_t)a3 domain:(id)a4 server:(id)a5 attachOptions:(unint64_t)a6 request:(id)a7;
- (void)attachClaimedKnownFoldersWithCompletionHandler:(id)a3;
- (void)detachKnownFolders:(id)a3 completionHandler:(id)a4;
- (void)getKnownFolderLocationsWithCompletionHandler:(id)a3;
- (void)isDisallowedByOrganization;
- (void)main;
- (void)notifyUserWithCompletionHandler:(id)a3;
- (void)resolveKnownFolder:(id)a3 location:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)resolveLogicalURLsOfLocations:(id)a3 completionHandler:(id)a4;
@end

@implementation FPDClaimKnownFolderOperation

- (FPDClaimKnownFolderOperation)initWithKnownFolderLocations:(id)a3 domain:(id)a4 server:(id)a5 localizedReason:(id)a6 request:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = FPDClaimKnownFolderOperation;
  v16 = [(FPOperation *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_isProviderInitiated = 1;
    v16->_knownFolders = [v12 providedKnownFolders];
    objc_storeStrong(&v17->_locations, a3);
    objc_storeStrong(&v17->_domain, a4);
    objc_storeStrong(&v17->_server, a5);
    objc_storeStrong(&v17->_request, a7);
    v17->_attachOptions = 2;
    v17->_skipSystemAlerts = 0;
  }

  return v17;
}

- (FPDClaimKnownFolderOperation)initWithKnownFolders:(unint64_t)a3 domain:(id)a4 server:(id)a5 attachOptions:(unint64_t)a6 request:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = FPDClaimKnownFolderOperation;
  v16 = [(FPOperation *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_isProviderInitiated = 0;
    v16->_knownFolders = a3;
    objc_storeStrong(&v16->_domain, a4);
    objc_storeStrong(&v17->_server, a5);
    objc_storeStrong(&v17->_request, a7);
    v17->_attachOptions = a6;
    v17->_skipSystemAlerts = 0;
  }

  return v17;
}

- (FPDClaimKnownFolderOperation)initWithDescriptors:(id)a3 server:(id)a4 request:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v44.receiver = self;
  v44.super_class = FPDClaimKnownFolderOperation;
  v12 = [(FPOperation *)&v44 init];
  v13 = v12;
  if (v12)
  {
    obj = a4;
    v35 = a5;
    v36 = v11;
    v37 = v10;
    v12->_isProviderInitiated = 0;
    objc_storeStrong(&v12->_descriptors, a3);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = v9;
    v14 = v9;
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
        v20 = [v19 knownFolder];
        v21 = +[FPDKnownFolderArbiter desktopURL];
        v22 = [v20 fp_relationshipToItemAtURL:v21];

        if (v22 == 1)
        {
          v23 = 1;
        }

        else
        {
          v24 = [v19 knownFolder];
          v25 = +[FPDKnownFolderArbiter documentsURL];
          v26 = [v24 fp_relationshipToItemAtURL:v25];

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
        objc_storeStrong(&v13->_request, v35);
        v13->_attachOptions = 2;
        v13->_skipSystemAlerts = 0;
        v39 = 0;
        v27 = [(FPDServer *)v13->_server extensionManager];
        v28 = [v14 firstObject];
        v29 = [v28 logicalLocation];
        v30 = [v27 domainForURL:v29 reason:&v39];
        domain = v13->_domain;
        v13->_domain = v30;

        v10 = v37;
        v9 = v38;
        v11 = v36;
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

    v10 = [(FPDServer *)self->_server extensionManager];
    v11 = [(NSArray *)self->_descriptors objectAtIndexedSubscript:0];
    v12 = [v11 logicalLocation];
    v4 = [v10 domainForURL:v12 reason:0];

    if (!v4)
    {
      goto LABEL_12;
    }
  }

  v5 = [(FPDDomain *)v4 provider];
  v6 = [v5 isKnownFolderSyncingAllowedByManagement];

  if (v6)
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

- (void)getKnownFolderLocationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_descriptors)
  {
    v6 = *(v4 + 2);
LABEL_5:
    v6();
    goto LABEL_6;
  }

  if (self->_isProviderInitiated)
  {
    locations = self->_locations;
    v6 = *(v4 + 2);
    goto LABEL_5;
  }

  v8 = [(FPDDomain *)self->_domain defaultBackend];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(FPDDomain *)self->_domain defaultBackend];
    knownFolders = self->_knownFolders;
    request = self->_request;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__FPDClaimKnownFolderOperation_getKnownFolderLocationsWithCompletionHandler___block_invoke;
    v14[3] = &unk_1E83C1718;
    v14[4] = self;
    v15 = v5;
    [v10 getKnownFolderLocations:knownFolders request:request completionHandler:v14];
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

- (void)resolveKnownFolder:(id)a3 location:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v11 asExistingLocation];
  v14 = v13;
  if (!v13)
  {
    v39 = a5;
    v19 = 0;
    goto LABEL_9;
  }

  v15 = [v13 itemIdentifier];
  v16 = [v15 isEqualToString:*MEMORY[0x1E6967258]];

  if (!v16)
  {
    v20 = [v14 itemIdentifier];
    v21 = [v20 isEqualToString:*MEMORY[0x1E6967280]];

    if (v21)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = @"the trash item cannot be used as the location of a known folder";
      goto LABEL_7;
    }

    v39 = a5;
    v23 = objc_alloc(MEMORY[0x1E69673A0]);
    v24 = [(FPDDomain *)self->_domain identifier];
    v25 = [v14 itemIdentifier];
    v19 = [v23 initWithProviderDomainID:v24 itemIdentifier:v25];

LABEL_9:
    v26 = [v11 asPathMatchingLocation];
    v38 = self;
    if (v26)
    {
      v27 = objc_alloc(MEMORY[0x1E69673A0]);
      v28 = [(FPDDomain *)self->_domain identifier];
      v29 = [v26 parentItemIdentifier];
      v30 = [v27 initWithProviderDomainID:v28 itemIdentifier:v29];

      v31 = [v26 filename];
      v19 = v30;
      if (v30)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v31 = 0;
      if (v19)
      {
LABEL_11:
        if (([v31 containsString:@"/"] & 1) == 0 && (objc_msgSend(v31, "isEqualToString:", @".") & 1) == 0 && !objc_msgSend(v31, "isEqualToString:", @".."))
        {
          [(FPDDomain *)v38->_domain defaultBackend];
          v36 = v35 = v10;
          request = v38->_request;
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __86__FPDClaimKnownFolderOperation_resolveKnownFolder_location_options_completionHandler___block_invoke;
          v40[3] = &unk_1E83C1740;
          v44 = v12;
          v41 = v19;
          v42 = v31;
          v43 = v35;
          v45 = v39;
          [v36 itemForItemID:v41 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 request:request completionHandler:v40];

          v10 = v35;
          goto LABEL_18;
        }

        v32 = MEMORY[0x1E696ABC0];
        v33 = @"invalid folder name";
LABEL_17:
        v34 = [v32 fp_invalidArgumentError:v33];
        (*(v12 + 2))(v12, 0, v34);

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
  (*(v12 + 2))(v12, 0, v22);

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

- (void)resolveLogicalURLsOfLocations:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  descriptors = self->_descriptors;
  if (descriptors)
  {
    (*(v7 + 2))(v7, descriptors, 0);
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
    v12 = [v6 shouldCreateBinaryCompatibilitySymlink];
    v13 = [v6 desktopLocation];

    if (v13)
    {
      dispatch_group_enter(v10);
      v14 = +[FPDKnownFolderArbiter desktopURL];
      v15 = [v6 desktopLocation];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __80__FPDClaimKnownFolderOperation_resolveLogicalURLsOfLocations_completionHandler___block_invoke;
      v32[3] = &unk_1E83C1768;
      v33 = v10;
      v35 = v36;
      v34 = v11;
      [(FPDClaimKnownFolderOperation *)self resolveKnownFolder:v14 location:v15 options:v12 completionHandler:v32];
    }

    v16 = [v6 documentsLocation];

    if (v16)
    {
      dispatch_group_enter(v10);
      v17 = +[FPDKnownFolderArbiter documentsURL];
      v18 = [v6 documentsLocation];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __80__FPDClaimKnownFolderOperation_resolveLogicalURLsOfLocations_completionHandler___block_invoke_2;
      v28[3] = &unk_1E83C1768;
      v29 = v10;
      v31 = v36;
      v30 = v11;
      [(FPDClaimKnownFolderOperation *)self resolveKnownFolder:v17 location:v18 options:v12 completionHandler:v28];
    }

    v19 = [(FPOperation *)self callbackQueue];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __80__FPDClaimKnownFolderOperation_resolveLogicalURLsOfLocations_completionHandler___block_invoke_3;
    v22[3] = &unk_1E83C1790;
    v23 = v10;
    v27 = v36;
    v25 = v11;
    v26 = v8;
    v24 = self;
    v20 = v11;
    v21 = v10;
    dispatch_group_notify(v21, v19, v22);

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

- (void)notifyUserWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
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

    v14 = [(FPDDomain *)self->_domain provider];
    v7 = [v14 providerDomainForDomain:self->_domain];

    v15 = [(FPDDomain *)self->_domain provider];
    [v7 setShouldHideDomainDisplayName:{objc_msgSend(v15, "shouldHideDomainDisplayName")}];

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

  (*(v4 + 2))(v4, 0);
LABEL_21:
}

- (void)attachClaimedKnownFoldersWithCompletionHandler:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v8 = v4;
  [(FPOperation *)v7 setFinishedBlock:v9];
  [(FPOperation *)v7 start];
}

- (void)detachKnownFolders:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[FPDDetachKnownFolderOperation alloc] initWithKnownFolder:v7 server:self->_server request:self->_request];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__FPDClaimKnownFolderOperation_detachKnownFolders_completionHandler___block_invoke;
  v10[3] = &unk_1E83C17B8;
  v11 = v6;
  v9 = v6;
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
      v7 = [(FPDDomain *)domain volume];
      v8 = [v7 role];

      if (v8 != 1)
      {
        v17 = fp_current_or_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(FPDDomain *)self->_domain identifier];
          v19 = [v18 fp_obfuscatedProviderDomainID];
          *buf = 138412546;
          v39 = self;
          v40 = 2114;
          *v41 = v19;
          _os_log_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@: %{public}@ is not on the home volume", buf, 0x16u);
        }

        v20 = [(FPDDomain *)self->_domain provider];
        v21 = [v20 providerDomainForDomain:self->_domain];

        if ([v21 isiCloudDriveProvider])
        {
          v22 = FPLoc();
        }

        else
        {
          v35 = [v21 domainFullDisplayName];
          v22 = FPLoc();
        }

        v23 = MEMORY[0x1E696ABC0];
        v24 = *MEMORY[0x1E696A798];
        v42 = *MEMORY[0x1E696A578];
        v43[0] = v22;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:{1, v35}];
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

        v27 = [(FPDDomain *)v9 nsDomain];
        v28 = self->_knownFolders & ~[v27 supportedKnownFolders];

        if (!v28)
        {
          goto LABEL_24;
        }

        v31 = fp_current_or_default_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          knownFolders = self->_knownFolders;
          v33 = [(FPDDomain *)self->_domain identifier];
          v34 = [v33 fp_obfuscatedProviderDomainID];
          *buf = 138412802;
          v39 = self;
          v40 = 1024;
          *v41 = knownFolders;
          *&v41[4] = 2114;
          *&v41[6] = v34;
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
        v10 = [(FPDDomain *)v9 nsDomain];
        v11 = [v10 replicatedKnownFolders];
        v12 = self->_knownFolders;

        if (v12 && (v12 & v11) == v12)
        {
          v13 = fp_current_or_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [(FPDDomain *)self->_domain identifier];
            v15 = [v14 fp_obfuscatedProviderDomainID];
            v16 = self->_knownFolders;
            *buf = 138412802;
            v39 = self;
            v40 = 2114;
            *v41 = v15;
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
      v39 = self;
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
  v5 = *(a1 + 328);
  v6 = [a2 providerDomainID];
  v7 = [v6 fp_obfuscatedProviderDomainID];
  v8 = *(a1 + 368);
  v10 = 138412802;
  v11 = v5;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = v8;
  _os_log_error_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Management Disallows claiming known folders %@ by %{public}@ for %{public}@", &v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

@end