@interface LiveFSFPExtensionHelper
+ (id)getNSErrorFromLiveFSErrno:(int)a3;
+ (id)getNSErrorFromUnknownError:(id)a3;
- (BOOL)_hasManagerOrError:(id *)a3;
- (BOOL)_isLoggedInOrError:(id *)a3;
- (BOOL)_isLoggedInOrErrorLocked:(id *)a3;
- (LiveFSFPExtensionHelper)init;
- (id)LiveFSDefaultMover;
- (id)URLForItemWithIdentifier:(id)a3;
- (id)disconnectWithOptions:(unint64_t)a3 completionHandler:(id)a4;
- (id)ensureMountPathSetup;
- (id)enumeratorForContainerItemIdentifier:(id)a3 error:(id *)a4;
- (id)enumeratorForSearchQuery:(id)a3 error:(id *)a4;
- (id)fileProviderErrorFromFSError:(id)a3;
- (id)getItemForParent:(id)a3 name:(id)a4;
- (id)getVolumeManagerWithError:(id *)a3;
- (id)itemAtPath:(id)a3 parent:(id)a4;
- (id)itemAtPathLocked:(id)a3 parent:(id)a4 cachedOnly:(BOOL)a5;
- (id)itemForIdentifier:(id)a3 error:(id *)a4;
- (id)itemForIdentifierLocked:(id)a3 error:(id *)a4;
- (id)itemForPath:(id)a3 cachedOnly:(BOOL)a4 error:(id *)a5;
- (id)itemPathForURL:(id)a3;
- (id)makeVolumeListenerEndpointAndReturnError:(id *)a3;
- (id)makeVolumeListenerEndpointAndReturnErrorLocked:(id *)a3;
- (id)pathForInodeID:(id)a3 error:(id *)a4;
- (id)persistentIdentifierForItemAtURL:(id)a3;
- (id)supportedServiceSourcesForItemIdentifier:(id)a3 error:(id *)a4;
- (void)addItem:(id)a3 identifier:(id)a4 fileHandle:(id)a5;
- (void)createDirectoryWithName:(id)a3 inParentItemIdentifier:(id)a4 completionHandler:(id)a5;
- (void)deleteItemWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)doInvalidate:(BOOL)a3;
- (void)enumerateRootContainer;
- (void)fetchTrashIdentifiersWithCompletionHandler:(id)a3;
- (void)getVolumeInfoLocked;
- (void)handleInterruption;
- (void)handleInvalidation;
- (void)importDocumentAtURL:(id)a3 toParentItemIdentifier:(id)a4 completionHandler:(id)a5;
- (void)init;
- (void)itemChangedAtURL:(id)a3;
- (void)providePlaceholderAtURL:(id)a3 completionHandler:(id)a4;
- (void)reIDItem:(id)a3 oldID:(id)a4;
- (void)refreshVolumeInfo;
- (void)removeEnumeratorForContainer:(id)a3;
- (void)removeEnumeratorForContainerLocked:(id)a3;
- (void)removeItem:(id)a3 parent:(id)a4 name:(id)a5 fileHandle:(id)a6;
- (void)renameItemWithIdentifier:(id)a3 toName:(id)a4 completionHandler:(id)a5;
- (void)reparentItem:(id)a3 oldID:(id)a4 oldParent:(id)a5 oldName:(id)a6 newParent:(id)a7 newName:(id)a8;
- (void)reparentItemWithIdentifier:(id)a3 toParentItemWithIdentifier:(id)a4 newName:(id)a5 completionHandler:(id)a6;
- (void)setFavoriteRank:(id)a3 forItemIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setLastUsedDate:(id)a3 forItemIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setTagData:(id)a3 forItemIdentifier:(id)a4 completionHandler:(id)a5;
- (void)startProvidingItemAtURL:(id)a3 completionHandler:(id)a4;
- (void)stopProvidingItemAtURL:(id)a3;
- (void)trashItemWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)unlockWithPassword:(id)a3 remember:(BOOL)a4 completionHandler:(id)a5;
- (void)untrashItemWithIdentifier:(id)a3 toParentItemIdentifier:(id)a4 completionHandler:(id)a5;
@end

@implementation LiveFSFPExtensionHelper

- (LiveFSFPExtensionHelper)init
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v46 = "[LiveFSFPExtensionHelper init]";
    _os_log_impl(&dword_255FE9000, v4, OS_LOG_TYPE_DEFAULT, "%s starting", buf, 0xCu);
  }

  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    docPath = self->_docPath;
    providerName = self->providerName;
    v8 = [(NSFileProviderExtension *)self domain];
    v9 = [(NSFileProviderExtension *)self domain];
    if (v9)
    {
      v2 = [(NSFileProviderExtension *)self domain];
      v10 = [v2 identifier];
    }

    else
    {
      v10 = &stru_286811DF0;
    }

    *buf = 136316162;
    v46 = "[LiveFSFPExtensionHelper init]";
    v47 = 2112;
    v48 = docPath;
    v49 = 2112;
    v50 = providerName;
    v51 = 2112;
    v52 = v8;
    v53 = 2112;
    v54 = v10;
    _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_INFO, "%s starting for docpath %@, providerName %@, domain: %@, identifier; %@", buf, 0x34u);
    if (v9)
    {
    }
  }

  v44.receiver = self;
  v44.super_class = LiveFSFPExtensionHelper;
  v11 = [(NSFileProviderExtension *)&v44 init];
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = livefs_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v11->_docPath;
    v14 = v11->providerName;
    v15 = [(NSFileProviderExtension *)v11 domain];
    v16 = [(NSFileProviderExtension *)v11 domain];
    if (v16)
    {
      v2 = [(NSFileProviderExtension *)v11 domain];
      v17 = [v2 identifier];
    }

    else
    {
      v17 = &stru_286811DF0;
    }

    *buf = 136316162;
    v46 = "[LiveFSFPExtensionHelper init]";
    v47 = 2112;
    v48 = v13;
    v49 = 2112;
    v50 = v14;
    v51 = 2112;
    v52 = v15;
    v53 = 2112;
    v54 = v17;
    _os_log_impl(&dword_255FE9000, v12, OS_LOG_TYPE_INFO, "%s starting for docpath %@, providerName %@, domain: %@, identifier; %@", buf, 0x34u);
    if (v16)
    {
    }
  }

  manager = v11->_manager;
  v11->_manager = 0;

  v19 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  itemHandleMap = v11->itemHandleMap;
  v11->itemHandleMap = v19;

  v21 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  itemIDMap = v11->itemIDMap;
  v11->itemIDMap = v21;

  v23 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  enumerators = v11->enumerators;
  v11->enumerators = v23;

  v25 = objc_opt_new();
  itemCache = v11->itemCache;
  v11->itemCache = v25;

  v27 = objc_opt_new();
  serviceClient = v11->_serviceClient;
  v11->_serviceClient = v27;

  v29 = dispatch_queue_create("com.apple.userfsfp.rename_queue", 0);
  renameUpdateQueue = v11->renameUpdateQueue;
  v11->renameUpdateQueue = v29;

  if (v11->itemHandleMap && v11->itemCache && v11->_serviceClient && v11->itemIDMap && v11->enumerators)
  {
    v31 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/mobile/Library/LiveFiles"];
    conn = v11->_conn;
    v11->_conn = 0;

    [(LiveFSLRUCache *)v11->itemCache setCountLimit:128];
    v33 = v11->_docPath;
    v11->_docPath = v31;
    v34 = v31;

    v11->_supportsTagging = 0;
    v11->_isDead = 0;
    v35 = [[LiveFSThumbnailsServiceSource alloc] initWithFileProviderExtension:v11];
    thumbnailsServiceSource = v11->thumbnailsServiceSource;
    v11->thumbnailsServiceSource = v35;

    v37 = dispatch_queue_create("com.apple.LiveFSFPEnumeratorHelperQueue", 0);
    enumeratorHelperQueue = v11->_enumeratorHelperQueue;
    v11->_enumeratorHelperQueue = v37;

    v39 = livefs_std_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v46 = "[LiveFSFPExtensionHelper init]";
      _os_log_impl(&dword_255FE9000, v39, OS_LOG_TYPE_DEFAULT, "%s done", buf, 0xCu);
    }

LABEL_26:
    v40 = v11;
    goto LABEL_30;
  }

  v41 = livefs_std_log();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    [LiveFSFPExtensionHelper init];
  }

  v40 = 0;
LABEL_30:

  v42 = *MEMORY[0x277D85DE8];
  return v40;
}

- (id)ensureMountPathSetup
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_mountPath)
  {
    v4 = 0;
    goto LABEL_21;
  }

  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    docPath = v3->_docPath;
    providerName = v3->providerName;
    v8 = [(NSFileProviderExtension *)v3 domain];
    v9 = [(NSFileProviderExtension *)v3 domain];
    if (v9)
    {
      v2 = [(NSFileProviderExtension *)v3 domain];
      v10 = [v2 identifier];
    }

    else
    {
      v10 = @"N/A";
    }

    v37 = 136316162;
    v38 = "[LiveFSFPExtensionHelper ensureMountPathSetup]";
    v39 = 2112;
    v40 = docPath;
    v41 = 2112;
    v42 = providerName;
    v43 = 2112;
    v44 = v8;
    v45 = 2112;
    v46 = v10;
    _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_INFO, "%s starting for docpath %@, providerName %@, domain: %@, identifier: %@", &v37, 0x34u);
    if (v9)
    {
    }
  }

  if (!v3->_docPath)
  {
    goto LABEL_18;
  }

  if (!v3->providerName)
  {
    goto LABEL_18;
  }

  v11 = [(NSFileProviderExtension *)v3 domain];
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = [(NSFileProviderExtension *)v3 domain];
  v13 = [v12 identifier];
  v14 = v13 == 0;

  if (v14)
  {
LABEL_18:
    v27 = livefs_std_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      if (v3->_docPath)
      {
        v30 = &stru_286811DF0;
      }

      else
      {
        v30 = @"doc path, ";
      }

      if (v3->providerName)
      {
        v31 = &stru_286811DF0;
      }

      else
      {
        v31 = @"provider name, ";
      }

      v32 = [(NSFileProviderExtension *)v3 domain];
      if (v32)
      {
        v33 = &stru_286811DF0;
      }

      else
      {
        v33 = @"domain, ";
      }

      v34 = [(NSFileProviderExtension *)v3 domain];
      v35 = [v34 identifier];
      v38 = "[LiveFSFPExtensionHelper ensureMountPathSetup]";
      v36 = @"domain identifier";
      v37 = 136316162;
      if (v35)
      {
        v36 = &stru_286811DF0;
      }

      v39 = 2112;
      v40 = v30;
      v41 = 2112;
      v42 = v31;
      v43 = 2112;
      v44 = v33;
      v45 = 2112;
      v46 = v36;
      _os_log_error_impl(&dword_255FE9000, v27, OS_LOG_TYPE_ERROR, "%s - Missing %@%@%@%@", &v37, 0x34u);
    }

    v4 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    v15 = 0;
    goto LABEL_20;
  }

  v15 = [(NSURL *)v3->_docPath URLByAppendingPathComponent:v3->providerName isDirectory:1];
  v16 = [(NSFileProviderExtension *)v3 domain];
  v17 = [v16 identifier];
  v18 = [v15 URLByAppendingPathComponent:v17 isDirectory:1];
  mountPath = v3->_mountPath;
  v3->_mountPath = v18;

  if (v3->_clusterDomain)
  {
    v20 = [(NSFileProviderExtension *)v3 domain];
    v21 = [v20 identifier];
    v22 = [v21 length] > 6;

    if (!v22)
    {
      v4 = 0;
      v3->_clusterMaster = 1;
      goto LABEL_20;
    }

    v3->_clusterMaster = 0;
    v23 = [(NSFileProviderExtension *)v3 domain];
    v24 = [v23 identifier];
    v25 = [v24 substringToIndex:6];
    clusterMasterID = v3->_clusterMasterID;
    v3->_clusterMasterID = v25;
  }

  v4 = 0;
LABEL_20:

LABEL_21:
  objc_sync_exit(v3);

  v28 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)getVolumeInfoLocked
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2810000000;
  v12 = &unk_25600C5DB;
  v13 = 0;
  conn = self->_conn;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__LiveFSFPExtensionHelper_getVolumeInfoLocked__block_invoke;
  v8[3] = &unk_27981A740;
  v8[4] = &v14;
  v4 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__LiveFSFPExtensionHelper_getVolumeInfoLocked__block_invoke_2;
  v7[3] = &unk_27981A830;
  v7[4] = &v14;
  v7[5] = &v20;
  [v4 getRootFileHandleWithError:v7];
  if (v21[5])
  {
    if (!v15[5])
    {
      v6[6] = MEMORY[0x277D85DD0];
      v6[7] = 3221225472;
      v6[8] = __46__LiveFSFPExtensionHelper_getVolumeInfoLocked__block_invoke_3;
      v6[9] = &unk_27981A858;
      v6[10] = &v9;
      v6[11] = &v14;
      [v4 otherAttributeOf:? named:? requestID:? reply:?];
      if (!v15[5])
      {
        self->_idsPersist = v10[4] & 1;
        v5 = v21[5];
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = __46__LiveFSFPExtensionHelper_getVolumeInfoLocked__block_invoke_4;
        v6[3] = &unk_27981A858;
        v6[4] = &v9;
        v6[5] = &v14;
        [v4 otherAttributeOf:v5 named:@"_N_mntflags" requestID:-1 reply:v6];
        if (!v15[5])
        {
          self->_isReadOnlyVolume = v10[4] & 1;
          self->_supportsTagging = 1;
        }
      }
    }
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
}

