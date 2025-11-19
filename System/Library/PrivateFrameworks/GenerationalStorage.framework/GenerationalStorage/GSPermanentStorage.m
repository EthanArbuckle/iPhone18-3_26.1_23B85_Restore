@interface GSPermanentStorage
+ (id)storageIDForItemAtURL:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)mergeAdditionUserInfo:(id)a3 value:(id)a4 error:(id *)a5;
- (BOOL)replaceDocumentWithContentsOfAddition:(id)a3 preservingCurrentVersionWithCreationInfo:(id)a4 createdAddition:(id *)a5 error:(id *)a6;
- (BOOL)replaceDocumentWithContentsOfItemAtURL:(id)a3 preservingCurrentVersionWithCreationInfo:(id)a4 createdAddition:(id *)a5 error:(id *)a6;
- (BOOL)setAdditionDisplayName:(id)a3 value:(id)a4 error:(id *)a5;
- (BOOL)setAdditionOptions:(id)a3 value:(unint64_t)a4 error:(id *)a5;
- (BOOL)transferToItemAtURL:(id)a3 error:(id *)a4;
- (GSPermanentStorage)init;
- (NSData)privExtension;
- (NSData)pubExtension;
- (id)URLforReplacingItemWithError:(id *)a3;
- (id)_calculateSpecForAdditionRemoval:(id)a3;
- (id)_removalErrorDictionaryCreation:(id)a3 withAdditions:(id)a4;
- (id)additionWithName:(id)a3 inNameSpace:(id)a4 error:(id *)a5;
- (id)additionsWithNames:(id)a3 inNameSpace:(id)a4 error:(id *)a5;
- (id)getAdditionDictionary:(id)a3 error:(id *)a4;
- (id)prepareAdditionCreationWithItemAtURL:(id)a3 byMoving:(BOOL)a4 creationInfo:(id)a5 error:(id *)a6;
- (id)setAdditionNameSpace:(id)a3 value:(id)a4 error:(id *)a5;
- (id)stagingURLforCreatingAdditionWithError:(id *)a3;
- (int64_t)remoteID;
- (void)_invalidate;
- (void)cleanupStagingURL:(id)a3;
- (void)createAdditionStagedAtURL:(id)a3 creationInfo:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)finalize;
- (void)removeAdditions:(id)a3 completionHandler:(id)a4;
- (void)removeAllAdditionsForNamespaces:(id)a3 completionHandler:(id)a4;
- (void)setPrivExtension:(id)a3;
- (void)setPubExtension:(id)a3;
@end

@implementation GSPermanentStorage

+ (id)storageIDForItemAtURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = open([v5 fileSystemRepresentation], 0);
  if ((v6 & 0x80000000) != 0)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [v5 path];
    v10 = [v12 stringWithFormat:@"unable to open %@", v13];

    v14 = *__error();
    v15 = gs_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [GSDocumentIdentifier initWithFileDescriptor:forItemAtURL:allocateIfNone:error:];
    }

    if (a4)
    {
      _GSErrorForErrno(v14, v10);
      *a4 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v7 = v6;
    v8 = +[GSDaemonProxySync proxy];
    v9 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v7 closeOnDealloc:1];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __50__GSPermanentStorage_storageIDForItemAtURL_error___block_invoke;
    v17[3] = &unk_279697700;
    v10 = v8;
    v18 = v10;
    [v10 permanentStorageIDForHandle:v9 reply:v17];
    v11 = [v10 result];
    if (a4)
    {
      *a4 = [v10 error];
    }
  }

  return v11;
}

void __50__GSPermanentStorage_storageIDForItemAtURL_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 handleObjResult:0 error:a3];
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    v5 = [v6 stringValue];
    [v3 handleObjResult:v5 error:0];
  }
}

- (GSPermanentStorage)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = _NSMethodExceptionProem();
  [v3 raise:v4 format:{@"%@: cannot use -init for initialization", v5}];

  return 0;
}

