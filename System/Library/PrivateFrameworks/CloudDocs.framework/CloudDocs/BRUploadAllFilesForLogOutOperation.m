@interface BRUploadAllFilesForLogOutOperation
- (BRUploadAllFilesForLogOutOperation)init;
- (NSString)description;
- (void)cancel;
- (void)evictAllFilesInGroup:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRUploadAllFilesForLogOutOperation

- (BRUploadAllFilesForLogOutOperation)init
{
  v13.receiver = self;
  v13.super_class = BRUploadAllFilesForLogOutOperation;
  v2 = [(BROperation *)&v13 init];
  if (v2)
  {
    v3 = [BRGlobalProgressProxy alloc];
    v4 = [(BRGlobalProgressProxy *)v3 initWithGlobalProgressKind:*MEMORY[0x1E696A870]];
    progress = v2->_progress;
    v2->_progress = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    errorsByContainerID = v2->_errorsByContainerID;
    v2->_errorsByContainerID = v6;

    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    opQueue = v2->_opQueue;
    v2->_opQueue = v8;

    [(NSOperationQueue *)v2->_opQueue setMaxConcurrentOperationCount:8];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    hiddenContainersWithError = v2->_hiddenContainersWithError;
    v2->_hiddenContainersWithError = v10;
  }

  return v2;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = BRUploadAllFilesForLogOutOperation;
  [(BROperation *)&v4 cancel];
  v3 = self;
  objc_sync_enter(v3);
  [(NSOperationQueue *)v3->_opQueue cancelAllOperations];
  objc_sync_exit(v3);
}

- (NSString)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = v2;
  v8.super_class = BRUploadAllFilesForLogOutOperation;
  v4 = [(BROperation *)&v8 description];
  v5 = [(NSOperationQueue *)v2->_opQueue operations];
  v6 = [v3 stringWithFormat:@"%@ sub=%@", v4, v5];

  objc_sync_exit(v2);

  return v6;
}

- (void)evictAllFilesInGroup:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  memset(v51, 0, sizeof(v51));
  __brc_create_section(0, "[BRUploadAllFilesForLogOutOperation evictAllFilesInGroup:]", 70, 0, v51);
  v5 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation evictAllFilesInGroup:]", 70);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRUploadAllFilesForLogOutOperation evictAllFilesInGroup:v51];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = +[BRContainer documentContainers];
  v8 = [v7 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v8)
  {
    v30 = *v48;
    do
    {
      v31 = 0;
      v32 = v8;
      do
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(v7);
        }

        v9 = *(*(&v47 + 1) + 8 * v31);
        v10 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation evictAllFilesInGroup:]", 73);
        v11 = brc_default_log(1, 0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v9 identifier];
          *buf = 138412546;
          v53 = v12;
          v54 = 2112;
          v55 = v10;
          _os_log_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEFAULT, "[NOTICE] evicting files in %@%@", buf, 0x16u);
        }

        v13 = [v9 documentsURL];
        v59 = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
        v15 = [v14 mutableCopy];

        v16 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation evictAllFilesInGroup:]", 77);
        v17 = brc_default_log(1, 0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v53 = v15;
          v54 = 2112;
          v55 = v16;
          _os_log_debug_impl(&dword_1AE2A9000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] evicting urls: %@%@", buf, 0x16u);
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        obj = v15;
        v18 = [obj countByEnumeratingWithState:&v43 objects:v58 count:16];
        if (v18)
        {
          v34 = *v44;
          do
          {
            v19 = 0;
            do
            {
              if (*v44 != v34)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v43 + 1) + 8 * v19);
              dispatch_group_enter(v4);
              v39 = 0uLL;
              v40 = 0;
              __brc_create_section(0, "[BRUploadAllFilesForLogOutOperation evictAllFilesInGroup:]", 82, 0, &v39);
              v21 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation evictAllFilesInGroup:]", 82);
              v22 = brc_default_log(1, 0);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                v24 = v4;
                v25 = v7;
                v26 = self;
                v27 = v39;
                v28 = [v20 path];
                *buf = 134218498;
                v53 = v27;
                v54 = 2112;
                v55 = v28;
                v56 = 2112;
                v57 = v21;
                _os_log_debug_impl(&dword_1AE2A9000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx evicting %@%@", buf, 0x20u);

                self = v26;
                v7 = v25;
                v4 = v24;
                v8 = v32;
              }

              v41 = v39;
              v42 = v40;
              v23 = [[BREvictItemOperation alloc] initWithURL:v20];
              v35[0] = MEMORY[0x1E69E9820];
              v35[1] = 3221225472;
              v35[2] = __59__BRUploadAllFilesForLogOutOperation_evictAllFilesInGroup___block_invoke;
              v35[3] = &unk_1E7A15C50;
              v37 = v41;
              v38 = v42;
              v35[4] = v20;
              v36 = v4;
              [(BREvictItemOperation *)v23 setEvictionCompletionBlock:v35];
              [(NSOperationQueue *)self->_opQueue addOperation:v23];

              ++v19;
            }

            while (v18 != v19);
            v18 = [obj countByEnumeratingWithState:&v43 objects:v58 count:16];
          }

          while (v18);
        }

        ++v31;
      }

      while (v31 != v8);
      v8 = [v7 countByEnumeratingWithState:&v47 objects:v60 count:16];
    }

    while (v8);
  }

  __brc_leave_section(v51);
  v29 = *MEMORY[0x1E69E9840];
}

