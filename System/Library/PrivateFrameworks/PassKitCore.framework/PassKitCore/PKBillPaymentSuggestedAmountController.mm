@interface PKBillPaymentSuggestedAmountController
+ (id)_transactionsRequestForPreviousStatementForAccount:(id)a3 transactionSource:(id)a4 transactionType:(int64_t)a5;
+ (id)_transactionsRequestSinceStatementForAccount:(id)a3 transactionSource:(id)a4 transactionType:(int64_t)a5;
+ (void)_transactionsTotalAmountForRequest:(id)a3 completion:(id)a4;
+ (void)approvedTransactionsSpendingTotalForPreviousStatementForAccount:(id)a3 transactionSource:(id)a4 merchantCategory:(int64_t)a5 completion:(id)a6;
+ (void)approvedTransactionsSpendingTotalSinceStatementForAccount:(id)a3 transactionSource:(id)a4 merchantCategory:(int64_t)a5 completion:(id)a6;
+ (void)approvedTransactionsTotalForPreviousStatementForAccount:(id)a3 transactionSource:(id)a4 transactionType:(int64_t)a5 completion:(id)a6;
+ (void)approvedTransactionsTotalSinceStatementForAccount:(id)a3 transactionSource:(id)a4 transactionType:(int64_t)a5 completion:(id)a6;
+ (void)currentStatementSelectedSuggestedAmountEventsForAccount:(id)a3 completion:(id)a4;
+ (void)defaultControllerForAccount:(id)a3 accountUserCollection:(id)a4 transactionSource:(id)a5 configuration:(id)a6 completion:(id)a7;
+ (void)previousStatementSelectedSuggestedAmountEventsForAccount:(id)a3 completion:(id)a4;
- (BOOL)_allMandatoryValuesAreSameAmount;
- (BOOL)_calculateCurrentStatementIsLastMonthsStatement;
- (BOOL)_suggestedAmountListIsValidAfterPurgeIfNecessary:(id)a3;
- (PKBillPaymentSuggestedAmountController)initWithAccount:(id)a3 accountUserCollection:(id)a4 transactionSource:(id)a5 currentStatementSelectedSuggestedAmountEvents:(id)a6 previousStatementSelectedSuggestedAmountEvents:(id)a7 currentStatementPaymentsSum:(id)a8 previousStatementPaymentsSum:(id)a9 currentStatementPurchasesSum:(id)a10 previousStatementPurchasesSum:(id)a11 currentStatementMerchantCategoryTransactionSums:(id)a12 previousStatementMerchantCategoryTransactionSums:(id)a13 configuration:(id)a14;
- (id)_calculateThresholdForLastPaymentCategory:(unint64_t)a3 statementBalance:(id)a4 suggestedAmountWithSameCategory:(id)a5;
- (id)_createDefaultAmountSuggestionListFromAccount;
- (id)_filterSuggestions:(id)a3 belowThreshold:(id)a4;
- (id)_messageForSuggestion:(id)a3;
- (id)_planCompletionTitleString;
- (id)_remainingStatementBalanceGapDescriptionText;
- (id)_remainingStatementBalanceGapTitleText;
- (id)_remainingStatementBalanceMessageString;
- (id)_remainingStatementBalanceTitleString;
- (id)_suggestedAmountsForPayOffDateForStatementBalance:(id)a3 creditUtilization:(id)a4 lastPaymentCategory:(unint64_t)a5;
- (id)_titleForSuggestion:(id)a3;
- (id)generateAmountSuggestionListWithFinHealth:(BOOL)a3;
- (id)paymentRingInstrumentationRecordAsString;
- (void)_generateAmountSuggestionListUsingTransactionHistoryForList:(id)a3;
- (void)_initializeDifferentialPrivacy:(id)a3 accountSummary:(id)a4;
- (void)_initializePaymentRingInstrumentationRecord:(id)a3 accountSummary:(id)a4;
- (void)_minimumMerchcantCategoriesAboveMinimumAmount:(id)a3 minMerchantCategory1:(int64_t *)a4 minMerchantCategory2:(int64_t *)a5 minMerchantCategorySum1:(id *)a6 minMerchantCategorySum2:(id *)a7;
- (void)_populatePriorityValuesForList:(id)a3;
- (void)_populateStringValuesForList:(id)a3;
- (void)_setDifferentialPrivacyFeature:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)_zerothOrFirstMonthBillPaymentSuggestionsForList:(id)a3;
- (void)recordPaymentActionWithDifferentialPrivacy:(unint64_t)a3;
- (void)recordPaymentRingAction:(unint64_t)a3;
@end

@implementation PKBillPaymentSuggestedAmountController

+ (void)defaultControllerForAccount:(id)a3 accountUserCollection:(id)a4 transactionSource:(id)a5 configuration:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = dispatch_group_create();
  v86[0] = 0;
  v86[1] = v86;
  v86[2] = 0x3032000000;
  v86[3] = __Block_byref_object_copy__65;
  v86[4] = __Block_byref_object_dispose__65;
  v87 = 0;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x3032000000;
  v84[3] = __Block_byref_object_copy__65;
  v84[4] = __Block_byref_object_dispose__65;
  v85 = 0;
  v82[0] = 0;
  v82[1] = v82;
  v82[2] = 0x3032000000;
  v82[3] = __Block_byref_object_copy__65;
  v82[4] = __Block_byref_object_dispose__65;
  v83 = 0;
  v80[0] = 0;
  v80[1] = v80;
  v80[2] = 0x3032000000;
  v80[3] = __Block_byref_object_copy__65;
  v80[4] = __Block_byref_object_dispose__65;
  v81 = 0;
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x3032000000;
  v78[3] = __Block_byref_object_copy__65;
  v78[4] = __Block_byref_object_dispose__65;
  v79 = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = __Block_byref_object_copy__65;
  v76[4] = __Block_byref_object_dispose__65;
  v77 = 0;
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x3032000000;
  v74[3] = __Block_byref_object_copy__65;
  v74[4] = __Block_byref_object_dispose__65;
  v75 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x3032000000;
  v72[3] = __Block_byref_object_copy__65;
  v72[4] = __Block_byref_object_dispose__65;
  v31 = v13;
  v73 = objc_alloc_init(MEMORY[0x1E695DF90]);
  dispatch_group_enter(v17);
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke;
  v69[3] = &unk_1E79DEB60;
  v71 = v80;
  v18 = v17;
  v70 = v18;
  [a1 approvedTransactionsTotalForPreviousStatementForAccount:v12 transactionSource:v14 transactionType:10 completion:v69];
  dispatch_group_enter(v18);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke_2;
  v66[3] = &unk_1E79DEB60;
  v68 = v82;
  v19 = v18;
  v67 = v19;
  [a1 approvedTransactionsTotalSinceStatementForAccount:v12 transactionSource:v14 transactionType:10 completion:v66];
  dispatch_group_enter(v19);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke_3;
  v63[3] = &unk_1E79DEB60;
  v65 = v78;
  v20 = v19;
  v64 = v20;
  [a1 approvedTransactionsTotalSinceStatementForAccount:v12 transactionSource:v14 transactionType:0 completion:v63];
  dispatch_group_enter(v20);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke_4;
  v60[3] = &unk_1E79DEB60;
  v62 = v76;
  v21 = v20;
  v61 = v21;
  [a1 approvedTransactionsTotalForPreviousStatementForAccount:v12 transactionSource:v14 transactionType:0 completion:v60];
  for (i = 0; i != 8; ++i)
  {
    if (i && i != 6)
    {
      dispatch_group_enter(v21);
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke_5;
      v56[3] = &unk_1E79DEB88;
      v58 = v74;
      v59 = i;
      v23 = v21;
      v57 = v23;
      [a1 approvedTransactionsSpendingTotalSinceStatementForAccount:v12 transactionSource:v14 merchantCategory:i completion:v56];
      dispatch_group_enter(v23);
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke_6;
      v52[3] = &unk_1E79DEB88;
      v54 = v72;
      v55 = i;
      v53 = v23;
      [a1 approvedTransactionsSpendingTotalForPreviousStatementForAccount:v12 transactionSource:v14 merchantCategory:i completion:v52];
    }
  }

  dispatch_group_enter(v21);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke_7;
  v49[3] = &unk_1E79C9C40;
  v51 = v86;
  v24 = v21;
  v50 = v24;
  [a1 currentStatementSelectedSuggestedAmountEventsForAccount:v12 completion:v49];
  dispatch_group_enter(v24);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke_8;
  v46[3] = &unk_1E79C9C40;
  v48 = v84;
  v25 = v24;
  v47 = v25;
  [a1 previousStatementSelectedSuggestedAmountEventsForAccount:v12 completion:v46];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke_9;
  block[3] = &unk_1E79DEBB0;
  v33 = v12;
  v34 = v31;
  v39 = v84;
  v40 = v82;
  v41 = v80;
  v42 = v78;
  v43 = v76;
  v44 = v74;
  v45 = v72;
  v35 = v14;
  v36 = v15;
  v38 = v86;
  v37 = v16;
  v26 = v16;
  v27 = v15;
  v28 = v14;
  v29 = v31;
  v30 = v12;
  dispatch_group_notify(v25, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v72, 8);
  _Block_object_dispose(v74, 8);

  _Block_object_dispose(v76, 8);
  _Block_object_dispose(v78, 8);

  _Block_object_dispose(v80, 8);
  _Block_object_dispose(v82, 8);

  _Block_object_dispose(v84, 8);
  _Block_object_dispose(v86, 8);
}

void __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 amount];
  v4 = [v3 pk_absoluteValue];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  dispatch_group_leave(v7);
}

void __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 amount];
  v4 = [v3 pk_absoluteValue];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  dispatch_group_leave(v7);
}

void __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 amount];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 amount];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v5 = [a2 amount];
  if (v5 && ([v5 pk_isZeroNumber] & 1) == 0)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
    [v3 setObject:v5 forKey:v4];
  }

  dispatch_group_leave(*(a1 + 32));
}

void __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v5 = [a2 amount];
  if (v5 && ([v5 pk_isZeroNumber] & 1) == 0)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
    [v3 setObject:v5 forKey:v4];
  }

  dispatch_group_leave(*(a1 + 32));
}

void __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke_7(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke_8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __135__PKBillPaymentSuggestedAmountController_defaultControllerForAccount_accountUserCollection_transactionSource_configuration_completion___block_invoke_9(void *a1)
{
  v2 = [[PKBillPaymentSuggestedAmountController alloc] initWithAccount:a1[4] accountUserCollection:a1[5] transactionSource:a1[6] currentStatementSelectedSuggestedAmountEvents:*(*(a1[9] + 8) + 40) previousStatementSelectedSuggestedAmountEvents:*(*(a1[10] + 8) + 40) currentStatementPaymentsSum:*(*(a1[11] + 8) + 40) previousStatementPaymentsSum:*(*(a1[12] + 8) + 40) currentStatementPurchasesSum:*(*(a1[13] + 8) + 40) previousStatementPurchasesSum:*(*(a1[14] + 8) + 40) currentStatementMerchantCategoryTransactionSums:*(*(a1[15] + 8) + 40) previousStatementMerchantCategoryTransactionSums:*(*(a1[16] + 8) + 40) configuration:a1[7]];
  (*(a1[8] + 16))();
}

+ (void)approvedTransactionsTotalSinceStatementForAccount:(id)a3 transactionSource:(id)a4 transactionType:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [a1 _transactionsRequestSinceStatementForAccount:a3 transactionSource:a4 transactionType:a5];
  [a1 _transactionsTotalAmountForRequest:v11 completion:v10];
}

+ (void)approvedTransactionsTotalForPreviousStatementForAccount:(id)a3 transactionSource:(id)a4 transactionType:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [a1 _transactionsRequestForPreviousStatementForAccount:a3 transactionSource:a4 transactionType:a5];
  [a1 _transactionsTotalAmountForRequest:v11 completion:v10];
}

+ (void)approvedTransactionsSpendingTotalForPreviousStatementForAccount:(id)a3 transactionSource:(id)a4 merchantCategory:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [a1 _transactionsRequestForPreviousStatementForAccount:a3 transactionSource:a4 transactionType:0];
  [v11 setMerchantCategory:a5];
  [a1 _transactionsTotalAmountForRequest:v11 completion:v10];
}

+ (void)approvedTransactionsSpendingTotalSinceStatementForAccount:(id)a3 transactionSource:(id)a4 merchantCategory:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [a1 _transactionsRequestSinceStatementForAccount:a3 transactionSource:a4 transactionType:0];
  [v11 setMerchantCategory:a5];
  [a1 _transactionsTotalAmountForRequest:v11 completion:v10];
}

+ (id)_transactionsRequestForPreviousStatementForAccount:(id)a3 transactionSource:(id)a4 transactionType:(int64_t)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = [v8 creditDetails];
  v10 = [v9 accountSummary];
  v11 = [v10 currentStatement];

  v12 = [v8 associatedPassUniqueID];
  v13 = [v11 openingDate];
  v14 = [v11 closingDate];
  v15 = [v8 creditDetails];

  v16 = [v15 currencyCode];

  v17 = 0;
  if (v13 && v14 && v12 && v16)
  {
    v17 = objc_alloc_init(PKPaymentTransactionRequest);
    v18 = [v7 transactionSourceIdentifiers];
    [(PKPaymentTransactionRequest *)v17 setTransactionSourceIdentifiers:v18];

    [(PKPaymentTransactionRequest *)v17 setStartStatusChangeDate:v13];
    [(PKPaymentTransactionRequest *)v17 setEndStatusChangeDate:v14];
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    v22[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [(PKPaymentTransactionRequest *)v17 setTransactionTypes:v20];

    [(PKPaymentTransactionRequest *)v17 setTransactionStatuses:&unk_1F23B4430];
    [(PKPaymentTransactionRequest *)v17 setCurrencyCode:v16];
  }

  return v17;
}

