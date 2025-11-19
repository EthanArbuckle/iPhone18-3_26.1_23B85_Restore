@interface CompletionGroupListing
- (BOOL)deleteHistoryItemAndCheckIfLastInSection:(id)a3 atIndex:(unint64_t)a4;
- (BOOL)deleteSwitchToTabItemAndReturnWhetherSectionIsEmpty:(id)a3 inSection:(unint64_t)a4 atIndex:(unint64_t)a5;
- (BOOL)isEmpty;
- (BOOL)isSufficientlyComputedForDisplay;
- (BOOL)updateWithQuery:(id)a3;
- (CompletionGroup)_groupWithTitle:(void *)a3 identifier:(void *)a4 completions:(uint64_t)a5 maximumCompletions:;
- (CompletionGroupListing)initWithQuery:(id)a3 titleProvider:(id)a4 options:(unint64_t)a5;
- (CompletionGroupTitleProviding)completionGroupTitleProvider;
- (CompletionItem)topHit;
- (NSArray)groups;
- (NSArray)topHits;
- (NSSet)topHitAddresses;
- (id)_bookmarksAndHistoryGroup:(uint64_t)a1;
- (id)_bookmarksAndHistoryGroupHeaderTitle;
- (id)_filteredURLCompletions;
- (id)_groupByAddingCompletions:(void *)a3 toGroup:;
- (id)_groupWithTitle:(void *)a3 identifier:(void *)a4 completions:;
- (id)_parsecResultsGroupFromResults:(void *)a3 withIdentifier:;
- (id)_pencilScribbleGroup;
- (id)_quickWebsiteSearchGroup;
- (id)_searchSuggestionsGroup;
- (id)_suggestedSitesGroup;
- (id)_titleForTabCompletionMatch:(void *)a1;
- (id)_titleForTopHits:(void *)a1;
- (id)_topParsecResultGroup;
- (id)groupAtIndex:(unint64_t)a3;
- (uint64_t)_hasTopHitDuplicateInResults:(void *)a1;
- (uint64_t)_maximumNumberOfSearchSuggestionsToShow;
- (unint64_t)numberOfGroups;
- (void)_bottomParsecResultGroup;
- (void)_buildListIfNeeded;
- (void)_calculatePreviousSearchesWithSearchSuggestionsDictionary:(void *)a3 filteredURLCompletions:;
- (void)_calculationResultGroup;
- (void)_findOnPageGroup;
- (void)_mergeGroup:(void *)a3 toListing:;
- (void)_switchToTabCompletionGroup;
- (void)_updateIconsForResultsIfNeeded:(void *)a1;
- (void)deleteTopHit:(id)a3 atIndex:(unint64_t)a4;
- (void)setBottomParsecResults:(id)a3;
- (void)setCalculationResultItem:(id)a3;
- (void)setFindOnPageCompletionItem:(id)a3;
- (void)setLocalTopHits:(id)a3;
- (void)setParsecTopHits:(id)a3;
- (void)setSearchSuggestions:(id)a3 fromSource:(int64_t)a4;
- (void)setSuggestedSites:(id)a3;
- (void)setTabCompletionMatch:(id)a3;
- (void)setTopParsecResults:(id)a3;
- (void)setURLCompletionMatches:(id)a3;
@end

@implementation CompletionGroupListing

- (CompletionGroupListing)initWithQuery:(id)a3 titleProvider:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v20.receiver = self;
  v20.super_class = CompletionGroupListing;
  v11 = [(CompletionGroupListing *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_query, a3);
    v13 = [(WBSCompletionQuery *)v12->_query queryString];
    v14 = [MEMORY[0x277CCA900] safari_whitespaceAndNewlineCharacterSet];
    v15 = [v13 stringByTrimmingCharactersInSet:v14];
    v12->_showingRecentSearches = [v15 length] == 0;

    v16 = [MEMORY[0x277CBEB18] array];
    displayedParsecResults = v12->_displayedParsecResults;
    v12->_displayedParsecResults = v16;

    *&v12->_awaitingParsec = 16843009;
    objc_storeWeak(&v12->_completionGroupTitleProvider, v10);
    v12->_isForPrivateBrowsing = (v5 & 2) != 0;
    v12->_databaseResultsSufficientForDisplay = v5 & 1;
    v12->_indexOfSearchSuggestionsGroup = 0x7FFFFFFFFFFFFFFFLL;
    v12->_indexOfTopHitsGroup = 0x7FFFFFFFFFFFFFFFLL;
    v12->_indexOfBookmarksAndHistoryGroup = 0x7FFFFFFFFFFFFFFFLL;
    v12->_needsRebuild = 1;
    v18 = v12;
  }

  return v12;
}

- (BOOL)updateWithQuery:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = WBSIsEqual();
  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_query, a3);
    v7 = [(WBSCompletionQuery *)self->_query queryString];
    v8 = [MEMORY[0x277CCA900] safari_whitespaceAndNewlineCharacterSet];
    v9 = [v7 stringByTrimmingCharactersInSet:v8];
    self->_showingRecentSearches = [v9 length] == 0;

    if ([(NSArray *)self->_groupListing count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = self->_groupListing;
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          v14 = 0;
          do
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v16 + 1) + 8 * v14++) setQuery:{v5, v16}];
          }

          while (v12 != v14);
          v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }
    }
  }

  return v6 ^ 1;
}

- (void)setURLCompletionMatches:(id)a3
{
  v6 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [v6 copy];
    URLCompletionMatches = self->_URLCompletionMatches;
    self->_URLCompletionMatches = v4;

    self->_needsRebuild = 1;
  }
}

