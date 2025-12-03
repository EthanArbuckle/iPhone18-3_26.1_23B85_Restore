@interface GSPermanentStorage
+ (id)storageIDForItemAtURL:(id)l error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeAdditionUserInfo:(id)info value:(id)value error:(id *)error;
- (BOOL)replaceDocumentWithContentsOfAddition:(id)addition preservingCurrentVersionWithCreationInfo:(id)info createdAddition:(id *)createdAddition error:(id *)error;
- (BOOL)replaceDocumentWithContentsOfItemAtURL:(id)l preservingCurrentVersionWithCreationInfo:(id)info createdAddition:(id *)addition error:(id *)error;
- (BOOL)setAdditionDisplayName:(id)name value:(id)value error:(id *)error;
- (BOOL)setAdditionOptions:(id)options value:(unint64_t)value error:(id *)error;
- (BOOL)transferToItemAtURL:(id)l error:(id *)error;
- (GSPermanentStorage)init;
- (NSData)privExtension;
- (NSData)pubExtension;
- (id)URLforReplacingItemWithError:(id *)error;
- (id)_calculateSpecForAdditionRemoval:(id)removal;
- (id)_removalErrorDictionaryCreation:(id)creation withAdditions:(id)additions;
- (id)additionWithName:(id)name inNameSpace:(id)space error:(id *)error;
- (id)additionsWithNames:(id)names inNameSpace:(id)space error:(id *)error;
- (id)getAdditionDictionary:(id)dictionary error:(id *)error;
- (id)prepareAdditionCreationWithItemAtURL:(id)l byMoving:(BOOL)moving creationInfo:(id)info error:(id *)error;
- (id)setAdditionNameSpace:(id)space value:(id)value error:(id *)error;
- (id)stagingURLforCreatingAdditionWithError:(id *)error;
- (int64_t)remoteID;
- (void)_invalidate;
- (void)cleanupStagingURL:(id)l;
- (void)createAdditionStagedAtURL:(id)l creationInfo:(id)info completionHandler:(id)handler;
- (void)dealloc;
- (void)finalize;
- (void)removeAdditions:(id)additions completionHandler:(id)handler;
- (void)removeAllAdditionsForNamespaces:(id)namespaces completionHandler:(id)handler;
- (void)setPrivExtension:(id)extension;
- (void)setPubExtension:(id)extension;
@end

@implementation GSPermanentStorage