+ (id)_transactionsRequestSinceStatementForAccount:(id)a3 transactionSource:(id)a4 transactionType:(int64_t)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = [v8 creditDetails];
  v10 = [v9 accountSummary];
  v11 = [v10 balanceSummary];

  v12 = [v8 associatedPassUniqueID];
  v13 = [v11 openingDate];
  v14 = [v11 closingDate];
  v15 = [v8 creditDetails];

  v16 = [v15 currencyCode];

  v17 = 0;
  if (v13 && v14 && v12 && v16)
  {
    v17 = objc_alloc_init(PKPaymentTransactionRequest);
    v18 = [v7 transactionSourceIdentifiers];
    [(PKPaymentTransactionRequest *)v17 setTransactionSourceIdentifiers:v18];

    [(PKPaymentTransactionRequest *)v17 setStartStatusChangeDate:v13];
    [(PKPaymentTransactionRequest *)v17 setEndStatusChangeDate:v14];
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    v22[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [(PKPaymentTransactionRequest *)v17 setTransactionTypes:v20];

    [(PKPaymentTransactionRequest *)v17 setTransactionStatuses:&unk_1F23B4448];
    [(PKPaymentTransactionRequest *)v17 setCurrencyCode:v16];
  }

  return v17;
}

+ (void)_transactionsTotalAmountForRequest:(id)a3 completion:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (v5)
  {
    if (v7)
    {
      v6 = +[PKPaymentService paymentService];
      [v6 transactionsTotalAmountForRequest:v7 completion:v5];
    }

    else
    {
      v5[2](v5, 0);
    }
  }
}

+ (void)currentStatementSelectedSuggestedAmountEventsForAccount:(id)a3 completion:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = a3;
    v7 = [v6 creditDetails];
    v8 = [v7 accountSummary];
    v9 = [v8 currentStatement];

    v10 = [v9 identifier];
    v11 = [v6 accountIdentifier];

    if (v11 && v9 && v10)
    {
      v12 = +[PKAccountService sharedInstance];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __109__PKBillPaymentSuggestedAmountController_currentStatementSelectedSuggestedAmountEventsForAccount_completion___block_invoke;
      v13[3] = &unk_1E79C5440;
      v14 = v5;
      [v12 billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier:v11 withStatementIdentifier:v10 completion:v13];
    }

    else
    {
      (*(v5 + 2))(v5, 0);
    }
  }
}

+ (void)previousStatementSelectedSuggestedAmountEventsForAccount:(id)a3 completion:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = a3;
    v7 = [v6 creditDetails];
    v8 = [v7 accountSummary];
    v9 = [v8 currentStatement];

    v10 = [v6 accountIdentifier];

    v11 = [v9 openingDate];
    v12 = [v9 closingDate];
    v13 = v12;
    if (v11 && v12)
    {
      v14 = +[PKAccountService sharedInstance];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __110__PKBillPaymentSuggestedAmountController_previousStatementSelectedSuggestedAmountEventsForAccount_completion___block_invoke;
      v15[3] = &unk_1E79C5440;
      v16 = v5;
      [v14 billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier:v10 withStartDate:v11 endDate:v13 completion:v15];
    }

    else
    {
      (*(v5 + 2))(v5, 0);
    }
  }
}

- (PKBillPaymentSuggestedAmountController)initWithAccount:(id)a3 accountUserCollection:(id)a4 transactionSource:(id)a5 currentStatementSelectedSuggestedAmountEvents:(id)a6 previousStatementSelectedSuggestedAmountEvents:(id)a7 currentStatementPaymentsSum:(id)a8 previousStatementPaymentsSum:(id)a9 currentStatementPurchasesSum:(id)a10 previousStatementPurchasesSum:(id)a11 currentStatementMerchantCategoryTransactionSums:(id)a12 previousStatementMerchantCategoryTransactionSums:(id)a13 configuration:(id)a14
{
  v91 = *MEMORY[0x1E69E9840];
  v87 = a3;
  v75 = a4;
  v86 = a4;
  v85 = a5;
  v84 = a6;
  v76 = a7;
  v19 = a7;
  v83 = a8;
  v82 = a9;
  v81 = a10;
  v80 = a11;
  v20 = a12;
  v21 = a13;
  v79 = a14;
  v88.receiver = self;
  v88.super_class = PKBillPaymentSuggestedAmountController;
  v22 = [(PKBillPaymentSuggestedAmountController *)&v88 init];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_33;
  }

  objc_storeStrong(&v22->_account, a3);
  objc_storeStrong(&v23->_accountUserCollection, v75);
  objc_storeStrong(&v23->_transactionSource, a5);
  objc_storeStrong(&v23->_currentStatementSelectedSuggestedAmountEvents, a6);
  objc_storeStrong(&v23->_previousStatementSelectedSuggestedAmountEvents, v76);
  objc_storeStrong(&v23->_currentStatementPaymentsSum, a8);
  objc_storeStrong(&v23->_previousStatementPaymentsSum, a9);
  objc_storeStrong(&v23->_currentStatementPurchasesSum, a10);
  objc_storeStrong(&v23->_previousStatementPurchasesSum, a11);
  v24 = [v20 copy];
  currentStatementMerchantCategoryTransactionSums = v23->_currentStatementMerchantCategoryTransactionSums;
  v23->_currentStatementMerchantCategoryTransactionSums = v24;

  v26 = [v21 copy];
  previousStatementMerchantCategoryTransactionSums = v23->_previousStatementMerchantCategoryTransactionSums;
  v23->_previousStatementMerchantCategoryTransactionSums = v26;

  objc_storeStrong(&v23->_configuration, a14);
  v28 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    previousStatementPaymentsSum = v23->_previousStatementPaymentsSum;
    *buf = 138412290;
    v90 = previousStatementPaymentsSum;
    _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Bill payment suggested amount controller using previousStatementPaymentsSum: %@", buf, 0xCu);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    currentStatementPaymentsSum = v23->_currentStatementPaymentsSum;
    *buf = 138412290;
    v90 = currentStatementPaymentsSum;
    _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Bill payment suggested amount controller using currentStatementPaymentsSum: %@", buf, 0xCu);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    previousStatementPurchasesSum = v23->_previousStatementPurchasesSum;
    *buf = 138412290;
    v90 = previousStatementPurchasesSum;
    _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Bill payment suggested amount controller using previousStatementPurchasesSum: %@", buf, 0xCu);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    currentStatementPurchasesSum = v23->_currentStatementPurchasesSum;
    *buf = 138412290;
    v90 = currentStatementPurchasesSum;
    _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Bill payment suggested amount controller using currentStatementPurchasesSum: %@", buf, 0xCu);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v33 = v23->_currentStatementMerchantCategoryTransactionSums;
    *buf = 138412290;
    v90 = v33;
    _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Bill payment suggested amount controller using currentStatementMerchantCategoryTransactionSums: %@", buf, 0xCu);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v23->_previousStatementMerchantCategoryTransactionSums;
    *buf = 138412290;
    v90 = v34;
    _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Bill payment suggested amount controller using previousStatementMerchantCategoryTransactionSums: %@", buf, 0xCu);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    currentStatementSelectedSuggestedAmountEvents = v23->_currentStatementSelectedSuggestedAmountEvents;
    *buf = 138412290;
    v90 = currentStatementSelectedSuggestedAmountEvents;
    _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Bill payment suggested amount controller using currentStatementSelectedSuggestedAmountEvents: %@", buf, 0xCu);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    previousStatementSelectedSuggestedAmountEvents = v23->_previousStatementSelectedSuggestedAmountEvents;
    *buf = 138412290;
    v90 = previousStatementSelectedSuggestedAmountEvents;
    _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Bill payment suggested amount controller using previousStatementSelectedSuggestedAmountEvents: %@", buf, 0xCu);
  }

  v78 = v21;
  v37 = v20;

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    configuration = v23->_configuration;
    *buf = 138412290;
    v90 = configuration;
    _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Bill payment suggested amount controller using configuration: %@", buf, 0xCu);
  }

  v39 = [(PKAccount *)v23->_account creditDetails];
  v40 = [v39 productTimeZone];

  v41 = objc_alloc_init(MEMORY[0x1E696AB78]);
  monthAndDayFormatter = v23->_monthAndDayFormatter;
  v23->_monthAndDayFormatter = v41;

  [(NSDateFormatter *)v23->_monthAndDayFormatter setTimeZone:v40];
  [(NSDateFormatter *)v23->_monthAndDayFormatter setLocalizedDateFormatFromTemplate:@"MMM d"];
  v43 = objc_alloc_init(MEMORY[0x1E696AB78]);
  monthFormatter = v23->_monthFormatter;
  v23->_monthFormatter = v43;

  [(NSDateFormatter *)v23->_monthFormatter setTimeZone:v40];
  [(NSDateFormatter *)v23->_monthFormatter setLocalizedDateFormatFromTemplate:@"MMMM"];
  v45 = [(PKAccount *)v23->_account creditDetails];
  v46 = [v45 accountSummary];
  v47 = [v46 currentStatement];
  v48 = [v47 identifier];
  v49 = [v48 length];
  v50 = v49 != 0;
  v51 = v49 == 0;

  v52 = [(NSDecimalNumber *)v23->_previousStatementPaymentsSum pk_isPositiveNumber];
  v23->_isMonthZero = v51;
  v23->_isMonthOne = v50 & (v52 ^ 1);
  v23->_numberOfActiveInstallments = [v45 numberOfActiveInstallments];
  v23->_numberOfActiveStatementedInstallments = [v45 numberOfActiveStatementedInstallments];
  v53 = [(NSArray *)v23->_currentStatementSelectedSuggestedAmountEvents sortedArrayUsingComparator:&__block_literal_global_184];
  v54 = v23->_currentStatementSelectedSuggestedAmountEvents;
  v23->_currentStatementSelectedSuggestedAmountEvents = v53;

  v55 = [(NSArray *)v23->_previousStatementSelectedSuggestedAmountEvents sortedArrayUsingComparator:&__block_literal_global_40_0];
  v56 = v23->_previousStatementSelectedSuggestedAmountEvents;
  v23->_previousStatementSelectedSuggestedAmountEvents = v55;

  v57 = v23->_currentStatementPaymentsSum;
  v58 = [MEMORY[0x1E696AB90] zero];
  v59 = v58;
  if (!v57 || !v58)
  {

    if (v57 != v59)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v60 = [(NSDecimalNumber *)v57 isEqual:v58];

  if (v60)
  {
LABEL_23:
    v61 = v23->_currentStatementPaymentsSum;
    v23->_currentStatementPaymentsSum = 0;
  }

LABEL_24:
  v62 = v23->_previousStatementPaymentsSum;
  v63 = [MEMORY[0x1E696AB90] zero];
  v64 = v63;
  if (!v62 || !v63)
  {

    if (v62 != v64)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v65 = [(NSDecimalNumber *)v62 isEqual:v63];

  if (v65)
  {
LABEL_27:
    v66 = v23->_previousStatementPaymentsSum;
    v23->_previousStatementPaymentsSum = 0;
  }

LABEL_28:
  v67 = 160;
  if (v23->_isMonthZero)
  {
    v67 = 144;
  }

  objc_storeStrong(&v23->_statementPurchasesSum, *(&v23->super.isa + v67));
  v68 = 176;
  if (v23->_isMonthZero)
  {
    v68 = 184;
  }

  v69 = [*(&v23->super.isa + v68) copy];
  merchantCategoryTransactionSums = v23->_merchantCategoryTransactionSums;
  v23->_merchantCategoryTransactionSums = v69;

  v23->_currentStatementIsLastMonthsStatement = [(PKBillPaymentSuggestedAmountController *)v23 _calculateCurrentStatementIsLastMonthsStatement];
  [(PKBillPaymentSuggestedAmountController *)v23 _initializeDifferentialPrivacy:v19 accountSummary:v46];
  [(PKBillPaymentSuggestedAmountController *)v23 _initializePaymentRingInstrumentationRecord:v19 accountSummary:v46];
  v71 = objc_alloc_init(getFHPaymentRingSuggestionControllerClass[0]());
  fhController = v23->_fhController;
  v23->_fhController = v71;

  v20 = v37;
  v21 = v78;
LABEL_33:

  return v23;
}

uint64_t __418__PKBillPaymentSuggestedAmountController_initWithAccount_accountUserCollection_transactionSource_currentStatementSelectedSuggestedAmountEvents_previousStatementSelectedSuggestedAmountEvents_currentStatementPaymentsSum_previousStatementPaymentsSum_currentStatementPurchasesSum_previousStatementPurchasesSum_currentStatementMerchantCategoryTransactionSums_previousStatementMerchantCategoryTransactionSums_configuration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 items];
  v6 = [v5 allObjects];
  v7 = [v6 firstObject];

  v8 = [v4 items];

  v9 = [v8 allObjects];
  v10 = [v9 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v11 = v10;
    v12 = [v7 transactionDate];
    v13 = [v11 transactionDate];

    v14 = [v12 compare:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __418__PKBillPaymentSuggestedAmountController_initWithAccount_accountUserCollection_transactionSource_currentStatementSelectedSuggestedAmountEvents_previousStatementSelectedSuggestedAmountEvents_currentStatementPaymentsSum_previousStatementPaymentsSum_currentStatementPurchasesSum_previousStatementPurchasesSum_currentStatementMerchantCategoryTransactionSums_previousStatementMerchantCategoryTransactionSums_configuration___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 items];
  v6 = [v5 allObjects];
  v7 = [v6 firstObject];

  v8 = [v4 items];

  v9 = [v8 allObjects];
  v10 = [v9 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v11 = v10;
    v12 = [v7 transactionDate];
    v13 = [v11 transactionDate];

    v14 = [v12 compare:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_createDefaultAmountSuggestionListFromAccount
{
  v3 = [(PKAccount *)self->_account creditDetails];
  v4 = [(PKAccount *)self->_account creditDetails];
  v5 = [v4 accountSummary];

  v6 = [v5 adjustedBalance];
  v7 = [v5 currentBalance];
  v30 = [(PKAccountServiceAccountResolutionConfiguration *)self->_configuration earlyInstallmentPlan];
  v27 = v7;
  if (v30)
  {
    v8 = [v7 compare:{v6, v7}];
    v29 = v8 == 1;
    if (v8 == 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }
  }

  else
  {
    v29 = 0;
    v9 = v6;
  }

  v10 = v9;
  v11 = [PKBillPaymentSuggestedAmountList alloc];
  v31 = v3;
  v12 = [v3 currencyCode];
  v13 = [v5 remainingMinimumPayment];
  v14 = [v5 remainingStatementBalance];
  if (v10)
  {
    v15 = [(PKBillPaymentSuggestedAmountList *)v11 initWithCurrencyCode:v12 remainingMinimumPayment:v13 remainingStatementBalance:v14 currentBalance:v10];
  }

  else
  {
    v16 = [MEMORY[0x1E696AB90] zero];
    v15 = [(PKBillPaymentSuggestedAmountList *)v11 initWithCurrencyCode:v12 remainingMinimumPayment:v13 remainingStatementBalance:v14 currentBalance:v16];
  }

  v17 = [(PKBillPaymentSuggestedAmountList *)v15 minimumAmount];
  if (!v17 || (-[PKBillPaymentSuggestedAmountList maximumAmount](v15, "maximumAmount"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v17 isEqual:v18], v18, v19))
  {
    v20 = [(PKBillPaymentSuggestedAmountList *)v15 remainingStatementAmount];

    if (v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = 18;
    }

    v22 = [PKBillPaymentSuggestedAmount alloc];
    v23 = [MEMORY[0x1E696AB90] zero];
    v24 = [(PKBillPaymentSuggestedAmount *)v22 initWithAmount:v23 category:v21];

    [(PKBillPaymentSuggestedAmountList *)v15 setInitialSuggestedAmount:v24];
  }

  if (v29)
  {
    v25 = [[PKBillPaymentSuggestedAmount alloc] initWithAmount:v6 category:30];
    [(PKBillPaymentSuggestedAmountList *)v15 addSuggestedAmount:v25];
  }

  [(PKBillPaymentSuggestedAmountController *)self _populateStringValuesForList:v15, v27];

  return v15;
}

- (id)generateAmountSuggestionListWithFinHealth:(BOOL)a3
{
  v3 = a3;
  v62 = *MEMORY[0x1E69E9840];
  v5 = [(PKBillPaymentSuggestedAmountController *)self _createDefaultAmountSuggestionListFromAccount];
  if (v3)
  {
    v48 = [(PKAccount *)self->_account creditDetails];
    v45 = [v48 accountSummary];
    v6 = [v45 remainingStatementBalance];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E696AB90] zero];
    }

    v47 = v8;

    v49 = objc_opt_new();
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v10 = self->_previousStatementSelectedSuggestedAmountEvents;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v55;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v55 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v54 + 1) + 8 * i) items];
          v16 = [v15 allObjects];
          v17 = [v16 firstObject];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v49 addObject:v17];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v12);
    }

    fhController = self->_fhController;
    account = self->_account;
    previousStatementPaymentsSum = self->_previousStatementPaymentsSum;
    currentStatementPaymentsSum = self->_currentStatementPaymentsSum;
    statementPurchasesSum = self->_statementPurchasesSum;
    merchantCategoryTransactionSums = self->_merchantCategoryTransactionSums;
    v24 = [v49 copy];
    LOWORD(v44) = *&self->_isMonthZero;
    v25 = [(FHPaymentRingSuggestionController *)fhController generatePaymentRingSuggestionsFromConvertedObjects:account previousStatementPaymentsSum:previousStatementPaymentsSum currentStatementPaymentsSum:currentStatementPaymentsSum statementPurchasesSum:statementPurchasesSum merchantCategoryTransactionSums:merchantCategoryTransactionSums billPaymentSelectedSuggestedAmountData:v24 isMonthZero:v44 isMonthOne:?];

    v26 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v25 description];
      *buf = 138412290;
      v60 = v27;
      _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Suggestions calculated from FinHealth %@", buf, 0xCu);
    }

    v46 = v26;

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v28 = v25;
    v29 = [v28 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v51;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v51 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v50 + 1) + 8 * j);
          if (!self->_isMonthZero && !self->_isMonthOne && ([v48 isInMonthOfMerge] & 1) == 0)
          {
            v34 = [v33 amount];
            v35 = [v34 compare:v47];

            if (v35 != -1)
            {
              continue;
            }
          }

          [v5 addSuggestedAmount:v33];
        }

        v30 = [v28 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v30);
    }

    if (v49 && [v49 count])
    {
      v36 = [v49 lastObject];
      v37 = [v36 suggestedAmountCategory];

      v38 = PKBillPaymentSuggestedAmountCategoryToPaymentRingInstrumentation(v37);
      paymentRingInstrumentationRecord = self->_paymentRingInstrumentationRecord;
      v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v38];
      v41 = _MergedGlobals_179();
      [(NSMutableDictionary *)paymentRingInstrumentationRecord setObject:v40 forKey:v41];
    }

    v9 = v46;
  }

  else
  {
    [(PKBillPaymentSuggestedAmountController *)self _generateAmountSuggestionListUsingTransactionHistoryForList:v5];
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = v5;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Bill Payment Suggested Amount List from transaction history API: %@", buf, 0xCu);
  }

  [(PKBillPaymentSuggestedAmountController *)self _populatePriorityValuesForList:v5];
  if ([(PKBillPaymentSuggestedAmountController *)self _suggestedAmountListIsValidAfterPurgeIfNecessary:v5])
  {
    v42 = v5;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Bill Payment Suggested Amount List Error for transaction history API. Using fallback suggestions.", buf, 2u);
    }

    v42 = [(PKBillPaymentSuggestedAmountController *)self _createDefaultAmountSuggestionListFromAccount];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = v42;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Bill Payment Suggested Amount fallback list: %@", buf, 0xCu);
    }

    if (![(PKBillPaymentSuggestedAmountController *)self _suggestedAmountListIsValidAfterPurgeIfNecessary:v42])
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Bill Payment Suggested Amount List Error. Default suggestions are not valid! Please file a radar.", buf, 2u);
      }
    }
  }

  [(PKBillPaymentSuggestedAmountController *)self _populateStringValuesForList:v42];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = v42;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Final Bill Payment Suggested Amount List with titles and descriptions %@", buf, 0xCu);
  }

  return v42;
}

