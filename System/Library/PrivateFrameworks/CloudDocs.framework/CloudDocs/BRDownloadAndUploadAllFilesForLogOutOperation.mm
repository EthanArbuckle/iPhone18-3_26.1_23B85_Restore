@interface BRDownloadAndUploadAllFilesForLogOutOperation
- (BRDownloadAndUploadAllFilesForLogOutOperation)init;
- (void)cancel;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRDownloadAndUploadAllFilesForLogOutOperation

- (BRDownloadAndUploadAllFilesForLogOutOperation)init
{
  v10.receiver = self;
  v10.super_class = BRDownloadAndUploadAllFilesForLogOutOperation;
  v2 = [(BROperation *)&v10 init];
  if (v2)
  {
    v3 = [[BRGlobalProgressProxy alloc] initWithGlobalProgressKind:0];
    progress = v2->_progress;
    v2->_progress = v3;

    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v5;

    [(NSOperationQueue *)v2->_internalQueue setMaxConcurrentOperationCount:1];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    fileCoordinators = v2->_fileCoordinators;
    v2->_fileCoordinators = v7;
  }

  return v2;
}

- (void)cancel
{
  v23 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = BRDownloadAndUploadAllFilesForLogOutOperation;
  [(BROperation *)&v17 cancel];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  p_isa = &selfCopy->super.super.super.isa;
  v4 = selfCopy->_fileCoordinators;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v22 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation cancel]", 49);
        v10 = brc_default_log(1, 0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v19 = v8;
          v20 = 2112;
          v21 = v9;
          _os_log_debug_impl(&dword_1AE2A9000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Cancelling %@%@", buf, 0x16u);
        }

        [v8 cancel];
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v22 count:16];
    }

    while (v5);
  }

  [p_isa[41] cancel];
  objc_sync_exit(p_isa);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)main
{
  v36 = *MEMORY[0x1E69E9840];
  [(BRProgressProxy *)self->_progress start];
  v3 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation main]", 65);
  v4 = brc_default_log(1, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AE2A9000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] downloading and uploading all files because we're logging out%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__10;
  v34 = __Block_byref_object_dispose__10;
  v35 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__10;
  v25[4] = __Block_byref_object_dispose__10;
  v26 = 0;
  v5 = dispatch_group_create();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_alloc_init(BRUploadAllFilesForLogOutOperation);
  uploadOp = selfCopy->_uploadOp;
  selfCopy->_uploadOp = v7;

  [(BRUploadAllFilesForLogOutOperation *)selfCopy->_uploadOp setShouldKeepDataLocal:1];
  if ([(BROperation *)selfCopy finishIfCancelled])
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    dispatch_group_enter(v5);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke;
    v22[3] = &unk_1E7A15CA0;
    p_buf = &buf;
    v9 = v5;
    v23 = v9;
    [(BRUploadAllFilesForLogOutOperation *)selfCopy->_uploadOp setUploadAllFilesCompletionBlock:v22];
    [(NSOperationQueue *)selfCopy->_internalQueue addOperation:selfCopy->_uploadOp];

    objc_sync_exit(selfCopy);
    dispatch_group_enter(v9);
    v10 = +[BRContainer documentContainers];
    v11 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation main]", 93);
    v12 = brc_default_log(1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 138412546;
      v28 = v10;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_1AE2A9000, v12, OS_LOG_TYPE_DEFAULT, "[NOTICE] forcing a sync down on containers: %@%@", v27, 0x16u);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_8;
    v18[3] = &unk_1E7A16840;
    v18[4] = selfCopy;
    v13 = v9;
    v19 = v13;
    v14 = v10;
    v20 = v14;
    v21 = v25;
    [BRContainer forceRefreshContainers:v14 completion:v18];
    callbackQueue = [(BROperation *)selfCopy callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_15;
    block[3] = &unk_1E7A16868;
    block[4] = selfCopy;
    block[5] = &buf;
    block[6] = v25;
    dispatch_group_notify(v13, callbackQueue, block);

    selfCopy = v14;
  }

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&buf, 8);

  v16 = *MEMORY[0x1E69E9840];
}

void __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation main]_block_invoke", 82);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"success";
    if (v4)
    {
      v7 = v4;
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] done uploading\n status: %@%@", &v9, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
  v8 = *MEMORY[0x1E69E9840];
}

