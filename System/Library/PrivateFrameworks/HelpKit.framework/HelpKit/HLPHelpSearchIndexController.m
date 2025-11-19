@interface HLPHelpSearchIndexController
+ (id)_stopwordsForLanguage:(id)a3;
- (NSArray)spotlightSearchResults;
- (id)_fetchAttributesForCSSearchQuery;
- (id)_rankingQueriesForSearchTerm:(id)a3;
- (id)_strippedSearchTermFromSearchTerm:(id)a3;
- (id)_tokenizeSearchTerm:(id)a3;
- (id)getAllIdentifiersFromTree:(id)a3 withMaxDepth:(int)a4;
- (id)hpd_dataUsingCompressionAlgorithm:(int)a3 operation:(int)a4 data:(id)a5;
- (id)mergeDictionary:(id)a3 withDictionary:(id)a4;
- (id)resultsWithSearchText:(id)a3 localeCode:(id)a4 searchTerms:(id *)a5;
- (id)searchTermsForSearchText:(id)a3 localeCode:(id)a4;
- (void)CSSearchForSearchText:(id)a3 completionHandler:(id)a4;
- (void)_hpdResultsFromCSSearchableItems:(id)a3 rankingQueries:(id)a4;
- (void)cancelSpotlightSearch;
- (void)dealloc;
- (void)fetchDataWithDataType:(int64_t)a3 identifier:(id)a4 completionHandler:(id)a5;
- (void)processData:(id)a3 formattedData:(id)a4;
- (void)processFileURLWithCompletionHandler:(id)a3;
- (void)setUseCSSearch:(BOOL)a3;
@end

@implementation HLPHelpSearchIndexController

- (void)dealloc
{
  [(HLPHelpSearchIndexController *)self cancelSpotlightSearch];
  v3.receiver = self;
  v3.super_class = HLPHelpSearchIndexController;
  [(HLPRemoteDataController *)&v3 dealloc];
}

- (void)setUseCSSearch:(BOOL)a3
{
  if (self->_useCSSearch != a3)
  {
    self->_useCSSearch = a3;
    if (a3)
    {
      if (self->_privateSearchableIndex)
      {
        return;
      }

      v4 = [MEMORY[0x277CC3478] defaultSearchableIndex];
      privateSearchableIndex = self->_privateSearchableIndex;
    }

    else
    {
      v4 = 0;
    }

    self->_privateSearchableIndex = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (void)fetchDataWithDataType:(int64_t)a3 identifier:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = +[HLPCommonDefines assetRequestHeaderFields];
  [(HLPRemoteDataController *)self setHeaderFields:v10];

  v11.receiver = self;
  v11.super_class = HLPHelpSearchIndexController;
  [(HLPRemoteDataController *)&v11 fetchDataWithDataType:a3 identifier:v9 completionHandler:v8];
}

- (void)processFileURLWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEA90];
  v6 = [(HLPRemoteDataController *)self URL];
  v7 = [v5 dataWithContentsOfURL:v6];

  if (v7)
  {
    v10 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v10];
    v9 = v10;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  [(HLPHelpSearchIndexController *)self processData:v7 formattedData:v8];
  v4[2](v4, v8 != 0, v9, 0);
}

- (void)processData:(id)a3 formattedData:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    if ([(HLPHelpBookController *)self->_helpBookController isSemanticHTML])
    {
      [(HLPHelpSearchIndexController *)self setSearchIndex:v6];
    }

    else
    {
      v8 = [MEMORY[0x277CBEC10] mutableCopy];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __58__HLPHelpSearchIndexController_processData_formattedData___block_invoke;
      v16[3] = &unk_279706EC0;
      v17 = v8;
      v9 = v8;
      [v6 enumerateKeysAndObjectsUsingBlock:v16];
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v9];
      [(HLPHelpSearchIndexController *)self setSearchIndex:v10];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_initWeak(&location, self);
      v7 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__HLPHelpSearchIndexController_processData_formattedData___block_invoke_3;
      block[3] = &unk_279706F30;
      objc_copyWeak(&v14, &location);
      v12 = v5;
      v13 = self;
      dispatch_async(v7, block);

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

void __58__HLPHelpSearchIndexController_processData_formattedData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HLPHelpSearchIndexController_processData_formattedData___block_invoke_2;
  v9[3] = &unk_279706E98;
  v10 = v7;
  v8 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  [*(a1 + 32) setObject:v8 forKeyedSubscript:v6];
}

