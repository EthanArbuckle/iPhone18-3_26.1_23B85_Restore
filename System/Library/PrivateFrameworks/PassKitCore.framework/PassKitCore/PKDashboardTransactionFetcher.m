@interface PKDashboardTransactionFetcher
- (BOOL)_containsFrequentTransactionType:(id)a3;
- (PKDashboardTransactionFetcher)initWithCounterpartHandles:(id)a3 transactionSourceCollection:(id)a4 paymentDataProvider:(id)a5;
- (PKDashboardTransactionFetcher)initWithInstallmentPlan:(id)a3 transactionSourceCollection:(id)a4 paymentDataProvider:(id)a5;
- (PKDashboardTransactionFetcher)initWithMerchant:(id)a3 transactionSourceCollection:(id)a4 paymentDataProvider:(id)a5;
- (PKDashboardTransactionFetcher)initWithMerchantCategory:(int64_t)a3 transactionSourceCollection:(id)a4 paymentDataProvider:(id)a5;
- (PKDashboardTransactionFetcher)initWithRegions:(id)a3 transactionSourceCollection:(id)a4 paymentDataProvider:(id)a5;
- (PKDashboardTransactionFetcher)initWithTransactionSourceCollection:(id)a3 paymentDataProvider:(id)a4;
- (PKDashboardTransactionFetcher)initWithTransactionType:(int64_t)a3 transactionSourceCollection:(id)a4 paymentDataProvider:(id)a5;
- (PKDashboardTransactionFetcherDelegate)delegate;
- (id)_feeTotalForTransaction:(id)a3;
- (id)_sortedTransactions:(id)a3 ascending:(BOOL)a4 limit:(unint64_t)a5;
- (id)_transactionRequestForCurrentFilters;
- (id)_transactionSourceIdentifiers;
- (id)cashbackGroupForDateComponents:(id)a3 cashbackTransactionSourceCollection:(id *)a4;
- (id)cashbackGroupForTransactionWithIdentifier:(id)a3 cashbackTransactionSourceCollection:(id *)a4;
- (void)_addCashbackTransactions:(id)a3 synchronous:(BOOL)a4 currentMonthOnly:(BOOL)a5 completion:(id)a6;
- (void)_addInstantWidthdrawalTransactionsWithCompletion:(id)a3;
- (void)_commonSetup;
- (void)_processPaymentPassTransactionsWithTransactions:(id)a3 synchronous:(BOOL)a4 currentMonthOnly:(BOOL)a5 sendTransactionsBlock:(id)a6;
- (void)_sendUpdatedTransactions;
- (void)dealloc;
- (void)didRemoveTransactionsWithSourceIdentifierMapping:(id)a3;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableTransactionService:(BOOL)a4;
- (void)peerPaymentCounterpartHandlesForTransactionSourceIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 completion:(id)a6;
- (void)reloadTransactionsWithAllowSynchronous:(BOOL)a3 completion:(id)a4;
- (void)setCashbackPass:(id)a3;
- (void)setLimit:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5;
- (void)transactionCountByPeriod:(unint64_t)a3 withCompletion:(id)a4;
- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4;
- (void)transactionSourceIdentifier:(id)a3 didRemoveTransactionWithIdentifier:(id)a4;
@end

@implementation PKDashboardTransactionFetcher

- (PKDashboardTransactionFetcher)initWithTransactionSourceCollection:(id)a3 paymentDataProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKDashboardTransactionFetcher;
  v9 = [(PKDashboardTransactionFetcher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transactionSourceCollection, a3);
    v10->_type = 0;
    objc_storeStrong(&v10->_paymentDataProvider, a4);
    [(PKDashboardTransactionFetcher *)v10 _commonSetup];
  }

  return v10;
}

- (PKDashboardTransactionFetcher)initWithMerchant:(id)a3 transactionSourceCollection:(id)a4 paymentDataProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKDashboardTransactionFetcher;
  v12 = [(PKDashboardTransactionFetcher *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_merchant, a3);
    objc_storeStrong(&v13->_transactionSourceCollection, a4);
    v13->_type = 1;
    objc_storeStrong(&v13->_paymentDataProvider, a5);
    [(PKDashboardTransactionFetcher *)v13 _commonSetup];
  }

  return v13;
}

