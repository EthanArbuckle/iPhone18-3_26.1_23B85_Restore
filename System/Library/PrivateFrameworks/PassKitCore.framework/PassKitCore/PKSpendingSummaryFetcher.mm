@interface PKSpendingSummaryFetcher
+ (id)_sortedTransactions:(id)transactions ascending:(BOOL)ascending;
+ (id)_spendingCategoriesFromTransactions:(id)transactions currencyCode:(id)code;
+ (id)_spendingMerchantsFromTransaction:(id)transaction currencyCode:(id)code;
+ (id)_summaryWithTransactions:(id)transactions transactionSourceCollection:(id)collection currency:(id)currency type:(unint64_t)type startDate:(id)date endDate:(id)endDate lastSummary:(id)summary altDSID:(id)self0;
+ (id)nextStartOfWeekFromDate:(id)date;
+ (id)previousStartOfWeekFromDate:(id)date;
+ (id)summaryWithTransactions:(id)transactions transactionSourceCollection:(id)collection accountUser:(id)user currency:(id)currency type:(unint64_t)type startDate:(id)date endDate:(id)endDate lastSummary:(id)self0;
+ (void)enumerateSummaryUnitsWithinSummaryPeriod:(unint64_t)period startDate:(id)date endDate:(id)endDate block:(id)block;
- (PKSpendingSummaryFetcher)initWithTransactionSourceCollection:(id)collection account:(id)account accountUser:(id)user;
- (id)_cacheForType:(unint64_t)type;
- (id)_cachedSpendingSummaryStartingWithDate:(id)date type:(unint64_t)type withLastPeriodChange:(BOOL)change;
- (id)_endDateForStartDate:(id)date ofSummaryType:(unint64_t)type;
- (id)_summaryForComparisonForPeriodStartingWithDate:(id)date endDate:(id)endDate type:(unint64_t)type;
- (id)categoryTotalSpendingSummaryStartingWithDate:(id)date type:(unint64_t)type;
- (void)_accessObserversWithHandler:(id)handler;
- (void)_addInsightsToSummary:(id)summary previousSummary:(id)previousSummary completion:(id)completion;
- (void)_addInterestToSummaryIfNecessary:(id)necessary withLastPeriodChange:(BOOL)change completion:(id)completion;
- (void)_fetchStatementsIfNecessaryWithCompletion:(id)completion;
- (void)_processNextRequest;
- (void)_resetCurrentCalendar;
- (void)_spendingSummaryStartingWithDate:(id)date endDate:(id)endDate type:(unint64_t)type withLastPeriodChange:(BOOL)change completion:(id)completion;
- (void)_timeZoneChanged:(id)changed;
- (void)availableSummaries:(id)summaries;
- (void)dealloc;
- (void)prioritizeSpendingSummaryStartingWithDate:(id)date type:(unint64_t)type;
- (void)registerObserver:(id)observer;
- (void)spendingSummaryStartingWithDate:(id)date type:(unint64_t)type includingLastPeriodChange:(BOOL)change completion:(id)completion;
- (void)statementsChangedForAccountIdentifier:(id)identifier;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
- (void)unregisterObserver:(id)observer;
@end

@implementation PKSpendingSummaryFetcher

- (PKSpendingSummaryFetcher)initWithTransactionSourceCollection:(id)collection account:(id)account accountUser:(id)user
{
  v65 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  accountCopy = account;
  userCopy = user;
  v63.receiver = self;
  v63.super_class = PKSpendingSummaryFetcher;
  v11 = [(PKSpendingSummaryFetcher *)&v63 init];
  v12 = v11;
  if (v11)
  {
    v11->_lockTransactions._os_unfair_lock_opaque = 0;
    if (userCopy)
    {
      obj = user;
      v57 = accountCopy;
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([userCopy isCurrentUser])
      {
        v14 = [collectionCopy transactionSourcesForType:{0, user}];
        anyObject = [v14 anyObject];
        [(PKTransactionSourceCollection *)v13 addObject:anyObject];
      }

      accountCopy2 = account;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v58 = collectionCopy;
      v16 = [collectionCopy transactionSourcesForType:{2, obj}];
      v17 = [v16 countByEnumeratingWithState:&v59 objects:v64 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v60;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v60 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v59 + 1) + 8 * i);
            accountUser = [v21 accountUser];
            if (accountUser)
            {
              v23 = accountUser;
              v24 = [userCopy isEqual:accountUser];

              if (v24)
              {
                [(PKTransactionSourceCollection *)v13 addObject:v21];
                goto LABEL_17;
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v59 objects:v64 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:

      v26 = [PKTransactionSourceCollection alloc];
      v27 = [(PKTransactionSourceCollection *)v13 copy];
      v28 = [(PKTransactionSourceCollection *)v26 initWithTransactionSources:v27];
      transactionSourceCollection = v12->_transactionSourceCollection;
      v12->_transactionSourceCollection = v28;

      objc_storeStrong(&v12->_accountUser, obja);
      accountCopy = v57;
      collectionCopy = v58;
      account = accountCopy2;
    }

    else
    {
      v25 = collectionCopy;
      v13 = v12->_transactionSourceCollection;
      v12->_transactionSourceCollection = v25;
    }

    objc_storeStrong(&v12->_account, account);
    v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v31 = dispatch_queue_create("com.apple.passkitui.spending.work", v30);
    workQueue = v12->_workQueue;
    v12->_workQueue = v31;

    v33 = dispatch_queue_create("com.apple.passkitui.spending.reply", v30);
    replyQueue = v12->_replyQueue;
    v12->_replyQueue = v33;

    v35 = +[PKPaymentDefaultDataProvider defaultDataProvider];
    paymentDataProvider = v12->_paymentDataProvider;
    v12->_paymentDataProvider = v35;

    [(PKPaymentDefaultDataProvider *)v12->_paymentDataProvider addDelegate:v12];
    v37 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    weeklySummaryItemsPerStartDate = v12->_weeklySummaryItemsPerStartDate;
    v12->_weeklySummaryItemsPerStartDate = v37;

    v39 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    monthlySummaryItemsPerStartDate = v12->_monthlySummaryItemsPerStartDate;
    v12->_monthlySummaryItemsPerStartDate = v39;

    v41 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    yearlySummaryItemsPerStartDate = v12->_yearlySummaryItemsPerStartDate;
    v12->_yearlySummaryItemsPerStartDate = v41;

    [(PKSpendingSummaryFetcher *)v12 _resetCurrentCalendar];
    v43 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    pendingRequests = v12->_pendingRequests;
    v12->_pendingRequests = v43;

    v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
    blockPendingRequests = v12->_blockPendingRequests;
    v12->_blockPendingRequests = v45;

    v12->_requestsLock._os_unfair_lock_opaque = 0;
    v12->_observersLock._os_unfair_lock_opaque = 0;
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v12->_observers;
    v12->_observers = pk_weakObjectsHashTableUsingPointerPersonality;

    v49 = +[PKAccountService sharedInstance];
    [v49 registerObserver:v12];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__timeZoneChanged_ name:*MEMORY[0x1E695DA68] object:0];

    v51 = objc_alloc_init(PKSpendingInsightsFetcher);
    insightsFetcher = v12->_insightsFetcher;
    v12->_insightsFetcher = v51;

    [(PKSpendingInsightsFetcher *)v12->_insightsFetcher setUseFinHealth:0];
  }

  return v12;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(PKPaymentDefaultDataProvider *)self->_paymentDataProvider removeDelegate:self];
  v4.receiver = self;
  v4.super_class = PKSpendingSummaryFetcher;
  [(PKSpendingSummaryFetcher *)&v4 dealloc];
}

- (void)_resetCurrentCalendar
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  currentCalendar = self->_currentCalendar;
  self->_currentCalendar = currentCalendar;

  v5 = self->_currentCalendar;

  [(NSCalendar *)v5 setFirstWeekday:2];
}

- (void)availableSummaries:(id)summaries
{
  v43 = *MEMORY[0x1E69E9840];
  summariesCopy = summaries;
  transactionSourceIdentifiers = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
  v6 = objc_alloc_init(PKPaymentTransactionRequest);
  v38 = transactionSourceIdentifiers;
  [(PKPaymentTransactionRequest *)v6 setTransactionSourceIdentifiers:transactionSourceIdentifiers];
  [(PKPaymentTransactionRequest *)v6 setDateOrder:-1];
  [(PKPaymentTransactionRequest *)v6 setLimit:1];
  v36 = [(PKPaymentDefaultDataProvider *)self->_paymentDataProvider transactionsForRequest:v6];
  firstObject = [v36 firstObject];
  transactionDate = [firstObject transactionDate];

  [(PKPaymentTransactionRequest *)v6 setDateOrder:1];
  v37 = v6;
  v34 = [(PKPaymentDefaultDataProvider *)self->_paymentDataProvider transactionsForRequest:v6];
  firstObject2 = [v34 firstObject];
  transactionDate2 = [firstObject2 transactionDate];

  date = [MEMORY[0x1E695DF00] date];
  if (!transactionDate2 || [transactionDate2 compare:date] == -1)
  {
    v12 = date;

    transactionDate2 = v12;
  }

  creditDetails = [(PKAccount *)self->_account creditDetails];
  createdDate = [creditDetails createdDate];

  if (!transactionDate && createdDate)
  {
    v15 = createdDate;
LABEL_7:
    transactionDate = v15;
    goto LABEL_13;
  }

  if (transactionDate && createdDate)
  {
    if ([transactionDate compare:createdDate] == 1)
    {
      v16 = createdDate;

      transactionDate = v16;
    }
  }

  else if (!transactionDate)
  {
    v15 = date;
    goto LABEL_7;
  }

LABEL_13:
  v32 = createdDate;
  v33 = date;
  os_unfair_lock_lock(&self->_lockTransactions);
  objc_storeStrong(&self->_oldestTransactionDate, transactionDate);
  objc_storeStrong(&self->_newestTransactionDate, transactionDate2);
  v17 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    oldestTransactionDate = self->_oldestTransactionDate;
    newestTransactionDate = self->_newestTransactionDate;
    *buf = 138412546;
    v40 = oldestTransactionDate;
    v41 = 2112;
    v42 = newestTransactionDate;
    _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_INFO, "Summaries oldest %@, newest %@", buf, 0x16u);
  }

  os_unfair_lock_unlock(&self->_lockTransactions);
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = [objc_opt_class() previousStartOfWeekFromDate:transactionDate];
  if ([v23 compare:transactionDate2] == -1)
  {
    do
    {
      [v20 addObject:v23];
      v24 = [objc_opt_class() nextStartOfWeekFromDate:v23];

      v23 = v24;
    }

    while ([v24 compare:transactionDate2] == -1);
  }

  else
  {
    v24 = v23;
  }

  v25 = PKStartOfMonth(transactionDate);
  if ([v25 compare:transactionDate2] == -1)
  {
    do
    {
      [v21 addObject:v25];
      v26 = PKStartOfNextMonth(v25);

      v25 = v26;
    }

    while ([v26 compare:transactionDate2] == -1);
  }

  else
  {
    v26 = v25;
  }

  v35 = transactionDate;
  v27 = PKStartOfYear(transactionDate);
  if ([v27 compare:transactionDate2] == -1)
  {
    do
    {
      [v22 addObject:v27];
      v28 = PKStartOfNextYear(v27);

      v27 = v28;
    }

    while ([v28 compare:transactionDate2] == -1);
  }

  else
  {
    v28 = v27;
  }

  if (summariesCopy)
  {
    v31 = [v20 copy];
    v29 = [v21 copy];
    v30 = [v22 copy];
    summariesCopy[2](summariesCopy, v31, v29, v30);
  }
}