void __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_8(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v23 = a2;
  v3 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation main]_block_invoke", 95);
  v4 = brc_default_log(1, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_8_cold_1(v23, v3, v4);
  }

  if (([*(a1 + 32) finishIfCancelled] & 1) == 0)
  {
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v37 = 0u;
    obj = *(a1 + 48);
    v26 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v26)
    {
      v25 = *v38;
      *&v5 = 134218754;
      v22 = v5;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v37 + 1) + 8 * i);
          v8 = [v7 documentsURL];
          if (v8 && [v7 isDocumentScopePublic])
          {
            v9 = objc_alloc_init(MEMORY[0x1E696ABF8]);
            [v7 registerCurrentProcessAsPriorityHintWithError:0];
            v10 = [MEMORY[0x1E696ABF0] readingIntentWithURL:v8 options:131073];
            v11 = *(a1 + 32);
            objc_sync_enter(v11);
            [*(*(a1 + 32) + 304) addObject:v9];
            if ([*(a1 + 32) isCancelled])
            {
              [v9 cancel];
              objc_sync_exit(v11);

              goto LABEL_19;
            }

            objc_sync_exit(v11);

            v12 = [v7 identifier];
            v35 = 0uLL;
            v36 = 0;
            __brc_create_section(0, "[BRDownloadAndUploadAllFilesForLogOutOperation main]_block_invoke", 123, 0, &v35);
            v13 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation main]_block_invoke", 123);
            v14 = brc_default_log(1, 0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = v22;
              *&buf[4] = v35;
              *&buf[12] = 2112;
              *&buf[14] = v12;
              *&buf[22] = 2112;
              v43 = v9;
              v44 = 2112;
              v45 = v13;
              _os_log_debug_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx taking a coordinated read recursive on %@ using %@%@", buf, 0x2Au);
            }

            *buf = v35;
            *&buf[16] = v36;
            dispatch_group_enter(*(a1 + 40));
            v41 = v10;
            v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
            v16 = *(a1 + 32);
            v17 = *(v16 + 320);
            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_12;
            v27[3] = &unk_1E7A16818;
            v33 = *buf;
            v34 = *&buf[16];
            v18 = *(a1 + 56);
            v28 = v12;
            v29 = v16;
            v32 = v18;
            v30 = v9;
            v31 = *(a1 + 40);
            v19 = v9;
            v20 = v12;
            [v19 coordinateAccessWithIntents:v15 queue:v17 byAccessor:v27];
          }
        }

        v26 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  dispatch_group_leave(*(a1 + 40));

  v21 = *MEMORY[0x1E69E9840];
}

void __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_12(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = *(a1 + 72);
  v18 = *(a1 + 88);
  v4 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation main]_block_invoke", 128);
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    v16 = @"success";
    if (v3)
    {
      v16 = v3;
    }

    *buf = 134218754;
    v22 = v17;
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v4;
    _os_log_debug_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx obtained a coordinated read on %@: %@%@", buf, 0x2Au);
  }

  if (v3)
  {
    v6 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696AA08];
    v20 = v3;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v8 = [v6 errorWithDomain:@"BRCloudDocsErrorDomain" code:1001 userInfo:v7];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = *(a1 + 40);
  objc_sync_enter(v11);
  [*(*(a1 + 40) + 304) removeObject:*(a1 + 48)];
  v12 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation main]_block_invoke", 135);
  v13 = brc_default_log(1, 0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_12_cold_1(v12, buf, [*(*(a1 + 40) + 304) count], v13);
  }

  objc_sync_exit(v11);
  dispatch_group_leave(*(a1 + 56));
  __brc_leave_section(&v17);

  v14 = *MEMORY[0x1E69E9840];
}

void __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_15(uint64_t a1)
{
  v2 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation main]_block_invoke", 148);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_15_cold_1(v2, v3);
  }

  if (([*(a1 + 32) finishIfCancelled] & 1) == 0)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    if (!v4)
    {
      v4 = *(*(*(a1 + 48) + 8) + 40);
    }

    v5 = v4;
    [*(a1 + 32) completedWithResult:0 error:v5];
  }
}

- (void)finishWithResult:(id)result error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  resultCopy = result;
  v8 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation finishWithResult:error:]", 166);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"success";
    if (errorCopy)
    {
      v10 = errorCopy;
    }

    *buf = 138412546;
    v16 = v10;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEFAULT, "[NOTICE] uploading and downloading all files for logout finished\n status: %@%@", buf, 0x16u);
  }

  downloadAllFilesCompletionBlock = [(BRDownloadAndUploadAllFilesForLogOutOperation *)self downloadAllFilesCompletionBlock];
  v12 = downloadAllFilesCompletionBlock;
  if (downloadAllFilesCompletionBlock)
  {
    (*(downloadAllFilesCompletionBlock + 16))(downloadAllFilesCompletionBlock, errorCopy);
    [(BRDownloadAndUploadAllFilesForLogOutOperation *)self setDownloadAllFilesCompletionBlock:0];
  }

  [(BRProgressProxy *)self->_progress stop];
  +[BRContainer unregisterCurrentProcessAsPriorityHint];
  v14.receiver = self;
  v14.super_class = BRDownloadAndUploadAllFilesForLogOutOperation;
  [(BROperation *)&v14 finishWithResult:resultCopy error:errorCopy];

  v13 = *MEMORY[0x1E69E9840];
}

void __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_8_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] done forcing sync down: %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_12_cold_1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] still waiting for %ld container(s) to download%@", buf, 0x16u);
}

void __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_15_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] completed download and upload%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end