- (void)_generateAmountSuggestionListUsingTransactionHistoryForList:(id)a3
{
  v114 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v84 = [(PKAccount *)self->_account creditDetails];
  v85 = [v84 accountSummary];
  v81 = [v85 currentStatement];
  v6 = [v85 remainingStatementBalance];
  v7 = [v85 remainingMinimumPayment];
  v8 = v7;
  if (v7)
  {
    v78 = v7;
  }

  else
  {
    v78 = [MEMORY[0x1E696AB90] zero];
  }

  v82 = [v85 creditLimit];
  v83 = [v81 statementBalance];
  v80 = [v85 remainingStatementBalanceForInterestCalculation];
  if (v6)
  {
    v9 = [MEMORY[0x1E696AB90] zero];
    v10 = [v6 compare:v9] == 1;
  }

  else
  {
    v10 = 0;
  }

  v79 = [MEMORY[0x1E696AB90] zero];
  if (v83)
  {
    if (v82)
    {
      v11 = [MEMORY[0x1E696AB90] zero];
      v12 = [v82 isEqualToNumber:v11];

      if ((v12 & 1) == 0)
      {
        v13 = [v83 decimalNumberByDividingBy:v82];

        v79 = v13;
      }
    }
  }

  if ([v84 isInMonthOfMerge] && objc_msgSend(v80, "pk_isPositiveNumber"))
  {
    v14 = [[PKBillPaymentSuggestedAmount alloc] initWithAmount:v80 category:31];
    [v5 safelyAddObject:v14];
    [v4 addSuggestedAmount:v14];

    goto LABEL_20;
  }

  if (self->_isMonthZero || self->_isMonthOne || (previousStatementPaymentsSum = self->_previousStatementPaymentsSum) == 0 || ([MEMORY[0x1E696AB90] zero], (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = -[NSDecimalNumber isEqual:](previousStatementPaymentsSum, "isEqual:", v16), v16, (v17 & 1) != 0))
  {
    [(PKBillPaymentSuggestedAmountController *)self _zerothOrFirstMonthBillPaymentSuggestionsForList:v4];
    goto LABEL_20;
  }

  if ([(PKBillPaymentSuggestedAmountController *)self _allMandatoryValuesAreSameAmount])
  {
    goto LABEL_20;
  }

  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy__65;
  v106 = __Block_byref_object_dispose__65;
  v107 = 0;
  if (v10)
  {
    previousStatementSelectedSuggestedAmountEvents = self->_previousStatementSelectedSuggestedAmountEvents;
    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 3221225472;
    v98[2] = __102__PKBillPaymentSuggestedAmountController__generateAmountSuggestionListUsingTransactionHistoryForList___block_invoke;
    v98[3] = &unk_1E79DEBF8;
    v100 = &v108;
    v98[4] = self;
    v99 = v6;
    v101 = &v102;
    [(NSArray *)previousStatementSelectedSuggestedAmountEvents enumerateObjectsUsingBlock:v98];

    v19 = v109[3] == 13;
  }

  else
  {
    v19 = 0;
    v111 = 18;
  }

  self->_isOnPlanCompletion = v19;
  if (self->_previousStatementPaymentsSum && !self->_isOnPaymentPlan)
  {
    v20 = [[PKBillPaymentSuggestedAmount alloc] initWithAmount:self->_previousStatementPaymentsSum category:2];
    [v5 safelyAddObject:v20];
  }

  else
  {
    v20 = 0;
  }

  statementPurchasesSum = self->_statementPurchasesSum;
  if (!statementPurchasesSum || ([MEMORY[0x1E696AB90] zero], (v22 = objc_claimAutoreleasedReturnValue()) != 0) && (v23 = -[NSDecimalNumber isEqual:](statementPurchasesSum, "isEqual:", v22), v22, (v23 & 1) != 0))
  {
    v24 = v20;
  }

  else
  {
    v25 = self->_statementPurchasesSum;
    v24 = [[PKBillPaymentSuggestedAmount alloc] initWithAmount:v25 category:5];

    [v5 safelyAddObject:v24];
  }

  v96 = 0;
  v97 = 0;
  v26 = [v4 minimumSuggestedAmount];
  v77 = [v26 amount];

  v94 = 0;
  v95 = 0;
  [(PKBillPaymentSuggestedAmountController *)self _minimumMerchcantCategoriesAboveMinimumAmount:v77 minMerchantCategory1:&v97 minMerchantCategory2:&v96 minMerchantCategorySum1:&v95 minMerchantCategorySum2:&v94];
  v27 = v95;
  v74 = v94;
  v69 = v27;
  if (self->_previousStatementPaymentsSum)
  {
    if (v27)
    {
      v28 = [v27 decimalNumberByAdding:?];
      if ([v28 compare:self->_statementPurchasesSum] == -1)
      {
        v29 = [[PKBillPaymentSuggestedAmount alloc] initWithAmount:v28 category:3];

        [(PKBillPaymentSuggestedAmount *)v29 setMerchantCategory:v97];
        [v5 safelyAddObject:v29];
      }

      else
      {
        v29 = v24;
      }
    }

    else
    {
      v29 = v24;
    }

    if (v74)
    {
      v30 = [v74 decimalNumberByAdding:self->_previousStatementPaymentsSum];
      if ([v30 compare:self->_statementPurchasesSum] == -1)
      {
        v24 = [[PKBillPaymentSuggestedAmount alloc] initWithAmount:v30 category:4];

        [(PKBillPaymentSuggestedAmount *)v24 setMerchantCategory:v96];
        [v5 safelyAddObject:v24];
      }

      else
      {
        v24 = v29;
      }
    }

    else
    {
      v24 = v29;
    }
  }

  if (v83 && self->_statementPurchasesSum && v79)
  {
    v31 = [(PKBillPaymentSuggestedAmountController *)self _suggestedAmountsForPayOffDateForStatementBalance:v83 creditUtilization:v79 lastPaymentCategory:v109[3]];

    [v5 safelyAddObject:v31];
    v24 = v31;
  }

  if (self->_isOnPaymentPlan)
  {
    v32 = [v103[5] suggestedAmountCategory];
    v33 = v109[3];
  }

  else
  {
    v33 = v109[3];
    v32 = v33;
  }

  v68 = [v4 suggestedAmountWithCategory:v33];
  v76 = [(PKBillPaymentSuggestedAmountController *)self _calculateThresholdForLastPaymentCategory:v32 statementBalance:v83 suggestedAmountWithSameCategory:v68];
  v75 = [(PKBillPaymentSuggestedAmountController *)self _filterSuggestions:v5 belowThreshold:v76];

  if (!v83)
  {
    goto LABEL_64;
  }

  if (self->_statementPurchasesSum && (![v83 compare:?] || objc_msgSend(v83, "compare:", self->_statementPurchasesSum) == -1) && objc_msgSend(v82, "compare:", v83) == 1)
  {
    v34 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"2"];
    v70 = [v83 decimalNumberByDividingBy:v34];
    v35 = [v83 decimalNumberBySubtracting:v70];
    v36 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"2"];
    v37 = [v83 decimalNumberByDividingBy:v36];
    v38 = [v82 decimalNumberBySubtracting:v37];
    v67 = [v35 decimalNumberByDividingBy:v38];

    v39 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"0.33"];
    LODWORD(v34) = [v67 compare:v39] == -1;

    if (v34)
    {
      v73 = [PKBillPaymentSuggestedAmount alloc];
      v42 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"2"];
      v43 = [v83 decimalNumberByDividingBy:v42];
      v44 = [v83 decimalNumberBySubtracting:v43];
      v45 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"3"];
      v66 = [v44 decimalNumberByDividingBy:v45];
      v46 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"2"];
      v65 = [v83 decimalNumberByDividingBy:v46];
      v47 = [v66 decimalNumberByAdding:v65];
      v72 = [(PKBillPaymentSuggestedAmount *)v73 initWithAmount:v47 category:23];
    }

    else
    {
      v40 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"0.67"];
      v41 = [v67 compare:v40] == -1;

      v71 = [PKBillPaymentSuggestedAmount alloc];
      [MEMORY[0x1E696AB90] decimalNumberWithString:@"2"];
      if (v41)
        v42 = {;
        v43 = [v83 decimalNumberByDividingBy:v42];
        v44 = [v83 decimalNumberBySubtracting:v43];
        v45 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"6"];
        v66 = [v44 decimalNumberByDividingBy:v45];
        v46 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"2"];
        v65 = [v83 decimalNumberByDividingBy:v46];
        v47 = [v66 decimalNumberByAdding:v65];
        v72 = [(PKBillPaymentSuggestedAmount *)v71 initWithAmount:v47 category:24];
      }

      else
        v42 = {;
        v43 = [v83 decimalNumberByDividingBy:v42];
        v44 = [v83 decimalNumberBySubtracting:v43];
        v45 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"9"];
        v66 = [v44 decimalNumberByDividingBy:v45];
        v46 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"2"];
        v65 = [v83 decimalNumberByDividingBy:v46];
        v47 = [v66 decimalNumberByAdding:v65];
        v72 = [(PKBillPaymentSuggestedAmount *)v71 initWithAmount:v47 category:25];
      }
    }

    [v75 safelyAddObject:v72];
    goto LABEL_65;
  }

  if (v78 && ![(PKBillPaymentSuggestedAmountController *)self _categoryIsPaymentPlan:v109[3]])
  {
    v61 = [PKBillPaymentSuggestedAmount alloc];
    v62 = [v83 decimalNumberByAdding:v78];
    v63 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"2"];
    v64 = [v62 decimalNumberByDividingBy:v63];
    v72 = [(PKBillPaymentSuggestedAmount *)v61 initWithAmount:v64 category:29];

    [v75 safelyAddObject:v72];
  }

  else
  {
LABEL_64:
    v72 = v24;
  }

