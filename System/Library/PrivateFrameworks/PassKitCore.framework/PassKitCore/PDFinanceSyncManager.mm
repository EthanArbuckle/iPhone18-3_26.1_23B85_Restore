@interface PDFinanceSyncManager
- (BOOL)_canSyncAccountToFinanceKit:(id)kit;
- (BOOL)_canSyncPeerPaymentAccountToFinanceKit:(id)kit;
- (BOOL)_canSyncTransactionToFinanceKit:(id)kit;
- (PDFinanceSyncManager)initWithDatabaseManager:(id)manager;
- (id)_fkAppleAccountFromAccount:(id)account;
- (id)_fkAppleAccountFromPeerPaymentAccount:(id)account;
- (void)retryTimerFired;
- (void)sync;
- (void)syncIfNeeded;
@end

@implementation PDFinanceSyncManager

- (PDFinanceSyncManager)initWithDatabaseManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = PDFinanceSyncManager;
  v6 = [(PDFinanceSyncManager *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.passd.pdfinancesyncmanager.work", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_databaseManager, manager);
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
  selfCopy = self;
  v5 = v3;
  dispatch_async(queue, v6);
}

- (BOOL)_canSyncAccountToFinanceKit:(id)kit
{
  kitCopy = kit;
  accountIdentifier = [kitCopy accountIdentifier];
  if (!accountIdentifier)
  {
    currentBalance = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(currentBalance, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      v17 = "Not syncing account to FinanceKit because there is no account identifier set on the account";
      v18 = currentBalance;
      v19 = 2;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, &v29, v19);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  lastUpdated = [kitCopy lastUpdated];

  if (!lastUpdated)
  {
    currentBalance = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(currentBalance, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = accountIdentifier;
      v17 = "Not syncing account with identifier %@ to FinanceKit because there is no lastUpdated set on the account";
LABEL_16:
      v18 = currentBalance;
      v19 = 12;
      goto LABEL_17;
    }

LABEL_28:
    v7 = 0;
    goto LABEL_29;
  }

  type = [kitCopy type];
  v7 = 0;
  if (type > 2)
  {
    if (type != 3)
    {
      if (type != 4)
      {
        goto LABEL_30;
      }

      savingsDetails = [kitCopy savingsDetails];
      currencyCode = [savingsDetails currencyCode];

      if (!currencyCode)
      {
        currentBalance = PKLogFacilityTypeGetObject();
        if (!os_log_type_enabled(currentBalance, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        v29 = 138412290;
        v30 = accountIdentifier;
        v17 = "Not syncing account with identifier %@ to FinanceKit because there is no currencyCode set on the account";
        goto LABEL_16;
      }

      savingsDetails2 = [kitCopy savingsDetails];
      accountSummary = [savingsDetails2 accountSummary];
      currentBalance = [accountSummary currentBalance];

      v7 = currentBalance != 0;
      if (currentBalance)
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
      v30 = accountIdentifier;
      v25 = "Temporarily not syncing account with identifier %@ to FinanceKit because there is no currentBalance";
      v26 = v24;
      v27 = 12;
LABEL_26:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, &v29, v27);
      goto LABEL_27;
    }

LABEL_24:
    currentBalance = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(currentBalance, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    [kitCopy type];
    v24 = PKAccountTypeToString();
    v29 = 138412546;
    v30 = accountIdentifier;
    v31 = 2112;
    v32 = v24;
    v25 = "Not syncing account %@ to FinanceKit since its type (%@) is not supported";
    v26 = currentBalance;
    v27 = 22;
    goto LABEL_26;
  }

  if (!type)
  {
    goto LABEL_24;
  }

  if (type == 1)
  {
    creditDetails = [kitCopy creditDetails];
    currencyCode2 = [creditDetails currencyCode];

    if (currencyCode2)
    {
      creditDetails2 = [kitCopy creditDetails];
      totalBalance = [creditDetails2 totalBalance];
      currentBalance = [totalBalance amount];

      creditDetails3 = [kitCopy creditDetails];
      accountSummary2 = [creditDetails3 accountSummary];
      availableCredit = [accountSummary2 availableCredit];

      v7 = (currentBalance | availableCredit) != 0;
      if (!(currentBalance | availableCredit))
      {
        v16 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 138412290;
          v30 = accountIdentifier;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not syncing account with identifier %@ to FinanceKit because there is no totalBalance and no availableCredit", &v29, 0xCu);
        }
      }

      goto LABEL_29;
    }

    currentBalance = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(currentBalance, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v29 = 138412290;
    v30 = accountIdentifier;
    v17 = "Not syncing account with identifier %@ to FinanceKit because there is no currencyCode set on the account";
    goto LABEL_16;
  }

LABEL_30:

  return v7;
}

- (BOOL)_canSyncPeerPaymentAccountToFinanceKit:(id)kit
{
  kitCopy = kit;
  identifier = [kitCopy identifier];
  if (identifier)
  {
    currentBalance = [kitCopy currentBalance];
    currency = [currentBalance currency];

    if (currency)
    {
      lastUpdated = [kitCopy lastUpdated];

      if (lastUpdated)
      {
        if ([kitCopy stage] == 1)
        {
          amount = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(amount, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 138412290;
            v17 = identifier;
            v9 = "Not syncing peer payment account with identifier %@ to FinanceKit because it is at anonymous stage";
LABEL_13:
            v10 = amount;
            v11 = 12;
            goto LABEL_14;
          }
        }

        else
        {
          currentBalance2 = [kitCopy currentBalance];
          amount = [currentBalance2 amount];

          v12 = amount != 0;
          if (amount)
          {
            goto LABEL_16;
          }

          v15 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 138412290;
            v17 = identifier;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not syncing peer payment account with identifier %@ to FinanceKit because there is no currentBalance", &v16, 0xCu);
          }
        }
      }

      else
      {
        amount = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(amount, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138412290;
          v17 = identifier;
          v9 = "Not syncing peer payment account with identifier %@ to FinanceKit because there is no lastUpdated set on the account";
          goto LABEL_13;
        }
      }
    }

    else
    {
      amount = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(amount, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = identifier;
        v9 = "Not syncing peer payment account with identifier %@ to FinanceKit because there is no currency set on the account";
        goto LABEL_13;
      }
    }
  }

  else
  {
    amount = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(amount, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v9 = "Not syncing peer payment account with nil identifier to FinanceKit";
      v10 = amount;
      v11 = 2;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v16, v11);
    }
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (BOOL)_canSyncTransactionToFinanceKit:(id)kit
{
  kitCopy = kit;
  identifier = [kitCopy identifier];
  if (!identifier)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    identifier2 = [kitCopy identifier];
    v17 = 138412290;
    v18 = identifier2;
    v11 = "Not syncing transaction with identifier %@ to FinanceKit because there is no identifier set on the transaction";
    v12 = v8;
    v13 = 12;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);

    goto LABEL_18;
  }

  accountIdentifier = [kitCopy accountIdentifier];

  if (!accountIdentifier)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = identifier;
      v9 = "Not syncing transaction with identifier %@ to FinanceKit because there is no account identifier set on the transaction";
      goto LABEL_17;
    }

LABEL_18:

    goto LABEL_19;
  }

  currencyCode = [kitCopy currencyCode];

  if (!currencyCode)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = identifier;
      v9 = "Not syncing transaction with identifier %@ to FinanceKit because there is no currencyCode set on the transaction";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  transactionDate = [kitCopy transactionDate];

  if (!transactionDate)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = identifier;
      v9 = "Not syncing transaction with identifier %@ to FinanceKit because there is no transactionDate set on the transaction";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if ([kitCopy transactionType] == 14)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = identifier;
      v9 = "Not syncing transaction with identifier %@ to FinanceKit because its type is PKPaymentTransactionTypeInstallmentPlan";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v17, 0xCu);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  accountType = [kitCopy accountType];
  if ((accountType - 1) < 3)
  {
    v14 = 1;
    goto LABEL_20;
  }

  if (accountType == 4 || !accountType)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    [kitCopy accountType];
    identifier2 = PKPaymentTransactionAccountTypeToString();
    v17 = 138412546;
    v18 = identifier;
    v19 = 2112;
    v20 = identifier2;
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

