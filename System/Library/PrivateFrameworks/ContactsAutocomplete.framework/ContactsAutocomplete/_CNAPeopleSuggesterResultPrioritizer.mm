@interface _CNAPeopleSuggesterResultPrioritizer
+ (id)bundleIdentifierOfCurrentProcess;
+ (id)makeBundleIdentifierOfCurrentProcess;
+ (id)os_log;
- (BOOL)resultIdentifierIsValidMessagesChatGuid:(id)guid;
- (BOOL)resultMatchesPrefix:(id)prefix inNameComponentsOfResult:(id)result;
- (_CNAPeopleSuggesterResultPrioritizer)init;
- (id)applyPriorityOrderToResults:(id)results fetchRequest:(id)request andCompletePriorityResultsPromise:(id)promise;
- (id)partitionCandidatesForRanking:(id)ranking givenPrefixes:(id)prefixes;
@end

@implementation _CNAPeopleSuggesterResultPrioritizer

+ (id)os_log
{
  if (os_log_cn_once_token_1 != -1)
  {
    +[_CNAPeopleSuggesterResultPrioritizer os_log];
  }

  v3 = os_log_cn_once_object_1;

  return v3;
}

- (_CNAPeopleSuggesterResultPrioritizer)init
{
  v7.receiver = self;
  v7.super_class = _CNAPeopleSuggesterResultPrioritizer;
  v2 = [(_CNAPeopleSuggesterResultPrioritizer *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CFBE30]) initWithClassificationQuality:0];
    handleStringClassifier = v2->_handleStringClassifier;
    v2->_handleStringClassifier = v3;

    v5 = v2;
  }

  return v2;
}