LABEL_65:
  if (self->_currentStatementPaymentsSum)
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v48 = v75;
    v49 = [v48 countByEnumeratingWithState:&v90 objects:v113 count:16];
    if (v49)
    {
      v50 = *v91;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v91 != v50)
          {
            objc_enumerationMutation(v48);
          }

          v52 = *(*(&v90 + 1) + 8 * i);
          v53 = [v52 amount];
          v54 = [v53 decimalNumberBySubtracting:self->_currentStatementPaymentsSum];
          [v52 setAmount:v54];
        }

        v49 = [v48 countByEnumeratingWithState:&v90 objects:v113 count:16];
      }

      while (v49);
    }
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v5 = v75;
  v55 = [v5 countByEnumeratingWithState:&v86 objects:v112 count:16];
  if (v55)
  {
    v56 = *v87;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v87 != v56)
        {
          objc_enumerationMutation(v5);
        }

        v58 = *(*(&v86 + 1) + 8 * j);
        v59 = [v58 amount];
        v60 = [v59 compare:v6] == -1;

        if (v60)
        {
          [v4 addSuggestedAmount:v58];
        }
      }

      v55 = [v5 countByEnumeratingWithState:&v86 objects:v112 count:16];
    }

    while (v55);
  }

  [(PKBillPaymentSuggestedAmountController *)self _setDifferentialPrivacyFeature:PKBillPaymentCategoryToDifferentialFeature(v109[3]) atIndex:2];
  _Block_object_dispose(&v102, 8);

  _Block_object_dispose(&v108, 8);
LABEL_20:
}

void __102__PKBillPaymentSuggestedAmountController__generateAmountSuggestionListUsingTransactionHistoryForList___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 items];
  v7 = [v6 allObjects];
  obj = [v7 lastObject];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = obj;
  if (isKindOfClass)
  {
    v10 = obj;
    *(*(*(a1 + 48) + 8) + 24) = [v10 suggestedAmountCategory];
    if ([*(a1 + 32) _categoryIsPaymentPlan:{objc_msgSend(v10, "suggestedAmountCategory")}])
    {
      v11 = *(*(a1 + 32) + 168);
      if (v11)
      {
        if ([v11 compare:*(a1 + 40)] == -1)
        {
          *(*(a1 + 32) + 41) = 1;
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
          *a4 = 1;
        }
      }
    }

    v9 = obj;
  }
}

- (void)_zerothOrFirstMonthBillPaymentSuggestionsForList:(id)a3
{
  v100 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKAccount *)self->_account creditDetails];
  v6 = [v5 accountSummary];
  v7 = [v6 currentStatement];
  v8 = [v6 creditLimit];
  v9 = [v6 adjustedBalance];
  v10 = [v6 remainingMinimumPayment];
  v11 = v10;
  v12 = 0x1E696A000uLL;
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = [MEMORY[0x1E696AB90] zero];
  }

  v84 = v13;

  v14 = [v6 remainingStatementBalance];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [MEMORY[0x1E696AB90] zero];
  }

  v83 = v16;

  v17 = [v7 minimumDue];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [MEMORY[0x1E696AB90] zero];
  }

  v86 = v19;

  v20 = [v7 statementBalance];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = [MEMORY[0x1E696AB90] zero];
  }

  v90 = v22;

  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [MEMORY[0x1E696AB90] zero];
  v89 = v88 = v23;
  if (v9 && v8)
  {
    v24 = [MEMORY[0x1E696AB90] zero];
    v25 = [v8 isEqualToNumber:v24];

    if ((v25 & 1) == 0)
    {
      v26 = [v9 decimalNumberByDividingBy:v8];

      v89 = v26;
    }

    v23 = v88;
  }

  v87 = [MEMORY[0x1E696AB90] zero];
  if (v90 && v8)
  {
    v27 = [MEMORY[0x1E696AB90] zero];
    v28 = [v8 isEqualToNumber:v27];

    if ((v28 & 1) == 0)
    {
      v29 = [v90 decimalNumberByDividingBy:v8];

      v87 = v29;
    }

    v23 = v88;
  }

  if (![(PKBillPaymentSuggestedAmountController *)self _allMandatoryValuesAreSameAmount])
  {
    v97 = 0;
    v98 = 0;
    v95 = 0;
    v96 = 0;
    [(PKBillPaymentSuggestedAmountController *)self _minimumMerchcantCategoriesAboveMinimumAmount:v84 minMerchantCategory1:&v98 minMerchantCategory2:&v97 minMerchantCategorySum1:&v96 minMerchantCategorySum2:&v95];
    v30 = v96;
    v82 = v95;
    v76 = v30;
    if (v30)
    {
      v31 = [v30 decimalNumberByAdding:v86];
      v32 = v31;
      if (self->_isMonthZero || (self->_isMonthOne || !self->_previousStatementPaymentsSum) && [v31 compare:v83] == -1)
      {
        v34 = [[PKBillPaymentSuggestedAmount alloc] initWithAmount:v32 category:3];
        [(PKBillPaymentSuggestedAmount *)v34 setMerchantCategory:v98];
        v33 = v34;
        v12 = 0x1E696A000;
      }

      else
      {
        v33 = 0;
      }

      v85 = v33;
      [v23 safelyAddObject:?];
    }

    else
    {
      v85 = 0;
    }

    if (v82)
    {
      v35 = [v82 decimalNumberByAdding:v86];
      v36 = v35;
      if (self->_isMonthZero || (self->_isMonthOne || !self->_previousStatementPaymentsSum) && [v35 compare:v83] == -1)
      {
        v38 = v9;
        v39 = [[PKBillPaymentSuggestedAmount alloc] initWithAmount:v36 category:4];

        [(PKBillPaymentSuggestedAmount *)v39 setMerchantCategory:v97];
        v37 = v39;
        v9 = v38;
      }

      else
      {
        v37 = v85;
      }

      v23 = v88;
      v85 = v37;
      [v88 safelyAddObject:?];
    }

    v79 = v6;
    v80 = v5;
    v77 = v8;
    v78 = v7;
    v81 = v9;
    if (v9 && self->_isMonthZero && v89)
    {
      v40 = [*(v12 + 2960) decimalNumberWithString:@"0.33"];
      v41 = [v89 compare:v40];

      if (v41 == -1)
      {
        v62 = [PKBillPaymentSuggestedAmount alloc];
        v46 = [*(v12 + 2960) decimalNumberWithString:@"3"];
        v47 = [v81 decimalNumberByDividingBy:v46];
        v48 = v62;
        v49 = v47;
        v50 = 20;
      }

      else
      {
        v42 = [*(v12 + 2960) decimalNumberWithString:@"0.67"];
        v43 = [v89 compare:v42];

        v44 = [PKBillPaymentSuggestedAmount alloc];
        v45 = *(v12 + 2960);
        if (v43 == -1)
        {
          v46 = [v45 decimalNumberWithString:@"6"];
          v47 = [v81 decimalNumberByDividingBy:v46];
          v48 = v44;
          v49 = v47;
          v50 = 21;
        }

        else
        {
          v46 = [v45 decimalNumberWithString:@"9"];
          v47 = [v81 decimalNumberByDividingBy:v46];
          v48 = v44;
          v49 = v47;
          v50 = 22;
        }
      }

      v64 = [(PKBillPaymentSuggestedAmount *)v48 initWithAmount:v49 category:v50];
    }

    else
    {
      if ((!v90 || !self->_isMonthOne || !v87) && self->_previousStatementPaymentsSum)
      {
        goto LABEL_61;
      }

      v51 = [*(v12 + 2960) decimalNumberWithString:@"0.33"];
      v52 = [v87 compare:v51];

      if (v52 == -1)
      {
        v63 = [PKBillPaymentSuggestedAmount alloc];
        v57 = [*(v12 + 2960) decimalNumberWithString:@"3"];
        v58 = [v90 decimalNumberByDividingBy:v57];
        v59 = v63;
        v60 = v58;
        v61 = 26;
      }

      else
      {
        v53 = [*(v12 + 2960) decimalNumberWithString:@"0.67"];
        v54 = [v87 compare:v53];

        v55 = [PKBillPaymentSuggestedAmount alloc];
        v56 = *(v12 + 2960);
        if (v54 == -1)
        {
          v57 = [v56 decimalNumberWithString:@"6"];
          v58 = [v90 decimalNumberByDividingBy:v57];
          v59 = v55;
          v60 = v58;
          v61 = 27;
        }

        else
        {
          v57 = [v56 decimalNumberWithString:@"9"];
          v58 = [v90 decimalNumberByDividingBy:v57];
          v59 = v55;
          v60 = v58;
          v61 = 28;
        }
      }

      v64 = [(PKBillPaymentSuggestedAmount *)v59 initWithAmount:v60 category:v61];

      v65 = [(PKBillPaymentSuggestedAmount *)v64 amount];
      v66 = [v65 compare:v83];

      v85 = v64;
      v23 = v88;
      if (v66 != -1)
      {
        goto LABEL_61;
      }
    }

    [v23 safelyAddObject:v64];
    v85 = v64;
LABEL_61:
    v67 = self->_currentStatementPaymentsSum;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v68 = v23;
    v69 = [v68 countByEnumeratingWithState:&v91 objects:v99 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v92;
      do
      {
        for (i = 0; i != v70; ++i)
        {
          if (*v92 != v71)
          {
            objc_enumerationMutation(v68);
          }

          v73 = *(*(&v91 + 1) + 8 * i);
          if (v67)
          {
            v74 = [*(*(&v91 + 1) + 8 * i) amount];
            if (!-[PKBillPaymentSuggestedAmountController _categoryIsCurrentBalanceType:](self, "_categoryIsCurrentBalanceType:", [v73 category]))
            {
              v75 = [v74 decimalNumberBySubtracting:v67];
              [v73 setAmount:v75];
            }
          }

          [v4 addSuggestedAmount:v73];
        }

        v70 = [v68 countByEnumeratingWithState:&v91 objects:v99 count:16];
      }

      while (v70);
    }

    v6 = v79;
    v5 = v80;
    v8 = v77;
    v7 = v78;
    v9 = v81;
    v23 = v88;
  }
}

