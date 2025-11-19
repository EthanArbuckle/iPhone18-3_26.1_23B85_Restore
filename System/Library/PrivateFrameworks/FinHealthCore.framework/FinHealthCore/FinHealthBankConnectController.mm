@interface FinHealthBankConnectController
+ (id)sharedInstance;
- (id)_init;
- (void)_parityCheckBetweenWalletSourceTransaction:(id)a3 andFinanceSourceTransaction:(id)a4;
- (void)updateTransactionsWithCompletion:(id)a3;
@end

@implementation FinHealthBankConnectController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FinHealthBankConnectController sharedInstance];
  }

  v3 = sharedInstance_fhBankConnectController;

  return v3;
}

uint64_t __48__FinHealthBankConnectController_sharedInstance__block_invoke()
{
  sharedInstance_fhBankConnectController = [[FinHealthBankConnectController alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = FinHealthBankConnectController;
  return [(FinHealthBankConnectController *)&v3 init];
}

- (void)updateTransactionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_TtC13FinHealthCore19FinanceKitDataStore);
  v6 = [[FHDatabaseManager alloc] init:0];
  v7 = [v6 processingDataForFeature:@"FHProcessingHistoryBankConnectTransactions"];
  v8 = [v6 getFHAccounts];
  [(FinHealthBankConnectController *)self setUpdateInProgress:1];
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__FinHealthBankConnectController_updateTransactionsWithCompletion___block_invoke;
  v17[3] = &unk_2785CAF28;
  objc_copyWeak(&v19, &location);
  v9 = v6;
  v18 = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__FinHealthBankConnectController_updateTransactionsWithCompletion___block_invoke_83;
  v14[3] = &unk_2785CAF78;
  objc_copyWeak(&v16, &location);
  v10 = v9;
  v15 = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__FinHealthBankConnectController_updateTransactionsWithCompletion___block_invoke_87;
  v12[3] = &unk_2785CAFA0;
  v12[4] = self;
  v11 = v4;
  v13 = v11;
  [(FinanceKitDataStore *)v5 streamTransactionsSince:v7 savedAccounts:v8 transactionHandler:v17 accountHandler:v14 completionHandler:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __67__FinHealthBankConnectController_updateTransactionsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v75 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v56 = WeakRetained;
    v58 = v7;
    v59 = v8;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v12 = v7;
    v62 = [v12 countByEnumeratingWithState:&v67 objects:v74 count:16];
    v57 = v9;
    if (!v62)
    {
      LOBYTE(v15) = 1;
      goto LABEL_41;
    }

    v13 = *v68;
    v14 = @"FinHealthCore";
    v15 = 1;
    v60 = a1;
    while (1)
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v68 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v67 + 1) + 8 * i);
        v18 = *(a1 + 32);
        v19 = [v17 identifier];
        v20 = [v18 getTransactionByIdentifier:v19];

        if (![v20 transactionInternalState] && objc_msgSend(v17, "accountType") == 4 && (objc_msgSend(*(a1 + 32), "insertTransactionInInternalStateDirty:", v17) & 1) == 0)
        {
          v21 = FinHealthLogObject(v14);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = [v17 identifier];
            *buf = 138412290;
            v73 = v22;
            _os_log_impl(&dword_226DD4000, v21, OS_LOG_TYPE_ERROR, "Failed to insert initial bankConnect transaction with transaction identifier: %@", buf, 0xCu);
          }

          v15 = 0;
        }

        if ([v17 accountType] != 4)
        {
          if ([v17 accountType] != 2 && objc_msgSend(v17, "accountType") != 1)
          {
            goto LABEL_34;
          }

          v30 = [v17 transactionServiceIdentifier];

          if (v30)
          {
            if ([*(a1 + 32) updateFinanceIdentifiers:v17])
            {
              goto LABEL_34;
            }
          }

          else
          {
            v33 = FinHealthLogObject(v14);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              v34 = [v17 financeTransactionIdentifier];
              *buf = 138412290;
              v73 = v34;
              _os_log_impl(&dword_226DD4000, v33, OS_LOG_TYPE_DEBUG, "No transaction service identifier for financeTransactionIdentifier %@ for Card/Cash  from FinanceKit source", buf, 0xCu);
            }
          }