- (NSData)pubExtension
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_pubExtension;
  objc_sync_exit(v2);

  return v3;
}

- (void)setPubExtension:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if ((v6->_pubHandle & 0x8000000000000000) == 0)
  {
    sandbox_extension_release();
    v6->_pubHandle = -1;
  }

  objc_storeStrong(&v6->_pubExtension, a3);
  pubExtension = v6->_pubExtension;
  if (pubExtension)
  {
    [(NSData *)pubExtension bytes];
    v8 = sandbox_extension_consume();
    v6->_pubHandle = v8;
    if (v8 < 0)
    {
      v9 = gs_default_log();
      if (os_log_type_enabled(v9, 0x90u))
      {
        v11 = v6->_pubExtension;
        v12 = *__error();
        v13 = __error();
        v14 = strerror(*v13);
        v15 = 138412802;
        v16 = v11;
        v17 = 1024;
        v18 = v12;
        v19 = 2080;
        v20 = v14;
        _os_log_error_impl(&dword_24FD46000, v9, 0x90u, "[ERROR] Failed consuming extension %@; error %d (%s)", &v15, 0x1Cu);
      }
    }
  }

  objc_sync_exit(v6);

  v10 = *MEMORY[0x277D85DE8];
}

- (NSData)privExtension
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_privExtension;
  objc_sync_exit(v2);

  return v3;
}

- (void)setPrivExtension:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if ((v6->_privHandle & 0x8000000000000000) == 0)
  {
    sandbox_extension_release();
    v6->_privHandle = -1;
  }

  objc_storeStrong(&v6->_privExtension, a3);
  privExtension = v6->_privExtension;
  if (privExtension)
  {
    [(NSData *)privExtension bytes];
    v8 = sandbox_extension_consume();
    v6->_privHandle = v8;
    if (v8 < 0)
    {
      v9 = gs_default_log();
      if (os_log_type_enabled(v9, 0x90u))
      {
        v11 = v6->_privExtension;
        v12 = *__error();
        v13 = __error();
        v14 = strerror(*v13);
        v15 = 138412802;
        v16 = v11;
        v17 = 1024;
        v18 = v12;
        v19 = 2080;
        v20 = v14;
        _os_log_error_impl(&dword_24FD46000, v9, 0x90u, "[ERROR] Failed consuming extension %@; error %d (%s)", &v15, 0x1Cu);
      }
    }
  }

  objc_sync_exit(v6);

  v10 = *MEMORY[0x277D85DE8];
}

void __63__GSPermanentStorage__refreshRemoteIDWithFileDescriptor_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v11 = a3;
  v9 = a4;
  v10 = a5;
  if (a2)
  {
    *(*(a1 + 32) + 40) = [a2 longLongValue];
    if (v11)
    {
      [*(a1 + 32) setPubExtension:?];
    }

    if (v9)
    {
      [*(a1 + 32) setPrivExtension:v9];
    }
  }

  [*(a1 + 40) handleBoolResult:a2 != 0 error:v10];
}

- (int64_t)remoteID
{
  result = self->_remoteID;
  if (!result)
  {
    v4 = self;
    objc_sync_enter(v4);
    if (!self->_remoteID)
    {
      v5 = open([(NSURL *)v4->_documentURL fileSystemRepresentation], 33024);
      if ((v5 & 0x80000000) == 0)
      {
        [(GSPermanentStorage *)v4 _refreshRemoteIDWithFileDescriptor:v5 error:0];
        close(v5);
      }
    }

    objc_sync_exit(v4);

    return self->_remoteID;
  }

  return result;
}

- (void)_invalidate
{
  [(GSPermanentStorage *)self setPubExtension:0];
  [(GSPermanentStorage *)self setPrivExtension:0];
  remoteID = self->_remoteID;
  if (remoteID)
  {
    if (_invalidate_onceToken != -1)
    {
      [GSPermanentStorage _invalidate];
    }

    self->_remoteID = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__GSPermanentStorage__invalidate__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = remoteID;
    dispatch_async(_invalidate_invalidationQueue, block);
  }
}

