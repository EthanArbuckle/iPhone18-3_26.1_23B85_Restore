@interface FPDExtensionIndexer
- (void)dropIndexForReason:(unint64_t)a3 completion:(id)a4;
- (void)indexOneBatchWithCompletionHandler:(id)a3;
@end

@implementation FPDExtensionIndexer

- (void)indexOneBatchWithCompletionHandler:(id)a3
{
  v4 = a3;
  v9 = [(FPDDomainIndexer *)self domain];
  v5 = [v9 session];
  v6 = [v5 newFileProviderProxyWithTimeout:0 pid:180.0];
  v7 = [(FPDDomainIndexer *)self domain];
  v8 = [v7 identifier];
  [v6 indexOneBatchInDomain:v8 completionHandler:v4];
}

- (void)dropIndexForReason:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(FPDDomainIndexer *)self domain];
  v8 = [v7 session];
  v9 = [v8 newFileProviderProxyWithTimeout:0 pid:180.0];

  v10 = [(FPDDomainIndexer *)self domain];
  v11 = [v10 identifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__FPDExtensionIndexer_dropIndexForReason_completion___block_invoke;
  v13[3] = &unk_1E83C1C98;
  v14 = v6;
  v15 = a3;
  v13[4] = self;
  v12 = v6;
  [v9 dropIndexForDomain:v11 dropReason:a3 completionHandler:v13];
}

void __53__FPDExtensionIndexer_dropIndexForReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__FPDExtensionIndexer_dropIndexForReason_completion___block_invoke_cold_1(v3, v4);
    }

    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v9.receiver = *(a1 + 32);
    v9.super_class = FPDExtensionIndexer;
    objc_msgSendSuper2(&v9, sel_dropIndexForReason_completion_, v5, v6);
  }

  else
  {
    v7 = [*(a1 + 32) state];
    [v7 recordIndexDropReason:*(a1 + 48)];

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }
  }
}

void __53__FPDExtensionIndexer_dropIndexForReason_completion___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 fp_prettyDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Failed to drop index in extension, will try in fileproviderd, error %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end