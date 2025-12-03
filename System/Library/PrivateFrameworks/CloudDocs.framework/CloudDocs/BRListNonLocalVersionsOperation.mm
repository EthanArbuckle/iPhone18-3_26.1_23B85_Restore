@interface BRListNonLocalVersionsOperation
- (BOOL)__advanceToState:(char)state result:(id)result error:(id)error;
- (BOOL)__finishIfCancelled;
- (BOOL)_setVersionStoreForDocumentAtURL:(id)l error:(id *)error;
- (BRListNonLocalVersionsOperation)initWithDocumentURL:(id)l;
- (NSString)description;
- (void)_addVersion:(id)version;
- (void)_senderInvalidate;
- (void)cancel;
- (void)dealloc;
- (void)newFaultVersionAtURL:(id)l faultURL:(id)rL faultExtension:(id)extension etag:(id)etag hasThumbnail:(BOOL)thumbnail displayName:(id)name lastEditorDeviceName:(id)deviceName lastEditorNameComponents:(id)self0 modificationDate:(id)self1;
- (void)newThumbnailForVersionWithEtag:(id)etag;
- (void)setExecuting:(BOOL)executing;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation BRListNonLocalVersionsOperation

- (BRListNonLocalVersionsOperation)initWithDocumentURL:(id)l
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = BRListNonLocalVersionsOperation;
  v6 = [(BRListNonLocalVersionsOperation *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentURL, l);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    versions = v7->_versions;
    v7->_versions = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    versionsByEtag = v7->_versionsByEtag;
    v7->_versionsByEtag = v10;
  }

  return v7;
}

- (void)dealloc
{
  [(BRListNonLocalVersionsOperation *)self _senderInvalidate];
  v3.receiver = self;
  v3.super_class = BRListNonLocalVersionsOperation;
  [(BRListNonLocalVersionsOperation *)&v3 dealloc];
}

- (void)setExecuting:(BOOL)executing
{
  [(BRListNonLocalVersionsOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_executing = executing;

  [(BRListNonLocalVersionsOperation *)self didChangeValueForKey:@"isExecuting"];
}

- (void)setFinished:(BOOL)finished
{
  [(BRListNonLocalVersionsOperation *)self willChangeValueForKey:@"isFinished"];
  self->_finished = finished;

  [(BRListNonLocalVersionsOperation *)self didChangeValueForKey:@"isFinished"];
}

- (void)_senderInvalidate
{
  [(BRNonLocalVersionSending *)self->_sender invalidate];
  sender = self->_sender;
  self->_sender = 0;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = BRListNonLocalVersionsOperation;
  [(BRListNonLocalVersionsOperation *)&v4 cancel];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(BRListNonLocalVersionsOperation *)selfCopy isExecuting])
  {
    [(BRListNonLocalVersionsOperation *)selfCopy __finishIfCancelled];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)__finishIfCancelled
{
  if ([(BRListNonLocalVersionsOperation *)self isFinished])
  {
    LOBYTE(isCancelled) = 1;
  }

  else
  {
    isCancelled = [(BRListNonLocalVersionsOperation *)self isCancelled];
    if (isCancelled)
    {
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
      v5 = [(BRListNonLocalVersionsOperation *)self __advanceToState:2 result:0 error:v4];

      LOBYTE(isCancelled) = v5;
    }
  }

  return isCancelled;
}

- (BOOL)__advanceToState:(char)state result:(id)result error:(id)error
{
  stateCopy = state;
  v23 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  if (![(BRListNonLocalVersionsOperation *)self isFinished])
  {
    state = self->_state;
    if (self->_state < stateCopy)
    {
      while (state != 1)
      {
        if (!state)
        {
          fetchingVersionsDoneBlock = self->_fetchingVersionsDoneBlock;
          if (fetchingVersionsDoneBlock)
          {
            fetchingVersionsDoneBlock[2](fetchingVersionsDoneBlock, resultCopy, errorCopy);
            [(BRListNonLocalVersionsOperation *)self setFetchingVersionsDoneBlock:0];
          }

          state = 1;
          goto LABEL_9;
        }

LABEL_10:
        if (stateCopy <= state)
        {
          goto LABEL_11;
        }
      }

      state = 2;
LABEL_9:
      self->_state = state;
      goto LABEL_10;
    }

LABEL_11:
    if (state != 2)
    {
      v14 = 0;
      goto LABEL_17;
    }

    [(BRListNonLocalVersionsOperation *)self setExecuting:0];
    [(BRListNonLocalVersionsOperation *)self setFinished:1];
    v12 = brc_bread_crumbs("[BRListNonLocalVersionsOperation __advanceToState:result:error:]", 233);
    v13 = brc_default_log(1, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412802;
      selfCopy = self;
      v19 = 2112;
      v20 = errorCopy;
      v21 = 2112;
      v22 = v12;
      _os_log_debug_impl(&dword_1AE2A9000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ did finish with error %@%@", &v17, 0x20u);
    }

    [(BRListNonLocalVersionsOperation *)self _senderInvalidate];
  }

  v14 = 1;
LABEL_17:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_setVersionStoreForDocumentAtURL:(id)l error:(id *)error
{
  v6 = MEMORY[0x1E69A07C0];
  lCopy = l;
  manager = [v6 manager];
  v9 = [manager permanentStorageForItemAtURL:lCopy allocateIfNone:0 error:error];

  versionsStore = self->_versionsStore;
  self->_versionsStore = v9;

  LOBYTE(v9) = self->_versionsStore != 0;
  return v9;
}

- (void)start
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] not starting %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  path = [(NSURL *)self->_documentURL path];
  v6 = [(NSMutableArray *)self->_versions count];
  if (([(BRListNonLocalVersionsOperation *)self isCancelled]& 1) != 0)
  {
    v7 = "cancelled";
  }

  else if ([(BRListNonLocalVersionsOperation *)self isExecuting])
  {
    v7 = "executing";
  }

  else if ([(BRListNonLocalVersionsOperation *)self isFinished])
  {
    v7 = "finished";
  }

  else
  {
    isReady = [(BRListNonLocalVersionsOperation *)self isReady];
    v7 = "not ready";
    if (isReady)
    {
      v7 = "ready";
    }
  }

  v9 = [v3 stringWithFormat:@"<%@ url:'%@' versions:%u %s>", v4, path, v6, v7];

  return v9;
}

- (void)_addVersion:(id)version
{
  versionCopy = version;
  v5 = brc_bread_crumbs("[BRListNonLocalVersionsOperation _addVersion:]", 286);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRListNonLocalVersionsOperation _addVersion:];
  }

  versionsByEtag = self->_versionsByEtag;
  etag = [versionCopy etag];
  [(NSMutableDictionary *)versionsByEtag setObject:versionCopy forKey:etag];

  [(NSMutableArray *)self->_versions addObject:versionCopy];
}