void __33__GSPermanentStorage__invalidate__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.genstore.invalidation-queue", v2);
  v1 = _invalidate_invalidationQueue;
  _invalidate_invalidationQueue = v0;
}

void __33__GSPermanentStorage__invalidate__block_invoke_2(uint64_t a1)
{
  v2 = GSDaemonProxy(0);
  [v2 permanentStorageClose:*(a1 + 32)];
}

- (void)finalize
{
  [(GSPermanentStorage *)self _invalidate];
  v3.receiver = self;
  v3.super_class = GSPermanentStorage;
  [(GSPermanentStorage *)&v3 finalize];
}

- (void)dealloc
{
  [(GSPermanentStorage *)self _invalidate];
  v3.receiver = self;
  v3.super_class = GSPermanentStorage;
  [(GSPermanentStorage *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GSDocumentIdentifier *)self->_documentID isEqual:v4->_documentID];
  }

  return v5;
}

- (id)getAdditionDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[GSDaemonProxySync proxy];
  v8 = [(GSPermanentStorage *)self remoteID];
  v9 = [v6 nameSpace];
  v10 = [v6 name];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __50__GSPermanentStorage_getAdditionDictionary_error___block_invoke;
  v17 = &unk_279697770;
  v18 = self;
  v11 = v7;
  v19 = v11;
  [v11 getAdditionInStorage:v8 andNameSpace:v9 named:v10 completionHandler:&v14];

  v12 = [v11 result];
  if (a4)
  {
    *a4 = [v11 error];
  }

  return v12;
}

void __50__GSPermanentStorage_getAdditionDictionary_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    [*(a1 + 32) setPubExtension:v9];
  }

  if (v10)
  {
    [*(a1 + 32) setPrivExtension:v10];
  }

  [*(a1 + 40) handleObjResult:v12 error:v11];
}

- (BOOL)setAdditionOptions:(id)a3 value:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = +[GSDaemonProxySync proxy];
  objc_initWeak(&location, v9);
  v10 = [(GSPermanentStorage *)self remoteID];
  v11 = [v8 nameSpace];
  v12 = [v8 name];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __53__GSPermanentStorage_setAdditionOptions_value_error___block_invoke;
  v19 = &unk_279697798;
  objc_copyWeak(&v20, &location);
  [v9 setAdditionOptionsInStorage:v10 nameSpace:v11 additionName:v12 value:a4 reply:&v16];

  v13 = [v9 result];
  if (a5)
  {
    *a5 = [v9 error];
  }

  v14 = [v13 BOOLValue];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v14;
}

void __53__GSPermanentStorage_setAdditionOptions_value_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleBoolResult:a2 error:v5];
}

- (BOOL)setAdditionDisplayName:(id)a3 value:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[GSDaemonProxySync proxy];
  objc_initWeak(&location, v10);
  v11 = [(GSPermanentStorage *)self remoteID];
  v12 = [v8 nameSpace];
  v13 = [v8 name];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __57__GSPermanentStorage_setAdditionDisplayName_value_error___block_invoke;
  v20 = &unk_279697798;
  objc_copyWeak(&v21, &location);
  [v10 setAdditionDisplayNameInStorage:v11 nameSpace:v12 additionName:v13 value:v9 reply:&v17];

  v14 = [v10 result];
  if (a5)
  {
    *a5 = [v10 error];
  }

  v15 = [v14 BOOLValue];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v15;
}

void __57__GSPermanentStorage_setAdditionDisplayName_value_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleBoolResult:a2 error:v5];
}

void __62__GSPermanentStorage_setAdditionConflictResolved_value_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleBoolResult:a2 error:v5];
}