void __46__LiveFSFPExtensionHelper_getVolumeInfoLocked__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void *__46__LiveFSFPExtensionHelper_getVolumeInfoLocked__block_invoke_3(uint64_t a1, uint64_t a2, id a3)
{
  if (a2)
  {
    v4 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:a2];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x2821F96F8]();
  }

  else
  {
    v7 = *(*(a1 + 32) + 8);
    result = [a3 bytes];
    *(v7 + 32) = *result;
  }

  return result;
}

void *__46__LiveFSFPExtensionHelper_getVolumeInfoLocked__block_invoke_4(uint64_t a1, uint64_t a2, id a3)
{
  if (a2)
  {
    v4 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:a2];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x2821F96F8]();
  }

  else
  {
    v7 = *(*(a1 + 32) + 8);
    result = [a3 bytes];
    *(v7 + 32) = *result;
  }

  return result;
}

- (void)refreshVolumeInfo
{
  obj = self;
  objc_sync_enter(obj);
  [(LiveFSFPExtensionHelper *)obj getVolumeInfoLocked];
  objc_sync_exit(obj);
}

- (id)itemPathForURL:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = [a3 standardizedURL];
  v6 = livefs_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    docPath = self->_docPath;
    providerName = self->providerName;
    v9 = [(NSFileProviderExtension *)self domain];
    v10 = [(NSFileProviderExtension *)self domain];
    if (v10)
    {
      v3 = [(NSFileProviderExtension *)self domain];
      v11 = [v3 identifier];
    }

    else
    {
      v11 = &stru_286811DF0;
    }

    v28 = 136316418;
    v29 = "[LiveFSFPExtensionHelper itemPathForURL:]";
    v30 = 2112;
    v31 = v5;
    v32 = 2112;
    v33 = docPath;
    v34 = 2112;
    v35 = providerName;
    v36 = 2112;
    v37 = v9;
    v38 = 2112;
    v39 = v11;
    _os_log_impl(&dword_255FE9000, v6, OS_LOG_TYPE_INFO, "%s starting for url %@, docpath %@, providerName %@, domain: %@, identifier; %@", &v28, 0x3Eu);
    if (v10)
    {
    }
  }

  v12 = 0;
  if ([(LiveFSFPExtensionHelper *)self _isLoggedInOrError:0])
  {
    v13 = [(NSURL *)self->_docPath URLByAppendingPathComponent:self->providerName isDirectory:1];
    v14 = [(NSFileProviderExtension *)self domain];
    v15 = [v14 pathRelativeToDocumentStorage];
    v16 = [v13 URLByAppendingPathComponent:v15 isDirectory:1];

    v17 = livefs_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v28 = 138412290;
      v29 = v16;
      _os_log_impl(&dword_255FE9000, v17, OS_LOG_TYPE_INFO, "perItemDirectory: %@", &v28, 0xCu);
    }

    v18 = [v16 path];
    v19 = [v5 path];
    if ([v19 hasPrefix:@"/var/mobile"])
    {
      v20 = [@"/private" stringByAppendingString:v19];

      v19 = v20;
    }

    if ([v19 hasPrefix:v18])
    {
      v21 = [v19 substringFromIndex:{-[__CFString length](v18, "length")}];

      if (([(__CFString *)v21 isEqualToString:&stru_286811DF0]& 1) != 0 || [(__CFString *)v21 isEqualToString:@"/._"])
      {
        v22 = livefs_std_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [LiveFSFPExtensionHelper itemPathForURL:];
        }

        v12 = &stru_286811DF0;
        v18 = v21;
      }

      else
      {
        if ([(__CFString *)v21 hasPrefix:@"/"])
        {
          v26 = [(__CFString *)v21 substringFromIndex:1];

          v21 = v26;
        }

        v27 = livefs_std_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [LiveFSFPExtensionHelper itemPathForURL:];
        }

        v18 = v21;
        v12 = v18;
      }
    }

    else
    {
      v23 = livefs_std_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [LiveFSFPExtensionHelper itemPathForURL:];
      }

      v12 = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)itemForPath:(id)a3 cachedOnly:(BOOL)a4 error:(id *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(LiveFSFPExtensionHelper *)self ensureMountPathSetup];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v11 = livefs_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper itemForPath:cachedOnly:error:];
    }

    if (a5)
    {
      v12 = v10;
      v13 = 0;
      *a5 = v10;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v10 = self;
    objc_sync_enter(v10);
    if ([(LiveFSFPExtensionHelper *)v10 _isLoggedInOrErrorLocked:0])
    {
      v14 = livefs_std_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v7;
        _os_log_impl(&dword_255FE9000, v14, OS_LOG_TYPE_DEFAULT, "perItemPath is '%@'", &v21, 0xCu);
      }

      if (([v7 isEqualToString:&stru_286811DF0] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"._") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"/._"))
      {
        v15 = livefs_std_log();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        v17 = *MEMORY[0x277CC6348];
        if (v16)
        {
          v21 = 138412290;
          v22 = v17;
          _os_log_impl(&dword_255FE9000, v15, OS_LOG_TYPE_DEFAULT, "About to return ID %@", &v21, 0xCu);
        }

        v13 = [(LiveFSFPExtensionHelper *)v10 itemForIdentifierLocked:v17 error:0];
      }

      else
      {
        v20 = [(LiveFSFPExtensionHelper *)v10 itemForIdentifierLocked:*MEMORY[0x277CC6348] error:0];
        v13 = [(LiveFSFPExtensionHelper *)v10 itemAtPathLocked:v7 parent:v20];
      }
    }

    else
    {
      v13 = 0;
    }

    objc_sync_exit(v10);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)fileProviderErrorFromFSError:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v12 = 0;
    goto LABEL_19;
  }

  v6 = [v4 domain];
  if (![v6 isEqualToString:*MEMORY[0x277CCA050]])
  {

    goto LABEL_11;
  }

  v7 = [v5 code];

  if (v7 != 516)
  {
LABEL_11:
    v13 = [v5 domain];
    v14 = [v13 isEqualToString:*MEMORY[0x277CCA5B8]];

    if (v14)
    {
      v15 = +[LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:](LiveFSFPExtensionHelper, "getNSErrorFromLiveFSErrno:", [v5 code]);
    }

    else
    {
      v15 = v5;
    }

    v12 = v15;
    goto LABEL_19;
  }

  v8 = [v5 fp_collidingURL];
  if (v8)
  {
    v9 = [(LiveFSFPExtensionHelper *)self itemForURL:v8 error:0];
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315906;
      v19 = "[LiveFSFPExtensionHelper fileProviderErrorFromFSError:]";
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_error_impl(&dword_255FE9000, v10, OS_LOG_TYPE_ERROR, "%s: got error %@, URL %@, item %@", &v18, 0x2Au);
    }

    if (v9)
    {
      v11 = [MEMORY[0x277CCA9B8] fileProviderErrorForCollisionWithItem:v9];
    }

    else
    {
      v11 = v5;
    }

    v12 = v11;
  }

  else
  {
    v12 = v5;
  }

LABEL_19:
  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)handleInterruption
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleInvalidation
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)doInvalidate:(BOOL)a3
{
  v3 = a3;
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPExtensionHelper doInvalidate:?];
  }

  v6 = self;
  objc_sync_enter(v6);
  if (v3)
  {
    v6->_isDead = 1;
  }

  v7 = [(NSMapTable *)v6->itemHandleMap objectEnumerator];
  if (v7)
  {
    for (i = 0; ; i = v9)
    {
      v9 = [v7 nextObject];

      if (!v9)
      {
        break;
      }

      [v9 resetFileHandle];
    }
  }

  [(NSMapTable *)v6->itemHandleMap removeAllObjects];
  [(NSMapTable *)v6->enumerators removeAllObjects];
  manager = v6->_manager;
  v6->_manager = 0;

  conn = v6->_conn;
  if (conn)
  {
    v12 = [(NSXPCConnection *)conn exportedObject];
    [(NSXPCConnection *)v6->_conn invalidate];
    v13 = v6->_conn;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v6->_conn = 0;

  objc_sync_exit(v6);
  if (v12)
  {
    [v12 connectionWasInterupted];
  }
}

- (BOOL)_hasManagerOrError:(id *)a3
{
  if (self->_isDead)
  {
    if (a3)
    {
      *a3 = getNSErrorFromLiveFSErrno();
    }

    v4 = livefs_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_255FE9000, v4, OS_LOG_TYPE_INFO, "Call to _hasManagerOrError after extension torn down", v10, 2u);
    }
  }

  else
  {
    if (self->_manager)
    {
      return 1;
    }

    v6 = livefs_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPExtensionHelper _hasManagerOrError:];
    }

    v7 = [MEMORY[0x277D23D78] newConnectionForService:self->connectionURL];
    manager = self->_manager;
    self->_manager = v7;

    if (self->_manager)
    {
      return 1;
    }

    if (a3)
    {
      *a3 = getNSErrorFromLiveFSErrno();
    }

    v4 = livefs_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper _hasManagerOrError:];
    }
  }

  return 0;
}

- (id)getVolumeManagerWithError:(id *)a3
{
  if ([(LiveFSFPExtensionHelper *)self _hasManagerOrError:?])
  {
    v5 = self->_manager;
  }

  else
  {
    v6 = livefs_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper getVolumeManagerWithError:a3];
    }

    v5 = 0;
  }

  return v5;
}

- (id)makeVolumeListenerEndpointAndReturnErrorLocked:(id *)a3
{
  v44 = *MEMORY[0x277D85DE8];
  if (![(LiveFSFPExtensionHelper *)self _hasManagerOrError:?])
  {
LABEL_20:
    v18 = 0;
    v17 = 0;
    goto LABEL_21;
  }

  v5 = [(NSFileProviderExtension *)self domain];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  v7 = [(NSFileProviderExtension *)self domain];
  v8 = [v7 identifier];
  if (!v8)
  {

    goto LABEL_13;
  }

  v9 = v8;
  v10 = [(NSFileProviderExtension *)self domain];
  v11 = [v10 identifier];
  v12 = [v11 isEqualToString:&stru_286811DF0];

  if (v12)
  {
LABEL_13:
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-1004 userInfo:0];
    if (v22)
    {
      v23 = livefs_std_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [LiveFSFPExtensionHelper makeVolumeListenerEndpointAndReturnErrorLocked:];
      }
    }

    if (a3)
    {
      v24 = v22;
      *a3 = v22;
    }

    goto LABEL_20;
  }

  v13 = livefs_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(NSFileProviderExtension *)self domain];
    v15 = [v14 identifier];
    *buf = 136315394;
    v39 = "[LiveFSFPExtensionHelper makeVolumeListenerEndpointAndReturnErrorLocked:]";
    v40 = 2112;
    v41 = v15;
    _os_log_impl(&dword_255FE9000, v13, OS_LOG_TYPE_DEFAULT, "%s: About to get listener for volume %@", buf, 0x16u);
  }

  manager = self->_manager;
  v37 = 0;
  v17 = [(LiveFSClient *)manager volumes:&v37];
  v18 = v37;
  v19 = livefs_std_log();
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper makeVolumeListenerEndpointAndReturnErrorLocked:];
    }

    v21 = v18;
    v20 = livefs_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper makeVolumeListenerEndpointAndReturnErrorLocked:];
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v39 = "[LiveFSFPExtensionHelper makeVolumeListenerEndpointAndReturnErrorLocked:]";
    v40 = 2112;
    v41 = v17;
    v42 = 2112;
    v43 = 0;
    _os_log_impl(&dword_255FE9000, v20, OS_LOG_TYPE_DEFAULT, "%s: got vols %@ error %@", buf, 0x20u);
  }

  if (a3)
  {
    v28 = v18;
    *a3 = v18;
  }

  if (!v17)
  {
    goto LABEL_21;
  }

  if ([v17 count])
  {
    v29 = [(NSFileProviderExtension *)self domain];
    v30 = [v29 identifier];
    v31 = [v17 objectForKey:v30];

    if (v31)
    {
      v32 = self->_manager;
      v33 = [(NSFileProviderExtension *)self domain];
      v34 = [v33 identifier];
      v25 = [(LiveFSClient *)v32 listenerForVolume:v34 error:a3];

      goto LABEL_22;
    }

    v36 = livefs_std_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper makeVolumeListenerEndpointAndReturnErrorLocked:];
    }

    if (a3)
    {
      v35 = 2;
      goto LABEL_39;
    }

LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  if (!a3)
  {
    goto LABEL_21;
  }

  v35 = 65;
LABEL_39:
  [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:v35];
  *a3 = v25 = 0;
LABEL_22:

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)makeVolumeListenerEndpointAndReturnError:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(LiveFSFPExtensionHelper *)v4 makeVolumeListenerEndpointAndReturnErrorLocked:a3];
  objc_sync_exit(v4);

  return v5;
}

- (BOOL)_isLoggedInOrErrorLocked:(id *)a3
{
  v5 = [(NSFileProviderExtension *)self domain];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = [(NSFileProviderExtension *)self domain];
  v8 = [v7 identifier];
  if (!v8)
  {

    goto LABEL_8;
  }

  v9 = v8;
  v10 = [(NSFileProviderExtension *)self domain];
  v11 = [v10 identifier];
  v12 = [v11 isEqualToString:&stru_286811DF0];

  if (v12)
  {
LABEL_8:
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-1004 userInfo:0];
    if (!v14)
    {
LABEL_12:
      if (a3)
      {
        v16 = v14;
        *a3 = v14;
      }

      LOBYTE(v17) = 0;
      return v17;
    }

    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper _isLoggedInOrErrorLocked:];
    }

