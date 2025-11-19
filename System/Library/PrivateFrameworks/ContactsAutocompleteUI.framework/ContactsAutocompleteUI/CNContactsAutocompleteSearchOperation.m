@interface CNContactsAutocompleteSearchOperation
+ (id)operationWithOwner:(id)a3 text:(id)a4 taskID:(id)a5 autocompleteStore:(id)a6;
- (BOOL)autocompleteFetch:(id)a3 shouldExpectSupplementalResultsForRequest:(id)a4 completionHandler:(id)a5;
- (CNContactsAutocompleteSearchOperation)init;
- (id)_simulatedRecipientResults;
- (id)defaultChildForUnifiedEmailRecipients:(id)a3;
- (id)originContextForResult:(id)a3;
- (id)unifyRecipientsIfNeccesary:(id)a3;
- (id)unifyingIdentifierForRecipient:(id)a3;
- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4;
- (void)autocompleteFetchDidFinish:(id)a3;
- (void)cancel;
- (void)configureForSearchTypes:(unint64_t)a3;
- (void)dealloc;
- (void)main;
@end

@implementation CNContactsAutocompleteSearchOperation

+ (id)operationWithOwner:(id)a3 text:(id)a4 taskID:(id)a5 autocompleteStore:(id)a6
{
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___CNContactsAutocompleteSearchOperation;
  v9 = a6;
  v10 = objc_msgSendSuper2(&v12, sel_operationWithOwner_text_taskID_, a3, a4, a5);
  [v10 setAutocompleteStore:{v9, v12.receiver, v12.super_class}];

  return v10;
}

- (CNContactsAutocompleteSearchOperation)init
{
  v14.receiver = self;
  v14.super_class = CNContactsAutocompleteSearchOperation;
  v2 = [(CNContactsAutocompleteSearchOperation *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69967D0]);
    v4 = [MEMORY[0x1E6996820] defaultProvider];
    v5 = [v3 initWithSchedulerProvider:v4];
    fetchRequestPromise = v2->_fetchRequestPromise;
    v2->_fetchRequestPromise = v5;

    objc_initWeak(&location, v2);
    v7 = MEMORY[0x1E6996668];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__CNContactsAutocompleteSearchOperation_init__block_invoke;
    v11[3] = &unk_1E7CD2890;
    objc_copyWeak(&v12, &location);
    v8 = [v7 tokenWithCancelationBlock:v11];
    fetchRequestToken = v2->_fetchRequestToken;
    v2->_fetchRequestToken = v8;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __45__CNContactsAutocompleteSearchOperation_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained fetchRequestPromise];
  v2 = [v1 future];
  v3 = [v2 isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = [WeakRetained fetchRequestPromise];
    v5 = [v4 future];
    [v5 cancel];
  }
}

- (void)cancel
{
  v3 = [(CNContactsAutocompleteSearchOperation *)self fetchRequestToken];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = CNContactsAutocompleteSearchOperation;
  [(CNContactsAutocompleteSearchOperation *)&v4 cancel];
}

- (void)dealloc
{
  v3 = [(CNContactsAutocompleteSearchOperation *)self fetchRequestToken];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = CNContactsAutocompleteSearchOperation;
  [(CNContactsAutocompleteSearchOperation *)&v4 dealloc];
}

- (void)configureForSearchTypes:(unint64_t)a3
{
  [(CNContactsAutocompleteSearchOperation *)self setIncludeContacts:(a3 >> 1) & 1];
  [(CNContactsAutocompleteSearchOperation *)self setIncludeRecents:(a3 & 5) != 0];
  [(CNContactsAutocompleteSearchOperation *)self setIncludeStewie:(a3 >> 5) & 1];
  [(CNContactsAutocompleteSearchOperation *)self setIncludeServers:(a3 >> 3) & 1];

  [(CNContactsAutocompleteSearchOperation *)self setIncludeSuggestions:(a3 >> 4) & 1];
}

- (void)main
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1B8106000, log, OS_LOG_TYPE_ERROR, "CNAutocompleteFetch Error for task %{public}@: %@", &v3, 0x16u);
}

void __45__CNContactsAutocompleteSearchOperation_main__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) owner];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [v3 taskID];
  [v2 _handleContactsAutocompleteSearch:v3 returnedResults:v4 taskID:v5];

  v8 = [*(a1 + 32) owner];
  v6 = *(a1 + 32);
  v7 = [v6 taskID];
  [v8 _handleContactsAutocompleteSearchFinished:v6 taskID:v7];
}