- (void)_populateStringValuesForList:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKAccount *)self->_account feature];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v6 = [v4 sortedSuggestedAmounts];
  v7 = [v6 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v68;
    do
    {
      v10 = 0;
      do
      {
        if (*v68 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v67 + 1) + 8 * v10);
        if (self->_isOnPlanCompletion && [*(*(&v67 + 1) + 8 * v10) category] == 18)
        {
          v12 = [(PKBillPaymentSuggestedAmountController *)self _planCompletionTitleString];
          [v11 setTitle:v12];

          v18 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_PLAN_COMPLETION_MESSAGE", v5, 0, v13, v14, v15, v16, v17, v67);
        }

        else
        {
          v19 = [(PKBillPaymentSuggestedAmountController *)self _titleForSuggestion:v11];
          [v11 setTitle:v19];

          v18 = [(PKBillPaymentSuggestedAmountController *)self _messageForSuggestion:v11];
        }

        v20 = v18;
        [v11 setMessage:v18];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v8);
  }

  v21 = [v4 suggestedAmountWithCategory:1];
  v22 = [v4 initialSuggestedAmount];
  v23 = v22;
  if (v21)
  {
    v24 = objc_alloc_init(PKBillPaymentSuggestedAmountMessage);
    v30 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_MINIMUM_GAP_TITLE", v5, 0, v25, v26, v27, v28, v29, v67);
    [(PKBillPaymentSuggestedAmountMessage *)v24 setTitle:v30];

    v36 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_MINIMUM_GAP_MESSAGE", v5, 0, v31, v32, v33, v34, v35, v67);
    [(PKBillPaymentSuggestedAmountMessage *)v24 setMessage:v36];

    [v4 addSuggestedAmountGapMessage:v24 forStartSuggestedAmount:v21];
  }

  else
  {
    if (!v22)
    {
      goto LABEL_20;
    }

    v37 = [v4 remainingStatementAmount];

    if (v37)
    {
      v43 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_NO_REMAINING_MINIMUM_GAP_TITLE", v5, 0, v38, v39, v40, v41, v42, v67);
      [v23 setTitle:v43];

      PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_NO_REMAINING_MINIMUM_GAP_MESSAGE", v5, 0, v44, v45, v46, v47, v48, v67);
    }

    else
    {
      v49 = [(PKBillPaymentSuggestedAmountController *)self _remainingStatementBalanceGapTitleText];
      [v23 setTitle:v49];

      [(PKBillPaymentSuggestedAmountController *)self _remainingStatementBalanceGapDescriptionText];
    }
    v24 = ;
    [v23 setMessage:v24];
  }

LABEL_20:
  v50 = [v4 suggestedAmountWithCategory:18];
  if (v50)
  {
    v51 = objc_alloc_init(PKBillPaymentSuggestedAmountMessage);
    v52 = [(PKBillPaymentSuggestedAmountController *)self _remainingStatementBalanceGapTitleText];
    [(PKBillPaymentSuggestedAmountMessage *)v51 setTitle:v52];

    v53 = [(PKBillPaymentSuggestedAmountController *)self _remainingStatementBalanceGapDescriptionText];
    [(PKBillPaymentSuggestedAmountMessage *)v51 setMessage:v53];

    [v4 addSuggestedAmountGapMessage:v51 forStartSuggestedAmount:v50];
  }

  v54 = [(PKAccountServiceAccountResolutionConfiguration *)self->_configuration earlyInstallmentPlan];
  if (v54)
  {
    v55 = [v4 suggestedAmountWithCategory:30];
    if (!v55)
    {
LABEL_31:

      goto LABEL_32;
    }

    v61 = objc_alloc_init(PKBillPaymentSuggestedAmountMessage);
    numberOfActiveInstallments = self->_numberOfActiveInstallments;
    if (numberOfActiveInstallments == 1)
    {
      v63 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CARD_BALANCE_GAP_ONE_INSTALLMENT_TITLE";
    }

    else
    {
      if (numberOfActiveInstallments < 2)
      {
LABEL_30:
        v66 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CARD_BALANCE_GAP_INSTALLMENT_MESSAGE", v5, 0, v56, v57, v58, v59, v60, v67);
        [(PKBillPaymentSuggestedAmountMessage *)v61 setMessage:v66];

        [v4 addSuggestedAmountGapMessage:v61 forStartSuggestedAmount:v55];
        goto LABEL_31;
      }

      v63 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CARD_BALANCE_GAP_MULTI_INSTALLMENT_TITLE";
    }

    v64 = PKLocalizedFeatureString(v63, v5, 0, v56, v57, v58, v59, v60, v67);
    if (v64)
    {
      v65 = v64;
      [(PKBillPaymentSuggestedAmountMessage *)v61 setTitle:v64];
    }

    goto LABEL_30;
  }

LABEL_32:
}

- (void)_populatePriorityValuesForList:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [a3 sortedSuggestedAmounts];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 category];
        if (v10 <= 0x1E && ((1 << v10) & 0x400C0002) != 0)
        {
          [v9 setPriority:1000];
        }

        if ([(PKBillPaymentSuggestedAmountController *)self _categoryIsPaymentPlan:v10])
        {
          [v9 setPriority:850];
        }

        v12 = [(PKBillPaymentSuggestedAmountController *)self _categoryIsCurrentBalanceType:v10];
        if (v10 - 27 < 2 || v12 || ((v13 = [v9 category], v10 != 3) ? (v14 = v13 == 26) : (v14 = 1), v14 || objc_msgSend(v9, "category") == 4))
        {
          [v9 setPriority:700];
        }

        switch(v10)
        {
          case 2uLL:
            v15 = 550;
            break;
          case 0x1DuLL:
            v15 = 250;
            break;
          case 5uLL:
            v15 = 400;
            break;
          default:
            continue;
        }

        [v9 setPriority:v15];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (BOOL)_allMandatoryValuesAreSameAmount
{
  v2 = [(PKAccount *)self->_account creditDetails];
  v3 = [v2 accountSummary];

  v4 = [v3 adjustedBalance];
  v5 = [v3 remainingStatementBalance];
  v6 = [v3 remainingMinimumPayment];
  v7 = [MEMORY[0x1E696AB90] zero];
  if (v4 && [v4 compare:v7] == -1)
  {
    v8 = v7;

    v4 = v8;
  }

  if (v5 && [v5 compare:v7] == -1)
  {
    v11 = v7;

    v5 = v11;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else if (!v6)
  {
    goto LABEL_15;
  }

  if ([v6 compare:v7] == -1)
  {
    v9 = v7;

    v6 = v9;
  }

  v10 = 0;
  if (v4 && v5 && v6)
  {
    if ([v4 isEqual:v5])
    {
      v10 = [v5 isEqual:v6];
      goto LABEL_16;
    }

LABEL_15:
    v10 = 0;
  }

LABEL_16:

  return v10;
}

- (void)_minimumMerchcantCategoriesAboveMinimumAmount:(id)a3 minMerchantCategory1:(int64_t *)a4 minMerchantCategory2:(int64_t *)a5 minMerchantCategorySum1:(id *)a6 minMerchantCategorySum2:(id *)a7
{
  v12 = a3;
  v13 = v12;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__65;
  v31 = __Block_byref_object_dispose__65;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__65;
  v25 = __Block_byref_object_dispose__65;
  v26 = 0;
  if (v12)
  {
    merchantCategoryTransactionSums = self->_merchantCategoryTransactionSums;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __178__PKBillPaymentSuggestedAmountController__minimumMerchcantCategoriesAboveMinimumAmount_minMerchantCategory1_minMerchantCategory2_minMerchantCategorySum1_minMerchantCategorySum2___block_invoke;
    v15[3] = &unk_1E79DEC20;
    v16 = v12;
    v17 = &v27;
    v18 = &v37;
    v19 = &v21;
    v20 = &v33;
    [(NSDictionary *)merchantCategoryTransactionSums enumerateKeysAndObjectsUsingBlock:v15];
  }

  if (a4)
  {
    *a4 = v38[3];
  }

  if (a5)
  {
    *a5 = v34[3];
  }

  if (a6)
  {
    *a6 = v28[5];
  }

  if (a7)
  {
    *a7 = v22[5];
  }

  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

void __178__PKBillPaymentSuggestedAmountController__minimumMerchcantCategoriesAboveMinimumAmount_minMerchantCategory1_minMerchantCategory2_minMerchantCategorySum1_minMerchantCategorySum2___block_invoke(void *a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if ([v5 compare:a1[4]] != 1)
  {
    goto LABEL_16;
  }

  v6 = *(a1[5] + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    v14 = 6;
LABEL_15:
    objc_storeStrong(v7, a3);
    *(*(a1[v14] + 8) + 24) = [v15 integerValue];
    goto LABEL_16;
  }

  v9 = a1 + 7;
  v10 = *(a1[7] + 8);
  v11 = *(v10 + 40);
  v7 = (v10 + 40);
  if (!v11)
  {
    v14 = 8;
    goto LABEL_15;
  }

  if ([v5 compare:?] == -1 || objc_msgSend(v5, "compare:", *(*(*v9 + 8) + 40)) == -1)
  {
    v12 = [*(*(a1[5] + 8) + 40) compare:*(*(*v9 + 8) + 40)];
    if (v12 == -1)
    {
      v13 = a1 + 7;
    }

    else
    {
      v13 = a1 + 5;
    }

    if (v12 == -1)
    {
      v14 = 8;
    }

    else
    {
      v14 = 6;
    }

    v7 = (*(*v13 + 8) + 40);
    goto LABEL_15;
  }

LABEL_16:
}

- (id)_suggestedAmountsForPayOffDateForStatementBalance:(id)a3 creditUtilization:(id)a4 lastPaymentCategory:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = 0;
  if (v8 && v9 && self->_statementPurchasesSum)
  {
    switch(a5)
    {
      case 6uLL:
      case 0xEuLL:
      case 0x19uLL:
        v12 = [PKBillPaymentSuggestedAmount alloc];
        v13 = [v8 decimalNumberBySubtracting:self->_statementPurchasesSum];
        v14 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"8"];
        v15 = [v13 decimalNumberByDividingBy:v14];
        v16 = [v15 decimalNumberByAdding:self->_statementPurchasesSum];
        v17 = v12;
        v18 = v16;
        v19 = 7;
        goto LABEL_18;
      case 7uLL:
        v25 = [PKBillPaymentSuggestedAmount alloc];
        v13 = [v8 decimalNumberBySubtracting:self->_statementPurchasesSum];
        v14 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"7"];
        v15 = [v13 decimalNumberByDividingBy:v14];
        v16 = [v15 decimalNumberByAdding:self->_statementPurchasesSum];
        v17 = v25;
        v18 = v16;
        v19 = 8;
        goto LABEL_18;
      case 8uLL:
        v22 = [PKBillPaymentSuggestedAmount alloc];
        v13 = [v8 decimalNumberBySubtracting:self->_statementPurchasesSum];
        v14 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"6"];
        v15 = [v13 decimalNumberByDividingBy:v14];
        v16 = [v15 decimalNumberByAdding:self->_statementPurchasesSum];
        v17 = v22;
        v18 = v16;
        v19 = 9;
        goto LABEL_18;
      case 9uLL:
      case 0xFuLL:
      case 0x18uLL:
        v21 = [PKBillPaymentSuggestedAmount alloc];
        v13 = [v8 decimalNumberBySubtracting:self->_statementPurchasesSum];
        v14 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"5"];
        v15 = [v13 decimalNumberByDividingBy:v14];
        v16 = [v15 decimalNumberByAdding:self->_statementPurchasesSum];
        v17 = v21;
        v18 = v16;
        v19 = 10;
        goto LABEL_18;
      case 0xAuLL:
        v24 = [PKBillPaymentSuggestedAmount alloc];
        v13 = [v8 decimalNumberBySubtracting:self->_statementPurchasesSum];
        v14 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"4"];
        v15 = [v13 decimalNumberByDividingBy:v14];
        v16 = [v15 decimalNumberByAdding:self->_statementPurchasesSum];
        v17 = v24;
        v18 = v16;
        v19 = 11;
        goto LABEL_18;
      case 0xBuLL:
        v23 = [PKBillPaymentSuggestedAmount alloc];
        v13 = [v8 decimalNumberBySubtracting:self->_statementPurchasesSum];
        v14 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"3"];
        v15 = [v13 decimalNumberByDividingBy:v14];
        v16 = [v15 decimalNumberByAdding:self->_statementPurchasesSum];
        v17 = v23;
        v18 = v16;
        v19 = 12;
        goto LABEL_18;
      case 0xCuLL:
      case 0x10uLL:
      case 0x17uLL:
        v20 = [PKBillPaymentSuggestedAmount alloc];
        v13 = [v8 decimalNumberBySubtracting:self->_statementPurchasesSum];
        v14 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"2"];
        v15 = [v13 decimalNumberByDividingBy:v14];
        v16 = [v15 decimalNumberByAdding:self->_statementPurchasesSum];
        v17 = v20;
        v18 = v16;
        v19 = 13;
        goto LABEL_18;
      case 0xDuLL:
        v11 = [[PKBillPaymentSuggestedAmount alloc] initWithAmount:v8 category:17];
        break;
      default:
        v26 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"0.33"];
        v27 = [v10 compare:v26];

        if (v27 == -1)
        {
          v31 = [PKBillPaymentSuggestedAmount alloc];
          v13 = [v8 decimalNumberBySubtracting:self->_statementPurchasesSum];
          v14 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"3"];
          v15 = [v13 decimalNumberByDividingBy:v14];
          v16 = [v15 decimalNumberByAdding:self->_statementPurchasesSum];
          v17 = v31;
          v18 = v16;
          v19 = 16;
        }

        else
        {
          v28 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"0.67"];
          v29 = [v10 compare:v28];

          v30 = [PKBillPaymentSuggestedAmount alloc];
          v13 = [v8 decimalNumberBySubtracting:self->_statementPurchasesSum];
          if (v29 == -1)
          {
            v14 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"6"];
            v15 = [v13 decimalNumberByDividingBy:v14];
            v16 = [v15 decimalNumberByAdding:self->_statementPurchasesSum];
            v17 = v30;
            v18 = v16;
            v19 = 15;
          }

          else
          {
            v14 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"9"];
            v15 = [v13 decimalNumberByDividingBy:v14];
            v16 = [v15 decimalNumberByAdding:self->_statementPurchasesSum];
            v17 = v30;
            v18 = v16;
            v19 = 14;
          }
        }