LABEL_31:
          v35 = FinHealthLogObject(v14);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = [v17 identifier];
            *buf = 138412290;
            v73 = v36;
            _os_log_impl(&dword_226DD4000, v35, OS_LOG_TYPE_ERROR, "Failed to update transaction with financeTransactionIdentifier: %@", buf, 0xCu);
          }

          v15 = 0;
          goto LABEL_34;
        }

        if ([v17 bankConnectTransactionHasBeenUpdatedFrom:v20])
        {
          v23 = [*(a1 + 32) updateTransactionInternalStateByTransaction:v17 newInternalState:7];
          v24 = FinHealthLogObject(v14);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [v17 identifier];
            v25 = v14;
            v26 = v13;
            v27 = v12;
            v29 = v28 = v15;
            *buf = 138412290;
            v73 = v29;
            _os_log_impl(&dword_226DD4000, v24, OS_LOG_TYPE_DEBUG, "Updating BC transaction %@", buf, 0xCu);

            v15 = v28;
            v12 = v27;
            v13 = v26;
            v14 = v25;
            a1 = v60;
          }

          if ((v23 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v31 = FinHealthLogObject(v14);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v32 = [v17 identifier];
            *buf = 138412290;
            v73 = v32;
            _os_log_impl(&dword_226DD4000, v31, OS_LOG_TYPE_DEBUG, "Updating BC transaction %@ without recomputing insights", buf, 0xCu);
          }

          if (([*(a1 + 32) updateTransactionInternalStateByTransaction:v17 newInternalState:2] & 1) == 0)
          {
            goto LABEL_31;
          }
        }

LABEL_34:
      }

      v62 = [v12 countByEnumeratingWithState:&v67 objects:v74 count:16];
      if (!v62)
      {
LABEL_41:
        v61 = v15;

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v38 = v59;
        v39 = [v38 countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (!v39)
        {
          goto LABEL_64;
        }

        v40 = v39;
        v41 = *v64;
        while (1)
        {
          for (j = 0; j != v40; ++j)
          {
            if (*v64 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v63 + 1) + 8 * j);
            v44 = [*(a1 + 32) getTransactionByFinanceTransactionIdentifier:v43];
            v45 = v44;
            if (v44)
            {
              if ([v44 accountType] == 4)
              {
                v46 = [*(a1 + 32) deleteBankConnectTransactionWithFinanceTransactionIdentifier:v43];
                v47 = FinHealthLogObject(@"FinHealthCore");
                v48 = v47;
                if (v46)
                {
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v73 = v43;
                    v49 = v48;
                    v50 = OS_LOG_TYPE_DEBUG;
                    v51 = "Deleted bank connect transaction with financeTransactionIdentifier: %@";
                    goto LABEL_60;
                  }

                  goto LABEL_61;
                }

                if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_61;
                }

                *buf = 138412290;
                v73 = v43;
                v49 = v48;
                v50 = OS_LOG_TYPE_ERROR;
                v51 = "Failed to delete bank connect transaction with financeTransactionIdentifier: %@";
                goto LABEL_60;
              }

              if ([v45 accountType] == 2 || objc_msgSend(v45, "accountType") == 1)
              {
                v52 = [*(a1 + 32) removeFinanceTransactionIdentifier:v43];
                v53 = FinHealthLogObject(@"FinHealthCore");
                v48 = v53;
                if (v52)
                {
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v73 = v43;
                    v49 = v48;
                    v50 = OS_LOG_TYPE_DEBUG;
                    v51 = "Removed financeTransactionIdentifier value of card/cash transaction with financeTransactionIdentifier: %@ from FinanceKit source";
                    goto LABEL_60;
                  }

LABEL_61:

                  goto LABEL_62;
                }

                if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_61;
                }

                *buf = 138412290;
                v73 = v43;
                v49 = v48;
                v50 = OS_LOG_TYPE_ERROR;
                v51 = "Failed to remove financeTransactionIdentifier from card/cash transaction with financeTransactionIdentifier: %@";
LABEL_60:
                _os_log_impl(&dword_226DD4000, v49, v50, v51, buf, 0xCu);
                goto LABEL_61;
              }
            }