- (void)prioritizeSpendingSummaryStartingWithDate:(id)date type:(unint64_t)type
{
  v25 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  os_unfair_lock_lock(&self->_requestsLock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v7 = self->_pendingRequests;
  v8 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        startDate = [v12 startDate];
        v14 = startDate;
        if (dateCopy && startDate)
        {
          if (([dateCopy isEqual:startDate] & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else if (startDate != dateCopy)
        {
LABEL_13:
          v16 = 0;
LABEL_14:

          goto LABEL_16;
        }

        type = [v12 type];

        if (type == type)
        {
          v14 = PKLogFacilityTypeGetObject(0xFuLL);
          v16 = 1;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v23 = v12;
            _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_INFO, "Reprioritizing request %@", buf, 0xCu);
          }

          goto LABEL_14;
        }

        v16 = 0;
LABEL_16:
        [v12 setShouldBeNext:v16];
      }

      v9 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&selfCopy->_requestsLock);
}

- (id)_cachedSpendingSummaryStartingWithDate:(id)date type:(unint64_t)type withLastPeriodChange:(BOOL)change
{
  changeCopy = change;
  dateCopy = date;
  v9 = [(PKSpendingSummaryFetcher *)self _cacheForType:type];
  v10 = [v9 objectForKey:dateCopy];

  if (!v10 || !changeCopy)
  {
    if (!v10)
    {
      previousTotalSpending = 0;
      goto LABEL_8;
    }

LABEL_6:
    previousTotalSpending = v10;
    goto LABEL_8;
  }

  previousTotalSpending = [v10 previousTotalSpending];

  if (previousTotalSpending)
  {
    goto LABEL_6;
  }

LABEL_8:

  return previousTotalSpending;
}

- (id)_summaryForComparisonForPeriodStartingWithDate:(id)date endDate:(id)endDate type:(unint64_t)type
{
  v36 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  os_unfair_lock_lock(&self->_lockTransactions);
  v10 = self->_oldestTransactionDate;
  v11 = self->_newestTransactionDate;
  os_unfair_lock_unlock(&self->_lockTransactions);
  if (v10 && [(NSDate *)v10 compare:endDateCopy]== NSOrderedDescending || v11 && [(NSDate *)v11 compare:dateCopy]== NSOrderedAscending)
  {
    v15 = 0;
  }

  else
  {
    v29 = v11;
    creditDetails = [(PKAccount *)self->_account creditDetails];
    currencyCode = [creditDetails currencyCode];

    v14 = TransactionRequestForCategoryPurchaseSummary(self->_transactionSourceCollection, currencyCode, dateCopy, endDateCopy);
    v15 = objc_alloc_init(PKSpendingSummary);
    v30 = dateCopy;
    [(PKSpendingSummary *)v15 setStartDate:dateCopy];
    [(PKSpendingSummary *)v15 setEndDate:endDateCopy];
    [(PKSpendingSummary *)v15 setSummaryType:type];
    v27 = v14;
    v16 = [(PKPaymentDefaultDataProvider *)self->_paymentDataProvider spendingCategoryTransactionGroupsForRequest:v14 gregorianCalendarUnit:0];
    v17 = [objc_alloc(MEMORY[0x1E696AB90]) initWithDouble:0.0];
    v28 = currencyCode;
    v18 = PKCurrencyAmountCreate(v17, currencyCode, 0);

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        v23 = 0;
        v24 = v18;
        do
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          totalAmount = [*(*(&v31 + 1) + 8 * v23) totalAmount];
          v18 = [v24 currencyAmountByAddingCurrencyAmount:totalAmount];

          ++v23;
          v24 = v18;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v21);
    }

    [(PKSpendingSummary *)v15 setOrderedSpendingCategories:v19];
    [(PKSpendingSummary *)v15 setTotalSpending:v18];

    v11 = v29;
    dateCopy = v30;
  }

  return v15;
}

- (id)categoryTotalSpendingSummaryStartingWithDate:(id)date type:(unint64_t)type
{
  dateCopy = date;
  v7 = objc_alloc_init(PKSpendingSummary);
  [(PKSpendingSummary *)v7 setStartDate:dateCopy];
  [(PKSpendingSummary *)v7 setSummaryType:type];
  v8 = [(PKSpendingSummaryFetcher *)self _endDateForStartDate:dateCopy ofSummaryType:type];
  [(PKSpendingSummary *)v7 setEndDate:v8];
  altDSID = [(PKAccountUser *)self->_accountUser altDSID];
  [(PKSpendingSummary *)v7 setAltDSID:?];
  if (type > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_1ADB9A7B0[type];
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  -[PKSpendingSummary setSummaryUnit:](v7, "setSummaryUnit:", [currentCalendar component:v9 fromDate:dateCopy]);
  creditDetails = [(PKAccount *)self->_account creditDetails];
  currencyCode = [creditDetails currencyCode];

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = TransactionRequestForCategoryPurchaseSummary(self->_transactionSourceCollection, currencyCode, dateCopy, v8);
  v13 = [PKPaymentDefaultDataProvider spendingCategoryTransactionGroupsForRequest:"spendingCategoryTransactionGroupsForRequest:gregorianCalendarUnit:" gregorianCalendarUnit:?];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__36;
  v34 = __Block_byref_object_dispose__36;
  zero = [MEMORY[0x1E696AB90] zero];
  v14 = objc_opt_class();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __78__PKSpendingSummaryFetcher_categoryTotalSpendingSummaryStartingWithDate_type___block_invoke;
  v25[3] = &unk_1E79D5D88;
  v15 = v13;
  v26 = v15;
  v29 = &v30;
  v16 = currencyCode;
  v27 = v16;
  v17 = v12;
  v28 = v17;
  [v14 enumerateSummaryUnitsWithinSummaryPeriod:type startDate:dateCopy endDate:v8 block:v25];
  v18 = objc_alloc_init(PKPaymentTransactionGroup);
  [(PKPaymentTransactionGroup *)v18 setType:4];
  v19 = PKCurrencyAmountCreate(v31[5], v16, 0);
  [(PKPaymentTransactionGroup *)v18 setTotalAmount:v19];

  [(PKPaymentTransactionGroup *)v18 setStartDate:dateCopy];
  [(PKPaymentTransactionGroup *)v18 setEndDate:v8];
  [(PKSpendingSummary *)v7 setRewards:v18];
  v20 = [v17 copy];
  [(PKSpendingSummary *)v7 setSpendingsPerCalendarUnit:v20];

  _Block_object_dispose(&v30, 8);

  return v7;
}

void __78__PKSpendingSummaryFetcher_categoryTotalSpendingSummaryStartingWithDate_type___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(PKSpendingSummary);
  [(PKSpendingSummary *)v7 setStartDate:v5];
  v57 = v7;
  [(PKSpendingSummary *)v7 setEndDate:v6];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v65 = a1;
  v9 = *(a1 + 32);
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __78__PKSpendingSummaryFetcher_categoryTotalSpendingSummaryStartingWithDate_type___block_invoke_2;
  v74[3] = &unk_1E79D5D40;
  v10 = v5;
  v75 = v10;
  v11 = v6;
  v76 = v11;
  v12 = [v9 pk_createArrayByRemovingObjectsPassingTest:v74];
  v13 = [MEMORY[0x1E696AB90] zero];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v12;
  v60 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
  v55 = v11;
  v56 = v10;
  if (v60)
  {
    v59 = *v71;
    v14 = 0x1E696A000uLL;
    v64 = v8;
    do
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v71 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v61 = v15;
        v17 = *(*(&v70 + 1) + 8 * v15);
        v18 = *(*(*(v65 + 56) + 8) + 40);
        v19 = [v17 totalRewardsAmount];
        v20 = [v19 amount];
        v21 = [v18 decimalNumberByAdding:v20];
        v22 = *(*(v65 + 56) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;

        v24 = [v17 totalAmount];
        v25 = [v24 amount];
        v62 = [v16 decimalNumberByAdding:v25];

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v63 = [v17 groups];
        v26 = [v63 countByEnumeratingWithState:&v66 objects:v77 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v67;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v67 != v28)
              {
                objc_enumerationMutation(v63);
              }

              v30 = *(*(&v66 + 1) + 8 * i);
              v31 = [v30 merchantCategory];
              v32 = [*(v14 + 3480) numberWithInteger:v31];
              v33 = [v8 objectForKey:v32];

              if (v33)
              {
                v34 = [v33 totalAmount];
                v35 = [v34 amount];
                v36 = v35;
                if (v35)
                {
                  v37 = v35;
                }

                else
                {
                  v37 = [MEMORY[0x1E696AB90] zero];
                }

                v39 = v37;

                v40 = [v30 totalAmount];
                v41 = [v40 amount];
                v38 = [v39 decimalNumberByAdding:v41];

                v42 = [v33 totalAmount];
                v43 = [v42 amount];
                v44 = v43;
                if (v43)
                {
                  v45 = v43;
                }

                else
                {
                  v45 = [MEMORY[0x1E696AB90] zero];
                }

                v46 = v45;

                v47 = [v30 totalRewardsAmount];
                v48 = [v47 amount];
                v49 = [v46 decimalNumberByAdding:v48];

                [v33 setTransactionCount:{objc_msgSend(v30, "transactionCount") + objc_msgSend(v33, "transactionCount")}];
                v50 = PKCurrencyAmountCreate(v38, *(v65 + 40), 0);
                [v33 setTotalAmount:v50];

                v51 = PKCurrencyAmountCreate(v49, *(v65 + 40), 0);
                [v33 setTotalRewardsAmount:v51];

                v8 = v64;
                v14 = 0x1E696A000;
              }

              else
              {
                v38 = [*(v14 + 3480) numberWithInteger:v31];
                [v8 setObject:v30 forKey:v38];
              }
            }

            v27 = [v63 countByEnumeratingWithState:&v66 objects:v77 count:16];
          }

          while (v27);
        }

        v13 = v62;
        v15 = v61 + 1;
        v16 = v62;
      }

      while (v61 + 1 != v60);
      v60 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
    }

    while (v60);
  }

  v52 = [v8 allValues];
  v53 = [v52 sortedArrayUsingComparator:&__block_literal_global_117];

  [(PKSpendingSummary *)v57 setOrderedSpendingCategories:v53];
  v54 = PKCurrencyAmountCreate(v13, *(v65 + 40), 0);
  [(PKSpendingSummary *)v57 setTotalSpending:v54];

  [*(v65 + 48) addObject:v57];
}