LABEL_11:

    goto LABEL_12;
  }

  if (self->_conn)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPExtensionHelper _isLoggedInOrErrorLocked:?];
    }

LABEL_19:

    if (a3)
    {
      *a3 = 0;
    }

LABEL_21:
    LOBYTE(v17) = 1;
    return v17;
  }

  if (self->_clusterMaster)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPExtensionHelper _isLoggedInOrErrorLocked:?];
    }

    goto LABEL_19;
  }

  isDead = self->_isDead;
  v19 = livefs_std_log();
  v20 = v19;
  if (isDead)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_255FE9000, v20, OS_LOG_TYPE_INFO, "isLoggedInOrError called on dead extension", buf, 2u);
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-1004 userInfo:0];
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper _isLoggedInOrErrorLocked:];
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPExtensionHelper _isLoggedInOrErrorLocked:?];
  }

  v17 = [(LiveFSFPExtensionHelper *)self makeVolumeListenerEndpointAndReturnError:a3];
  if (v17)
  {
    v21 = v17;
    v22 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v17];
    conn = self->_conn;
    self->_conn = v22;

    v24 = livefs_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPExtensionHelper _isLoggedInOrErrorLocked:];
    }

    v25 = self->_conn;
    v26 = [MEMORY[0x277D23D78] interfaceForListeners];
    [(NSXPCConnection *)v25 setRemoteObjectInterface:v26];

    v27 = self->_conn;
    v28 = [MEMORY[0x277D23DC0] exportedClientInterface];
    [(NSXPCConnection *)v27 setExportedInterface:v28];

    [(NSXPCConnection *)self->_conn setExportedObject:self->_serviceClient];
    objc_initWeak(buf, self);
    v29 = self->_conn;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __52__LiveFSFPExtensionHelper__isLoggedInOrErrorLocked___block_invoke;
    v37[3] = &unk_27981A8A8;
    objc_copyWeak(&v38, buf);
    [(NSXPCConnection *)v29 setInterruptionHandler:v37];
    v30 = self->_conn;
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __52__LiveFSFPExtensionHelper__isLoggedInOrErrorLocked___block_invoke_3;
    v35 = &unk_27981A8A8;
    objc_copyWeak(&v36, buf);
    [(NSXPCConnection *)v30 setInvalidationHandler:&v32];
    [(NSXPCConnection *)self->_conn resume:v32];
    [(LiveFSFPExtensionHelper *)self getVolumeInfoLocked];
    if (a3)
    {
      *a3 = 0;
    }

    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);

    goto LABEL_21;
  }

  return v17;
}

void __52__LiveFSFPExtensionHelper__isLoggedInOrErrorLocked___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__LiveFSFPExtensionHelper__isLoggedInOrErrorLocked___block_invoke_2;
    block[3] = &unk_27981A880;
    block[4] = WeakRetained;
    dispatch_async(v2, block);
  }
}

void __52__LiveFSFPExtensionHelper__isLoggedInOrErrorLocked___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__LiveFSFPExtensionHelper__isLoggedInOrErrorLocked___block_invoke_4;
    block[3] = &unk_27981A880;
    block[4] = WeakRetained;
    dispatch_async(v2, block);
  }
}

- (BOOL)_isLoggedInOrError:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  LOBYTE(a3) = [(LiveFSFPExtensionHelper *)v4 _isLoggedInOrErrorLocked:a3];
  objc_sync_exit(v4);

  return a3;
}

- (id)pathForInodeID:(id)a3 error:(id *)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__0;
  v50 = __Block_byref_object_dispose__0;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__0;
  v44 = __Block_byref_object_dispose__0;
  v45 = 0;
  if ([v6 length] <= 0xC)
  {
    v7 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    v8 = v47[5];
    v47[5] = v7;

    v9 = v47[5];
    if (v9)
    {
      v10 = livefs_std_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [LiveFSFPExtensionHelper pathForInodeID:error:];
      }
    }

    if (a4)
    {
      v11 = v9;
      v12 = 0;
      *a4 = v9;
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v9 = [v6 substringToIndex:12];
  v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v9 options:0];
  v14 = v13;
  if (!v13)
  {
    v27 = livefs_std_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = v6;
      _os_log_impl(&dword_255FE9000, v27, OS_LOG_TYPE_INFO, "pathForInodeID given invalid ID %@", buf, 0xCu);
    }

    v28 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    v29 = v47[5];
    v47[5] = v28;

    v30 = v47[5];
    if (v30)
    {
      v31 = livefs_std_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [LiveFSFPExtensionHelper pathForInodeID:error:];
      }
    }

    if (a4)
    {
      v32 = v30;
      *a4 = v30;
    }

LABEL_26:
    v12 = 0;
    goto LABEL_29;
  }

  v15 = v13;
  v16 = [v14 bytes];
  v17 = *v16;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*v16];
  v19 = livefs_std_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v53 = v9;
    v54 = 2112;
    v55 = v14;
    v56 = 2048;
    v57 = v17;
    v58 = 2112;
    v59 = v18;
    _os_log_impl(&dword_255FE9000, v19, OS_LOG_TYPE_DEFAULT, "pathForID got base64 %@, parentData %@, number %llu, number %@", buf, 0x2Au);
  }

  conn = self->_conn;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __48__LiveFSFPExtensionHelper_pathForInodeID_error___block_invoke;
  v39[3] = &unk_27981A740;
  v39[4] = &v46;
  v21 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v39];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __48__LiveFSFPExtensionHelper_pathForInodeID_error___block_invoke_2;
  v35[3] = &unk_27981A8D0;
  v37 = &v46;
  v22 = v18;
  v36 = v22;
  v38 = &v40;
  [v21 pathsAndAttributesForItemsByIDs:v14 requestID:-1 reply:v35];
  v23 = v47[5];
  if (v23)
  {
    v24 = v23;
    v25 = livefs_std_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper pathForInodeID:error:];
    }

    if (a4)
    {
      v26 = v24;
      *a4 = v24;
    }

    v12 = 0;
  }

  else
  {
    v12 = v41[5];
  }

  v9 = v21;
LABEL_29:

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  v33 = *MEMORY[0x277D85DE8];

  return v12;
}

void __48__LiveFSFPExtensionHelper_pathForInodeID_error___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = livefs_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109378;
    v14[1] = a2;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_255FE9000, v6, OS_LOG_TYPE_DEFAULT, "GetPaths result %d results dict %@", v14, 0x12u);
  }

  if (a2)
  {
    v7 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:a2];
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v9 = [v5 objectForKeyedSubscript:a1[4]];
    v10 = [v9 objectForKeyedSubscript:@"path"];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)itemForIdentifierLocked:(id)a3 error:(id *)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPExtensionHelper itemForIdentifierLocked:error:];
  }

  if (![(LiveFSFPExtensionHelper *)self _isLoggedInOrError:a4])
  {
    v10 = 0;
    goto LABEL_56;
  }

  v8 = [(NSMapTable *)self->itemIDMap objectForKey:v6];
  if (v8)
  {
    v9 = [(LiveFSLRUCache *)self->itemCache objectForKey:v6];
LABEL_54:
    v8 = v8;
    v10 = v8;
    goto LABEL_55;
  }

  v11 = *MEMORY[0x277CC6348];
  if (![v6 isEqualToString:*MEMORY[0x277CC6348]])
  {
    v48 = 0;
    v13 = [(LiveFSFPExtensionHelper *)self itemForIdentifierLocked:v11 error:&v48];
    v14 = v48;
    v15 = v14;
    if (!v13)
    {
      v20 = 0;
      goto LABEL_31;
    }

    if (self->_idsPersist)
    {
      v47 = v14;
      v8 = [(LiveFSFPExtensionHelper *)self pathForInodeID:v6 error:&v47];
      v16 = v47;

      if (!v8)
      {
        v20 = 0;
        goto LABEL_47;
      }

      v17 = livefs_std_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v6 substringFromIndex:12];
        *buf = 138412802;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        *&buf[22] = 2112;
        v71 = v18;
        _os_log_impl(&dword_255FE9000, v17, OS_LOG_TYPE_DEFAULT, "id->item, id %@ building path %@ with name %@", buf, 0x20u);
      }

      v19 = [v6 substringFromIndex:12];
      v20 = [v8 stringByAppendingPathComponent:v19];
    }

    else
    {
      v20 = v6;
      v16 = v15;
    }

    v8 = [(LiveFSFPExtensionHelper *)self itemAtPathLocked:v20 parent:v13];
    if (!v8)
    {
      v27 = livefs_std_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[LiveFSFPExtensionHelper itemForIdentifierLocked:error:]";
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_impl(&dword_255FE9000, v27, OS_LOG_TYPE_INFO, "%s: asked for non-existent item %@", buf, 0x16u);
      }

      v15 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:v6];

LABEL_31:
      v8 = 0;
      if (!v15)
      {
        goto LABEL_53;
      }

      goto LABEL_48;
    }

LABEL_47:
    v15 = v16;
    if (!v16)
    {
LABEL_53:

      goto LABEL_54;
    }

LABEL_48:
    v38 = v15;
    v39 = livefs_std_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper itemForIdentifierLocked:error:];
    }

    if (a4)
    {
      v40 = v38;
      *a4 = v38;
    }

    goto LABEL_53;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v71 = __Block_byref_object_copy__0;
  v72 = __Block_byref_object_dispose__0;
  v73 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__0;
  v62 = __Block_byref_object_dispose__0;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__0;
  v56 = __Block_byref_object_dispose__0;
  v57 = 0;
  if (self->_clusterMaster)
  {
    v12 = 0;
    v63 = 0;
  }

  else
  {
    conn = self->_conn;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __57__LiveFSFPExtensionHelper_itemForIdentifierLocked_error___block_invoke;
    v51[3] = &unk_27981A740;
    v51[4] = buf;
    v12 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v51];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __57__LiveFSFPExtensionHelper_itemForIdentifierLocked_error___block_invoke_2;
    v50[3] = &unk_27981A830;
    v50[4] = buf;
    v50[5] = &v58;
    [v12 getRootFileHandleWithError:v50];
    if (*(*&buf[8] + 40))
    {
      v22 = livefs_std_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = *(*&buf[8] + 40);
        *v64 = 138412290;
        v65 = v23;
        _os_log_impl(&dword_255FE9000, v22, OS_LOG_TYPE_INFO, "Getting RootFH failed with %@", v64, 0xCu);
      }

      v24 = *(*&buf[8] + 40);
      if (v24)
      {
        v25 = livefs_std_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [LiveFSFPExtensionHelper itemForIdentifierLocked:error:];
        }
      }

      if (a4)
      {
        v26 = v24;
LABEL_41:
        v8 = 0;
        v33 = 0;
        *a4 = v24;
        goto LABEL_44;
      }

      goto LABEL_42;
    }

    v28 = v59[5];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __57__LiveFSFPExtensionHelper_itemForIdentifierLocked_error___block_invoke_213;
    v49[3] = &unk_27981A858;
    v49[4] = buf;
    v49[5] = &v52;
    [v12 fileAttributes:v28 requestID:-1 reply:v49];
  }

  v29 = livefs_std_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v43 = *(*&buf[8] + 40);
    v44 = v59[5];
    v45 = [(NSFileProviderExtension *)self domain];
    v46 = [v45 identifier];
    *v64 = 138412802;
    v65 = v43;
    v66 = 2112;
    v67 = v44;
    v68 = 2112;
    v69 = v46;
    _os_log_debug_impl(&dword_255FE9000, v29, OS_LOG_TYPE_DEBUG, "LIGetRootFileHandle returned e %@ fh %@ in domain %@", v64, 0x20u);
  }

  v30 = *(*&buf[8] + 40);
  if (v30)
  {
    v24 = v30;
    v31 = livefs_std_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper itemForIdentifierLocked:error:];
    }

    if (a4)
    {
      v32 = v24;
      goto LABEL_41;
    }

LABEL_42:
    v8 = 0;
    v33 = 0;
    goto LABEL_44;
  }

  ItemClass = self->ItemClass;
  v35 = v59[5];
  v24 = [(NSFileProviderExtension *)self domain];
  v36 = [v24 displayName];
  v37 = [(objc_class *)self->ItemClass dt_dir];
  v8 = [(objc_class *)ItemClass newItemForFH:v35 withReference:v35 != 0 name:v36 parent:0 type:v37 attrs:v53[5] extension:self];

  v33 = 1;
LABEL_44:

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(buf, 8);
  if (v33)
  {
    goto LABEL_54;
  }

  v10 = 0;
LABEL_55:

LABEL_56:
  v41 = *MEMORY[0x277D85DE8];

  return v10;
}

void __57__LiveFSFPExtensionHelper_itemForIdentifierLocked_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __57__LiveFSFPExtensionHelper_itemForIdentifierLocked_error___block_invoke_213(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v11 = v5;
  if (a2)
  {
    v6 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:a2];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 40) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }
}

- (id)itemForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(LiveFSFPExtensionHelper *)self ensureMountPathSetup];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper itemForIdentifier:error:];
    }

    if (a4)
    {
      v11 = v9;
      *a4 = v9;
    }

    v12 = 0;
  }

  else
  {
    v13 = self;
    objc_sync_enter(v13);
    v12 = [(LiveFSFPExtensionHelper *)v13 itemForIdentifierLocked:v6 error:a4];
    objc_sync_exit(v13);
  }

  return v12;
}

