@interface BRShareSaveOperation
+ (BOOL)shouldRetryShareSaveOnError:(id)a3;
- (BRShareSaveOperation)initWithShare:(id)a3;
- (BRShareSaveOperation)initWithShare:(id)a3 fileURL:(id)a4;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRShareSaveOperation

- (BRShareSaveOperation)initWithShare:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BRShareSaveOperation;
  v5 = [(BRShareOperation *)&v8 initWithShare:v4];
  v6 = v5;
  if (v5)
  {
    [(BRShareSaveOperation *)v5 setShare:v4];
  }

  return v6;
}

- (BRShareSaveOperation)initWithShare:(id)a3 fileURL:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = BRShareSaveOperation;
  v7 = [(BRShareOperation *)&v10 initWithURL:a4];
  v8 = v7;
  if (v7)
  {
    [(BRShareSaveOperation *)v7 setShare:v6];
  }

  return v8;
}

- (void)main
{
  v3 = [(BRShareOperation *)self remoteObject];
  v4 = [(CKShare *)self->_share copy];
  br_setShareAssociatedURL(v4, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__BRShareSaveOperation_main__block_invoke;
  v5[3] = &unk_1E7A14BE0;
  v5[4] = self;
  [v3 startOperation:self toSaveSharingInfo:v4 reply:v5];
}

void __28__BRShareSaveOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 url];
  br_setShareAssociatedURL(v8, v7);

  [*(a1 + 32) completedWithResult:v8 error:v6];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRShareSaveOperation *)self shareSaveCompletionBlock];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7);
    [(BRShareSaveOperation *)self setShareSaveCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRShareSaveOperation;
  [(BROperation *)&v10 finishWithResult:v6 error:v7];
}

+ (BOOL)shouldRetryShareSaveOnError:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"BRCloudDocsErrorDomain"];

  if (!v6)
  {
    v10 = [v4 domain];
    v11 = getCKErrorDomain();
    if ([v10 isEqualToString:v11])
    {
      v12 = [v4 code];

      if (v12 == 14)
      {
LABEL_24:
        v9 = 1;
        goto LABEL_25;
      }
    }

    else
    {
    }

    v13 = [v4 domain];
    v14 = getCKErrorDomain();
    if ([v13 isEqualToString:v14])
    {
      v15 = [v4 code];

      if (v15 != 2)
      {
LABEL_23:
        v9 = 0;
        goto LABEL_25;
      }

      v16 = [v4 userInfo];
      v17 = getCKPartialErrorsByItemIDKey();
      v13 = [v16 objectForKeyedSubscript:v17];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = [v13 objectEnumerator];
      v18 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v29;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(v14);
            }

            v22 = *(*(&v28 + 1) + 8 * i);
            v23 = [v22 domain];
            v24 = getCKErrorDomain();
            if ([v23 isEqualToString:v24])
            {
              v25 = [v22 code];

              if (v25 == 14)
              {

                goto LABEL_24;
              }
            }

            else
            {
            }
          }

          v19 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v19);
      }
    }

    goto LABEL_23;
  }

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v8 == v4)
  {
    +[BRShareSaveOperation shouldRetryShareSaveOnError:];
  }

  v9 = [a1 shouldRetryShareSaveOnError:v8];

LABEL_25:
  v26 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (void)shouldRetryShareSaveOnError:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("+[BRShareSaveOperation shouldRetryShareSaveOnError:]", 502);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_1AE2A9000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: error != underlyingError%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end