BOOL __78__PKSpendingSummaryFetcher_categoryTotalSpendingSummaryStartingWithDate_type___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startDate];
  if (PKDateIsBetweenDates(v4, *(a1 + 32), *(a1 + 40), 1))
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 endDate];
    v5 = !PKDateIsBetweenDates(v6, *(a1 + 32), *(a1 + 40), 1);
  }

  return v5;
}

uint64_t __78__PKSpendingSummaryFetcher_categoryTotalSpendingSummaryStartingWithDate_type___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 totalAmount];
  v6 = [v5 amount];
  v7 = [v4 totalAmount];

  v8 = [v7 amount];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)spendingSummaryStartingWithDate:(id)date type:(unint64_t)type includingLastPeriodChange:(BOOL)change completion:(id)completion
{
  changeCopy = change;
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dateCopy = date;
  v12 = objc_alloc_init(PKSpendingSummaryFetcherRequest);
  [(PKSpendingSummaryFetcherRequest *)v12 setStartDate:dateCopy];

  [(PKSpendingSummaryFetcherRequest *)v12 setWithLastChange:changeCopy];
  [(PKSpendingSummaryFetcherRequest *)v12 setType:type];
  v13 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v12;
    _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_INFO, "Enqueueing spending summary request %@", &v16, 0xCu);
  }

  os_unfair_lock_lock(&self->_requestsLock);
  [(NSMutableOrderedSet *)self->_pendingRequests addObject:v12];
  v14 = [(NSMutableDictionary *)self->_blockPendingRequests objectForKey:v12];
  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_blockPendingRequests setObject:v14 forKey:v12];
  }

  if (completionCopy)
  {
    v15 = [completionCopy copy];
    [v14 addObject:v15];
  }

  os_unfair_lock_unlock(&self->_requestsLock);
  [(PKSpendingSummaryFetcher *)self _processNextRequest];
}

- (id)_endDateForStartDate:(id)date ofSummaryType:(unint64_t)type
{
  dateCopy = date;
  v7 = dateCopy;
  switch(type)
  {
    case 2uLL:
      v9 = PKEndOfYear(dateCopy);
      goto LABEL_7;
    case 1uLL:
      v9 = PKEndOfMonth(dateCopy);
LABEL_7:
      v4 = v9;
      break;
    case 0uLL:
      v8 = [objc_opt_class() nextStartOfWeekFromDate:dateCopy];
      v4 = [v8 dateByAddingTimeInterval:-1.0];

      break;
  }

  return v4;
}

- (void)_processNextRequest
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PKSpendingSummaryFetcher__processNextRequest__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __47__PKSpendingSummaryFetcher__processNextRequest__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 120));
  v2 = *(a1 + 32);
  if (*(v2 + 144))
  {
    goto LABEL_2;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = *(v2 + 128);
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
LABEL_5:
    v7 = 0;
    while (1)
    {
      if (*v27 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v26 + 1) + 8 * v7);
      if ([v8 shouldBeNext])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v5)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v9 = v8;

    if (v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

  v10 = [*(*(a1 + 32) + 128) lastObject];
  if (!v10)
  {
    v2 = *(a1 + 32);
LABEL_2:
    os_unfair_lock_unlock((v2 + 120));
    return;
  }

  v9 = v10;
LABEL_15:
  *(*(a1 + 32) + 144) = 1;
  [*(*(a1 + 32) + 128) removeObject:v9];
  v11 = [*(*(a1 + 32) + 136) objectForKey:v9];
  v12 = [v11 copy];

  [*(*(a1 + 32) + 136) removeObjectForKey:v9];
  os_unfair_lock_unlock((*(a1 + 32) + 120));
  v13 = [v9 type];
  v14 = [v9 startDate];
  v15 = [*(a1 + 32) _endDateForStartDate:v14 ofSummaryType:v13];
  v16 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v31 = v9;
    _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_INFO, "Dequeueing spending summary request %@", buf, 0xCu);
  }

  v17 = *(a1 + 32);
  v18 = [v9 withLastChange];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __47__PKSpendingSummaryFetcher__processNextRequest__block_invoke_99;
  v22[3] = &unk_1E79D5DB0;
  v19 = *(a1 + 32);
  v23 = v9;
  v24 = v19;
  v25 = v12;
  v20 = v12;
  v21 = v9;
  [v17 _spendingSummaryStartingWithDate:v14 endDate:v15 type:v13 withLastPeriodChange:v18 completion:v22];
}

void __47__PKSpendingSummaryFetcher__processNextRequest__block_invoke_99(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_INFO, "Completed spending summary request %@", buf, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 40) + 120));
  *(*(a1 + 40) + 144) = 0;
  os_unfair_lock_unlock((*(a1 + 40) + 120));
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(a1 + 48);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [*(a1 + 40) _processNextRequest];
}

- (void)_spendingSummaryStartingWithDate:(id)date endDate:(id)endDate type:(unint64_t)type withLastPeriodChange:(BOOL)change completion:(id)completion
{
  changeCopy = change;
  dateCopy = date;
  endDateCopy = endDate;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lockTransactions);
  v15 = self->_oldestTransactionDate;
  v16 = self->_newestTransactionDate;
  os_unfair_lock_unlock(&self->_lockTransactions);
  if ((!v15 || [(NSDate *)v15 compare:endDateCopy]!= NSOrderedDescending) && (!v16 || [(NSDate *)v16 compare:dateCopy]!= NSOrderedAscending))
  {
    v86 = 0;
    v87 = &v86;
    v88 = 0x3032000000;
    v89 = __Block_byref_object_copy__36;
    v90 = __Block_byref_object_dispose__36;
    v91 = 0;
    v17 = [(PKSpendingSummaryFetcher *)self _cachedSpendingSummaryStartingWithDate:dateCopy type:type withLastPeriodChange:changeCopy];
    v18 = v87[5];
    v87[5] = v17;

    if (v87[5])
    {
      if (!completionCopy)
      {
LABEL_14:
        _Block_object_dispose(&v86, 8);
        v22 = v91;
        goto LABEL_15;
      }

      replyQueue = self->_replyQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_2;
      block[3] = &unk_1E79CF400;
      v84 = completionCopy;
      v85 = &v86;
      dispatch_async(replyQueue, block);
      v20 = v84;
    }

    else
    {
      transactionSourceIdentifiers = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
      v38 = [(PKSpendingSummaryFetcher *)self _cacheForType:type];
      v39 = transactionSourceIdentifiers;
      v41 = endDateCopy;
      v24 = objc_alloc_init(PKAsyncUnaryOperationComposer);
      v25 = v24;
      v81[0] = 0;
      v81[1] = v81;
      v81[2] = 0x3032000000;
      v81[3] = __Block_byref_object_copy__36;
      v81[4] = __Block_byref_object_dispose__36;
      v82 = 0;
      if (!self->_earliestSpendingByAnotherUser)
      {
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3221225472;
        v80[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_3;
        v80[3] = &unk_1E79D5CF0;
        v80[4] = self;
        [(PKAsyncUnaryOperationComposer *)v24 addOperation:v80];
      }

      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_7;
      v73[3] = &unk_1E79D5E20;
      v79 = changeCopy;
      v37 = dateCopy;
      v26 = dateCopy;
      typeCopy = type;
      v74 = v26;
      selfCopy = self;
      v27 = endDateCopy;
      v76 = v27;
      v77 = v81;
      v42 = v25;
      [(PKAsyncUnaryOperationComposer *)v25 addOperation:v73];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_8;
      v67[3] = &unk_1E79D5E70;
      v69 = &v86;
      v67[4] = self;
      v28 = v26;
      v72 = changeCopy;
      v68 = v28;
      v70 = v81;
      typeCopy2 = type;
      [(PKAsyncUnaryOperationComposer *)v25 addOperation:v67];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_11;
      v59[3] = &unk_1E79D5F10;
      v59[4] = self;
      v29 = v39;
      v60 = v29;
      v30 = v28;
      v61 = v30;
      v31 = v27;
      v62 = v31;
      v63 = &v86;
      v64 = v81;
      typeCopy3 = type;
      v66 = changeCopy;
      [(PKAsyncUnaryOperationComposer *)v42 addOperation:v59];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_15;
      v54[3] = &unk_1E79D5F60;
      v54[4] = self;
      v40 = v29;
      v55 = v40;
      v32 = v30;
      v56 = v32;
      v33 = v31;
      v57 = v33;
      v58 = &v86;
      [(PKAsyncUnaryOperationComposer *)v42 addOperation:v54];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_17;
      v52[3] = &unk_1E79CD8D8;
      v53 = changeCopy;
      v52[4] = self;
      v52[5] = &v86;
      v52[6] = v81;
      [(PKAsyncUnaryOperationComposer *)v42 addOperation:v52];
      null = [MEMORY[0x1E695DFB0] null];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_19;
      v43[3] = &unk_1E79D5F88;
      v35 = v38;
      v44 = v35;
      v49 = &v86;
      v45 = v32;
      v46 = v33;
      typeCopy4 = type;
      v51 = changeCopy;
      selfCopy2 = self;
      v48 = completionCopy;
      v36 = [(PKAsyncUnaryOperationComposer *)v42 evaluateWithInput:null completion:v43];

      _Block_object_dispose(v81, 8);
      dateCopy = v37;
      v20 = v40;
      endDateCopy = v41;
    }

    goto LABEL_14;
  }

  if (completionCopy)
  {
    v21 = self->_replyQueue;
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke;
    v92[3] = &unk_1E79C4428;
    v93 = completionCopy;
    dispatch_async(v21, v92);
    v22 = v93;
LABEL_15:
  }
}

void __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([*(*(a1 + 32) + 16) isSharedAccount])
  {
    v8 = [*(*(a1 + 32) + 8) transactionSources];
    v9 = [v8 objectsPassingTest:&__block_literal_global_105];

    v10 = [[PKTransactionSourceCollection alloc] initWithTransactionSources:v9];
    v11 = *(*(a1 + 32) + 88);
    v12 = [(PKTransactionSourceCollection *)v10 transactionSourceIdentifiers];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_5;
    v16[3] = &unk_1E79D5DF8;
    v16[4] = *(a1 + 32);
    v18 = v7;
    v17 = v6;
    [v11 transactionsForTransactionSourceIdentifiers:v12 withTransactionSource:0 withBackingData:1 startDate:0 endDate:0 orderedByDate:-1 limit:1 completion:v16];
  }

  else
  {
    v13 = [MEMORY[0x1E695DF00] distantFuture];
    v14 = *(a1 + 32);
    v15 = *(v14 + 168);
    *(v14 + 168) = v13;

    (*(v7 + 2))(v7, v6, 0);
  }
}