LABEL_62:
          }

          v40 = [v38 countByEnumeratingWithState:&v63 objects:v71 count:16];
          if (!v40)
          {
LABEL_64:

            v7 = v58;
            v8 = v59;
            v11 = v56;
            v9 = v57;
            if ((v61 & 1) != 0 && [v57 length])
            {
              v54 = FinHealthLogObject(@"FinHealthCore");
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v73 = v57;
                _os_log_impl(&dword_226DD4000, v54, OS_LOG_TYPE_DEBUG, "Saving history token: %@", buf, 0xCu);
              }

              [*(a1 + 32) updateProcessingTimeForFeature:@"FHProcessingHistoryBankConnectTransactions" data:v57];
            }

            goto LABEL_69;
          }
        }
      }
    }
  }

  v37 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_226DD4000, v37, OS_LOG_TYPE_INFO, "warning: updateTransactionsWithCompletion : Failed to save transactions because self was released", buf, 2u);
  }

LABEL_69:
  v55 = *MEMORY[0x277D85DE8];
}

uint64_t __67__FinHealthBankConnectController_updateTransactionsWithCompletion___block_invoke_83(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v26 = a3;
  v24 = v5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *v36 = 0;
    v37 = v36;
    v38 = 0x2020000000;
    v39 = 1;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v7)
    {
      v8 = *v33;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          if (([v10 accountType] == 4 || objc_msgSend(v10, "accountType") == 5) && (objc_msgSend(*(a1 + 32), "insertOrUpdateBankConnectAccount:", v10) & 1) == 0)
          {
            v37[24] = 0;
            v11 = FinHealthLogObject(@"FinHealthCore");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v12 = [v10 accountID];
              *buf = 138412290;
              v42 = v12;
              _os_log_impl(&dword_226DD4000, v11, OS_LOG_TYPE_ERROR, "Failed to update account with accountID: %@", buf, 0xCu);
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v32 objects:v43 count:16];
      }

      while (v7);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v26;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v14)
    {
      v15 = *v29;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v28 + 1) + 8 * j);
          if ([v17 accountType] == 4 || objc_msgSend(v17, "accountType") == 5)
          {
            v18 = *(a1 + 32);
            v19 = [v17 accountID];
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __67__FinHealthBankConnectController_updateTransactionsWithCompletion___block_invoke_84;
            v27[3] = &unk_2785CAF50;
            v27[4] = v17;
            v27[5] = v36;
            [v18 deleteAllDataForTransactionSourceIdentifier:v19 force:1 completion:v27];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v14);
    }

    v20 = v37[24];
    _Block_object_dispose(v36, 8);
  }

  else
  {
    v21 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v36 = 0;
      _os_log_impl(&dword_226DD4000, v21, OS_LOG_TYPE_INFO, "warning: updateTransactionsWithCompletion : Failed to save accounts because self was released", v36, 2u);
    }

    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

void __67__FinHealthBankConnectController_updateTransactionsWithCompletion___block_invoke_84(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v6 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) accountID];
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_ERROR, "Failed to delete account with accountID: %@ with error=%@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __67__FinHealthBankConnectController_updateTransactionsWithCompletion___block_invoke_87(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = FinHealthLogObject(@"FinHealthCore");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 localizedFailureReason];
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_ERROR, "mergeTransactionsWithCompletion : failed with error = %@ reason = %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_DEBUG, "mergeTransactionsWithCompletion : complete", &v8, 2u);
  }

  [*(a1 + 32) setUpdateInProgress:0];
  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_parityCheckBetweenWalletSourceTransaction:(id)a3 andFinanceSourceTransaction:(id)a4
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 amount];
  v8 = [v6 amount];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    if ([v5 transactionType] != 3)
    {
      goto LABEL_4;
    }

    v10 = MEMORY[0x277CCA980];
    v11 = [v5 amount];
    v12 = [v10 abs:v11];
    v13 = MEMORY[0x277CCA980];
    v14 = [v6 amount];
    v15 = [v13 abs:v14];
    v16 = [v12 compare:v15];

    if (v16)
    {
LABEL_4:
      v12 = FinHealthLogObject(@"FinHealthCore");
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_7:

        goto LABEL_8;
      }

      v17 = [v5 identifier];
      v18 = [v5 amount];
      v19 = [v6 amount];
      *v91 = 138413058;
      *&v91[4] = v17;
      *&v91[12] = 2112;
      *&v91[14] = @"amount";
      *&v91[22] = 2112;
      v92 = v18;
      *v93 = 2112;
      *&v93[2] = v19;
      v20 = "parity check for transaction %@ - %@ not match: [Wallet source] %@,  [FK source] %@";
      v21 = v12;
      v22 = 42;
