@interface NPKQuickPaymentSessionCleanupDelegate
- (void)_saveTransactionFromContext:(id)context;
- (void)paymentSession:(id)session didCompleteTransactionForReason:(unint64_t)reason withTransactionContext:(id)context shouldCleanupSession:(BOOL)cleanupSession;
@end

@implementation NPKQuickPaymentSessionCleanupDelegate

- (void)paymentSession:(id)session didCompleteTransactionForReason:(unint64_t)reason withTransactionContext:(id)context shouldCleanupSession:(BOOL)cleanupSession
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      transaction = [contextCopy transaction];
      transitHistory = [contextCopy transitHistory];
      paymentPass = [contextCopy paymentPass];
      uniqueID = [paymentPass uniqueID];
      v17[0] = 67109890;
      v17[1] = reason;
      v18 = 2112;
      v19 = transaction;
      v20 = 2112;
      v21 = transitHistory;
      v22 = 2112;
      v23 = uniqueID;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Cleanup delegate got session complete for reason %d with transaction %@ and transit history %@ for unique ID %@", v17, 0x26u);
    }
  }

  if (reason == 3)
  {
    [(NPKQuickPaymentSessionCleanupDelegate *)self _saveTransactionFromContext:contextCopy];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_saveTransactionFromContext:(id)context
{
  contextCopy = context;
  v3 = objc_alloc_init(MEMORY[0x277D380F0]);
  transaction = [contextCopy transaction];

  if (transaction)
  {
    transaction2 = [contextCopy transaction];
    paymentPass = [contextCopy paymentPass];
    uniqueID = [paymentPass uniqueID];
    paymentApplication = [contextCopy paymentApplication];
    [v3 insertOrUpdatePaymentTransaction:transaction2 forPassUniqueIdentifier:uniqueID paymentApplication:paymentApplication completion:0];
  }

  else
  {
    transitHistory = [contextCopy transitHistory];

    if (!transitHistory)
    {
      goto LABEL_6;
    }

    transaction2 = [contextCopy transitHistory];
    paymentPass = [contextCopy date];
    uniqueID = [contextCopy paymentApplication];
    paymentApplication = [contextCopy paymentPass];
    uniqueID2 = [paymentApplication uniqueID];
    expressState = [contextCopy expressState];
    [v3 processTransitTransactionEventWithHistory:transaction2 transactionDate:paymentPass forPaymentApplication:uniqueID withPassUniqueIdentifier:uniqueID2 expressTransactionState:expressState];
  }

LABEL_6:
}

@end