uint64_t __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = [v2 accountUser];
    v4 = [v3 isCurrentUser] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_6;
  v7[3] = &unk_1E79CB4E8;
  v8 = v3;
  v9 = v4;
  v11 = *(a1 + 48);
  v10 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_6(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) anyObject];
    v3 = [v2 transactionDate];
    v4 = *(a1 + 40);
    v5 = *(v4 + 168);
    *(v4 + 168) = v3;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF00] distantFuture];
    v7 = *(a1 + 40);
    v2 = *(v7 + 168);
    *(v7 + 168) = v6;
  }

  v8 = *(*(a1 + 56) + 16);

  return v8();
}

void __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_7(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*(a1 + 72) != 1)
  {
    v13 = a4[2];
    v10 = a4;
    v25 = a3;
    v13(v10);
    goto LABEL_19;
  }

  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  v9 = [v6 dateByAddingTimeInterval:-1.0];
  v10 = v9;
  v11 = *(a1 + 64);
  if (v11)
  {
    if (v11 == 2)
    {
      v12 = PKStartOfYear(v9);
    }

    else
    {
      if (v11 != 1)
      {
        v25 = 0;
        goto LABEL_11;
      }

      v12 = PKStartOfMonth(v9);
    }
  }

  else
  {
    v12 = [objc_opt_class() previousStartOfWeekFromDate:v9];
  }

  v25 = v12;
LABEL_11:
  v14 = [MEMORY[0x1E695DF00] now];
  if (PKDateIsBetweenDates(v14, *(a1 + 32), *(a1 + 48), 0))
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF10]);
    v16 = v15;
    v17 = *(a1 + 64);
    v18 = 0x2000;
    if (v17 == 1)
    {
      v18 = 8;
    }

    if (v17 == 2)
    {
      v19 = 4;
    }

    else
    {
      v19 = v18;
    }

    [v15 setValue:-1 forComponent:v19];
    v20 = [MEMORY[0x1E695DEE8] currentCalendar];
    v21 = [v20 dateByAddingComponents:v16 toDate:v14 options:0];

    v10 = v21;
  }

  v22 = [*(a1 + 40) _summaryForComparisonForPeriodStartingWithDate:v25 endDate:v10 type:*(a1 + 64)];
  v23 = *(*(a1 + 56) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

  (v7[2])(v7, v8, 0);
LABEL_19:
}

void __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) _cachedSpendingSummaryStartingWithDate:*(a1 + 40) type:*(a1 + 64) withLastPeriodChange:0];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    objc_initWeak(&location, *(a1 + 32));
    v13 = *(a1 + 32);
    v14 = *(*(*(a1 + 48) + 8) + 40);
    v15 = *(a1 + 72);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_9;
    v16[3] = &unk_1E79D5E48;
    objc_copyWeak(&v20, &location);
    v19 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    v18 = v9;
    v17 = v8;
    [v13 _addInterestToSummaryIfNecessary:v14 withLastPeriodChange:v15 completion:v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v9 + 2))(v9, v8, 0);
  }
}

void __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_9(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = *(*(*(a1 + 48) + 8) + 40);
  if (v3)
  {
    v4 = WeakRetained == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_25;
  }

  v5 = *(*(*(a1 + 56) + 8) + 40);
  v6 = [v3 totalSpending];
  [v5 setPreviousTotalSpending:v6];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [*(*(*(a1 + 48) + 8) + 40) spendingsPerCalendarUnit];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v25 + 1) + 8 * i) totalSpending];
        v14 = [v13 amount];

        if (!v10 || [v14 compare:v10] == 1)
        {
          v15 = v14;

          v10 = v15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);

    if (!v10)
    {
      goto LABEL_21;
    }

    v16 = *(*(*(a1 + 56) + 8) + 40);
    v7 = [WeakRetained[2] creditDetails];
    v17 = [v7 currencyCode];
    v18 = PKCurrencyAmountCreate(v10, v17, 0);
    [v16 setPreviousMaxAmount:v18];
  }

  else
  {
    v10 = 0;
  }

LABEL_21:
  v19 = [*(*(*(a1 + 56) + 8) + 40) insights];

  if (v19)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v20 = *(*(*(a1 + 56) + 8) + 40);
    v21 = *(*(*(a1 + 48) + 8) + 40);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_10;
    v22[3] = &unk_1E79C44A0;
    v24 = *(a1 + 40);
    v23 = *(a1 + 32);
    [WeakRetained _addInsightsToSummary:v20 previousSummary:v21 completion:v22];
  }

LABEL_25:
}

void __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_11(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(v8 + 88);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_12;
  v18[3] = &unk_1E79D5EE8;
  v13 = *(a1 + 64);
  v18[4] = v8;
  v23 = v13;
  v25 = *(a1 + 80);
  v19 = v11;
  v14 = *(a1 + 56);
  v15 = *(a1 + 72);
  v26 = *(a1 + 88);
  v24 = v15;
  v21 = v6;
  v22 = v7;
  v20 = v14;
  v16 = v6;
  v17 = v7;
  [v10 transactionsForTransactionSourceIdentifiers:v9 withTransactionSource:0 withBackingData:1 startDate:v19 endDate:v12 orderedByDate:1 limit:0 completion:v18];
}

void __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_13;
  v14[3] = &unk_1E79D5EC0;
  v6 = *(a1 + 72);
  v14[4] = v4;
  v15 = v3;
  v7 = *(a1 + 88);
  v18 = v6;
  v20 = v7;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v19 = *(a1 + 80);
  v21 = *(a1 + 96);
  v10 = *(a1 + 64);
  *&v11 = *(a1 + 56);
  *(&v11 + 1) = v10;
  *&v12 = v8;
  *(&v12 + 1) = v9;
  v16 = v12;
  v17 = v11;
  v13 = v3;
  dispatch_async(v5, v14);
}

void __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_13(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 176);
  v6 = *(v3 + 8);
  v7 = [*(v3 + 16) creditDetails];
  v8 = [v7 currencyCode];
  v9 = [v2 summaryWithTransactions:v4 transactionSourceCollection:v6 accountUser:v5 currency:v8 type:*(a1 + 96) startDate:*(a1 + 48) endDate:*(a1 + 56) lastSummary:*(*(*(a1 + 88) + 8) + 40)];
  v10 = *(*(a1 + 80) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  objc_initWeak(&location, *(a1 + 32));
  v12 = *(a1 + 32);
  v13 = *(*(*(a1 + 80) + 8) + 40);
  v14 = *(a1 + 104);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_14;
  v17[3] = &unk_1E79D5E98;
  objc_copyWeak(&v20, &location);
  v16 = *(a1 + 72);
  v15 = v16;
  v19 = v16;
  v18 = *(a1 + 64);
  [v12 _addInterestToSummaryIfNecessary:v13 withLastPeriodChange:v14 completion:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = *(*(*(a1 + 48) + 8) + 40);
    v3 = [v2 endDate];
    [v2 setIsFamilySummary:{objc_msgSend(v3, "compare:", WeakRetained[21]) == 1}];
  }

  (*(*(a1 + 40) + 16))();
}

void __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_15(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[4];
  v9 = a1[5];
  v10 = *(v8 + 88);
  v11 = [*(v8 + 16) accountIdentifier];
  v12 = a1[6];
  v13 = a1[7];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_16;
  v17[3] = &unk_1E79D5F38;
  v14 = a1[8];
  v19 = v7;
  v20 = v14;
  v18 = v6;
  v15 = v6;
  v16 = v7;
  [v10 installmentPlanTransactionsForTransactionSourceIdentifiers:v9 accountIdentifier:v11 redeemed:1 withRedemptionType:0 startDate:v12 endDate:v13 completion:v17];
}

void __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_16(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [*(*(*(a1 + 48) + 8) + 40) rewards];
    v5 = [v4 totalAmount];
    v24 = [v5 currency];

    v6 = [v4 totalAmount];
    v7 = [v6 amount];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x1E696AB90] zero];
    }

    v10 = v9;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v3;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v17 = [v16 rewardsTotalAmount];

          if (v17)
          {
            v18 = [v16 rewardsTotalAmount];
            v19 = [(NSDecimalNumber *)v10 decimalNumberByAdding:v18];

            v10 = v19;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    v20 = PKCurrencyAmountCreate(v10, v24, 0);
    [v4 setTotalAmount:v20];

    [v4 setTransactionCount:{objc_msgSend(v11, "count") + objc_msgSend(v4, "transactionCount")}];
    v21 = [v11 allObjects];
    v22 = [v4 transactions];
    v23 = [v21 arrayByAddingObjectsFromArray:v22];
    [v4 setTransactions:v23];

    [*(*(*(a1 + 48) + 8) + 40) setRewards:v4];
  }

  (*(*(a1 + 40) + 16))();
}

void __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_17(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (*(a1 + 56) == 1)
  {
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = *(*(*(a1 + 48) + 8) + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_18;
    v12[3] = &unk_1E79C44A0;
    v14 = v7;
    v13 = v6;
    [v9 _addInsightsToSummary:v10 previousSummary:v11 completion:v12];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_19(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setObject:*(*(*(a1 + 72) + 8) + 40) forKey:*(a1 + 40)];
  v2 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 80);
    if (*(a1 + 88))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    *buf = 138413058;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    v18 = 2048;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_INFO, "Finished generating spending summary with startDate: %@, endDate: %@, type: %lu, withLastPeriodChange: %@", buf, 0x2Au);
  }

  [*(a1 + 32) setObject:*(*(*(a1 + 72) + 8) + 40) forKey:*(a1 + 40)];
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = *(*(a1 + 56) + 80);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __106__PKSpendingSummaryFetcher__spendingSummaryStartingWithDate_endDate_type_withLastPeriodChange_completion___block_invoke_110;
    v11[3] = &unk_1E79CF400;
    v9 = v7;
    v10 = *(a1 + 72);
    v12 = v9;
    v13 = v10;
    dispatch_async(v8, v11);
  }
}