- (id)applyPriorityOrderToResults:(id)results fetchRequest:(id)request andCompletePriorityResultsPromise:(id)promise
{
  v118 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  requestCopy = request;
  promiseCopy = promise;
  defaultProvider = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider timestamp];
  v9 = v8;

  v10 = CNALoggingContextTriage();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    triageIdentifier = [requestCopy triageIdentifier];
    *buf = 138543362;
    *&buf[4] = triageIdentifier;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] PeopleSuggester: Will sort", buf, 0xCu);
  }

  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  searchNames = [requestCopy searchNames];
  v83 = [(_CNAPeopleSuggesterResultPrioritizer *)self partitionCandidatesForRanking:resultsCopy givenPrefixes:searchNames];

  first = [v83 first];
  second = [v83 second];
  v93 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(orderedSet, "count")}];
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = first;
  v92 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
  if (v92)
  {
    v90 = *v107;
    do
    {
      for (i = 0; i != v92; ++i)
      {
        if (*v107 != v90)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v106 + 1) + 8 * i);
        value = [v15 value];
        if ([(_CNAPeopleSuggesterResultPrioritizer *)self resultIdentifierIsValidMessagesChatGuid:v15])
        {
          identifier = [v15 identifier];
          v105 = 0;
          v18 = [v15 members:&v105];
          v19 = v105;
          if (v18)
          {
            v20 = [v18 _cn_compactMap:&__block_literal_global_18_1];
          }

          else
          {
            v25 = CNALoggingContextDebug();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = identifier;
              *&buf[12] = 2112;
              *&buf[14] = v19;
              _os_log_impl(&dword_2155FE000, v25, OS_LOG_TYPE_DEFAULT, "Error retrieving chat recipients from %@ : %@", buf, 0x16u);
            }

            v20 = 0;
          }

          unformattedInternationalStringValue = 0;
        }

        else
        {
          if ([value addressType] == 2)
          {
            v21 = MEMORY[0x277CBDB70];
            address = [value address];
            v23 = [v21 phoneNumberWithStringValue:address];

            unformattedInternationalStringValue = [v23 unformattedInternationalStringValue];
          }

          else
          {
            unformattedInternationalStringValue = [value address];
          }

          v20 = 0;
          identifier = 0;
        }

        if (identifier)
        {
          v26 = identifier;
        }

        else
        {
          v26 = unformattedInternationalStringValue;
        }

        v27 = v26;
        if (v27)
        {
          [v93 setObject:v15 forKeyedSubscript:v27];
        }

        v28 = objc_alloc(get_PSAutocompleteSuggestionClass());
        displayName = [v15 displayName];
        identifier2 = [v15 identifier];
        v31 = [v28 initWithChatGuid:identifier chatHandles:v20 displayName:displayName handle:unformattedInternationalStringValue contactIdentifier:identifier2 resultSourceType:objc_msgSend(v15 autocompleteResult:{"sourceType"), 0}];

        if (v31)
        {
          [orderedSet addObject:v31];
        }

        else
        {
          os_log = [objc_opt_class() os_log];
          if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v15;
            _os_log_error_impl(&dword_2155FE000, os_log, OS_LOG_TYPE_ERROR, "Could not create suggestion from result: %{public}@", buf, 0xCu);
          }
        }
      }

      v92 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
    }

    while (v92);
  }

  v33 = CNALoggingContextTriage();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    triageIdentifier2 = [requestCopy triageIdentifier];
    *buf = 138543362;
    *&buf[4] = triageIdentifier2;
    _os_log_impl(&dword_2155FE000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] PeopleSuggester: Will re-rank with PSSuggester", buf, 0xCu);
  }

  bundleIdentifierOfCurrentProcess = [objc_opt_class() bundleIdentifierOfCurrentProcess];
  fetchContext = [requestCopy fetchContext];
  sendingAddressAccountIdentifier = [fetchContext sendingAddressAccountIdentifier];

  if ([requestCopy shouldIncludeGroupResults])
  {
    searchString = [requestCopy searchString];
  }

  else
  {
    searchString = 0;
  }

  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __115___CNAPeopleSuggesterResultPrioritizer_applyPriorityOrderToResults_fetchRequest_andCompletePriorityResultsPromise___block_invoke_20;
  v99[3] = &unk_2781C4CE0;
  v85 = bundleIdentifierOfCurrentProcess;
  v100 = v85;
  v86 = sendingAddressAccountIdentifier;
  v101 = v86;
  v91 = searchString;
  v102 = v91;
  v89 = orderedSet;
  v103 = v89;
  selfCopy = self;
  v39 = v99;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v116 = __Block_byref_object_copy__2;
  *&v117 = __Block_byref_object_dispose__2;
  *(&v117 + 1) = 0;
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __CNResultWithQoS_block_invoke;
  v110[3] = &unk_2781C4D78;
  v112 = buf;
  v40 = v39;
  v111 = v40;
  v41 = v110;
  v42 = dispatch_block_create_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0, v41);
  v43 = objc_opt_self();

  v43[2](v43);
  v44 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v45 = CNALoggingContextTriage();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    triageIdentifier3 = [requestCopy triageIdentifier];
    *buf = 138543362;
    *&buf[4] = triageIdentifier3;
    _os_log_impl(&dword_2155FE000, v45, OS_LOG_TYPE_DEFAULT, "[%{public}@] PeopleSuggester: Will convert to autocomplete results", buf, 0xCu);
  }

  orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
  orderedSet3 = [MEMORY[0x277CBEB40] orderedSet];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v49 = v44;
  v50 = [v49 countByEnumeratingWithState:&v95 objects:v113 count:16];
  if (v50)
  {
    v51 = *v96;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v96 != v51)
        {
          objc_enumerationMutation(v49);
        }

        v53 = *(*(&v95 + 1) + 8 * j);
        chatGuid = [v53 chatGuid];
        v55 = chatGuid;
        if (chatGuid)
        {
          handle = chatGuid;
        }

        else
        {
          handle = [v53 handle];
        }

        v57 = handle;

        v58 = [v93 objectForKeyedSubscript:v57];
        v59 = v58;
        if (v58)
        {
          [v58 setSourceType:{objc_msgSend(v53, "resultSourceType") | objc_msgSend(v58, "sourceType")}];
          [orderedSet2 addObject:v59];
          if (([v59 sourceType] & 0x10) != 0)
          {
            [orderedSet3 addObject:v59];
          }
        }

        else
        {
          os_log2 = [objc_opt_class() os_log];
          if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v53;
            _os_log_error_impl(&dword_2155FE000, os_log2, OS_LOG_TYPE_ERROR, "Suggestion from PS has no identifier; this result may be ranked lower than it should be: %{public}@", buf, 0xCu);
          }
        }
      }

      v50 = [v49 countByEnumeratingWithState:&v95 objects:v113 count:16];
    }

    while (v50);
  }

  os_log3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log3, OS_LOG_TYPE_DEBUG))
  {
    [_CNAPeopleSuggesterResultPrioritizer applyPriorityOrderToResults:fetchRequest:andCompletePriorityResultsPromise:];
  }

  os_log4 = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log4, OS_LOG_TYPE_DEBUG))
  {
    [_CNAPeopleSuggesterResultPrioritizer applyPriorityOrderToResults:fetchRequest:andCompletePriorityResultsPromise:];
  }

  os_log5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log5, OS_LOG_TYPE_DEBUG))
  {
    [_CNAPeopleSuggesterResultPrioritizer applyPriorityOrderToResults:fetchRequest:andCompletePriorityResultsPromise:];
  }

  [orderedSet2 addObjectsFromArray:obj];
  [orderedSet2 addObjectsFromArray:second];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [orderedSet2 array];
  v66 = [(_CNAPeopleSuggesterResultPrioritizer *)self partitionStewieResults:array2];

  first2 = [v66 first];
  [array addObjectsFromArray:first2];

  second2 = [v66 second];
  [array addObjectsFromArray:second2];

  [promiseCopy finishWithResult:orderedSet3];
  defaultProvider2 = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider2 timestamp];
  v71 = v70;

  v72 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v71 - v9];
  v73 = CNALoggingContextTriage();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    triageIdentifier4 = [requestCopy triageIdentifier];
    v75 = [array count];
    v76 = [array count];
    v77 = "results";
    *buf = 138544130;
    *&buf[4] = triageIdentifier4;
    *&buf[12] = 2048;
    if (v76 == 1)
    {
      v77 = "result";
    }

    *&buf[14] = v75;
    *&buf[22] = 2080;
    v116 = v77;
    LOWORD(v117) = 2114;
    *(&v117 + 2) = v72;
    _os_log_impl(&dword_2155FE000, v73, OS_LOG_TYPE_DEFAULT, "[%{public}@] PeopleSuggester: Sort complete (%lu %s, %{public}@)", buf, 0x2Au);
  }

  v78 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)partitionCandidatesForRanking:(id)ranking givenPrefixes:(id)prefixes
{
  prefixesCopy = prefixes;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke;
  v10[3] = &unk_2781C4D30;
  v10[4] = self;
  v11 = prefixesCopy;
  v7 = prefixesCopy;
  v8 = [ranking _cn_partition:v10];

  return v8;
}