- (void)setLocalTopHits:(id)a3
{
  v6 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [v6 copy];
    localTopHits = self->_localTopHits;
    self->_localTopHits = v4;

    self->_needsRebuild = 1;
  }
}

- (void)setParsecTopHits:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    p_parsecTopHits = &self->_parsecTopHits;
    v23 = a3;
    v24 = v5;
    v25 = self;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      do
      {
        v10 = 0;
        do
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v26 + 1) + 8 * v10);
          v12 = [MEMORY[0x277D49A08] isSearchEvaluationLoggingEnabled];
          v13 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
          v14 = v13;
          if (v12)
          {
            v15 = v13;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v18 = [v11 originalURLString];
              v19 = [v18 safari_urlHashesOfComponents];
              if (objc_opt_respondsToSelector())
              {
                [v11 query];
              }

              else
              {
                [v11 completedQuery];
              }
              v20 = ;
              *buf = 138543618;
              v31 = v19;
              v32 = 2112;
              v33 = v20;
              _os_log_debug_impl(&dword_215819000, v15, OS_LOG_TYPE_DEBUG, "Parsec TopHit <%{public}@> query:%@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v16 = v14;
            v17 = [v11 originalURLString];
            *buf = 138739971;
            v31 = v17;
            _os_log_impl(&dword_215819000, v16, OS_LOG_TYPE_INFO, "Parsec TopHit %{sensitive}@", buf, 0xCu);
          }

          ++v10;
        }

        while (v8 != v10);
        v21 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
        v8 = v21;
      }

      while (v21);
    }

    objc_storeStrong(p_parsecTopHits, v23);
    [(CompletionGroupListing *)v25 _updateIconsForResultsIfNeeded:v6];
    v25->_needsRebuild = 1;
    v5 = v24;
  }
}

- (void)deleteTopHit:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [(NSArray *)self->_localTopHits mutableCopy];
  if ([(NSArray *)v6 count]> a4)
  {
    [(NSArray *)v6 removeObjectAtIndex:a4];
  }

  self->_topHitRemoved = 1;
  v7 = [(NSArray *)self->_groupListing mutableCopy];
  if ([(NSArray *)v6 count])
  {
    v10 = [(NSArray *)v7 firstObject];
    v11 = [v10 completions];
    v12 = [v11 mutableCopy];

    [v12 removeObjectAtIndex:a4];
    [(NSArray *)v6 count];
    v13 = [CompletionGroupListing _titleForTopHits:?];
    v14 = [(CompletionGroupListing *)self _groupWithTitle:v13 identifier:@"TopHit" completions:v12];

    [(NSArray *)v7 replaceObjectAtIndex:0 withObject:v14];
  }

  else
  {
    [(NSArray *)v7 removeObjectAtIndex:0];
  }

  groupListing = self->_groupListing;
  self->_groupListing = v7;
  v15 = v7;

  localTopHits = self->_localTopHits;
  self->_localTopHits = v6;
}

- (BOOL)deleteHistoryItemAndCheckIfLastInSection:(id)a3 atIndex:(unint64_t)a4
{
  v33 = a4;
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(NSArray *)self->_groupListing mutableCopy];
  v7 = [(NSArray *)self->_URLCompletionMatches mutableCopy];
  v36 = self;
  v34 = v6;
  v8 = [(NSArray *)v6 objectAtIndexedSubscript:self->_indexOfBookmarksAndHistoryGroup];
  v9 = [v8 completions];
  v35 = [v9 mutableCopy];

  v10 = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = v7;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v38;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        v17 = [v16 originalURLString];
        v18 = [v5 originalURLString];
        v19 = [v17 isEqualToString:v18];

        if (v19)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v13);
  }

  [(NSArray *)v11 removeObjectsInArray:v10];
  v20 = v35;
  [v35 removeObjectsInArray:v10];
  v21 = [v35 count];
  v22 = v36;
  indexOfBookmarksAndHistoryGroup = v36->_indexOfBookmarksAndHistoryGroup;
  if (v21)
  {
    v28 = [(NSArray *)v34 objectAtIndexedSubscript:indexOfBookmarksAndHistoryGroup];
    v29 = [v28 completions];
    v30 = [v29 mutableCopy];

    [v30 removeObjectAtIndex:v33];
    v31 = [(CompletionGroupListing *)v36 _bookmarksAndHistoryGroupHeaderTitle];
    v32 = [(CompletionGroupListing *)v36 _groupWithTitle:v31 identifier:@"BookmarksAndHistory" completions:v30];

    v22 = v36;
    [(NSArray *)v34 replaceObjectAtIndex:v36->_indexOfBookmarksAndHistoryGroup withObject:v32];

    v20 = v35;
  }

  else
  {
    [(NSArray *)v34 removeObjectAtIndex:indexOfBookmarksAndHistoryGroup];
  }

  groupListing = v22->_groupListing;
  v22->_groupListing = v34;
  v25 = v34;

  URLCompletionMatches = v22->_URLCompletionMatches;
  v22->_URLCompletionMatches = v11;

  return v21 == 0;
}

