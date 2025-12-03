@interface PKDashboardTransactionFetcher
- (BOOL)_containsFrequentTransactionType:(id)type;
- (PKDashboardTransactionFetcher)initWithCounterpartHandles:(id)handles transactionSourceCollection:(id)collection paymentDataProvider:(id)provider;
- (PKDashboardTransactionFetcher)initWithInstallmentPlan:(id)plan transactionSourceCollection:(id)collection paymentDataProvider:(id)provider;
- (PKDashboardTransactionFetcher)initWithMerchant:(id)merchant transactionSourceCollection:(id)collection paymentDataProvider:(id)provider;
- (PKDashboardTransactionFetcher)initWithMerchantCategory:(int64_t)category transactionSourceCollection:(id)collection paymentDataProvider:(id)provider;
- (PKDashboardTransactionFetcher)initWithRegions:(id)regions transactionSourceCollection:(id)collection paymentDataProvider:(id)provider;
- (PKDashboardTransactionFetcher)initWithTransactionSourceCollection:(id)collection paymentDataProvider:(id)provider;
- (PKDashboardTransactionFetcher)initWithTransactionType:(int64_t)type transactionSourceCollection:(id)collection paymentDataProvider:(id)provider;
- (PKDashboardTransactionFetcherDelegate)delegate;
- (id)_feeTotalForTransaction:(id)transaction;
- (id)_sortedTransactions:(id)transactions ascending:(BOOL)ascending limit:(unint64_t)limit;
- (id)_transactionRequestForCurrentFilters;
- (id)_transactionSourceIdentifiers;
- (id)cashbackGroupForDateComponents:(id)components cashbackTransactionSourceCollection:(id *)collection;
- (id)cashbackGroupForTransactionWithIdentifier:(id)identifier cashbackTransactionSourceCollection:(id *)collection;
- (void)_addCashbackTransactions:(id)transactions synchronous:(BOOL)synchronous currentMonthOnly:(BOOL)only completion:(id)completion;
- (void)_addInstantWidthdrawalTransactionsWithCompletion:(id)completion;
- (void)_commonSetup;
- (void)_processPaymentPassTransactionsWithTransactions:(id)transactions synchronous:(BOOL)synchronous currentMonthOnly:(BOOL)only sendTransactionsBlock:(id)block;
- (void)_sendUpdatedTransactions;
- (void)dealloc;
- (void)didRemoveTransactionsWithSourceIdentifierMapping:(id)mapping;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableTransactionService:(BOOL)service;
- (void)peerPaymentCounterpartHandlesForTransactionSourceIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate completion:(id)completion;
- (void)reloadTransactionsWithAllowSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)setCashbackPass:(id)pass;
- (void)setLimit:(unint64_t)limit startDate:(id)date endDate:(id)endDate;
- (void)transactionCountByPeriod:(unint64_t)period withCompletion:(id)completion;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier;
@end

@implementation PKDashboardTransactionFetcher

- (PKDashboardTransactionFetcher)initWithTransactionSourceCollection:(id)collection paymentDataProvider:(id)provider
{
  collectionCopy = collection;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = PKDashboardTransactionFetcher;
  v9 = [(PKDashboardTransactionFetcher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transactionSourceCollection, collection);
    v10->_type = 0;
    objc_storeStrong(&v10->_paymentDataProvider, provider);
    [(PKDashboardTransactionFetcher *)v10 _commonSetup];
  }

  return v10;
}

- (PKDashboardTransactionFetcher)initWithMerchant:(id)merchant transactionSourceCollection:(id)collection paymentDataProvider:(id)provider
{
  merchantCopy = merchant;
  collectionCopy = collection;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = PKDashboardTransactionFetcher;
  v12 = [(PKDashboardTransactionFetcher *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_merchant, merchant);
    objc_storeStrong(&v13->_transactionSourceCollection, collection);
    v13->_type = 1;
    objc_storeStrong(&v13->_paymentDataProvider, provider);
    [(PKDashboardTransactionFetcher *)v13 _commonSetup];
  }

  return v13;
}

- (PKDashboardTransactionFetcher)initWithCounterpartHandles:(id)handles transactionSourceCollection:(id)collection paymentDataProvider:(id)provider
{
  handlesCopy = handles;
  collectionCopy = collection;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = PKDashboardTransactionFetcher;
  v11 = [(PKDashboardTransactionFetcher *)&v15 init];
  if (v11)
  {
    v12 = [handlesCopy copy];
    counterpartHandles = v11->_counterpartHandles;
    v11->_counterpartHandles = v12;

    objc_storeStrong(&v11->_transactionSourceCollection, collection);
    v11->_type = 2;
    objc_storeStrong(&v11->_paymentDataProvider, provider);
    [(PKDashboardTransactionFetcher *)v11 _commonSetup];
  }

  return v11;
}

- (PKDashboardTransactionFetcher)initWithMerchantCategory:(int64_t)category transactionSourceCollection:(id)collection paymentDataProvider:(id)provider
{
  collectionCopy = collection;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = PKDashboardTransactionFetcher;
  v11 = [(PKDashboardTransactionFetcher *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_merchantCategory = category;
    objc_storeStrong(&v11->_transactionSourceCollection, collection);
    v12->_type = 3;
    objc_storeStrong(&v12->_paymentDataProvider, provider);
    [(PKDashboardTransactionFetcher *)v12 _commonSetup];
  }

  return v12;
}

- (PKDashboardTransactionFetcher)initWithTransactionType:(int64_t)type transactionSourceCollection:(id)collection paymentDataProvider:(id)provider
{
  collectionCopy = collection;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = PKDashboardTransactionFetcher;
  v11 = [(PKDashboardTransactionFetcher *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_transactionType = type;
    objc_storeStrong(&v11->_transactionSourceCollection, collection);
    v12->_type = 4;
    objc_storeStrong(&v12->_paymentDataProvider, provider);
    [(PKDashboardTransactionFetcher *)v12 _commonSetup];
  }

  return v12;
}

- (PKDashboardTransactionFetcher)initWithInstallmentPlan:(id)plan transactionSourceCollection:(id)collection paymentDataProvider:(id)provider
{
  planCopy = plan;
  collectionCopy = collection;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = PKDashboardTransactionFetcher;
  v12 = [(PKDashboardTransactionFetcher *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_installmentPlan, plan);
    objc_storeStrong(&v13->_transactionSourceCollection, collection);
    v13->_type = 5;
    objc_storeStrong(&v13->_paymentDataProvider, provider);
    [(PKDashboardTransactionFetcher *)v13 _commonSetup];
  }

  return v13;
}

- (PKDashboardTransactionFetcher)initWithRegions:(id)regions transactionSourceCollection:(id)collection paymentDataProvider:(id)provider
{
  regionsCopy = regions;
  collectionCopy = collection;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = PKDashboardTransactionFetcher;
  v12 = [(PKDashboardTransactionFetcher *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_regions, regions);
    objc_storeStrong(&v13->_transactionSourceCollection, collection);
    v13->_type = 6;
    objc_storeStrong(&v13->_paymentDataProvider, provider);
    [(PKDashboardTransactionFetcher *)v13 _commonSetup];
  }

  return v13;
}

- (void)_commonSetup
{
  v26 = *MEMORY[0x1E69E9840];
  self->_lockUpdate._os_unfair_lock_opaque = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSources];
  v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        paymentPass = [v7 paymentPass];
        account = [v7 account];
        devicePrimaryPaymentApplication = [paymentPass devicePrimaryPaymentApplication];
        paymentNetworkIdentifier = [devicePrimaryPaymentApplication paymentNetworkIdentifier];

        type = [v7 type];
        if ((type - 2) >= 2)
        {
          if (type == 1)
          {
            self->_needsInstantWithdrawalFees = 1;
LABEL_17:
            if ((paymentNetworkIdentifier - 103) >= 0x26)
            {
              v16 = 10;
            }

            else
            {
              v16 = qword_1ADB9AB10[paymentNetworkIdentifier - 103];
            }

            goto LABEL_20;
          }

          if (type)
          {
            goto LABEL_21;
          }

          hasAssociatedPeerPaymentAccount = [paymentPass hasAssociatedPeerPaymentAccount];
          associatedAccountServiceAccountIdentifier = [paymentPass associatedAccountServiceAccountIdentifier];
          v15 = associatedAccountServiceAccountIdentifier != 0;

          if (hasAssociatedPeerPaymentAccount)
          {
            self->_needsCashbackUniqueID = 1;
            self->_needsInstantWithdrawalFees = 1;
            self->_cashBackType = 1;
          }

          if (((v15 | hasAssociatedPeerPaymentAccount) & 1) == 0)
          {
            goto LABEL_17;
          }

LABEL_15:
          v16 = 0;
          goto LABEL_20;
        }

        if ([account type] != 4)
        {
          goto LABEL_15;
        }

        v16 = 0;
        self->_needsCashbackUniqueID = 1;
        self->_cashBackType = 3;
LABEL_20:
        self->_limit = v16;
LABEL_21:
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  paymentDataProvider = self->_paymentDataProvider;
  if (!paymentDataProvider)
  {
    v18 = +[PKPaymentDefaultDataProvider defaultDataProvider];
    v19 = self->_paymentDataProvider;
    self->_paymentDataProvider = v18;

    paymentDataProvider = self->_paymentDataProvider;
  }

  [(PKPaymentDataProvider *)paymentDataProvider addDelegate:self];
}

- (void)dealloc
{
  [(PKPaymentDataProvider *)self->_paymentDataProvider removeDelegate:self];
  v3.receiver = self;
  v3.super_class = PKDashboardTransactionFetcher;
  [(PKDashboardTransactionFetcher *)&v3 dealloc];
}

- (void)setLimit:(unint64_t)limit startDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  self->_limit = limit;
  startDate = self->_startDate;
  self->_startDate = dateCopy;
  v12 = dateCopy;

  endDate = self->_endDate;
  self->_endDate = endDateCopy;
}

