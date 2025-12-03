@interface PKBalanceSummaryFetcher
- (BOOL)_transactionIsCredit:(id)credit;
- (BOOL)_transactionIsPurchase:(id)purchase;
- (PKBalanceSummaryFetcher)initWithTransactionSourceCollection:(id)collection account:(id)account;
- (id)_sortedTransactions:(id)transactions ascending:(BOOL)ascending;
- (id)_summaryWithTransactions:(id)transactions currency:(id)currency type:(unint64_t)type startDate:(id)date endDate:(id)endDate;
- (void)balanceSummaryStartingWithDate:(id)date endDate:(id)endDate type:(unint64_t)type completion:(id)completion;
- (void)dealloc;
@end

@implementation PKBalanceSummaryFetcher

- (PKBalanceSummaryFetcher)initWithTransactionSourceCollection:(id)collection account:(id)account
{
  collectionCopy = collection;
  accountCopy = account;
  v18.receiver = self;
  v18.super_class = PKBalanceSummaryFetcher;
  v9 = [(PKBalanceSummaryFetcher *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transactionSourceCollection, collection);
    objc_storeStrong(&v10->_account, account);
    v11 = dispatch_queue_create("com.apple.passkitui.balance.work", 0);
    workQueue = v10->_workQueue;
    v10->_workQueue = v11;

    v13 = dispatch_queue_create("com.apple.passkitui.balance.reply", 0);
    replyQueue = v10->_replyQueue;
    v10->_replyQueue = v13;

    v15 = +[PKPaymentDefaultDataProvider defaultDataProvider];
    paymentDataProvider = v10->_paymentDataProvider;
    v10->_paymentDataProvider = v15;

    [(PKPaymentDefaultDataProvider *)v10->_paymentDataProvider addDelegate:v10];
  }

  return v10;
}

- (void)dealloc
{
  [(PKPaymentDefaultDataProvider *)self->_paymentDataProvider removeDelegate:self];
  v3.receiver = self;
  v3.super_class = PKBalanceSummaryFetcher;
  [(PKBalanceSummaryFetcher *)&v3 dealloc];
}

- (void)balanceSummaryStartingWithDate:(id)date endDate:(id)endDate type:(unint64_t)type completion:(id)completion
{
  dateCopy = date;
  endDateCopy = endDate;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__PKBalanceSummaryFetcher_balanceSummaryStartingWithDate_endDate_type_completion___block_invoke;
  aBlock[3] = &unk_1E79D28D8;
  typeCopy = type;
  aBlock[4] = self;
  v26 = dateCopy;
  v13 = endDateCopy;
  v27 = v13;
  v28 = completionCopy;
  v14 = completionCopy;
  v15 = dateCopy;
  v16 = _Block_copy(aBlock);
  paymentDataProvider = self->_paymentDataProvider;
  transactionSourceIdentifiers = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __82__PKBalanceSummaryFetcher_balanceSummaryStartingWithDate_endDate_type_completion___block_invoke_3;
  v21[3] = &unk_1E79D2900;
  v21[4] = self;
  v22 = v13;
  v23 = v16;
  typeCopy2 = type;
  v19 = v16;
  v20 = v13;
  [(PKPaymentDefaultDataProvider *)paymentDataProvider approvedTransactionsForTransactionSourceIdentifiers:transactionSourceIdentifiers withTransactionSource:0 withBackingData:1 startDate:v15 endDate:v20 limit:0 completion:v21];
}

void __82__PKBalanceSummaryFetcher_balanceSummaryStartingWithDate_endDate_type_completion___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = v3[2];
  v5 = a2;
  v6 = [v4 creditDetails];
  v7 = [v6 currencyCode];
  v8 = [v3 _summaryWithTransactions:v5 currency:v7 type:a1[8] startDate:a1[5] endDate:a1[6]];

  v9 = a1[7];
  if (v9)
  {
    v10 = *(a1[4] + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __82__PKBalanceSummaryFetcher_balanceSummaryStartingWithDate_endDate_type_completion___block_invoke_2;
    v11[3] = &unk_1E79C44A0;
    v13 = v9;
    v12 = v8;
    dispatch_async(v10, v11);
  }
}

void __82__PKBalanceSummaryFetcher_balanceSummaryStartingWithDate_endDate_type_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PKBalanceSummaryFetcher_balanceSummaryStartingWithDate_endDate_type_completion___block_invoke_4;
  block[3] = &unk_1E79D1F80;
  v12 = *(a1 + 56);
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, block);
}

void __82__PKBalanceSummaryFetcher_balanceSummaryStartingWithDate_endDate_type_completion___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = *(*(a1 + 56) + 16);

    v2();
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x1E695DEE8]);
    v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v5 setDay:-10];
    v6 = [MEMORY[0x1E695DF00] date];
    v7 = [v4 dateByAddingComponents:v5 toDate:v6 options:0];

    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    v10 = [*(v8 + 8) transactionSourceIdentifiers];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__PKBalanceSummaryFetcher_balanceSummaryStartingWithDate_endDate_type_completion___block_invoke_5;
    v12[3] = &unk_1E79C53C8;
    v11 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    [v9 pendingTransactionsForTransactionSourceIdentifiers:v10 withTransactionSource:0 withBackingData:1 startDate:v7 endDate:v11 limit:0 completion:v12];
  }
}