void __58__HLPHelpSearchIndexController_processData_formattedData___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = objc_alloc_init(HLPHelpSearchResult);
  [(HLPHelpSearchResult *)v8 setIdentifier:v6];

  v7 = [v5 integerValue];
  [(HLPHelpSearchResult *)v8 setWeight:v7];
  [*(a1 + 32) addObject:v8];
}

void __58__HLPHelpSearchIndexController_processData_formattedData___block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:*(a1 + 32)];
  if (v3)
  {
    v4 = [*(a1 + 40) hpd_decompressedDataUsingAlgorithm:2049 data:v3];

    v5 = v4;
    if (v4)
    {
      v6 = MEMORY[0x277CCAAC8];
      v7 = _allowedClassesForIndexArchive();
      v15 = 0;
      v8 = [v6 unarchivedObjectOfClasses:v7 fromData:v5 error:&v15];
      v9 = v15;
      v4 = [v8 mutableCopy];

      if (v4)
      {
        v10 = [v4 objectForKeyedSubscript:@"CS_INDEXABLE_ITEMS"];
      }

      else
      {
        v11 = HLPLogForCategory(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v9;
          _os_log_impl(&dword_2522BC000, v11, OS_LOG_TYPE_DEFAULT, "Unable to achive search index file. %@", buf, 0xCu);
        }

        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    if ([v10 count])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__HLPHelpSearchIndexController_processData_formattedData___block_invoke_41;
      block[3] = &unk_279706F08;
      block[4] = WeakRetained;
      v14 = v10;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __58__HLPHelpSearchIndexController_processData_formattedData___block_invoke_41(uint64_t a1)
{
  v2 = [*(a1 + 32) privateSearchableIndex];
  [v2 indexSearchableItems:*(a1 + 40) completionHandler:&__block_literal_global_1];
}

void __58__HLPHelpSearchIndexController_processData_formattedData___block_invoke_2_42()
{
  v0 = HLPLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __58__HLPHelpSearchIndexController_processData_formattedData___block_invoke_2_42_cold_1(v0);
  }
}

- (id)searchTermsForSearchText:(id)a3 localeCode:(id)a4
{
  v5 = a3;
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFLocaleCreate(*MEMORY[0x277CBECE8], a4);
  if (!MEMORY[0x25309E860]())
  {
    CFRelease(v7);
    v7 = CFLocaleCopyCurrent();
  }

  v18.length = [(__CFString *)v5 length];
  v18.location = 0;
  v8 = CFStringTokenizerCreate(v6, v5, v18, 4uLL, v7);
  v9 = [MEMORY[0x277CBEBF8] mutableCopy];
  if (CFStringTokenizerAdvanceToNextToken(v8))
  {
    v10 = 0;
    do
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v8);
      v11 = CFStringCreateWithSubstring(v6, v5, CurrentTokenRange);
      if ([(__CFString *)v11 length])
      {
        if ([(__CFString *)v11 isEqualToString:@"-"])
        {
          v12 = [v9 lastObject];
          v13 = [v12 stringByAppendingString:v11];

          [v9 removeLastObject];
          [v9 addObject:v13];

          v10 = 1;
        }

        else if ([(__CFString *)v11 length]!= 1 || ([(__CFString *)v11 isEqualToString:@" "]& 1) == 0)
        {
          if (v10)
          {
            v14 = [v9 lastObject];
            v15 = [v14 stringByAppendingString:v11];

            [v9 removeLastObject];
            [v9 addObject:v15];
          }

          else
          {
            [v9 addObject:v11];
          }

          v10 = 0;
        }
      }

      CFRelease(v11);
    }

    while (CFStringTokenizerAdvanceToNextToken(v8));
  }

  CFRelease(v8);
  CFRelease(v7);

  return v9;
}

