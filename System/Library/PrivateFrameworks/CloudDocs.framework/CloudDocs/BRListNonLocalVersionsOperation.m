@interface BRListNonLocalVersionsOperation
- (BOOL)__advanceToState:(char)a3 result:(id)a4 error:(id)a5;
- (BOOL)__finishIfCancelled;
- (BOOL)_setVersionStoreForDocumentAtURL:(id)a3 error:(id *)a4;
- (BRListNonLocalVersionsOperation)initWithDocumentURL:(id)a3;
- (NSString)description;
- (void)_addVersion:(id)a3;
- (void)_senderInvalidate;
- (void)cancel;
- (void)dealloc;
- (void)newFaultVersionAtURL:(id)a3 faultURL:(id)a4 faultExtension:(id)a5 etag:(id)a6 hasThumbnail:(BOOL)a7 displayName:(id)a8 lastEditorDeviceName:(id)a9 lastEditorNameComponents:(id)a10 modificationDate:(id)a11;
- (void)newThumbnailForVersionWithEtag:(id)a3;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation BRListNonLocalVersionsOperation

- (BRListNonLocalVersionsOperation)initWithDocumentURL:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = BRListNonLocalVersionsOperation;
  v6 = [(BRListNonLocalVersionsOperation *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentURL, a3);
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

- (void)setExecuting:(BOOL)a3
{
  [(BRListNonLocalVersionsOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_executing = a3;

  [(BRListNonLocalVersionsOperation *)self didChangeValueForKey:@"isExecuting"];
}

- (void)setFinished:(BOOL)a3
{
  [(BRListNonLocalVersionsOperation *)self willChangeValueForKey:@"isFinished"];
  self->_finished = a3;

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
  v3 = self;
  objc_sync_enter(v3);
  if ([(BRListNonLocalVersionsOperation *)v3 isExecuting])
  {
    [(BRListNonLocalVersionsOperation *)v3 __finishIfCancelled];
  }

  objc_sync_exit(v3);
}

- (BOOL)__finishIfCancelled
{
  if ([(BRListNonLocalVersionsOperation *)self isFinished])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(BRListNonLocalVersionsOperation *)self isCancelled];
    if (v3)
    {
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
      v5 = [(BRListNonLocalVersionsOperation *)self __advanceToState:2 result:0 error:v4];

      LOBYTE(v3) = v5;
    }
  }

  return v3;
}

- (BOOL)__advanceToState:(char)a3 result:(id)a4 error:(id)a5
{
  v6 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (![(BRListNonLocalVersionsOperation *)self isFinished])
  {
    state = self->_state;
    if (self->_state < v6)
    {
      while (state != 1)
      {
        if (!state)
        {
          fetchingVersionsDoneBlock = self->_fetchingVersionsDoneBlock;
          if (fetchingVersionsDoneBlock)
          {
            fetchingVersionsDoneBlock[2](fetchingVersionsDoneBlock, v8, v9);
            [(BRListNonLocalVersionsOperation *)self setFetchingVersionsDoneBlock:0];
          }

          state = 1;
          goto LABEL_9;
        }

LABEL_10:
        if (v6 <= state)
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
      v18 = self;
      v19 = 2112;
      v20 = v9;
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

- (BOOL)_setVersionStoreForDocumentAtURL:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E69A07C0];
  v7 = a3;
  v8 = [v6 manager];
  v9 = [v8 permanentStorageForItemAtURL:v7 allocateIfNone:0 error:a4];

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
  v5 = [(NSURL *)self->_documentURL path];
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
    v8 = [(BRListNonLocalVersionsOperation *)self isReady];
    v7 = "not ready";
    if (v8)
    {
      v7 = "ready";
    }
  }

  v9 = [v3 stringWithFormat:@"<%@ url:'%@' versions:%u %s>", v4, v5, v6, v7];

  return v9;
}

- (void)_addVersion:(id)a3
{
  v4 = a3;
  v5 = brc_bread_crumbs("[BRListNonLocalVersionsOperation _addVersion:]", 286);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRListNonLocalVersionsOperation _addVersion:];
  }

  versionsByEtag = self->_versionsByEtag;
  v8 = [v4 etag];
  [(NSMutableDictionary *)versionsByEtag setObject:v4 forKey:v8];

  [(NSMutableArray *)self->_versions addObject:v4];
}

- (void)newFaultVersionAtURL:(id)a3 faultURL:(id)a4 faultExtension:(id)a5 etag:(id)a6 hasThumbnail:(BOOL)a7 displayName:(id)a8 lastEditorDeviceName:(id)a9 lastEditorNameComponents:(id)a10 modificationDate:(id)a11
{
  v34 = a7;
  v41 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = [(NSMutableDictionary *)self->_versionsByEtag objectForKey:v19];
  if (v24)
  {
    goto LABEL_13;
  }

  v33 = self;
  _CFURLPromiseSetPhysicalURL();
  v32 = v16;
  v25 = v20;
  if (![v18 length])
  {
    goto LABEL_8;
  }

  MEMORY[0x1B26FDEB0](v17, v18);
  [v18 bytes];
  if (sandbox_extension_consume() < 0)
  {
    v27 = *__error();
    v28 = brc_bread_crumbs("[BRListNonLocalVersionsOperation newFaultVersionAtURL:faultURL:faultExtension:etag:hasThumbnail:displayName:lastEditorDeviceName:lastEditorNameComponents:modificationDate:]", 311);
    v29 = brc_default_log(0, 0);
    if (os_log_type_enabled(v29, 0x90u))
    {
      *buf = 138412802;
      v36 = v18;
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

  v16 = v32;
  v24 = [[BRNonLocalVersion alloc] initWithURL:v32 physicalURL:v17 size:v30 extension:v18 etag:v19 hasThumbnail:v34 displayName:v25 lastEditorDeviceName:v21 lastEditorNameComponents:v22 modificationDate:v23 versionsStore:v33->_versionsStore];
  [(BRListNonLocalVersionsOperation *)v33 _addVersion:v24];

  v20 = v25;
LABEL_13:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)newThumbnailForVersionWithEtag:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_versionsByEtag objectForKeyedSubscript:a3];
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