- (PKDashboardTransactionFetcher)initWithCounterpartHandles:(id)a3 transactionSourceCollection:(id)a4 paymentDataProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PKDashboardTransactionFetcher;
  v11 = [(PKDashboardTransactionFetcher *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    counterpartHandles = v11->_counterpartHandles;
    v11->_counterpartHandles = v12;

    objc_storeStrong(&v11->_transactionSourceCollection, a4);
    v11->_type = 2;
    objc_storeStrong(&v11->_paymentDataProvider, a5);
    [(PKDashboardTransactionFetcher *)v11 _commonSetup];
  }

  return v11;
}

- (PKDashboardTransactionFetcher)initWithMerchantCategory:(int64_t)a3 transactionSourceCollection:(id)a4 paymentDataProvider:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PKDashboardTransactionFetcher;
  v11 = [(PKDashboardTransactionFetcher *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_merchantCategory = a3;
    objc_storeStrong(&v11->_transactionSourceCollection, a4);
    v12->_type = 3;
    objc_storeStrong(&v12->_paymentDataProvider, a5);
    [(PKDashboardTransactionFetcher *)v12 _commonSetup];
  }

  return v12;
}

- (PKDashboardTransactionFetcher)initWithTransactionType:(int64_t)a3 transactionSourceCollection:(id)a4 paymentDataProvider:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PKDashboardTransactionFetcher;
  v11 = [(PKDashboardTransactionFetcher *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_transactionType = a3;
    objc_storeStrong(&v11->_transactionSourceCollection, a4);
    v12->_type = 4;
    objc_storeStrong(&v12->_paymentDataProvider, a5);
    [(PKDashboardTransactionFetcher *)v12 _commonSetup];
  }

  return v12;
}

- (PKDashboardTransactionFetcher)initWithInstallmentPlan:(id)a3 transactionSourceCollection:(id)a4 paymentDataProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKDashboardTransactionFetcher;
  v12 = [(PKDashboardTransactionFetcher *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_installmentPlan, a3);
    objc_storeStrong(&v13->_transactionSourceCollection, a4);
    v13->_type = 5;
    objc_storeStrong(&v13->_paymentDataProvider, a5);
    [(PKDashboardTransactionFetcher *)v13 _commonSetup];
  }

  return v13;
}

