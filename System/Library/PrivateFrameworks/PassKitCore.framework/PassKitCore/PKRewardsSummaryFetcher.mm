@interface PKRewardsSummaryFetcher
- (BOOL)isPaymentPassRelevant:(id)a3;
- (BOOL)isTransactionSourceIdentifierRelevant:(id)a3;
- (PKRewardsSummaryFetcher)initWithTransactionSourceCollection:(id)a3 account:(id)a4;
- (id)_relevantTransactionSourceIdentifiers;
- (void)rewardsTierSummariesWithCompletion:(id)a3;
@end

@implementation PKRewardsSummaryFetcher

- (PKRewardsSummaryFetcher)initWithTransactionSourceCollection:(id)a3 account:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKRewardsSummaryFetcher;
  v9 = [(PKRewardsSummaryFetcher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a4);
    objc_storeStrong(&v10->_transactionSourceCollection, a3);
  }

  return v10;
}

- (BOOL)isTransactionSourceIdentifierRelevant:(id)a3
{
  v4 = a3;
  v5 = [(PKRewardsSummaryFetcher *)self _relevantTransactionSourceIdentifiers];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)isPaymentPassRelevant:(id)a3
{
  v4 = a3;
  v5 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v6 = [v5 uniqueID];
  v7 = v4;
  v8 = v6;
  v9 = v8;
  if (v8 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = 0;
    if (v7 && v8)
    {
      v10 = [v7 isEqualToString:v8];
    }
  }

  return v10;
}

- (void)rewardsTierSummariesWithCompletion:(id)a3
{
  v4 = a3;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__79;
  v35[4] = __Block_byref_object_dispose__79;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__79;
  v33[4] = __Block_byref_object_dispose__79;
  v34 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__79;
  v31[4] = __Block_byref_object_dispose__79;
  v32 = 0;
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = PKStartOfMonth(v5);
  v7 = PKStartOfYear(v5);
  v8 = dispatch_group_create();
  v9 = +[PKAccountService sharedInstance];
  v10 = [(PKRewardsSummaryFetcher *)self _relevantTransactionSourceIdentifiers];
  v11 = [(PKAccount *)self->_account creditDetails];
  v12 = [v11 currencyCode];

  dispatch_group_enter(v8);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __62__PKRewardsSummaryFetcher_rewardsTierSummariesWithCompletion___block_invoke;
  v28[3] = &unk_1E79E1E50;
  v30 = v35;
  v13 = v8;
  v29 = v13;
  [v9 rewardsTierSummaryForTransactionSourceIdentifiers:v10 currencyCode:v12 startDate:v6 endDate:0 completion:v28];
  dispatch_group_enter(v13);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __62__PKRewardsSummaryFetcher_rewardsTierSummariesWithCompletion___block_invoke_2;
  v25[3] = &unk_1E79E1E50;
  v27 = v33;
  v14 = v13;
  v26 = v14;
  [v9 rewardsTierSummaryForTransactionSourceIdentifiers:v10 currencyCode:v12 startDate:v7 endDate:0 completion:v25];
  dispatch_group_enter(v14);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62__PKRewardsSummaryFetcher_rewardsTierSummariesWithCompletion___block_invoke_3;
  v22[3] = &unk_1E79E1E50;
  v24 = v31;
  v15 = v14;
  v23 = v15;
  [v9 rewardsTierSummaryForTransactionSourceIdentifiers:v10 currencyCode:v12 startDate:0 endDate:0 completion:v22];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__PKRewardsSummaryFetcher_rewardsTierSummariesWithCompletion___block_invoke_4;
  v17[3] = &unk_1E79D7848;
  v18 = v4;
  v19 = v35;
  v20 = v33;
  v21 = v31;
  v16 = v4;
  dispatch_group_notify(v15, MEMORY[0x1E69E96A0], v17);

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);

  _Block_object_dispose(v35, 8);
}

void __62__PKRewardsSummaryFetcher_rewardsTierSummariesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __62__PKRewardsSummaryFetcher_rewardsTierSummariesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __62__PKRewardsSummaryFetcher_rewardsTierSummariesWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __62__PKRewardsSummaryFetcher_rewardsTierSummariesWithCompletion___block_invoke_4(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40));
  }

  return result;
}

- (id)_relevantTransactionSourceIdentifiers
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSources];
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
        v10 = [v9 type];
        if (v10)
        {
          if (v10 != 2)
          {
            continue;
          }

          v11 = [v9 accountUser];
          v12 = [v11 isCurrentUser];

          if (!v12)
          {
            continue;
          }
        }

        v13 = [v9 transactionSourceIdentifiers];
        [v3 unionSet:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = [v3 copy];

  return v14;
}

@end