void __82__PKBalanceSummaryFetcher_balanceSummaryStartingWithDate_endDate_type_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PKBalanceSummaryFetcher_balanceSummaryStartingWithDate_endDate_type_completion___block_invoke_6;
  block[3] = &unk_1E79C4D60;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

void __82__PKBalanceSummaryFetcher_balanceSummaryStartingWithDate_endDate_type_completion___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) setByAddingObjectsFromSet:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (id)_summaryWithTransactions:(id)transactions currency:(id)currency type:(unint64_t)type startDate:(id)date endDate:(id)endDate
{
  v39 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  dateCopy = date;
  endDateCopy = endDate;
  v28 = objc_alloc_init(PKBalanceSummary);
  v30 = transactionsCopy;
  v11 = [(PKBalanceSummaryFetcher *)self _sortedTransactions:transactionsCopy ascending:0];
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        if ([(PKBalanceSummaryFetcher *)self _transactionIsPurchase:v18])
        {
          [v12 addObject:v18];
        }

        if ([(PKBalanceSummaryFetcher *)self _transactionIsInterest:v18])
        {
          [v33 addObject:v18];
        }

        if ([(PKBalanceSummaryFetcher *)self _transactionIsCredit:v18])
        {
          [v32 addObject:v18];
        }

        rewardsTotalAmount = [v18 rewardsTotalAmount];
        if (rewardsTotalAmount)
        {
          zero = [MEMORY[0x1E696AB90] zero];
          v21 = [rewardsTotalAmount compare:zero];

          if (v21)
          {
            [v31 addObject:v18];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v15);
  }

  v22 = objc_alloc_init(PKPaymentTransactionGroup);
  [(PKPaymentTransactionGroup *)v22 setType:6];
  [(PKPaymentTransactionGroup *)v22 setTransactions:v12];
  -[PKPaymentTransactionGroup setTransactionCount:](v22, "setTransactionCount:", [v12 count]);
  [(PKPaymentTransactionGroup *)v22 setStartDate:dateCopy];
  [(PKPaymentTransactionGroup *)v22 setEndDate:endDateCopy];
  [(PKBalanceSummary *)v28 setOrderedSpendingTransactions:v22];
  v23 = objc_alloc_init(PKPaymentTransactionGroup);
  [(PKPaymentTransactionGroup *)v23 setType:7];
  [(PKPaymentTransactionGroup *)v23 setTransactions:v33];
  -[PKPaymentTransactionGroup setTransactionCount:](v23, "setTransactionCount:", [v33 count]);
  [(PKPaymentTransactionGroup *)v23 setStartDate:dateCopy];
  [(PKPaymentTransactionGroup *)v23 setEndDate:endDateCopy];
  [(PKBalanceSummary *)v28 setOrderedInterestCharges:v23];
  v24 = objc_alloc_init(PKPaymentTransactionGroup);
  [(PKPaymentTransactionGroup *)v24 setType:8];
  [(PKPaymentTransactionGroup *)v24 setTransactions:v32];
  -[PKPaymentTransactionGroup setTransactionCount:](v24, "setTransactionCount:", [v32 count]);
  [(PKPaymentTransactionGroup *)v24 setStartDate:dateCopy];
  [(PKPaymentTransactionGroup *)v24 setEndDate:endDateCopy];
  [(PKBalanceSummary *)v28 setOrderedCredits:v24];
  v25 = objc_alloc_init(PKPaymentTransactionGroup);
  [(PKPaymentTransactionGroup *)v25 setType:4];
  [(PKPaymentTransactionGroup *)v25 setTransactions:v31];
  -[PKPaymentTransactionGroup setTransactionCount:](v25, "setTransactionCount:", [v31 count]);
  [(PKPaymentTransactionGroup *)v25 setStartDate:dateCopy];
  [(PKPaymentTransactionGroup *)v25 setEndDate:endDateCopy];
  [(PKBalanceSummary *)v28 setRewards:v25];

  return v28;
}

- (id)_sortedTransactions:(id)transactions ascending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEB0];
  transactionsCopy = transactions;
  v7 = [v5 sortDescriptorWithKey:@"transactionDate" ascending:ascendingCopy];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [transactionsCopy sortedArrayUsingDescriptors:v8];

  return v9;
}

- (BOOL)_transactionIsPurchase:(id)purchase
{
  purchaseCopy = purchase;
  transactionType = [purchaseCopy transactionType];
  if (transactionType == 13)
  {
    goto LABEL_5;
  }

  if (transactionType)
  {
    v6 = 0;
    goto LABEL_7;
  }

  transactionStatus = [purchaseCopy transactionStatus];
  v6 = 0;
  if (transactionStatus <= 8 && ((1 << transactionStatus) & 0x103) != 0)
  {
LABEL_5:
    amount = [purchaseCopy amount];
    zero = [MEMORY[0x1E696AB90] zero];
    v6 = [amount compare:zero] == 1;
  }

LABEL_7:

  return v6;
}

- (BOOL)_transactionIsCredit:(id)credit
{
  creditCopy = credit;
  transactionType = [creditCopy transactionType];
  if (transactionType > 0xA || ((1 << transactionType) & 0x483) == 0)
  {
    v7 = 0;
  }

  else
  {
    transactionStatus = [creditCopy transactionStatus];
    v7 = 0;
    if (transactionStatus <= 8 && ((1 << transactionStatus) & 0x103) != 0)
    {
      amount = [creditCopy amount];
      zero = [MEMORY[0x1E696AB90] zero];
      v7 = [amount compare:zero] == -1;
    }
  }

  return v7;
}

@end