- (id)_transactionSourceIdentifiers
{
  filteredTransactionSourceIdentifiers = self->_filteredTransactionSourceIdentifiers;
  if (filteredTransactionSourceIdentifiers)
  {
    transactionSourceIdentifiers = filteredTransactionSourceIdentifiers;
  }

  else
  {
    transactionSourceIdentifiers = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
  }

  return transactionSourceIdentifiers;
}

- (void)reloadTransactionsWithAllowSynchronous:(BOOL)synchronous completion:(id)completion
{
  synchronousCopy = synchronous;
  completionCopy = completion;
  if (completionCopy)
  {
    _transactionRequestForCurrentFilters = [(PKDashboardTransactionFetcher *)self _transactionRequestForCurrentFilters];
    limit = [_transactionRequestForCurrentFilters limit];
    v9 = limit;
    v10 = (limit - 1) < 0xA && synchronousCopy;
    v92[0] = 0;
    v92[1] = v92;
    v92[2] = 0x2020000000;
    v92[3] = limit;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke;
    aBlock[3] = &unk_1E79DA7B0;
    v91 = v10;
    v90 = completionCopy;
    v11 = _Block_copy(aBlock);
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_3;
    v86[3] = &unk_1E79DA7D8;
    v12 = v11;
    v86[4] = self;
    v87 = v12;
    v88 = v92;
    v13 = _Block_copy(v86);
    _transactionSourceIdentifiers = [(PKDashboardTransactionFetcher *)self _transactionSourceIdentifiers];
    type = self->_type;
    if (type <= 2)
    {
      if (type)
      {
        if (type == 1)
        {
          if (![(PKMerchant *)self->_merchant hasMapsMatch]|| [(PKMerchant *)self->_merchant shouldIgnoreMapsMatches])
          {
            name = [(PKMerchant *)self->_merchant name];
            if (name)
            {
            }

            else
            {
              rawName = [(PKMerchant *)self->_merchant rawName];

              if (!rawName)
              {
                goto LABEL_46;
              }
            }
          }

          v41 = objc_opt_respondsToSelector();
          paymentDataProvider = self->_paymentDataProvider;
          if (v41)
          {
            _transactionRequestForCurrentFilters2 = [(PKDashboardTransactionFetcher *)self _transactionRequestForCurrentFilters];
            v75[0] = MEMORY[0x1E69E9820];
            v75[1] = 3221225472;
            v75[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_10;
            v75[3] = &unk_1E79C5468;
            v76 = v12;
            [(PKPaymentDataProvider *)paymentDataProvider transactionsForRequest:_transactionRequestForCurrentFilters2 completion:v75];

            v20 = v76;
            goto LABEL_45;
          }

          if (objc_opt_respondsToSelector())
          {
            v44 = self->_paymentDataProvider;
            merchant = self->_merchant;
            limit = self->_limit;
            v73[0] = MEMORY[0x1E69E9820];
            v73[1] = 3221225472;
            v73[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_11;
            v73[3] = &unk_1E79D1300;
            v74 = v13;
            [(PKPaymentDataProvider *)v44 transactionsForTransactionSourceIdentifiers:_transactionSourceIdentifiers matchingMerchant:merchant withTransactionSource:0 withBackingData:1 limit:limit completion:v73];
            v20 = v74;
            goto LABEL_45;
          }
        }

        else if (type == 2 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v21 = self->_paymentDataProvider;
          counterpartHandles = self->_counterpartHandles;
          v71[0] = MEMORY[0x1E69E9820];
          v71[1] = 3221225472;
          v71[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_12;
          v71[3] = &unk_1E79D1300;
          v72 = v13;
          [(PKPaymentDataProvider *)v21 transactionsForTransactionSourceIdentifiers:_transactionSourceIdentifiers withPeerPaymentCounterpartHandles:counterpartHandles withTransactionSource:0 withBackingData:1 limit:v9 completion:v71];
          v20 = v72;
          goto LABEL_45;
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
          associatedAccountFeatureIdentifier = [paymentPass associatedAccountFeatureIdentifier];
          v27 = associatedAccountFeatureIdentifier;
          if (associatedAccountFeatureIdentifier <= 4 && ((1 << associatedAccountFeatureIdentifier) & 0x16) != 0)
          {
            v28 = 1;
          }

          else
          {
            devicePrimaryContactlessPaymentApplication = [paymentPass devicePrimaryContactlessPaymentApplication];
            paymentNetworkIdentifier = [devicePrimaryContactlessPaymentApplication paymentNetworkIdentifier];
            v28 = 0;
            if ((paymentNetworkIdentifier - 129) <= 0xB)
            {
              v28 = ((1 << (paymentNetworkIdentifier + 127)) & 0xA01) != 0;
            }
          }

          if (v27 > 4 || ((1 << v27) & 0x16) == 0)
          {
          }

          if ([(NSArray *)self->_types count])
          {
            v29 = [(PKDashboardTransactionFetcher *)self _containsFrequentTransactionType:self->_types];
          }

          else
          {
            v29 = 1;
          }

          if (self->_startDate || !v28 || !v29 || self->_endDate != 0)
          {
            v50 = 0;
            v51 = 0;
          }

          else
          {
            date = [MEMORY[0x1E695DF00] date];
            v48 = PKStartOfMonth(date);
            [_transactionRequestForCurrentFilters setStartDate:v48];

            v49 = PKStartOfNextMonth(date);
            [_transactionRequestForCurrentFilters setEndDate:v49];

            v50 = 1;
            v51 = 1;
          }

          v52 = self->_paymentDataProvider;
          if (v10)
          {
            v53 = [(PKPaymentDataProvider *)self->_paymentDataProvider transactionsForRequest:_transactionRequestForCurrentFilters];
            v54 = [MEMORY[0x1E695DFD8] setWithArray:v53];
            [(PKDashboardTransactionFetcher *)self _processPaymentPassTransactionsWithTransactions:v54 synchronous:1 currentMonthOnly:v51 sendTransactionsBlock:v13];
          }

          else
          {
            v80[0] = MEMORY[0x1E69E9820];
            v80[1] = 3221225472;
            v80[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_4;
            v80[3] = &unk_1E79DA850;
            v84 = 0;
            v85 = v50;
            v80[4] = self;
            v83 = v92;
            v81 = _transactionRequestForCurrentFilters;
            v82 = v13;
            [(PKPaymentDataProvider *)v52 transactionsForRequest:v81 completion:v80];
          }

          goto LABEL_47;
        }

        if (objc_opt_respondsToSelector())
        {
          v36 = self->_paymentDataProvider;
          endDate = self->_endDate;
          startDate = self->_startDate;
          v77[0] = MEMORY[0x1E69E9820];
          v77[1] = 3221225472;
          v77[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_8;
          v77[3] = &unk_1E79DA878;
          v77[4] = self;
          v79 = v10;
          v78 = v13;
          [(PKPaymentDataProvider *)v36 transactionsForTransactionSourceIdentifiers:_transactionSourceIdentifiers withTransactionSource:0 withBackingData:1 startDate:startDate endDate:endDate limit:v9 completion:v77];
          v20 = v78;
          goto LABEL_45;
        }
      }
    }

    else if (type > 4)
    {
      if (type == 5)
      {
        if (objc_opt_respondsToSelector())
        {
          v33 = self->_paymentDataProvider;
          identifier = [(PKCreditInstallmentPlan *)self->_installmentPlan identifier];
          v63[0] = MEMORY[0x1E69E9820];
          v63[1] = 3221225472;
          v63[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_16;
          v63[3] = &unk_1E79D1300;
          v64 = v13;
          [(PKPaymentDataProvider *)v33 installmentTransactionsForInstallmentPlanIdentifier:identifier completion:v63];

          v20 = v64;
          goto LABEL_45;
        }
      }

      else if (type == 6 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v23 = self->_paymentDataProvider;
        _transactionRequestForCurrentFilters3 = [(PKDashboardTransactionFetcher *)self _transactionRequestForCurrentFilters];
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_17;
        v61[3] = &unk_1E79C5468;
        v62 = v12;
        [(PKPaymentDataProvider *)v23 transactionsForRequest:_transactionRequestForCurrentFilters3 completion:v61];

        v20 = v62;
        goto LABEL_45;
      }
    }

    else if (type == 3)
    {
      v30 = objc_opt_respondsToSelector();
      v31 = self->_paymentDataProvider;
      if (v30)
      {
        _transactionRequestForCurrentFilters4 = [(PKDashboardTransactionFetcher *)self _transactionRequestForCurrentFilters];
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_13;
        v69[3] = &unk_1E79C5468;
        v70 = v12;
        [(PKPaymentDataProvider *)v31 transactionsForRequest:_transactionRequestForCurrentFilters4 completion:v69];

        v20 = v70;
        goto LABEL_45;
      }

      if (objc_opt_respondsToSelector())
      {
        v37 = self->_paymentDataProvider;
        merchantCategory = self->_merchantCategory;
        v39 = self->_startDate;
        v60 = self->_endDate;
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_14;
        v67[3] = &unk_1E79D1300;
        v68 = v13;
        [(PKPaymentDataProvider *)v37 transactionsForTransactionSourceIdentifiers:_transactionSourceIdentifiers withMerchantCategory:merchantCategory withTransactionSource:0 withBackingData:1 startDate:v39 endDate:v60 limit:v9 completion:v67];
        v20 = v68;
        goto LABEL_45;
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v16 = self->_paymentDataProvider;
      transactionType = self->_transactionType;
      v18 = self->_endDate;
      v58 = self->_startDate;
      v19 = self->_limit;
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_15;
      v65[3] = &unk_1E79D1300;
      v66 = v13;
      [(PKPaymentDataProvider *)v16 transactionsForTransactionSourceIdentifiers:_transactionSourceIdentifiers withTransactionType:transactionType withTransactionSource:0 withBackingData:1 startDate:v58 endDate:v18 limit:v19 completion:v65];
      v20 = v66;
LABEL_45:

LABEL_47:
      _Block_object_dispose(v92, 8);

      goto LABEL_48;
    }

LABEL_46:
    (*(v12 + 2))(v12, 0);
    goto LABEL_47;
  }

LABEL_48:
}

void __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_2;
    v4[3] = &unk_1E79C44A0;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

void __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _sortedTransactions:a2 ascending:0 limit:*(*(*(a1 + 48) + 8) + 24)];
  (*(v2 + 16))(v2, v3);
}

void __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 32);
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E695DFD8] setWithArray:a2];
  v6 = *(a1 + 64);
  v7 = *(a1 + 65);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_5;
  v13[3] = &unk_1E79DA828;
  v16 = v7;
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v17 = *(a1 + 64);
  *&v10 = v9;
  *(&v10 + 1) = *v3;
  v12 = v10;
  *&v11 = *(a1 + 48);
  *(&v11 + 1) = v8;
  v14 = v12;
  v15 = v11;
  [v4 _processPaymentPassTransactionsWithTransactions:v5 synchronous:v6 currentMonthOnly:v7 sendTransactionsBlock:v13];
}

void __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 64) == 1 && [v3 count] <= 9)
  {
    *(*(*(a1 + 56) + 8) + 24) = 10;
    [*(a1 + 32) setStartDate:*(*(a1 + 40) + 280)];
    [*(a1 + 32) setEndDate:*(*(a1 + 40) + 288)];
    [*(a1 + 32) setLimit:*(*(*(a1 + 56) + 8) + 24)];
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(v5 + 16);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_6;
    v8[3] = &unk_1E79DA800;
    v8[4] = v5;
    v10 = *(a1 + 65);
    v9 = *(a1 + 48);
    [v7 transactionsForRequest:v6 completion:v8];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DFD8] setWithArray:a2];
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_7;
  v6[3] = &unk_1E79D1300;
  v7 = *(a1 + 40);
  [v3 _processPaymentPassTransactionsWithTransactions:v4 synchronous:v5 currentMonthOnly:0 sendTransactionsBlock:v6];
}