- (void)_addInterestToSummaryIfNecessary:(id)necessary withLastPeriodChange:(BOOL)change completion:(id)completion
{
  changeCopy = change;
  necessaryCopy = necessary;
  completionCopy = completion;
  if (changeCopy && [necessaryCopy summaryType] == 1)
  {
    transactionSourceIdentifiers = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __93__PKSpendingSummaryFetcher__addInterestToSummaryIfNecessary_withLastPeriodChange_completion___block_invoke;
    v12[3] = &unk_1E79C4EF0;
    v12[4] = self;
    v13 = necessaryCopy;
    v14 = transactionSourceIdentifiers;
    v15 = completionCopy;
    v11 = transactionSourceIdentifiers;
    [(PKSpendingSummaryFetcher *)self _fetchStatementsIfNecessaryWithCompletion:v12];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

void __93__PKSpendingSummaryFetcher__addInterestToSummaryIfNecessary_withLastPeriodChange_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 152);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __93__PKSpendingSummaryFetcher__addInterestToSummaryIfNecessary_withLastPeriodChange_completion___block_invoke_2;
  v30[3] = &unk_1E79D5FB0;
  v31 = *(a1 + 40);
  v3 = [v2 pk_objectsPassingTest:v30];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __93__PKSpendingSummaryFetcher__addInterestToSummaryIfNecessary_withLastPeriodChange_completion___block_invoke_3;
  v28[3] = &unk_1E79D5FD8;
  v29 = *(a1 + 40);
  v4 = [v3 sortedArrayUsingComparator:v28];
  v5 = [v3 firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 openingDate];
    v8 = [v6 closingDate];
  }

  else
  {
    v9 = *(*(a1 + 32) + 96);
    v10 = [*(a1 + 40) startDate];
    v11 = *(*(a1 + 32) + 96);
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = [v11 components:14 fromDate:v12];
    LODWORD(v9) = [v9 date:v10 matchesComponents:v13];

    if (!v9)
    {
      v8 = 0;
      v7 = 0;
LABEL_11:
      (*(*(a1 + 56) + 16))();
      goto LABEL_12;
    }

    v14 = [*(*(a1 + 32) + 16) creditDetails];
    v15 = [v14 accountSummary];
    v16 = [v15 balanceSummary];
    v7 = [v16 openingDate];

    v17 = [*(*(a1 + 32) + 16) creditDetails];
    v18 = [v17 accountSummary];
    v19 = [v18 balanceSummary];
    v8 = [v19 closingDate];
  }

  if (v7)
  {
    v20 = v8 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    goto LABEL_11;
  }

  v21 = *(*(a1 + 32) + 88);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __93__PKSpendingSummaryFetcher__addInterestToSummaryIfNecessary_withLastPeriodChange_completion___block_invoke_4;
  v23[3] = &unk_1E79D6000;
  v22 = *(a1 + 48);
  v24 = *(a1 + 40);
  v7 = v7;
  v25 = v7;
  v8 = v8;
  v26 = v8;
  v27 = *(a1 + 56);
  [v21 transactionsForTransactionSourceIdentifiers:v22 withTransactionType:11 withTransactionSource:0 withBackingData:1 startDate:v7 endDate:v8 limit:0 completion:v23];

LABEL_12:
}

BOOL __93__PKSpendingSummaryFetcher__addInterestToSummaryIfNecessary_withLastPeriodChange_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 closingDate];
  if (v3)
  {
    v4 = [*(a1 + 32) startDate];
    if ([v3 compare:v4] == 1)
    {
      v5 = [*(a1 + 32) endDate];
      v6 = PKStartOfNextMonth(v5);
      v7 = [v3 compare:v6] == -1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __93__PKSpendingSummaryFetcher__addInterestToSummaryIfNecessary_withLastPeriodChange_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 closingDate];
  v7 = [*(a1 + 32) endDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = [v5 closingDate];

  v11 = [*(a1 + 32) endDate];
  [v10 timeIntervalSinceDate:v11];
  v13 = v12;

  if (v9 >= v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  if (v9 > v13)
  {
    return 1;
  }

  else
  {
    return v14;
  }
}

void __93__PKSpendingSummaryFetcher__addInterestToSummaryIfNecessary_withLastPeriodChange_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 count];
  if (v4)
  {
    v19 = v4;
    v5 = objc_alloc_init(PKPaymentTransactionGroup);
    [(PKPaymentTransactionGroup *)v5 setType:7];
    v6 = [MEMORY[0x1E696AB90] zero];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v20 + 1) + 8 * v11) amount];
          v13 = v12;
          if (v12 && ([v12 pk_isNotANumber] & 1) == 0)
          {
            v14 = [(NSDecimalNumber *)v6 decimalNumberByAdding:v13];

            v6 = v14;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    v15 = [*(a1 + 32) totalSpending];
    v16 = [v15 currency];
    v17 = PKCurrencyAmountCreate(v6, v16, 0);
    [(PKPaymentTransactionGroup *)v5 setTotalAmount:v17];

    [(PKPaymentTransactionGroup *)v5 setStartDate:*(a1 + 40)];
    [(PKPaymentTransactionGroup *)v5 setEndDate:*(a1 + 48)];
    v18 = [v7 allObjects];
    [(PKPaymentTransactionGroup *)v5 setTransactions:v18];

    [(PKPaymentTransactionGroup *)v5 setTransactionCount:v19];
    [*(a1 + 32) setInterest:v5];
  }

  (*(*(a1 + 56) + 16))();
}

- (void)_fetchStatementsIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_statements)
  {
    (*(completionCopy + 2))(completionCopy);
  }

  else
  {
    v6 = +[PKAccountService sharedInstance];
    accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__PKSpendingSummaryFetcher__fetchStatementsIfNecessaryWithCompletion___block_invoke;
    v8[3] = &unk_1E79D6028;
    v8[4] = self;
    v9 = v5;
    [v6 creditStatementsForAccountIdentifier:accountIdentifier completion:v8];
  }
}

uint64_t __70__PKSpendingSummaryFetcher__fetchStatementsIfNecessaryWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 allObjects];
  v4 = *(a1 + 32);
  v5 = *(v4 + 152);
  *(v4 + 152) = v3;

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (void)_addInsightsToSummary:(id)summary previousSummary:(id)previousSummary completion:(id)completion
{
  summaryCopy = summary;
  previousSummaryCopy = previousSummary;
  completionCopy = completion;
  if (PKFinHealthInsightsEnabled())
  {
    altDSID = [summaryCopy altDSID];
    if ([altDSID length])
    {
    }

    else
    {
      hideSpendingInsights = [(PKAccount *)self->_account hideSpendingInsights];

      if (!hideSpendingInsights)
      {
        insightsFetcher = self->_insightsFetcher;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __77__PKSpendingSummaryFetcher__addInsightsToSummary_previousSummary_completion___block_invoke;
        v15[3] = &unk_1E79D6050;
        v16 = summaryCopy;
        v17 = completionCopy;
        [(PKSpendingInsightsFetcher *)insightsFetcher fetchInsightTrendsForSummary:v16 previousSummary:previousSummaryCopy completion:v15];

        goto LABEL_11;
      }
    }
  }

  if ([(PKAccount *)self->_account hideSpendingInsights])
  {
    v13 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_INFO, "Skipping adding insights to summary because hideSpendingInsights supportedFeature is present", buf, 2u);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_11:
}

void __77__PKSpendingSummaryFetcher__addInsightsToSummary_previousSummary_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_INFO, "Received trends: %@ error: %@", buf, 0x16u);
  }

  [*(a1 + 32) setInsights:v5];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [*(a1 + 32) orderedSpendingCategories];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v5 spendingTrendForMerchantCategory:{objc_msgSend(v13, "merchantCategory")}];
        if (v14)
        {
          [v13 setTrend:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))();
  }
}

- (id)_cacheForType:(unint64_t)type
{
  if (type > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = (&self->_weeklySummaryItemsPerStartDate)[type];
  }

  return v4;
}

+ (id)summaryWithTransactions:(id)transactions transactionSourceCollection:(id)collection accountUser:(id)user currency:(id)currency type:(unint64_t)type startDate:(id)date endDate:(id)endDate lastSummary:(id)self0
{
  summaryCopy = summary;
  endDateCopy = endDate;
  dateCopy = date;
  currencyCopy = currency;
  collectionCopy = collection;
  transactionsCopy = transactions;
  altDSID = [user altDSID];
  v24 = [self _summaryWithTransactions:transactionsCopy transactionSourceCollection:collectionCopy currency:currencyCopy type:type startDate:dateCopy endDate:endDateCopy lastSummary:summaryCopy altDSID:altDSID];

  return v24;
}

