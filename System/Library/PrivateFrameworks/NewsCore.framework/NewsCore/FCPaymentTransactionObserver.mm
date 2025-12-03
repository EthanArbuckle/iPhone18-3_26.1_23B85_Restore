@interface FCPaymentTransactionObserver
- (FCPaymentTransactionObserverDelegate)delegate;
- (void)failedTransaction:(id)transaction;
- (void)finishTransaction:(id)transaction;
- (void)paymentQueue:(id)queue updatedTransactions:(id)transactions;
@end

@implementation FCPaymentTransactionObserver

- (void)paymentQueue:(id)queue updatedTransactions:(id)transactions
{
  v30 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  transactionsCopy = transactions;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [transactionsCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(transactionsCopy);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = objc_opt_class();
          transactionState = [v13 transactionState];
          *buf = v20;
          v26 = v16;
          v27 = 2048;
          v28 = transactionState;
          _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ transactionState: %lu", buf, 0x16u);
        }

        transactionState2 = [v13 transactionState];
        if (transactionState2 > 2)
        {
          if (transactionState2 != 4)
          {
            if (transactionState2 != 3)
            {
              goto LABEL_16;
            }

LABEL_14:
            [queueCopy finishTransaction:v13];
            [(FCPaymentTransactionObserver *)self finishTransaction:v13];
            goto LABEL_16;
          }
        }

        else
        {
          if (transactionState2 == 1)
          {
            goto LABEL_14;
          }

          if (transactionState2 != 2)
          {
            goto LABEL_16;
          }

          [queueCopy finishTransaction:v13];
        }

        [(FCPaymentTransactionObserver *)self failedTransaction:v13];
LABEL_16:
        ++v12;
      }

      while (v10 != v12);
      v10 = [transactionsCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)finishTransaction:(id)transaction
{
  v16 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  v5 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    payment = [transactionCopy payment];
    productIdentifier = [payment productIdentifier];
    v12 = 138543618;
    v13 = v7;
    v14 = 2048;
    v15 = productIdentifier;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ finish transaction with product identifier: %lu", &v12, 0x16u);
  }

  delegate = [(FCPaymentTransactionObserver *)self delegate];
  [delegate paymentTransactionObserver:self didFinishPurchaseTransaction:transactionCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)failedTransaction:(id)transaction
{
  transactionCopy = transaction;
  delegate = [(FCPaymentTransactionObserver *)self delegate];
  [delegate paymentTransactionObserver:self didFailPurchaseTransactionWithTransaction:transactionCopy];
}

- (FCPaymentTransactionObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end