void __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_9;
  v5[3] = &unk_1E79D1300;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 _processPaymentPassTransactionsWithTransactions:a2 synchronous:v3 currentMonthOnly:0 sendTransactionsBlock:v5];
}

- (id)_transactionRequestForCurrentFilters
{
  v3 = objc_alloc_init(PKPaymentTransactionRequest);
  _transactionSourceIdentifiers = [(PKDashboardTransactionFetcher *)self _transactionSourceIdentifiers];
  [(PKPaymentTransactionRequest *)v3 setTransactionSourceIdentifiers:_transactionSourceIdentifiers];

  [(PKPaymentTransactionRequest *)v3 setTransactionTypes:self->_types];
  [(PKPaymentTransactionRequest *)v3 setTransactionSources:self->_sources];
  [(PKPaymentTransactionRequest *)v3 setTransactionStatuses:self->_statuses];
  [(PKPaymentTransactionRequest *)v3 setRegions:self->_regions];
  [(PKPaymentTransactionRequest *)v3 setMerchant:self->_merchant];
  [(PKPaymentTransactionRequest *)v3 setMerchantCategory:self->_merchantCategory];
  [(PKPaymentTransactionRequest *)v3 setStartDate:self->_startDate];
  [(PKPaymentTransactionRequest *)v3 setEndDate:self->_endDate];
  [(PKPaymentTransactionRequest *)v3 setDateOrder:1];
  [(PKPaymentTransactionRequest *)v3 setAmountComparisons:self->_amountComparisons];
  [(PKPaymentTransactionRequest *)v3 setLimit:self->_limit];
  [(PKPaymentTransactionRequest *)v3 setTags:self->_tags];
  [(PKPaymentTransactionRequest *)v3 setRewardsValue:self->_rewardsValue];
  [(PKPaymentTransactionRequest *)v3 setRewardsValueUnit:self->_rewardsValueUnit];
  [(PKPaymentTransactionRequest *)v3 setPeerPaymentSubType:self->_subType];
  [(PKPaymentTransactionRequest *)v3 setPeerPaymentPaymentMode:self->_peerPaymentPaymentMode];
  [(PKPaymentTransactionRequest *)v3 setPeerPaymentRequestToken:self->_peerPaymentRequestToken];
  [(PKPaymentTransactionRequest *)v3 setDisputesOnly:self->_filterDisputesOnly];
  [(PKPaymentTransactionRequest *)v3 setExcludedAccountStates:self->_excludedAccountStates];
  [(PKPaymentTransactionRequest *)v3 setExcludedPeerPaymentAccountStates:self->_excludedPeerPaymentAccountStates];

  return v3;
}