+ (id)_summaryWithTransactions:(id)transactions transactionSourceCollection:(id)collection currency:(id)currency type:(unint64_t)type startDate:(id)date endDate:(id)endDate lastSummary:(id)summary altDSID:(id)self0
{
  v218 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  collectionCopy = collection;
  currencyCopy = currency;
  dateCopy = date;
  endDateCopy = endDate;
  summaryCopy = summary;
  dCopy = d;
  v17 = objc_alloc_init(PKSpendingSummary);
  [(PKSpendingSummary *)v17 setStartDate:dateCopy];
  [(PKSpendingSummary *)v17 setEndDate:endDateCopy];
  [(PKSpendingSummary *)v17 setSummaryType:type];
  [(PKSpendingSummary *)v17 setAltDSID:dCopy];
  context = objc_autoreleasePoolPush();
  zero = [MEMORY[0x1E696AB90] zero];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v19 = currentCalendar;
  v20 = 0x2000;
  if (type == 1)
  {
    v20 = 8;
  }

  if (type == 2)
  {
    v21 = 4;
  }

  else
  {
    v21 = v20;
  }

  v156 = v17;
  -[PKSpendingSummary setSummaryUnit:](v17, "setSummaryUnit:", [currentCalendar component:v21 fromDate:dateCopy]);
  v161 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v173 = objc_alloc_init(MEMORY[0x1E695DF70]);
  zero2 = [MEMORY[0x1E696AB90] zero];
  v175 = objc_alloc_init(MEMORY[0x1E695DF70]);
  zero3 = [MEMORY[0x1E696AB90] zero];
  v159 = objc_alloc_init(MEMORY[0x1E695DF70]);
  zero4 = [MEMORY[0x1E696AB90] zero];
  v25 = [self _sortedTransactions:transactionsCopy ascending:0];
  selfCopy = self;
  v26 = objc_opt_class();
  v207[0] = MEMORY[0x1E69E9820];
  v207[1] = 3221225472;
  v207[2] = __133__PKSpendingSummaryFetcher__summaryWithTransactions_transactionSourceCollection_currency_type_startDate_endDate_lastSummary_altDSID___block_invoke;
  v207[3] = &unk_1E79D6078;
  v163 = v22;
  v208 = v163;
  v174 = v23;
  v209 = v174;
  v158 = v24;
  v210 = v158;
  typeCopy = type;
  [v26 enumerateSummaryUnitsWithinSummaryPeriod:type startDate:dateCopy endDate:endDateCopy block:v207];
  zero5 = [MEMORY[0x1E696AB90] zero];
  v177 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v155 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v166 = v19;
  v149 = dateCopy;
  if (!dCopy)
  {
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v27 = [collectionCopy transactionSourcesForType:2];
    v28 = [v27 countByEnumeratingWithState:&v203 objects:v217 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v204;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v204 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v203 + 1) + 8 * i);
          zero6 = [MEMORY[0x1E696AB90] zero];
          accountUser = [v32 accountUser];
          altDSID = [accountUser altDSID];
          [v177 setObject:zero6 forKey:altDSID];
        }

        v29 = [v27 countByEnumeratingWithState:&v203 objects:v217 count:16];
      }

      while (v29);
    }

    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    v36 = [collectionCopy transactionSourcesForType:0];
    v37 = [v36 countByEnumeratingWithState:&v199 objects:v216 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v200;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v200 != v39)
          {
            objc_enumerationMutation(v36);
          }

          transactionSourceIdentifiers = [*(*(&v199 + 1) + 8 * j) transactionSourceIdentifiers];
          [v155 unionSet:transactionSourceIdentifiers];
        }

        v38 = [v36 countByEnumeratingWithState:&v199 objects:v216 count:16];
      }

      while (v38);
    }
  }

  zero7 = [MEMORY[0x1E696AB90] zero];
  [v19 setFirstWeekday:2];
  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  obj = v25;
  v42 = [obj countByEnumeratingWithState:&v195 objects:v215 count:16];
  if (!v42)
  {
    v45 = currencyCopy;
    v47 = zero4;
    v48 = v177;
    goto LABEL_76;
  }

  v43 = v42;
  v44 = *v196;
  v45 = currencyCopy;
  v46 = v175;
  v47 = zero4;
  v48 = v177;
  do
  {
    for (k = 0; k != v43; ++k)
    {
      if (*v196 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v50 = *(*(&v195 + 1) + 8 * k);
      if (TransactionIsValidForSummary(v50))
      {
        transactionType = [v50 transactionType];
        if ([v50 transactionType] == 1)
        {
          amount = [v50 amount];
          if (amount)
          {
            v53 = v47;
            notANumber = [MEMORY[0x1E696AB90] notANumber];
            v55 = [amount compare:notANumber];

            if (v55)
            {
              [v173 addObject:v50];
              amount2 = zero2;
              zero2 = [(NSDecimalNumber *)zero2 decimalNumberByAdding:amount];
              goto LABEL_32;
            }

LABEL_42:
            v47 = v53;
          }

LABEL_71:

          v48 = v177;
          continue;
        }

        if (transactionType == 7)
        {
          amount = [v50 amount];
          if (!amount)
          {
            goto LABEL_71;
          }

          v53 = v47;
          notANumber2 = [MEMORY[0x1E696AB90] notANumber];
          v60 = [amount compare:notANumber2];

          if (!v60)
          {
            goto LABEL_42;
          }

          [v159 addObject:v50];
          amount2 = v53;
          v47 = [v53 decimalNumberByAdding:amount];
LABEL_70:

          v46 = v175;
          goto LABEL_71;
        }

        if (transactionType == 10)
        {
          [v46 addObject:v50];
          if ([v50 transactionStatus] > 1)
          {
            continue;
          }

          amount = [v50 amount];
          if (!amount)
          {
            goto LABEL_71;
          }

          v53 = v47;
          notANumber3 = [MEMORY[0x1E696AB90] notANumber];
          v58 = [amount compare:notANumber3];

          if (!v58)
          {
            goto LABEL_42;
          }

          amount2 = zero3;
          zero3 = [(NSDecimalNumber *)zero3 decimalNumberByAdding:amount];
LABEL_32:
          v47 = v53;
          goto LABEL_70;
        }

        amount = [v50 transactionDate];
        if (typeCopy)
        {
          if (typeCopy == 1)
          {
            v61 = [v166 rangeOfUnit:4096 inUnit:8 forDate:amount];
            v62 = v166;
            v63 = 4096;
LABEL_48:
            v64 = [v62 component:v63 fromDate:amount] - v61;
          }

          else
          {
            if (typeCopy == 2)
            {
              v61 = [v166 rangeOfUnit:8 inUnit:4 forDate:amount];
              v62 = v166;
              v63 = 8;
              goto LABEL_48;
            }

            v64 = 0;
          }
        }

        else
        {
          v64 = ([v166 component:512 fromDate:amount] + 5) % 7;
        }

        v65 = [v174 count];
        if ((v64 & 0x8000000000000000) != 0 || v65 <= v64)
        {
          goto LABEL_71;
        }

        v171 = v47;
        v66 = [v174 objectAtIndex:v64];
        [v66 addObject:v50];

        amount2 = [v50 amount];
        if (amount2)
        {
          v67 = [v158 objectAtIndex:v64];
          v68 = [v67 decimalNumberByAdding:amount2];
          [v158 replaceObjectAtIndex:v64 withObject:v68];
        }

        rewardsTotalAmount = [v50 rewardsTotalAmount];
        v70 = rewardsTotalAmount;
        if (rewardsTotalAmount && [rewardsTotalAmount compare:zero])
        {
          [v161 addObject:v50];
          v71 = [(NSDecimalNumber *)zero7 decimalNumberByAdding:v70];

          zero7 = v71;
        }

        else
        {
          rewards = [v50 rewards];
          rewardsItems = [rewards rewardsItems];
          v74 = [rewardsItems count];

          if (v74)
          {
            [v161 addObject:v50];
          }
        }

        v75 = [(NSDecimalNumber *)zero5 decimalNumberByAdding:amount2];

        if (!dCopy)
        {
          altDSID2 = [v50 altDSID];
          if (altDSID2 || ([v50 transactionSourceIdentifier], v81 = objc_claimAutoreleasedReturnValue(), v82 = objc_msgSend(v155, "containsObject:", v81), v81, v82) && (PKCurrentUserAltDSID(), (altDSID2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v77 = altDSID2;
            v78 = [v177 objectForKey:altDSID2];
            if (v78)
            {
              v79 = v78;
              v80 = [v78 decimalNumberByAdding:amount2];
            }

            else
            {
              v80 = amount2;
            }

            [v177 setObject:v80 forKey:v77];
          }
        }

        zero5 = v75;
        v45 = currencyCopy;
        v47 = v171;
        goto LABEL_70;
      }
    }

    v43 = [obj countByEnumeratingWithState:&v195 objects:v215 count:16];
  }

  while (v43);
LABEL_76:
  v172 = v47;

  v83 = PKCurrencyAmountCreate(zero5, v45, 0);
  [(PKSpendingSummary *)v156 setTotalSpending:v83];

  v84 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v48, "count")}];
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  allKeys = [v48 allKeys];
  v86 = [allKeys countByEnumeratingWithState:&v191 objects:v214 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v192;
    do
    {
      for (m = 0; m != v87; ++m)
      {
        if (*v192 != v88)
        {
          objc_enumerationMutation(allKeys);
        }

        v90 = *(*(&v191 + 1) + 8 * m);
        v91 = [v48 objectForKey:v90];
        v92 = PKCurrencyAmountCreate(v91, v45, 0);
        [v84 setObject:v92 forKey:v90];
      }

      v87 = [allKeys countByEnumeratingWithState:&v191 objects:v214 count:16];
    }

    while (v87);
  }

  [(PKSpendingSummary *)v156 setTotalSpendingPerAltDSID:v84];
  v93 = [v163 copy];
  [(PKSpendingSummary *)v156 setSpendingsPerCalendarUnit:v93];

  v94 = [selfCopy _spendingCategoriesFromTransactions:obj currencyCode:v45];
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v95 = [v94 countByEnumeratingWithState:&v187 objects:v213 count:16];
  v96 = v149;
  if (v95)
  {
    v97 = v95;
    v98 = *v188;
    do
    {
      for (n = 0; n != v97; ++n)
      {
        if (*v188 != v98)
        {
          objc_enumerationMutation(v94);
        }

        v100 = *(*(&v187 + 1) + 8 * n);
        [v100 setStartDate:v149];
        [v100 setEndDate:endDateCopy];
      }

      v97 = [v94 countByEnumeratingWithState:&v187 objects:v213 count:16];
    }

    while (v97);
  }

  [(PKSpendingSummary *)v156 setOrderedSpendingCategories:v94];
  v101 = [selfCopy _spendingMerchantsFromTransaction:obj currencyCode:v45];
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v102 = [v101 countByEnumeratingWithState:&v183 objects:v212 count:16];
  if (v102)
  {
    v103 = v102;
    v104 = *v184;
    do
    {
      for (ii = 0; ii != v103; ++ii)
      {
        if (*v184 != v104)
        {
          objc_enumerationMutation(v101);
        }

        v106 = *(*(&v183 + 1) + 8 * ii);
        [v106 setStartDate:v149];
        [v106 setEndDate:endDateCopy];
      }

      v103 = [v101 countByEnumeratingWithState:&v183 objects:v212 count:16];
    }

    while (v103);
  }

  v146 = v101;
  v147 = v94;
  [(PKSpendingSummary *)v156 setOrderedSpendingPerMerchants:v101];
  v107 = v163;
  v108 = v45;
  v109 = v174;
  v110 = v158;
  if ([v163 count])
  {
    v111 = 0;
    do
    {
      v112 = [v107 objectAtIndex:v111];
      v113 = [v109 objectAtIndex:v111];
      v114 = [selfCopy _spendingCategoriesFromTransactions:v113 currencyCode:v108];
      [v112 setOrderedSpendingCategories:v114];

      v115 = [selfCopy _spendingMerchantsFromTransaction:v113 currencyCode:v108];
      [v112 setOrderedSpendingPerMerchants:v115];

      v116 = [v110 objectAtIndex:v111];
      PKCurrencyAmountCreate(v116, v108, 0);
      v117 = v110;
      v118 = v109;
      v120 = v119 = v108;
      [v112 setTotalSpending:v120];

      v108 = v119;
      v109 = v118;
      v110 = v117;

      v107 = v163;
      ++v111;
    }

    while (v111 < [v163 count]);
  }

  v121 = objc_alloc_init(PKPaymentTransactionGroup);
  [(PKPaymentTransactionGroup *)v121 setType:4];
  v122 = PKCurrencyAmountCreate(zero7, v108, 0);
  [(PKPaymentTransactionGroup *)v121 setTotalAmount:v122];

  [(PKPaymentTransactionGroup *)v121 setStartDate:v149];
  [(PKPaymentTransactionGroup *)v121 setEndDate:endDateCopy];
  v123 = [v161 copy];
  [(PKPaymentTransactionGroup *)v121 setTransactions:v123];

  -[PKPaymentTransactionGroup setTransactionCount:](v121, "setTransactionCount:", [v161 count]);
  v168 = v121;
  [(PKSpendingSummary *)v156 setRewards:v121];
  v124 = v108;
  if (summaryCopy)
  {
    totalSpending = [summaryCopy totalSpending];
    [(PKSpendingSummary *)v156 setPreviousTotalSpending:totalSpending];

    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    spendingsPerCalendarUnit = [summaryCopy spendingsPerCalendarUnit];
    v127 = [(NSDecimalNumber *)spendingsPerCalendarUnit countByEnumeratingWithState:&v179 objects:v211 count:16];
    if (v127)
    {
      v128 = v127;
      v129 = 0;
      v130 = *v180;
      do
      {
        for (jj = 0; jj != v128; ++jj)
        {
          if (*v180 != v130)
          {
            objc_enumerationMutation(spendingsPerCalendarUnit);
          }

          totalSpending2 = [*(*(&v179 + 1) + 8 * jj) totalSpending];
          amount3 = [totalSpending2 amount];

          if (!v129 || [amount3 compare:v129] == 1)
          {
            v134 = amount3;

            v129 = v134;
          }
        }

        v128 = [(NSDecimalNumber *)spendingsPerCalendarUnit countByEnumeratingWithState:&v179 objects:v211 count:16];
      }

      while (v128);

      v124 = currencyCopy;
      v96 = v149;
      if (v129)
      {
        v135 = PKCurrencyAmountCreate(v129, currencyCopy, 0);
        [(PKSpendingSummary *)v156 setPreviousMaxAmount:v135];

        goto LABEL_114;
      }
    }

    else
    {
      v129 = spendingsPerCalendarUnit;
      v124 = currencyCopy;
LABEL_114:
    }
  }

  if ([v173 count])
  {
    v136 = objc_alloc_init(PKPaymentTransactionGroup);
    [(PKPaymentTransactionGroup *)v136 setType:10];
    v137 = PKCurrencyAmountCreate(zero2, v124, 0);
    [(PKPaymentTransactionGroup *)v136 setTotalAmount:v137];

    [(PKPaymentTransactionGroup *)v136 setStartDate:v96];
    [(PKPaymentTransactionGroup *)v136 setEndDate:endDateCopy];
    v138 = [v173 copy];
    [(PKPaymentTransactionGroup *)v136 setTransactions:v138];

    -[PKPaymentTransactionGroup setTransactionCount:](v136, "setTransactionCount:", [v173 count]);
    [(PKSpendingSummary *)v156 setRefunds:v136];
  }

  if ([v175 count])
  {
    v139 = objc_alloc_init(PKPaymentTransactionGroup);
    [(PKPaymentTransactionGroup *)v139 setType:9];
    v140 = PKCurrencyAmountCreate(zero3, v124, 0);
    [(PKPaymentTransactionGroup *)v139 setTotalAmount:v140];

    [(PKPaymentTransactionGroup *)v139 setStartDate:v96];
    [(PKPaymentTransactionGroup *)v139 setEndDate:endDateCopy];
    v141 = [v175 copy];
    [(PKPaymentTransactionGroup *)v139 setTransactions:v141];

    -[PKPaymentTransactionGroup setTransactionCount:](v139, "setTransactionCount:", [v175 count]);
    [(PKSpendingSummary *)v156 setPayments:v139];
  }

  if ([v159 count])
  {
    v142 = objc_alloc_init(PKPaymentTransactionGroup);
    [(PKPaymentTransactionGroup *)v142 setType:11];
    v143 = PKCurrencyAmountCreate(v172, v124, 0);
    [(PKPaymentTransactionGroup *)v142 setTotalAmount:v143];

    [(PKPaymentTransactionGroup *)v142 setStartDate:v96];
    [(PKPaymentTransactionGroup *)v142 setEndDate:endDateCopy];
    v144 = [v159 copy];
    [(PKPaymentTransactionGroup *)v142 setTransactions:v144];

    -[PKPaymentTransactionGroup setTransactionCount:](v142, "setTransactionCount:", [v159 count]);
    [(PKSpendingSummary *)v156 setAdjustments:v142];
  }

  objc_autoreleasePoolPop(context);

  return v156;
}