LABEL_18:
        v11 = [(PKBillPaymentSuggestedAmount *)v17 initWithAmount:v18 category:v19];

        break;
    }
  }

  return v11;
}

- (id)_calculateThresholdForLastPaymentCategory:(unint64_t)a3 statementBalance:(id)a4 suggestedAmountWithSameCategory:(id)a5
{
  v8 = a4;
  v9 = a5;
  previousStatementPaymentsSum = self->_previousStatementPaymentsSum;
  if (previousStatementPaymentsSum)
  {
    v11 = previousStatementPaymentsSum;
    switch(a3)
    {
      case 0uLL:
        v17 = self->_previousStatementPaymentsSum;
        goto LABEL_13;
      case 6uLL:
      case 0xEuLL:
      case 0x19uLL:
        v12 = [v8 decimalNumberBySubtracting:self->_statementPurchasesSum];
        v13 = MEMORY[0x1E696AB90];
        v14 = @"8";
        goto LABEL_16;
      case 7uLL:
        v12 = [v8 decimalNumberBySubtracting:self->_statementPurchasesSum];
        v13 = MEMORY[0x1E696AB90];
        v14 = @"7";
        goto LABEL_16;
      case 8uLL:
        v12 = [v8 decimalNumberBySubtracting:self->_statementPurchasesSum];
        v13 = MEMORY[0x1E696AB90];
        v14 = @"6";
        goto LABEL_16;
      case 9uLL:
      case 0xFuLL:
      case 0x18uLL:
        v12 = [v8 decimalNumberBySubtracting:self->_statementPurchasesSum];
        v13 = MEMORY[0x1E696AB90];
        v14 = @"5";
        goto LABEL_16;
      case 0xAuLL:
        v12 = [v8 decimalNumberBySubtracting:self->_statementPurchasesSum];
        v13 = MEMORY[0x1E696AB90];
        v14 = @"4";
        goto LABEL_16;
      case 0xBuLL:
        v12 = [v8 decimalNumberBySubtracting:self->_statementPurchasesSum];
        v13 = MEMORY[0x1E696AB90];
        v14 = @"3";
        goto LABEL_16;
      case 0xCuLL:
      case 0x10uLL:
      case 0x17uLL:
        v12 = [v8 decimalNumberBySubtracting:self->_statementPurchasesSum];
        v13 = MEMORY[0x1E696AB90];
        v14 = @"2";
LABEL_16:
        v19 = [v13 decimalNumberWithString:v14];
        v20 = [(NSDecimalNumber *)v12 decimalNumberByDividingBy:v19];
        v18 = [v20 decimalNumberByAdding:self->_statementPurchasesSum];

        v11 = v12;
        goto LABEL_17;
      case 0xDuLL:
        v17 = v8;
        goto LABEL_13;
      default:
        v15 = [v9 amount];
        v16 = [v15 compare:self->_previousStatementPaymentsSum];

        if (v16 != 1)
        {
          break;
        }

        v17 = [v9 amount];
LABEL_13:
        v18 = v17;
LABEL_17:

        v11 = v18;
        break;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_suggestedAmountListIsValidAfterPurgeIfNecessary:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0;
  v4 = [(__CFString *)v3 isValidWithUnableReason:&v12];
  v5 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = PKBillPaymentSuggestedAmountListUnableReasonToString(v12);
    *buf = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Generated bill payment suggested amount list is valid %@ with unable reason: %@", buf, 0x16u);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Generated bill payment suggested amount list: %@", buf, 0xCu);
  }

  if (v4)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Trying to purge any invalid suggestion amounts from list...", buf, 2u);
    }

    [(__CFString *)v3 attemptToPurgeInvalidSuggestedAmounts];
    v8 = [(__CFString *)v3 isValidWithUnableReason:&v12];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v10 = PKBillPaymentSuggestedAmountListUnableReasonToString(v12);
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Generated bill payment suggested amount list is valid %@ with unable reason: %@", buf, 0x16u);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "New generated bill payment suggested amount list: %@", buf, 0xCu);
    }
  }

  return v8;
}

- (id)_titleForSuggestion:(id)a3
{
  v4 = a3;
  v5 = [v4 category];
  v6 = [(PKAccount *)self->_account feature];
  v7 = [(PKAccount *)self->_account creditDetails];
  v8 = [v7 accountSummary];
  v9 = [v8 currentStatement];
  v15 = [v8 balanceSummary];
  if (self->_currentStatementIsLastMonthsStatement)
  {
    v16 = [v9 closingDate];
  }

  else
  {
    v16 = 0;
  }

  switch(v5)
  {
    case 1:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_MINIMUM_TITLE";
      goto LABEL_54;
    case 2:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_LAST_PAYMENT_TITLE";
      goto LABEL_54;
    case 3:
      v22 = [v4 merchantCategory];
      v35 = PKLocalizedBillPaymentStringFromMerchantCategory(v22, v23, v24, v25, v26, v27, v28, v29);
      if (self->_isMonthZero)
      {
        v36 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_LAST_PAYMENT_PLUS_MERCHANT_CATEGORY1_MONTH_ZERO_TITLE";
        goto LABEL_64;
      }

      isMonthOne = self->_isMonthOne;
      v59 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_LAST_PAYMENT_PLUS_MERCHANT_CATEGORY1_TITLE";
      v60 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_LAST_PAYMENT_PLUS_MERCHANT_CATEGORY1_MONTH_ONE_TITLE";
      goto LABEL_61;
    case 4:
      v37 = [v4 merchantCategory];
      v35 = PKLocalizedBillPaymentStringFromMerchantCategory(v37, v38, v39, v40, v41, v42, v43, v44);
      if (self->_isMonthZero)
      {
        v36 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_LAST_PAYMENT_PLUS_MERCHANT_CATEGORY2_MONTH_ZERO_TITLE";
      }

      else
      {
        isMonthOne = self->_isMonthOne;
        v59 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_LAST_PAYMENT_PLUS_MERCHANT_CATEGORY2_TITLE";
        v60 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_LAST_PAYMENT_PLUS_MERCHANT_CATEGORY2_MONTH_ONE_TITLE";
LABEL_61:
        if (isMonthOne)
        {
          v36 = v60;
        }

        else
        {
          v36 = v59;
        }
      }

LABEL_64:
      v21 = PKLocalizedFeatureString(v36, v6, @"%@", v30, v31, v32, v33, v34, v35);
      goto LABEL_120;
    case 5:
      if (v16)
      {
        v19 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v16];
        if (v19)
        {
          v20 = v19;
          v21 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_NEW_PURCHASES_TITLE", v6, @"%@", v10, v11, v12, v13, v14, v19);
          goto LABEL_124;
        }
      }

      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_NEW_PURCHASES_NO_DATE_TITLE";
LABEL_54:
      v18 = PKLocalizedFeatureString(v17, v6, 0, v10, v11, v12, v13, v14, v94);
LABEL_55:
      v21 = v18;
      goto LABEL_56;
    case 6:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_NINE_MONTHS_TITLE";
      goto LABEL_54;
    case 7:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_EIGHT_MONTHS_TITLE";
      goto LABEL_54;
    case 8:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_SEVEN_MONTHS_TITLE";
      goto LABEL_54;
    case 9:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_SIX_MONTHS_TITLE";
      goto LABEL_54;
    case 10:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_FIVE_MONTHS_TITLE";
      goto LABEL_54;
    case 11:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_FOUR_MONTHS_TITLE";
      goto LABEL_54;
    case 12:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_THREE_MONTHS_TITLE";
      goto LABEL_54;
    case 13:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_TWO_MONTHS_TITLE";
      goto LABEL_54;
    case 14:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_NINE_MONTHS_FROM_UTILIZATION_TITLE";
      goto LABEL_54;
    case 15:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_SIX_MONTHS_FROM_UTILIZATION_TITLE";
      goto LABEL_54;
    case 16:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_THREE_MONTHS_FROM_UTILIZATION_TITLE";
      goto LABEL_54;
    case 17:
      v18 = [(PKBillPaymentSuggestedAmountController *)self _planCompletionTitleString];
      goto LABEL_55;
    case 18:
      v18 = [(PKBillPaymentSuggestedAmountController *)self _remainingStatementBalanceTitleString];
      goto LABEL_55;
    case 19:
      v99 = [v8 inGrace];
      v45 = [v15 pendingPurchases];
      v102 = v45;
      if (v45)
      {
        v46 = v45;
        v47 = [MEMORY[0x1E696AB90] zero];
        v96 = [v46 compare:v47] == 1;
      }

      else
      {
        v96 = 0;
      }

      numberOfActiveInstallments = self->_numberOfActiveInstallments;
      v71 = [(PKAccountServiceAccountResolutionConfiguration *)self->_configuration earlyInstallmentPlan];

      if (v99)
      {
        v78 = numberOfActiveInstallments < 1 || v71 == 0;
        if (v96)
        {
          if (v78)
          {
            v79 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CURRENT_BALANCE_TITLE_PENDING";
          }

          else
          {
            v79 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_TOTAL_BALANCE_TITLE_PENDING_INSTALLMENT";
          }

          goto LABEL_112;
        }

        if (v78)
        {
          goto LABEL_104;
        }

        goto LABEL_103;
      }

      v101 = numberOfActiveInstallments;
      if (!v96)
      {
        if (numberOfActiveInstallments < 1 || !v71)
        {
LABEL_104:
          v79 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CURRENT_BALANCE_TITLE";
          goto LABEL_112;
        }

LABEL_103:
        v79 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_TOTAL_BALANCE_TITLE_INSTALLMENT";
LABEL_112:
        v21 = PKLocalizedFeatureString(v79, v6, 0, v72, v73, v74, v75, v76, v94);
        v35 = v102;
        goto LABEL_120;
      }

      v80 = [v8 remainingStatementBalance];
      v81 = [v8 adjustedBalance];
      v95 = v81;
      v98 = v80;
      if (!v80 || !v81)
      {
        v35 = v102;
        if (v101 < 1 || !v71)
        {
          goto LABEL_116;
        }

LABEL_110:
        v93 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_TOTAL_BALANCE_TITLE_PENDING_INSTALLMENT";
        goto LABEL_118;
      }

      v87 = [v80 isEqual:v81];
      v89 = v101 < 1 || v71 == 0;
      if (v87 && v89)
      {
        v35 = v102;
        if (v16)
        {
          v90 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v16];
          if (v90)
          {
            v91 = v90;
            v21 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_REMAINING_STATEMENT_BALANCE_DATE_TITLE", v6, @"%@", v82, v83, v84, v85, v86, v90);

            goto LABEL_119;
          }
        }

        v93 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_REMAINING_STATEMENT_BALANCE_TITLE";
        goto LABEL_118;
      }

      v35 = v102;
      if (!v89)
      {
        goto LABEL_110;
      }

LABEL_116:
      v93 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CURRENT_BALANCE_TITLE_PENDING_REVOLVER";
LABEL_118:
      v21 = PKLocalizedFeatureString(v93, v6, 0, v82, v83, v84, v85, v86, v94);
LABEL_119:

LABEL_120:
LABEL_56:

      return v21;
    case 20:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_ONE_THIRD_TITLE";
      goto LABEL_54;
    case 21:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_ONE_SIXTH_TITLE";
      goto LABEL_54;
    case 22:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_ONE_NINTH_TITLE";
      goto LABEL_54;
    case 23:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_THREE_MONTHS_FOR_TRANSACTOR_TITLE";
      goto LABEL_54;
    case 24:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_SIX_MONTHS_FOR_TRANSACTOR_TITLE";
      goto LABEL_54;
    case 25:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_NINE_MONTHS_FOR_TRANSACTOR_TITLE";
      goto LABEL_54;
    case 26:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_ONE_THIRD_STATEMENT_BALANCE_TITLE";
      goto LABEL_54;
    case 27:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_ONE_SIXTH_STATEMENT_BALANCE_TITLE";
      goto LABEL_54;
    case 28:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_ONE_NINTH_STATEMENT_BALANCE_TITLE";
      goto LABEL_54;
    case 29:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_AVERAGE_OF_MINIMUM_AND_STATEMENT_BALANCE_TITLE";
      goto LABEL_54;
    case 30:
      v103 = [v8 inGrace];
      v48 = [v15 pendingPurchases];
      v100 = v48;
      if (v48)
      {
        v49 = [MEMORY[0x1E696AB90] zero];
        LODWORD(v48) = [v48 compare:v49] == 1;
      }

      v97 = self->_numberOfActiveInstallments;
      v50 = [(PKAccountServiceAccountResolutionConfiguration *)self->_configuration earlyInstallmentPlan];

      if (v103)
      {
        if (v48)
        {
          if (v97 >= 1 && v50)
          {
            v56 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CARD_BALANCE_TITLE_PENDING_INSTALLMENT";
          }

          else
          {
            v56 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CURRENT_BALANCE_TITLE_PENDING";
          }

          goto LABEL_73;
        }

LABEL_72:
        v56 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CURRENT_BALANCE_TITLE";
LABEL_73:
        v21 = PKLocalizedFeatureString(v56, v6, 0, v51, v52, v53, v54, v55, v94);
        v20 = v100;
        goto LABEL_124;
      }

      if (!v48)
      {
        goto LABEL_72;
      }

      v61 = [v8 remainingStatementBalance];
      v62 = [v8 adjustedBalance];
      v104 = v62;
      if (v61 && v62 && [v61 isEqual:v62])
      {
        if (v16)
        {
          v68 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v16];
          if (v68)
          {
            v69 = v68;
            v21 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_REMAINING_STATEMENT_BALANCE_DATE_TITLE", v6, @"%@", v63, v64, v65, v66, v67, v68);

            goto LABEL_123;
          }
        }

        v92 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_REMAINING_STATEMENT_BALANCE_TITLE";
      }

      else if (v97 >= 1 && v50)
      {
        v92 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CARD_BALANCE_TITLE_PENDING_INSTALLMENT";
      }

      else
      {
        v92 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CURRENT_BALANCE_TITLE_PENDING_REVOLVER";
      }

      v21 = PKLocalizedFeatureString(v92, v6, 0, v63, v64, v65, v66, v67, v94);