- (id)resultsWithSearchText:(id)a3 localeCode:(id)a4 searchTerms:(id *)a5
{
  v52[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__0;
  v50 = __Block_byref_object_dispose__0;
  v51 = [MEMORY[0x277CBEC10] mutableCopy];
  if ([v8 length])
  {
    v10 = MEMORY[0x277CBEB18];
    v11 = [(HLPHelpSearchIndexController *)self searchTermsForSearchText:v8 localeCode:v9];
    v12 = [v10 arrayWithArray:v11];

    if ([(HLPHelpBookController *)self->_helpBookController isSemanticHTML])
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __77__HLPHelpSearchIndexController_resultsWithSearchText_localeCode_searchTerms___block_invoke;
      v45[3] = &unk_279706F58;
      v45[4] = self;
      v45[5] = &v46;
      [v12 enumerateObjectsUsingBlock:v45];
      if ([v47[5] count])
      {
        v13 = [v47[5] keysSortedByValueUsingComparator:&__block_literal_global_55];
        v14 = [MEMORY[0x277CBEBF8] mutableCopy];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __77__HLPHelpSearchIndexController_resultsWithSearchText_localeCode_searchTerms___block_invoke_3;
        v43[3] = &unk_279706DD0;
        v43[4] = self;
        v15 = v14;
        v44 = v15;
        [v13 enumerateObjectsUsingBlock:v43];
        *a5 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
        v16 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v31 = [v8 substringFromIndex:{objc_msgSend(v8, "length") - 1}];
      if ([v31 isEqualToString:@" "])
      {
        v32 = 0;
      }

      else
      {
        v32 = [v12 lastObject];
      }

      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __77__HLPHelpSearchIndexController_resultsWithSearchText_localeCode_searchTerms___block_invoke_4;
      v41[3] = &unk_279706DD0;
      v41[4] = self;
      v17 = v12;
      v42 = v17;
      [v17 enumerateObjectsUsingBlock:v41];
      if (v32)
      {
        v18 = [(HLPHelpSearchIndexController *)self searchIndex];
        v19 = [v18 allKeys];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __77__HLPHelpSearchIndexController_resultsWithSearchText_localeCode_searchTerms___block_invoke_5;
        v38[3] = &unk_279706DD0;
        v39 = v32;
        v40 = v17;
        [v19 enumerateObjectsUsingBlock:v38];
      }

      v20 = [(HLPHelpBookController *)self->_helpBookController copyrightTopicIdentifier];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __77__HLPHelpSearchIndexController_resultsWithSearchText_localeCode_searchTerms___block_invoke_6;
      v35[3] = &unk_279706FC8;
      v35[4] = self;
      v37 = &v46;
      v21 = v20;
      v36 = v21;
      [v17 enumerateObjectsUsingBlock:v35];
      if ([v47[5] count])
      {
        *a5 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
        v22 = [v47[5] allValues];
        v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"matchCount" ascending:0];
        v52[0] = v23;
        v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"weight" ascending:0];
        v52[1] = v24;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
        v26 = [v22 sortedArrayUsingDescriptors:v25];

        v27 = [MEMORY[0x277CBEBF8] mutableCopy];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __77__HLPHelpSearchIndexController_resultsWithSearchText_localeCode_searchTerms___block_invoke_8;
        v33[3] = &unk_279706FF0;
        v33[4] = self;
        v28 = v27;
        v34 = v28;
        [v26 enumerateObjectsUsingBlock:v33];
        v16 = [MEMORY[0x277CBEA60] arrayWithArray:v28];
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v46, 8);

  v29 = *MEMORY[0x277D85DE8];

  return v16;
}

void __77__HLPHelpSearchIndexController_resultsWithSearchText_localeCode_searchTerms___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 length])
  {
    v3 = *(a1 + 32);
    v4 = [v3 searchIndex];
    v5 = [v3 searchTree:v4 forQueryWord:v9 withMaxDepth:10];
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) mergeDictionary:*(*(*(a1 + 40) + 8) + 40) withDictionary:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t __77__HLPHelpSearchIndexController_resultsWithSearchText_localeCode_searchTerms___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 integerValue];
  if (v6 <= [v5 integerValue])
  {
    v8 = [v4 integerValue];
    v7 = v8 < [v5 integerValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __77__HLPHelpSearchIndexController_resultsWithSearchText_localeCode_searchTerms___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 helpBookController];
  v7 = [v5 helpItemForID:v4];

  v6 = v7;
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
    v6 = v7;
  }
}

void __77__HLPHelpSearchIndexController_resultsWithSearchText_localeCode_searchTerms___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) searchIndex];
  v4 = [v3 objectForKeyedSubscript:v5];

  if (!v4)
  {
    [*(a1 + 40) removeObject:v5];
  }
}

