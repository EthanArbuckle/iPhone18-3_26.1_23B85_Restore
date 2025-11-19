@interface PDFinanceSyncManager
- (BOOL)_canSyncAccountToFinanceKit:(id)a3;
- (BOOL)_canSyncPeerPaymentAccountToFinanceKit:(id)a3;
- (BOOL)_canSyncTransactionToFinanceKit:(id)a3;
- (PDFinanceSyncManager)initWithDatabaseManager:(id)a3;
- (id)_fkAppleAccountFromAccount:(id)a3;
- (id)_fkAppleAccountFromPeerPaymentAccount:(id)a3;
- (void)retryTimerFired;
- (void)sync;
- (void)syncIfNeeded;
@end

@implementation PDFinanceSyncManager

- (PDFinanceSyncManager)initWithDatabaseManager:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PDFinanceSyncManager;
  v6 = [(PDFinanceSyncManager *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.passd.pdfinancesyncmanager.work", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_databaseManager, a3);
    v10 = objc_alloc_init(NSMutableDictionary);
    insertionErrorCounts = v6->_insertionErrorCounts;
    v6->_insertionErrorCounts = v10;

    v6->_errorRetryCount = 0;
  }

  return v6;
}

- (void)retryTimerFired
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Retry timer fired", v4, 2u);
  }

  atomic_store(0, &self->_isBusy);
  [(PDFinanceSyncManager *)self syncIfNeeded];
}

- (void)syncIfNeeded
{
  v2 = atomic_load(&self->_needsSync);
  if (v2)
  {
    v3 = 0;
    atomic_compare_exchange_strong(&self->_isBusy, &v3, 1u);
    if (!v3)
    {
      [(PDFinanceSyncManager *)self sync];
    }
  }
}

- (void)sync
{
  v3 = PDOSTransactionCreate("PDFinanceSyncManager.sync");
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D7FB0;
  v6[3] = &unk_10083C420;
  v7 = v3;
  v8 = self;
  v5 = v3;
  dispatch_async(queue, v6);
}

- (BOOL)_canSyncAccountToFinanceKit:(id)a3
{
  v3 = a3;
  v4 = [v3 accountIdentifier];
  if (!v4)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      v17 = "Not syncing account to FinanceKit because there is no account identifier set on the account";
      v18 = v12;
      v19 = 2;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, &v29, v19);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v5 = [v3 lastUpdated];

  if (!v5)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = v4;
      v17 = "Not syncing account with identifier %@ to FinanceKit because there is no lastUpdated set on the account";
LABEL_16:
      v18 = v12;
      v19 = 12;
      goto LABEL_17;
    }

LABEL_28:
    v7 = 0;
    goto LABEL_29;
  }

  v6 = [v3 type];
  v7 = 0;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 4)
      {
        goto LABEL_30;
      }

      v20 = [v3 savingsDetails];
      v21 = [v20 currencyCode];

      if (!v21)
      {
        v12 = PKLogFacilityTypeGetObject();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        v29 = 138412290;
        v30 = v4;
        v17 = "Not syncing account with identifier %@ to FinanceKit because there is no currencyCode set on the account";
        goto LABEL_16;
      }

      v22 = [v3 savingsDetails];
      v23 = [v22 accountSummary];
      v12 = [v23 currentBalance];

      v7 = v12 != 0;
      if (v12)
      {
LABEL_29:

        goto LABEL_30;
      }

      v24 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_27:

        goto LABEL_28;
      }

      v29 = 138412290;
      v30 = v4;
      v25 = "Temporarily not syncing account with identifier %@ to FinanceKit because there is no currentBalance";
      v26 = v24;
      v27 = 12;
LABEL_26:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, &v29, v27);
      goto LABEL_27;
    }