- (BOOL)deleteSwitchToTabItemAndReturnWhetherSectionIsEmpty:(id)a3 inSection:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = [(CompletionGroupListing *)self groupAtIndex:a4];
  v10 = [v9 completions];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __96__CompletionGroupListing_deleteSwitchToTabItemAndReturnWhetherSectionIsEmpty_inSection_atIndex___block_invoke;
  v23[3] = &unk_2781DBA68;
  v11 = v8;
  v24 = v11;
  v12 = [v10 safari_filterObjectsUsingBlock:v23];

  v13 = [(NSArray *)self->_groupListing mutableCopy];
  v14 = [v12 count];
  if (v14)
  {
    v17 = [(NSArray *)v13 objectAtIndexedSubscript:a4];
    v18 = [v17 completions];
    v19 = [v18 mutableCopy];

    [v19 removeObjectAtIndex:a5];
    v20 = [(NSArray *)self->_groupListing objectAtIndexedSubscript:a4];
    v21 = [v20 title];
    v22 = [(CompletionGroupListing *)self _groupWithTitle:v21 identifier:@"SwitchToTabGroup" completions:v19];

    [(NSArray *)v13 replaceObjectAtIndex:a4 withObject:v22];
  }

  else
  {
    [(NSArray *)v13 removeObjectAtIndex:a4];
  }

  groupListing = self->_groupListing;
  self->_groupListing = v13;

  return v14 == 0;
}

uint64_t __96__CompletionGroupListing_deleteSwitchToTabItemAndReturnWhetherSectionIsEmpty_inSection_atIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 originalURLString];
  v4 = [*(a1 + 32) originalURLString];
  v5 = [v3 isEqualToString:v4];

  return v5 ^ 1u;
}

- (void)setTabCompletionMatch:(id)a3
{
  v8 = a3;
  v5 = [(WBSBrowserTabCompletionMatch *)self->_tabCompletionMatch tabUUID];
  v6 = [v8 tabUUID];
  v7 = WBSIsEqual();

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_tabCompletionMatch, a3);
    self->_needsRebuild = 1;
  }
}

- (void)setTopParsecResults:(id)a3
{
  v4 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    [(CompletionGroupListing *)v4 setTopParsecResults:&self->super.isa];
  }
}

- (void)setBottomParsecResults:(id)a3
{
  v4 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    [(CompletionGroupListing *)v4 setTopParsecResults:&self->super.isa];
  }
}

- (void)setSearchSuggestions:(id)a3 fromSource:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_searchSuggestions, a3);
    self->_searchSuggestionsSource = a4;
    if (a4 == 2)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v13 + 1) + 8 * v12++) setQuery:{self->_query, v13}];
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }

    self->_needsRebuild = 1;
  }
}

- (void)setSuggestedSites:(id)a3
{
  v6 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [v6 copy];
    suggestedSites = self->_suggestedSites;
    self->_suggestedSites = v4;

    self->_needsRebuild = 1;
  }
}

- (void)setCalculationResultItem:(id)a3
{
  v8 = a3;
  v5 = [(CalculationResultCompletionItem *)self->_calculationResultItem calculationResult];
  v6 = [v8 calculationResult];
  v7 = WBSIsEqual();

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_calculationResultItem, a3);
    self->_needsRebuild = 1;
  }
}

- (void)setFindOnPageCompletionItem:(id)a3
{
  v5 = a3;
  if (![(FindOnPageCompletionItem *)self->_findOnPageCompletionItem isEquivalentTo:?])
  {
    objc_storeStrong(&self->_findOnPageCompletionItem, a3);
    self->_needsRebuild = 1;
  }
}

id __49__CompletionGroupListing__filteredURLCompletions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277D49A08] isLabelPreviousSearchesInCompletionListEnabled])
  {
    v4 = [v3 string];
    v5 = [v4 safari_stringByTrimmingWhitespace];
    v6 = [v5 lowercaseString];

    [*(a1 + 32) setObject:v3 forKeyedSubscript:v6];
  }

  v7 = [v3 string];
  v8 = [v7 safari_stringByTrimmingWhitespace];
  v9 = [v8 lowercaseString];

  return v9;
}

- (BOOL)isSufficientlyComputedForDisplay
{
  if (self->_showingRecentSearches)
  {
    return 1;
  }

  else if (self->_databaseResultsSufficientForDisplay)
  {
    return !self->_awaitingCompletionDatabase;
  }

  else
  {
    v2 = 0;
    if (!self->_awaitingParsec && !self->_awaitingCompletionDatabase)
    {
      return !self->_awaitingTabCompletion;
    }
  }

  return v2;
}

- (CompletionGroup)_groupWithTitle:(void *)a3 identifier:(void *)a4 completions:(uint64_t)a5 maximumCompletions:
{
  v5 = 0;
  if (a1 && a4)
  {
    v10 = a4;
    v11 = a3;
    v12 = a2;
    v5 = [[CompletionGroup alloc] initWithTitle:v12 groupIdentifier:v11 completions:v10 query:*(a1 + 48) maximumNumberOfCompletions:a5];
  }

  return v5;
}

id __52__CompletionGroupListing__bookmarksAndHistoryGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D28CC8];
  v4 = a2;
  v5 = [[v3 alloc] initWithManagedBookmark:v4 userInput:*(a1 + 32) forQueryID:*(a1 + 40)];

  return v5;
}

