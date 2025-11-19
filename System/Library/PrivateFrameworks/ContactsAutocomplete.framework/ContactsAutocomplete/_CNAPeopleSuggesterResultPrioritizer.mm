@interface _CNAPeopleSuggesterResultPrioritizer
+ (id)bundleIdentifierOfCurrentProcess;
+ (id)makeBundleIdentifierOfCurrentProcess;
+ (id)os_log;
- (BOOL)resultIdentifierIsValidMessagesChatGuid:(id)a3;
- (BOOL)resultMatchesPrefix:(id)a3 inNameComponentsOfResult:(id)a4;
- (_CNAPeopleSuggesterResultPrioritizer)init;
- (id)applyPriorityOrderToResults:(id)a3 fetchRequest:(id)a4 andCompletePriorityResultsPromise:(id)a5;
- (id)partitionCandidatesForRanking:(id)a3 givenPrefixes:(id)a4;
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

- (id)applyPriorityOrderToResults:(id)a3 fetchRequest:(id)a4 andCompletePriorityResultsPromise:(id)a5
{
  v118 = *MEMORY[0x277D85DE8];
  v81 = a3;
  v84 = a4;
  v80 = a5;
  v7 = [MEMORY[0x277CFBED0] defaultProvider];
  [v7 timestamp];
  v9 = v8;

  v10 = CNALoggingContextTriage();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v84 triageIdentifier];
    *buf = 138543362;
    *&buf[4] = v11;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] PeopleSuggester: Will sort", buf, 0xCu);
  }

  v88 = [MEMORY[0x277CBEB40] orderedSet];
  v12 = [v84 searchNames];
  v83 = [(_CNAPeopleSuggesterResultPrioritizer *)self partitionCandidatesForRanking:v81 givenPrefixes:v12];

  v13 = [v83 first];
  v82 = [v83 second];
  v93 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v88, "count")}];
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = v13;
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
        v16 = [v15 value];
        if ([(_CNAPeopleSuggesterResultPrioritizer *)self resultIdentifierIsValidMessagesChatGuid:v15])
        {
          v17 = [v15 identifier];
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
              *&buf[4] = v17;
              *&buf[12] = 2112;
              *&buf[14] = v19;
              _os_log_impl(&dword_2155FE000, v25, OS_LOG_TYPE_DEFAULT, "Error retrieving chat recipients from %@ : %@", buf, 0x16u);
            }

            v20 = 0;
          }

          v24 = 0;
        }

        else
        {
          if ([v16 addressType] == 2)
          {
            v21 = MEMORY[0x277CBDB70];
            v22 = [v16 address];
            v23 = [v21 phoneNumberWithStringValue:v22];

            v24 = [v23 unformattedInternationalStringValue];
          }

          else
          {
            v24 = [v16 address];
          }

          v20 = 0;
          v17 = 0;
        }

        if (v17)
        {
          v26 = v17;
        }

        else
        {
          v26 = v24;
        }

        v27 = v26;
        if (v27)
        {
          [v93 setObject:v15 forKeyedSubscript:v27];
        }

        v28 = objc_alloc(get_PSAutocompleteSuggestionClass());
        v29 = [v15 displayName];
        v30 = [v15 identifier];
        v31 = [v28 initWithChatGuid:v17 chatHandles:v20 displayName:v29 handle:v24 contactIdentifier:v30 resultSourceType:objc_msgSend(v15 autocompleteResult:{"sourceType"), 0}];

        if (v31)
        {
          [v88 addObject:v31];
        }

        else
        {
          v32 = [objc_opt_class() os_log];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v15;
            _os_log_error_impl(&dword_2155FE000, v32, OS_LOG_TYPE_ERROR, "Could not create suggestion from result: %{public}@", buf, 0xCu);
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
    v34 = [v84 triageIdentifier];
    *buf = 138543362;
    *&buf[4] = v34;
    _os_log_impl(&dword_2155FE000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] PeopleSuggester: Will re-rank with PSSuggester", buf, 0xCu);
  }

  v35 = [objc_opt_class() bundleIdentifierOfCurrentProcess];
  v36 = [v84 fetchContext];
  v37 = [v36 sendingAddressAccountIdentifier];

  if ([v84 shouldIncludeGroupResults])
  {
    v38 = [v84 searchString];
  }

  else
  {
    v38 = 0;
  }

  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __115___CNAPeopleSuggesterResultPrioritizer_applyPriorityOrderToResults_fetchRequest_andCompletePriorityResultsPromise___block_invoke_20;
  v99[3] = &unk_2781C4CE0;
  v85 = v35;
  v100 = v85;
  v86 = v37;
  v101 = v86;
  v91 = v38;
  v102 = v91;
  v89 = v88;
  v103 = v89;
  v104 = self;
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
    v46 = [v84 triageIdentifier];
    *buf = 138543362;
    *&buf[4] = v46;
    _os_log_impl(&dword_2155FE000, v45, OS_LOG_TYPE_DEFAULT, "[%{public}@] PeopleSuggester: Will convert to autocomplete results", buf, 0xCu);
  }

  v47 = [MEMORY[0x277CBEB40] orderedSet];
  v48 = [MEMORY[0x277CBEB40] orderedSet];
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
        v54 = [v53 chatGuid];
        v55 = v54;
        if (v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = [v53 handle];
        }

        v57 = v56;

        v58 = [v93 objectForKeyedSubscript:v57];
        v59 = v58;
        if (v58)
        {
          [v58 setSourceType:{objc_msgSend(v53, "resultSourceType") | objc_msgSend(v58, "sourceType")}];
          [v47 addObject:v59];
          if (([v59 sourceType] & 0x10) != 0)
          {
            [v48 addObject:v59];
          }
        }

        else
        {
          v60 = [objc_opt_class() os_log];
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v53;
            _os_log_error_impl(&dword_2155FE000, v60, OS_LOG_TYPE_ERROR, "Suggestion from PS has no identifier; this result may be ranked lower than it should be: %{public}@", buf, 0xCu);
          }
        }
      }

      v50 = [v49 countByEnumeratingWithState:&v95 objects:v113 count:16];
    }

    while (v50);
  }

  v61 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    [_CNAPeopleSuggesterResultPrioritizer applyPriorityOrderToResults:fetchRequest:andCompletePriorityResultsPromise:];
  }

  v62 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    [_CNAPeopleSuggesterResultPrioritizer applyPriorityOrderToResults:fetchRequest:andCompletePriorityResultsPromise:];
  }

  v63 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
  {
    [_CNAPeopleSuggesterResultPrioritizer applyPriorityOrderToResults:fetchRequest:andCompletePriorityResultsPromise:];
  }

  [v47 addObjectsFromArray:obj];
  [v47 addObjectsFromArray:v82];
  v64 = [MEMORY[0x277CBEB18] array];
  v65 = [v47 array];
  v66 = [(_CNAPeopleSuggesterResultPrioritizer *)self partitionStewieResults:v65];

  v67 = [v66 first];
  [v64 addObjectsFromArray:v67];

  v68 = [v66 second];
  [v64 addObjectsFromArray:v68];

  [v80 finishWithResult:v48];
  v69 = [MEMORY[0x277CFBED0] defaultProvider];
  [v69 timestamp];
  v71 = v70;

  v72 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v71 - v9];
  v73 = CNALoggingContextTriage();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v74 = [v84 triageIdentifier];
    v75 = [v64 count];
    v76 = [v64 count];
    v77 = "results";
    *buf = 138544130;
    *&buf[4] = v74;
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

  return v64;
}