void __133__PKSpendingSummaryFetcher__summaryWithTransactions_transactionSourceCollection_currency_type_startDate_endDate_lastSummary_altDSID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v11 = objc_alloc_init(PKSpendingSummary);
  [(PKSpendingSummary *)v11 setStartDate:v6];

  [(PKSpendingSummary *)v11 setEndDate:v5];
  [*(a1 + 32) addObject:v11];
  v7 = *(a1 + 40);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v7 addObject:v8];

  v9 = *(a1 + 48);
  v10 = [objc_alloc(MEMORY[0x1E696AB90]) initWithFloat:0.0];
  [v9 addObject:v10];
}

+ (id)_spendingMerchantsFromTransaction:(id)transaction currencyCode:(id)code
{
  v64 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  v5 = MEMORY[0x1E695DF90];
  transactionCopy = transaction;
  v7 = objc_alloc_init(v5);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKSpendingSummaryFetcher__spendingMerchantsFromTransaction_currencyCode___block_invoke;
  aBlock[3] = &unk_1E79D60A0;
  v43 = v9;
  v60 = v43;
  v47 = v8;
  v61 = v47;
  v10 = _Block_copy(aBlock);
  v11 = [transactionCopy pk_objectsPassingTest:&__block_literal_global_120_0];

  v12 = v10;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v55 objects:v63 count:16];
  v44 = v13;
  v45 = v12;
  if (v14)
  {
    v15 = v14;
    v16 = *v56;
    v46 = v7;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v56 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v55 + 1) + 8 * i);
        merchant = [v18 merchant];
        uniqueIdentifier = [merchant uniqueIdentifier];
        v21 = [v7 objectForKey:uniqueIdentifier];

        if (v21)
        {
          (*(v12 + 2))(v12, uniqueIdentifier, v18);
        }

        else
        {
          v22 = v7;
          v23 = v15;
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __75__PKSpendingSummaryFetcher__spendingMerchantsFromTransaction_currencyCode___block_invoke_3;
          v53[3] = &unk_1E79D60E8;
          v24 = merchant;
          v54 = v24;
          v25 = [v22 keysOfEntriesPassingTest:v53];
          if ([v25 count])
          {
            anyObject = [v25 anyObject];
            v27 = [v22 objectForKey:anyObject];

            uniqueIdentifier2 = [v27 uniqueIdentifier];

            if ([v24 hasBetterVisualPropertiesThanMerchant:v27])
            {
              [v46 setObject:v24 forKey:uniqueIdentifier2];
            }

            v12 = v45;
            (v45)[2](v45, uniqueIdentifier2, v18);

            uniqueIdentifier = uniqueIdentifier2;
            v13 = v44;
          }

          else
          {
            [v22 setObject:v24 forKey:uniqueIdentifier];
            v12 = v45;
            (v45)[2](v45, uniqueIdentifier, v18);
          }

          v15 = v23;
          v7 = v46;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v15);
  }

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v30 = v43;
  v31 = [v30 countByEnumeratingWithState:&v49 objects:v62 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v50;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v50 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v49 + 1) + 8 * j);
        v36 = objc_alloc_init(PKPaymentTransactionGroup);
        v37 = [v47 objectForKey:v35];
        v38 = PKCurrencyAmountCreate(v37, codeCopy, 0);
        [(PKPaymentTransactionGroup *)v36 setTotalAmount:v38];

        v39 = [v30 objectForKey:v35];
        [(PKPaymentTransactionGroup *)v36 setTransactions:v39];
        -[PKPaymentTransactionGroup setTransactionCount:](v36, "setTransactionCount:", [v39 count]);
        v40 = [v7 objectForKey:v35];
        [(PKPaymentTransactionGroup *)v36 setMerchant:v40];
        [(PKPaymentTransactionGroup *)v36 setType:1];
        [v29 addObject:v36];
      }

      v32 = [v30 countByEnumeratingWithState:&v49 objects:v62 count:16];
    }

    while (v32);
  }

  [v29 sortUsingComparator:&__block_literal_global_123_1];
  v41 = [v29 copy];

  return v41;
}

void __75__PKSpendingSummaryFetcher__spendingMerchantsFromTransaction_currencyCode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v13];
  v7 = [*(a1 + 40) objectForKey:v13];
  v8 = v7;
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(a1 + 32) setObject:v6 forKey:v13];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = [MEMORY[0x1E696AB90] zero];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_3:
  v9 = [v5 amount];
  if (v9)
  {
    v10 = v9;
    if ([v5 transactionType] != 1 || (objc_msgSend(v10, "pk_isNegativeNumber") & 1) != 0 || (objc_msgSend(v10, "pk_negativeValue"), v11 = objc_claimAutoreleasedReturnValue(), v10, (v10 = v11) != 0))
    {
      v12 = [v8 decimalNumberByAdding:v10];

      v8 = v12;
    }
  }

  [*(a1 + 40) setObject:v8 forKey:v13];
  [v6 addObject:v5];
}

BOOL __75__PKSpendingSummaryFetcher__spendingMerchantsFromTransaction_currencyCode___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (TransactionIsValidForSummary(v2))
  {
    v3 = [v2 merchant];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __75__PKSpendingSummaryFetcher__spendingMerchantsFromTransaction_currencyCode___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 shouldBeCombinedWithMerchant:*(a1 + 32)];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t __75__PKSpendingSummaryFetcher__spendingMerchantsFromTransaction_currencyCode___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 totalAmount];
  v6 = [v5 amount];
  v7 = [v4 totalAmount];

  v8 = [v7 amount];
  v9 = [v6 compare:v8];

  return v9;
}

+ (id)_spendingCategoriesFromTransactions:(id)transactions currencyCode:(id)code
{
  v52 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  codeCopy = code;
  context = objc_autoreleasePoolPush();
  v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = transactionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v46 objects:v51 count:16];
  v38 = v6;
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    do
    {
      v10 = 0;
      do
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v46 + 1) + 8 * v10);
        if (TransactionIsValidForSummary(v11))
        {
          merchant = [v11 merchant];
          if (merchant)
          {
            v13 = merchant;
            transactionType = [v11 transactionType];

            if (transactionType != 1)
            {
              v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "effectiveTransactionCategory")}];
              v16 = [v39 objectForKey:v15];
              v17 = [v41 objectForKey:v15];
              v18 = v17;
              if (v16)
              {
                if (v17)
                {
LABEL_11:
                  v19 = objc_alloc(MEMORY[0x1E696AB90]);
                  amount = [v11 amount];
                  [amount floatValue];
                  v21 = [v19 initWithFloat:?];
                  v22 = [v18 decimalNumberByAdding:v21];

                  [v41 setObject:v22 forKey:v15];
                  [v16 addObject:v11];

                  v6 = v38;
                  goto LABEL_12;
                }
              }

              else
              {
                v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v39 setObject:v16 forKey:v15];
                if (v18)
                {
                  goto LABEL_11;
                }
              }

              v18 = [objc_alloc(MEMORY[0x1E696AB90]) initWithFloat:0.0];
              goto LABEL_11;
            }
          }
        }