- (void)transactionCountByPeriod:(unint64_t)period withCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    associatedAccountFeatureIdentifier = [paymentPass associatedAccountFeatureIdentifier];

    v9 = (associatedAccountFeatureIdentifier - 1) < 2;
    if ((associatedAccountFeatureIdentifier - 1) > 1)
    {
      _transactionRequestForCurrentFilters = objc_alloc_init(PKPaymentTransactionRequest);
      _transactionSourceIdentifiers = [(PKDashboardTransactionFetcher *)self _transactionSourceIdentifiers];
      [(PKPaymentTransactionRequest *)_transactionRequestForCurrentFilters setTransactionSourceIdentifiers:_transactionSourceIdentifiers];
    }

    else
    {
      _transactionRequestForCurrentFilters = [(PKDashboardTransactionFetcher *)self _transactionRequestForCurrentFilters];
    }

    paymentDataProvider = self->_paymentDataProvider;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__PKDashboardTransactionFetcher_transactionCountByPeriod_withCompletion___block_invoke;
    v14[3] = &unk_1E79DA800;
    v17 = v9;
    v15 = _transactionRequestForCurrentFilters;
    v16 = completionCopy;
    v13 = _transactionRequestForCurrentFilters;
    [(PKPaymentDataProvider *)paymentDataProvider transactionCountByPeriodForRequest:v13 gregorianCalendarUnit:period includePurchaseTotal:0 completion:v14];
  }
}

void __73__PKDashboardTransactionFetcher_transactionCountByPeriod_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) == 1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * v8);
          v10 = [*(a1 + 32) transactionTypes];
          [v9 setTransactionTypes:v10];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PKDashboardTransactionFetcher_transactionCountByPeriod_withCompletion___block_invoke_2;
  v13[3] = &unk_1E79C44A0;
  v11 = *(a1 + 40);
  v14 = v4;
  v15 = v11;
  v12 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

- (void)peerPaymentCounterpartHandlesForTransactionSourceIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate completion:(id)completion
{
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  completionCopy = completion;
  if (completionCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    paymentDataProvider = self->_paymentDataProvider;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __122__PKDashboardTransactionFetcher_peerPaymentCounterpartHandlesForTransactionSourceIdentifier_startDate_endDate_completion___block_invoke;
    v15[3] = &unk_1E79C5468;
    v16 = completionCopy;
    [(PKPaymentDataProvider *)paymentDataProvider peerPaymentCounterpartHandlesForTransactionSourceIdentifier:identifierCopy startDate:dateCopy endDate:endDateCopy completion:v15];
  }
}

void __122__PKDashboardTransactionFetcher_peerPaymentCounterpartHandlesForTransactionSourceIdentifier_startDate_endDate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __122__PKDashboardTransactionFetcher_peerPaymentCounterpartHandlesForTransactionSourceIdentifier_startDate_endDate_completion___block_invoke_2;
  v6[3] = &unk_1E79C44A0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (id)cashbackGroupForTransactionWithIdentifier:(id)identifier cashbackTransactionSourceCollection:(id *)collection
{
  if (collection)
  {
    *collection = self->_cashbackTransactionSourceCollection;
  }

  cashbackGroups = self->_cashbackGroups;

  return [(NSDictionary *)cashbackGroups objectForKey:identifier];
}

- (id)cashbackGroupForDateComponents:(id)components cashbackTransactionSourceCollection:(id *)collection
{
  v22 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues = [(NSDictionary *)self->_cashbackGroups allValues];
  v9 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    collectionCopy = collection;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        startDate = [v12 startDate];
        v14 = [currentCalendar date:startDate matchesComponents:componentsCopy];

        if (v14)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

LABEL_11:
    collection = collectionCopy;
  }

  if (collection)
  {
    *collection = self->_cashbackTransactionSourceCollection;
  }

  return v9;
}

- (void)setCashbackPass:(id)pass
{
  passCopy = pass;
  objc_storeStrong(&self->_cashbackPass, pass);
  uniqueID = [passCopy uniqueID];
  cashbackPassUniqueID = self->_cashbackPassUniqueID;
  self->_cashbackPassUniqueID = uniqueID;

  if (passCopy)
  {
    self->_needsCashbackUniqueID = 0;
    v7 = [[PKTransactionSource alloc] initWithPaymentPass:self->_cashbackPass];
    v8 = [[PKTransactionSourceCollection alloc] initWithTransactionSource:v7];
    cashbackTransactionSourceCollection = self->_cashbackTransactionSourceCollection;
    self->_cashbackTransactionSourceCollection = v8;
  }

  else
  {
    self->_needsCashbackUniqueID = 1;
    v7 = self->_cashbackTransactionSourceCollection;
    self->_cashbackTransactionSourceCollection = 0;
  }
}

