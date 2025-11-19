@interface BRUploadAllFilesOperation
- (BRUploadAllFilesOperation)init;
- (BRUploadAllFilesOperation)initWithContainer:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRUploadAllFilesOperation

- (BRUploadAllFilesOperation)init
{
  v3.receiver = self;
  v3.super_class = BRUploadAllFilesOperation;
  return [(BROperation *)&v3 init];
}

- (BRUploadAllFilesOperation)initWithContainer:(id)a3
{
  v5 = a3;
  v6 = [(BRUploadAllFilesOperation *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, a3);
  }

  return v7;
}

- (void)main
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] wait for uploading all files%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [v6 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"BRPartialErrorsByContainerIDKey"];

  if (v6 && !v9)
  {
    v9 = [MEMORY[0x1E695DF20] dictionary];
  }

  v10 = +[BRContainer allContainersByContainerID];
  v11 = [v9 allKeys];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __52__BRUploadAllFilesOperation_finishWithResult_error___block_invoke;
  v22[3] = &unk_1E7A153C0;
  v12 = v10;
  v23 = v12;
  v13 = [v11 br_copy_if:v22];

  if ([v13 count])
  {
    v14 = MEMORY[0x1E696ABC0];
    v24 = @"BRErrorAffectedContainersKey";
    v25[0] = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v16 = [v14 errorWithDomain:@"BRCloudDocsErrorDomain" code:1002 userInfo:v15];

    v6 = v15;
LABEL_8:

    goto LABEL_9;
  }

  if (v6)
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BRCloudDocsErrorDomain" code:1000 userInfo:0];
    goto LABEL_8;
  }

  v16 = 0;
LABEL_9:
  v17 = MEMORY[0x1B26FEA90](self->_uploadAllFilesCompletion);
  v18 = v17;
  if (v17)
  {
    (*(v17 + 16))(v17, v16);
    uploadAllFilesCompletion = self->_uploadAllFilesCompletion;
    self->_uploadAllFilesCompletion = 0;
  }

  v21.receiver = self;
  v21.super_class = BRUploadAllFilesOperation;
  [(BROperation *)&v21 finishWithResult:v7 error:v16];

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __52__BRUploadAllFilesOperation_finishWithResult_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = [v2 isDocumentScopePublic];

  return v3 ^ 1u;
}

@end