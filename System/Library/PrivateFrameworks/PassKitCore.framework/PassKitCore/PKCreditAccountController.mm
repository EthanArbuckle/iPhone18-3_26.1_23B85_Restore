@interface PKCreditAccountController
+ (BOOL)_shouldDisplayBalanceAndTransactionsForTransactionSourceCollection:(id)a3;
+ (BOOL)_shouldDisplayBalanceForAccount:(id)a3;
+ (BOOL)_shouldDisplayTransactionsForAccount:(id)a3;
+ (BOOL)shouldDisplayAccountInformationForTransactionSourceCollection:(id)a3 withAccount:(id)a4;
+ (BOOL)shouldDisplayScheduledPaymentsWithAccount:(id)a3 andPass:(id)a4;
+ (BOOL)shouldDisplayTransactionsForTransactionSourceCollection:(id)a3 withAccount:(id)a4;
+ (BOOL)shouldShowCardNumbersWithAccountAvailabilityInfo:(id)a3 dpanSuffixForPaymentApplication:(id)a4;
+ (id)relevantScheduledPaymentFromScheduledPayments:(id)a3 account:(id)a4;
+ (unint64_t)paymentEducationStateForAccount:(id)a3 mostRecentTransactions:(id)a4 pendingPayments:(id)a5 upcomingScheduledPayments:(id)a6;
+ (void)resolutionToReceiveCashbackForAccount:(id)a3 accountUser:(id)a4 withPeerPaymentAccount:(id)a5 completion:(id)a6;
@end

@implementation PKCreditAccountController

+ (void)resolutionToReceiveCashbackForAccount:(id)a3 accountUser:(id)a4 withPeerPaymentAccount:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    v13 = [v9 creditDetails];
    v14 = v13;
    if (v9 && v13)
    {
      v15 = [v13 rewardsDestination];
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
      v19 = v15;
      v39 = v15;
      v20 = v9;
      v36 = v20;
      v21 = v10;
      v37 = v21;
      v38 = v40;
      [v17 addOperation:v34];
      v22 = [MEMORY[0x1E695DFB0] null];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __113__PKCreditAccountController_resolutionToReceiveCashbackForAccount_accountUser_withPeerPaymentAccount_completion___block_invoke_5;
      v25[3] = &unk_1E79DAB38;
      v26 = v14;
      v27 = v21;
      v28 = v20;
      v31 = v40;
      v32 = v45;
      v29 = v11;
      v33 = v19;
      v30 = v12;
      v23 = [v17 evaluateWithInput:v22 completion:v25];

      _Block_object_dispose(v40, 8);
      _Block_object_dispose(v45, 8);
    }

    else
    {
      (*(v12 + 2))(v12, 0, 0, 0, 0);
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

+ (BOOL)shouldDisplayAccountInformationForTransactionSourceCollection:(id)a3 withAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 paymentPass];
  v9 = [v8 devicePrimaryPaymentApplication];

  if ([v7 feature] == 2 && objc_msgSend(v7, "isClosedAndChargedOff") && !v9)
  {
    v10 = [a1 _shouldDisplayBalanceForAccount:v7];
  }

  else
  {
    if (![a1 _shouldDisplayBalanceForAccount:v7])
    {
      v11 = 0;
      goto LABEL_9;
    }

    v10 = [a1 _shouldDisplayBalanceAndTransactionsForTransactionSourceCollection:v6];
  }

  v11 = v10;
LABEL_9:

  return v11;
}