- (id)setAdditionNameSpace:(id)a3 value:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[GSDaemonProxySync proxy];
  objc_initWeak(&location, v10);
  v11 = [(GSPermanentStorage *)self remoteID];
  v12 = [v8 nameSpace];
  v13 = [v8 name];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __55__GSPermanentStorage_setAdditionNameSpace_value_error___block_invoke;
  v19 = &unk_2796977C0;
  objc_copyWeak(&v20, &location);
  [v10 setAdditionNameSpaceInStorage:v11 nameSpace:v12 additionName:v13 value:v9 completionHandler:&v16];

  v14 = [v10 result];
  if (a5)
  {
    *a5 = [v10 error];
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v14;
}

void __55__GSPermanentStorage_setAdditionNameSpace_value_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleObjResult:v6 error:v5];
}

- (BOOL)mergeAdditionUserInfo:(id)a3 value:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[GSDaemonProxySync proxy];
  v11 = [MEMORY[0x277CCAC58] dataWithPropertyList:v9 format:200 options:0 error:a5];

  if (v11)
  {
    v12 = [(GSPermanentStorage *)self remoteID];
    v13 = [v8 nameSpace];
    v14 = [v8 name];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__GSPermanentStorage_mergeAdditionUserInfo_value_error___block_invoke;
    v19[3] = &unk_2796977E8;
    v15 = v10;
    v20 = v15;
    [v15 mergeAdditionInfoValueInStorage:v12 nameSpace:v13 additionName:v14 value:v11 reply:v19];

    v16 = [v15 result];
    if (a5)
    {
      *a5 = [v15 error];
    }

    v17 = [v16 BOOLValue];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)stagingURLforCreatingAdditionWithError:(id *)a3
{
  v3 = [(GSStagingPrefix *)self->_stagingPrefix stagingPathforCreatingAdditionWithError:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)URLforReplacingItemWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 URLForDirectory:99 inDomain:1 appropriateForURL:self->_documentURL create:1 error:a3];

  return v6;
}

- (void)cleanupStagingURL:(id)a3
{
  stagingPrefix = self->_stagingPrefix;
  v4 = [a3 path];
  [(GSStagingPrefix *)stagingPrefix cleanupStagingPath:v4];
}

- (id)prepareAdditionCreationWithItemAtURL:(id)a3 byMoving:(BOOL)a4 creationInfo:(id)a5 error:(id *)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = v10;
  v13 = v12;
  if (v8)
  {
    v14 = open([v12 fileSystemRepresentation], 0);
    if (v14 < 0)
    {
      v28 = MEMORY[0x277CCACA8];
      v29 = [v13 path];
      v17 = [v28 stringWithFormat:@"Unable to open %@", v29];

      v30 = *__error();
      v31 = gs_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [GSDocumentIdentifier initWithFileDescriptor:forItemAtURL:allocateIfNone:error:];
      }

      if (!a6)
      {
        goto LABEL_19;
      }

      v19 = _GSErrorForErrno(v30, v17);
      goto LABEL_18;
    }

    v15 = v14;
    v16 = GSGetDocumentID(v14, 0);
    close(v15);
    if (self->_documentID->documentID == v16)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add a generation to the forward facing file by moving the forward facing file to be that new generation."];
      v18 = gs_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [GSPermanentStorage prepareAdditionCreationWithItemAtURL:v17 byMoving:v18 creationInfo:? error:?];
      }

      if (!a6)
      {
        goto LABEL_19;
      }

      v19 = _GSErrorForStatus(104, v17, 0);
LABEL_18:
      *a6 = v19;
LABEL_19:

      goto LABEL_20;
    }
  }

  stagingPrefix = self->_stagingPrefix;
  v21 = [v13 path];
  LOBYTE(stagingPrefix) = [(GSStagingPrefix *)stagingPrefix isStagedPath:v21];

  if (stagingPrefix)
  {
    if (GSArchiveTree([v13 fileSystemRepresentation], 0, 0, a6))
    {
      v22 = v13;
      goto LABEL_24;
    }

LABEL_20:
    v32 = 0;
    v22 = v13;
    goto LABEL_38;
  }

  v23 = [(GSPermanentStorage *)self stagingURLforCreatingAdditionWithError:a6];
  if (!v23)
  {
    goto LABEL_20;
  }

  v24 = v23;
  v25 = [v11 objectForKey:@"kGSAdditionName"];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = [v13 lastPathComponent];
  }

  v33 = v27;

  v34 = [v11 objectForKeyedSubscript:@"kGSAdditionKeepFileID"];
  v35 = [v34 BOOLValue];

  v22 = [v24 URLByAppendingPathComponent:v33];

  if (!GSStageTree([v13 fileSystemRepresentation], objc_msgSend(v22, "fileSystemRepresentation"), v8, v35, a6))
  {
    _RemoveTree([v24 fileSystemRepresentation], 0, 0);

    v32 = 0;
    goto LABEL_38;
  }