- (void)_addCashbackTransactions:(id)transactions synchronous:(BOOL)synchronous currentMonthOnly:(BOOL)only completion:(id)completion
{
  synchronousCopy = synchronous;
  v55 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  completionCopy = completion;
  if (synchronousCopy)
  {
    if (self->_startDate)
    {
      synchronousCopy = self->_endDate == 0;
    }

    else
    {
      synchronousCopy = 1;
    }
  }

  date = [MEMORY[0x1E695DF00] date];
  v13 = date;
  endDate = self->_endDate;
  if (!endDate)
  {
    endDate = date;
  }

  v15 = endDate;
  v16 = self->_startDate;
  if (!v16)
  {
    if (only)
    {
      v16 = PKStartOfMonth(v13);
    }

    else
    {
      date2 = [MEMORY[0x1E695DF00] date];
      v16 = [date2 dateByAddingTimeInterval:-2678400.0];
    }
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  if (self->_limit)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || (paymentDataProvider = self->_paymentDataProvider, [(PKTransactionSourceCollection *)self->_cashbackTransactionSourceCollection transactionSourceIdentifiers], v20 = v15, v21 = objc_claimAutoreleasedReturnValue(), [(PKPaymentDataProvider *)paymentDataProvider earliestDailyBucketForTransactionSourceIdentifiers:v21 calendar:currentCalendar type:self->_cashBackType limit:self->_limit], transactionDate = objc_claimAutoreleasedReturnValue(), v21, v15 = v20, !transactionDate))
    {
      if ([transactionsCopy count] >= self->_limit)
      {
        [(PKDashboardTransactionFetcher *)self _sortedTransactions:transactionsCopy ascending:0 limit:?];
        v23 = v45 = v15;
        [v23 lastObject];
        v24 = completionCopy;
        v25 = synchronousCopy;
        v26 = currentCalendar;
        v28 = v27 = v13;
        transactionDate = [v28 transactionDate];

        v13 = v27;
        currentCalendar = v26;
        synchronousCopy = v25;
        completionCopy = v24;

        v15 = v45;
      }

      else
      {
        transactionDate = 0;
      }
    }

    v16 = transactionDate;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__PKDashboardTransactionFetcher__addCashbackTransactions_synchronous_currentMonthOnly_completion___block_invoke;
  aBlock[3] = &unk_1E79CC750;
  v29 = transactionsCopy;
  v50 = v29;
  selfCopy = self;
  v30 = completionCopy;
  v52 = v30;
  v31 = _Block_copy(aBlock);
  if (synchronousCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v32 = v13;
    v33 = v15;
    v34 = PKLogFacilityTypeGetObject(0x18uLL);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v16;
      _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "Transaction fetcher processing daily cash from date %@", buf, 0xCu);
    }

    v35 = self->_paymentDataProvider;
    transactionSourceIdentifiers = [(PKTransactionSourceCollection *)self->_cashbackTransactionSourceCollection transactionSourceIdentifiers];
    v37 = v35;
    v15 = v33;
    v38 = [(PKPaymentDataProvider *)v37 cashbackByPeriodForTransactionSourceIdentifiers:transactionSourceIdentifiers withStartDate:v16 endDate:v33 calendar:currentCalendar calendarUnit:16 type:self->_cashBackType];

    v31[2](v31, v38);
    v13 = v32;
  }

  else if (objc_opt_respondsToSelector())
  {
    v46 = v15;
    v39 = self->_paymentDataProvider;
    [(PKTransactionSourceCollection *)self->_cashbackTransactionSourceCollection transactionSourceIdentifiers];
    v40 = v44 = v13;
    currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
    cashBackType = self->_cashBackType;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __98__PKDashboardTransactionFetcher__addCashbackTransactions_synchronous_currentMonthOnly_completion___block_invoke_77;
    v47[3] = &unk_1E79C5468;
    v48 = v31;
    v43 = v39;
    v15 = v46;
    [(PKPaymentDataProvider *)v43 cashbackByPeriodForTransactionSourceIdentifiers:v40 withStartDate:v16 endDate:v46 calendar:currentCalendar2 calendarUnit:16 type:cashBackType completion:v47];

    v13 = v44;
  }

  else if (v30)
  {
    (*(v30 + 2))(v30, v29);
  }
}

void __98__PKDashboardTransactionFetcher__addCashbackTransactions_synchronous_currentMonthOnly_completion___block_invoke(uint64_t a1, void *a2)
{
  v98 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:*(a1 + 32)];
  v6 = v3;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v72 = a1;
  obj = *(a1 + 32);
  v7 = [obj countByEnumeratingWithState:&v90 objects:v97 count:16];
  v71 = v6;
  if (v7)
  {
    v8 = v7;
    v9 = *v91;
    v75 = v4;
    v81 = v5;
    v73 = *v91;
    do
    {
      v10 = 0;
      v74 = v8;
      do
      {
        if (*v91 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v90 + 1) + 8 * v10);
        if ([v11 transactionType] == 8)
        {
          v80 = [v11 redemptionEvent];
          v12 = [v80 items];
          v13 = [v12 anyObject];

          v14 = [v11 merchantProvidedDescription];
          if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v15 = [v13 transactionIdentifiers];
            if ([v15 count])
            {
              v16 = 0;
            }

            else
            {
              [v13 rewardsAddedIdentifiers];
              v18 = v17 = v14;
              v16 = [v18 count] == 0;

              v14 = v17;
              v4 = v75;
            }
          }

          else
          {
            v16 = 0;
          }

          v79 = v13;
          v19 = [v11 referenceIdentifier];
          v78 = v14;
          if ([v19 length])
          {
            v20 = v14;
            if (v20 == @"Daily Cash")
            {
              goto LABEL_18;
            }

            v21 = v20;
            if (v20)
            {
              v22 = [(__CFString *)v20 isEqualToString:@"Daily Cash"];

              if (v22)
              {
LABEL_18:

                goto LABEL_26;
              }

              v24 = v21;
              if (v24 == @"Daily Cash")
              {
                v23 = 1;
              }

              else
              {
                v23 = [(__CFString *)v24 isEqualToString:?];
              }
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
          }

          if ((v16 | v23))
          {
LABEL_26:
            [v81 removeObject:v11];
            v77 = [v11 transactionDate];
            v25 = PKStartOfDay(v77);
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            v89 = 0u;
            v6 = v6;
            v26 = [(NSDecimalNumber *)v6 countByEnumeratingWithState:&v86 objects:v96 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v87;
LABEL_28:
              v29 = 0;
              while (1)
              {
                if (*v87 != v28)
                {
                  objc_enumerationMutation(v6);
                }

                v30 = *(*(&v86 + 1) + 8 * v29);
                v31 = [v30 startDate];
                v32 = v31;
                if (v25 && v31)
                {
                  v33 = [v25 isEqual:v31];

                  if (v33)
                  {
                    goto LABEL_39;
                  }
                }

                else
                {

                  if (v25 == v32)
                  {
LABEL_39:
                    v34 = v30;

                    if (!v34)
                    {
                      goto LABEL_44;
                    }

                    v35 = [(PKPaymentTransactionGroup *)v34 transactions];
                    v36 = [v35 arrayByAddingObject:v11];
                    [(PKPaymentTransactionGroup *)v34 setTransactions:v36];

                    v37 = [(PKPaymentTransactionGroup *)v34 totalAmount];
                    v38 = [v37 amount];
                    v39 = [v11 amount];
                    v40 = [v39 pk_absoluteValue];
                    v41 = [v38 decimalNumberByAdding:v40];

                    v42 = [(PKPaymentTransactionGroup *)v34 totalAmount];
                    v43 = [v42 currency];
                    v44 = PKCurrencyAmountCreate(v41, v43, 0);
                    [(PKPaymentTransactionGroup *)v34 setTotalAmount:v44];

                    v45 = [(PKPaymentTransactionGroup *)v34 endDate];
                    v46 = [v77 compare:v45];

                    v47 = v46 == 1;
                    v48 = v77;
                    v8 = v74;
                    if (v47)
                    {
                      [(PKPaymentTransactionGroup *)v34 setEndDate:v77];
                    }

                    [(PKPaymentTransactionGroup *)v34 setTransactionCount:[(PKPaymentTransactionGroup *)v34 transactionCount]+ 1];
                    v4 = v75;
                    goto LABEL_45;
                  }
                }

                if (v27 == ++v29)
                {
                  v27 = [(NSDecimalNumber *)v6 countByEnumeratingWithState:&v86 objects:v96 count:16];
                  if (v27)
                  {
                    goto LABEL_28;
                  }

                  break;
                }
              }
            }

LABEL_44:
            v34 = objc_alloc_init(PKPaymentTransactionGroup);
            v49 = [v11 transactionDate];
            v50 = PKStartOfDay(v49);
            [(PKPaymentTransactionGroup *)v34 setStartDate:v50];

            [(PKPaymentTransactionGroup *)v34 setEndDate:v77];
            [(PKPaymentTransactionGroup *)v34 setType:5];
            v51 = [v11 amount];
            v52 = [v51 pk_absoluteValue];
            v53 = [v11 currencyCode];
            v54 = PKCurrencyAmountCreate(v52, v53, 0);
            [(PKPaymentTransactionGroup *)v34 setTotalAmount:v54];

            v48 = v77;
            [(PKPaymentTransactionGroup *)v34 setTransactionCount:1];
            v95 = v11;
            v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
            [(PKPaymentTransactionGroup *)v34 setTransactions:v55];

            [(NSDecimalNumber *)v6 arrayByAddingObject:v34];
            v6 = v41 = v6;
            v8 = v74;
            v4 = v75;
LABEL_45:
            v9 = v73;
            v56 = v78;
          }

          else
          {
            v56 = v78;
          }
        }

        v5 = v81;
        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v90 objects:v97 count:16];
    }

    while (v8);
  }

  v57 = [*(*(v72 + 40) + 8) transactionSourceIdentifiers];
  v58 = [v57 anyObject];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v59 = v6;
  v60 = [(NSDecimalNumber *)v59 countByEnumeratingWithState:&v82 objects:v94 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v83;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v83 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v82 + 1) + 8 * i);
        v65 = [v64 transactionForCashbackGroupWithSourceIdentifier:v58];
        [v5 addObject:v65];
        v66 = [v65 identifier];
        [v4 setObject:v64 forKey:v66];
      }

      v61 = [(NSDecimalNumber *)v59 countByEnumeratingWithState:&v82 objects:v94 count:16];
    }

    while (v61);
  }

  v67 = [v4 copy];
  v68 = *(v72 + 40);
  v69 = *(v68 + 240);
  *(v68 + 240) = v67;

  v70 = *(v72 + 48);
  if (v70)
  {
    (*(v70 + 16))(v70, v5);
  }
}