+ (id)storageIDForItemAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = open([lCopy fileSystemRepresentation], 0);
  if ((v6 & 0x80000000) != 0)
  {
    v12 = MEMORY[0x277CCACA8];
    path = [lCopy path];
    v10 = [v12 stringWithFormat:@"unable to open %@", path];

    v14 = *__error();
    v15 = gs_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [GSDocumentIdentifier initWithFileDescriptor:forItemAtURL:allocateIfNone:error:];
    }

    if (error)
    {
      _GSErrorForErrno(v14, v10);
      *error = result = 0;
    }

    else
    {
      result = 0;
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
    result = [v10 result];
    if (error)
    {
      *error = [v10 error];
    }
  }

  return result;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_pubExtension;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setPubExtension:(id)extension
{
  v21 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((selfCopy->_pubHandle & 0x8000000000000000) == 0)
  {
    sandbox_extension_release();
    selfCopy->_pubHandle = -1;
  }

  objc_storeStrong(&selfCopy->_pubExtension, extension);
  pubExtension = selfCopy->_pubExtension;
  if (pubExtension)
  {
    [(NSData *)pubExtension bytes];
    v8 = sandbox_extension_consume();
    selfCopy->_pubHandle = v8;
    if (v8 < 0)
    {
      v9 = gs_default_log();
      if (os_log_type_enabled(v9, 0x90u))
      {
        v11 = selfCopy->_pubExtension;
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

  objc_sync_exit(selfCopy);

  v10 = *MEMORY[0x277D85DE8];
}

- (NSData)privExtension
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_privExtension;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setPrivExtension:(id)extension
{
  v21 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((selfCopy->_privHandle & 0x8000000000000000) == 0)
  {
    sandbox_extension_release();
    selfCopy->_privHandle = -1;
  }

  objc_storeStrong(&selfCopy->_privExtension, extension);
  privExtension = selfCopy->_privExtension;
  if (privExtension)
  {
    [(NSData *)privExtension bytes];
    v8 = sandbox_extension_consume();
    selfCopy->_privHandle = v8;
    if (v8 < 0)
    {
      v9 = gs_default_log();
      if (os_log_type_enabled(v9, 0x90u))
      {
        v11 = selfCopy->_privExtension;
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

  objc_sync_exit(selfCopy);

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
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_remoteID)
    {
      v5 = open([(NSURL *)selfCopy->_documentURL fileSystemRepresentation], 33024);
      if ((v5 & 0x80000000) == 0)
      {
        [(GSPermanentStorage *)selfCopy _refreshRemoteIDWithFileDescriptor:v5 error:0];
        close(v5);
      }
    }

    objc_sync_exit(selfCopy);

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GSDocumentIdentifier *)self->_documentID isEqual:equalCopy->_documentID];
  }

  return v5;
}

- (id)getAdditionDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v7 = +[GSDaemonProxySync proxy];
  remoteID = [(GSPermanentStorage *)self remoteID];
  nameSpace = [dictionaryCopy nameSpace];
  name = [dictionaryCopy name];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __50__GSPermanentStorage_getAdditionDictionary_error___block_invoke;
  v17 = &unk_279697770;
  selfCopy = self;
  v11 = v7;
  v19 = v11;
  [v11 getAdditionInStorage:remoteID andNameSpace:nameSpace named:name completionHandler:&v14];

  result = [v11 result];
  if (error)
  {
    *error = [v11 error];
  }

  return result;
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

- (BOOL)setAdditionOptions:(id)options value:(unint64_t)value error:(id *)error
{
  optionsCopy = options;
  v9 = +[GSDaemonProxySync proxy];
  objc_initWeak(&location, v9);
  remoteID = [(GSPermanentStorage *)self remoteID];
  nameSpace = [optionsCopy nameSpace];
  name = [optionsCopy name];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __53__GSPermanentStorage_setAdditionOptions_value_error___block_invoke;
  v19 = &unk_279697798;
  objc_copyWeak(&v20, &location);
  [v9 setAdditionOptionsInStorage:remoteID nameSpace:nameSpace additionName:name value:value reply:&v16];

  result = [v9 result];
  if (error)
  {
    *error = [v9 error];
  }

  bOOLValue = [result BOOLValue];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return bOOLValue;
}

void __53__GSPermanentStorage_setAdditionOptions_value_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleBoolResult:a2 error:v5];
}

- (BOOL)setAdditionDisplayName:(id)name value:(id)value error:(id *)error
{
  nameCopy = name;
  valueCopy = value;
  v10 = +[GSDaemonProxySync proxy];
  objc_initWeak(&location, v10);
  remoteID = [(GSPermanentStorage *)self remoteID];
  nameSpace = [nameCopy nameSpace];
  name = [nameCopy name];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __57__GSPermanentStorage_setAdditionDisplayName_value_error___block_invoke;
  v20 = &unk_279697798;
  objc_copyWeak(&v21, &location);
  [v10 setAdditionDisplayNameInStorage:remoteID nameSpace:nameSpace additionName:name value:valueCopy reply:&v17];

  result = [v10 result];
  if (error)
  {
    *error = [v10 error];
  }

  bOOLValue = [result BOOLValue];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return bOOLValue;
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

- (id)setAdditionNameSpace:(id)space value:(id)value error:(id *)error
{
  spaceCopy = space;
  valueCopy = value;
  v10 = +[GSDaemonProxySync proxy];
  objc_initWeak(&location, v10);
  remoteID = [(GSPermanentStorage *)self remoteID];
  nameSpace = [spaceCopy nameSpace];
  name = [spaceCopy name];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __55__GSPermanentStorage_setAdditionNameSpace_value_error___block_invoke;
  v19 = &unk_2796977C0;
  objc_copyWeak(&v20, &location);
  [v10 setAdditionNameSpaceInStorage:remoteID nameSpace:nameSpace additionName:name value:valueCopy completionHandler:&v16];

  result = [v10 result];
  if (error)
  {
    *error = [v10 error];
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return result;
}

void __55__GSPermanentStorage_setAdditionNameSpace_value_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleObjResult:v6 error:v5];
}