void __77__HLPHelpSearchIndexController_resultsWithSearchText_localeCode_searchTerms___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasPrefix:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __77__HLPHelpSearchIndexController_resultsWithSearchText_localeCode_searchTerms___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 searchIndex];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 mutableCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HLPHelpSearchIndexController_resultsWithSearchText_localeCode_searchTerms___block_invoke_7;
  v10[3] = &unk_279706FA0;
  v9 = *(a1 + 40);
  v8 = v9;
  v11 = v9;
  [v7 enumerateObjectsUsingBlock:v10];
}

void __77__HLPHelpSearchIndexController_resultsWithSearchText_localeCode_searchTerms___block_invoke_7(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 identifier];
  v4 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v3];
  v5 = [v9 identifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    [v9 setWeight:-1];
    v7 = v9;
    v8 = -1;
  }

  else
  {
    v7 = v9;
    if (v4)
    {
      [v4 setWeight:{objc_msgSend(v4, "weight") + objc_msgSend(v9, "weight")}];
      [v4 setMatchCount:{objc_msgSend(v4, "matchCount") + 1}];
      goto LABEL_7;
    }

    v8 = 1;
  }

  [v7 setMatchCount:v8];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:v3];
LABEL_7:
}

void __77__HLPHelpSearchIndexController_resultsWithSearchText_localeCode_searchTerms___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 helpBookController];
  v6 = [v4 identifier];

  v8 = [v5 helpItemForID:v6];

  v7 = v8;
  if (v8)
  {
    [*(a1 + 40) addObject:v8];
    v7 = v8;
  }
}

- (id)getAllIdentifiersFromTree:(id)a3 withMaxDepth:(int)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v8 = [v6 objectForKeyedSubscript:@"_"];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectEnumerator];
      v11 = [v10 nextObject];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = (a4 - 1);
        do
        {
          v15 = [(HLPHelpSearchIndexController *)self getAllIdentifiersFromTree:v12 withMaxDepth:v14];
          v16 = [(HLPHelpSearchIndexController *)self mergeDictionary:v13 withDictionary:v15];

          v17 = [v10 nextObject];

          v12 = v17;
          v13 = v16;
        }

        while (v17);
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v19 = [v7 objectForKeyedSubscript:@"$"];
    if (v19)
    {
      v20 = [(HLPHelpSearchIndexController *)self mergeDictionary:v16 withDictionary:v19];

      v16 = v20;
    }

    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)mergeDictionary:(id)a3 withDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __63__HLPHelpSearchIndexController_mergeDictionary_withDictionary___block_invoke;
      v10[3] = &unk_279707018;
      v5 = v5;
      v11 = v5;
      [v7 enumerateKeysAndObjectsUsingBlock:v10];
    }

    else
    {
      v5 = [v6 mutableCopy];
    }
  }

  v8 = v5;

  return v5;
}

void __63__HLPHelpSearchIndexController_mergeDictionary_withDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v12];

  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 objectForKeyedSubscript:v12];
    v9 = [v8 integerValue];

    v10 = [v5 integerValue];
    v11 = [MEMORY[0x277CCABB0] numberWithLong:v10 + v9];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v12];
  }

  else
  {
    [v7 setObject:v5 forKeyedSubscript:v12];
  }
}

+ (id)_stopwordsForLanguage:(id)a3
{
  v4 = a3;
  v5 = v4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HLPHelpSearchIndexController__stopwordsForLanguage___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_stopwordsForLanguage__pred == -1)
  {
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  dispatch_once(&_stopwordsForLanguage__pred, block);
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  v6 = a1;
  objc_sync_enter(v6);
  v7 = [_stopwordsForLanguage__stopwordsCache objectForKeyedSubscript:v5];
  objc_sync_exit(v6);

  if (!v7)
  {
    v8 = MEMORY[0x277CBEB98];
    v9 = [_stopwordsForLanguage__stopwordsDictionary objectForKeyedSubscript:v5];
    v7 = [v8 setWithArray:v9];

    if (![v7 count] && objc_msgSend(v5, "length") >= 3)
    {
      v10 = [v5 substringToIndex:2];
      v11 = MEMORY[0x277CBEB98];
      v12 = [_stopwordsForLanguage__stopwordsDictionary objectForKeyedSubscript:v10];
      v13 = [v11 setWithArray:v12];

      v7 = v13;
    }

    if (v7)
    {
      v14 = v6;
      objc_sync_enter(v14);
      [_stopwordsForLanguage__stopwordsCache setObject:v7 forKeyedSubscript:v5];
      objc_sync_exit(v14);
    }
  }

LABEL_11:

  return v7;
}