void __98__PKDashboardTransactionFetcher__addCashbackTransactions_synchronous_currentMonthOnly_completion___block_invoke_77(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __98__PKDashboardTransactionFetcher__addCashbackTransactions_synchronous_currentMonthOnly_completion___block_invoke_2;
  v6[3] = &unk_1E79C44A0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_addInstantWidthdrawalTransactionsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    date = [MEMORY[0x1E695DF00] date];
    paymentDataProvider = self->_paymentDataProvider;
    _transactionSourceIdentifiers = [(PKDashboardTransactionFetcher *)self _transactionSourceIdentifiers];
    if (self->_startDate)
    {
      startDate = self->_startDate;
    }

    else
    {
      startDate = date;
    }

    v9 = PKStartOfYear(startDate);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __82__PKDashboardTransactionFetcher__addInstantWidthdrawalTransactionsWithCompletion___block_invoke;
    v11[3] = &unk_1E79C4810;
    v11[4] = self;
    v12 = completionCopy;
    [(PKPaymentDataProvider *)paymentDataProvider transactionsForTransactionSourceIdentifiers:_transactionSourceIdentifiers withTransactionType:5 withTransactionSource:0 withBackingData:1 startDate:v9 endDate:date limit:0 completion:v11];
  }

  else
  {
    instantWithdrawalFeeGroups = self->_instantWithdrawalFeeGroups;
    self->_instantWithdrawalFeeGroups = 0;

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __82__PKDashboardTransactionFetcher__addInstantWidthdrawalTransactionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PKDashboardTransactionFetcher__addInstantWidthdrawalTransactionsWithCompletion___block_invoke_2;
  block[3] = &unk_1E79C4D60;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __82__PKDashboardTransactionFetcher__addInstantWidthdrawalTransactionsWithCompletion___block_invoke_2(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) _sortedTransactions:*(a1 + 40) ascending:0 limit:*(*(a1 + 32) + 200)];
  v2 = [v1 pk_objectsPassingTest:&__block_literal_global_149];

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v54 = [MEMORY[0x1E696AB90] zero];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v2;
  v52 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v52)
  {
    v49 = v3;
    v50 = *v61;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v61 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v60 + 1) + 8 * i);
        v7 = [v6 transactionDate];
        v8 = PKStartOfDay(v7);

        v9 = [*(a1 + 32) _feeTotalForTransaction:v6];
        if (v9)
        {
          v53 = v6;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v10 = v3;
          v11 = [v10 countByEnumeratingWithState:&v56 objects:v65 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v57;
            v55 = v9;
LABEL_9:
            v14 = 0;
            while (1)
            {
              if (*v57 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v56 + 1) + 8 * v14);
              v16 = [v15 startDate];
              v17 = [v4 components:14 fromDate:v16];

              if ([v4 date:v8 matchesComponents:v17])
              {
                break;
              }

              if (v12 == ++v14)
              {
                v12 = [v10 countByEnumeratingWithState:&v56 objects:v65 count:16];
                v9 = v55;
                if (v12)
                {
                  goto LABEL_9;
                }

                goto LABEL_15;
              }
            }

            v18 = v15;

            v9 = v55;
            if (!v18)
            {
              goto LABEL_18;
            }

            v19 = [v18 transactions];
            v20 = [v19 arrayByAddingObject:v53];
            [v18 setTransactions:v20];

            v21 = [v18 totalAmount];
            v22 = [v21 amount];
            v23 = [v55 pk_absoluteValue];
            v24 = [v22 decimalNumberByAdding:v23];

            v25 = [v18 totalAmount];
            v26 = [v25 currency];
            v27 = PKCurrencyAmountCreate(v24, v26, 0);
            [v18 setTotalAmount:v27];

            v9 = v55;
          }

          else
          {
LABEL_15:

LABEL_18:
            v24 = objc_alloc_init(PKPaymentTransactionGroup);
            v28 = [v53 transactionDate];
            v29 = PKStartOfMonth(v28);
            [(NSDecimalNumber *)v24 setStartDate:v29];

            v30 = [v53 transactionDate];
            v31 = PKEndOfMonth(v30);
            [(NSDecimalNumber *)v24 setEndDate:v31];

            [(NSDecimalNumber *)v24 setType:3];
            v32 = [v9 pk_absoluteValue];
            v33 = [v53 currencyCode];
            v34 = PKCurrencyAmountCreate(v32, v33, 0);
            [(NSDecimalNumber *)v24 setTotalAmount:v34];

            [(NSDecimalNumber *)v24 setTransactionCount:0];
            v64 = v53;
            v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
            [(NSDecimalNumber *)v24 setTransactions:v35];

            [v10 addObject:v24];
            v18 = 0;
          }

          v3 = v49;

          v36 = [v9 pk_absoluteValue];
          v37 = [(NSDecimalNumber *)v54 decimalNumberByAdding:v36];

          v54 = v37;
        }
      }

      v52 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v52);
  }

  if ([v3 count])
  {
    v38 = objc_alloc_init(PKPaymentTransactionGroup);
    v39 = PKStartOfYear(*(*(a1 + 32) + 280));
    [(PKPaymentTransactionGroup *)v38 setStartDate:v39];

    v40 = [MEMORY[0x1E695DF00] date];
    [(PKPaymentTransactionGroup *)v38 setEndDate:v40];

    [(PKPaymentTransactionGroup *)v38 setType:3];
    v41 = [v3 firstObject];
    v42 = [v41 totalAmount];
    v43 = [v42 currency];
    v44 = PKCurrencyAmountCreate(v54, v43, 0);
    [(PKPaymentTransactionGroup *)v38 setTotalAmount:v44];

    [(PKPaymentTransactionGroup *)v38 setTransactionCount:0];
    [(PKPaymentTransactionGroup *)v38 setTransactions:0];
    [v3 addObject:v38];
  }

  v45 = [v3 count];
  if (v45)
  {
    v46 = [v3 copy];
  }

  else
  {
    v46 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 256), v46);
  if (v45)
  {
  }

  v47 = *(a1 + 48);
  if (v47)
  {
    (*(v47 + 16))();
  }
}