- (BOOL)mergeAdditionUserInfo:(id)info value:(id)value error:(id *)error
{
  infoCopy = info;
  valueCopy = value;
  v10 = +[GSDaemonProxySync proxy];
  v11 = [MEMORY[0x277CCAC58] dataWithPropertyList:valueCopy format:200 options:0 error:error];

  if (v11)
  {
    remoteID = [(GSPermanentStorage *)self remoteID];
    nameSpace = [infoCopy nameSpace];
    name = [infoCopy name];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__GSPermanentStorage_mergeAdditionUserInfo_value_error___block_invoke;
    v19[3] = &unk_2796977E8;
    v15 = v10;
    v20 = v15;
    [v15 mergeAdditionInfoValueInStorage:remoteID nameSpace:nameSpace additionName:name value:v11 reply:v19];

    result = [v15 result];
    if (error)
    {
      *error = [v15 error];
    }

    bOOLValue = [result BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)stagingURLforCreatingAdditionWithError:(id *)error
{
  v3 = [(GSStagingPrefix *)self->_stagingPrefix stagingPathforCreatingAdditionWithError:error];
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

- (id)URLforReplacingItemWithError:(id *)error
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:self->_documentURL create:1 error:error];

  return v6;
}

- (void)cleanupStagingURL:(id)l
{
  stagingPrefix = self->_stagingPrefix;
  path = [l path];
  [(GSStagingPrefix *)stagingPrefix cleanupStagingPath:path];
}

- (id)prepareAdditionCreationWithItemAtURL:(id)l byMoving:(BOOL)moving creationInfo:(id)info error:(id *)error
{
  movingCopy = moving;
  lCopy = l;
  infoCopy = info;
  v12 = lCopy;
  v13 = v12;
  if (movingCopy)
  {
    v14 = open([v12 fileSystemRepresentation], 0);
    if (v14 < 0)
    {
      v28 = MEMORY[0x277CCACA8];
      path = [v13 path];
      v17 = [v28 stringWithFormat:@"Unable to open %@", path];

      v30 = *__error();
      v31 = gs_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [GSDocumentIdentifier initWithFileDescriptor:forItemAtURL:allocateIfNone:error:];
      }

      if (!error)
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

      if (!error)
      {
        goto LABEL_19;
      }

      v19 = _GSErrorForStatus(104, v17, 0);
LABEL_18:
      *error = v19;
LABEL_19:

      goto LABEL_20;
    }
  }

  stagingPrefix = self->_stagingPrefix;
  path2 = [v13 path];
  LOBYTE(stagingPrefix) = [(GSStagingPrefix *)stagingPrefix isStagedPath:path2];

  if (stagingPrefix)
  {
    if (GSArchiveTree([v13 fileSystemRepresentation], 0, 0, error))
    {
      v22 = v13;
      goto LABEL_24;
    }

LABEL_20:
    v32 = 0;
    v22 = v13;
    goto LABEL_38;
  }

  v23 = [(GSPermanentStorage *)self stagingURLforCreatingAdditionWithError:error];
  if (!v23)
  {
    goto LABEL_20;
  }

  v24 = v23;
  v25 = [infoCopy objectForKey:@"kGSAdditionName"];
  v26 = v25;
  if (v25)
  {
    lastPathComponent = v25;
  }

  else
  {
    lastPathComponent = [v13 lastPathComponent];
  }

  v33 = lastPathComponent;

  v34 = [infoCopy objectForKeyedSubscript:@"kGSAdditionKeepFileID"];
  bOOLValue = [v34 BOOLValue];

  v22 = [v24 URLByAppendingPathComponent:v33];

  if (!GSStageTree([v13 fileSystemRepresentation], objc_msgSend(v22, "fileSystemRepresentation"), movingCopy, bOOLValue, error))
  {
    _RemoveTree([v24 fileSystemRepresentation], 0, 0);

    v32 = 0;
    goto LABEL_38;
  }

LABEL_24:
  fileSystemRepresentation = [v22 fileSystemRepresentation];
  v37 = GSAdditionComputePOSIXName(infoCopy, self->_documentURL, v22, error);
  if (v37)
  {
    v38 = v37;
    if (!GSSetOriginalPOSIXName(fileSystemRepresentation, v37, error))
    {
      v32 = 0;
      v39 = v38;
      goto LABEL_37;
    }

    v39 = GSAdditionComputeDN(infoCopy, self->_documentURL, v22, error);

    if (v39 && GSSetOriginalDisplayName(fileSystemRepresentation, v39, error))
    {
      v40 = GSAdditionValidateUInfo(infoCopy, error);
      if (v40 && GSSetInfoDictionary(fileSystemRepresentation, v40, error))
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

- (void)createAdditionStagedAtURL:(id)l creationInfo:(id)info completionHandler:(id)handler
{
  lCopy = l;
  infoCopy = info;
  handlerCopy = handler;
  v11 = open([lCopy fileSystemRepresentation], 256);
  if ((v11 & 0x80000000) != 0)
  {
    lCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to open %@", lCopy];
    v18 = *__error();
    v19 = gs_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [GSDocumentIdentifier initWithFileDescriptor:forItemAtURL:allocateIfNone:error:];
    }

    v20 = _GSErrorForErrno(v18, lCopy);

    handlerCopy[2](handlerCopy, 0, v20);
    stagingPrefix = self->_stagingPrefix;
    path = [lCopy path];
    [(GSStagingPrefix *)stagingPrefix cleanupStagingPath:path];
  }

  else
  {
    path = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v11 closeOnDealloc:1];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __79__GSPermanentStorage_createAdditionStagedAtURL_creationInfo_completionHandler___block_invoke;
    v25[3] = &unk_279697810;
    v13 = handlerCopy;
    v27 = v13;
    v25[4] = self;
    v14 = lCopy;
    v26 = v14;
    v15 = GSDaemonProxy(v25);
    remoteID = [(GSPermanentStorage *)self remoteID];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __79__GSPermanentStorage_createAdditionStagedAtURL_creationInfo_completionHandler___block_invoke_2;
    v22[3] = &unk_279697838;
    v22[4] = self;
    v24 = v13;
    v23 = v14;
    [v15 createAdditionInStorage:remoteID stagedFileDescriptor:path creationInfo:infoCopy completionHandler:v22];
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

- (BOOL)replaceDocumentWithContentsOfAddition:(id)addition preservingCurrentVersionWithCreationInfo:(id)info createdAddition:(id *)createdAddition error:(id *)error
{
  additionCopy = addition;
  infoCopy = info;
  if (infoCopy)
  {
    v12 = GSAdditionSaveBlocking(self, self->_documentURL, 0, infoCopy, error);
    if (!v12)
    {
      v15 = 0;
      goto LABEL_11;
    }

    if (createdAddition)
    {
      v12 = v12;
      *createdAddition = v12;
    }
  }

  v13 = GSRestoreAdditionInternal(self->_documentURL, additionCopy, error);
  v14 = v13;
  v15 = v13 != 0;
  if (v13 && self->_documentURL != v13)
  {
    [(GSPermanentStorage *)self setDocumentURL:v13];
  }

LABEL_11:
  return v15;
}

- (BOOL)replaceDocumentWithContentsOfItemAtURL:(id)l preservingCurrentVersionWithCreationInfo:(id)info createdAddition:(id *)addition error:(id *)error
{
  lCopy = l;
  infoCopy = info;
  if (infoCopy)
  {
    v12 = GSAdditionSaveBlocking(self, self->_documentURL, 0, infoCopy, error);
    if (!v12)
    {
LABEL_11:
      v15 = 0;
      goto LABEL_12;
    }

    if (addition)
    {
      v12 = v12;
      *addition = v12;
    }
  }

  if (![(NSURL *)self->_documentURL checkResourceIsReachableAndReturnError:error])
  {
    goto LABEL_11;
  }

  v13 = GSReplaceDocumentInternal(self->_documentURL, lCopy, error);
  v14 = v13;
  v15 = v13 != 0;
  if (v13 && self->_documentURL != v13)
  {
    [(GSPermanentStorage *)self setDocumentURL:v13];
  }

LABEL_12:
  return v15;
}

- (id)additionWithName:(id)name inNameSpace:(id)space error:(id *)error
{
  spaceCopy = space;
  nameCopy = name;
  v10 = +[GSDaemonProxySync proxy];
  remoteID = [(GSPermanentStorage *)self remoteID];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __57__GSPermanentStorage_additionWithName_inNameSpace_error___block_invoke;
  v18 = &unk_279697770;
  selfCopy = self;
  v12 = v10;
  v20 = v12;
  [v12 getAdditionInStorage:remoteID andNameSpace:spaceCopy named:nameCopy completionHandler:&v15];

  result = [v12 result];
  if (error)
  {
    *error = [v12 error];
  }

  return result;
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

- (id)additionsWithNames:(id)names inNameSpace:(id)space error:(id *)error
{
  spaceCopy = space;
  namesCopy = names;
  v10 = +[GSDaemonProxySync proxy];
  remoteID = [(GSPermanentStorage *)self remoteID];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __59__GSPermanentStorage_additionsWithNames_inNameSpace_error___block_invoke;
  v18 = &unk_279697860;
  selfCopy = self;
  v12 = v10;
  v20 = v12;
  [v12 getAdditionsInStorage:remoteID andNameSpace:spaceCopy named:namesCopy completionHandler:&v15];

  result = [v12 result];
  if (error)
  {
    *error = [v12 error];
  }

  return result;
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

- (id)_calculateSpecForAdditionRemoval:(id)removal
{
  v21 = *MEMORY[0x277D85DE8];
  removalCopy = removal;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(removalCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = removalCopy;
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
        nameSpace = [v10 nameSpace];
        v12 = [v4 objectForKey:nameSpace];
        if (!v12)
        {
          v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v4 setObject:v12 forKey:nameSpace];
        }

        name = [v10 name];
        [v12 addObject:name];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_removalErrorDictionaryCreation:(id)creation withAdditions:(id)additions
{
  v28 = *MEMORY[0x277D85DE8];
  creationCopy = creation;
  additionsCopy = additions;
  v7 = additionsCopy;
  v8 = 0;
  if (creationCopy && additionsCopy)
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
          nameSpace = [v14 nameSpace];
          v16 = [creationCopy objectForKey:nameSpace];

          name = [v14 name];
          v18 = [v16 objectForKey:name];

          if (v18)
          {
            persistentIdentifier = [v14 persistentIdentifier];
            [v8 setObject:v18 forKey:persistentIdentifier];
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

- (void)removeAdditions:(id)additions completionHandler:(id)handler
{
  additionsCopy = additions;
  handlerCopy = handler;
  if (additionsCopy && [additionsCopy count])
  {
    v8 = [(GSPermanentStorage *)self _calculateSpecForAdditionRemoval:additionsCopy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__GSPermanentStorage_removeAdditions_completionHandler___block_invoke;
    v15[3] = &unk_279697888;
    v9 = handlerCopy;
    v16 = v9;
    v10 = GSDaemonProxy(v15);
    remoteID = [(GSPermanentStorage *)self remoteID];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__GSPermanentStorage_removeAdditions_completionHandler___block_invoke_2;
    v12[3] = &unk_2796978B0;
    v14 = v9;
    v12[4] = self;
    v13 = additionsCopy;
    [v10 removeAdditionsInStorage:remoteID removalSpec:v8 completionHandler:v12];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
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

- (void)removeAllAdditionsForNamespaces:(id)namespaces completionHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  namespacesCopy = namespaces;
  handlerCopy = handler;
  if (namespacesCopy)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(namespacesCopy, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = namespacesCopy;
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
  v15 = handlerCopy;
  v23 = v15;
  v16 = GSDaemonProxy(v22);
  remoteID = [(GSPermanentStorage *)self remoteID];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__GSPermanentStorage_removeAllAdditionsForNamespaces_completionHandler___block_invoke_2;
  v20[3] = &unk_2796978D8;
  v21 = v15;
  v18 = v15;
  [v16 removeAdditionsInStorage:remoteID removalSpec:v8 completionHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)transferToItemAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v16 = open([lCopy fileSystemRepresentation], 0);
  if (v16 < 0)
  {
    lCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"opening %@ failed", lCopy];
    v13 = *__error();
    v14 = gs_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [GSDocumentIdentifier initWithFileDescriptor:forItemAtURL:allocateIfNone:error:];
    }

    if (error)
    {
      *error = _GSErrorForErrno(v13, lCopy);
    }

    v8 = 0;
  }

  else
  {
    v7 = fsctl([(NSURL *)self->_documentURL fileSystemRepresentation], 0x80046820uLL, &v16, 0);
    v8 = v7 == 0;
    if (v7)
    {
      lCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"fsctl(%@, TRANSFER_DOCUMENT_ID, %@) failed", self->_documentURL, lCopy];
      v10 = *__error();
      v11 = gs_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [GSDocumentIdentifier initWithFileDescriptor:forItemAtURL:allocateIfNone:error:];
      }

      if (error)
      {
        *error = _GSErrorForErrno(v10, lCopy2);
      }
    }

    else
    {
      [(GSPermanentStorage *)self setDocumentURL:lCopy];
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