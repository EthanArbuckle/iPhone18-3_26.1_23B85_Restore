@interface CNContactsAutocompleteSearchOperation
+ (id)operationWithOwner:(id)owner text:(id)text taskID:(id)d autocompleteStore:(id)store;
- (BOOL)autocompleteFetch:(id)fetch shouldExpectSupplementalResultsForRequest:(id)request completionHandler:(id)handler;
- (CNContactsAutocompleteSearchOperation)init;
- (id)_simulatedRecipientResults;
- (id)defaultChildForUnifiedEmailRecipients:(id)recipients;
- (id)originContextForResult:(id)result;
- (id)unifyRecipientsIfNeccesary:(id)neccesary;
- (id)unifyingIdentifierForRecipient:(id)recipient;
- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results;
- (void)autocompleteFetchDidFinish:(id)finish;
- (void)cancel;
- (void)configureForSearchTypes:(unint64_t)types;
- (void)dealloc;
- (void)main;
@end

@implementation CNContactsAutocompleteSearchOperation

+ (id)operationWithOwner:(id)owner text:(id)text taskID:(id)d autocompleteStore:(id)store
{
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___CNContactsAutocompleteSearchOperation;
  storeCopy = store;
  v10 = objc_msgSendSuper2(&v12, sel_operationWithOwner_text_taskID_, owner, text, d);
  [v10 setAutocompleteStore:{storeCopy, v12.receiver, v12.super_class}];

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
    defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
    v5 = [v3 initWithSchedulerProvider:defaultProvider];
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
  fetchRequestToken = [(CNContactsAutocompleteSearchOperation *)self fetchRequestToken];
  [fetchRequestToken cancel];

  v4.receiver = self;
  v4.super_class = CNContactsAutocompleteSearchOperation;
  [(CNContactsAutocompleteSearchOperation *)&v4 cancel];
}

- (void)dealloc
{
  fetchRequestToken = [(CNContactsAutocompleteSearchOperation *)self fetchRequestToken];
  [fetchRequestToken cancel];

  v4.receiver = self;
  v4.super_class = CNContactsAutocompleteSearchOperation;
  [(CNContactsAutocompleteSearchOperation *)&v4 dealloc];
}

- (void)configureForSearchTypes:(unint64_t)types
{
  [(CNContactsAutocompleteSearchOperation *)self setIncludeContacts:(types >> 1) & 1];
  [(CNContactsAutocompleteSearchOperation *)self setIncludeRecents:(types & 5) != 0];
  [(CNContactsAutocompleteSearchOperation *)self setIncludeStewie:(types >> 5) & 1];
  [(CNContactsAutocompleteSearchOperation *)self setIncludeServers:(types >> 3) & 1];

  [(CNContactsAutocompleteSearchOperation *)self setIncludeSuggestions:(types >> 4) & 1];
}

- (void)main
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  selfCopy = self;
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