LABEL_24:
  v36 = [v22 fileSystemRepresentation];
  v37 = GSAdditionComputePOSIXName(v11, self->_documentURL, v22, a6);
  if (v37)
  {
    v38 = v37;
    if (!GSSetOriginalPOSIXName(v36, v37, a6))
    {
      v32 = 0;
      v39 = v38;
      goto LABEL_37;
    }

    v39 = GSAdditionComputeDN(v11, self->_documentURL, v22, a6);

    if (v39 && GSSetOriginalDisplayName(v36, v39, a6))
    {
      v40 = GSAdditionValidateUInfo(v11, a6);
      if (v40 && GSSetInfoDictionary(v36, v40, a6))
      {
        v32 = v22;
      }

      else
      {
        v32 = 0;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v39 = 0;
  }

  v32 = 0;
LABEL_37:

LABEL_38:

  return v32;
}

- (void)createAdditionStagedAtURL:(id)a3 creationInfo:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = open([v8 fileSystemRepresentation], 256);
  if ((v11 & 0x80000000) != 0)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to open %@", v8];
    v18 = *__error();
    v19 = gs_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [GSDocumentIdentifier initWithFileDescriptor:forItemAtURL:allocateIfNone:error:];
    }

    v20 = _GSErrorForErrno(v18, v17);

    v10[2](v10, 0, v20);
    stagingPrefix = self->_stagingPrefix;
    v12 = [v8 path];
    [(GSStagingPrefix *)stagingPrefix cleanupStagingPath:v12];
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v11 closeOnDealloc:1];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __79__GSPermanentStorage_createAdditionStagedAtURL_creationInfo_completionHandler___block_invoke;
    v25[3] = &unk_279697810;
    v13 = v10;
    v27 = v13;
    v25[4] = self;
    v14 = v8;
    v26 = v14;
    v15 = GSDaemonProxy(v25);
    v16 = [(GSPermanentStorage *)self remoteID];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __79__GSPermanentStorage_createAdditionStagedAtURL_creationInfo_completionHandler___block_invoke_2;
    v22[3] = &unk_279697838;
    v22[4] = self;
    v24 = v13;
    v23 = v14;
    [v15 createAdditionInStorage:v16 stagedFileDescriptor:v12 creationInfo:v9 completionHandler:v22];
  }
}

void __79__GSPermanentStorage_createAdditionStagedAtURL_creationInfo_completionHandler___block_invoke(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[5];
  v3 = *(a1[4] + 16);
  v4 = [v2 path];
  [v3 cleanupStagingPath:v4];
}

void __79__GSPermanentStorage_createAdditionStagedAtURL_creationInfo_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v16 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    [*(a1 + 32) setPubExtension:v9];
  }

  if (v10)
  {
    [*(a1 + 32) setPrivExtension:v10];
  }

  if (v16)
  {
    v12 = [[GSAddition alloc] _initWithStorage:*(a1 + 32) andDictionary:v16];
  }

  else
  {
    v12 = 0;
  }

  (*(*(a1 + 48) + 16))();
  v13 = *(a1 + 40);
  v14 = *(*(a1 + 32) + 16);
  v15 = [v13 path];
  [v14 cleanupStagingPath:v15];
}