- (id)partitionCandidatesForRanking:(id)a3 givenPrefixes:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke;
  v10[3] = &unk_2781C4D30;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [a3 _cn_partition:v10];

  return v8;
}

- (BOOL)resultMatchesPrefix:(id)a3 inNameComponentsOfResult:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 firstName];
    if ([v8 _cn_hasPrefix:v5])
    {
      v9 = 1;
    }

    else
    {
      v10 = [v7 lastName];
      if ([v10 _cn_hasPrefix:v5])
      {
        v9 = 1;
      }

      else
      {
        v11 = [v7 nickname];
        if ([v11 _cn_hasPrefix:v5])
        {
          v9 = 1;
        }

        else
        {
          v12 = [v7 nameSuffix];
          v9 = [v12 _cn_hasPrefix:v5];
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

- (BOOL)resultIdentifierIsValidMessagesChatGuid:(id)a3
{
  v3 = a3;
  if ([v3 resultType] == 1)
  {
    v4 = [v3 identifier];
    if ([v4 containsString:@"iMessage"])
    {
LABEL_5:

LABEL_10:
      v8 = 1;
      goto LABEL_11;
    }

    v5 = [v3 identifier];
    if ([v5 containsString:@"SMS"])
    {

      goto LABEL_5;
    }

    v6 = [v3 identifier];
    v7 = [v6 containsString:@"urn:biz:"];

    if (v7)
    {
      goto LABEL_10;
    }
  }

  if ([v3 resultType] == 1 && (objc_msgSend(v3, "sourceType") & 0x10) != 0)
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
  block[4] = a1;
  if (bundleIdentifierOfCurrentProcess_cn_once_token_20 != -1)
  {
    dispatch_once(&bundleIdentifierOfCurrentProcess_cn_once_token_20, block);
  }

  v2 = bundleIdentifierOfCurrentProcess_cn_once_object_20;

  return v2;
}

+ (id)makeBundleIdentifierOfCurrentProcess
{
  v2 = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 bundleIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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