uint64_t __54__HLPHelpSearchIndexController__stopwordsForLanguage___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:@"stopwords" ofType:@"plist"];
  v6 = [v2 initWithContentsOfFile:v5];
  v7 = _stopwordsForLanguage__stopwordsDictionary;
  _stopwordsForLanguage__stopwordsDictionary = v6;

  v8 = objc_alloc(MEMORY[0x277CBEB38]);
  _stopwordsForLanguage__stopwordsCache = [v8 initWithCapacity:{objc_msgSend(_stopwordsForLanguage__stopwordsDictionary, "count")}];

  return MEMORY[0x2821F96F8]();
}

- (id)_strippedSearchTermFromSearchTerm:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAAE8] dominantLanguageForString:v4];
  v6 = v5;
  if (v5 && ([v5 isEqualToString:@"und"] & 1) == 0)
  {
    v7 = [objc_opt_class() _stopwordsForLanguage:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(HLPHelpSearchIndexController *)self _tokenizeSearchTerm:v4];
  v9 = [v8 count] - 1;
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __66__HLPHelpSearchIndexController__strippedSearchTermFromSearchTerm___block_invoke;
  v19 = &unk_279707040;
  v20 = v7;
  v21 = v6;
  v22 = v10;
  v23 = v9;
  v11 = v10;
  v12 = v6;
  v13 = v7;
  [v8 enumerateObjectsUsingBlock:&v16];
  v14 = [v11 componentsJoinedByString:{@" ", v16, v17, v18, v19}];

  return v14;
}

uint64_t __66__HLPHelpSearchIndexController__strippedSearchTermFromSearchTerm___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (*(a1 + 56) == a3 || (v5 = [*(a1 + 32) containsObject:v8], v6 = v8, (v5 & 1) == 0) && (!objc_msgSend(*(a1 + 40), "hasPrefix:", @"en") || (v5 = objc_msgSend(v8, "length"), v6 = v8, v5 >= 3)))
  {
    v5 = [*(a1 + 48) addObject:v8];
    v6 = v8;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

- (id)_tokenizeSearchTerm:(id)a3
{
  v3 = a3;
  if (_tokenizeSearchTerm__onceToken != -1)
  {
    [HLPHelpSearchIndexController _tokenizeSearchTerm:];
  }

  v4 = objc_opt_new();
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = [v3 lowercaseString];
  v5 = _tokenizeSearchTerm__doNotSplitList;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__HLPHelpSearchIndexController__tokenizeSearchTerm___block_invoke_2;
  v20[3] = &unk_279707068;
  v22 = &v23;
  v6 = v4;
  v21 = v6;
  [v5 enumerateObjectsUsingBlock:v20];
  v7 = objc_opt_new();
  v8 = v24[5];
  v9 = [v3 length];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __52__HLPHelpSearchIndexController__tokenizeSearchTerm___block_invoke_3;
  v17 = &unk_279707090;
  v10 = v6;
  v18 = v10;
  v11 = v7;
  v19 = v11;
  [v8 enumerateSubstringsInRange:0 options:v9 usingBlock:{1027, &v14}];
  v12 = [v11 copy];

  _Block_object_dispose(&v23, 8);

  return v12;
}

void __52__HLPHelpSearchIndexController__tokenizeSearchTerm___block_invoke()
{
  v0 = _tokenizeSearchTerm__doNotSplitList;
  _tokenizeSearchTerm__doNotSplitList = &unk_28647D1B8;
}

void __52__HLPHelpSearchIndexController__tokenizeSearchTerm___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(*(*(a1 + 40) + 8) + 40) containsString:?])
  {
    v3 = [v7 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
    v4 = [*(*(*(a1 + 40) + 8) + 40) stringByReplacingOccurrencesOfString:v7 withString:v3];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [*(a1 + 32) setValue:v7 forKey:v3];
  }
}

void __52__HLPHelpSearchIndexController__tokenizeSearchTerm___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = [v3 objectForKeyedSubscript:v7];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v7;
  }

  v6 = v5;

  [*(a1 + 40) addObject:v6];
}

