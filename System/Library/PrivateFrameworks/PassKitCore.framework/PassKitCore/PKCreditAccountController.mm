@interface PKCreditAccountController
+ (BOOL)_shouldDisplayBalanceAndTransactionsForTransactionSourceCollection:(id)collection;
+ (BOOL)_shouldDisplayBalanceForAccount:(id)account;
+ (BOOL)_shouldDisplayTransactionsForAccount:(id)account;
+ (BOOL)shouldDisplayAccountInformationForTransactionSourceCollection:(id)collection withAccount:(id)account;
+ (BOOL)shouldDisplayScheduledPaymentsWithAccount:(id)account andPass:(id)pass;
+ (BOOL)shouldDisplayTransactionsForTransactionSourceCollection:(id)collection withAccount:(id)account;
+ (BOOL)shouldShowCardNumbersWithAccountAvailabilityInfo:(id)info dpanSuffixForPaymentApplication:(id)application;
+ (id)relevantScheduledPaymentFromScheduledPayments:(id)payments account:(id)account;
+ (unint64_t)paymentEducationStateForAccount:(id)account mostRecentTransactions:(id)transactions pendingPayments:(id)payments upcomingScheduledPayments:(id)scheduledPayments;
+ (void)resolutionToReceiveCashbackForAccount:(id)account accountUser:(id)user withPeerPaymentAccount:(id)paymentAccount completion:(id)completion;
@end

@implementation PKCreditAccountController

+ (void)resolutionToReceiveCashbackForAccount:(id)account accountUser:(id)user withPeerPaymentAccount:(id)paymentAccount completion:(id)completion
{
  accountCopy = account;
  userCopy = user;
  paymentAccountCopy = paymentAccount;
  completionCopy = completion;
  if (completionCopy)
  {
    creditDetails = [accountCopy creditDetails];
    v14 = creditDetails;
    if (accountCopy && creditDetails)
    {
      rewardsDestination = [creditDetails rewardsDestination];
      v16 = +[PKAccountService sharedInstance];
      v17 = objc_opt_new();
      v45[0] = 0;
      v45[1] = v45;
      v45[2] = 0x3032000000;
      v45[3] = __Block_byref_object_copy__52;
      v45[4] = __Block_byref_object_dispose__52;
      v46 = 0;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __113__PKCreditAccountController_resolutionToReceiveCashbackForAccount_accountUser_withPeerPaymentAccount_completion___block_invoke;
      v42[3] = &unk_1E79CD7C0;
      v18 = v16;
      v43 = v18;
      v44 = v45;
      [v17 addOperation:v42];
      v40[0] = 0;
      v40[1] = v40;
      v40[2] = 0x3032000000;
      v40[3] = __Block_byref_object_copy__52;
      v40[4] = __Block_byref_object_dispose__52;
      v41 = 0;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __113__PKCreditAccountController_resolutionToReceiveCashbackForAccount_accountUser_withPeerPaymentAccount_completion___block_invoke_3;
      v34[3] = &unk_1E79DAB10;
      v24 = v18;
      v35 = v24;
      v19 = rewardsDestination;
      v39 = rewardsDestination;
      v20 = accountCopy;
      v36 = v20;
      v21 = userCopy;
      v37 = v21;
      v38 = v40;
      [v17 addOperation:v34];
      null = [MEMORY[0x1E695DFB0] null];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __113__PKCreditAccountController_resolutionToReceiveCashbackForAccount_accountUser_withPeerPaymentAccount_completion___block_invoke_5;
      v25[3] = &unk_1E79DAB38;
      v26 = v14;
      v27 = v21;
      v28 = v20;
      v31 = v40;
      v32 = v45;
      v29 = paymentAccountCopy;
      v33 = v19;
      v30 = completionCopy;
      v23 = [v17 evaluateWithInput:null completion:v25];

      _Block_object_dispose(v40, 8);
      _Block_object_dispose(v45, 8);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0);
    }
  }
}