- (PKDashboardTransactionFetcher)initWithRegions:(id)a3 transactionSourceCollection:(id)a4 paymentDataProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKDashboardTransactionFetcher;
  v12 = [(PKDashboardTransactionFetcher *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_regions, a3);
    objc_storeStrong(&v13->_transactionSourceCollection, a4);
    v13->_type = 6;
    objc_storeStrong(&v13->_paymentDataProvider, a5);
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
        v8 = [v7 paymentPass];
        v9 = [v7 account];
        v10 = [v8 devicePrimaryPaymentApplication];
        v11 = [v10 paymentNetworkIdentifier];

        v12 = [v7 type];
        if ((v12 - 2) >= 2)
        {
          if (v12 == 1)
          {
            self->_needsInstantWithdrawalFees = 1;
LABEL_17:
            if ((v11 - 103) >= 0x26)
            {
              v16 = 10;
            }

            else
            {
              v16 = qword_1ADB9AB10[v11 - 103];
            }

            goto LABEL_20;
          }

          if (v12)
          {
            goto LABEL_21;
          }

          v13 = [v8 hasAssociatedPeerPaymentAccount];
          v14 = [v8 associatedAccountServiceAccountIdentifier];
          v15 = v14 != 0;

          if (v13)
          {
            self->_needsCashbackUniqueID = 1;
            self->_needsInstantWithdrawalFees = 1;
            self->_cashBackType = 1;
          }

          if (((v15 | v13) & 1) == 0)
          {
            goto LABEL_17;
          }

LABEL_15:
          v16 = 0;
          goto LABEL_20;
        }

        if ([v9 type] != 4)
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

- (void)setLimit:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5
{
  v8 = a4;
  v9 = a5;
  self->_limit = a3;
  startDate = self->_startDate;
  self->_startDate = v8;
  v12 = v8;

  endDate = self->_endDate;
  self->_endDate = v9;
}

- (id)_transactionSourceIdentifiers
{
  filteredTransactionSourceIdentifiers = self->_filteredTransactionSourceIdentifiers;
  if (filteredTransactionSourceIdentifiers)
  {
    v3 = filteredTransactionSourceIdentifiers;
  }

  else
  {
    v3 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
  }

  return v3;
}

- (void)reloadTransactionsWithAllowSynchronous:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(PKDashboardTransactionFetcher *)self _transactionRequestForCurrentFilters];
    v8 = [v7 limit];
    v9 = v8;
    v10 = (v8 - 1) < 0xA && v4;
    v92[0] = 0;
    v92[1] = v92;
    v92[2] = 0x2020000000;
    v92[3] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke;
    aBlock[3] = &unk_1E79DA7B0;
    v91 = v10;
    v90 = v6;
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
    v14 = [(PKDashboardTransactionFetcher *)self _transactionSourceIdentifiers];
    type = self->_type;
    if (type <= 2)
    {
      if (type)
      {
        if (type == 1)
        {
          if (![(PKMerchant *)self->_merchant hasMapsMatch]|| [(PKMerchant *)self->_merchant shouldIgnoreMapsMatches])
          {
            v35 = [(PKMerchant *)self->_merchant name];
            if (v35)
            {
            }

            else
            {
              v40 = [(PKMerchant *)self->_merchant rawName];

              if (!v40)
              {
                goto LABEL_46;
              }
            }
          }

          v41 = objc_opt_respondsToSelector();
          paymentDataProvider = self->_paymentDataProvider;
          if (v41)
          {
            v43 = [(PKDashboardTransactionFetcher *)self _transactionRequestForCurrentFilters];
            v75[0] = MEMORY[0x1E69E9820];
            v75[1] = 3221225472;
            v75[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_10;
            v75[3] = &unk_1E79C5468;
            v76 = v12;
            [(PKPaymentDataProvider *)paymentDataProvider transactionsForRequest:v43 completion:v75];

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
            [(PKPaymentDataProvider *)v44 transactionsForTransactionSourceIdentifiers:v14 matchingMerchant:merchant withTransactionSource:0 withBackingData:1 limit:limit completion:v73];
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
          [(PKPaymentDataProvider *)v21 transactionsForTransactionSourceIdentifiers:v14 withPeerPaymentCounterpartHandles:counterpartHandles withTransactionSource:0 withBackingData:1 limit:v9 completion:v71];
          v20 = v72;
          goto LABEL_45;
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v25 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
          v26 = [v25 associatedAccountFeatureIdentifier];
          v27 = v26;
          if (v26 <= 4 && ((1 << v26) & 0x16) != 0)
          {
            v28 = 1;
          }

          else
          {
            v57 = [v25 devicePrimaryContactlessPaymentApplication];
            v55 = [v57 paymentNetworkIdentifier];
            v28 = 0;
            if ((v55 - 129) <= 0xB)
            {
              v28 = ((1 << (v55 + 127)) & 0xA01) != 0;
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
            v47 = [MEMORY[0x1E695DF00] date];
            v48 = PKStartOfMonth(v47);
            [v7 setStartDate:v48];

            v49 = PKStartOfNextMonth(v47);
            [v7 setEndDate:v49];

            v50 = 1;
            v51 = 1;
          }

          v52 = self->_paymentDataProvider;
          if (v10)
          {
            v53 = [(PKPaymentDataProvider *)self->_paymentDataProvider transactionsForRequest:v7];
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
            v81 = v7;
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
          [(PKPaymentDataProvider *)v36 transactionsForTransactionSourceIdentifiers:v14 withTransactionSource:0 withBackingData:1 startDate:startDate endDate:endDate limit:v9 completion:v77];
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
          v34 = [(PKCreditInstallmentPlan *)self->_installmentPlan identifier];
          v63[0] = MEMORY[0x1E69E9820];
          v63[1] = 3221225472;
          v63[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_16;
          v63[3] = &unk_1E79D1300;
          v64 = v13;
          [(PKPaymentDataProvider *)v33 installmentTransactionsForInstallmentPlanIdentifier:v34 completion:v63];

          v20 = v64;
          goto LABEL_45;
        }
      }

      else if (type == 6 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v23 = self->_paymentDataProvider;
        v24 = [(PKDashboardTransactionFetcher *)self _transactionRequestForCurrentFilters];
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_17;
        v61[3] = &unk_1E79C5468;
        v62 = v12;
        [(PKPaymentDataProvider *)v23 transactionsForRequest:v24 completion:v61];

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
        v32 = [(PKDashboardTransactionFetcher *)self _transactionRequestForCurrentFilters];
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __83__PKDashboardTransactionFetcher_reloadTransactionsWithAllowSynchronous_completion___block_invoke_13;
        v69[3] = &unk_1E79C5468;
        v70 = v12;
        [(PKPaymentDataProvider *)v31 transactionsForRequest:v32 completion:v69];

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
        [(PKPaymentDataProvider *)v37 transactionsForTransactionSourceIdentifiers:v14 withMerchantCategory:merchantCategory withTransactionSource:0 withBackingData:1 startDate:v39 endDate:v60 limit:v9 completion:v67];
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
      [(PKPaymentDataProvider *)v16 transactionsForTransactionSourceIdentifiers:v14 withTransactionType:transactionType withTransactionSource:0 withBackingData:1 startDate:v58 endDate:v18 limit:v19 completion:v65];
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
  v4 = [(PKDashboardTransactionFetcher *)self _transactionSourceIdentifiers];
  [(PKPaymentTransactionRequest *)v3 setTransactionSourceIdentifiers:v4];

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

- (void)transactionCountByPeriod:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    v8 = [v7 associatedAccountFeatureIdentifier];

    v9 = (v8 - 1) < 2;
    if ((v8 - 1) > 1)
    {
      v10 = objc_alloc_init(PKPaymentTransactionRequest);
      v11 = [(PKDashboardTransactionFetcher *)self _transactionSourceIdentifiers];
      [(PKPaymentTransactionRequest *)v10 setTransactionSourceIdentifiers:v11];
    }

    else
    {
      v10 = [(PKDashboardTransactionFetcher *)self _transactionRequestForCurrentFilters];
    }

    paymentDataProvider = self->_paymentDataProvider;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__PKDashboardTransactionFetcher_transactionCountByPeriod_withCompletion___block_invoke;
    v14[3] = &unk_1E79DA800;
    v17 = v9;
    v15 = v10;
    v16 = v6;
    v13 = v10;
    [(PKPaymentDataProvider *)paymentDataProvider transactionCountByPeriodForRequest:v13 gregorianCalendarUnit:a3 includePurchaseTotal:0 completion:v14];
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

- (void)peerPaymentCounterpartHandlesForTransactionSourceIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    paymentDataProvider = self->_paymentDataProvider;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __122__PKDashboardTransactionFetcher_peerPaymentCounterpartHandlesForTransactionSourceIdentifier_startDate_endDate_completion___block_invoke;
    v15[3] = &unk_1E79C5468;
    v16 = v13;
    [(PKPaymentDataProvider *)paymentDataProvider peerPaymentCounterpartHandlesForTransactionSourceIdentifier:v10 startDate:v11 endDate:v12 completion:v15];
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

- (id)cashbackGroupForTransactionWithIdentifier:(id)a3 cashbackTransactionSourceCollection:(id *)a4
{
  if (a4)
  {
    *a4 = self->_cashbackTransactionSourceCollection;
  }

  cashbackGroups = self->_cashbackGroups;

  return [(NSDictionary *)cashbackGroups objectForKey:a3];
}

- (id)cashbackGroupForDateComponents:(id)a3 cashbackTransactionSourceCollection:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(NSDictionary *)self->_cashbackGroups allValues];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v16 = a4;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 startDate];
        v14 = [v7 date:v13 matchesComponents:v6];

        if (v14)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

LABEL_11:
    a4 = v16;
  }

  if (a4)
  {
    *a4 = self->_cashbackTransactionSourceCollection;
  }

  return v9;
}

- (void)setCashbackPass:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_cashbackPass, a3);
  v5 = [v10 uniqueID];
  cashbackPassUniqueID = self->_cashbackPassUniqueID;
  self->_cashbackPassUniqueID = v5;

  if (v10)
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

- (void)_addCashbackTransactions:(id)a3 synchronous:(BOOL)a4 currentMonthOnly:(BOOL)a5 completion:(id)a6
{
  v8 = a4;
  v55 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  if (v8)
  {
    if (self->_startDate)
    {
      v8 = self->_endDate == 0;
    }

    else
    {
      v8 = 1;
    }
  }

  v12 = [MEMORY[0x1E695DF00] date];
  v13 = v12;
  endDate = self->_endDate;
  if (!endDate)
  {
    endDate = v12;
  }

  v15 = endDate;
  v16 = self->_startDate;
  if (!v16)
  {
    if (a5)
    {
      v16 = PKStartOfMonth(v13);
    }

    else
    {
      v17 = [MEMORY[0x1E695DF00] date];
      v16 = [v17 dateByAddingTimeInterval:-2678400.0];
    }
  }

  v18 = [MEMORY[0x1E695DEE8] currentCalendar];
  if (self->_limit)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || (paymentDataProvider = self->_paymentDataProvider, [(PKTransactionSourceCollection *)self->_cashbackTransactionSourceCollection transactionSourceIdentifiers], v20 = v15, v21 = objc_claimAutoreleasedReturnValue(), [(PKPaymentDataProvider *)paymentDataProvider earliestDailyBucketForTransactionSourceIdentifiers:v21 calendar:v18 type:self->_cashBackType limit:self->_limit], v22 = objc_claimAutoreleasedReturnValue(), v21, v15 = v20, !v22))
    {
      if ([v10 count] >= self->_limit)
      {
        [(PKDashboardTransactionFetcher *)self _sortedTransactions:v10 ascending:0 limit:?];
        v23 = v45 = v15;
        [v23 lastObject];
        v24 = v11;
        v25 = v8;
        v26 = v18;
        v28 = v27 = v13;
        v22 = [v28 transactionDate];

        v13 = v27;
        v18 = v26;
        v8 = v25;
        v11 = v24;

        v15 = v45;
      }

      else
      {
        v22 = 0;
      }
    }

    v16 = v22;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__PKDashboardTransactionFetcher__addCashbackTransactions_synchronous_currentMonthOnly_completion___block_invoke;
  aBlock[3] = &unk_1E79CC750;
  v29 = v10;
  v50 = v29;
  v51 = self;
  v30 = v11;
  v52 = v30;
  v31 = _Block_copy(aBlock);
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
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
    v36 = [(PKTransactionSourceCollection *)self->_cashbackTransactionSourceCollection transactionSourceIdentifiers];
    v37 = v35;
    v15 = v33;
    v38 = [(PKPaymentDataProvider *)v37 cashbackByPeriodForTransactionSourceIdentifiers:v36 withStartDate:v16 endDate:v33 calendar:v18 calendarUnit:16 type:self->_cashBackType];

    v31[2](v31, v38);
    v13 = v32;
  }

  else if (objc_opt_respondsToSelector())
  {
    v46 = v15;
    v39 = self->_paymentDataProvider;
    [(PKTransactionSourceCollection *)self->_cashbackTransactionSourceCollection transactionSourceIdentifiers];
    v40 = v44 = v13;
    v41 = [MEMORY[0x1E695DEE8] currentCalendar];
    cashBackType = self->_cashBackType;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __98__PKDashboardTransactionFetcher__addCashbackTransactions_synchronous_currentMonthOnly_completion___block_invoke_77;
    v47[3] = &unk_1E79C5468;
    v48 = v31;
    v43 = v39;
    v15 = v46;
    [(PKPaymentDataProvider *)v43 cashbackByPeriodForTransactionSourceIdentifiers:v40 withStartDate:v16 endDate:v46 calendar:v41 calendarUnit:16 type:cashBackType completion:v47];

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

- (void)_addInstantWidthdrawalTransactionsWithCompletion:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x1E695DF00] date];
    paymentDataProvider = self->_paymentDataProvider;
    v7 = [(PKDashboardTransactionFetcher *)self _transactionSourceIdentifiers];
    if (self->_startDate)
    {
      startDate = self->_startDate;
    }

    else
    {
      startDate = v5;
    }

    v9 = PKStartOfYear(startDate);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __82__PKDashboardTransactionFetcher__addInstantWidthdrawalTransactionsWithCompletion___block_invoke;
    v11[3] = &unk_1E79C4810;
    v11[4] = self;
    v12 = v4;
    [(PKPaymentDataProvider *)paymentDataProvider transactionsForTransactionSourceIdentifiers:v7 withTransactionType:5 withTransactionSource:0 withBackingData:1 startDate:v9 endDate:v5 limit:0 completion:v11];
  }

  else
  {
    instantWithdrawalFeeGroups = self->_instantWithdrawalFeeGroups;
    self->_instantWithdrawalFeeGroups = 0;

    if (v4)
    {
      v4[2](v4);
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

- (void)_processPaymentPassTransactionsWithTransactions:(id)a3 synchronous:(BOOL)a4 currentMonthOnly:(BOOL)a5 sendTransactionsBlock:(id)a6
{
  v10 = a3;
  v11 = a6;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__51;
  v29[4] = __Block_byref_object_dispose__51;
  v12 = v10;
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
  v22 = a4;
  v23 = a5;
  [(PKAsyncUnaryOperationComposer *)v13 addOperation:v21];
  v15 = [MEMORY[0x1E695DFB0] null];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __132__PKDashboardTransactionFetcher__processPaymentPassTransactionsWithTransactions_synchronous_currentMonthOnly_sendTransactionsBlock___block_invoke_2_88;
  v18[3] = &unk_1E79DA8C8;
  v16 = v11;
  v19 = v16;
  v20 = v29;
  v17 = [(PKAsyncUnaryOperationComposer *)v13 evaluateWithInput:v15 completion:v18];

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

- (id)_feeTotalForTransaction:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 currencyCode];
  v5 = [MEMORY[0x1E696AB90] zero];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = v3;
  v6 = [v3 fees];
  v7 = [v6 fees];

  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
        objc_enumerationMutation(v7);
      }

      v12 = [*(*(&v23 + 1) + 8 * i) currencyAmount];
      v13 = [v12 currency];
      v14 = v4;
      v15 = v13;
      v16 = v15;
      if (v14 == v15)
      {

LABEL_12:
        v16 = [v12 amount];
        [v5 decimalNumberByAdding:v16];
        v5 = v14 = v5;
LABEL_14:

        goto LABEL_15;
      }

      if (!v4 || !v15)
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

    v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v9);