- (void)newFaultVersionAtURL:(id)l faultURL:(id)rL faultExtension:(id)extension etag:(id)etag hasThumbnail:(BOOL)thumbnail displayName:(id)name lastEditorDeviceName:(id)deviceName lastEditorNameComponents:(id)self0 modificationDate:(id)self1
{
  thumbnailCopy = thumbnail;
  v41 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  extensionCopy = extension;
  etagCopy = etag;
  nameCopy = name;
  deviceNameCopy = deviceName;
  componentsCopy = components;
  dateCopy = date;
  v24 = [(NSMutableDictionary *)self->_versionsByEtag objectForKey:etagCopy];
  if (v24)
  {
    goto LABEL_13;
  }

  selfCopy = self;
  _CFURLPromiseSetPhysicalURL();
  v32 = lCopy;
  v25 = nameCopy;
  if (![extensionCopy length])
  {
    goto LABEL_8;
  }

  MEMORY[0x1B26FDEB0](rLCopy, extensionCopy);
  [extensionCopy bytes];
  if (sandbox_extension_consume() < 0)
  {
    v27 = *__error();
    v28 = brc_bread_crumbs("[BRListNonLocalVersionsOperation newFaultVersionAtURL:faultURL:faultExtension:etag:hasThumbnail:displayName:lastEditorDeviceName:lastEditorNameComponents:modificationDate:]", 311);
    v29 = brc_default_log(0, 0);
    if (os_log_type_enabled(v29, 0x90u))
    {
      *buf = 138412802;
      v36 = extensionCopy;
      v37 = 1024;
      v38 = v27;
      v39 = 2112;
      v40 = v28;
      _os_log_error_impl(&dword_1AE2A9000, v29, 0x90u, "[ERROR] Failed to consume extension %@ %{errno}d%@", buf, 0x1Cu);
    }

    *__error() = v27;
LABEL_8:
    v26 = _CFURLCopyPropertiesOfPromiseAtURL();
    goto LABEL_9;
  }

  v26 = _CFURLCopyPropertiesOfPromiseAtURL();
  sandbox_extension_release();
LABEL_9:
  if (v26)
  {
    v30 = [v26 objectForKey:*MEMORY[0x1E695DB50]];
    CFRelease(v26);
  }

  else
  {
    v30 = 0;
  }

  lCopy = v32;
  v24 = [[BRNonLocalVersion alloc] initWithURL:v32 physicalURL:rLCopy size:v30 extension:extensionCopy etag:etagCopy hasThumbnail:thumbnailCopy displayName:v25 lastEditorDeviceName:deviceNameCopy lastEditorNameComponents:componentsCopy modificationDate:dateCopy versionsStore:selfCopy->_versionsStore];
  [(BRListNonLocalVersionsOperation *)selfCopy _addVersion:v24];

  nameCopy = v25;
LABEL_13:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)newThumbnailForVersionWithEtag:(id)etag
{
  v3 = [(NSMutableDictionary *)self->_versionsByEtag objectForKeyedSubscript:etag];
  if (v3)
  {
    v4 = brc_bread_crumbs("[BRListNonLocalVersionsOperation newThumbnailForVersionWithEtag:]", 379);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [BRListNonLocalVersionsOperation newThumbnailForVersionWithEtag:];
    }

    [v3 setHasThumbnail:1];
  }
}

- (void)_addVersion:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] adding version: %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)newThumbnailForVersionWithEtag:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] %@ now has a thumbnail%@");
  v2 = *MEMORY[0x1E69E9840];
}

@end