- (BOOL)replaceDocumentWithContentsOfAddition:(id)a3 preservingCurrentVersionWithCreationInfo:(id)a4 createdAddition:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if (v11)
  {
    v12 = GSAdditionSaveBlocking(self, self->_documentURL, 0, v11, a6);
    if (!v12)
    {
      v15 = 0;
      goto LABEL_11;
    }

    if (a5)
    {
      v12 = v12;
      *a5 = v12;
    }
  }

  v13 = GSRestoreAdditionInternal(self->_documentURL, v10, a6);
  v14 = v13;
  v15 = v13 != 0;
  if (v13 && self->_documentURL != v13)
  {
    [(GSPermanentStorage *)self setDocumentURL:v13];
  }

LABEL_11:
  return v15;
}

- (BOOL)replaceDocumentWithContentsOfItemAtURL:(id)a3 preservingCurrentVersionWithCreationInfo:(id)a4 createdAddition:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if (v11)
  {
    v12 = GSAdditionSaveBlocking(self, self->_documentURL, 0, v11, a6);
    if (!v12)
    {
LABEL_11:
      v15 = 0;
      goto LABEL_12;
    }

    if (a5)
    {
      v12 = v12;
      *a5 = v12;
    }
  }

  if (![(NSURL *)self->_documentURL checkResourceIsReachableAndReturnError:a6])
  {
    goto LABEL_11;
  }

  v13 = GSReplaceDocumentInternal(self->_documentURL, v10, a6);
  v14 = v13;
  v15 = v13 != 0;
  if (v13 && self->_documentURL != v13)
  {
    [(GSPermanentStorage *)self setDocumentURL:v13];
  }

LABEL_12:
  return v15;
}

- (id)additionWithName:(id)a3 inNameSpace:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[GSDaemonProxySync proxy];
  v11 = [(GSPermanentStorage *)self remoteID];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __57__GSPermanentStorage_additionWithName_inNameSpace_error___block_invoke;
  v18 = &unk_279697770;
  v19 = self;
  v12 = v10;
  v20 = v12;
  [v12 getAdditionInStorage:v11 andNameSpace:v8 named:v9 completionHandler:&v15];

  v13 = [v12 result];
  if (a5)
  {
    *a5 = [v12 error];
  }

  return v13;
}

void __57__GSPermanentStorage_additionWithName_inNameSpace_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    [*(a1 + 32) setPubExtension:v9];
  }

  if (v10)
  {
    [*(a1 + 32) setPrivExtension:v10];
  }

  if (v13)
  {
    v12 = [[GSAddition alloc] _initWithStorage:*(a1 + 32) andDictionary:v13];
    [*(a1 + 40) handleObjResult:v12 error:0];
  }

  else
  {
    [*(a1 + 40) handleObjResult:0 error:v11];
  }
}

- (id)additionsWithNames:(id)a3 inNameSpace:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[GSDaemonProxySync proxy];
  v11 = [(GSPermanentStorage *)self remoteID];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __59__GSPermanentStorage_additionsWithNames_inNameSpace_error___block_invoke;
  v18 = &unk_279697860;
  v19 = self;
  v12 = v10;
  v20 = v12;
  [v12 getAdditionsInStorage:v11 andNameSpace:v8 named:v9 completionHandler:&v15];

  v13 = [v12 result];
  if (a5)
  {
    *a5 = [v12 error];
  }

  return v13;
}