void __113__PKCreditAccountController_resolutionToReceiveCashbackForAccount_accountUser_withPeerPaymentAccount_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __113__PKCreditAccountController_resolutionToReceiveCashbackForAccount_accountUser_withPeerPaymentAccount_completion___block_invoke_2;
  v12[3] = &unk_1E79DAAC0;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = v7;
  v15 = v8;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  [v9 defaultAccountForFeature:5 completion:v12];
}

void __113__PKCreditAccountController_resolutionToReceiveCashbackForAccount_accountUser_withPeerPaymentAccount_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void __113__PKCreditAccountController_resolutionToReceiveCashbackForAccount_accountUser_withPeerPaymentAccount_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) accountIdentifier];
  v11 = [*(a1 + 48) altDSID];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __113__PKCreditAccountController_resolutionToReceiveCashbackForAccount_accountUser_withPeerPaymentAccount_completion___block_invoke_4;
  v15[3] = &unk_1E79DAAE8;
  v12 = *(a1 + 56);
  v17 = v7;
  v18 = v12;
  v16 = v6;
  v13 = v6;
  v14 = v7;
  [v9 lastRedemptionEventToDestination:v8 forAccountIdentifier:v10 altDSID:v11 completion:v15];
}

void __113__PKCreditAccountController_resolutionToReceiveCashbackForAccount_accountUser_withPeerPaymentAccount_completion___block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void __113__PKCreditAccountController_resolutionToReceiveCashbackForAccount_accountUser_withPeerPaymentAccount_completion___block_invoke_5(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) accountSummary];
  v3 = [v2 redeemableRewardsBalanceForUser:*(a1 + 40)];
  v4 = [v3 pk_isPositiveNumber];
  if ([*(a1 + 48) accessLevel] != 1)
  {
    v11 = 0;
    goto LABEL_29;
  }

  v5 = *(*(*(a1 + 72) + 8) + 40);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_17;
  }

  v6 = [v5 items];
  v7 = [v6 anyObject];

  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(*(a1 + 72) + 8) + 40);
      *v30 = 138412290;
      *&v30[4] = v13;
      v14 = "Redemption allowed, malformed last event %@";
LABEL_12:
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, v14, v30, 0xCu);
    }

LABEL_13:

    goto LABEL_14;
  }

  v8 = [v7 status];
  v9 = v8;
  if (v8 != @"success")
  {
    if (v8)
    {
      v10 = [(__CFString *)v8 isEqualToString:@"success"];

      if (v10)
      {
        goto LABEL_8;
      }

      if (!v4)
      {
LABEL_14:
        v11 = 2;
        goto LABEL_15;
      }
    }

    else if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }

    v12 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(*(*(a1 + 72) + 8) + 40);
      *v30 = 138412290;
      *&v30[4] = v29;
      v14 = "Redemption allowed, user has pending rewards and last redemption was not successful %@";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_8:

  v11 = 1;
LABEL_15:

LABEL_17:
  v15 = *(*(*(a1 + 80) + 8) + 40);
  if (v15)
  {
    v16 = [v15 state] == 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    if ([v17 stage] != 1)
    {
      goto LABEL_29;
    }

    v18 = [*(a1 + 56) state] != 1;
  }

  else
  {
    v18 = 0;
  }

  if (!v16 && (v4 & 1) != 0 && !v18)
  {
    v19 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Redemption allowed, user has pending rewards and Cash and Savings accounts not set up or ineligible", v30, 2u);
    }
  }

LABEL_29:
  v20 = [*(a1 + 48) redeemRewardsFeatureDescriptor];
  v21 = [v20 supportedDestinations];
  v22 = PKAccountRewardRedemptionTypeToString(1);
  v23 = [v21 containsObject:v22];

  if (*(a1 + 88) != 3 && v23 && *(a1 + 56))
  {
    v24 = +[PKPassLibrary sharedInstance];
    v25 = [*(a1 + 56) associatedPassUniqueID];
    v26 = [v24 passWithUniqueID:v25];
    v27 = [v26 paymentPass];

    v28 = PKPeerPaymentAccountResolutionForAccountAndPeerPaymentPass(*(a1 + 56), v27);
    if ((v28 - 1) >= 4 && !v28 && v11 == 2)
    {
      [*(a1 + 56) stage];
    }
  }

  (*(*(a1 + 64) + 16))();
}