uint64_t __45__CNContactsAutocompleteSearchOperation_main__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = contactsSearchManagerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B8106000, v2, OS_LOG_TYPE_DEFAULT, "canceling CNAutocompleteFetch for task %{public}@", &v5, 0xCu);
  }

  return [*(a1 + 40) cancel];
}

void __45__CNContactsAutocompleteSearchOperation_main__block_invoke_88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x1E6996820] defaultProvider];
  v4 = [v3 mainThreadScheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__CNContactsAutocompleteSearchOperation_main__block_invoke_2_89;
  v6[3] = &unk_1E7CD1E08;
  v6[4] = WeakRetained;
  v7 = *(a1 + 32);
  v5 = [v4 afterDelay:v6 performBlock:0.0];
}

void __45__CNContactsAutocompleteSearchOperation_main__block_invoke_2_89(uint64_t a1)
{
  v2 = [*(a1 + 32) owner];
  [v2 _handleContactsAutocompleteSearchFinished:*(a1 + 32) taskID:*(a1 + 40)];
}

- (BOOL)autocompleteFetch:(id)a3 shouldExpectSupplementalResultsForRequest:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CNAutocompleteSearchOperation *)self owner];
  v10 = [v9 fetchDelegate];

  if (v10)
  {
    v11 = [v7 searchString];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __119__CNContactsAutocompleteSearchOperation_autocompleteFetch_shouldExpectSupplementalResultsForRequest_completionHandler___block_invoke;
    v14[3] = &unk_1E7CD2628;
    v15 = v8;
    v12 = [v10 getSupplementalGroupsForSearchQuery:v11 completionHandler:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __119__CNContactsAutocompleteSearchOperation_autocompleteFetch_shouldExpectSupplementalResultsForRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v17 = a3;
  v19 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = MEMORY[0x1E6996360];
        v11 = [v9 title];
        v12 = [v9 identifier];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __119__CNContactsAutocompleteSearchOperation_autocompleteFetch_shouldExpectSupplementalResultsForRequest_completionHandler___block_invoke_2;
        v20[3] = &unk_1E7CD28E0;
        v20[4] = v9;
        v13 = [v10 messagesResultWithAddress:0 displayName:v11 nameComponents:0 resultType:1 addressType:0 identifier:v12 contactProvider:0 groupMembersProvider:v20 userInfo:0];

        if (v13)
        {
          [v19 addObject:v13];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v14 = *(a1 + 32);
  v15 = [v19 copy];
  (*(v14 + 16))(v14, v15, v17);
}

id __119__CNContactsAutocompleteSearchOperation_autocompleteFetch_shouldExpectSupplementalResultsForRequest_completionHandler___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [*(a1 + 32) groupMembers];
  v2 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v24;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v7 = [v6 nameComponents];
        v8 = v7;
        if (v7)
        {
          v9 = MEMORY[0x1E6996340];
          v10 = [v7 givenName];
          v11 = [v8 familyName];
          v12 = [v8 nickname];
          v13 = [v8 nameSuffix];
          v14 = [v9 nameComponentsWithFirstName:v10 lastName:v11 nickname:v12 nameSuffix:v13];

          v15 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v8 style:2 options:0];
        }

        else
        {
          v15 = [v6 name];
          v14 = 0;
        }

        v16 = MEMORY[0x1E6996360];
        v17 = [v6 address];
        v18 = [v16 messagesResultWithAddress:v17 displayName:v15 nameComponents:v14 resultType:0 addressType:objc_msgSend(v6 identifier:"addressType") contactProvider:0 groupMembersProvider:0 userInfo:{0, 0}];

        if (v18)
        {
          [v22 addObject:v18];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v3);
  }

  v19 = [v22 copy];

  return v19;
}

- (id)_simulatedRecipientResults
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc_init(CNComposeRecipientOriginContext);
  v5 = [(CNAutocompleteSearchOperation *)self text];
  [(CNComposeRecipientOriginContext *)v4 setSearchTerm:v5];

  [(CNComposeRecipientOriginContext *)v4 setResultType:16];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__CNContactsAutocompleteSearchOperation__simulatedRecipientResults__block_invoke;
  v11[3] = &unk_1E7CD2908;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  v8 = MEMORY[0x1B8CB9350](v11);
  (v8)[2](v8, @"Dan Keen <dkeen@apple.com>");
  (v8)[2](v8, @"Allan Shortlidge <tshortli@apple.com>");
  (v8)[2](v8, @"Michael A La Mode <malamode@apple.com>");
  (v8)[2](v8, @"James Magahern <jmagahern@apple.com>");
  v9 = v6;

  return v6;
}