LABEL_6:
      _os_log_impl(&dword_226DD4000, v21, OS_LOG_TYPE_ERROR, v20, v91, v22);

      goto LABEL_7;
    }

    v87 = [v5 peerPaymentType];
    if (v87 == 2)
    {
      v12 = [v6 amount];
      v15 = [MEMORY[0x277CCA980] zero];
      if ([v12 compare:v15]== -1)
      {

        goto LABEL_7;
      }

      if ([v5 peerPaymentType] != 1)
      {

LABEL_45:
        v12 = FinHealthLogObject(@"FinHealthCore");
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v17 = [v5 identifier];
        v18 = [v5 amount];
        v19 = [v6 amount];
        *v91 = 138413314;
        *&v91[4] = v17;
        *&v91[12] = 2112;
        *&v91[14] = @"amount";
        *&v91[22] = 2112;
        v92 = v18;
        *v93 = 2112;
        *&v93[2] = v19;
        *&v93[10] = 2048;
        *&v93[12] = [v5 peerPaymentType];
        v20 = "parity check for transaction %@ - %@ not match: [Wallet source] %@,  [FK source] %@, peerPaymentType: %lu";
        v21 = v12;
        v22 = 52;
        goto LABEL_6;
      }
    }

    else if ([v5 peerPaymentType] != 1)
    {
      goto LABEL_45;
    }

    v88 = [v6 amount];
    v89 = [MEMORY[0x277CCA980] zero];
    v90 = [v88 compare:v89];

    if (v87 == 2)
    {
    }

    if (v90 != 1)
    {
      goto LABEL_45;
    }
  }