- (id)_rankingQueriesForSearchTerm:(id)a3
{
  v28[14] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = objc_opt_new();
  v5 = [(HLPHelpSearchIndexController *)self _strippedSearchTermFromSearchTerm:v4];
  v6 = *MEMORY[0x277CC31A0];
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@*cdwt", *MEMORY[0x277CC31A0], v5];
  v28[0] = v27;
  v7 = *MEMORY[0x277CC2CE8];
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@*cdwt", *MEMORY[0x277CC2CE8], v5];
  v28[1] = v26;
  v8 = *MEMORY[0x277CC2750];
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@*cdwt", *MEMORY[0x277CC2750], v5];
  v28[2] = v25;
  v9 = *MEMORY[0x277CC2760];
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@*cdwt", *MEMORY[0x277CC2760], v5];
  v28[3] = v24;
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@cdwt", v6, v5];
  v28[4] = v22;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@cdwt", v7, v5];
  v28[5] = v21;
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@cdwt", v8, v5];
  v28[6] = v20;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@cdwt", v9, v5];
  v28[7] = v19;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@*cdwt", v7, v4];
  v28[8] = v10;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@*cdwt", v8, v4];
  v28[9] = v11;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@*cdwt", v9, v4];
  v28[10] = v12;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@cdwt", v7, v4];
  v28[11] = v13;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@cdwt", v8, v4];
  v28[12] = v14;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@cdwt", v9, v4];

  v28[13] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:14];
  [v23 addObjectsFromArray:v16];

  v17 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_fetchAttributesForCSSearchQuery
{
  if (_fetchAttributesForCSSearchQuery_onceToken != -1)
  {
    [HLPHelpSearchIndexController _fetchAttributesForCSSearchQuery];
  }

  v3 = _fetchAttributesForCSSearchQuery_attributes;

  return v3;
}

void __64__HLPHelpSearchIndexController__fetchAttributesForCSSearchQuery__block_invoke()
{
  v6[11] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC2BD8];
  v6[0] = *MEMORY[0x277CC3350];
  v6[1] = v0;
  v1 = *MEMORY[0x277CC2CE8];
  v6[2] = *MEMORY[0x277CC2760];
  v6[3] = v1;
  v2 = *MEMORY[0x277CC2E80];
  v6[4] = *MEMORY[0x277CC2750];
  v6[5] = v2;
  v6[6] = @"_kMDItemHelpTags";
  v6[7] = @"_kMDItemHelpIdentifier";
  v6[8] = @"_kMDItemHelpTitle";
  v6[9] = @"_kMDItemHelpSummary";
  v6[10] = @"_kMDItemHelpPath";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:11];
  v4 = _fetchAttributesForCSSearchQuery_attributes;
  _fetchAttributesForCSSearchQuery_attributes = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_hpdResultsFromCSSearchableItems:(id)a3 rankingQueries:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__HLPHelpSearchIndexController__hpdResultsFromCSSearchableItems_rankingQueries___block_invoke;
  v9[3] = &unk_2797070B8;
  v9[4] = self;
  v8 = v7;
  v10 = v8;
  objc_copyWeak(&v11, &location);
  [v6 enumerateObjectsUsingBlock:v9];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

void __80__HLPHelpSearchIndexController__hpdResultsFromCSSearchableItems_rankingQueries___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 attributeSet];
  v4 = [v3 attributeForKey:@"_kMDItemHelpIdentifier"];

  if (v4)
  {
    v5 = [v13 attributeSet];
    v6 = [v5 queryResultRelevance];
    v7 = [v6 integerValue];

    [*(a1 + 32) _relevanceScore:*(a1 + 40) forRankingQueries:v7];
    v9 = v8;
    v10 = objc_alloc_init(HLPHelpSearchResult);
    [(HLPHelpSearchResult *)v10 setIdentifier:v4];
    [(HLPHelpSearchResult *)v10 setRelevanceScore:v9];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v12 = [WeakRetained spotlightSearchScores];
    [v12 addObject:v10];
  }
}