- (id)_fkAppleAccountFromAccount:(id)account
{
  accountCopy = account;
  accountIdentifier = [accountCopy accountIdentifier];
  lastUpdated = [accountCopy lastUpdated];
  v6 = [accountCopy state] - 3;
  if (v6 > 2)
  {
    v40 = 0;
  }

  else
  {
    v40 = qword_10068E140[v6];
  }

  type = [accountCopy type];
  if (type == 4)
  {
    savingsDetails = [accountCopy savingsDetails];
    accountSummary = [savingsDetails accountSummary];
    currentBalance = [accountSummary currentBalance];

    savingsDetails2 = [accountCopy savingsDetails];
    accountSummary2 = [savingsDetails2 accountSummary];
    currentBalance2 = [accountSummary2 currentBalance];

    savingsDetails3 = [accountCopy savingsDetails];
    currencyCode = [savingsDetails3 currencyCode];

    v19 = PKLocalizedFeatureString();
    v28 = 0;
    paymentDueDate = 0;
    creditLimit = 0;
    pastDueAmount = 0;
    v35 = 2;
  }

  else
  {
    if (type == 1)
    {
      creditDetails = [accountCopy creditDetails];
      totalBalance = [creditDetails totalBalance];
      amount = [totalBalance amount];

      creditDetails2 = [accountCopy creditDetails];
      accountSummary3 = [creditDetails2 accountSummary];
      remainingMinimumPayment = [accountSummary3 remainingMinimumPayment];

      creditDetails3 = [accountCopy creditDetails];
      accountSummary4 = [creditDetails3 accountSummary];
      currentBalance2 = [accountSummary4 availableCredit];

      creditDetails4 = [accountCopy creditDetails];
      currencyCode = [creditDetails4 currencyCode];

      creditDetails5 = [accountCopy creditDetails];
      accountSummary5 = [creditDetails5 accountSummary];
      paymentDueDate = [accountSummary5 paymentDueDate];

      [accountCopy feature];
      v19 = PKLocalizedFeatureString();
      creditDetails6 = [accountCopy creditDetails];
      accountSummary6 = [creditDetails6 accountSummary];
      creditLimit = [accountSummary6 creditLimit];

      creditDetails7 = [accountCopy creditDetails];
      [creditDetails7 accountSummary];
      v24 = lastUpdated;
      v26 = v25 = accountIdentifier;
      pastDueAmount = [v26 pastDueAmount];

      accountIdentifier = v25;
      lastUpdated = v24;
      v28 = remainingMinimumPayment;
      currentBalance = amount;

      v38 = 0;
      goto LABEL_10;
    }

    currentBalance2 = 0;
    v28 = 0;
    currencyCode = 0;
    paymentDueDate = 0;
    currentBalance = 0;
    v19 = 0;
    creditLimit = 0;
    pastDueAmount = 0;
    v35 = -1;
  }

  v38 = v35;
LABEL_10:
  v41 = [[FKAppleAccount alloc] initWithAccountIdentifier:accountIdentifier currentBalance:currentBalance totalBalance:currentBalance2 currency:currencyCode status:v40 type:v38 creditLimit:creditLimit minimumDueAmount:v28 nextPaymentDueDate:paymentDueDate lastUpdated:lastUpdated displayName:v19 openingDate:0 overduePaymentAmount:pastDueAmount];

  return v41;
}

- (id)_fkAppleAccountFromPeerPaymentAccount:(id)account
{
  accountCopy = account;
  identifier = [accountCopy identifier];
  currentBalance = [accountCopy currentBalance];
  amount = [currentBalance amount];

  v7 = amount;
  currentBalance2 = [accountCopy currentBalance];
  currency = [currentBalance2 currency];

  lastUpdated = [accountCopy lastUpdated];
  v11 = PKLocalizedPeerPaymentString(@"APPLE_CASH");
  state = [accountCopy state];

  if (state == 4)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2 * (state == 3);
  }

  v14 = [[FKAppleAccount alloc] initWithAccountIdentifier:identifier currentBalance:v7 totalBalance:v7 currency:currency status:v13 type:1 creditLimit:0 minimumDueAmount:0 nextPaymentDueDate:0 lastUpdated:lastUpdated displayName:v11 openingDate:0 overduePaymentAmount:0];

  return v14;
}

@end