LABEL_24:
    v12 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    [v3 type];
    v24 = PKAccountTypeToString();
    v29 = 138412546;
    v30 = v4;
    v31 = 2112;
    v32 = v24;
    v25 = "Not syncing account %@ to FinanceKit since its type (%@) is not supported";
    v26 = v12;
    v27 = 22;
    goto LABEL_26;
  }

  if (!v6)
  {
    goto LABEL_24;
  }

  if (v6 == 1)
  {
    v8 = [v3 creditDetails];
    v9 = [v8 currencyCode];

    if (v9)
    {
      v10 = [v3 creditDetails];
      v11 = [v10 totalBalance];
      v12 = [v11 amount];

      v13 = [v3 creditDetails];
      v14 = [v13 accountSummary];
      v15 = [v14 availableCredit];

      v7 = (v12 | v15) != 0;
      if (!(v12 | v15))
      {
        v16 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 138412290;
          v30 = v4;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not syncing account with identifier %@ to FinanceKit because there is no totalBalance and no availableCredit", &v29, 0xCu);
        }
      }

      goto LABEL_29;
    }

    v12 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v29 = 138412290;
    v30 = v4;
    v17 = "Not syncing account with identifier %@ to FinanceKit because there is no currencyCode set on the account";
    goto LABEL_16;
  }

LABEL_30:

  return v7;
}

- (BOOL)_canSyncPeerPaymentAccountToFinanceKit:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  if (v4)
  {
    v5 = [v3 currentBalance];
    v6 = [v5 currency];

    if (v6)
    {
      v7 = [v3 lastUpdated];

      if (v7)
      {
        if ([v3 stage] == 1)
        {
          v8 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 138412290;
            v17 = v4;
            v9 = "Not syncing peer payment account with identifier %@ to FinanceKit because it is at anonymous stage";
LABEL_13:
            v10 = v8;
            v11 = 12;
            goto LABEL_14;
          }
        }

        else
        {
          v14 = [v3 currentBalance];
          v8 = [v14 amount];

          v12 = v8 != 0;
          if (v8)
          {
            goto LABEL_16;
          }

          v15 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 138412290;
            v17 = v4;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not syncing peer payment account with identifier %@ to FinanceKit because there is no currentBalance", &v16, 0xCu);
          }
        }
      }

      else
      {
        v8 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138412290;
          v17 = v4;
          v9 = "Not syncing peer payment account with identifier %@ to FinanceKit because there is no lastUpdated set on the account";
          goto LABEL_13;
        }
      }
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v4;
        v9 = "Not syncing peer payment account with identifier %@ to FinanceKit because there is no currency set on the account";
        goto LABEL_13;
      }
    }
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v9 = "Not syncing peer payment account with nil identifier to FinanceKit";
      v10 = v8;
      v11 = 2;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v16, v11);
    }
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (BOOL)_canSyncTransactionToFinanceKit:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  if (!v4)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v10 = [v3 identifier];
    v17 = 138412290;
    v18 = v10;
    v11 = "Not syncing transaction with identifier %@ to FinanceKit because there is no identifier set on the transaction";
    v12 = v8;
    v13 = 12;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);

    goto LABEL_18;
  }

  v5 = [v3 accountIdentifier];

  if (!v5)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v4;
      v9 = "Not syncing transaction with identifier %@ to FinanceKit because there is no account identifier set on the transaction";
      goto LABEL_17;
    }

LABEL_18:

    goto LABEL_19;
  }

  v6 = [v3 currencyCode];

  if (!v6)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v4;
      v9 = "Not syncing transaction with identifier %@ to FinanceKit because there is no currencyCode set on the transaction";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v7 = [v3 transactionDate];

  if (!v7)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v4;
      v9 = "Not syncing transaction with identifier %@ to FinanceKit because there is no transactionDate set on the transaction";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if ([v3 transactionType] == 14)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v4;
      v9 = "Not syncing transaction with identifier %@ to FinanceKit because its type is PKPaymentTransactionTypeInstallmentPlan";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v17, 0xCu);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v16 = [v3 accountType];
  if ((v16 - 1) < 3)
  {
    v14 = 1;
    goto LABEL_20;
  }

  if (v16 == 4 || !v16)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    [v3 accountType];
    v10 = PKPaymentTransactionAccountTypeToString();
    v17 = 138412546;
    v18 = v4;
    v19 = 2112;
    v20 = v10;
    v11 = "Not syncing transaction with identifier %@ to FinanceKit because the account type is unknown %@";
    v12 = v8;
    v13 = 22;
    goto LABEL_10;
  }