LABEL_12:
        ++v10;
      }

      while (v8 != v10);
      v23 = [v6 countByEnumeratingWithState:&v46 objects:v51 count:16];
      v8 = v23;
    }

    while (v23);
  }

  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v25 = v39;
  v26 = [v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v43;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v42 + 1) + 8 * i);
        v31 = objc_alloc_init(PKPaymentTransactionGroup);
        v32 = [v41 objectForKey:v30];
        v33 = PKCurrencyAmountCreate(v32, codeCopy, 0);
        [(PKPaymentTransactionGroup *)v31 setTotalAmount:v33];

        v34 = [v25 objectForKey:v30];
        [(PKPaymentTransactionGroup *)v31 setTransactions:v34];
        -[PKPaymentTransactionGroup setTransactionCount:](v31, "setTransactionCount:", [v34 count]);
        -[PKPaymentTransactionGroup setMerchantCategory:](v31, "setMerchantCategory:", [v30 integerValue]);
        [(PKPaymentTransactionGroup *)v31 setType:0];
        [v24 addObject:v31];
      }

      v27 = [v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v27);
  }

  [v24 sortUsingComparator:&__block_literal_global_125_1];
  v35 = [v24 copy];

  objc_autoreleasePoolPop(context);

  return v35;
}

uint64_t __77__PKSpendingSummaryFetcher__spendingCategoriesFromTransactions_currencyCode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 totalAmount];
  v6 = [v5 amount];
  v7 = [v4 totalAmount];

  v8 = [v7 amount];
  v9 = [v6 compare:v8];

  return v9;
}

+ (id)_sortedTransactions:(id)transactions ascending:(BOOL)ascending
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

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  if (identifierCopy)
  {
    transactionSourceIdentifiers = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
    v9 = [transactionSourceIdentifiers containsObject:identifierCopy];

    if (v9)
    {
      workQueue = self->_workQueue;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __78__PKSpendingSummaryFetcher_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
      v11[3] = &unk_1E79C4DD8;
      v11[4] = self;
      v12 = transactionCopy;
      dispatch_async(workQueue, v11);
    }
  }
}

void __78__PKSpendingSummaryFetcher_transactionSourceIdentifier_didReceiveTransaction___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v2 = *(*(a1 + 32) + 56);
  v3 = *(*(a1 + 32) + 64);
  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [*(a1 + 40) transactionDate];
  v6 = [v4 components:4110 fromDate:v5];

  if (v2)
  {
    v7 = [*(a1 + 40) transactionDate];
    if ([v7 compare:v2] == -1)
    {
      v8 = [v4 date:v2 matchesComponents:v6] ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  v27 = v6;
  if (v3)
  {
    v9 = [*(a1 + 40) transactionDate];
    if ([v9 compare:v3] == 1)
    {
      v10 = [v4 date:v3 matchesComponents:v6] ^ 1;
    }

    else
    {
      v10 = 0;
    }

    if (((v8 | v10) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    if (v8)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    if (v10)
    {
      v12 = @"YES";
    }

    *buf = 138543618;
    v36 = v13;
    v37 = 2114;
    v38 = v12;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Invalidating available summaries older: %{public}@, newer: %{public}@", buf, 0x16u);
  }

  [*(a1 + 32) _accessObserversWithHandler:&__block_literal_global_134];
LABEL_21:
  v14 = objc_opt_class();
  v15 = [*(a1 + 40) transactionDate];
  v16 = [v14 previousStartOfWeekFromDate:v15];

  v17 = [*(*(a1 + 32) + 24) objectForKey:v16];

  if (v17)
  {
    [*(*(a1 + 32) + 24) removeObjectForKey:v16];
    v18 = *(a1 + 32);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __78__PKSpendingSummaryFetcher_transactionSourceIdentifier_didReceiveTransaction___block_invoke_2;
    v33[3] = &unk_1E79D6130;
    v34 = v16;
    [v18 _accessObserversWithHandler:v33];
  }

  v19 = [*(a1 + 40) transactionDate];
  v20 = PKStartOfMonth(v19);

  v21 = [*(*(a1 + 32) + 32) objectForKey:v20];

  if (v21)
  {
    [*(*(a1 + 32) + 32) removeObjectForKey:v20];
    v22 = *(a1 + 32);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __78__PKSpendingSummaryFetcher_transactionSourceIdentifier_didReceiveTransaction___block_invoke_3;
    v31[3] = &unk_1E79D6130;
    v32 = v20;
    [v22 _accessObserversWithHandler:v31];
  }

  v23 = [*(a1 + 40) transactionDate];
  v24 = PKStartOfYear(v23);

  v25 = [*(*(a1 + 32) + 40) objectForKey:v24];

  if (v25)
  {
    [*(*(a1 + 32) + 40) removeObjectForKey:v24];
    v26 = *(a1 + 32);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __78__PKSpendingSummaryFetcher_transactionSourceIdentifier_didReceiveTransaction___block_invoke_4;
    v29[3] = &unk_1E79D6130;
    v30 = v24;
    [v26 _accessObserversWithHandler:v29];
  }
}

void __78__PKSpendingSummaryFetcher_transactionSourceIdentifier_didReceiveTransaction___block_invoke_131(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 invalidatedSummariesAvailable];
  }
}

void __78__PKSpendingSummaryFetcher_transactionSourceIdentifier_didReceiveTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 invalidatedSpendingSummaryOfType:0 startingWithDate:*(a1 + 32)];
  }
}

void __78__PKSpendingSummaryFetcher_transactionSourceIdentifier_didReceiveTransaction___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 invalidatedSpendingSummaryOfType:1 startingWithDate:*(a1 + 32)];
  }
}

void __78__PKSpendingSummaryFetcher_transactionSourceIdentifier_didReceiveTransaction___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 invalidatedSpendingSummaryOfType:2 startingWithDate:*(a1 + 32)];
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers addObject:v5];
    os_unfair_lock_unlock(&self->_observersLock);
    observerCopy = v5;
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers removeObject:v5];
    os_unfair_lock_unlock(&self->_observersLock);
    observerCopy = v5;
  }
}

- (void)_accessObserversWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    os_unfair_lock_lock(&self->_observersLock);
    allObjects = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_observersLock);
    replyQueue = self->_replyQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__PKSpendingSummaryFetcher__accessObserversWithHandler___block_invoke;
    v8[3] = &unk_1E79C4A40;
    v9 = allObjects;
    v10 = handlerCopy;
    v7 = allObjects;
    dispatch_async(replyQueue, v8);
  }
}

void __56__PKSpendingSummaryFetcher__accessObserversWithHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (id)previousStartOfWeekFromDate:(id)date
{
  v3 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  if ([currentCalendar component:512 fromDate:dateCopy] != 2)
  {
    v6 = [currentCalendar nextDateAfterDate:dateCopy matchingUnit:512 value:2 options:260];

    dateCopy = v6;
  }

  v7 = [currentCalendar components:28702 fromDate:dateCopy];

  v8 = [currentCalendar dateFromComponents:v7];

  return v8;
}

+ (id)nextStartOfWeekFromDate:(id)date
{
  v3 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar nextDateAfterDate:dateCopy matchingUnit:512 value:2 options:256];

  return v6;
}

+ (void)enumerateSummaryUnitsWithinSummaryPeriod:(unint64_t)period startDate:(id)date endDate:(id)endDate block:(id)block
{
  dateCopy = date;
  endDateCopy = endDate;
  blockCopy = block;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v29 = dateCopy;
  v13 = v29;
  do
  {
    v14 = v13;
    v15 = v14;
    if (period)
    {
      if (period == 2)
      {
        v19 = PKEndOfMonth(v14);

        v17 = PKStartOfNextMonth(v15);
        v20 = [currentCalendar component:4 fromDate:v19];
        v21 = [currentCalendar component:2 fromDate:v19];
        v22 = [currentCalendar component:4 fromDate:v17];
        v23 = [currentCalendar component:2 fromDate:v17];
        v24 = v20 == v22 && v21 == v23;
        v18 = !v24;
        if (v24)
        {
          v25 = v17;
        }

        else
        {
          v25 = v19;
        }

        v13 = v25;

        endDateCopy = v19;
      }

      else
      {
        if (period != 1)
        {
          v18 = 0;
          v13 = v14;
          goto LABEL_28;
        }

        v16 = [currentCalendar nextDateAfterDate:v14 matchingUnit:512 value:2 options:512];
        if (!v16)
        {
          v16 = endDateCopy;
        }

        v17 = v16;

        if ([endDateCopy compare:v17] == 1)
        {
          v18 = 0;
          v13 = v17;
        }

        else
        {
          v13 = endDateCopy;

          v18 = 1;
          endDateCopy = v13;
        }
      }
    }

    else
    {
      v26 = [currentCalendar component:512 fromDate:v14];
      if (v26 == 1)
      {
        v13 = endDateCopy;
        v18 = 1;
        v17 = v15;
        endDateCopy = v13;
      }

      else
      {
        if (v26 == 7)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26 + 1;
        }

        v13 = [currentCalendar nextDateAfterDate:v15 matchingUnit:512 value:v27 options:512];
        v18 = 0;
        v17 = v15;
      }
    }

LABEL_28:
    v28 = [v13 dateByAddingTimeInterval:-1.0];
    blockCopy[2](blockCopy, v15, v28);
  }

  while (!v18);
}

- (void)statementsChangedForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  v6 = identifierCopy;
  v7 = accountIdentifier;
  v8 = v7;
  if (v7 == v6)
  {
  }

  else
  {
    if (!v6 || !v7)
    {

      goto LABEL_11;
    }

    v9 = [v6 isEqualToString:v7];

    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_INFO, "Invalidating summaries due to statement change", buf, 2u);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PKSpendingSummaryFetcher_statementsChangedForAccountIdentifier___block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(workQueue, block);
LABEL_11:
}

uint64_t __66__PKSpendingSummaryFetcher_statementsChangedForAccountIdentifier___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeAllObjects];
  v2 = *(a1 + 32);

  return [v2 _accessObserversWithHandler:&__block_literal_global_140];
}

void __66__PKSpendingSummaryFetcher_statementsChangedForAccountIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 invalidatedSpendingSummariesOfType:1];
  }
}

- (void)_timeZoneChanged:(id)changed
{
  v4 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_INFO, "Invalidate summaries due to time zone change", buf, 2u);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PKSpendingSummaryFetcher__timeZoneChanged___block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __45__PKSpendingSummaryFetcher__timeZoneChanged___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeAllObjects];
  [*(*(a1 + 32) + 32) removeAllObjects];
  [*(*(a1 + 32) + 40) removeAllObjects];
  [*(a1 + 32) _resetCurrentCalendar];
  v2 = *(a1 + 32);

  return [v2 _accessObserversWithHandler:&__block_literal_global_144_1];
}

void __45__PKSpendingSummaryFetcher__timeZoneChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 invalidatedSummariesAvailable];
  }
}

@end