LABEL_123:
      v20 = v100;

LABEL_124:
      goto LABEL_56;
    case 31:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_COMBINED_BALANCE_TITLE";
      goto LABEL_54;
    case 32:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_VERY_EXPENSIVE_PURCHASE_TITLE";
      goto LABEL_54;
    case 33:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_RECURRING_EXPENSES_TITLE";
      goto LABEL_54;
    case 34:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_TOP_MERCHANT_TITLE";
      goto LABEL_54;
    case 35:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_RECENT_TRIP_TITLE";
      goto LABEL_54;
    case 36:
      v17 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PEAK_SPEND_DAY_TITLE";
      goto LABEL_54;
    default:
      v21 = 0;
      goto LABEL_56;
  }
}

- (id)_messageForSuggestion:(id)a3
{
  v4 = a3;
  v5 = [(PKAccount *)self->_account feature];
  v6 = [v4 category];
  v7 = [(PKAccount *)self->_account creditDetails];
  v8 = [v7 accountSummary];
  v9 = [v8 balanceSummary];
  v10 = [v8 currentStatement];
  v16 = v10;
  if (self->_currentStatementIsLastMonthsStatement)
  {
    v17 = [v10 closingDate];
  }

  else
  {
    v17 = 0;
  }

  switch(v6)
  {
    case 0:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_NONE_MESSAGE";
      goto LABEL_77;
    case 1:
      v27 = [v8 pastDueAmount];
      if ([v8 cyclesPastDue] <= 0)
      {
        if (!v27 || ([MEMORY[0x1E696AB90] zero], v80 = objc_claimAutoreleasedReturnValue(), v107 = v27, v81 = objc_msgSend(v27, "compare:", v80), v80, v55 = v81 == 1, v27 = v107, !v55))
        {
          numberOfActiveStatementedInstallments = self->_numberOfActiveStatementedInstallments;
          if (numberOfActiveStatementedInstallments == 1)
          {
            v28 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_MINIMUM_ONE_INSTALLMENT_MESSAGE";
          }

          else if (numberOfActiveStatementedInstallments < 2)
          {
            v28 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_MINIMUM_MESSAGE";
          }

          else
          {
            v28 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_MINIMUM_MULTI_INSTALLMENT_MESSAGE";
          }

          goto LABEL_146;
        }
      }

      if (v17)
      {
        v40 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v17];
      }

      else
      {
        v40 = 0;
      }

      if ([v40 length])
      {
        PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_MINIMUM_PAST_DUE_MESSAGE", v5, @"%@", v85, v86, v87, v88, v89, v40);
      }

      else
      {
        PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_MINIMUM_PAST_DUE_NO_DATE_MESSAGE", v5, 0, v85, v86, v87, v88, v89, v99);
      }
      v60 = ;

      goto LABEL_89;
    case 2:
      if (v17)
      {
        v31 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v17];
        if (v31)
        {
          v27 = v31;
          v28 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_LAST_PAYMENT_MESSAGE";
          goto LABEL_87;
        }
      }

      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_LAST_PAYMENT_NO_DATE_MESSAGE";
      goto LABEL_77;
    case 3:
      v32 = [v4 merchantCategory];
      v27 = PKLocalizedBillPaymentStringFromMerchantCategory(v32, v33, v34, v35, v36, v37, v38, v39);
      if (self->_isMonthZero)
      {
        v28 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_LAST_PAYMENT_PLUS_MERCHANT_CATEGORY1_MONTH_ZERO_MESSAGE";
        goto LABEL_87;
      }

      isMonthOne = self->_isMonthOne;
      v63 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_LAST_PAYMENT_PLUS_MERCHANT_CATEGORY1_MESSAGE";
      v64 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_LAST_PAYMENT_PLUS_MERCHANT_CATEGORY1_MONTH_ONE_MESSAGE";
      goto LABEL_84;
    case 4:
      v19 = [v4 merchantCategory];
      v27 = PKLocalizedBillPaymentStringFromMerchantCategory(v19, v20, v21, v22, v23, v24, v25, v26);
      if (self->_isMonthZero)
      {
        v28 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_LAST_PAYMENT_PLUS_MERCHANT_CATEGORY2_MONTH_ZERO_MESSAGE";
      }

      else
      {
        isMonthOne = self->_isMonthOne;
        v63 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_LAST_PAYMENT_PLUS_MERCHANT_CATEGORY2_MESSAGE";
        v64 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_LAST_PAYMENT_PLUS_MERCHANT_CATEGORY2_MONTH_ONE_MESSAGE";
LABEL_84:
        if (isMonthOne)
        {
          v28 = v64;
        }

        else
        {
          v28 = v63;
        }
      }

      goto LABEL_87;
    case 5:
      if (v17)
      {
        v41 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v17];
        if (v41)
        {
          v27 = v41;
          v28 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_NEW_PURCHASES_MESSAGE";
          goto LABEL_87;
        }
      }

      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_NEW_PURCHASES_MESSAGE_NO_DATE";
      goto LABEL_77;
    case 6:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_NINE_MONTHS_MESSAGE";
      goto LABEL_77;
    case 7:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_EIGHT_MONTHS_MESSAGE";
      goto LABEL_77;
    case 8:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_SEVEN_MONTHS_MESSAGE";
      goto LABEL_77;
    case 9:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_SIX_MONTHS_MESSAGE";
      goto LABEL_77;
    case 10:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_FIVE_MONTHS_MESSAGE";
      goto LABEL_77;
    case 11:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_FOUR_MONTHS_MESSAGE";
      goto LABEL_77;
    case 12:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_THREE_MONTHS_MESSAGE";
      goto LABEL_77;
    case 13:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_TWO_MONTHS_MESSAGE";
      goto LABEL_77;
    case 14:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_NINE_MONTHS_FROM_UTILIZATION_MESSAGE";
      goto LABEL_77;
    case 15:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_SIX_MONTHS_FROM_UTILIZATION_MESSAGE";
      goto LABEL_77;
    case 16:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_THREE_MONTHS_FROM_UTILIZATION_MESSAGE";
      goto LABEL_77;
    case 17:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_PLAN_COMPLETION_MESSAGE";
      goto LABEL_77;
    case 18:
      v42 = [(PKBillPaymentSuggestedAmountController *)self _remainingStatementBalanceMessageString];
      goto LABEL_78;
    case 19:
      v105 = [v8 inGrace];
      v46 = [v9 pendingPurchases];
      v102 = v46;
      if (v46)
      {
        v47 = [MEMORY[0x1E696AB90] zero];
        LODWORD(v46) = [v46 compare:v47] == 1;
      }

      numberOfActiveInstallments = self->_numberOfActiveInstallments;
      v49 = [(PKAccountServiceAccountResolutionConfiguration *)self->_configuration earlyInstallmentPlan];

      if (v105)
      {
        v55 = numberOfActiveInstallments < 1 || v49 == 0;
        v56 = v55;
        if (v46)
        {
          if (v56)
          {
            v57 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CURRENT_BALANCE_MESSAGE_TRANSACTOR_PENDING";
LABEL_139:
            v60 = PKLocalizedFeatureString(v57, v5, 0, v50, v51, v52, v53, v54, v99);
            goto LABEL_142;
          }
        }

        else if (v56)
        {
          v57 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CURRENT_BALANCE_MESSAGE_TRANSACTOR";
          goto LABEL_139;
        }

LABEL_130:
        v57 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_TOTAL_BALANCE_MESSAGE_INSTALLMENT";
        goto LABEL_139;
      }

      if (!v46)
      {
        if (numberOfActiveInstallments < 1 || !v49)
        {
          v57 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CURRENT_BALANCE_MESSAGE_REVOLVER";
          goto LABEL_139;
        }

        goto LABEL_130;
      }

      v67 = [v8 remainingStatementBalance];
      v68 = [v8 adjustedBalance];
      v106 = v67;
      if (!v67 || !v68)
      {
        v74 = v68;
        if (numberOfActiveInstallments >= 1 && v49)
        {
          v79 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_TOTAL_BALANCE_MESSAGE_INSTALLMENT";
          goto LABEL_141;
        }

        goto LABEL_140;
      }

      v74 = v68;
      v75 = [v106 isEqual:v68];
      v77 = numberOfActiveInstallments < 1 || v49 == 0;
      v78 = v75 & v77;
      if ((v75 & v77) != 0)
      {
        v79 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CURRENT_BALANCE_MESSAGE_REVOLVER_PENDING_STATMENT_BALANCE_SAME";
      }

      else
      {
        v79 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_TOTAL_BALANCE_MESSAGE_INSTALLMENT";
      }

      if ((v78 & 1) == 0 && v77)
      {
LABEL_140:
        v79 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CURRENT_BALANCE_MESSAGE_REVOLVER_PENDING";
      }

LABEL_141:
      v60 = PKLocalizedFeatureString(v79, v5, 0, v69, v70, v71, v72, v73, v99);

LABEL_142:
LABEL_79:

      return v60;
    case 20:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_ONE_THIRD_MESSAGE";
      goto LABEL_77;
    case 21:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_ONE_SIXTH_MESSAGE";
      goto LABEL_77;
    case 22:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_ONE_NINTH_MESSAGE";
      goto LABEL_77;
    case 23:
      if (v17)
      {
        v58 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v17];
        if (v58)
        {
          v27 = v58;
          v28 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_THREE_MONTHS_FOR_TRANSACTOR_DATE_MESSAGE";
          goto LABEL_87;
        }
      }

      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_THREE_MONTHS_FOR_TRANSACTOR_MESSAGE";
      goto LABEL_77;
    case 24:
      if (v17)
      {
        v30 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v17];
        if (v30)
        {
          v27 = v30;
          v28 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_SIX_MONTHS_FOR_TRANSACTOR_DATE_MESSAGE";
          goto LABEL_87;
        }
      }

      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_SIX_MONTHS_FOR_TRANSACTOR_MESSAGE";
      goto LABEL_77;
    case 25:
      if (v17)
      {
        v29 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v17];
        if (v29)
        {
          v27 = v29;
          v28 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_NINE_MONTHS_FOR_TRANSACTOR_DATE_MESSAGE";
          goto LABEL_87;
        }
      }

      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_NINE_MONTHS_FOR_TRANSACTOR_MESSAGE";
      goto LABEL_77;
    case 26:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_ONE_THIRD_STATEMENT_BALANCE_MESSAGE";
      goto LABEL_77;
    case 27:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_ONE_SIXTH_STATEMENT_BALANCE_MESSAGE";
      goto LABEL_77;
    case 28:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_ONE_NINTH_STATEMENT_BALANCE_MESSAGE";
      goto LABEL_77;
    case 29:
      if (v17)
      {
        v59 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v17];
        if (v59)
        {
          v27 = v59;
          v28 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_AVERAGE_OF_MINIMUM_AND_STATEMENT_BALANCE_DATE_MESSAGE";
LABEL_87:
          v99 = v27;
          v65 = @"%@";
          v66 = v5;
          goto LABEL_88;
        }
      }

      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_AVERAGE_OF_MINIMUM_AND_STATEMENT_BALANCE_MESSAGE";
LABEL_77:
      v42 = PKLocalizedFeatureString(v18, v5, 0, v11, v12, v13, v14, v15, v99);