- (void)_processPaymentPassTransactionsWithTransactions:(id)transactions synchronous:(BOOL)synchronous currentMonthOnly:(BOOL)only sendTransactionsBlock:(id)block
{
  transactionsCopy = transactions;
  blockCopy = block;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__51;
  v29[4] = __Block_byref_object_dispose__51;
  v12 = transactionsCopy;
  v30 = v12;
  v13 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __132__PKDashboardTransactionFetcher__processPaymentPassTransactionsWithTransactions_synchronous_currentMonthOnly_sendTransactionsBlock___block_invoke;
  v28[3] = &unk_1E79D5CF0;
  v28[4] = self;
  [(PKAsyncUnaryOperationComposer *)v13 addOperation:v28];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __132__PKDashboardTransactionFetcher__processPaymentPassTransactionsWithTransactions_synchronous_currentMonthOnly_sendTransactionsBlock___block_invoke_3;
  v25[3] = &unk_1E79CD838;
  v25[4] = self;
  v14 = v12;
  v26 = v14;
  v27 = v29;
  [(PKAsyncUnaryOperationComposer *)v13 addOperation:v25];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __132__PKDashboardTransactionFetcher__processPaymentPassTransactionsWithTransactions_synchronous_currentMonthOnly_sendTransactionsBlock___block_invoke_4;
  v24[3] = &unk_1E79D5CF0;
  v24[4] = self;
  [(PKAsyncUnaryOperationComposer *)v13 addOperation:v24];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __132__PKDashboardTransactionFetcher__processPaymentPassTransactionsWithTransactions_synchronous_currentMonthOnly_sendTransactionsBlock___block_invoke_5;
  v21[3] = &unk_1E79DA8A0;
  v21[4] = self;
  v21[5] = v29;
  synchronousCopy = synchronous;
  onlyCopy = only;
  [(PKAsyncUnaryOperationComposer *)v13 addOperation:v21];
  null = [MEMORY[0x1E695DFB0] null];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __132__PKDashboardTransactionFetcher__processPaymentPassTransactionsWithTransactions_synchronous_currentMonthOnly_sendTransactionsBlock___block_invoke_2_88;
  v18[3] = &unk_1E79DA8C8;
  v16 = blockCopy;
  v19 = v16;
  v20 = v29;
  v17 = [(PKAsyncUnaryOperationComposer *)v13 evaluateWithInput:null completion:v18];

  _Block_object_dispose(v29, 8);
}

void __132__PKDashboardTransactionFetcher__processPaymentPassTransactionsWithTransactions_synchronous_currentMonthOnly_sendTransactionsBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9[248] == 1)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __132__PKDashboardTransactionFetcher__processPaymentPassTransactionsWithTransactions_synchronous_currentMonthOnly_sendTransactionsBlock___block_invoke_2;
    v10[3] = &unk_1E79C44A0;
    v12 = v7;
    v11 = v6;
    [v9 _addInstantWidthdrawalTransactionsWithCompletion:v10];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __132__PKDashboardTransactionFetcher__processPaymentPassTransactionsWithTransactions_synchronous_currentMonthOnly_sendTransactionsBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [*(*(a1 + 32) + 8) account];

  if (!v8)
  {
    v7[2](v7, v6, 0);
    goto LABEL_19;
  }

  v25 = v6;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = v10;
  v12 = *v27;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v26 + 1) + 8 * i);
      v15 = [v14 referenceIdentifier];
      if (![v15 length])
      {

        continue;
      }

      if ([v14 transactionType] == 5)
      {
      }

      else
      {
        v16 = [v14 transactionType];

        if (v16 != 6)
        {
          continue;
        }
      }

      v17 = [v14 transfers];
      v18 = [v17 count];

      if (!v18)
      {
        v19 = [v14 transactionDate];
        [v19 timeIntervalSinceNow];
        v21 = fabs(v20);

        if (v21 < 3.0)
        {
          v22 = [*(*(*(a1 + 48) + 8) + 40) pk_setByRemovingObject:v14];
          v23 = *(*(a1 + 48) + 8);
          v24 = *(v23 + 40);
          *(v23 + 40) = v22;

          os_unfair_lock_lock((*(a1 + 32) + 32));
          *(*(a1 + 32) + 37) = 1;
          os_unfair_lock_unlock((*(a1 + 32) + 32));
        }
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v11);
LABEL_17:

  v6 = v25;
  v7[2](v7, v25, 0);
LABEL_19:
}

void __132__PKDashboardTransactionFetcher__processPaymentPassTransactionsWithTransactions_synchronous_currentMonthOnly_sendTransactionsBlock___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22 = a3;
  v6 = a4;
  v7 = v6;
  if (*(*(a1 + 32) + 224) == 1)
  {
    v8 = +[PKAccountService sharedInstance];
    v9 = [v8 defaultAccountForFeature:2];

    if (v9)
    {
      v10 = [v9 associatedPassUniqueID];
      v11 = *(a1 + 32);
      v12 = *(v11 + 208);
      *(v11 + 208) = v10;

      v13 = +[PKPassLibrary sharedInstance];
      v14 = [v13 passWithUniqueID:*(*(a1 + 32) + 208)];
      v15 = [v14 paymentPass];
      v16 = *(a1 + 32);
      v17 = *(v16 + 296);
      *(v16 + 296) = v15;

      v18 = [[PKTransactionSource alloc] initWithPaymentPass:*(*(a1 + 32) + 296)];
      v19 = [[PKTransactionSourceCollection alloc] initWithTransactionSource:v18];
      v20 = *(a1 + 32);
      v21 = *(v20 + 216);
      *(v20 + 216) = v19;
    }

    *(*(a1 + 32) + 224) = 0;
    (v7)[2](v7, v22, 0);
  }

  else
  {
    (*(v6 + 2))(v6, v22, 0);
  }
}

void __132__PKDashboardTransactionFetcher__processPaymentPassTransactionsWithTransactions_synchronous_currentMonthOnly_sendTransactionsBlock___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (!v10[26])
  {
    goto LABEL_6;
  }

  v11 = v10[11];
  if (v11)
  {
    if ([v11 containsObject:&unk_1F23B5240])
    {
      v10 = *(a1 + 32);
      goto LABEL_5;
    }

LABEL_6:
    v9[2](v9, v8, 0);
    goto LABEL_7;
  }