+ (BOOL)shouldDisplayAccountInformationForTransactionSourceCollection:(id)collection withAccount:(id)account
{
  collectionCopy = collection;
  accountCopy = account;
  paymentPass = [collectionCopy paymentPass];
  devicePrimaryPaymentApplication = [paymentPass devicePrimaryPaymentApplication];

  if ([accountCopy feature] == 2 && objc_msgSend(accountCopy, "isClosedAndChargedOff") && !devicePrimaryPaymentApplication)
  {
    v10 = [self _shouldDisplayBalanceForAccount:accountCopy];
  }

  else
  {
    if (![self _shouldDisplayBalanceForAccount:accountCopy])
    {
      v11 = 0;
      goto LABEL_9;
    }

    v10 = [self _shouldDisplayBalanceAndTransactionsForTransactionSourceCollection:collectionCopy];
  }

  v11 = v10;
LABEL_9:

  return v11;
}

+ (BOOL)shouldDisplayTransactionsForTransactionSourceCollection:(id)collection withAccount:(id)account
{
  collectionCopy = collection;
  if ([self _shouldDisplayTransactionsForAccount:account])
  {
    v7 = [self _shouldDisplayBalanceAndTransactionsForTransactionSourceCollection:collectionCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)_shouldDisplayBalanceAndTransactionsForTransactionSourceCollection:(id)collection
{
  paymentPass = [collection paymentPass];
  devicePrimaryPaymentApplication = [paymentPass devicePrimaryPaymentApplication];

  if (devicePrimaryPaymentApplication)
  {
    state = [devicePrimaryPaymentApplication state];
    if (state <= 0xF)
    {
      v6 = 0x867Eu >> state;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

+ (BOOL)_shouldDisplayBalanceForAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy blockAllAccountAccess])
  {
    v4 = 0;
  }

  else
  {
    creditDetails = [accountCopy creditDetails];
    if (creditDetails && (v6 = [accountCopy state], v6 <= 5) && ((1 << v6) & 0x29) == 0)
    {
      if (((1 << v6) & 6) != 0)
      {
        v4 = 1;
      }

      else
      {
        creditDetails2 = [accountCopy creditDetails];
        accountSummary = [creditDetails2 accountSummary];
        currentBalance = [accountSummary currentBalance];

        v4 = 0;
        if ([accountCopy supportsSchedulePayment] && currentBalance)
        {
          zero = [MEMORY[0x1E696AB90] zero];
          v4 = [currentBalance compare:zero] != 0;
        }
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (BOOL)_shouldDisplayTransactionsForAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy blockAllAccountAccess])
  {
    v4 = 0;
  }

  else
  {
    creditDetails = [accountCopy creditDetails];
    if (creditDetails && (v6 = [accountCopy state], v6 <= 5) && ((1 << v6) & 0x29) == 0)
    {
      if (((1 << v6) & 6) != 0)
      {
        v4 = 1;
      }

      else
      {
        creditDetails2 = [accountCopy creditDetails];
        accountSummary = [creditDetails2 accountSummary];
        currentBalance = [accountSummary currentBalance];

        if (currentBalance)
        {
          zero = [MEMORY[0x1E696AB90] zero];
          v4 = [currentBalance compare:zero] != 0;
        }

        else
        {
          v4 = 0;
        }
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)relevantScheduledPaymentFromScheduledPayments:(id)payments account:(id)account
{
  v43 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v6 = MEMORY[0x1E695DEE8];
  paymentsCopy = payments;
  v8 = [v6 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  creditDetails = [accountCopy creditDetails];
  productTimeZone = [creditDetails productTimeZone];
  [v9 setTimeZone:productTimeZone];

  date = [MEMORY[0x1E695DF00] date];
  v33 = [v9 components:28 fromDate:date];
  v34 = v9;
  v13 = [v9 dateFromComponents:v33];

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __83__PKCreditAccountController_relevantScheduledPaymentFromScheduledPayments_account___block_invoke;
  v40[3] = &unk_1E79DAB60;
  v32 = accountCopy;
  v41 = v32;
  v14 = [paymentsCopy pk_objectsPassingTest:v40];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = 0;
    v19 = *v37;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v36 + 1) + 8 * i);
        scheduleDetails = [v21 scheduleDetails];
        frequency = [scheduleDetails frequency];

        scheduleDetails2 = [v21 scheduleDetails];
        scheduledDate = [scheduleDetails2 scheduledDate];

        if (frequency >= 2 && ([scheduledDate compare:v13] == 1 || !objc_msgSend(scheduledDate, "compare:", v13)) && (!v18 || v17 && objc_msgSend(scheduledDate, "compare:", v17) == -1))
        {
          v26 = v21;

          scheduleDetails3 = [v26 scheduleDetails];
          scheduledDate2 = [scheduleDetails3 scheduledDate];

          v17 = scheduledDate2;
          v18 = v26;
        }
      }

      v16 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v29 = v41;
  v30 = v18;

  return v18;
}

+ (unint64_t)paymentEducationStateForAccount:(id)account mostRecentTransactions:(id)transactions pendingPayments:(id)payments upcomingScheduledPayments:(id)scheduledPayments
{
  v96 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  transactionsCopy = transactions;
  paymentsCopy = payments;
  scheduledPaymentsCopy = scheduledPayments;
  creditDetails = [accountCopy creditDetails];
  accountSummary = [creditDetails accountSummary];
  remainingStatementBalance = [accountSummary remainingStatementBalance];
  remainingMinimumPayment = [accountSummary remainingMinimumPayment];
  adjustedBalance = [accountSummary adjustedBalance];
  pastDueAmount = [accountSummary pastDueAmount];
  cyclesPastDue = [accountSummary cyclesPastDue];
  paymentDueDate = [accountSummary paymentDueDate];
  v73 = creditDetails;
  createdDate = [creditDetails createdDate];
  firstObject = [transactionsCopy firstObject];
  transactionDate = [firstObject transactionDate];
  v16 = objc_alloc(MEMORY[0x1E695DEE8]);
  v81 = [v16 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v74 = scheduledPaymentsCopy;
  v76 = [self relevantScheduledPaymentFromScheduledPayments:scheduledPaymentsCopy account:accountCopy];
  date = [MEMORY[0x1E695DF00] date];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __126__PKCreditAccountController_paymentEducationStateForAccount_mostRecentTransactions_pendingPayments_upcomingScheduledPayments___block_invoke;
  v93[3] = &unk_1E79DAB88;
  v80 = accountSummary;
  v94 = v80;
  v75 = transactionsCopy;
  v78 = [transactionsCopy pk_objectsPassingTest:v93];
  zero = [MEMORY[0x1E696AB90] zero];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v18 = paymentsCopy;
  v19 = [v18 countByEnumeratingWithState:&v89 objects:v95 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v90;
    do
    {
      v22 = 0;
      v23 = zero;
      do
      {
        if (*v90 != v21)
        {
          objc_enumerationMutation(v18);
        }

        currencyAmount = [*(*(&v89 + 1) + 8 * v22) currencyAmount];
        amount = [currencyAmount amount];
        zero = [v23 decimalNumberByAdding:amount];

        ++v22;
        v23 = zero;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v89 objects:v95 count:16];
    }

    while (v20);
  }

  if (transactionDate)
  {
    v26 = v81;
    v27 = date;
    v28 = [v81 components:128 fromDate:transactionDate toDate:date options:0];
    second = [v28 second];

    v30 = second < 61;
    v32 = firstObject;
    v31 = createdDate;
    if (firstObject)
    {
      goto LABEL_10;
    }

LABEL_16:
    v70 = 0;
    v34 = remainingStatementBalance;
    if (v31)
    {
      goto LABEL_20;
    }

LABEL_23:
    LOBYTE(statementBalance) = 1;
    if (!v34)
    {
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  v30 = 1;
  v32 = firstObject;
  v31 = createdDate;
  v26 = v81;
  v27 = date;
  if (!firstObject)
  {
    goto LABEL_16;
  }

LABEL_10:
  transactionDate2 = [v32 transactionDate];
  if ([v27 compare:transactionDate2] == 1)
  {
    v70 = v30;
    v34 = remainingStatementBalance;
    if ([v32 transactionType] != 10 || objc_msgSend(v32, "transactionStatus") != 1 && objc_msgSend(v32, "transactionStatus"))
    {
      v70 = 0;
    }
  }

  else
  {
    v70 = 0;
    v34 = remainingStatementBalance;
  }

  if (!v31)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (![v26 isDate:v31 equalToDate:v27 toUnitGranularity:8])
  {
    goto LABEL_23;
  }

  LODWORD(statementBalance) = [v26 isDate:v31 equalToDate:v27 toUnitGranularity:4] ^ 1;
  if (!v34)
  {
LABEL_22:
    v36 = 1;
    goto LABEL_25;
  }

LABEL_24:
  v37 = [v34 decimalNumberBySubtracting:zero];
  zero2 = [MEMORY[0x1E696AB90] zero];
  v36 = [v37 compare:zero2] != 1;

LABEL_25:
  if (adjustedBalance)
  {
    zero3 = [MEMORY[0x1E696AB90] zero];
    v40 = [adjustedBalance compare:zero3] == 1;
  }

  else
  {
    v40 = 0;
  }

  if (remainingMinimumPayment)
  {
    v41 = [remainingMinimumPayment decimalNumberBySubtracting:zero];
    zero4 = [MEMORY[0x1E696AB90] zero];
    v67 = [v41 compare:zero4] == 1;
  }

  else
  {
    v67 = 0;
  }

  if (cyclesPastDue <= 0)
  {
    if (pastDueAmount)
    {
      zero5 = [MEMORY[0x1E696AB90] zero];
      v43 = [pastDueAmount compare:zero5] == 1;
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    v43 = 1;
  }

  if ([accountCopy state] == 4)
  {
    v45 = [accountCopy stateReason] == 1 || objc_msgSend(accountCopy, "stateReason") == 8;
    v72 = v45;
  }

  else
  {
    v72 = 0;
  }

  v69 = [v78 count];
  state = [accountCopy state];
  currentStatement = [v80 currentStatement];
  v48 = currentStatement;
  if (currentStatement)
  {
    openingDate = [currentStatement openingDate];
    if (openingDate)
    {
      v66 = accountCopy;
      v50 = v43;
      v51 = v40;
      closingDate = [v48 closingDate];
      if (closingDate)
      {
        v65 = statementBalance;
        statementBalance = [v48 statementBalance];
        if (statementBalance)
        {
          paymentDueDate2 = [v48 paymentDueDate];
          v68 = paymentDueDate2 != 0;
        }

        else
        {
          v68 = 0;
        }

        LOBYTE(statementBalance) = v65;
      }

      else
      {
        v68 = 0;
      }

      v40 = v51;
      v43 = v50;
      accountCopy = v66;
    }

    else
    {
      v68 = 0;
    }
  }

  else
  {
    v68 = 0;
  }

  if (state == 1)
  {
    v54 = statementBalance;
  }

  else
  {
    v54 = 1;
  }

  if ((v54 & 1) == 0)
  {
    v56 = accountCopy;
    if (v76)
    {
      v58 = 9;
    }

    else
    {
      v58 = v40;
    }

    goto LABEL_75;
  }

  if (!v40)
  {
    v56 = accountCopy;
    v58 = 2;
LABEL_75:
    v60 = v74;
    v59 = v75;
    v61 = v73;
    v62 = v76;
    goto LABEL_76;
  }

  v55 = v36;
  v56 = accountCopy;
  v57 = 9;
  if (v70)
  {
    v57 = 7;
  }

  if (v43 || v72)
  {
    v58 = 6;
  }

  else
  {
    v58 = v57;
  }

  if (v43 || v72 || v70)
  {
    goto LABEL_75;
  }

  v60 = v74;
  v59 = v75;
  v61 = v73;
  v62 = v76;
  if (!v76)
  {
    if (v69 != 0 || !v68 || paymentDueDate == 0 || v55)
    {
      v63 = v67;
      if (!paymentDueDate)
      {
        v63 = 0;
      }

      if (v63)
      {
        v58 = 4;
      }

      else if (v55 || !v68)
      {
        v58 = 8;
      }

      else
      {
        v58 = 5;
      }
    }

    else
    {
      v58 = 3;
    }

    v62 = 0;
  }

LABEL_76:

  return v58;
}

BOOL __126__PKCreditAccountController_paymentEducationStateForAccount_mostRecentTransactions_pendingPayments_upcomingScheduledPayments___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 balanceSummary];
  v5 = [v4 openingDate];

  v6 = [v3 transactionDate];
  v7 = [v6 compare:v5];

  v8 = [v3 transactionType];
  v10 = v8 == 10 && v7 == 1;

  return v10;
}

+ (BOOL)shouldDisplayScheduledPaymentsWithAccount:(id)account andPass:(id)pass
{
  accountCopy = account;
  passCopy = pass;
  v7 = [[PKTransactionSource alloc] initWithPaymentPass:passCopy];
  v8 = [[PKTransactionSourceCollection alloc] initWithTransactionSource:v7];
  if (accountCopy)
  {
    creditDetails = [accountCopy creditDetails];
    if (creditDetails)
    {
      associatedAccountServiceAccountIdentifier = [passCopy associatedAccountServiceAccountIdentifier];
      v11 = [associatedAccountServiceAccountIdentifier length] && objc_msgSend(accountCopy, "supportsShowAccountSummary") && +[PKCreditAccountController shouldDisplayAccountInformationForTransactionSourceCollection:withAccount:](PKCreditAccountController, "shouldDisplayAccountInformationForTransactionSourceCollection:withAccount:", v8, accountCopy);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)shouldShowCardNumbersWithAccountAvailabilityInfo:(id)info dpanSuffixForPaymentApplication:(id)application
{
  infoCopy = info;
  applicationCopy = application;
  if ([infoCopy accountType] == 1)
  {
    v7 = [infoCopy accountState] - 3;
    v8 = v7 > 0xFFFFFFFFFFFFFFFDLL;
    supportedFeatures = [infoCopy supportedFeatures];
    v10 = [supportedFeatures pk_hasObjectPassingTest:&__block_literal_global_151];

    if (v7 >= 0xFFFFFFFFFFFFFFFELL && (v10 & 1) == 0)
    {
      v8 = [applicationCopy length] != 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __110__PKCreditAccountController_shouldShowCardNumbersWithAccountAvailabilityInfo_dpanSuffixForPaymentApplication___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = v2;
  if (v2 == @"showVirtualCard")
  {
    v5 = 1;
LABEL_14:

    goto LABEL_15;
  }

  if (!v2 || !@"showVirtualCard")
  {

    goto LABEL_8;
  }

  v4 = [(__CFString *)v2 isEqualToString:@"showVirtualCard"];

  if ((v4 & 1) == 0)
  {
LABEL_8:
    v6 = v3;
    v7 = @"requestPhysicalCard";
    v8 = v7;
    if (v6 == v7)
    {
      v5 = 1;
    }

    else
    {
      v5 = 0;
      if (v3 && v7)
      {
        v5 = [(__CFString *)v6 isEqualToString:v7];
      }
    }

    goto LABEL_14;
  }

  v5 = 1;
LABEL_15:

  return v5;
}

@end