- (void)_mergeGroup:(void *)a3 toListing:
{
  v11 = a2;
  v5 = a3;
  if (a1 && v11)
  {
    if ([v5 count])
    {
      v6 = [v5 lastObject];
      v7 = [v6 completions];
      v8 = [v11 completions];
      v9 = [v7 arrayByAddingObjectsFromArray:v8];

      v10 = [(CompletionGroupListing *)a1 _groupWithTitle:@"MergedSources" identifier:v9 completions:0 maximumCompletions:?];
      [v5 replaceObjectAtIndex:objc_msgSend(v5 withObject:{"count") - 1, v10}];
    }

    else
    {
      v9 = [v11 completions];
      v10 = [(CompletionGroupListing *)a1 _groupWithTitle:@"MergedSources" identifier:v9 completions:0 maximumCompletions:?];
      [v5 addObject:v10];
    }
  }
}

uint64_t __44__CompletionGroupListing__buildListIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasBeenSearchedBefore])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 string];
    v6 = [*(*(a1 + 32) + 48) queryString];
    v4 = [v5 isEqualToString:v6] ^ 1;
  }

  return v4;
}

void __44__CompletionGroupListing__buildListIfNeeded__block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D49A08] isSearchEvaluationLoggingEnabled])
  {
    v2 = [MEMORY[0x277CCAB68] string];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = a1;
    obj = *(a1 + 32);
    v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v18)
    {
      v17 = *v25;
      do
      {
        v3 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = v3;
          v4 = *(*(&v24 + 1) + 8 * v3);
          v5 = [v4 title];
          [v2 appendFormat:@"%@: ", v5];

          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v6 = [v4 completions];
          v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v21;
            do
            {
              v10 = 0;
              do
              {
                if (*v21 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v20 + 1) + 8 * v10);
                v12 = objc_opt_class();
                if (objc_opt_respondsToSelector())
                {
                  v13 = [v11 uuidString];
                  [v2 appendFormat:@"%@[%@], ", v12, v13];
                }

                else
                {
                  [v2 appendFormat:@"%@[%@], ", v12, &stru_2827BF158];
                }

                ++v10;
              }

              while (v8 != v10);
              v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v8);
          }

          [v2 appendString:@"\n"];
          v3 = v19 + 1;
        }

        while (v19 + 1 != v18);
        v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v18);
    }

    v14 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __44__CompletionGroupListing__buildListIfNeeded__block_invoke_2_cold_1(v15, v14, v2);
    }
  }
}

- (id)groupAtIndex:(unint64_t)a3
{
  if ([(CompletionGroupListing *)self numberOfGroups]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(CompletionGroupListing *)self groups];
    v6 = [v5 objectAtIndexedSubscript:a3];
  }

  return v6;
}

- (NSArray)topHits
{
  v3 = [(NSArray *)self->_parsecTopHits count];
  v4 = 80;
  if (!v3)
  {
    v4 = 88;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (CompletionItem)topHit
{
  v2 = [(CompletionGroupListing *)self topHits];
  v3 = [v2 firstObject];

  return v3;
}

- (BOOL)isEmpty
{
  if ([(NSMutableArray *)self->_displayedParsecResults count]|| [(NSArray *)self->_searchSuggestions count])
  {
    return 0;
  }

  v5 = [(CompletionGroupListing *)self _filteredURLCompletions];
  v3 = [v5 count] == 0;

  return v3;
}

- (unint64_t)numberOfGroups
{
  v2 = [(CompletionGroupListing *)self groups];
  v3 = [v2 count];

  return v3;
}

- (NSSet)topHitAddresses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(CompletionGroupListing *)self topHits];
  v4 = [v3 safari_mapObjectsUsingBlock:&__block_literal_global_64];
  v5 = [v2 setWithArray:v4];

  return v5;
}

id __41__CompletionGroupListing_topHitAddresses__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 originalURLString];
  v3 = [v2 safari_urlStringForCompletionDeduplication];

  return v3;
}

- (CompletionGroupTitleProviding)completionGroupTitleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_completionGroupTitleProvider);

  return WeakRetained;
}

- (void)_updateIconsForResultsIfNeeded:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v9 = v3;
    v4 = [v3 count] > 1;
    v3 = v9;
    if (!v4)
    {
      v5 = [v9 firstObject];
      v6 = [a1 topHit];
      v7 = [v6 sfSearchResultValue];
      if (v5 == v7)
      {
        v8 = 7;
      }

      else
      {
        v8 = 5;
      }

      [v5 safari_setCompletionIconForCompactRow:v8];

      v3 = v9;
    }
  }
}

- (id)_titleForTopHits:(void *)a1
{
  if (a1)
  {
    a1 = _WBSLocalizedString();
  }

  return a1;
}

