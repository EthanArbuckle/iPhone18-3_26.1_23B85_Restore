@interface ML3PurchaseHistoryImportOperation
- (BOOL)_performPurchaseHistoryImportWithTransaction:(id)transaction;
- (void)main;
@end

@implementation ML3PurchaseHistoryImportOperation

- (BOOL)_performPurchaseHistoryImportWithTransaction:(id)transaction
{
  v17 = *MEMORY[0x277D85DE8];
  connection = [transaction connection];
  import = [(ML3ImportOperation *)self import];
  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    preferredVideoQuality = [import preferredVideoQuality];
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "importing purchased tracks. import.preferredVideoQuality=%lld", buf, 0xCu);
  }

  if (([(ML3PurchaseHistoryImportOperation *)self isCancelled]& 1) != 0)
  {
    goto LABEL_8;
  }

  v7 = [(ML3DAAPImportOperation *)self performImportOfSourceType:4 usingConnection:connection];
  v8 = os_log_create("com.apple.amp.medialibrary", "Default");
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "successfully processed import data", buf, 2u);
    }

LABEL_8:
    if (([(ML3PurchaseHistoryImportOperation *)self isCancelled]& 1) == 0)
    {
      library = [import library];
      objc_initWeak(buf, library);

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __82__ML3PurchaseHistoryImportOperation__performPurchaseHistoryImportWithTransaction___block_invoke;
      v13[3] = &unk_278760268;
      objc_copyWeak(&v14, buf);
      [connection enqueueBlockForTransactionCommit:v13];
      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }

    v11 = 1;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "failed to process import data", buf, 2u);
  }

  v11 = 0;
LABEL_14:

  return v11;
}

void __82__ML3PurchaseHistoryImportOperation__performPurchaseHistoryImportWithTransaction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained notifyContentsDidChange];
  }
}

- (void)main
{
  v25 = *MEMORY[0x277D85DE8];
  import = [(ML3ImportOperation *)self import];
  trackData = [import trackData];

  if (!trackData)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3PurchaseHistoryImportOperation.mm" lineNumber:35 description:@"Attempted to start purchase history import operation without DAAP payload."];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v7 = v6;
  if (*(v16 + 24) == 1 && ([(ML3PurchaseHistoryImportOperation *)self isCancelled]& 1) == 0)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__ML3PurchaseHistoryImportOperation_main__block_invoke;
    v14[3] = &unk_278765F00;
    v14[4] = self;
    v14[5] = &v15;
    [(ML3ImportOperation *)self _writerTransactionWithBlock:v14];
  }

  v8 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    isCancelled = [(ML3PurchaseHistoryImportOperation *)self isCancelled];
    v10 = *(v16 + 24);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *buf = 67109632;
    v20 = isCancelled;
    v21 = 1024;
    v22 = v10;
    v23 = 2048;
    v24 = v11 - v7;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "[MLPurchaseHistoryImportOperation] Purchase history import operation cancelled=%d success=%d. total time = %.2fs", buf, 0x18u);
  }

  if (*(v16 + 24) == 1)
  {
    v12 = [(ML3PurchaseHistoryImportOperation *)self isCancelled]^ 1;
  }

  else
  {
    v12 = 0;
  }

  [(ML3ImportOperation *)self setSuccess:v12];
  _Block_object_dispose(&v15, 8);
}

uint64_t __41__ML3PurchaseHistoryImportOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _performPurchaseHistoryImportWithTransaction:v5];
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