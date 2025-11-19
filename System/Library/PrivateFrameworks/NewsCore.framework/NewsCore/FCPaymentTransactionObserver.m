@interface FCPaymentTransactionObserver
- (FCPaymentTransactionObserverDelegate)delegate;
- (void)failedTransaction:(id)a3;
- (void)finishTransaction:(id)a3;
- (void)paymentQueue:(id)a3 updatedTransactions:(id)a4;
@end

@implementation FCPaymentTransactionObserver

- (void)paymentQueue:(id)a3 updatedTransactions:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v22;
    *&v9 = 138543618;
    v20 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = objc_opt_class();
          v17 = [v13 transactionState];
          *buf = v20;
          v26 = v16;
          v27 = 2048;
          v28 = v17;
          _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ transactionState: %lu", buf, 0x16u);
        }

        v18 = [v13 transactionState];
        if (v18 > 2)
        {
          if (v18 != 4)
          {
            if (v18 != 3)
            {
              goto LABEL_16;
            }

LABEL_14:
            [v6 finishTransaction:v13];
            [(FCPaymentTransactionObserver *)self finishTransaction:v13];
            goto LABEL_16;
          }
        }

        else
        {
          if (v18 == 1)
          {
            goto LABEL_14;
          }

          if (v18 != 2)
          {
            goto LABEL_16;
          }

          [v6 finishTransaction:v13];
        }

        [(FCPaymentTransactionObserver *)self failedTransaction:v13];
LABEL_16:
        ++v12;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)finishTransaction:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = [v4 payment];
    v9 = [v8 productIdentifier];
    v12 = 138543618;
    v13 = v7;
    v14 = 2048;
    v15 = v9;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ finish transaction with product identifier: %lu", &v12, 0x16u);
  }

  v10 = [(FCPaymentTransactionObserver *)self delegate];
  [v10 paymentTransactionObserver:self didFinishPurchaseTransaction:v4];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)failedTransaction:(id)a3
{
  v4 = a3;
  v5 = [(FCPaymentTransactionObserver *)self delegate];
  [v5 paymentTransactionObserver:self didFailPurchaseTransactionWithTransaction:v4];
}

- (FCPaymentTransactionObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end