- (id)_groupWithTitle:(void *)a3 identifier:(void *)a4 completions:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    if ([v9 count])
    {
      a1 = [(CompletionGroupListing *)a1 _groupWithTitle:v7 identifier:v8 completions:v10 maximumCompletions:5];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (id)_bookmarksAndHistoryGroupHeaderTitle
{
  if (a1)
  {
    a1 = _WBSLocalizedString();
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)_maximumNumberOfSearchSuggestionsToShow
{
  if (result)
  {
    v1 = result;
    if (*(result + 37) == 1)
    {
      return *MEMORY[0x277D4A280];
    }

    v2 = *(result + 36) != 1 || *(result + 96) == 0;
    if ([*(result + 192) numberOfMatches])
    {
      return 5;
    }

    v3 = [(CompletionGroupListing *)v1 _filteredURLCompletions];
    if ([v3 count])
    {

      return 5;
    }

    v4 = [*(v1 + 112) count] == 0;

    if (v4 && v2)
    {
      return 10;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

- (id)_filteredURLCompletions
{
  v30[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_9;
  }

  v2 = MEMORY[0x277D4A030];
  v3 = [MEMORY[0x277D4A030] searchParameters];
  if (![v2 includeBookmarksAndHistory:v3] || !*(a1 + 64))
  {

    goto LABEL_9;
  }

  v4 = *(a1 + 37);

  if (v4)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v5 = [MEMORY[0x277D4A030] filterOutUnlikelyMatchesFromMatches:*(a1 + 64) forQuery:*(a1 + 48) rewrittenQuery:*(a1 + 56)];
  v6 = [MEMORY[0x277D4A030] searchParameters];
  v7 = [v6 enableCompletionListHistoryDeduplicationValue];

  if (v7)
  {
    if (*(a1 + 96))
    {
      v30[0] = *(a1 + 96);
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }

    v10 = [MEMORY[0x277D4A030] dedupeSameTitleHistoryResults:*(a1 + 64) withMobile:1 withTophits:*(a1 + 88) withTabs:v8];

    if ([MEMORY[0x277D49A08] isStreamlinedCompletionListEnabled])
    {
      v11 = [MEMORY[0x277D4A030] dedupeSameURLResults:v10 withUniversalSearchResults:*(a1 + 24)];

      v10 = v11;
    }

    v5 = v10;
  }

  if ([MEMORY[0x277D49A08] isStreamlinedCompletionListEnabled])
  {
    v12 = *(a1 + 136);
    v13 = [v12 count];
    if (*(a1 + 37))
    {
      v14 = 10;
    }

    else
    {
      v14 = 5;
    }

    if (v13 < v14)
    {
      v14 = [*(a1 + 136) count];
    }

    v15 = [v12 subarrayWithRange:{0, v14}];
    v16 = [MEMORY[0x277CBEB38] dictionary];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __49__CompletionGroupListing__filteredURLCompletions__block_invoke;
    v28[3] = &unk_2781DBA90;
    v17 = v16;
    v29 = v17;
    v18 = [v15 safari_setByApplyingBlock:v28];
    v19 = [*(a1 + 48) queryString];

    if (v19)
    {
      v20 = [*(a1 + 48) queryString];
      v21 = [v20 safari_stringByTrimmingWhitespace];
      v22 = [v21 lowercaseString];
      v23 = [v18 setByAddingObject:v22];
    }

    v24 = MEMORY[0x277D4A030];
    v25 = [MEMORY[0x277CDB8A8] sharedInstance];
    v26 = [v25 defaultSearchEngineForPrivateBrowsing:*(a1 + 35)];
    v27 = [v24 dedupeResults:v5 withSearchSuggestionStrings:v18 searchProvider:v26];

    [(CompletionGroupListing *)a1 _calculatePreviousSearchesWithSearchSuggestionsDictionary:v17 filteredURLCompletions:v27];
    v5 = v27;
  }

LABEL_10:

  return v5;
}

- (id)_titleForTabCompletionMatch:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 tabGroupTitle];

    if (v5)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = _WBSLocalizedString();
      v8 = [v4 tabGroupTitle];
      a1 = [v6 stringWithFormat:v7, v8];
    }

    else
    {
      a1 = _WBSLocalizedString();
    }
  }

  return a1;
}

- (void)_calculatePreviousSearchesWithSearchSuggestionsDictionary:(void *)a3 filteredURLCompletions:
{
  v50 = *MEMORY[0x277D85DE8];
  v39 = a2;
  v5 = a3;
  v37 = a1;
  if (a1 && [MEMORY[0x277D49A08] isLabelPreviousSearchesInCompletionListEnabled])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = *(a1 + 64);
    v6 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v45;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v45 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v44 + 1) + 8 * i);
          if (([v5 containsObject:v10] & 1) == 0)
          {
            v11 = v5;
            v12 = [MEMORY[0x277CDB8A8] sharedInstance];
            v13 = [v12 defaultSearchEngineForPrivateBrowsing:*(v37 + 35)];
            v14 = MEMORY[0x277CBEBC0];
            v15 = [v10 originalURLString];
            v16 = [v14 URLWithString:v15];
            v17 = [v13 userVisibleQueryFromSearchURL:v16 allowQueryThatLooksLikeURL:1];

            v18 = [v39 objectForKeyedSubscript:v17];
            if (![v18 hasBeenSearchedBefore] || (objc_msgSend(v18, "lastVisitTimeInterval"), v20 = v19, objc_msgSend(v10, "lastVisitTimeInterval"), v20 <= v21))
            {
              [v18 setHasBeenSearchedBefore:1];
              [v10 lastVisitTimeInterval];
              [v18 setLastVisitTimeInterval:?];
            }

            v5 = v11;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v7);
    }

    v22 = +[RecentWebSearchesController sharedController];
    v23 = [v22 recentWebSearchEntries];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v41;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v41 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v40 + 1) + 8 * j);
          v30 = [v29 searchString];
          v31 = [v30 lowercaseString];
          v32 = [v39 objectForKeyedSubscript:v31];

          v33 = [v29 date];
          [v33 timeIntervalSinceReferenceDate];
          v35 = v34;

          if (![v32 hasBeenSearchedBefore] || (objc_msgSend(v32, "lastVisitTimeInterval"), v36 <= v35))
          {
            [v32 setHasBeenSearchedBefore:1];
            [v32 setLastVisitTimeInterval:v35];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v26);
    }
  }
}

- (id)_groupByAddingCompletions:(void *)a3 toGroup:
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [v5 title];
    v8 = [v5 identifier];
    v9 = [v5 completions];
    v10 = [v9 arrayByAddingObjectsFromArray:v6];

    v11 = [v5 maxInitiallyVisibleResults];
    v3 = [(CompletionGroupListing *)v3 _groupWithTitle:v7 identifier:v8 completions:v10 maximumCompletions:v11];
  }

  return v3;
}