- (void)addItem:(id)a3 identifier:(id)a4 fileHandle:(id)a5
{
  v14 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v14 parent];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 itemNameCache];
    v13 = [v14 filename];
    [v12 setObject:v14 forKey:v13];
  }

  if (v8)
  {
    [(NSMapTable *)self->itemHandleMap setObject:v14 forKey:v8];
  }

  [(NSMapTable *)self->itemIDMap setObject:v14 forKey:v9];
  [(LiveFSLRUCache *)self->itemCache setObject:v14 forKey:v9];
}

- (id)getItemForParent:(id)a3 name:(id)a4
{
  v5 = a4;
  v6 = [a3 itemNameCache];
  v7 = [v6 objectForKey:v5];

  return v7;
}

- (void)reparentItem:(id)a3 oldID:(id)a4 oldParent:(id)a5 oldName:(id)a6 newParent:(id)a7 newName:(id)a8
{
  v23 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v14)
  {
    [(LiveFSFPExtensionHelper *)self reIDItem:v23 oldID:v14];
    [(LiveFSLRUCache *)self->itemCache removeObjectForKey:v14];
  }

  if (![v17 isEqual:v15] || (objc_msgSend(v18, "isEqualToString:", v16) & 1) == 0)
  {
    v19 = [v17 itemNameCache];
    [v19 setObject:v23 forKey:v18];

    v20 = [v15 itemNameCache];
    [v20 removeObjectForKey:v16];
  }

  itemCache = self->itemCache;
  v22 = [v23 itemIdentifier];
  [(LiveFSLRUCache *)itemCache setObject:v23 forKey:v22];
}

- (void)reIDItem:(id)a3 oldID:(id)a4
{
  itemIDMap = self->itemIDMap;
  v7 = a3;
  [(NSMapTable *)itemIDMap removeObjectForKey:a4];
  v8 = self->itemIDMap;
  v9 = [v7 itemIdentifier];
  [(NSMapTable *)v8 setObject:v7 forKey:v9];
}

- (void)removeItem:(id)a3 parent:(id)a4 name:(id)a5 fileHandle:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [(NSMapTable *)self->itemIDMap setObject:0 forKey:v14];
  if (v10)
  {
    v13 = [v10 itemNameCache];
    [v13 removeObjectForKey:v11];
  }

  if (v12)
  {
    [(NSMapTable *)self->itemHandleMap removeObjectForKey:v12];
  }

  [(LiveFSLRUCache *)self->itemCache removeObjectForKey:v14];
}

- (void)removeEnumeratorForContainerLocked:(id)a3
{
  v5 = a3;
  v4 = [(NSMapTable *)self->enumerators objectForKey:?];

  if (v4)
  {
    [(NSMapTable *)self->enumerators setObject:0 forKey:v5];
  }
}

- (void)removeEnumeratorForContainer:(id)a3
{
  v4 = a3;
  enumeratorHelperQueue = self->_enumeratorHelperQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__LiveFSFPExtensionHelper_removeEnumeratorForContainer___block_invoke;
  v7[3] = &unk_27981A8F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(enumeratorHelperQueue, v7);
}

void __56__LiveFSFPExtensionHelper_removeEnumeratorForContainer___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) removeEnumeratorForContainerLocked:*(a1 + 40)];
  objc_sync_exit(obj);
}

- (id)URLForItemWithIdentifier:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSFileProviderExtension *)self domain];
  if (!v5)
  {
LABEL_11:
    v16 = livefs_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [LiveFSFPExtensionHelper URLForItemWithIdentifier:];
    }

    goto LABEL_13;
  }

  v6 = v5;
  v7 = [(NSFileProviderExtension *)self domain];
  v8 = [v7 identifier];
  if (!v8)
  {

    goto LABEL_11;
  }

  v9 = v8;
  v10 = [(NSFileProviderExtension *)self domain];
  v11 = [v10 identifier];
  v12 = [v11 isEqualToString:&stru_286811DF0];

  if (v12)
  {
    goto LABEL_11;
  }

  v13 = livefs_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPExtensionHelper URLForItemWithIdentifier:?];
  }

  v14 = [(LiveFSFPExtensionHelper *)self ensureMountPathSetup];
  if (!v14)
  {
    if ([(LiveFSFPExtensionHelper *)self _isLoggedInOrError:0])
    {
      if ([v4 isEqualToString:*MEMORY[0x277CC6348]])
      {
        v15 = &stru_286811DF0;
LABEL_24:
        v21 = livefs_std_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v25 = "[LiveFSFPExtensionHelper URLForItemWithIdentifier:]";
          v26 = 2112;
          v27 = v15;
          v28 = 2112;
          v29 = v4;
          _os_log_impl(&dword_255FE9000, v21, OS_LOG_TYPE_DEFAULT, "%s: returning perVolPath %@ for item %@", buf, 0x20u);
        }

        v16 = [(LiveFSFPExtensionHelper *)self mountPath];
        v17 = [v16 URLByAppendingPathComponent:v15 isDirectory:0];
        goto LABEL_14;
      }

      if (!self->_idsPersist)
      {
        v15 = v4;
        goto LABEL_24;
      }

      v23 = 0;
      v20 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:v4 error:&v23];
      v16 = v23;
      if (v20)
      {
        v15 = [v20 path];

        goto LABEL_24;
      }

      v22 = livefs_std_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v4;
        _os_log_impl(&dword_255FE9000, v22, OS_LOG_TYPE_DEFAULT, "URLForItem: didn't find item for ID %@", buf, 0xCu);
      }

LABEL_13:
      v15 = 0;
      v17 = 0;
LABEL_14:

      v14 = 0;
      goto LABEL_15;
    }

    v14 = 0;
  }

  v15 = 0;
  v17 = 0;
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)itemAtPathLocked:(id)a3 parent:(id)a4 cachedOnly:(BOOL)a5
{
  v35 = a5;
  v56 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__0;
  v52 = __Block_byref_object_dispose__0;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__0;
  v46 = __Block_byref_object_dispose__0;
  v47 = 0;
  v39 = 0;
  v40[0] = &v39;
  v40[1] = 0x3032000000;
  v40[2] = __Block_byref_object_copy__0;
  v40[3] = __Block_byref_object_dispose__0;
  v41 = 0;
  v33 = v7;
  v9 = [v7 pathComponents];
  if (self->_clusterMaster)
  {
    v36 = 0;
    v35 = 1;
  }

  else
  {
    conn = self->_conn;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __62__LiveFSFPExtensionHelper_itemAtPathLocked_parent_cachedOnly___block_invoke;
    v38[3] = &unk_27981A740;
    v38[4] = &v39;
    v36 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v38];
  }

  v34 = v8;
  v11 = [v9 count];
  v12 = v11;
  if (!v11)
  {
    v14 = 0;
    v13 = 0;
    v16 = v34;
LABEL_20:
    itemCache = self->itemCache;
    v27 = [v16 itemIdentifier];
    v28 = [(LiveFSLRUCache *)itemCache objectForKey:v27];

    v29 = v16;
    v18 = v13;
    goto LABEL_21;
  }

  v13 = 0;
  v14 = 0;
  v15 = MEMORY[0x277CBEBF8];
  v16 = v34;
  while (1)
  {
    v17 = [v9 objectAtIndexedSubscript:0];

    v14 = v17;
    if (([v17 isEqualToString:@"/"] & 1) == 0)
    {
      break;
    }

LABEL_14:
    if (v12 < 2)
    {

      --v12;
      v9 = v15;
      if (!v12)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v25 = [v9 subarrayWithRange:{1, --v12}];

      v9 = v25;
      if (!v12)
      {
        goto LABEL_20;
      }
    }
  }

  v18 = v16;

  v16 = [(LiveFSFPExtensionHelper *)self getItemForParent:v18 name:v17];

  if (v16)
  {
LABEL_13:
    v13 = v18;
    goto LABEL_14;
  }

  if (!v35)
  {
    v19 = livefs_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v9 objectAtIndexedSubscript:0];
      *buf = 138412290;
      v55 = v20;
      _os_log_impl(&dword_255FE9000, v19, OS_LOG_TYPE_DEFAULT, "About to look up name '%@'", buf, 0xCu);
    }

    v21 = [v18 fh];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __62__LiveFSFPExtensionHelper_itemAtPathLocked_parent_cachedOnly___block_invoke_216;
    v37[3] = &unk_27981A920;
    v37[4] = &v39;
    v37[5] = &v48;
    v37[6] = &v42;
    [v36 lookupIn:v21 name:v14 usingFlags:0 requestID:-1 reply:v37];

    if (*(v40[0] + 40))
    {
      v32 = livefs_std_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [LiveFSFPExtensionHelper itemAtPathLocked:v40 parent:? cachedOnly:?];
      }

      goto LABEL_29;
    }

    ItemClass = self->ItemClass;
    v23 = v49[5];
    v24 = [(objc_class *)ItemClass dt_examine];
    v16 = [(objc_class *)ItemClass newItemForFH:v23 withReference:1 name:v14 parent:v18 type:v24 attrs:v43[5] extension:self];
    goto LABEL_13;
  }

  v32 = livefs_std_log();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v55 = v33;
    _os_log_impl(&dword_255FE9000, v32, OS_LOG_TYPE_INFO, "Cache miss for name %@", buf, 0xCu);
  }

LABEL_29:

  v29 = 0;
LABEL_21:

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v48, 8);
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

void __62__LiveFSFPExtensionHelper_itemAtPathLocked_parent_cachedOnly___block_invoke_216(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v15 = a4;
  v9 = a5;
  if (a2)
  {
    v10 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:a2];
    v11 = *(a1[4] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a4);
    v13 = *(a1[6] + 8);
    v14 = v9;
    v12 = *(v13 + 40);
    *(v13 + 40) = v14;
  }
}

- (id)itemAtPath:(id)a3 parent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if ([(LiveFSFPExtensionHelper *)v8 _isLoggedInOrErrorLocked:0])
  {
    v9 = [(LiveFSFPExtensionHelper *)v8 itemAtPathLocked:v6 parent:v7 cachedOnly:0];
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(v8);

  return v9;
}

- (void)enumerateRootContainer
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = *MEMORY[0x277CC6348];
  v4 = [(LiveFSFPExtensionHelper *)v2 getEnumeratorForContainer:*MEMORY[0x277CC6348]];
  objc_sync_exit(v2);

  if (v4)
  {
    [LiveFSFPEnumeratorHelper applyParentUpdateAcrossEnumerators:v4];
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v2->_fetchRoot = 1;
    v7 = 0;
    v5 = [LiveFSFPEnumeratorHelper newWithEnumeratedItem:v3 extension:v2 error:&v7];
    v6 = v7;
    if (!v6)
    {
      [v5 signalEnumeratedItemChanged];
    }
  }
}

- (id)persistentIdentifierForItemAtURL:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = [a3 standardizedURL];
  v6 = livefs_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    docPath = self->_docPath;
    providerName = self->providerName;
    v9 = [(NSFileProviderExtension *)self domain];
    v10 = [(NSFileProviderExtension *)self domain];
    if (v10)
    {
      v3 = [(NSFileProviderExtension *)self domain];
      v11 = [v3 identifier];
    }

    else
    {
      v11 = &stru_286811DF0;
    }

    v26 = 136316418;
    v27 = "[LiveFSFPExtensionHelper persistentIdentifierForItemAtURL:]";
    v28 = 2112;
    v29 = v5;
    v30 = 2112;
    v31 = docPath;
    v32 = 2112;
    v33 = providerName;
    v34 = 2112;
    v35 = v9;
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&dword_255FE9000, v6, OS_LOG_TYPE_DEFAULT, "%s starting for url %@, docpath %@, providerName %@, domain: %@, identifier; %@", &v26, 0x3Eu);
    if (v10)
    {
    }
  }

  v12 = [(LiveFSFPExtensionHelper *)self itemPathForURL:v5];
  v13 = self;
  objc_sync_enter(v13);
  if ([(LiveFSFPExtensionHelper *)v13 _isLoggedInOrErrorLocked:0])
  {
    v14 = livefs_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = v12;
      _os_log_impl(&dword_255FE9000, v14, OS_LOG_TYPE_DEFAULT, "perItemPath is '%@'", &v26, 0xCu);
    }

    if ([v12 isEqualToString:&stru_286811DF0])
    {
      v15 = livefs_std_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      v17 = *MEMORY[0x277CC6348];
      if (v16)
      {
        v18 = *MEMORY[0x277CC6348];
        [LiveFSFPExtensionHelper persistentIdentifierForItemAtURL:];
      }

      v19 = v17;
    }

    else
    {
      if (v13->_idsPersist)
      {
        v21 = [(LiveFSFPExtensionHelper *)v13 itemForPath:v12 cachedOnly:0 error:0];
        v22 = v21;
        if (v21)
        {
          v20 = [v21 itemIdentifier];
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_25;
      }

      v23 = livefs_std_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [LiveFSFPExtensionHelper persistentIdentifierForItemAtURL:];
      }

      v19 = v12;
    }

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

LABEL_25:
  objc_sync_exit(v13);

  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)providePlaceholderAtURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPExtensionHelper providePlaceholderAtURL:completionHandler:];
  }

  v6[2](v6, 0);
}

- (void)startProvidingItemAtURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPExtensionHelper startProvidingItemAtURL:completionHandler:];
  }

  v6[2](v6, 0);
}

- (void)itemChangedAtURL:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(LiveFSFPExtensionHelper *)self itemForURL:v4 cachedOnly:1 error:0];
  v6 = v5;
  if (v5)
  {
    [v5 setAttributesStale];
  }

  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = " found item at";
    v11 = "[LiveFSFPExtensionHelper itemChangedAtURL:]";
    v10 = 136315650;
    if (!v6)
    {
      v8 = "";
    }

    v12 = 2080;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_255FE9000, v7, OS_LOG_TYPE_DEFAULT, "%s: called on%s url %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopProvidingItemAtURL:(id)a3
{
  v3 = a3;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPExtensionHelper stopProvidingItemAtURL:];
  }
}