- (BOOL)resultMatchesPrefix:(id)prefix inNameComponentsOfResult:(id)result
{
  prefixCopy = prefix;
  resultCopy = result;
  v7 = resultCopy;
  if (resultCopy)
  {
    firstName = [resultCopy firstName];
    if ([firstName _cn_hasPrefix:prefixCopy])
    {
      v9 = 1;
    }

    else
    {
      lastName = [v7 lastName];
      if ([lastName _cn_hasPrefix:prefixCopy])
      {
        v9 = 1;
      }

      else
      {
        nickname = [v7 nickname];
        if ([nickname _cn_hasPrefix:prefixCopy])
        {
          v9 = 1;
        }

        else
        {
          nameSuffix = [v7 nameSuffix];
          v9 = [nameSuffix _cn_hasPrefix:prefixCopy];
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)resultIdentifierIsValidMessagesChatGuid:(id)guid
{
  guidCopy = guid;
  if ([guidCopy resultType] == 1)
  {
    identifier = [guidCopy identifier];
    if ([identifier containsString:@"iMessage"])
    {
LABEL_5:

LABEL_10:
      v8 = 1;
      goto LABEL_11;
    }

    identifier2 = [guidCopy identifier];
    if ([identifier2 containsString:@"SMS"])
    {

      goto LABEL_5;
    }

    identifier3 = [guidCopy identifier];
    v7 = [identifier3 containsString:@"urn:biz:"];

    if (v7)
    {
      goto LABEL_10;
    }
  }

  if ([guidCopy resultType] == 1 && (objc_msgSend(guidCopy, "sourceType") & 0x10) != 0)
  {
    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

+ (id)bundleIdentifierOfCurrentProcess
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72___CNAPeopleSuggesterResultPrioritizer_bundleIdentifierOfCurrentProcess__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (bundleIdentifierOfCurrentProcess_cn_once_token_20 != -1)
  {
    dispatch_once(&bundleIdentifierOfCurrentProcess_cn_once_token_20, block);
  }

  v2 = bundleIdentifierOfCurrentProcess_cn_once_object_20;

  return v2;
}

+ (id)makeBundleIdentifierOfCurrentProcess
{
  bundleProxyForCurrentProcess = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [bundleProxyForCurrentProcess bundleIdentifier];
  }

  else
  {
    bundleIdentifier = 0;
  }

  return bundleIdentifier;
}

- (void)applyPriorityOrderToResults:fetchRequest:andCompletePriorityResultsPromise:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_2155FE000, v0, v1, "Final assembly 1. finalResults: %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)applyPriorityOrderToResults:fetchRequest:andCompletePriorityResultsPromise:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_2155FE000, v0, v1, "Final assembly 2. candidatesToRank: %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)applyPriorityOrderToResults:fetchRequest:andCompletePriorityResultsPromise:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_2155FE000, v0, v1, "Final assembly 3. nonCandidates: %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end