void __59__GSPermanentStorage_additionsWithNames_inNameSpace_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    [*(a1 + 32) setPubExtension:v10];
  }

  if (v11)
  {
    [*(a1 + 32) setPrivExtension:v11];
  }

  if (v9)
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v22 = v11;
      v23 = v10;
      v17 = 0;
      v18 = *v25;
      do
      {
        v19 = 0;
        v20 = v17;
        do
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v17 = [[GSAddition alloc] _initWithStorage:*(a1 + 32) andDictionary:*(*(&v24 + 1) + 8 * v19)];

          [v13 addObject:v17];
          ++v19;
          v20 = v17;
        }

        while (v16 != v19);
        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);

      v11 = v22;
      v10 = v23;
    }

    [*(a1 + 40) handleObjResult:v13 error:0];
  }

  else
  {
    [*(a1 + 40) handleObjResult:0 error:v12];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_calculateSpecForAdditionRemoval:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 nameSpace];
        v12 = [v4 objectForKey:v11];
        if (!v12)
        {
          v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v4 setObject:v12 forKey:v11];
        }

        v13 = [v10 name];
        [v12 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_removalErrorDictionaryCreation:(id)a3 withAdditions:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v7;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 nameSpace];
          v16 = [v5 objectForKey:v15];

          v17 = [v14 name];
          v18 = [v16 objectForKey:v17];

          if (v18)
          {
            v19 = [v14 persistentIdentifier];
            [v8 setObject:v18 forKey:v19];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v7 = v22;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)removeAdditions:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [(GSPermanentStorage *)self _calculateSpecForAdditionRemoval:v6];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__GSPermanentStorage_removeAdditions_completionHandler___block_invoke;
    v15[3] = &unk_279697888;
    v9 = v7;
    v16 = v9;
    v10 = GSDaemonProxy(v15);
    v11 = [(GSPermanentStorage *)self remoteID];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__GSPermanentStorage_removeAdditions_completionHandler___block_invoke_2;
    v12[3] = &unk_2796978B0;
    v14 = v9;
    v12[4] = self;
    v13 = v6;
    [v10 removeAdditionsInStorage:v11 removalSpec:v8 completionHandler:v12];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

void __56__GSPermanentStorage_removeAdditions_completionHandler___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[5];
  v4 = a1[6];
  v6 = a1[4];
  v7 = a3;
  v8 = [v6 _removalErrorDictionaryCreation:a2 withAdditions:v5];
  (*(v4 + 16))(v4, v8, v7);
}

- (void)removeAllAdditionsForNamespaces:(id)a3 completionHandler:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      v13 = MEMORY[0x277CBEBF8];
      do
      {
        v14 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v8 setObject:v13 forKey:*(*(&v24 + 1) + 8 * v14++)];
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = 0;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__GSPermanentStorage_removeAllAdditionsForNamespaces_completionHandler___block_invoke;
  v22[3] = &unk_279697888;
  v15 = v7;
  v23 = v15;
  v16 = GSDaemonProxy(v22);
  v17 = [(GSPermanentStorage *)self remoteID];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__GSPermanentStorage_removeAllAdditionsForNamespaces_completionHandler___block_invoke_2;
  v20[3] = &unk_2796978D8;
  v21 = v15;
  v18 = v15;
  [v16 removeAdditionsInStorage:v17 removalSpec:v8 completionHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)transferToItemAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = open([v6 fileSystemRepresentation], 0);
  if (v16 < 0)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"opening %@ failed", v6];
    v13 = *__error();
    v14 = gs_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [GSDocumentIdentifier initWithFileDescriptor:forItemAtURL:allocateIfNone:error:];
    }

    if (a4)
    {
      *a4 = _GSErrorForErrno(v13, v12);
    }

    v8 = 0;
  }

  else
  {
    v7 = fsctl([(NSURL *)self->_documentURL fileSystemRepresentation], 0x80046820uLL, &v16, 0);
    v8 = v7 == 0;
    if (v7)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"fsctl(%@, TRANSFER_DOCUMENT_ID, %@) failed", self->_documentURL, v6];
      v10 = *__error();
      v11 = gs_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [GSDocumentIdentifier initWithFileDescriptor:forItemAtURL:allocateIfNone:error:];
      }

      if (a4)
      {
        *a4 = _GSErrorForErrno(v10, v9);
      }
    }

    else
    {
      [(GSPermanentStorage *)self setDocumentURL:v6];
    }

    close(v16);
  }

  return v8;
}

- (void)prepareAdditionCreationWithItemAtURL:(uint64_t)a1 byMoving:(NSObject *)a2 creationInfo:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = 104;
  _os_log_debug_impl(&dword_24FD46000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] %@; status %d", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

@end