- (id)LiveFSDefaultMover
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__LiveFSFPExtensionHelper_LiveFSDefaultMover__block_invoke;
  v5[3] = &unk_27981A948;
  v5[4] = self;
  v2 = MEMORY[0x259C563F0](v5, a2);
  v3 = MEMORY[0x259C563F0]();

  return v3;
}

BOOL __45__LiveFSFPExtensionHelper_LiveFSDefaultMover__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = v7;
  v9 = a2;
  v10 = [v7 fileSystemRepresentation];
  v11 = [v9 fileSystemRepresentation];

  dst = 0;
  v12 = copyfile_state_alloc();
  if (v12)
  {
    v13 = v12;
    copyfile_state_set(v12, 6u, copyFileFromPath_callback);
    v14 = copyfile(v11, v10, v13, 0x10E800Fu);
    v15 = v14 == 0;
    if (v14)
    {
      if (a4)
      {
        if (*__error() == 17)
        {
          v16 = [*(a1 + 32) itemForURL:v7 error:a4];
          if (v16)
          {
            *a4 = [MEMORY[0x277CCA9B8] fileProviderErrorForCollisionWithItem:v16];
          }
        }

        else
        {
          *a4 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:*__error()];
        }
      }
    }

    else
    {
      copyfile_state_get(v13, 0xAu, &dst);
    }

    copyfile_state_free(v13);
  }

  else if (a4)
  {
    [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:12];
    *a4 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)importDocumentAtURL:(id)a3 toParentItemIdentifier:(id)a4 completionHandler:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:v9];
  v12 = livefs_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v8;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_255FE9000, v12, OS_LOG_TYPE_DEFAULT, "importing document at %@ to %@", buf, 0x16u);
  }

  if (v11)
  {
    v13 = [(LiveFSFPExtensionHelper *)self LiveFSDefaultMover];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __88__LiveFSFPExtensionHelper_importDocumentAtURL_toParentItemIdentifier_completionHandler___block_invoke;
    v16[3] = &unk_27981A970;
    v16[4] = self;
    v18 = v10;
    v17 = v8;
    [v17 fp_importUnderFolder:v11 usingBlock:v13 completionHandler:v16];
  }

  else
  {
    v14 = livefs_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255FE9000, v14, OS_LOG_TYPE_DEFAULT, "Where is IT", buf, 2u);
    }

    v13 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:v9];
    (*(v10 + 2))(v10, 0, v13);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __88__LiveFSFPExtensionHelper_importDocumentAtURL_toParentItemIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __88__LiveFSFPExtensionHelper_importDocumentAtURL_toParentItemIdentifier_completionHandler___block_invoke_cold_1();
  }

  v8 = [*(a1 + 32) fileProviderErrorFromFSError:v6];

  if (v8)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v16 = 0;
    v10 = [v9 itemForURL:v5 error:&v16];
    v11 = v16;
    if (!v10)
    {
      v12 = livefs_std_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __88__LiveFSFPExtensionHelper_importDocumentAtURL_toParentItemIdentifier_completionHandler___block_invoke_cold_2();
      }
    }

    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      *buf = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_255FE9000, v13, OS_LOG_TYPE_DEFAULT, "importing document at %@ to item %@, error %@", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)createDirectoryWithName:(id)a3 inParentItemIdentifier:(id)a4 completionHandler:(id)a5
{
  v41[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = livefs_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = v8;
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_DEFAULT, "creating directory %@ under %@", buf, 0x16u);
  }

  v12 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:v9 error:0];
  if (!v12)
  {
    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255FE9000, v18, OS_LOG_TYPE_DEFAULT, "Where is IT", buf, 2u);
    }

    v15 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:v9];
    goto LABEL_14;
  }

  v33 = 0;
  v13 = [(LiveFSFPExtensionHelper *)self _isLoggedInOrError:&v33];
  v14 = v33;
  v15 = v14;
  if (!v13)
  {
    v19 = livefs_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper createDirectoryWithName:inParentItemIdentifier:completionHandler:];
    }

LABEL_14:
    v10[2](v10, 0, v15);
    goto LABEL_19;
  }

  if (self->_clusterMaster)
  {
    v16 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:30];

    v17 = livefs_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper createDirectoryWithName:v17 inParentItemIdentifier:? completionHandler:?];
    }

LABEL_18:

    v10[2](v10, 0, v16);
    v15 = v16;
    goto LABEL_19;
  }

  v32 = v14;
  v20 = [v12 ensureFileHandleOrError:&v32];
  v16 = v32;

  if (v20)
  {
    v17 = livefs_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper createDirectoryWithName:inParentItemIdentifier:completionHandler:];
    }

    goto LABEL_18;
  }

  v22 = [(LiveFSFPExtensionHelper *)self itemAtPath:v8 parent:v12];
  if (v22)
  {
    v15 = v22;
    v23 = livefs_std_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v35 = v8;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&dword_255FE9000, v23, OS_LOG_TYPE_DEFAULT, "creating directory %@ colliding with %@", buf, 0x16u);
    }

    v24 = [MEMORY[0x277CCA9B8] fileProviderErrorForCollisionWithItem:v15];
    v10[2](v10, 0, v24);
  }

  else
  {
    v25 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:v9];
    v26 = [v25 URLByAppendingPathComponent:v8];

    v40 = *MEMORY[0x277CCA180];
    v41[0] = &unk_286815020;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v28 = [MEMORY[0x277CCAA00] defaultManager];
    v31 = v16;
    [v28 createDirectoryAtURL:v26 withIntermediateDirectories:0 attributes:v27 error:&v31];
    v29 = v31;

    if (v29)
    {
      v15 = 0;
    }

    else
    {
      v15 = [(LiveFSFPExtensionHelper *)self itemAtPath:v8 parent:v12];
    }

    v30 = livefs_std_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v35 = v8;
      v36 = 2112;
      v37 = v15;
      v38 = 2112;
      v39 = v29;
      _os_log_impl(&dword_255FE9000, v30, OS_LOG_TYPE_DEFAULT, "creating directory %@ returning %@ and error %@", buf, 0x20u);
    }

    (v10)[2](v10, v15, v29);
  }

LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)renameItemWithIdentifier:(id)a3 toName:(id)a4 completionHandler:(id)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v37 = a4;
  v9 = a5;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__0;
  v53 = __Block_byref_object_dispose__0;
  v54 = 0;
  v10 = livefs_std_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v56 = v8;
    v57 = 2112;
    v58 = v37;
    _os_log_impl(&dword_255FE9000, v10, OS_LOG_TYPE_DEFAULT, "renaming %@ to %@", buf, 0x16u);
  }

  v11 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:v8 error:0];
  v12 = v11;
  if (!v11)
  {
    v21 = livefs_std_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255FE9000, v21, OS_LOG_TYPE_DEFAULT, "Where is IT", buf, 2u);
    }

    v22 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:v8];
    v9[2](v9, 0, v22);
    goto LABEL_14;
  }

  v13 = [v11 parent];
  if (!v13)
  {
    v22 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    v9[2](v9, 0, v22);
LABEL_14:
    v23 = 0;
    v24 = 0;
    v17 = 0;
    v13 = 0;
    v25 = 0;
    goto LABEL_15;
  }

  v48 = 0;
  v14 = [(LiveFSFPExtensionHelper *)self _isLoggedInOrError:&v48];
  v15 = v48;
  v16 = v15;
  if (!v14)
  {
    v9[2](v9, 0, v15);
    v23 = 0;
    v24 = 0;
LABEL_18:
    v25 = 0;
    goto LABEL_19;
  }

  if (self->_clusterMaster)
  {
    v17 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:30];

    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [(NSFileProviderExtension *)self domain];
      v20 = [v19 identifier];
      [(LiveFSFPExtensionHelper *)v20 renameItemWithIdentifier:buf toName:v18 completionHandler:v19];
    }

    v9[2](v9, 0, v17);
    goto LABEL_22;
  }

  v47 = v15;
  v27 = [v13 ensureFileHandleOrError:&v47];
  v17 = v47;

  if (v27)
  {
    v9[2](v9, 0, v17);
LABEL_22:
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_16;
  }

  v25 = [(LiveFSFPExtensionHelper *)self itemAtPath:v37 parent:v13];
  if (v25)
  {
    v28 = livefs_std_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v56 = v8;
      v57 = 2112;
      v58 = v25;
      _os_log_impl(&dword_255FE9000, v28, OS_LOG_TYPE_DEFAULT, "renaming %@ colliding with %@", buf, 0x16u);
    }

    v22 = [MEMORY[0x277CCA9B8] fileProviderErrorForCollisionWithItem:v25];
    v9[2](v9, 0, v22);
    v23 = 0;
    v24 = 0;
    goto LABEL_15;
  }

  v24 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:v8];
  v29 = [v24 URLByDeletingLastPathComponent];
  v23 = [v29 URLByAppendingPathComponent:v37];

  v30 = [v13 itemIdentifier];
  v46 = v17;
  v31 = [(LiveFSFPExtensionHelper *)self enumeratorForContainerItemIdentifier:v30 error:&v46];
  v36 = v30;
  v16 = v46;

  v32 = v50[5];
  v50[5] = v31;

  v33 = v50[5];
  if (v33)
  {
    v34 = [v33 ensureConnectedForUpdates];

    v16 = v34;
  }

  if (v16)
  {
    v9[2](v9, 0, v16);
    goto LABEL_18;
  }

  renameUpdateQueue = self->renameUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__LiveFSFPExtensionHelper_renameItemWithIdentifier_toName_completionHandler___block_invoke;
  block[3] = &unk_27981A9C0;
  v39 = v12;
  v13 = v13;
  v40 = v13;
  v41 = self;
  v23 = v23;
  v42 = v23;
  v45 = &v49;
  v44 = v9;
  v24 = v24;
  v43 = v24;
  dispatch_async(renameUpdateQueue, block);

  v17 = 0;
  v25 = 0;
  v22 = v39;
LABEL_15:

LABEL_16:
  v16 = v17;
LABEL_19:
  _Block_object_dispose(&v49, 8);

  v26 = *MEMORY[0x277D85DE8];
}

void __77__LiveFSFPExtensionHelper_renameItemWithIdentifier_toName_completionHandler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) filename];
  v3 = [v2 copy];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__LiveFSFPExtensionHelper_renameItemWithIdentifier_toName_completionHandler___block_invoke_2;
  v16[3] = &unk_27981A998;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v16[4] = *(a1 + 48);
  v17 = v5;
  v14 = *(a1 + 72);
  v6 = v14;
  v18 = v14;
  [v4 afterRename:v3 performBlock:v16];
  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[LiveFSFPExtensionHelper renameItemWithIdentifier:toName:completionHandler:]_block_invoke";
    _os_log_impl(&dword_255FE9000, v7, OS_LOG_TYPE_DEFAULT, "%s: rename about to happen", buf, 0xCu);
  }

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  v15 = 0;
  [v8 moveItemAtURL:v9 toURL:v10 error:&v15];
  v11 = v15;

  v12 = livefs_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[LiveFSFPExtensionHelper renameItemWithIdentifier:toName:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_255FE9000, v12, OS_LOG_TYPE_DEFAULT, "%s: got error %@", buf, 0x16u);
  }

  if (v11)
  {
    [*(a1 + 40) dropAfterRenameBlockForName:v3];
    (*(*(a1 + 72) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __77__LiveFSFPExtensionHelper_renameItemWithIdentifier_toName_completionHandler___block_invoke_2(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v10 = 0;
  v4 = [v2 itemForURL:v3 error:&v10];
  v5 = v10;
  v6 = livefs_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_255FE9000, v6, OS_LOG_TYPE_DEFAULT, "Reparented, it is item %@ newError %@", buf, 0x16u);
  }

  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  (*(a1[6] + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)reparentItemWithIdentifier:(id)a3 toParentItemWithIdentifier:(id)a4 newName:(id)a5 completionHandler:(id)a6
{
  v71 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v44 = a4;
  v43 = a5;
  v11 = a6;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__0;
  v63 = __Block_byref_object_dispose__0;
  v64 = 0;
  v12 = livefs_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v66 = v10;
    v67 = 2112;
    v68 = v44;
    v69 = 2112;
    v70 = v43;
    _os_log_impl(&dword_255FE9000, v12, OS_LOG_TYPE_DEFAULT, "reparenting %@ under %@, with newName %@", buf, 0x20u);
  }

  v42 = v10;

  v58 = 0;
  v13 = [(LiveFSFPExtensionHelper *)self _isLoggedInOrError:&v58];
  v14 = v58;
  if (!v13)
  {
    v11[2](v11, 0, v14);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_19;
  }

  if (self->_clusterMaster)
  {
    v15 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:30];

    v16 = livefs_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(NSFileProviderExtension *)self domain];
      v18 = [v17 identifier];
      [(LiveFSFPExtensionHelper *)v18 renameItemWithIdentifier:buf toName:v16 completionHandler:v17];
    }

    v11[2](v11, 0, v15);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_8;
  }

  v25 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:v10 error:0];
  v24 = v25;
  if (!v25)
  {
    v28 = livefs_std_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255FE9000, v28, OS_LOG_TYPE_DEFAULT, "Where is IT", buf, 2u);
    }

    v29 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:v42];
    v11[2](v11, 0, v29);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_18;
  }

  v26 = [v25 parent];
  v23 = v26;
  if (!v26)
  {
    v29 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    v11[2](v11, 0, v29);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v57 = v14;
  v27 = [v26 ensureFileHandleOrError:&v57];
  v15 = v57;

  if (!v27)
  {
    v56 = v15;
    v22 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:v44 error:&v56];
    v14 = v56;

    if (v14)
    {
      v11[2](v11, 0, v14);
      v19 = 0;
      v20 = 0;
      v21 = 0;
      goto LABEL_19;
    }

    v55 = 0;
    v31 = [v22 ensureFileHandleOrError:&v55];
    v41 = v55;
    if (v31)
    {
      v11[2](v11, 0, v41);
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v14 = v41;
      goto LABEL_19;
    }

    if (v43)
    {
      v32 = v43;
    }

    else
    {
      v33 = livefs_std_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = [v24 filename];
        [LiveFSFPExtensionHelper reparentItemWithIdentifier:v34 toParentItemWithIdentifier:buf newName:v33 completionHandler:?];
      }

      v32 = [v24 filename];
    }

    v21 = v32;
    v20 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:v42];
    v35 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:v44];
    v19 = [v35 URLByAppendingPathComponent:v21];

    v36 = [v23 itemIdentifier];
    v54 = v41;
    v37 = [(LiveFSFPExtensionHelper *)self enumeratorForContainerItemIdentifier:v36 error:&v54];
    v40 = v36;
    v14 = v54;

    v38 = v60[5];
    v60[5] = v37;

    if (v14)
    {
      v11[2](v11, 0, v14);
      goto LABEL_19;
    }

    renameUpdateQueue = self->renameUpdateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __107__LiveFSFPExtensionHelper_reparentItemWithIdentifier_toParentItemWithIdentifier_newName_completionHandler___block_invoke;
    block[3] = &unk_27981A9E8;
    v24 = v24;
    v46 = v24;
    v23 = v23;
    v47 = v23;
    v48 = self;
    v19 = v19;
    v49 = v19;
    v53 = &v59;
    v52 = v11;
    v20 = v20;
    v50 = v20;
    v51 = 0;
    dispatch_async(renameUpdateQueue, block);

    v14 = 0;
    v29 = v46;
    goto LABEL_18;
  }

  v11[2](v11, 0, v15);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