void __67__CNContactsAutocompleteSearchOperation__simulatedRecipientResults__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CNComposeRecipient alloc] initWithContact:0 address:v3 kind:0];

  [(CNComposeRecipient *)v4 setOriginContext:*(a1 + 32)];
  [*(a1 + 40) addObject:v4];
}

- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (([(CNContactsAutocompleteSearchOperation *)self isCancelled]& 1) == 0)
  {
    v42 = objc_opt_new();
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v38 = v5;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (!v6)
    {
      goto LABEL_41;
    }

    v7 = v6;
    v8 = *v58;
    v39 = *v58;
    while (1)
    {
      v9 = 0;
      v40 = v7;
      do
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v57 + 1) + 8 * v9);
        if ([v10 resultType] == 1)
        {
          v56 = 0;
          v11 = [v10 members:&v56];
          v12 = v56;
          if (v12)
          {
            v13 = contactsSearchManagerLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [(CNContactsAutocompleteSearchOperation *)v63 autocompleteFetch:v12 didReceiveResults:&v64, v13];
            }
          }

          v43 = v12;
          v44 = v11;
          v45 = v10;
          if (v11)
          {
            v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v15 = v11;
            v16 = [v15 countByEnumeratingWithState:&v52 objects:v62 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v53;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v53 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v52 + 1) + 8 * i);
                  v21 = [CNComposeRecipient composeRecipientWithAutocompleteResult:v20];
                  if (v21)
                  {
                    v22 = [(CNContactsAutocompleteSearchOperation *)self originContextForResult:v20];
                    [v21 setOriginContext:v22];

                    [v14 addObject:v21];
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v52 objects:v62 count:16];
              }

              while (v17);
            }

            v10 = v45;
          }

          else
          {
            v14 = 0;
          }

          v24 = [(CNContactsAutocompleteSearchOperation *)self unifyRecipientsIfNeccesary:v14];

          v25 = [v10 displayName];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v26 = v24;
          v27 = [v26 countByEnumeratingWithState:&v48 objects:v61 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v49;
            while (2)
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v49 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = [*(*(&v48 + 1) + 8 * j) compositeName];
                v32 = [v25 isEqualToString:v31];

                if (v32)
                {

                  v25 = 0;
                  goto LABEL_36;
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v48 objects:v61 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }

LABEL_36:
            v10 = v45;
          }

          v23 = [[CNComposeRecipientGroup alloc] initWithChildren:v26 displayString:v25];
          [(CNComposeRecipient *)v23 setAutocompleteResult:v10];

          v8 = v39;
          v7 = v40;
          if (v23)
          {
LABEL_38:
            v33 = [(CNContactsAutocompleteSearchOperation *)self originContextForResult:v10];
            [(CNComposeRecipient *)v23 setOriginContext:v33];

            [v42 addObject:v23];
          }
        }

        else
        {
          v23 = [CNComposeRecipient composeRecipientWithAutocompleteResult:v10];
          if (v23)
          {
            goto LABEL_38;
          }
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (!v7)
      {
LABEL_41:

        v34 = [MEMORY[0x1E6996820] defaultProvider];
        v35 = [v34 mainThreadScheduler];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __77__CNContactsAutocompleteSearchOperation_autocompleteFetch_didReceiveResults___block_invoke;
        v46[3] = &unk_1E7CD1E08;
        v46[4] = self;
        v47 = v42;
        v36 = v42;
        v37 = [v35 afterDelay:v46 performBlock:0.0];

        v5 = v38;
        break;
      }
    }
  }
}

void __77__CNContactsAutocompleteSearchOperation_autocompleteFetch_didReceiveResults___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) owner];
  v2 = *(a1 + 32);
  v3 = [v2 unifyRecipientsIfNeccesary:*(a1 + 40)];
  v4 = [*(a1 + 32) taskID];
  [v5 _handleContactsAutocompleteSearch:v2 returnedResults:v3 taskID:v4];
}

- (id)originContextForResult:(id)a3
{
  v4 = a3;
  v5 = [v4 sourceType] & 2;
  v6 = v5 & 0xFFFFFFFFFFFFFFFELL | [v4 sourceType] & 1;
  if (([v4 sourceType] & 0x48) != 0)
  {
    v7 = v6 | 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 & 0xFFFFFFFFFFFFFFEFLL | (16 * (([v4 sourceType] >> 2) & 1));
  v9 = [v4 sourceType];

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 | 2;
  }

  v11 = objc_alloc_init(CNComposeRecipientOriginContext);
  v12 = [(CNAutocompleteSearchOperation *)self text];
  [(CNComposeRecipientOriginContext *)v11 setSearchTerm:v12];

  [(CNComposeRecipientOriginContext *)v11 setResultType:v10];

  return v11;
}