LABEL_19:
  v14 = 0;
LABEL_20:

  return v14;
}

- (id)_fkAppleAccountFromAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 accountIdentifier];
  v5 = [v3 lastUpdated];
  v6 = [v3 state] - 3;
  if (v6 > 2)
  {
    v40 = 0;
  }

  else
  {
    v40 = qword_10068E140[v6];
  }

  v7 = [v3 type];
  if (v7 == 4)
  {
    v30 = [v3 savingsDetails];
    v31 = [v30 accountSummary];
    v29 = [v31 currentBalance];

    v32 = [v3 savingsDetails];
    v33 = [v32 accountSummary];
    v42 = [v33 currentBalance];

    v34 = [v3 savingsDetails];
    v39 = [v34 currencyCode];

    v19 = PKLocalizedFeatureString();
    v28 = 0;
    v18 = 0;
    v22 = 0;
    v27 = 0;
    v35 = 2;
  }

  else
  {
    if (v7 == 1)
    {
      v8 = [v3 creditDetails];
      v9 = [v8 totalBalance];
      v37 = [v9 amount];

      v10 = [v3 creditDetails];
      v11 = [v10 accountSummary];
      v12 = [v11 remainingMinimumPayment];

      v13 = [v3 creditDetails];
      v14 = [v13 accountSummary];
      v42 = [v14 availableCredit];

      v15 = [v3 creditDetails];
      v39 = [v15 currencyCode];

      v16 = [v3 creditDetails];
      v17 = [v16 accountSummary];
      v18 = [v17 paymentDueDate];

      [v3 feature];
      v19 = PKLocalizedFeatureString();
      v20 = [v3 creditDetails];
      v21 = [v20 accountSummary];
      v22 = [v21 creditLimit];

      v23 = [v3 creditDetails];
      [v23 accountSummary];
      v24 = v5;
      v26 = v25 = v4;
      v27 = [v26 pastDueAmount];

      v4 = v25;
      v5 = v24;
      v28 = v12;
      v29 = v37;

      v38 = 0;
      goto LABEL_10;
    }

    v42 = 0;
    v28 = 0;
    v39 = 0;
    v18 = 0;
    v29 = 0;
    v19 = 0;
    v22 = 0;
    v27 = 0;
    v35 = -1;
  }

  v38 = v35;
LABEL_10:
  v41 = [[FKAppleAccount alloc] initWithAccountIdentifier:v4 currentBalance:v29 totalBalance:v42 currency:v39 status:v40 type:v38 creditLimit:v22 minimumDueAmount:v28 nextPaymentDueDate:v18 lastUpdated:v5 displayName:v19 openingDate:0 overduePaymentAmount:v27];

  return v41;
}

- (id)_fkAppleAccountFromPeerPaymentAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v3 currentBalance];
  v6 = [v5 amount];

  v7 = v6;
  v8 = [v3 currentBalance];
  v9 = [v8 currency];

  v10 = [v3 lastUpdated];
  v11 = PKLocalizedPeerPaymentString(@"APPLE_CASH");
  v12 = [v3 state];

  if (v12 == 4)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2 * (v12 == 3);
  }

  v14 = [[FKAppleAccount alloc] initWithAccountIdentifier:v4 currentBalance:v7 totalBalance:v7 currency:v9 status:v13 type:1 creditLimit:0 minimumDueAmount:0 nextPaymentDueDate:0 lastUpdated:v10 displayName:v11 openingDate:0 overduePaymentAmount:0];

  return v14;
}

@end