- (BOOL)autocompleteFetch:(id)fetch shouldExpectSupplementalResultsForRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  owner = [(CNAutocompleteSearchOperation *)self owner];
  fetchDelegate = [owner fetchDelegate];

  if (fetchDelegate)
  {
    searchString = [requestCopy searchString];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __119__CNContactsAutocompleteSearchOperation_autocompleteFetch_shouldExpectSupplementalResultsForRequest_completionHandler___block_invoke;
    v14[3] = &unk_1E7CD2628;
    v15 = handlerCopy;
    v12 = [fetchDelegate getSupplementalGroupsForSearchQuery:searchString completionHandler:v14];
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
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc_init(CNComposeRecipientOriginContext);
  text = [(CNAutocompleteSearchOperation *)self text];
  [(CNComposeRecipientOriginContext *)v4 setSearchTerm:text];

  [(CNComposeRecipientOriginContext *)v4 setResultType:16];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__CNContactsAutocompleteSearchOperation__simulatedRecipientResults__block_invoke;
  v11[3] = &unk_1E7CD2908;
  v12 = v4;
  v6 = array;
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

- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results
{
  v66 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if (([(CNContactsAutocompleteSearchOperation *)self isCancelled]& 1) == 0)
  {
    v42 = objc_opt_new();
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v38 = resultsCopy;
    obj = resultsCopy;
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

          displayName = [v10 displayName];
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

                compositeName = [*(*(&v48 + 1) + 8 * j) compositeName];
                v32 = [displayName isEqualToString:compositeName];

                if (v32)
                {

                  displayName = 0;
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

          v23 = [[CNComposeRecipientGroup alloc] initWithChildren:v26 displayString:displayName];
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

        defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
        mainThreadScheduler = [defaultProvider mainThreadScheduler];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __77__CNContactsAutocompleteSearchOperation_autocompleteFetch_didReceiveResults___block_invoke;
        v46[3] = &unk_1E7CD1E08;
        v46[4] = self;
        v47 = v42;
        v36 = v42;
        v37 = [mainThreadScheduler afterDelay:v46 performBlock:0.0];

        resultsCopy = v38;
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

- (id)originContextForResult:(id)result
{
  resultCopy = result;
  v5 = [resultCopy sourceType] & 2;
  v6 = v5 & 0xFFFFFFFFFFFFFFFELL | [resultCopy sourceType] & 1;
  if (([resultCopy sourceType] & 0x48) != 0)
  {
    v7 = v6 | 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 & 0xFFFFFFFFFFFFFFEFLL | (16 * (([resultCopy sourceType] >> 2) & 1));
  sourceType = [resultCopy sourceType];

  if (sourceType)
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 | 2;
  }

  v11 = objc_alloc_init(CNComposeRecipientOriginContext);
  text = [(CNAutocompleteSearchOperation *)self text];
  [(CNComposeRecipientOriginContext *)v11 setSearchTerm:text];

  [(CNComposeRecipientOriginContext *)v11 setResultType:v10];

  return v11;
}

- (id)unifyRecipientsIfNeccesary:(id)neccesary
{
  v47 = *MEMORY[0x1E69E9840];
  neccesaryCopy = neccesary;
  if ([(CNContactsAutocompleteSearchOperation *)self shouldUnifyResults])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v33 = neccesaryCopy;
    v6 = neccesaryCopy;
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
            v13 = [dictionary objectForKeyedSubscript:v12];
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
            [dictionary setObject:v15 forKeyedSubscript:v12];
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
            v23 = [dictionary objectForKeyedSubscript:v22];
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

            firstObject = [v26 firstObject];

            if (v21 == firstObject)
            {
              owner = [(CNAutocompleteSearchOperation *)self owner];
              autocompleteSearchType = [owner autocompleteSearchType];

              if (autocompleteSearchType)
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

    neccesaryCopy = v33;
  }

  else
  {
    v16 = neccesaryCopy;
  }

  return v16;
}

- (id)defaultChildForUnifiedEmailRecipients:(id)recipients
{
  v37 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  owner = [(CNAutocompleteSearchOperation *)self owner];
  autocompleteSearchType = [owner autocompleteSearchType];

  if (autocompleteSearchType || [recipientsCopy count] <= 1)
  {
    firstObject = [recipientsCopy firstObject];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = recipientsCopy;
    v9 = recipientsCopy;
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
          address = [v14 address];
          [array addObject:address];

          address2 = [v14 address];
          v17 = [v8 objectForKeyedSubscript:address2];

          if (!v17)
          {
            address3 = [v14 address];
            [v8 setObject:v14 forKeyedSubscript:address3];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v11);
    }

    fetchContext = [(CNContactsAutocompleteSearchOperation *)self fetchContext];
    sendingAddress = [fetchContext sendingAddress];
    v21 = sendingAddress;
    if (sendingAddress)
    {
      firstObject2 = sendingAddress;
    }

    else
    {
      fetchContext2 = [(CNContactsAutocompleteSearchOperation *)self fetchContext];
      otherAddressesAlreadyChosen = [fetchContext2 otherAddressesAlreadyChosen];
      firstObject2 = [otherAddressesAlreadyChosen firstObject];
    }

    recipientsCopy = v31;
    if ((*(*MEMORY[0x1E6996570] + 16))() && (v27 = [MEMORY[0x1E699AFD0] rangeOfAddressDomainFromAddress:firstObject2], v27 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v29 = [firstObject2 substringWithRange:{v27, v28}];
    }

    else
    {
      v29 = 0;
    }

    v30 = [MEMORY[0x1E695CEF0] bestGuessEmailAddressForAddresses:array sendingAddressDomain:v29 alreadyDuetRanked:1];
    firstObject = [v8 objectForKeyedSubscript:v30];
    if (!firstObject)
    {
      firstObject = [v9 firstObject];
    }
  }

  return firstObject;
}

- (id)unifyingIdentifierForRecipient:(id)recipient
{
  autocompleteResult = [recipient autocompleteResult];
  identifier = [autocompleteResult identifier];

  return identifier;
}

- (void)autocompleteFetchDidFinish:(id)finish
{
  fetchRequestPromise = self->_fetchRequestPromise;
  null = [MEMORY[0x1E695DFB0] null];
  [(CNPromise *)fetchRequestPromise finishWithResult:null];
}

- (void)autocompleteFetch:(void *)a3 didReceiveResults:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 ef_publicDescription];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&dword_1B8106000, a4, OS_LOG_TYPE_ERROR, "Error fetching members for contact of type CNAutocompleteResultTypeGroup: %{public}@", a1, 0xCu);
}

@end