LABEL_8:
  v14 = v15;
LABEL_19:
  _Block_object_dispose(&v59, 8);

  v30 = *MEMORY[0x277D85DE8];
}

void __107__LiveFSFPExtensionHelper_reparentItemWithIdentifier_toParentItemWithIdentifier_newName_completionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) filename];
  v3 = [v2 copy];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __107__LiveFSFPExtensionHelper_reparentItemWithIdentifier_toParentItemWithIdentifier_newName_completionHandler___block_invoke_2;
  v17[3] = &unk_27981A998;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v17[4] = *(a1 + 48);
  v18 = v5;
  v15 = *(a1 + 80);
  v6 = v15;
  v19 = v15;
  [v4 afterRename:v3 performBlock:v17];
  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[LiveFSFPExtensionHelper reparentItemWithIdentifier:toParentItemWithIdentifier:newName:completionHandler:]_block_invoke";
    _os_log_impl(&dword_255FE9000, v7, OS_LOG_TYPE_DEFAULT, "%s: rename about to happen", buf, 0xCu);
  }

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  v16 = 0;
  [v8 moveItemAtURL:v9 toURL:v10 error:&v16];
  v11 = v16;

  v12 = livefs_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[LiveFSFPExtensionHelper reparentItemWithIdentifier:toParentItemWithIdentifier:newName:completionHandler:]_block_invoke";
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_255FE9000, v12, OS_LOG_TYPE_DEFAULT, "%s: got error %@", buf, 0x16u);
  }

  if (v11)
  {
    [*(a1 + 40) dropAfterRenameBlockForName:v3];
    v13 = *(a1 + 72);
    (*(*(a1 + 80) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __107__LiveFSFPExtensionHelper_reparentItemWithIdentifier_toParentItemWithIdentifier_newName_completionHandler___block_invoke_2(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v10 = 0;
  v4 = [v2 itemForURL:v3 error:&v10];
  v5 = v10;
  v6 = livefs_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_255FE9000, v6, OS_LOG_TYPE_DEFAULT, "Reparented, it is item %@ newError %@", buf, 0x16u);
  }

  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  (*(a1[6] + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)fetchTrashIdentifiersWithCompletionHandler:(id)a3
{
  v4 = a3;
  v19 = 0;
  v5 = [(LiveFSFPExtensionHelper *)self _isLoggedInOrError:&v19];
  v6 = v19;
  v7 = v6;
  if (v5)
  {
    v18 = v6;
    v8 = [(LiveFSFPExtensionHelper *)self itemForPath:@".Trashes" cachedOnly:0 error:&v18];
    v9 = v18;

    if (v8)
    {
      v10 = [v8 itemIdentifier];
      v17 = v9;
      v11 = [(LiveFSFPExtensionHelper *)self enumeratorForContainerItemIdentifier:v10 error:&v17];
      v7 = v17;

      if (v11)
      {
        v12 = [LiveFSFPTrashObserver newWithCompletionHandler:v4];
        if (v12)
        {
          v13 = v12;
          v14 = *MEMORY[0x277CC6328];
          if (v14)
          {
            v15 = v14;
            do
            {
              [v11 enumerateItemsForObserver:v13 startingAtPage:v15];
              v16 = [v13 lastPage];

              v15 = v16;
            }

            while (v16);
          }
        }

        else
        {
          v13 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:12];
          v4[2](v4, 0, v13);
        }
      }

      else
      {
        v4[2](v4, 0, v7);
      }
    }

    else
    {
      v4[2](v4, 0, v9);
      v7 = v9;
    }
  }

  else
  {
    v4[2](v4, 0, v6);
  }
}

- (void)trashItemWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_255FE9000, v8, OS_LOG_TYPE_INFO, "trashing item %@", &buf, 0xCu);
  }

  v61 = 0;
  v9 = [(LiveFSFPExtensionHelper *)self _isLoggedInOrError:&v61];
  v10 = v61;
  if (!v9)
  {
    v7[2](v7, 0, v10);
    goto LABEL_7;
  }

  v11 = *MEMORY[0x277CC6348];
  if (![v6 isEqualToString:*MEMORY[0x277CC6348]])
  {
    v14 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:v6 error:0];
    if (!v14)
    {
      v27 = livefs_std_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_255FE9000, v27, OS_LOG_TYPE_DEFAULT, "Where is IT", &buf, 2u);
      }

      v28 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:v6];
      v7[2](v7, 0, v28);

      goto LABEL_7;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v63 = 0x3032000000;
    v64 = __Block_byref_object_copy__0;
    v65 = __Block_byref_object_dispose__0;
    v66 = 0;
    v47 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:v6];
    v16 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:v11];
    v48 = [v16 URLByAppendingPathComponent:@".Trashes"];

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", getuid()];
    v49 = [v48 URLByAppendingPathComponent:v17];

    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [v49 path];
    v60 = v10;
    v20 = [v18 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:&v60];
    v21 = v60;

    if ((v20 & 1) == 0)
    {
      v22 = [v21 domain];
      v23 = *MEMORY[0x277CCA050];
      if ([v22 isEqualToString:*MEMORY[0x277CCA050]])
      {
        v24 = [v21 code] == 516;

        if (!v24)
        {
          connection = xpc_connection_create_mach_service("com.apple.filesystems.userfs_helper", 0, 0);
          if (!connection || MEMORY[0x259C56690](connection) != MEMORY[0x277D86450])
          {
            v25 = [MEMORY[0x277CCA9B8] errorWithDomain:v23 code:512 userInfo:0];
            v7[2](v7, 0, v25);
            v26 = 0;
            xdict = 0;
            v13 = 0;
            goto LABEL_28;
          }

          xpc_connection_set_event_handler(connection, &__block_literal_global);
          xpc_connection_resume(connection);
          xdict = xpc_dictionary_create(0, 0, 0);
          v36 = getuid();
          xpc_dictionary_set_int64(xdict, "uid", v36);
          v37 = getgid();
          xpc_dictionary_set_int64(xdict, "gid", v37);
          v38 = v48;
          v39 = [v48 fileSystemRepresentation];
          v40 = v49;
          v41 = [v49 fileSystemRepresentation];
          if (v39)
          {
            xpc_dictionary_set_string(xdict, "trash", v39);
          }

          if (v41)
          {
            xpc_dictionary_set_string(xdict, "path", v41);
          }

          v42 = livefs_std_log();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *v59 = 0;
            _os_log_impl(&dword_255FE9000, v42, OS_LOG_TYPE_DEFAULT, "asking for Trash to be created", v59, 2u);
          }

          v43 = xpc_connection_send_message_with_reply_sync(connection, xdict);
          v26 = v43;
          if (!v43 || MEMORY[0x259C56690](v43) != MEMORY[0x277D86468] || xpc_dictionary_get_int64(v26, "error"))
          {
            v10 = [MEMORY[0x277CCA9B8] errorWithDomain:v23 code:512 userInfo:0];

            v44 = livefs_std_log();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              [LiveFSFPExtensionHelper trashItemWithIdentifier:completionHandler:];
            }

            v7[2](v7, 0, v10);
            v13 = 0;
            goto LABEL_29;
          }

          xpc_connection_cancel(connection);
LABEL_21:
          v13 = [v14 parent];
          v29 = [v13 itemIdentifier];
          v58 = v21;
          v30 = [(LiveFSFPExtensionHelper *)self enumeratorForContainerItemIdentifier:v29 error:&v58];
          v10 = v58;

          v31 = *(*(&buf + 1) + 40);
          *(*(&buf + 1) + 40) = v30;

          v32 = *(*(&buf + 1) + 40);
          if (v32)
          {
            v33 = [v32 ensureConnectedForUpdates];

            v10 = v33;
          }

          if (v10)
          {
            v7[2](v7, 0, v10);
LABEL_29:

            _Block_object_dispose(&buf, 8);
            goto LABEL_8;
          }

          v34 = livefs_std_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *v59 = 0;
            _os_log_impl(&dword_255FE9000, v34, OS_LOG_TYPE_DEFAULT, "about to dispatch_async actual trashing work", v59, 2u);
          }

          renameUpdateQueue = self->renameUpdateQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __69__LiveFSFPExtensionHelper_trashItemWithIdentifier_completionHandler___block_invoke_236;
          block[3] = &unk_27981AAA8;
          v51 = v14;
          v52 = self;
          v56 = v7;
          p_buf = &buf;
          v13 = v13;
          v53 = v13;
          v54 = v47;
          v55 = v49;
          dispatch_async(renameUpdateQueue, block);

          v21 = 0;
          v25 = v51;
LABEL_28:

          v10 = v21;
          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    xdict = 0;
    connection = 0;
    v26 = 0;
    goto LABEL_21;
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:513 userInfo:0];
  v7[2](v7, 0, v12);

LABEL_7:
  v13 = 0;
  v14 = 0;
LABEL_8:

  v15 = *MEMORY[0x277D85DE8];
}

void __69__LiveFSFPExtensionHelper_trashItemWithIdentifier_completionHandler___block_invoke_236(uint64_t a1)
{
  v2 = [*(a1 + 32) filename];
  v3 = [v2 copy];

  v4 = objc_alloc(MEMORY[0x277D23D88]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__LiveFSFPExtensionHelper_trashItemWithIdentifier_completionHandler___block_invoke_2;
  v24[3] = &unk_27981AA30;
  v5 = *(a1 + 72);
  v24[4] = *(a1 + 40);
  v25 = v5;
  v26 = *(a1 + 80);
  v6 = [v4 initWithCount:2 workBlock:v24];
  v7 = *(a1 + 48);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__LiveFSFPExtensionHelper_trashItemWithIdentifier_completionHandler___block_invoke_239;
  v22[3] = &unk_27981AA58;
  v8 = v6;
  v23 = v8;
  [v7 afterRename:v3 performBlock:v22];
  v9 = livefs_std_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255FE9000, v9, OS_LOG_TYPE_DEFAULT, "registered for renameUpdate", buf, 2u);
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__LiveFSFPExtensionHelper_trashItemWithIdentifier_completionHandler___block_invoke_240;
  v15[3] = &unk_27981AA80;
  v16 = v10;
  v17 = *(a1 + 48);
  v18 = v3;
  v19 = v8;
  v20 = *(a1 + 72);
  v12 = v8;
  v13 = v3;
  [v16 fp_trashUnderFolder:v11 completionHandler:v15];
  v14 = livefs_std_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255FE9000, v14, OS_LOG_TYPE_DEFAULT, "Asked FP to trash the item", buf, 2u);
  }
}

void __69__LiveFSFPExtensionHelper_trashItemWithIdentifier_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 parameter];

  if (v4)
  {
    v5 = [v3 parameter];
    v6 = a1[4];
    v15 = 0;
    v7 = [v6 itemForURL:v5 error:&v15];
    v8 = v15;
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_255FE9000, v9, OS_LOG_TYPE_DEFAULT, "trash returning item %@ newError %@", buf, 0x16u);
    }

    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    (*(a1[5] + 16))();
  }

  else
  {
    v12 = a1[5];
    v13 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    (*(v12 + 16))(v12, 0, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __69__LiveFSFPExtensionHelper_trashItemWithIdentifier_completionHandler___block_invoke_240(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = livefs_std_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 138412802;
      v12 = v10;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_255FE9000, v8, OS_LOG_TYPE_ERROR, "trashing item at url %@ newURL %@ failed with error: %@", &v11, 0x20u);
    }

    [*(a1 + 40) dropAfterRenameBlockForName:*(a1 + 48)];
    [*(a1 + 56) abort];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_255FE9000, v8, OS_LOG_TYPE_DEFAULT, "item trashed, newURL:%@", &v11, 0xCu);
    }

    [*(a1 + 56) setParameter:v5];
    [*(a1 + 56) approve];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)untrashItemWithIdentifier:(id)a3 toParentItemIdentifier:(id)a4 completionHandler:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__0;
  v40 = __Block_byref_object_dispose__0;
  v41 = 0;
  v11 = livefs_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v43 = v8;
    _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_INFO, "untrashing item %@", buf, 0xCu);
  }

  v35 = 0;
  v12 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:v8 error:&v35];
  v13 = v35;
  if (!v12)
  {
    v22 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:v8];
    v10[2](v10, 0, v22);