void __59__BRUploadAllFilesForLogOutOperation_evictAllFilesInGroup___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  v4 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation evictAllFilesInGroup:]_block_invoke", 85);
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = [*(a1 + 32) path];
    *buf = 134218498;
    v13 = v10;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v4;
    _os_log_debug_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx finished evicting data under %@%@", buf, 0x20u);
  }

  if (v3)
  {
    v6 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation evictAllFilesInGroup:]_block_invoke", 86);
    v7 = brc_default_log(0, 0);
    if (os_log_type_enabled(v7, 0x90u))
    {
      __59__BRUploadAllFilesForLogOutOperation_evictAllFilesInGroup___block_invoke_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 40));
  __brc_leave_section(&v10);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)main
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v1, v2, "[DEBUG] ┣%llx waiting for the two operations to end%@");
  v3 = *MEMORY[0x1E69E9840];
}

void __42__BRUploadAllFilesForLogOutOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation main]_block_invoke", 107);
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_cold_1();
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_18(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation main]_block_invoke", 119);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_18_cold_1();
  }

  dispatch_group_leave(*(a1 + 32));
}

void __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_19(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(v17, 0, sizeof(v17));
  __brc_create_section(0, "[BRUploadAllFilesForLogOutOperation main]_block_invoke", 131, 0, v17);
  v2 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation main]_block_invoke", 131);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_19_cold_1(v17);
  }

  v4 = +[BRRemoteUserDefaults sharedDefaults];
  v5 = [v4 excludedFilenamesWorthWarningAtLogout];

  v6 = +[BRRemoteUserDefaults sharedDefaults];
  v7 = [v6 excludedExtensionsWorthPreserving];

  v8 = +[BRContainer allContainers];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_21;
  v14[3] = &unk_1E7A15CC8;
  v9 = v5;
  v15 = v9;
  v10 = v7;
  v16 = v10;
  *(*(*(a1 + 32) + 8) + 24) = [v8 br_any_of:v14];

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v11 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation main]_block_invoke", 139);
    v12 = brc_default_log(1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_1AE2A9000, v12, OS_LOG_TYPE_DEFAULT, "[NOTICE] there are files that we're never going to upload on the file system%@", buf, 0xCu);
    }
  }

  __brc_leave_section(v17);
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_21(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation main]_block_invoke", 135);
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 identifier];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] checking for excluded files in %@%@", &v10, 0x16u);
  }

  if ([v3 isDocumentScopePublic])
  {
    v7 = [v3 containsExcludedDocumentsOnTheFSWithExcludedButPreservedFilename:*(a1 + 32) excludedButPreservedExtensions:*(a1 + 40) andStampUploadedAppWithXattr:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_26()
{
  v0 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation main]_block_invoke", 146);
  v1 = brc_default_log(1, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_26_cold_1();
  }
}

void __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_27(uint64_t a1)
{
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v2 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation main]_block_invoke", 151);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_27_cold_1(&v15);
  }

  v4 = dispatch_group_create();
  v5 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation main]_block_invoke", 154);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_27_cold_2();
  }

  v7 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_28;
  block[3] = &unk_1E7A15D10;
  v8 = *(a1 + 48);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v9 = *(a1 + 32);
  v12 = v8;
  v11 = v9;
  dispatch_group_notify(v4, v7, block);

  __brc_leave_section(&v15);
}