LABEL_8:
  v23 = [v5 currencyCode];
  v24 = [v6 currencyCode];
  v25 = [v23 isEqualToString:v24];

  if ((v25 & 1) == 0)
  {
    v26 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [v5 identifier];
      v28 = [v5 currencyCode];
      v29 = [v6 currencyCode];
      *v91 = 138413058;
      *&v91[4] = v27;
      *&v91[12] = 2112;
      *&v91[14] = @"currencyCode";
      *&v91[22] = 2112;
      v92 = v28;
      *v93 = 2112;
      *&v93[2] = v29;
      _os_log_impl(&dword_226DD4000, v26, OS_LOG_TYPE_ERROR, "parity check for transaction %@ - %@ not match: [Wallet source] %@,  [FK source] %@", v91, 0x2Au);
    }
  }

  v30 = [v5 transactionDate];
  [v30 timeIntervalSinceReferenceDate];
  v32 = v31;
  v33 = [v6 transactionDate];
  [v33 timeIntervalSinceReferenceDate];
  v35 = v34;

  if (v32 != v35)
  {
    v36 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [v5 identifier];
      v38 = [v5 transactionDate];
      v39 = [v5 transactionDate];
      [v39 timeIntervalSinceReferenceDate];
      v41 = v40;
      v42 = [v6 transactionDate];
      v43 = [v6 transactionDate];
      [v43 timeIntervalSinceReferenceDate];
      *v91 = 138413570;
      *&v91[4] = v37;
      *&v91[12] = 2112;
      *&v91[14] = @"transactionDate";
      *&v91[22] = 2112;
      v92 = v38;
      *v93 = 2048;
      *&v93[2] = v41;
      *&v93[10] = 2112;
      *&v93[12] = v42;
      *&v93[20] = 2048;
      *&v93[22] = v44;
      _os_log_impl(&dword_226DD4000, v36, OS_LOG_TYPE_ERROR, "parity check for transaction %@ - %@ not match: [Wallet source] %@ timestamp: %f,  [FK source] %@ timestamp: %f", v91, 0x3Eu);
    }
  }

  v45 = [v5 transactionStatusChangedDate];
  [v45 timeIntervalSinceReferenceDate];
  v47 = v46;
  v48 = [v6 transactionStatusChangedDate];
  [v48 timeIntervalSinceReferenceDate];
  v50 = v49;

  if (v47 != v50)
  {
    v51 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = [v5 identifier];
      v53 = [v5 transactionStatusChangedDate];
      v54 = [v5 transactionStatusChangedDate];
      [v54 timeIntervalSinceReferenceDate];
      v56 = v55;
      v57 = [v6 transactionStatusChangedDate];
      v58 = [v6 transactionStatusChangedDate];
      [v58 timeIntervalSinceReferenceDate];
      *v91 = 138413570;
      *&v91[4] = v52;
      *&v91[12] = 2112;
      *&v91[14] = @"transactionStatusChangedDate";
      *&v91[22] = 2112;
      v92 = v53;
      *v93 = 2048;
      *&v93[2] = v56;
      *&v93[10] = 2112;
      *&v93[12] = v57;
      *&v93[20] = 2048;
      *&v93[22] = v59;
      _os_log_impl(&dword_226DD4000, v51, OS_LOG_TYPE_ERROR, "parity check for transaction %@ - %@ not match: [Wallet source] %@ timestamp: %f,  [FK source] %@ timestamp: %f", v91, 0x3Eu);
    }
  }

  v60 = [v5 name];
  v61 = [v6 name];
  v62 = FHEqualStrings(v60, v61);

  if ((v62 & 1) == 0)
  {
    v63 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = [v5 identifier];
      v65 = [v5 name];
      v66 = [v6 name];
      *v91 = 138413058;
      *&v91[4] = v64;
      *&v91[12] = 2112;
      *&v91[14] = @"name";
      *&v91[22] = 2112;
      v92 = v65;
      *v93 = 2112;
      *&v93[2] = v66;
      _os_log_impl(&dword_226DD4000, v63, OS_LOG_TYPE_ERROR, "parity check for transaction %@ - %@ not match: [Wallet source] %@,  [FK source] %@", v91, 0x2Au);
    }
  }

  v67 = [v5 displayName];
  v68 = [v6 displayName];
  v69 = FHEqualStrings(v67, v68);

  if ((v69 & 1) == 0)
  {
    v70 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v71 = [v5 identifier];
      v72 = [v5 displayName];
      v73 = [v6 displayName];
      *v91 = 138413058;
      *&v91[4] = v71;
      *&v91[12] = 2112;
      *&v91[14] = @"displayName";
      *&v91[22] = 2112;
      v92 = v72;
      *v93 = 2112;
      *&v93[2] = v73;
      _os_log_impl(&dword_226DD4000, v70, OS_LOG_TYPE_ERROR, "parity check for transaction %@ - %@ not match: [Wallet source] %@,  [FK source] %@", v91, 0x2Au);
    }
  }

  v74 = [v5 location];
  v75 = [v6 location];
  v76 = FHEqualObjects(v74, v75);

  if ((v76 & 1) == 0)
  {
    v77 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      v78 = [v5 identifier];
      v79 = [v5 location];
      v80 = [v6 location];
      *v91 = 138413058;
      *&v91[4] = v78;
      *&v91[12] = 2112;
      *&v91[14] = @"location";
      *&v91[22] = 2112;
      v92 = v79;
      *v93 = 2112;
      *&v93[2] = v80;
      _os_log_impl(&dword_226DD4000, v77, OS_LOG_TYPE_ERROR, "parity check for transaction %@ - %@ not match: [Wallet source] %@,  [FK source] %@", v91, 0x2Au);
    }
  }

  v81 = [v5 transactionStatus];
  if (v81 != [v6 transactionStatus])
  {
    v82 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = [v5 identifier];
      v84 = [v5 transactionStatus];
      v85 = [v6 transactionStatus];
      *v91 = 138413058;
      *&v91[4] = v83;
      *&v91[12] = 2112;
      *&v91[14] = @"transactionStatus";
      *&v91[22] = 2048;
      v92 = v84;
      *v93 = 2048;
      *&v93[2] = v85;
      _os_log_impl(&dword_226DD4000, v82, OS_LOG_TYPE_ERROR, "parity check for transaction %@ - %@ not match: [Wallet source] %ld,  [FK source] %ld", v91, 0x2Au);
    }
  }

  v86 = *MEMORY[0x277D85DE8];
}

@end