- (id)_bookmarksAndHistoryGroup:(uint64_t)a1
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    if (*(a1 + 36) == 1 && *(a1 + 96))
    {
      v24[0] = *(a1 + 96);
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      v7 = [v6 arrayByAddingObjectsFromArray:v5];

      v8 = 6;
      v5 = v7;
    }

    else
    {
      v8 = 5;
    }

    v9 = [*(a1 + 48) queryString];
    v10 = [*(a1 + 48) queryID];
    v11 = [MEMORY[0x277D28CD8] sharedController];
    v12 = [v11 topLevelManagedBookmarkFolder];
    v13 = [v12 bookmarksMatchingQueryString:v9];

    if ([v13 count])
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __52__CompletionGroupListing__bookmarksAndHistoryGroup___block_invoke;
      v21 = &unk_2781DBAB8;
      v22 = v9;
      v23 = v10;
      v14 = [v13 safari_mapAndFilterObjectsUsingBlock:&v18];
      v15 = [v5 arrayByAddingObjectsFromArray:{v14, v18, v19, v20, v21}];

      v5 = v15;
    }

    if ([v5 count])
    {
      v17 = [(CompletionGroupListing *)a1 _bookmarksAndHistoryGroupHeaderTitle];
      a1 = [(CompletionGroupListing *)a1 _groupWithTitle:v17 identifier:@"BookmarksAndHistory" completions:v5 maximumCompletions:v8];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)_switchToTabCompletionGroup
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[12];
    if (v2)
    {
      v4 = [(CompletionGroupListing *)a1 _titleForTabCompletionMatch:v2];
      v9 = v1[12];
      OUTLINED_FUNCTION_2_6();
      v6 = [v5 arrayWithObjects:v9 count:?];
      v7 = OUTLINED_FUNCTION_1_7();
      v1 = [(CompletionGroupListing *)v7 _groupWithTitle:v8 identifier:@"SwitchToTab" completions:v6 maximumCompletions:1];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (id)_suggestedSitesGroup
{
  v1 = a1;
  if (a1)
  {
    if ([a1[19] count])
    {
      v3 = _WBSLocalizedString();
      v4 = OUTLINED_FUNCTION_1_7();
      v1 = [(CompletionGroupListing *)v4 _groupWithTitle:v5 identifier:v6 completions:v7];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (void)_calculationResultGroup
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[22];
    if (v2)
    {
      v3 = [v2 calculationResult];
      v4 = [v3 sectionTitle];
      v12 = v1[22];
      OUTLINED_FUNCTION_2_6();
      v6 = [v5 arrayWithObjects:v12 count:?];
      v7 = OUTLINED_FUNCTION_0_8();
      v1 = [(CompletionGroupListing *)v7 _groupWithTitle:v8 identifier:v9 completions:v10 maximumCompletions:1];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (id)_pencilScribbleGroup
{
  v1 = a1;
  if (a1)
  {
    if (a1[23])
    {
      v5 = a1[23];
      OUTLINED_FUNCTION_2_6();
      v3 = [v2 arrayWithObjects:v5 count:?];
      v1 = [(CompletionGroupListing *)v1 _groupWithTitle:@"PencilScribble" identifier:v3 completions:1 maximumCompletions:?];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (id)_searchSuggestionsGroup
{
  v1 = a1;
  if (a1)
  {
    if ([a1[17] count])
    {
      WeakRetained = objc_loadWeakRetained(v1 + 25);
      v4 = [WeakRetained titleForSearchSuggestionsCompletion];
      [(CompletionGroupListing *)v1 _maximumNumberOfSearchSuggestionsToShow];
      v5 = OUTLINED_FUNCTION_0_8();
      v1 = [(CompletionGroupListing *)v5 _groupWithTitle:v6 identifier:v7 completions:v8 maximumCompletions:v9];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (id)_quickWebsiteSearchGroup
{
  v1 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a1[15])
    {
      v3 = MEMORY[0x277CCACA8];
      v4 = _WBSLocalizedString();
      v5 = [v1[15] searchProvider];
      v6 = [v5 displayName];
      v7 = [v3 stringWithFormat:v4, v6];

      v11[0] = v1[15];
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      v9 = OUTLINED_FUNCTION_1_7();
      v1 = [(CompletionGroupListing *)v9 _groupWithTitle:v10 identifier:@"QuickWebsiteSearch" completions:v8];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (id)_topParsecResultGroup
{
  if (a1)
  {
    v2 = a1;
    a1 = [a1[13] count];
    if (a1)
    {
      if (([(CompletionGroupListing *)v2 _hasTopHitDuplicateInResults:?]& 1) != 0)
      {
        a1 = 0;
      }

      else
      {
        a1 = [(CompletionGroupListing *)v2 _parsecResultsGroupFromResults:@"TopPegasusResults" withIdentifier:?];
      }
    }

    v1 = vars8;
  }

  return a1;
}

- (uint64_t)_hasTopHitDuplicateInResults:(void *)a1
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1 && ([a1 topHits], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5))
  {
    v6 = [a1 topHits];
    v7 = [v6 firstObject];

    v8 = [v7 originalURLString];
    v9 = [v8 length];

    if (v9)
    {
      v10 = MEMORY[0x277CCACE0];
      v11 = [v7 originalURLString];
      v12 = [v10 componentsWithString:v11];
      v13 = [v12 host];

      if ([v13 length])
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v14 = v3;
        v15 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v35;
          v33 = v3;
          while (2)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v35 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v34 + 1) + 8 * i);
              v20 = [v7 userVisibleURLString];
              v21 = [v19 userVisibleURLString];
              v22 = [v20 isEqualToString:v21];

              if ((v22 & 1) == 0)
              {
                v23 = [v19 originalURLString];
                v24 = [v23 rangeOfString:v13];

                if (v24 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  continue;
                }

                if (v24)
                {
                  v25 = MEMORY[0x277CCACE0];
                  v26 = [v19 originalURLString];
                  v27 = [v25 componentsWithString:v26];
                  v28 = [v27 host];
                  v29 = [v28 isEqualToString:v13];

                  if ((v29 & 1) == 0)
                  {
                    continue;
                  }
                }
              }

              v30 = 1;
              v3 = v33;
              goto LABEL_24;
            }

            v16 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
            v30 = 0;
            v3 = v33;
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v30 = 0;
        }

LABEL_24:
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v31 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_215819000, v31, OS_LOG_TYPE_ERROR, "Primary TopHit originalURLString is nil.", buf, 2u);
      }

      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)_parsecResultsGroupFromResults:(void *)a3 withIdentifier:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if ([v5 count])
    {
      v7 = [v5 firstObject];
      v8 = [v7 sectionHeader];
      a1 = [(CompletionGroupListing *)a1 _groupWithTitle:v8 identifier:v6 completions:v5 maximumCompletions:5];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)_bottomParsecResultGroup
{
  if (a1)
  {
    a1 = [(CompletionGroupListing *)a1 _parsecResultsGroupFromResults:@"BottomPegasusResults" withIdentifier:?];
    v1 = vars8;
  }

  return a1;
}

- (void)_findOnPageGroup
{
  v1 = a1;
  if (a1)
  {
    if (a1[24])
    {
      WeakRetained = objc_loadWeakRetained(a1 + 25);
      v3 = [WeakRetained titleForFindOnPageCompletion:v1[24]];
      v11 = v1[24];
      OUTLINED_FUNCTION_2_6();
      v5 = [v4 arrayWithObjects:v11 count:?];
      v6 = OUTLINED_FUNCTION_0_8();
      v1 = [(CompletionGroupListing *)v6 _groupWithTitle:v7 identifier:v8 completions:v9 maximumCompletions:1];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (void)_buildListIfNeeded
{
  v108 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
    if ((!*(a1 + 16) || *(a1 + 8) == 1) && (*(a1 + 34) & 1) == 0)
    {
      if ([MEMORY[0x277D49A08] isSearchEvaluationLoggingEnabled])
      {
        v2 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&dword_215819000, v2, OS_LOG_TYPE_DEBUG, "Rebuilding completion list.", &buf, 2u);
        }
      }

      *(v1 + 144) = 0x7FFFFFFFFFFFFFFFLL;
      *(v1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
      *(v1 + 168) = 0x7FFFFFFFFFFFFFFFLL;
      *(v1 + 8) = 0;
      v3 = [MEMORY[0x277CBEB18] array];
      v4 = [v1 topHits];
      v5 = [(CompletionGroupListing *)v1 _topParsecResultGroup];
      v85 = v5;
      if ([MEMORY[0x277D49A08] isSearchEvaluationLoggingEnabled])
      {
        v6 = [MEMORY[0x277CCAB68] string];
        v7 = [(CompletionGroupListing *)v1 _topParsecResultGroup];
        v8 = [v7 completions];

        v17 = OUTLINED_FUNCTION_4_2(v9, v10, v11, v12, v13, v14, v15, v16, v76, v77, v79, v3, v4, v1, v5, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, 0, 0, 0, 0, 0, 0, 0, 0, buf, *(&buf + 1), v106, v107);
        if (v17)
        {
          v18 = v17;
          v19 = *v99;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v99 != v19)
              {
                objc_enumerationMutation(v8);
              }

              v21 = *(v98 + 8 * i);
              v22 = [v21 uuidString];
              v23 = [v21 url];
              v24 = [v23 absoluteString];
              v78 = [v24 safari_urlHashesOfComponents];
              [v6 appendFormat:@" %@ <%@>, "];
            }

            v18 = OUTLINED_FUNCTION_4_2(v25, v26, v27, v28, v29, v30, v31, v32, v22, v78, v80, v81, v82, v83, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, buf, *(&buf + 1), v106, v107);
          }

          while (v18);
        }

        v33 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v6;
          _os_log_debug_impl(&dword_215819000, v33, OS_LOG_TYPE_DEBUG, "Pegasus' Results in top parsec result group: [%{public}@]", &buf, 0xCu);
        }

        v4 = v82;
        v1 = v83;
        v5 = v85;
        v3 = v81;
      }

      v34 = [(CompletionGroupListing *)v1 _switchToTabCompletionGroup];
      v35 = [(CompletionGroupListing *)v1 _suggestedSitesGroup];
      if ([v4 count])
      {
        [v4 count];
        v39 = [CompletionGroupListing _titleForTopHits:v1];
        v40 = OUTLINED_FUNCTION_1_7();
        v43 = [(CompletionGroupListing *)v40 _groupWithTitle:v41 identifier:v42 completions:v4];

        if (v35)
        {
          v44 = [v35 completions];
          v45 = OUTLINED_FUNCTION_1_7();
          [(CompletionGroupListing *)v45 _groupByAddingCompletions:v46 toGroup:v43];
          v47 = v3;
          v49 = v48 = v4;

          v43 = v49;
          v4 = v48;
          v3 = v47;
        }

        [(CompletionGroupListing *)v1 _mergeGroup:v43 toListing:v3];
        *(v1 + 72) = [v3 count] - 1;
        [(CompletionGroupListing *)v1 _mergeGroup:v5 toListing:v3];
      }

      else
      {
        v36 = [(CompletionGroupListing *)v1 _pencilScribbleGroup];
        v37 = OUTLINED_FUNCTION_1_7();
        [(CompletionGroupListing *)v37 _mergeGroup:v38 toListing:v3];

        [(CompletionGroupListing *)v1 _mergeGroup:v5 toListing:v3];
        [(CompletionGroupListing *)v1 _mergeGroup:v35 toListing:v3];
      }

      v50 = [(CompletionGroupListing *)v1 _calculationResultGroup];
      [(CompletionGroupListing *)v1 _mergeGroup:v50 toListing:v3];
      if (([*(v1 + 96) isLessRelevant] & 1) != 0 || v5)
      {
        *(v1 + 36) = 1;
      }

      else
      {
        v51 = [*(v1 + 80) count];
        *(v1 + 36) = v51 != 0;
        if (!v51)
        {
          [(CompletionGroupListing *)v1 _mergeGroup:v34 toListing:v3];
        }
      }

      v84 = v34;
      v52 = [(CompletionGroupListing *)v1 _quickWebsiteSearchGroup];
      v53 = OUTLINED_FUNCTION_1_7();
      [(CompletionGroupListing *)v53 _mergeGroup:v54 toListing:v3];

      v55 = [(CompletionGroupListing *)v1 _filteredURLCompletions];
      if ([MEMORY[0x277D49A08] isLabelPreviousSearchesInCompletionListEnabled])
      {
        v56 = v3;
        v57 = [(CompletionGroupListing *)v1 _maximumNumberOfSearchSuggestionsToShow];
        v58 = v4;
        if (v57 >= [*(v1 + 136) count])
        {
          v59 = [*(v1 + 136) count];
        }

        else
        {
          v59 = [(CompletionGroupListing *)v1 _maximumNumberOfSearchSuggestionsToShow];
        }

        v60 = v59;
        v61 = [*(v1 + 136) subarrayWithRange:{0, v59}];
        v92 = MEMORY[0x277D85DD0];
        v93 = 3221225472;
        v94 = __44__CompletionGroupListing__buildListIfNeeded__block_invoke;
        v95 = &unk_2781DBAE0;
        v96 = v1;
        v62 = [v61 safari_partionedArrayUsingCondition:&v92];

        v63 = [*(v1 + 136) subarrayWithRange:{v60, objc_msgSend(*(v1 + 136), "count") - v60}];
        v64 = [v62 arrayByAddingObjectsFromArray:v63];
        v65 = *(v1 + 136);
        *(v1 + 136) = v64;

        v4 = v58;
        v3 = v56;
      }

      v66 = [(CompletionGroupListing *)v1 _searchSuggestionsGroup];
      if (v66)
      {
        [v3 addObject:v66];
        *(v1 + 144) = [v3 count] - 1;
      }

      v67 = objc_alloc_init(MEMORY[0x277D49B60]);
      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = __44__CompletionGroupListing__buildListIfNeeded__block_invoke_2;
      v89 = &unk_2781D4C88;
      v68 = v3;
      v90 = v68;
      v91 = v1;
      [v67 setHandler:&v86];
      if (*(v1 + 39) == 1 && *(v1 + 128) <= 1)
      {
        v69 = [v68 copy];
        v70 = *(v1 + 16);
        *(v1 + 16) = v69;
      }

      else
      {
        v71 = [(CompletionGroupListing *)v1 _bottomParsecResultGroup];
        [v68 safari_addObjectUnlessNil:v71];

        if (![v68 count])
        {
          goto LABEL_41;
        }

        v72 = [(CompletionGroupListing *)v1 _bookmarksAndHistoryGroup:v55];
        v70 = v72;
        if (v66)
        {
          if (v72)
          {
            [v68 addObject:v72];
            *(v1 + 168) = [v68 count] - 1;
          }
        }

        v73 = [(CompletionGroupListing *)v1 _findOnPageGroup];
        [v68 safari_addObjectUnlessNil:v73];

        v74 = [v68 copy];
        v75 = *(v1 + 16);
        *(v1 + 16) = v74;
      }

LABEL_41:
    }
  }
}

- (NSArray)groups
{
  [(CompletionGroupListing *)self _buildListIfNeeded];
  v3 = [(NSArray *)self->_groupListing copy];

  return v3;
}

- (void)setTopParsecResults:(id *)a3 .cold.1(void *a1, void **a2, id *a3)
{
  v6 = [a1 copy];
  v7 = *a2;
  *a2 = v6;

  [(CompletionGroupListing *)a3 _updateIconsForResultsIfNeeded:a1];
  [a3[3] addObjectsFromArray:a1];
  OUTLINED_FUNCTION_3_3();
}

void __44__CompletionGroupListing__buildListIfNeeded__block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 40) + 48);
  v5 = a2;
  v6 = [v4 queryString];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a3;
  _os_log_debug_impl(&dword_215819000, v5, OS_LOG_TYPE_DEBUG, "Built Completion List for query %@: %@", &v7, 0x16u);
}

@end