LABEL_13:
    v14 = 0;
    v17 = 0;
LABEL_18:

    v16 = v9;
    goto LABEL_19;
  }

  v14 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:v8];
  if (!v14)
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    v10[2](v10, 0, v22);
    goto LABEL_13;
  }

  v15 = *MEMORY[0x277CC6348];
  if (v9)
  {
    v15 = v9;
  }

  v16 = v15;

  v17 = [v12 parent];
  if (!v17)
  {
    v22 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    v10[2](v10, 0, v22);
    v17 = 0;
LABEL_17:
    v9 = v16;
    goto LABEL_18;
  }

  v34 = v13;
  v18 = [(LiveFSFPExtensionHelper *)self enumeratorForContainerItemIdentifier:v16 error:&v34];
  v19 = v34;

  v20 = v37[5];
  v37[5] = v18;

  v21 = v37[5];
  if (!v21)
  {
    v13 = v19;
    if (v19)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  v13 = [v21 ensureConnectedForUpdates];

  if (!v13)
  {
LABEL_16:
    v23 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:v16];
    renameUpdateQueue = self->renameUpdateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke;
    block[3] = &unk_27981AAA8;
    v27 = v12;
    v28 = self;
    v32 = v10;
    v33 = &v36;
    v17 = v17;
    v29 = v17;
    v14 = v14;
    v30 = v14;
    v31 = v23;
    v22 = v23;
    dispatch_async(renameUpdateQueue, block);

    v13 = 0;
    goto LABEL_17;
  }

LABEL_10:
  v10[2](v10, 0, v13);
LABEL_19:
  _Block_object_dispose(&v36, 8);

  v25 = *MEMORY[0x277D85DE8];
}

void __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) filename];
  v3 = [v2 copy];

  v4 = objc_alloc(MEMORY[0x277D23D88]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke_2;
  v18[3] = &unk_27981AA30;
  v5 = *(a1 + 72);
  v18[4] = *(a1 + 40);
  v19 = v5;
  v20 = *(a1 + 80);
  v6 = [v4 initWithCount:2 workBlock:v18];
  v7 = *(a1 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke_241;
  v16[3] = &unk_27981AA58;
  v8 = v6;
  v17 = v8;
  [v7 afterRename:v3 performBlock:v16];
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke_2_242;
  v12[3] = &unk_27981AAD0;
  v13 = v8;
  v14 = v9;
  v15 = *(a1 + 72);
  v11 = v8;
  [v9 fp_reparentUnderFolder:v10 allowBouncing:1 completionHandler:v12];
}

void __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 parameter];

  if (v4)
  {
    v5 = [v3 parameter];
    v6 = a1[4];
    v15 = 0;
    v7 = [v6 itemForURL:v5 error:&v15];
    v8 = v15;
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_255FE9000, v9, OS_LOG_TYPE_DEFAULT, "untrash returning item %@ newError %@", buf, 0x16u);
    }

    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    (*(a1[5] + 16))();
  }

  else
  {
    v12 = a1[5];
    v13 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    (*(v12 + 16))(v12, 0, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke_2_242(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setParameter:a2];
  if (a2)
  {
    [*(a1 + 32) approve];
  }

  else
  {
    v6 = livefs_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke_2_242_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)deleteItemWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v6;
    _os_log_impl(&dword_255FE9000, v8, OS_LOG_TYPE_DEFAULT, "deleting item %@", buf, 0xCu);
  }

  v9 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:v6 error:0];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 parent];
    v12 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:v6];
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = 0;
    [v13 removeItemAtURL:v12 error:&v22];
    v14 = v22;

    if (!v14)
    {
      itemIDMap = self->itemIDMap;
      v16 = [v10 itemIdentifier];
      [(NSMapTable *)itemIDMap removeObjectForKey:v16];

      itemCache = self->itemCache;
      v18 = [v10 itemIdentifier];
      [(LiveFSLRUCache *)itemCache removeObjectForKey:v18];

      [v11 setAttributesStale];
    }

    v19 = livefs_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v14;
      _os_log_impl(&dword_255FE9000, v19, OS_LOG_TYPE_DEFAULT, "deleting returning %@", buf, 0xCu);
    }

    v7[2](v7, v14);
  }

  else
  {
    v20 = livefs_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255FE9000, v20, OS_LOG_TYPE_DEFAULT, "Where is IT", buf, 2u);
    }

    v11 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:v6];
    v7[2](v7, v11);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setLastUsedDate:(id)a3 forItemIdentifier:(id)a4 completionHandler:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = livefs_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v24 = "[LiveFSFPExtensionHelper setLastUsedDate:forItemIdentifier:completionHandler:]";
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_INFO, "%s: setting lastUsedDate %@ for %@", buf, 0x20u);
  }

  v12 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:v9 error:0];
  v13 = v12;
  if (!v12)
  {
    v16 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:v9];
    v10[2](v10, 0, v16);
LABEL_15:

    goto LABEL_16;
  }

  if (*MEMORY[0x277CC6348] != v9)
  {
    v14 = [v12 fullPath];
    v15 = open([v14 UTF8String], 0);

    if (v15 < 0)
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = *__error();
      v20 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:v9];
      v16 = [v18 fp_errorWithPOSIXCode:v19 itemURL:v20 debugDescription:@"Opening file for setLastUsedDate"];

      v21 = livefs_std_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [LiveFSFPExtensionHelper setLastUsedDate:forItemIdentifier:completionHandler:];
      }

      v17 = [LiveFSFPExtensionHelper getNSErrorFromUnknownError:v16];
      v10[2](v10, 0, v17);
    }

    else
    {
      FPFileMetadataSetLastUsedDate();
      v16 = 0;
      close(v15);
      if (!v16)
      {
        [v13 setLastUsedDate:v8];
      }

      v17 = [LiveFSFPExtensionHelper getNSErrorFromUnknownError:v16];
      (v10)[2](v10, v13, v17);
    }

    goto LABEL_15;
  }

  (v10)[2](v10, v12, 0);
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setTagData:(id)a3 forItemIdentifier:(id)a4 completionHandler:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_supportsTagging)
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
LABEL_12:
    v13 = v20;
    v10[2](v10, 0, v20);
    goto LABEL_13;
  }

  v11 = livefs_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v27 = "[LiveFSFPExtensionHelper setTagData:forItemIdentifier:completionHandler:]";
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_INFO, "%s: setting tagData %@ for %@", buf, 0x20u);
  }

  v12 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:v9 error:0];
  if (!v12)
  {
    v20 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:v9];
    goto LABEL_12;
  }

  v13 = v12;
  if (*MEMORY[0x277CC6348] == v9)
  {
    (v10)[2](v10, v12, 0);
  }

  else
  {
    v14 = [v12 fullPath];
    v15 = [v14 UTF8String];

    v16 = open(v15, 0);
    if (v16 < 0)
    {
      v22 = livefs_std_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [LiveFSFPExtensionHelper setTagData:v15 forItemIdentifier:v22 completionHandler:?];
      }

      v23 = MEMORY[0x277CCA9B8];
      v24 = *__error();
      v25 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:v9];
      v18 = [v23 fp_errorWithPOSIXCode:v24 itemURL:v25 debugDescription:@"Opening file for setTagData"];

      v19 = [LiveFSFPExtensionHelper getNSErrorFromUnknownError:v18];
      v10[2](v10, 0, v19);
    }

    else
    {
      v17 = v16;
      FPFileMetadataSetTagData();
      v18 = 0;
      close(v17);
      if (!v18)
      {
        [v13 setTagData:v8];
      }

      v19 = [LiveFSFPExtensionHelper getNSErrorFromUnknownError:v18];
      (v10)[2](v10, v13, v19);
    }
  }

LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setFavoriteRank:(id)a3 forItemIdentifier:(id)a4 completionHandler:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = livefs_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v28 = "[LiveFSFPExtensionHelper setFavoriteRank:forItemIdentifier:completionHandler:]";
    v29 = 2112;
    v30 = v8;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_INFO, "%s: setting rank %@ for %@", buf, 0x20u);
  }

  v12 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:v9 error:0];
  v13 = v12;
  if (!v12)
  {
    v20 = livefs_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v28 = "[LiveFSFPExtensionHelper setFavoriteRank:forItemIdentifier:completionHandler:]";
      _os_log_impl(&dword_255FE9000, v20, OS_LOG_TYPE_INFO, "%s: item not found", buf, 0xCu);
    }

    v18 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:v9];
    v10[2](v10, 0, v18);
    goto LABEL_19;
  }

  if (*MEMORY[0x277CC6348] != v9)
  {
    v14 = [v12 fullPath];
    v15 = [v14 UTF8String];

    v16 = open(v15, 0);
    if (v16 < 0)
    {
      v22 = livefs_std_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [LiveFSFPExtensionHelper setFavoriteRank:v15 forItemIdentifier:v22 completionHandler:?];
      }

      v23 = MEMORY[0x277CCA9B8];
      v24 = *__error();
      v25 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:v9];
      v18 = [v23 fp_errorWithPOSIXCode:v24 itemURL:v25 debugDescription:@"Opening file for setFavoriteRank"];

      v19 = [LiveFSFPExtensionHelper getNSErrorFromUnknownError:v18];
      v10[2](v10, 0, v19);
    }

    else
    {
      v17 = v16;
      FPFileMetadataSetFavoriteRank();
      v18 = 0;
      close(v17);
      if (!v18)
      {
        [v13 setFavoriteRank:v8];
      }

      v19 = [LiveFSFPExtensionHelper getNSErrorFromUnknownError:v18];
      (v10)[2](v10, v13, v19);
    }

LABEL_19:
    goto LABEL_20;
  }

  v21 = livefs_std_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPExtensionHelper setFavoriteRank:forItemIdentifier:completionHandler:];
  }

  (v10)[2](v10, v13, 0);
LABEL_20:

  v26 = *MEMORY[0x277D85DE8];
}

- (id)disconnectWithOptions:(unint64_t)a3 completionHandler:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = livefs_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSFileProviderExtension *)self domain];
    v8 = [v7 identifier];
    *buf = 136315394;
    *&buf[4] = "[LiveFSFPExtensionHelper disconnectWithOptions:completionHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_255FE9000, v6, OS_LOG_TYPE_DEFAULT, "%s: called on domain %@", buf, 0x16u);
  }

  v9 = [(NSFileProviderExtension *)self domain];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [(NSFileProviderExtension *)self domain];
  v11 = [v10 identifier];
  v12 = v11 == 0;

  if (v12)
  {
LABEL_9:
    v20 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    v5[2](v5, v20);

    v19 = objc_opt_new();
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = 0;
    v13 = self;
    objc_sync_enter(v13);
    v14 = (*&buf[8] + 40);
    obj = *(*&buf[8] + 40);
    v15 = [(LiveFSFPExtensionHelper *)v13 _hasManagerOrError:&obj];
    objc_storeStrong(v14, obj);
    if (v15)
    {
      objc_sync_exit(v13);

      v16 = v13->_manager;
      v17 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__LiveFSFPExtensionHelper_disconnectWithOptions_completionHandler___block_invoke;
      block[3] = &unk_27981AB20;
      block[4] = v13;
      v26 = buf;
      v13 = v16;
      v24 = v13;
      v25 = v5;
      dispatch_async(v17, block);
      v18 = livefs_std_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [LiveFSFPExtensionHelper disconnectWithOptions:completionHandler:];
      }

      v19 = objc_opt_new();
    }

    else
    {
      v5[2](v5, *(*&buf[8] + 40));
      v19 = objc_opt_new();
      objc_sync_exit(v13);
    }

    _Block_object_dispose(buf, 8);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __67__LiveFSFPExtensionHelper_disconnectWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = livefs_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) domain];
    v4 = [v3 identifier];
    *buf = 138412290;
    v30 = v4;
    _os_log_impl(&dword_255FE9000, v2, OS_LOG_TYPE_DEFAULT, "About to call forgetVolume on %@", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) domain];
  v7 = [v6 identifier];
  v8 = [v5 forgetVolume:v7 withFlags:3];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = livefs_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138412290;
    v30 = v12;
    _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_DEFAULT, "forgetVolume returned %@", buf, 0xCu);
  }

  v15 = *(*(*(a1 + 56) + 8) + 40);
  if (v15)
  {
    v16 = [v15 domain];
    if (![v16 isEqualToString:*MEMORY[0x277CCA050]])
    {
LABEL_9:

      goto LABEL_10;
    }

    v17 = [*(*(*(a1 + 56) + 8) + 40) code];

    if (v17 == 4)
    {
      v18 = MEMORY[0x277CC64A8];
      v19 = [*(a1 + 32) domain];
      v16 = [v18 managerForDomain:v19];

      v20 = dispatch_semaphore_create(0);
      v21 = [*(a1 + 32) domain];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __67__LiveFSFPExtensionHelper_disconnectWithOptions_completionHandler___block_invoke_254;
      v26[3] = &unk_27981AAF8;
      v27 = v20;
      v28 = *(a1 + 48);
      v22 = v20;
      [v16 removeDomain:v21 completionHandler:v26];

      v23 = dispatch_time(0, 10000000000);
      dispatch_semaphore_wait(v22, v23);

      goto LABEL_9;
    }
  }

