@interface ML3SubscriptionImportOperation
- (BOOL)_performDAAPImportWithTransaction:(id)a3;
- (void)main;
@end

@implementation ML3SubscriptionImportOperation

- (BOOL)_performDAAPImportWithTransaction:(id)a3
{
  v4 = [a3 connection];
  if (([(ML3SubscriptionImportOperation *)self isCancelled]& 1) == 0)
  {
    v5 = [(ML3DAAPImportOperation *)self performImportOfSourceType:6 usingConnection:v4];
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v8 = "[ML3SubscriptionImportOperation] successfully processed import data";
        v9 = &v13;
        v10 = v7;
        v11 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
        _os_log_impl(&dword_22D2FA000, v10, v11, v8, v9, 2u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "[ML3SubscriptionImportOperation] failed to process import data";
      v9 = buf;
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v5 = 1;
LABEL_10:

  return v5;
}

- (void)main
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [(ML3ImportOperation *)self import];
  v5 = [v4 trackData];
  if (v5)
  {
  }

  else
  {
    v6 = [(ML3ImportOperation *)self import];
    v7 = [v6 playlistData];

    if (v7)
    {
      goto LABEL_5;
    }

    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"ML3SubscriptionImportOperation.mm" lineNumber:26 description:@"Attempted to start subscription import operation without DAAP payload data."];
  }

LABEL_5:
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8;
  if (*(v17 + 24) == 1 && ([(ML3SubscriptionImportOperation *)self isCancelled]& 1) == 0)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __38__ML3SubscriptionImportOperation_main__block_invoke;
    v15[3] = &unk_278765F00;
    v15[4] = self;
    v15[5] = &v16;
    [(ML3ImportOperation *)self _writerTransactionWithBlock:v15];
  }

  v10 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(ML3SubscriptionImportOperation *)self isCancelled];
    v12 = *(v17 + 24);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *buf = 67109632;
    v21 = v11;
    v22 = 1024;
    v23 = v12;
    v24 = 2048;
    v25 = v13 - v9;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "[ML3SubscriptionImportOperation] Subscription import operation cancelled=%d success=%d. total time = %.2fs", buf, 0x18u);
  }

  if (*(v17 + 24) == 1)
  {
    v14 = [(ML3SubscriptionImportOperation *)self isCancelled]^ 1;
  }

  else
  {
    v14 = 0;
  }

  [(ML3ImportOperation *)self setSuccess:v14];
  _Block_object_dispose(&v16, 8);
}

uint64_t __38__ML3SubscriptionImportOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _performDAAPImportWithTransaction:v5];
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