+ (BOOL)shouldDisplayTransactionsForTransactionSourceCollection:(id)a3 withAccount:(id)a4
{
  v6 = a3;
  if ([a1 _shouldDisplayTransactionsForAccount:a4])
  {
    v7 = [a1 _shouldDisplayBalanceAndTransactionsForTransactionSourceCollection:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)_shouldDisplayBalanceAndTransactionsForTransactionSourceCollection:(id)a3
{
  v3 = [a3 paymentPass];
  v4 = [v3 devicePrimaryPaymentApplication];

  if (v4)
  {
    v5 = [v4 state];
    if (v5 <= 0xF)
    {
      v6 = 0x867Eu >> v5;
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

+ (BOOL)_shouldDisplayBalanceForAccount:(id)a3
{
  v3 = a3;
  if ([v3 blockAllAccountAccess])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 creditDetails];
    if (v5 && (v6 = [v3 state], v6 <= 5) && ((1 << v6) & 0x29) == 0)
    {
      if (((1 << v6) & 6) != 0)
      {
        v4 = 1;
      }

      else
      {
        v8 = [v3 creditDetails];
        v9 = [v8 accountSummary];
        v10 = [v9 currentBalance];

        v4 = 0;
        if ([v3 supportsSchedulePayment] && v10)
        {
          v11 = [MEMORY[0x1E696AB90] zero];
          v4 = [v10 compare:v11] != 0;
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

+ (BOOL)_shouldDisplayTransactionsForAccount:(id)a3
{
  v3 = a3;
  if ([v3 blockAllAccountAccess])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 creditDetails];
    if (v5 && (v6 = [v3 state], v6 <= 5) && ((1 << v6) & 0x29) == 0)
    {
      if (((1 << v6) & 6) != 0)
      {
        v4 = 1;
      }

      else
      {
        v8 = [v3 creditDetails];
        v9 = [v8 accountSummary];
        v10 = [v9 currentBalance];

        if (v10)
        {
          v11 = [MEMORY[0x1E696AB90] zero];
          v4 = [v10 compare:v11] != 0;
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

+ (id)relevantScheduledPaymentFromScheduledPayments:(id)a3 account:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MEMORY[0x1E695DEE8];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v10 = [v5 creditDetails];
  v11 = [v10 productTimeZone];
  [v9 setTimeZone:v11];

  v12 = [MEMORY[0x1E695DF00] date];
  v33 = [v9 components:28 fromDate:v12];
  v34 = v9;
  v13 = [v9 dateFromComponents:v33];

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __83__PKCreditAccountController_relevantScheduledPaymentFromScheduledPayments_account___block_invoke;
  v40[3] = &unk_1E79DAB60;
  v32 = v5;
  v41 = v32;
  v14 = [v7 pk_objectsPassingTest:v40];

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
        v22 = [v21 scheduleDetails];
        v23 = [v22 frequency];

        v24 = [v21 scheduleDetails];
        v25 = [v24 scheduledDate];

        if (v23 >= 2 && ([v25 compare:v13] == 1 || !objc_msgSend(v25, "compare:", v13)) && (!v18 || v17 && objc_msgSend(v25, "compare:", v17) == -1))
        {
          v26 = v21;

          v27 = [v26 scheduleDetails];
          v28 = [v27 scheduledDate];

          v17 = v28;
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

+ (unint64_t)paymentEducationStateForAccount:(id)a3 mostRecentTransactions:(id)a4 pendingPayments:(id)a5 upcomingScheduledPayments:(id)a6
{
  v96 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 creditDetails];
  v15 = [v14 accountSummary];
  v88 = [v15 remainingStatementBalance];
  v87 = [v15 remainingMinimumPayment];
  v86 = [v15 adjustedBalance];
  v85 = [v15 pastDueAmount];
  v71 = [v15 cyclesPastDue];
  v77 = [v15 paymentDueDate];
  v73 = v14;
  v84 = [v14 createdDate];
  v83 = [v11 firstObject];
  v82 = [v83 transactionDate];
  v16 = objc_alloc(MEMORY[0x1E695DEE8]);
  v81 = [v16 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v74 = v13;
  v76 = [a1 relevantScheduledPaymentFromScheduledPayments:v13 account:v10];
  v79 = [MEMORY[0x1E695DF00] date];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __126__PKCreditAccountController_paymentEducationStateForAccount_mostRecentTransactions_pendingPayments_upcomingScheduledPayments___block_invoke;
  v93[3] = &unk_1E79DAB88;
  v80 = v15;
  v94 = v80;
  v75 = v11;
  v78 = [v11 pk_objectsPassingTest:v93];
  v17 = [MEMORY[0x1E696AB90] zero];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v89 objects:v95 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v90;
    do
    {
      v22 = 0;
      v23 = v17;
      do
      {
        if (*v90 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = [*(*(&v89 + 1) + 8 * v22) currencyAmount];
        v25 = [v24 amount];
        v17 = [v23 decimalNumberByAdding:v25];

        ++v22;
        v23 = v17;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v89 objects:v95 count:16];
    }

    while (v20);
  }

  if (v82)
  {
    v26 = v81;
    v27 = v79;
    v28 = [v81 components:128 fromDate:v82 toDate:v79 options:0];
    v29 = [v28 second];

    v30 = v29 < 61;
    v32 = v83;
    v31 = v84;
    if (v83)
    {
      goto LABEL_10;
    }

LABEL_16:
    v70 = 0;
    v34 = v88;
    if (v31)
    {
      goto LABEL_20;
    }

LABEL_23:
    LOBYTE(v35) = 1;
    if (!v34)
    {
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  v30 = 1;
  v32 = v83;
  v31 = v84;
  v26 = v81;
  v27 = v79;
  if (!v83)
  {
    goto LABEL_16;
  }

LABEL_10:
  v33 = [v32 transactionDate];
  if ([v27 compare:v33] == 1)
  {
    v70 = v30;
    v34 = v88;
    if ([v32 transactionType] != 10 || objc_msgSend(v32, "transactionStatus") != 1 && objc_msgSend(v32, "transactionStatus"))
    {
      v70 = 0;
    }
  }

  else
  {
    v70 = 0;
    v34 = v88;
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

  LODWORD(v35) = [v26 isDate:v31 equalToDate:v27 toUnitGranularity:4] ^ 1;
  if (!v34)
  {
LABEL_22:
    v36 = 1;
    goto LABEL_25;
  }

LABEL_24:
  v37 = [v34 decimalNumberBySubtracting:v17];
  v38 = [MEMORY[0x1E696AB90] zero];
  v36 = [v37 compare:v38] != 1;

LABEL_25:
  if (v86)
  {
    v39 = [MEMORY[0x1E696AB90] zero];
    v40 = [v86 compare:v39] == 1;
  }

  else
  {
    v40 = 0;
  }

  if (v87)
  {
    v41 = [v87 decimalNumberBySubtracting:v17];
    v42 = [MEMORY[0x1E696AB90] zero];
    v67 = [v41 compare:v42] == 1;
  }

  else
  {
    v67 = 0;
  }

  if (v71 <= 0)
  {
    if (v85)
    {
      v44 = [MEMORY[0x1E696AB90] zero];
      v43 = [v85 compare:v44] == 1;
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

  if ([v10 state] == 4)
  {
    v45 = [v10 stateReason] == 1 || objc_msgSend(v10, "stateReason") == 8;
    v72 = v45;
  }

  else
  {
    v72 = 0;
  }

  v69 = [v78 count];
  v46 = [v10 state];
  v47 = [v80 currentStatement];
  v48 = v47;
  if (v47)
  {
    v49 = [v47 openingDate];
    if (v49)
    {
      v66 = v10;
      v50 = v43;
      v51 = v40;
      v52 = [v48 closingDate];
      if (v52)
      {
        v65 = v35;
        v35 = [v48 statementBalance];
        if (v35)
        {
          v53 = [v48 paymentDueDate];
          v68 = v53 != 0;
        }

        else
        {
          v68 = 0;
        }

        LOBYTE(v35) = v65;
      }

      else
      {
        v68 = 0;
      }

      v40 = v51;
      v43 = v50;
      v10 = v66;
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

  if (v46 == 1)
  {
    v54 = v35;
  }

  else
  {
    v54 = 1;
  }

  if ((v54 & 1) == 0)
  {
    v56 = v10;
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
    v56 = v10;
    v58 = 2;
LABEL_75:
    v60 = v74;
    v59 = v75;
    v61 = v73;
    v62 = v76;
    goto LABEL_76;
  }

  v55 = v36;
  v56 = v10;
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
    if (v69 != 0 || !v68 || v77 == 0 || v55)
    {
      v63 = v67;
      if (!v77)
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

+ (BOOL)shouldDisplayScheduledPaymentsWithAccount:(id)a3 andPass:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[PKTransactionSource alloc] initWithPaymentPass:v6];
  v8 = [[PKTransactionSourceCollection alloc] initWithTransactionSource:v7];
  if (v5)
  {
    v9 = [v5 creditDetails];
    if (v9)
    {
      v10 = [v6 associatedAccountServiceAccountIdentifier];
      v11 = [v10 length] && objc_msgSend(v5, "supportsShowAccountSummary") && +[PKCreditAccountController shouldDisplayAccountInformationForTransactionSourceCollection:withAccount:](PKCreditAccountController, "shouldDisplayAccountInformationForTransactionSourceCollection:withAccount:", v8, v5);
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

+ (BOOL)shouldShowCardNumbersWithAccountAvailabilityInfo:(id)a3 dpanSuffixForPaymentApplication:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 accountType] == 1)
  {
    v7 = [v5 accountState] - 3;
    v8 = v7 > 0xFFFFFFFFFFFFFFFDLL;
    v9 = [v5 supportedFeatures];
    v10 = [v9 pk_hasObjectPassingTest:&__block_literal_global_151];

    if (v7 >= 0xFFFFFFFFFFFFFFFELL && (v10 & 1) == 0)
    {
      v8 = [v6 length] != 0;
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