LABEL_5:
  v12 = *(a1 + 40);
  v13 = *(*(v12 + 8) + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 49);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __132__PKDashboardTransactionFetcher__processPaymentPassTransactionsWithTransactions_synchronous_currentMonthOnly_sendTransactionsBlock___block_invoke_86;
  v16[3] = &unk_1E79D5F38;
  v19 = v12;
  v18 = v9;
  v17 = v8;
  [v10 _addCashbackTransactions:v13 synchronous:v14 currentMonthOnly:v15 completion:v16];

LABEL_7:
}

void __132__PKDashboardTransactionFetcher__processPaymentPassTransactionsWithTransactions_synchronous_currentMonthOnly_sendTransactionsBlock___block_invoke_86(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

uint64_t __132__PKDashboardTransactionFetcher__processPaymentPassTransactionsWithTransactions_synchronous_currentMonthOnly_sendTransactionsBlock___block_invoke_2_88(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

- (id)_feeTotalForTransaction:(id)transaction
{
  v28 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  currencyCode = [transactionCopy currencyCode];
  zero = [MEMORY[0x1E696AB90] zero];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = transactionCopy;
  fees = [transactionCopy fees];
  v6Fees = [fees fees];

  v8 = [v6Fees countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = v8;
  v10 = *v24;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v6Fees);
      }

      currencyAmount = [*(*(&v23 + 1) + 8 * i) currencyAmount];
      currency = [currencyAmount currency];
      v14 = currencyCode;
      v15 = currency;
      amount = v15;
      if (v14 == v15)
      {

LABEL_12:
        amount = [currencyAmount amount];
        [zero decimalNumberByAdding:amount];
        zero = v14 = zero;
LABEL_14:

        goto LABEL_15;
      }

      if (!currencyCode || !v15)
      {

        goto LABEL_14;
      }

      v17 = [v14 isEqualToString:v15];

      if (v17)
      {
        goto LABEL_12;
      }

LABEL_15:
    }

    v9 = [v6Fees countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v9);
LABEL_17:

  zero2 = [MEMORY[0x1E696AB90] zero];
  if ([zero compare:zero2])
  {
    v19 = zero;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  return v19;
}

- (id)_sortedTransactions:(id)transactions ascending:(BOOL)ascending limit:(unint64_t)limit
{
  ascendingCopy = ascending;
  v18[1] = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  if (self->_startDate)
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"transactionDate >= %@", self->_startDate];
    v10 = [transactionsCopy filteredSetUsingPredicate:v9];

    transactionsCopy = v10;
  }

  if (self->_endDate)
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"transactionDate <= %@", self->_endDate];
    v12 = [transactionsCopy filteredSetUsingPredicate:v11];

    transactionsCopy = v12;
  }

  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"transactionDate" ascending:ascendingCopy];
  v18[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v15 = [transactionsCopy sortedArrayUsingDescriptors:v14];

  if (limit && [v15 count] > limit)
  {
    v16 = [v15 subarrayWithRange:{0, limit}];

    v15 = v16;
  }

  return v15;
}

- (void)_sendUpdatedTransactions
{
  os_unfair_lock_lock(&self->_lockUpdate);
  if (self->_pendingUpdate)
  {
    self->_hasMoreUpdates = 1;

    os_unfair_lock_unlock(&self->_lockUpdate);
  }

  else
  {
    self->_pendingUpdate = 1;
    os_unfair_lock_unlock(&self->_lockUpdate);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __57__PKDashboardTransactionFetcher__sendUpdatedTransactions__block_invoke;
    v3[3] = &unk_1E79CEC30;
    v3[4] = self;
    [(PKDashboardTransactionFetcher *)self reloadTransactionsWithAllowSynchronous:0 completion:v3];
  }
}

void __57__PKDashboardTransactionFetcher__sendUpdatedTransactions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained transactionsChanged:v3];
  }

  objc_initWeak(&location, *(a1 + 32));
  v6 = dispatch_time(0, 3000000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PKDashboardTransactionFetcher__sendUpdatedTransactions__block_invoke_2;
  v7[3] = &unk_1E79C9D80;
  objc_copyWeak(&v8, &location);
  dispatch_after(v6, MEMORY[0x1E69E96A0], v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __57__PKDashboardTransactionFetcher__sendUpdatedTransactions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    v2 = BYTE1(v3[9]._os_unfair_lock_opaque);
    LOWORD(v3[9]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(v3 + 8);
    WeakRetained = v3;
    if (v2 == 1)
    {
      [(os_unfair_lock_s *)v3 _sendUpdatedTransactions];
      WeakRetained = v3;
    }
  }
}

- (BOOL)_containsFrequentTransactionType:(id)type
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  typeCopy = type;
  v4 = [typeCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(typeCopy);
        }

        integerValue = [*(*(&v9 + 1) + 8 * i) integerValue];
        if (integerValue < 0xA && ((0x269u >> integerValue) & 1) != 0)
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [typeCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  identifierCopy = identifier;
  transactionSourceIdentifiers = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
  if ([transactionSourceIdentifiers containsObject:identifierCopy])
  {

LABEL_4:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__PKDashboardTransactionFetcher_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
    block[3] = &unk_1E79C4E28;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_5;
  }

  transactionSourceIdentifiers2 = [(PKTransactionSourceCollection *)self->_cashbackTransactionSourceCollection transactionSourceIdentifiers];
  v8 = [transactionSourceIdentifiers2 containsObject:identifierCopy];

  if (v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    if (withIdentifier)
    {
      identifierCopy = identifier;
      v6 = MEMORY[0x1E695DFD8];
      withIdentifierCopy = withIdentifier;
      identifierCopy2 = identifier;
      v9 = [v6 alloc];
      v13 = withIdentifierCopy;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      v11 = [v9 initWithArray:v10];
      v15[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&identifierCopy count:1];

      [(PKDashboardTransactionFetcher *)self didRemoveTransactionsWithSourceIdentifierMapping:v12];
    }
  }
}

- (void)didRemoveTransactionsWithSourceIdentifierMapping:(id)mapping
{
  v4 = MEMORY[0x1E695DFD8];
  mappingCopy = mapping;
  v6 = [v4 alloc];
  allKeys = [mappingCopy allKeys];

  v8 = [v6 initWithArray:allKeys];
  transactionSourceIdentifiers = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
  if ([transactionSourceIdentifiers intersectsSet:v8])
  {

LABEL_4:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__PKDashboardTransactionFetcher_didRemoveTransactionsWithSourceIdentifierMapping___block_invoke;
    block[3] = &unk_1E79C4E28;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_5;
  }

  transactionSourceIdentifiers2 = [(PKTransactionSourceCollection *)self->_cashbackTransactionSourceCollection transactionSourceIdentifiers];
  v11 = [transactionSourceIdentifiers2 intersectsSet:v8];

  if (v11)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableTransactionService:(BOOL)service
{
  identifierCopy = identifier;
  paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  uniqueID = [paymentPass uniqueID];
  v8 = identifierCopy;
  v9 = uniqueID;
  v10 = v9;
  v11 = v9;
  if (v9 == v8)
  {
    goto LABEL_12;
  }

  if (v8 && v9)
  {
    v12 = [v8 isEqualToString:v9];

    if (v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  cashbackPassUniqueID = self->_cashbackPassUniqueID;
  v14 = v8;
  v15 = cashbackPassUniqueID;
  v11 = v15;
  if (v15 == v14)
  {
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  if (!v8 || !v15)
  {

    goto LABEL_15;
  }

  v16 = [(NSString *)v14 isEqualToString:v15];

  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_14:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PKDashboardTransactionFetcher_paymentPassWithUniqueIdentifier_didEnableTransactionService___block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
LABEL_15:
}

- (PKDashboardTransactionFetcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end