- (id)unifyRecipientsIfNeccesary:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CNContactsAutocompleteSearchOperation *)self shouldUnifyResults])
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v33 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v40;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v40 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v39 + 1) + 8 * i);
          v12 = [(CNContactsAutocompleteSearchOperation *)self unifyingIdentifierForRecipient:v11, v33];
          if (([v11 isGroup] & 1) == 0 && v12)
          {
            v13 = [v5 objectForKeyedSubscript:v12];
            v14 = v13;
            if (v13)
            {
              [v13 arrayByAddingObject:v11];
            }

            else
            {
              v45 = v11;
              [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
            }
            v15 = ;
            [v5 setObject:v15 forKeyedSubscript:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v8);
    }

    v16 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v6;
    v17 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v35 + 1) + 8 * j);
          if ([v21 isGroup])
          {
            [v16 addObject:v21];
          }

          else
          {
            v22 = [(CNContactsAutocompleteSearchOperation *)self unifyingIdentifierForRecipient:v21];
            v23 = [v5 objectForKeyedSubscript:v22];
            v24 = v23;
            if (v23)
            {
              v25 = v23;
            }

            else
            {
              v43 = v21;
              v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
            }

            v26 = v25;

            v27 = [v26 firstObject];

            if (v21 == v27)
            {
              v28 = [(CNAutocompleteSearchOperation *)self owner];
              v29 = [v28 autocompleteSearchType];

              if (v29)
              {
                [v26 firstObject];
              }

              else
              {
                [(CNContactsAutocompleteSearchOperation *)self defaultChildForUnifiedEmailRecipients:v26];
              }
              v30 = ;
              v31 = [[CNUnifiedComposeRecipient alloc] initWithChildren:v26 defaultChild:v30];
              [v16 addObject:v31];
            }
          }
        }

        v18 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v18);
    }

    v4 = v33;
  }

  else
  {
    v16 = v4;
  }

  return v16;
}

- (id)defaultChildForUnifiedEmailRecipients:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNAutocompleteSearchOperation *)self owner];
  v6 = [v5 autocompleteSearchType];

  if (v6 || [v4 count] <= 1)
  {
    v23 = [v4 firstObject];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = v4;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          v15 = [v14 address];
          [v7 addObject:v15];

          v16 = [v14 address];
          v17 = [v8 objectForKeyedSubscript:v16];

          if (!v17)
          {
            v18 = [v14 address];
            [v8 setObject:v14 forKeyedSubscript:v18];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v11);
    }

    v19 = [(CNContactsAutocompleteSearchOperation *)self fetchContext];
    v20 = [v19 sendingAddress];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v25 = [(CNContactsAutocompleteSearchOperation *)self fetchContext];
      v26 = [v25 otherAddressesAlreadyChosen];
      v22 = [v26 firstObject];
    }

    v4 = v31;
    if ((*(*MEMORY[0x1E6996570] + 16))() && (v27 = [MEMORY[0x1E699AFD0] rangeOfAddressDomainFromAddress:v22], v27 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v29 = [v22 substringWithRange:{v27, v28}];
    }

    else
    {
      v29 = 0;
    }

    v30 = [MEMORY[0x1E695CEF0] bestGuessEmailAddressForAddresses:v7 sendingAddressDomain:v29 alreadyDuetRanked:1];
    v23 = [v8 objectForKeyedSubscript:v30];
    if (!v23)
    {
      v23 = [v9 firstObject];
    }
  }

  return v23;
}

- (id)unifyingIdentifierForRecipient:(id)a3
{
  v3 = [a3 autocompleteResult];
  v4 = [v3 identifier];

  return v4;
}

- (void)autocompleteFetchDidFinish:(id)a3
{
  fetchRequestPromise = self->_fetchRequestPromise;
  v4 = [MEMORY[0x1E695DFB0] null];
  [(CNPromise *)fetchRequestPromise finishWithResult:v4];
}

- (void)autocompleteFetch:(void *)a3 didReceiveResults:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 ef_publicDescription];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&dword_1B8106000, a4, OS_LOG_TYPE_ERROR, "Error fetching members for contact of type CNAutocompleteResultTypeGroup: %{public}@", a1, 0xCu);
}

@end