LABEL_17:

  v18 = [MEMORY[0x1E696AB90] zero];
  if ([v5 compare:v18])
  {
    v19 = v5;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  return v19;
}

- (id)_sortedTransactions:(id)a3 ascending:(BOOL)a4 limit:(unint64_t)a5
{
  v6 = a4;
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (self->_startDate)
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"transactionDate >= %@", self->_startDate];
    v10 = [v8 filteredSetUsingPredicate:v9];

    v8 = v10;
  }

  if (self->_endDate)
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"transactionDate <= %@", self->_endDate];
    v12 = [v8 filteredSetUsingPredicate:v11];

    v8 = v12;
  }

  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"transactionDate" ascending:v6];
  v18[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v15 = [v8 sortedArrayUsingDescriptors:v14];

  if (a5 && [v15 count] > a5)
  {
    v16 = [v15 subarrayWithRange:{0, a5}];

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

- (BOOL)_containsFrequentTransactionType:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v9 + 1) + 8 * i) integerValue];
        if (v7 < 0xA && ((0x269u >> v7) & 1) != 0)
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4
{
  v5 = a3;
  v6 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
  if ([v6 containsObject:v5])
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

  v7 = [(PKTransactionSourceCollection *)self->_cashbackTransactionSourceCollection transactionSourceIdentifiers];
  v8 = [v7 containsObject:v5];

  if (v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)transactionSourceIdentifier:(id)a3 didRemoveTransactionWithIdentifier:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      v14 = a3;
      v6 = MEMORY[0x1E695DFD8];
      v7 = a4;
      v8 = a3;
      v9 = [v6 alloc];
      v13 = v7;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      v11 = [v9 initWithArray:v10];
      v15[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

      [(PKDashboardTransactionFetcher *)self didRemoveTransactionsWithSourceIdentifierMapping:v12];
    }
  }
}

- (void)didRemoveTransactionsWithSourceIdentifierMapping:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 allKeys];

  v8 = [v6 initWithArray:v7];
  v9 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
  if ([v9 intersectsSet:v8])
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

  v10 = [(PKTransactionSourceCollection *)self->_cashbackTransactionSourceCollection transactionSourceIdentifiers];
  v11 = [v10 intersectsSet:v8];

  if (v11)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableTransactionService:(BOOL)a4
{
  v5 = a3;
  v6 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v7 = [v6 uniqueID];
  v8 = v5;
  v9 = v7;
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