void __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_28(uint64_t a1)
{
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  v2 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation main]_block_invoke", 157);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_28_cold_1(&v7);
  }

  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4 || (v4 = *(*(*(a1 + 48) + 8) + 40)) != 0)
  {
    v5 = v4;
  }

  else
  {
    if (*(*(*(a1 + 56) + 8) + 24) != 1)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BRCloudDocsErrorDomain" code:1000 userInfo:{0, v7, v8}];
  }

  v6 = v5;
LABEL_7:
  [*(a1 + 32) completedWithResult:0 error:{v6, v7, v8}];

  __brc_leave_section(&v7);
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation finishWithResult:error:]", 174);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"success";
    if (v6)
    {
      v10 = v6;
    }

    *buf = 138412546;
    v20 = v10;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEFAULT, "[NOTICE] uploading all files for logout finished\n  status: %@%@", buf, 0x16u);
  }

  [(BRProgressProxy *)self->_progress stop];
  v11 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation finishWithResult:error:]", 178);
  v12 = brc_default_log(1, 0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [BRUploadAllFilesForLogOutOperation finishWithResult:error:];
  }

  v13 = [(BRUploadAllFilesForLogOutOperation *)self uploadAllFilesCompletionBlock];
  v14 = v13;
  if (v13)
  {
    (*(v13 + 16))(v13, v6);
    [(BRUploadAllFilesForLogOutOperation *)self setUploadAllFilesCompletionBlock:0];
  }

  v15 = brc_bread_crumbs("[BRUploadAllFilesForLogOutOperation finishWithResult:error:]", 181);
  v16 = brc_default_log(1, 0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [BRUploadAllFilesForLogOutOperation finishWithResult:error:];
  }

  v18.receiver = self;
  v18.super_class = BRUploadAllFilesForLogOutOperation;
  [(BROperation *)&v18 finishWithResult:v7 error:v6];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)evictAllFilesInGroup:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v1, v2, "[DEBUG] ┏%llx evicting data%@");
  v3 = *MEMORY[0x1E69E9840];
}

void __59__BRUploadAllFilesForLogOutOperation_evictAllFilesInGroup___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1AE2A9000, v1, 0x90u, "[ERROR] eviction error: %@%@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] Waiting for FPFS migration: %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_18_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] uploading all files: %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_19_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v1, v2, "[DEBUG] ┏%llx checking for excluded files%@");
  v3 = *MEMORY[0x1E69E9840];
}

void __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_26_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] Request to set should keep local data on Sign Out done%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_27_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v1, v2, "[DEBUG] ┳%llx operations finished%@");
  v3 = *MEMORY[0x1E69E9840];
}

void __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_27_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] Skip evicting all files%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __42__BRUploadAllFilesForLogOutOperation_main__block_invoke_28_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v1, v2, "[DEBUG] ┳%llx container eviction finished%@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] calling callback%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] calling super%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end