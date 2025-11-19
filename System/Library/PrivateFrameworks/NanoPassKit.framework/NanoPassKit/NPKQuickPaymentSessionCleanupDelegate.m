@interface NPKQuickPaymentSessionCleanupDelegate
- (void)_saveTransactionFromContext:(id)a3;
- (void)paymentSession:(id)a3 didCompleteTransactionForReason:(unint64_t)a4 withTransactionContext:(id)a5 shouldCleanupSession:(BOOL)a6;
@end

@implementation NPKQuickPaymentSessionCleanupDelegate

- (void)paymentSession:(id)a3 didCompleteTransactionForReason:(unint64_t)a4 withTransactionContext:(id)a5 shouldCleanupSession:(BOOL)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v8 transaction];
      v13 = [v8 transitHistory];
      v14 = [v8 paymentPass];
      v15 = [v14 uniqueID];
      v17[0] = 67109890;
      v17[1] = a4;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Cleanup delegate got session complete for reason %d with transaction %@ and transit history %@ for unique ID %@", v17, 0x26u);
    }
  }

  if (a4 == 3)
  {
    [(NPKQuickPaymentSessionCleanupDelegate *)self _saveTransactionFromContext:v8];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_saveTransactionFromContext:(id)a3
{
  v12 = a3;
  v3 = objc_alloc_init(MEMORY[0x277D380F0]);
  v4 = [v12 transaction];

  if (v4)
  {
    v5 = [v12 transaction];
    v6 = [v12 paymentPass];
    v7 = [v6 uniqueID];
    v8 = [v12 paymentApplication];
    [v3 insertOrUpdatePaymentTransaction:v5 forPassUniqueIdentifier:v7 paymentApplication:v8 completion:0];
  }

  else
  {
    v9 = [v12 transitHistory];

    if (!v9)
    {
      goto LABEL_6;
    }

    v5 = [v12 transitHistory];
    v6 = [v12 date];
    v7 = [v12 paymentApplication];
    v8 = [v12 paymentPass];
    v10 = [v8 uniqueID];
    v11 = [v12 expressState];
    [v3 processTransitTransactionEventWithHistory:v5 transactionDate:v6 forPaymentApplication:v7 withPassUniqueIdentifier:v10 expressTransactionState:v11];
  }

LABEL_6:
}

@end