LABEL_10:
  result = (*(*(a1 + 48) + 16))(*(a1 + 48), *(*(*(a1 + 56) + 8) + 40), v13, v14);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void __67__LiveFSFPExtensionHelper_disconnectWithOptions_completionHandler___block_invoke_254(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = livefs_std_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__LiveFSFPExtensionHelper_disconnectWithOptions_completionHandler___block_invoke_254_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = 0;
    _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_DEFAULT, "Self removeDomain replied %@", &v7, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (id)enumeratorForContainerItemIdentifier:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NSFileProviderExtension *)self domain];
  if (!v7)
  {
LABEL_8:
    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [LiveFSFPExtensionHelper enumeratorForContainerItemIdentifier:error:];
    }

    v16 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    if (!v16)
    {
      goto LABEL_14;
    }

    v17 = livefs_std_log();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = v7;
  v9 = [(NSFileProviderExtension *)self domain];
  v10 = [v9 identifier];
  if (!v10)
  {

    goto LABEL_8;
  }

  v11 = v10;
  v12 = [(NSFileProviderExtension *)self domain];
  v13 = [v12 identifier];
  v14 = [v13 isEqualToString:&stru_286811DF0];

  if (v14)
  {
    goto LABEL_8;
  }

  v15 = [(LiveFSFPExtensionHelper *)self ensureMountPathSetup];
  if (v15)
  {
    v16 = v15;
    v17 = livefs_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      [LiveFSFPExtensionHelper enumeratorForContainerItemIdentifier:error:];
    }

LABEL_13:

LABEL_14:
    if (a4)
    {
      v19 = v16;
      *a4 = v16;
    }

    v20 = 0;
    goto LABEL_17;
  }

  v23 = livefs_std_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(LiveFSFPExtensionHelper *)self clusterMasterID];
    *buf = 136316162;
    v37 = "[LiveFSFPExtensionHelper enumeratorForContainerItemIdentifier:error:]";
    v38 = 2112;
    v39 = v6;
    v40 = 2112;
    v41 = v24;
    v42 = 1024;
    v43 = [(LiveFSFPExtensionHelper *)self isClusterMaster];
    v44 = 1024;
    v45 = [(LiveFSFPExtensionHelper *)self isClusterDomain];
    _os_log_impl(&dword_255FE9000, v23, OS_LOG_TYPE_DEFAULT, "%s starting for containerItem %@, clusterMasterID (%@), clusterMaster (%d) clusterDomain (%d)", buf, 0x2Cu);
  }

  if ([(LiveFSFPExtensionHelper *)self isClusterMaster])
  {
    v20 = [LiveFSFPClusterEnumeratorHelper newWithEnumeratedItem:v6 extension:self error:a4];
    goto LABEL_17;
  }

  v25 = [v6 isEqualToString:*MEMORY[0x277CC6368]];
  v26 = livefs_std_log();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v25)
  {
    if (v27)
    {
      v28 = [(NSFileProviderExtension *)self domain];
      v29 = [v28 identifier];
      *buf = 136315394;
      v37 = "[LiveFSFPExtensionHelper enumeratorForContainerItemIdentifier:error:]";
      v38 = 2112;
      v39 = v29;
      _os_log_impl(&dword_255FE9000, v26, OS_LOG_TYPE_DEFAULT, "%s starting for container NSFileProviderWorkingSetContainerItemIdentifier self.domain.identifier %@", buf, 0x16u);
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    if (!v16)
    {
      goto LABEL_14;
    }

    v17 = livefs_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper enumeratorForContainerItemIdentifier:error:];
    }

    goto LABEL_13;
  }

  if (v27)
  {
    v30 = [(NSFileProviderExtension *)self domain];
    v31 = [v30 identifier];
    *buf = 136315394;
    v37 = "[LiveFSFPExtensionHelper enumeratorForContainerItemIdentifier:error:]";
    v38 = 2112;
    v39 = v31;
    _os_log_impl(&dword_255FE9000, v26, OS_LOG_TYPE_DEFAULT, "%s starting for container LiveFSFPEnumeratorHelper self.domain.identifier %@", buf, 0x16u);
  }

  v35 = 0;
  v20 = [LiveFSFPEnumeratorHelper newWithEnumeratedItem:v6 extension:self error:&v35];
  v32 = v35;
  if (v32)
  {
    v33 = livefs_std_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper enumeratorForContainerItemIdentifier:error:];
    }
  }

  if (a4)
  {
    v34 = v32;
    *a4 = v32;
  }

LABEL_17:
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)supportedServiceSourcesForItemIdentifier:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSFileProviderExtension *)self domain];
    v9 = [v8 identifier];
    *buf = 138412802;
    v30 = self;
    v31 = 2112;
    v32 = v9;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_255FE9000, v7, OS_LOG_TYPE_DEFAULT, "supportedServices called in extension %@, domain id %@ item %@", buf, 0x20u);
  }

  v10 = [(NSFileProviderExtension *)self domain];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  v12 = [(NSFileProviderExtension *)self domain];
  v13 = [v12 identifier];

  if (v13)
  {
    v14 = [[LiveFSFPUnlockServiceSource alloc] initWithFileProviderExtension:self itemIdentifier:v6];
    v26 = 0;
    v15 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:v6 error:&v26];
    v16 = v26;
    if (v15)
    {
      v17 = [[LiveFSClientServiceSource alloc] initWithFileProviderExtension:self itemIdentifier:v6];
      v18 = [[LiveFSValidationServiceSource alloc] initWithFileProviderExtension:self itemIdentifier:v6];
      thumbnailsServiceSource = self->thumbnailsServiceSource;
      v27[0] = v17;
      v27[1] = thumbnailsServiceSource;
      v27[2] = v18;
      v27[3] = v14;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
    }

    else if ([v6 isEqualToString:*MEMORY[0x277CC6348]])
    {
      v28 = v14;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    }

    else
    {
      v21 = v16;
      if (v21)
      {
        v22 = livefs_std_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [LiveFSFPExtensionHelper supportedServiceSourcesForItemIdentifier:error:];
        }
      }

      if (a4)
      {
        v23 = v21;
        *a4 = v21;
      }

      v20 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
LABEL_7:
    v16 = livefs_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper supportedServiceSourcesForItemIdentifier:error:];
    }

    v20 = MEMORY[0x277CBEBF8];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)enumeratorForSearchQuery:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(LiveFSFPExtensionHelper *)self serverSearchUsesCS])
  {
    v7 = objc_alloc(MEMORY[0x277CC6448]);
    v8 = [(NSFileProviderExtension *)self domain];
    v9 = [v8 identifier];
    v10 = [v7 initWithSearchQuery:v6 mountPoint:v9];
  }

  else
  {
    v11 = [LiveFSFPSearchEnumeratorHelper newForQuery:v6 withExtension:self];
    v10 = v11;
    if (a4 && !v11)
    {
      *a4 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    }
  }

  return v10;
}

- (void)unlockWithPassword:(id)a3 remember:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:45];
  (*(a5 + 2))(v6, v7);
}

+ (id)getNSErrorFromLiveFSErrno:(int)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (a3 > 44)
  {
    if (a3 > 79)
    {
      switch(a3)
      {
        case 80:
          goto LABEL_19;
        case 89:
          v3 = MEMORY[0x277CCA9B8];
          v4 = *MEMORY[0x277CCA050];
          v5 = 3072;
          goto LABEL_26;
        case 10100:
LABEL_19:
          v3 = MEMORY[0x277CCA9B8];
          v4 = *MEMORY[0x277CC6300];
          v5 = -1000;
          goto LABEL_26;
      }
    }

    else
    {
      if (a3 == 45)
      {
        v3 = MEMORY[0x277CCA9B8];
        v4 = *MEMORY[0x277CCA050];
        v5 = 3328;
        goto LABEL_26;
      }

      if (a3 == 57 || a3 == 65)
      {
        v3 = MEMORY[0x277CCA9B8];
        v4 = *MEMORY[0x277CC6300];
        v5 = -1004;
        goto LABEL_26;
      }
    }

    goto LABEL_30;
  }

  if (a3 <= 21)
  {
    switch(a3)
    {
      case 0:
        v6 = 0;
        goto LABEL_27;
      case 2:
        v3 = MEMORY[0x277CCA9B8];
        v4 = *MEMORY[0x277CCA050];
        v5 = 4;
        goto LABEL_26;
      case 13:
        v3 = MEMORY[0x277CCA9B8];
        v4 = *MEMORY[0x277CCA050];
        v5 = 257;
LABEL_26:
        v6 = [v3 errorWithDomain:v4 code:v5 userInfo:0];
        goto LABEL_27;
    }

    goto LABEL_30;
  }

  if (a3 != 22)
  {
    if (a3 == 28)
    {
      v3 = MEMORY[0x277CCA9B8];
      v4 = *MEMORY[0x277CCA050];
      v5 = 640;
      goto LABEL_26;
    }

    if (a3 == 30)
    {
      v3 = MEMORY[0x277CCA9B8];
      v4 = *MEMORY[0x277CCA050];
      v5 = 642;
      goto LABEL_26;
    }

LABEL_30:
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA050];
    v16 = *MEMORY[0x277CCA7E8];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:a3 userInfo:0];
    v17 = v9;
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v17;
    v12 = &v16;
    goto LABEL_31;
  }

  v7 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA050];
  v18 = *MEMORY[0x277CCA7E8];
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  v19[0] = v9;
  v10 = MEMORY[0x277CBEAC0];
  v11 = v19;
  v12 = &v18;
LABEL_31:
  v15 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
  v6 = [v7 errorWithDomain:v8 code:256 userInfo:v15];

LABEL_27:
  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)getNSErrorFromUnknownError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 domain], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CCA5B8]), v5, v6))
  {
    [v4 code];
    v7 = getNSErrorFromLiveFSErrno();
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (void)init
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)itemPathForURL:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)itemPathForURL:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)itemPathForURL:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)itemForPath:cachedOnly:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)doInvalidate:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 domain];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_hasManagerOrError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_hasManagerOrError:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getVolumeManagerWithError:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)makeVolumeListenerEndpointAndReturnErrorLocked:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)makeVolumeListenerEndpointAndReturnErrorLocked:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)makeVolumeListenerEndpointAndReturnErrorLocked:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isLoggedInOrErrorLocked:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 domain];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_isLoggedInOrErrorLocked:(void *)a1 .cold.2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a1 domain];
  v3 = [v2 identifier];
  v4 = [a1 domain];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_isLoggedInOrErrorLocked:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isLoggedInOrErrorLocked:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isLoggedInOrErrorLocked:(void *)a1 .cold.5(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 domain];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)pathForInodeID:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)itemForIdentifierLocked:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)itemForIdentifierLocked:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)itemForIdentifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)URLForItemWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  *(a1 + 160);
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)itemAtPathLocked:(uint64_t)a1 parent:cachedOnly:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*a1 + 40);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)persistentIdentifierForItemAtURL:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)providePlaceholderAtURL:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startProvidingItemAtURL:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopProvidingItemAtURL:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __88__LiveFSFPExtensionHelper_importDocumentAtURL_toParentItemIdentifier_completionHandler___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  v4 = v0;
  _os_log_debug_impl(&dword_255FE9000, v1, OS_LOG_TYPE_DEBUG, "got new URL %@; %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __88__LiveFSFPExtensionHelper_importDocumentAtURL_toParentItemIdentifier_completionHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createDirectoryWithName:inParentItemIdentifier:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createDirectoryWithName:inParentItemIdentifier:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createDirectoryWithName:(void *)a1 inParentItemIdentifier:(NSObject *)a2 completionHandler:.cold.3(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 domain];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_255FE9000, a2, OS_LOG_TYPE_ERROR, "Cluster master %@ is not writable", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)renameItemWithIdentifier:(os_log_t)log toName:(void *)a4 completionHandler:.cold.1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_255FE9000, log, OS_LOG_TYPE_ERROR, "Cluster master %@ is not writable", buf, 0xCu);
}

- (void)reparentItemWithIdentifier:(os_log_t)log toParentItemWithIdentifier:newName:completionHandler:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_255FE9000, log, OS_LOG_TYPE_DEBUG, "passed new name is null, changing to %@", buf, 0xCu);
}

- (void)trashItemWithIdentifier:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke_2_242_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setLastUsedDate:forItemIdentifier:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setTagData:(uint64_t)a1 forItemIdentifier:(NSObject *)a2 completionHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = __error();
  strerror(*v4);
  OUTLINED_FUNCTION_0();
  v7 = 2080;
  v8 = a1;
  _os_log_debug_impl(&dword_255FE9000, a2, OS_LOG_TYPE_DEBUG, "tagData: error '%s' opening file %s", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setFavoriteRank:(uint64_t)a1 forItemIdentifier:(NSObject *)a2 completionHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = __error();
  strerror(*v4);
  OUTLINED_FUNCTION_0();
  v7 = 2080;
  v8 = a1;
  _os_log_error_impl(&dword_255FE9000, a2, OS_LOG_TYPE_ERROR, "setFavoriteRank: error '%s' opening file %s", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setFavoriteRank:forItemIdentifier:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)disconnectWithOptions:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__LiveFSFPExtensionHelper_disconnectWithOptions_completionHandler___block_invoke_254_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)enumeratorForContainerItemIdentifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)supportedServiceSourcesForItemIdentifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)supportedServiceSourcesForItemIdentifier:error:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end