LABEL_78:
      v60 = v42;
      goto LABEL_79;
    case 30:
      v100 = [v8 inGrace];
      v43 = [v9 pendingPurchases];
      v104 = v43;
      if (v43)
      {
        v44 = v43;
        v45 = [MEMORY[0x1E696AB90] zero];
        v101 = [v44 compare:v45] == 1;
      }

      else
      {
        v101 = 0;
      }

      v83 = self->_numberOfActiveInstallments;
      v84 = [(PKAccountServiceAccountResolutionConfiguration *)self->_configuration earlyInstallmentPlan];

      v60 = 0;
      if (v83 < 1)
      {
        v27 = v104;
        goto LABEL_89;
      }

      v27 = v104;
      if (!v84)
      {
        goto LABEL_89;
      }

      if (v100)
      {
        if (v101)
        {
          v28 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CURRENT_BALANCE_MESSAGE_TRANSACTOR_PENDING";
        }

        else
        {
          v28 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CURRENT_BALANCE_MESSAGE_TRANSACTOR";
        }
      }

      else
      {
        if (v101)
        {
          v90 = [v8 remainingStatementBalance];
          v91 = [v8 adjustedBalance];
          v97 = v91;
          v103 = v90;
          if (v90 && v91 && ([v90 isEqual:v91] & 1) != 0)
          {
            v98 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CURRENT_BALANCE_MESSAGE_REVOLVER_PENDING_STATMENT_BALANCE_SAME";
          }

          else
          {
            v98 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CURRENT_BALANCE_MESSAGE_REVOLVER_PENDING";
          }

          v60 = PKLocalizedFeatureString(v98, v5, 0, v92, v93, v94, v95, v96, v99);

          goto LABEL_89;
        }

        v28 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_CURRENT_BALANCE_MESSAGE_REVOLVER";
      }

LABEL_146:
      v66 = v5;
      v65 = 0;
LABEL_88:
      v60 = PKLocalizedFeatureString(v28, v66, v65, v11, v12, v13, v14, v15, v99);
LABEL_89:

      goto LABEL_79;
    case 31:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_COMBINED_BALANCE_MESSAGE";
      goto LABEL_77;
    case 32:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_VERY_EXPENSIVE_PURCHASE_MESSAGE";
      goto LABEL_77;
    case 33:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_RECURRING_EXPENSES_MESSAGE";
      goto LABEL_77;
    case 34:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_TOP_MERCHANT_MESSAGE";
      goto LABEL_77;
    case 35:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_RECENT_TRIP_MESSAGE";
      goto LABEL_77;
    case 36:
      v18 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PEAK_SPEND_DAY_MESSAGE";
      goto LABEL_77;
    default:
      v60 = 0;
      goto LABEL_79;
  }
}

- (id)_remainingStatementBalanceTitleString
{
  v3 = [(PKAccount *)self->_account feature];
  v4 = [(PKAccount *)self->_account creditDetails];
  v5 = [v4 accountSummary];
  v6 = [v5 currentStatement];
  v12 = v6;
  if (self->_currentStatementIsLastMonthsStatement)
  {
    v13 = [v6 closingDate];
    if (v13)
    {
      v14 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v13];
      if (v14)
      {
        v15 = v14;
        v16 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_REMAINING_STATEMENT_BALANCE_DATE_TITLE", v3, @"%@", v7, v8, v9, v10, v11, v14);

        goto LABEL_7;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_REMAINING_STATEMENT_BALANCE_TITLE", v3, 0, v7, v8, v9, v10, v11, v18);
LABEL_7:

  return v16;
}

- (id)_remainingStatementBalanceMessageString
{
  v3 = [(PKAccount *)self->_account feature];
  v4 = [(PKAccount *)self->_account creditDetails];
  v5 = [v4 accountSummary];
  if ([v5 inGrace])
  {
    v11 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_REMAINING_STATEMENT_BALANCE_MESSAGE_TRANSACTOR";
  }

  else
  {
    v11 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_REMAINING_STATEMENT_BALANCE_MESSAGE_REVOLVER";
  }

  v12 = PKLocalizedFeatureString(v11, v3, 0, v6, v7, v8, v9, v10, v14);

  return v12;
}

- (id)_remainingStatementBalanceGapTitleText
{
  v3 = [(PKAccount *)self->_account feature];
  v4 = [(PKAccount *)self->_account creditDetails];
  v5 = [v4 accountSummary];
  v6 = [v5 currentStatement];
  v12 = v6;
  if (v6 && ([v6 identifier], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_REMAINING_STATEMENT_BALANCE_GAP_TITLE";
  }

  else
  {
    v14 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_REMAINING_STATEMENT_BALANCE_GAP_TITLE_NO_STATEMENT";
  }

  v15 = PKLocalizedFeatureString(v14, v3, 0, v7, v8, v9, v10, v11, v17);

  return v15;
}

- (id)_remainingStatementBalanceGapDescriptionText
{
  v3 = [(PKAccount *)self->_account feature];
  v4 = [(PKAccount *)self->_account creditDetails];
  v5 = [v4 accountSummary];
  v6 = [v5 currentStatement];
  v12 = v6;
  if (v6 && ([v6 identifier], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_REMAINING_STATEMENT_BALANCE_GAP_MESSAGE";
  }

  else
  {
    v14 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_REMAINING_STATEMENT_BALANCE_GAP_MESSAGE_NO_STATEMENT";
  }

  v15 = PKLocalizedFeatureString(v14, v3, 0, v7, v8, v9, v10, v11, v17);

  return v15;
}

- (id)_planCompletionTitleString
{
  v3 = [(PKAccount *)self->_account feature];
  v4 = [(PKAccount *)self->_account creditDetails];
  v5 = [v4 accountSummary];
  v6 = [v5 currentStatement];
  v12 = v6;
  if (self->_currentStatementIsLastMonthsStatement)
  {
    v13 = [v6 closingDate];
    if (v13)
    {
      v14 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v13];
      if (v14)
      {
        v15 = v14;
        v16 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_PLAN_COMPLETION_DATE_TITLE", v3, @"%@", v7, v8, v9, v10, v11, v14);

        goto LABEL_7;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BILL_PAYMENT_CATEGORY_PAY_IN_PLAN_COMPLETION_TITLE", v3, 0, v7, v8, v9, v10, v11, v18);
LABEL_7:

  return v16;
}

- (id)_filterSuggestions:(id)a3 belowThreshold:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 copy];
  v8 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Bill Payment Suggested Amounts Threshold set: %@", buf, 0xCu);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Bill Payment Suggested Amounts before threshold: %@", buf, 0xCu);
  }

  if (v6)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__PKBillPaymentSuggestedAmountController__filterSuggestions_belowThreshold___block_invoke;
    v12[3] = &unk_1E79DEC48;
    v13 = v6;
    v9 = [v5 pk_objectsPassingTest:v12];

    v7 = v9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Bill Payment Suggested Amounts after threshold: %@", buf, 0xCu);
  }

  v10 = [v7 mutableCopy];

  return v10;
}

BOOL __76__PKBillPaymentSuggestedAmountController__filterSuggestions_belowThreshold___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 amount];
  v4 = [v3 compare:*(a1 + 32)];

  return v4 < 2;
}

- (BOOL)_calculateCurrentStatementIsLastMonthsStatement
{
  v26 = [(PKAccount *)self->_account creditDetails];
  v3 = [v26 accountSummary];
  v4 = [v3 balanceSummary];
  v25 = v3;
  v5 = [v3 currentStatement];
  v6 = [v5 openingDate];
  v7 = [v5 closingDate];
  v8 = PKDatesMidpoint(v6, v7);

  v9 = [v4 openingDate];
  v10 = [v4 closingDate];
  v11 = PKDatesMidpoint(v9, v10);

  v12 = objc_alloc(MEMORY[0x1E695DEE8]);
  v13 = [v12 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v14 = [(PKAccount *)self->_account creditDetails];
  v15 = [v14 productTimeZone];
  [v13 setTimeZone:v15];

  v16 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v16 setMonth:-1];
  v17 = [v13 dateByAddingComponents:v16 toDate:v11 options:0];
  v18 = [v13 components:12 fromDate:v17];
  v19 = v8;
  v20 = [v13 components:12 fromDate:v8];
  v21 = [v18 month];
  if (v21 == [v20 month])
  {
    v22 = [v18 year];
    v23 = v22 == [v20 year];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)_initializeDifferentialPrivacy:(id)a3 accountSummary:(id)a4
{
  v14 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  differentialPrivacyFeatures = self->_differentialPrivacyFeatures;
  self->_differentialPrivacyFeatures = v6;

  v8 = 6;
  do
  {
    v9 = self->_differentialPrivacyFeatures;
    v10 = PKBillPaymentDifferentialPrivacyFeatureToString(0);
    [(NSMutableArray *)v9 addObject:v10];

    --v8;
  }

  while (v8);
  if ([v14 inGrace])
  {
    v11 = 1;
  }

  else
  {
    previousStatementPaymentsSum = self->_previousStatementPaymentsSum;
    if (previousStatementPaymentsSum && ([(NSDecimalNumber *)previousStatementPaymentsSum pk_isPositiveNumber]& 1) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }
  }

  [(PKBillPaymentSuggestedAmountController *)self _setDifferentialPrivacyFeature:v11 atIndex:0];
  if (a3)
  {
    v13 = 13;
  }

  else
  {
    v13 = 14;
  }

  [(PKBillPaymentSuggestedAmountController *)self _setDifferentialPrivacyFeature:v13 atIndex:1];
}

- (void)_initializePaymentRingInstrumentationRecord:(id)a3 accountSummary:(id)a4
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  paymentRingInstrumentationRecord = self->_paymentRingInstrumentationRecord;
  self->_paymentRingInstrumentationRecord = v8;

  v10 = self->_paymentRingInstrumentationRecord;
  v11 = _MergedGlobals_179();
  [(NSMutableDictionary *)v10 setObject:&unk_1F23B5480 forKey:v11];

  v12 = self->_paymentRingInstrumentationRecord;
  v13 = off_1ED6D1150();
  [(NSMutableDictionary *)v12 setObject:&unk_1F23B5498 forKey:v13];

  LOBYTE(v12) = [v7 inGrace];
  v14 = &unk_1F23B54B0;
  if ((v12 & 1) == 0)
  {
    previousStatementPaymentsSum = self->_previousStatementPaymentsSum;
    if (previousStatementPaymentsSum && ([(NSDecimalNumber *)previousStatementPaymentsSum pk_isPositiveNumber]& 1) != 0)
    {
      v14 = &unk_1F23B54C8;
    }

    else
    {
      v14 = &unk_1F23B54E0;
    }
  }

  v16 = self->_paymentRingInstrumentationRecord;
  v17 = off_1ED6D1158();
  [(NSMutableDictionary *)v16 setObject:v14 forKey:v17];

  if (a3)
  {
    v18 = &unk_1F23B5498;
  }

  else
  {
    v18 = &unk_1F23B54B0;
  }

  v19 = self->_paymentRingInstrumentationRecord;
  v20 = off_1ED6D1160();
  [(NSMutableDictionary *)v19 setObject:v18 forKey:v20];
}

- (void)_setDifferentialPrivacyFeature:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if ([(NSMutableArray *)self->_differentialPrivacyFeatures count]> a4)
  {
    differentialPrivacyFeatures = self->_differentialPrivacyFeatures;
    v8 = PKBillPaymentDifferentialPrivacyFeatureToString(a3);
    [(NSMutableArray *)differentialPrivacyFeatures replaceObjectAtIndex:a4 withObject:v8];
  }
}

- (void)recordPaymentActionWithDifferentialPrivacy:(unint64_t)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  differentialPrivacyFeatures = self->_differentialPrivacyFeatures;
  v5 = PKBillPaymentDifferentialPrivacyButtonActionToString(a3);
  [(NSMutableArray *)differentialPrivacyFeatures replaceObjectAtIndex:3 withObject:v5];

  v6 = [(PKBillPaymentSuggestedAmountController *)self differentialPrivacyFeaturesAsString];
  v7 = [objc_alloc(MEMORY[0x1E699A0E0]) initWithKey:@"com.apple.wallet.suggestions"];
  differentialPrivacyRecorder = self->_differentialPrivacyRecorder;
  self->_differentialPrivacyRecorder = v7;

  v9 = self->_differentialPrivacyRecorder;
  v16[0] = v6;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v11 = [(_DPStringRecorder *)v9 record:v10];

  v12 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"Fail";
    if (v11)
    {
      v13 = @"Success";
    }

    v14 = 138543362;
    v15 = v13;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "DifferentialPrivacy recorder status : %{public}@", &v14, 0xCu);
  }
}

- (void)recordPaymentRingAction:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  paymentRingInstrumentationRecord = self->_paymentRingInstrumentationRecord;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = off_1ED6D1150();
  [(NSMutableDictionary *)paymentRingInstrumentationRecord setObject:v5 forKey:v6];

  [(FHPaymentRingSuggestionController *)self->_fhController recordPaymentRingAction:self->_paymentRingInstrumentationRecord];
  v7 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_paymentRingInstrumentationRecord;
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Payment action recorded: %@", &v9, 0xCu);
  }
}

- (id)paymentRingInstrumentationRecordAsString
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  paymentRingInstrumentationRecord = self->_paymentRingInstrumentationRecord;
  v5 = off_1ED6D1158();
  v6 = [(NSMutableDictionary *)paymentRingInstrumentationRecord objectForKey:v5];
  v7 = [v6 stringValue];
  [v3 addObject:v7];

  v8 = self->_paymentRingInstrumentationRecord;
  v9 = off_1ED6D1160();
  v10 = [(NSMutableDictionary *)v8 objectForKey:v9];
  v11 = [v10 stringValue];
  [v3 addObject:v11];

  v12 = self->_paymentRingInstrumentationRecord;
  v13 = _MergedGlobals_179();
  v14 = [(NSMutableDictionary *)v12 objectForKey:v13];
  v15 = [v14 stringValue];
  [v3 addObject:v15];

  v16 = self->_paymentRingInstrumentationRecord;
  v17 = off_1ED6D1150();
  v18 = [(NSMutableDictionary *)v16 objectForKey:v17];
  v19 = [v18 stringValue];
  [v3 addObject:v19];

  v20 = [v3 componentsJoinedByString:{@", "}];

  return v20;
}

@end