- (NSArray)spotlightSearchResults
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_spotlightSearchScores sortedArrayUsingComparator:&__block_literal_global_106];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(HLPHelpSearchIndexController *)self helpBookController];
        v12 = [v10 identifier];
        v13 = [v11 helpItemForID:v12];

        if (v13)
        {
          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __54__HLPHelpSearchIndexController_spotlightSearchResults__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 relevanceScore];
  v6 = v5;
  [v4 relevanceScore];
  v8 = v7;

  if (v6 < v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (void)cancelSpotlightSearch
{
  spotlightSearchQuery = self->_spotlightSearchQuery;
  if (spotlightSearchQuery)
  {
    [(CSSearchQuery *)spotlightSearchQuery setFoundItemsHandler:0];
    [(CSSearchQuery *)self->_spotlightSearchQuery setCompletionHandler:0];
    [(CSSearchQuery *)self->_spotlightSearchQuery cancel];
    v4 = self->_spotlightSearchQuery;
    self->_spotlightSearchQuery = 0;

    spotlightSearchScores = self->_spotlightSearchScores;

    [(NSMutableArray *)spotlightSearchScores removeAllObjects];
  }
}

- (void)CSSearchForSearchText:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(HLPHelpSearchIndexController *)self cancelSpotlightSearch];
  if (!self->_spotlightSearchScores)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    spotlightSearchScores = self->_spotlightSearchScores;
    self->_spotlightSearchScores = v8;
  }

  v10 = [v6 stringByReplacingOccurrencesOfString:@"\ withString:@"\\\];
  v11 = [v10 stringByReplacingOccurrencesOfString:@" withString:@"\];

  v12 = [(HLPHelpSearchIndexController *)self _strippedSearchTermFromSearchTerm:v11];
  v13 = MEMORY[0x277CCACA8];
  v14 = [(HLPHelpSearchIndexController *)self _csQueryStringForSearchTerm:v12];
  v15 = [v13 stringWithFormat:@"(%@)", v14];

  v16 = [(HLPHelpSearchIndexController *)self _rankingQueriesForSearchTerm:v11];
  v17 = objc_opt_new();
  v18 = [(HLPHelpSearchIndexController *)self _fetchAttributesForCSSearchQuery];
  [v17 setFetchAttributes:v18];

  [v17 setRankingQueries:v16];
  objc_initWeak(&location, self);
  v19 = [objc_alloc(MEMORY[0x277CC3470]) initWithQueryString:v15 queryContext:v17];
  spotlightSearchQuery = self->_spotlightSearchQuery;
  self->_spotlightSearchQuery = v19;

  [(CSSearchQuery *)self->_spotlightSearchQuery setCompletionHandler:v7];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__HLPHelpSearchIndexController_CSSearchForSearchText_completionHandler___block_invoke;
  v22[3] = &unk_279707100;
  objc_copyWeak(&v24, &location);
  v21 = v16;
  v23 = v21;
  [(CSSearchQuery *)self->_spotlightSearchQuery setFoundItemsHandler:v22];
  [(CSSearchQuery *)self->_spotlightSearchQuery start];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __72__HLPHelpSearchIndexController_CSSearchForSearchText_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _hpdResultsFromCSSearchableItems:v3 rankingQueries:*(a1 + 32)];
}

- (id)hpd_dataUsingCompressionAlgorithm:(int)a3 operation:(int)a4 data:(id)a5
{
  v7 = a5;
  if (![v7 length] || (memset(&v16, 0, sizeof(v16)), v8 = compression_stream_init(&v16, a4, a3), v8 == COMPRESSION_STATUS_ERROR))
  {
    v12 = 0;
  }

  else
  {
    v9 = v8;
    v16.src_ptr = [v7 bytes];
    v16.src_size = [v7 length];
    v10 = a4 == 0;
    v11 = malloc_type_malloc(0x1000uLL, 0xC8EB3F6AuLL);
    v12 = v11;
    if (v11)
    {
      v16.dst_ptr = v11;
      v16.dst_size = 4096;
      v13 = objc_opt_new();
      if (v9 == COMPRESSION_STATUS_OK)
      {
        while (1)
        {
          v15 = compression_stream_process(&v16, v10);
          if (v15)
          {
            break;
          }

          if (!v16.dst_size)
          {
            [v13 appendBytes:v12 length:4096];
            v16.dst_ptr = v12;
            v16.dst_size = 4096;
          }
        }

        if (v15 == COMPRESSION_STATUS_ERROR)
        {

          v13 = 0;
        }

        else if (v15 == COMPRESSION_STATUS_END && v16.dst_size != 4096)
        {
          [v13 appendBytes:v12 length:4096 - v16.dst_size];
        }
      }

      free(v12);
      compression_stream_destroy(&v16);
      v12 = [v13 copy];
    }

    else
    {
      compression_stream_destroy(&v16);
    }
  }

  return v12;
}

@end