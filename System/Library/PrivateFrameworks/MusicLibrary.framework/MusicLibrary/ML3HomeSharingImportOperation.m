@interface ML3HomeSharingImportOperation
- (BOOL)_performHomeSharingImportWithTransaction:(id)a3;
- (void)main;
@end

@implementation ML3HomeSharingImportOperation

- (BOOL)_performHomeSharingImportWithTransaction:(id)a3
{
  v4 = [a3 connection];
  if (([(ML3HomeSharingImportOperation *)self isCancelled]& 1) == 0)
  {
    v6 = [(ML3DAAPImportOperation *)self performImportOfSourceType:0 usingConnection:v4];
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        v9 = "successfully processed import data";
        v10 = &v14;
        v11 = v8;
        v12 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
        _os_log_impl(&dword_22D2FA000, v11, v12, v9, v10, 2u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = "failed to process import data";
      v10 = buf;
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = 1;
LABEL_10:
  LODWORD(v5) = 1.0;
  [(ML3ImportOperation *)self setProgress:v5, v14];

  return v6;
}

- (void)main
{
  v21 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__ML3HomeSharingImportOperation_main__block_invoke;
  v10[3] = &unk_278765F00;
  v10[4] = self;
  v10[5] = &v11;
  [(ML3ImportOperation *)self _writerTransactionWithBlock:v10];
  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ML3HomeSharingImportOperation *)self isCancelled];
    v7 = *(v12 + 24);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *buf = 67109632;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    v19 = 2048;
    v20 = v8 - v4;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[MLHomeSharingImportOperation] HomeSharing import operation cancelled=%d success=%d. total time = %.2fs", buf, 0x18u);
  }

  if (*(v12 + 24) == 1)
  {
    v9 = [(ML3HomeSharingImportOperation *)self isCancelled]^ 1;
  }

  else
  {
    v9 = 0;
  }

  [(ML3ImportOperation *)self setSuccess:v9];
  _Block_object_dispose(&v11, 8);
}

uint64_t __37__ML3HomeSharingImportOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _performHomeSharingImportWithTransaction:v5];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    [*(a1 + 32) setError:v6];
  }

  v7 = *(*(*(a1 + 40) + 8) + 24);

  return v7;
}

@end