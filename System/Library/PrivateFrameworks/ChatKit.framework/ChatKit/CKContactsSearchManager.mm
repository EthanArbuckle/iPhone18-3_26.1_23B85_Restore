@interface CKContactsSearchManager
- (BOOL)shouldIncludeGroupInResults:(id)a3;
- (CKContactsSearchManager)init;
- (CKContactsSearchManagerDelegate)delegate;
- (NSCharacterSet)emojiCharacterSet;
- (_NSRange)_rangeForSearchTerm:(id)a3 inTarget:(id)a4 tokenizedByCharacterSet:(id)a5;
- (id)_cullOldResults:(id)a3;
- (id)_filterGroupResults:(id)a3;
- (id)_sortResultsByDate:(id)a3;
- (id)_sortSearchResultsWithCoreRecentsResults:(id)a3 displayNameMatches:(id)a4 participantNameMatches:(id)a5;
- (id)createAutocompelteGroupMembersFromParticipants:(id)a3;
- (id)matchingConversationWithGuid:(id)a3;
- (id)nameGroupSearchResults;
- (id)participantMatchGroupResults;
- (id)participantMatchResultsForSearchTerm:(id)a3;
- (id)zkwGroupSuggestions;
- (void)cancelSearch;
- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4;
- (void)dealloc;
- (void)didSelectRecipient:(id)a3 atIndex:(unint64_t)a4;
- (void)finishedSearchingForAutocompleteResults;
- (void)removeRecipient:(id)a3;
- (void)searchWithText:(id)a3;
@end

@implementation CKContactsSearchManager

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Finished new compose contacts search.", buf, 2u);
    }
  }

  objc_storeWeak(&self->_delegate, 0);
  v5.receiver = self;
  v5.super_class = CKContactsSearchManager;
  [(CKContactsSearchManager *)&v5 dealloc];
}

- (CKContactsSearchManager)init
{
  v11.receiver = self;
  v11.super_class = CKContactsSearchManager;
  v2 = [(CKContactsSearchManager *)&v11 init];
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Starting new compose contacts search.", v10, 2u);
      }
    }

    v4 = [objc_alloc(MEMORY[0x1E69963D0]) initWithAutocompleteSearchType:1];
    searchManager = v2->_searchManager;
    v2->_searchManager = v4;

    v6 = sel_setFetchDelegate_;
    v7 = objc_opt_respondsToSelector();
    v8 = v2->_searchManager;
    if ((v7 & 1) == 0)
    {
      v6 = sel_setSupplementalGroupResultsDelegate_;
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_10:
        [(CNAutocompleteSearchManager *)v2->_searchManager setImplicitGroupCreationThreshold:1];
        [(CNAutocompleteSearchManager *)v2->_searchManager setShouldIncludeGroupResults:1];
        return v2;
      }

      v8 = v2->_searchManager;
    }

    [(CNAutocompleteSearchManager *)v8 performSelector:v6 withObject:v2];
    goto LABEL_10;
  }

  return v2;
}

- (void)searchWithText:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CKContactsSearchManager *)self cancelSearch];
  v5 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [v5 startTimingForKey:@"Total"];

  v6 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [v6 startTimingForKey:@"ContactSearchAutocomplete"];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  searchResults = self->_searchResults;
  self->_searchResults = v7;

  v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v5) = [v9 stewieEnabled];

  if (v5)
  {
    v10 = 55;
  }

  else
  {
    v10 = 23;
  }

  v36 = v4;
  [(CKContactsSearchManager *)self setSearchText:v4];
  v11 = [(CKContactsSearchManager *)self searchManager];
  [v11 setSearchTypes:v10];

  v12 = MEMORY[0x193AF5EC0](@"CNAutocompleteFetchContext", @"Contacts");
  if (v12)
  {
    v34 = objc_alloc_init(v12);
  }

  else
  {
    v34 = 0;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v35 = self;
  obj = [(CKContactsSearchManager *)self enteredRecipients];
  v14 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v42 + 1) + 8 * i);
        v19 = [v18 address];

        if (v19)
        {
          v20 = [v18 address];
          [v13 addObject:v20];
        }

        if ([v18 isGroup])
        {
          v21 = [v18 children];

          if (v21)
          {
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v22 = [v18 children];
            v23 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v39;
              do
              {
                for (j = 0; j != v24; ++j)
                {
                  if (*v39 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v38 + 1) + 8 * j);
                  v28 = [v27 address];

                  if (v28)
                  {
                    v29 = [v27 address];
                    [v13 addObject:v29];
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
              }

              while (v24);
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v15);
  }

  v30 = v34;
  [v34 setOtherAddressesAlreadyChosen:v13];
  if (objc_opt_respondsToSelector())
  {
    [v34 setPredictsBasedOnOutgoingInteraction:{-[CKContactsSearchManager biasForOutgoingInteraction](v35, "biasForOutgoingInteraction")}];
  }

  v31 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:{@"CKAutocompleteTimingKey", v34}];
  [v31 startTimingForKey:@"RemoteSearch"];

  v32 = [(CKContactsSearchManager *)v35 searchManager];
  v33 = [v32 searchForText:v36 withAutocompleteFetchContext:v30 consumer:v35];
  [(CKContactsSearchManager *)v35 setCurrentSearchTaskID:v33];
}

- (void)cancelSearch
{
  [MEMORY[0x1E69A6170] invalidateGlobalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  v3 = [(CKContactsSearchManager *)self currentSearchTaskID];

  if (v3)
  {
    v4 = [(CKContactsSearchManager *)self searchManager];
    v5 = [(CKContactsSearchManager *)self currentSearchTaskID];
    [v4 cancelTaskWithID:v5];

    [(CKContactsSearchManager *)self setCurrentSearchTaskID:0];
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_130);
  }

  [(CKContactsSearchManager *)self setSearchText:0];
}

- (void)didSelectRecipient:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CKContactsSearchManager *)self searchManager];
  [v7 didSelectRecipient:v6 atIndex:a4];
}

- (void)removeRecipient:(id)a3
{
  v4 = a3;
  v5 = [(CKContactsSearchManager *)self searchManager];
  [v5 removeRecipientResult:v4];
}

- (id)_sortSearchResultsWithCoreRecentsResults:(id)a3 displayNameMatches:(id)a4 participantNameMatches:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v31 = a4;
  v30 = a5;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v33;
    do
    {
      v14 = 0;
      v15 = v12;
      v12 += v11;
      do
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v32 + 1) + 8 * v14);
        v17 = [v16 sourceType];
        v18 = [v16 sourceType];
        v19 = [v16 sourceType];
        if ((v18 & 1) == 0 && (v17 & 0x10) == 0 && v19 != 0)
        {
          v12 = v15;
          goto LABEL_16;
        }

        ++v15;
        ++v14;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

LABEL_16:

  v21 = [(CKContactsSearchManager *)self _cullOldResults:v31];
  v22 = v30;
  v23 = [(CKContactsSearchManager *)self _cullOldResults:v30];
  v24 = [(CKContactsSearchManager *)self _sortResultsByDate:v21];
  v25 = [(CKContactsSearchManager *)self _sortResultsByDate:v23];
  [v24 addObjectsFromArray:v25];

  if ([v24 count] >= 9)
  {
    v26 = [v24 subarrayWithRange:{0, 8}];
    v27 = [v26 mutableCopy];

    v24 = v27;
  }

  v28 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v12, objc_msgSend(v24, "count", v30)}];
  [v9 insertObjects:v24 atIndexes:v28];

  return v9;
}

- (id)_sortResultsByDate:(id)a3
{
  v3 = [a3 sortedArrayUsingComparator:&__block_literal_global_117];
  v4 = [v3 mutableCopy];

  return v4;
}

uint64_t __46__CKContactsSearchManager__sortResultsByDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 lastMessageDate];
  v6 = [v4 lastMessageDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_cullOldResults:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 lastMessageDate];

        if (v10)
        {
          v11 = [MEMORY[0x1E695DEE8] currentCalendar];
          v12 = [v9 lastMessageDate];
          v13 = [MEMORY[0x1E695DF00] date];
          v14 = [v11 components:24 fromDate:v12 toDate:v13 options:0];

          if ([v14 month] <= 2)
          {
            [v16 addObject:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v16;
}

- (id)_filterGroupResults:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__CKContactsSearchManager__filterGroupResults___block_invoke;
  v5[3] = &unk_1E72F3B00;
  v5[4] = self;
  v3 = [a3 __imArrayByFilteringWithBlock:v5];

  return v3;
}

uint64_t __47__CKContactsSearchManager__filterGroupResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isMAIDGroupsEnabled] && (v4 = objc_msgSend(v3, "sourceType"), objc_msgSend(v3, "isGroup")) && (v4 & 0x100) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 sourceType];
    v7 = [v3 isGroup] ^ 1;
    if (v6)
    {
      v5 = v7;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (NSCharacterSet)emojiCharacterSet
{
  emojiCharacterSet = self->_emojiCharacterSet;
  if (!emojiCharacterSet)
  {
    v4 = CEMCreateEmojiCharacterSet();
    v5 = self->_emojiCharacterSet;
    self->_emojiCharacterSet = v4;

    emojiCharacterSet = self->_emojiCharacterSet;
  }

  return emojiCharacterSet;
}

- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [v8 stopTimingForKey:@"RemoteSearch"];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Finished remote group search in %@", &v13, 0xCu);
    }
  }

  v11 = [(CKContactsSearchManager *)self _filterGroupResults:v6];
  v12 = [(CKContactsSearchManager *)self searchResults];
  [v12 addObjectsFromArray:v11];
}

- (void)finishedSearchingForAutocompleteResults
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = [(CKContactsSearchManager *)self searchResults];
  v3 = self;
  if ([(CKContactsSearchManager *)self suppressGroupSuggestions])
  {
    v4 = [(CKContactsSearchManager *)self searchResults];
    v5 = [v4 __imArrayByApplyingBlock:&__block_literal_global_123_0];

    v6 = v5;
    v3 = self;
  }

  else
  {
    v6 = v2;
  }

  v27 = v6;
  v25 = [v6 mutableCopy];
  v7 = [(CKContactsSearchManager *)v3 enteredRecipients];
  v8 = [v7 copy];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v8;
  v28 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v28)
  {
    v26 = *v36;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v11 = v27;
        v12 = [v11 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v12)
        {
          v13 = *v32;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v32 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v31 + 1) + 8 * j);
              if (([v15 isGroup] & 1) == 0)
              {
                v16 = [v15 IDSCanonicalAddress];
                v17 = [v10 IDSCanonicalAddress];
                v18 = [v16 isEqualToIgnoringCase:v17];

                if (v18)
                {
                  [v25 removeObject:v15];
                  goto LABEL_20;
                }
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v31 objects:v41 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:
      }

      v28 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v28);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CKContactsSearchManager_finishedSearchingForAutocompleteResults__block_invoke_2;
  block[3] = &unk_1E72EB8D0;
  block[4] = self;
  v19 = v25;
  v30 = v19;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v20 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [v20 stopTimingForKey:@"ContactSearchAutocomplete"];

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
      *buf = 138412290;
      v40 = v22;
      _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Finished searching in %@", buf, 0xCu);
    }
  }
}

id __66__CKContactsSearchManager_finishedSearchingForAutocompleteResults__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isGroup])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

void __66__CKContactsSearchManager_finishedSearchingForAutocompleteResults__block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  [v4 contactsSearchManager:v2 finishedSearchingWithResults:v3];
}

- (_NSRange)_rangeForSearchTerm:(id)a3 inTarget:(id)a4 tokenizedByCharacterSet:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v7 = a4;
  [v7 componentsSeparatedByCharactersInSet:a5];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v34 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v9)
  {
    v11 = v9;
    v28 = v8;
    v29 = 0;
    v12 = *v32;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v16 = [v14 stringByTrimmingCharactersInSet:v15];

        v17 = [v7 rangeOfString:v16];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = v17;
          if (v17 + v18 <= [v7 length])
          {
            v20 = [v7 substringWithRange:{v19, objc_msgSend(v7, "length") - v19}];
            v21 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v22 = [v20 stringByTrimmingCharactersInSet:v21];
            v23 = [v22 rangeOfString:v30 options:393];
            v29 = v24;

            if (v23 != 0x7FFFFFFFFFFFFFFFLL)
            {

              v10 = v23;
              v8 = v28;
              goto LABEL_14;
            }

            v8 = v28;
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:
    v25 = v29;
  }

  else
  {
    v25 = 0;
  }

  v26 = v10;
  v27 = v25;
  result.length = v27;
  result.location = v26;
  return result;
}

- (id)nameGroupSearchResults
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [v2 startTimingForKey:@"ContactSearchAutocomplete - Group Name Search"];

  v37 = [MEMORY[0x1E695DF70] array];
  v43 = [(CKContactsSearchManager *)self searchText];
  v3 = [(CKContactsSearchManager *)self delegate];
  v4 = [v3 conversationCacheForContactsSearchManager:self];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v4;
  v41 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v41)
  {
    v40 = *v45;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v45 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v44 + 1) + 8 * i);
        v7 = [v6 objectForKey:@"CKConversationDisplayNameKey"];
        if (v7 != 0 && v43 != 0)
        {
          v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v9 = [(CKContactsSearchManager *)self _rangeForSearchTerm:v43 inTarget:v7 tokenizedByCharacterSet:v8];

          if (v9 != 0x7FFFFFFFFFFFFFFFLL || ([MEMORY[0x1E696AB08] whitespaceCharacterSet], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "mutableCopy"), v10, -[CKContactsSearchManager emojiCharacterSet](self, "emojiCharacterSet"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "formUnionWithCharacterSet:", v12), v12, v13 = -[CKContactsSearchManager _rangeForSearchTerm:inTarget:tokenizedByCharacterSet:](self, "_rangeForSearchTerm:inTarget:tokenizedByCharacterSet:", v43, v7, v11), v11, v13 != 0x7FFFFFFFFFFFFFFFLL) || (objc_msgSend(MEMORY[0x1E696AB08], "whitespaceCharacterSet"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "stringByTrimmingCharactersInSet:", v14), v15 = objc_claimAutoreleasedReturnValue(), -[CKContactsSearchManager emojiCharacterSet](self, "emojiCharacterSet"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "__ck_containsOnlyCharactersFromSet:", v16), v16, v15, v14, v17) && objc_msgSend(v7, "rangeOfString:options:", v43, 385) != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = [v6 objectForKey:@"CKConversationGUIDKey"];
            v19 = [(CKContactsSearchManager *)self matchingConversationWithGuid:v18];
            v20 = v19;
            if (v19)
            {
              v21 = [v19 chat];
              v22 = [v21 lastFinishedMessageDate];
              v23 = [(CKContactsSearchManager *)self shouldIncludeGroupInResults:v22];

              if (v23)
              {
                v24 = objc_alloc(MEMORY[0x1E69963E0]);
                v38 = [v20 chat];
                v25 = [v38 guid];
                v26 = [v20 displayName];
                v27 = [v20 chat];
                v28 = [v27 participants];
                v29 = [(CKContactsSearchManager *)self createAutocompelteGroupMembersFromParticipants:v28];
                v30 = [v24 initWithIdentifier:v25 title:v26 members:v29];

                [v37 addObject:v30];
              }
            }
          }
        }
      }

      v41 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v41);
  }

  v31 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [v31 stopTimingForKey:@"ContactSearchAutocomplete - Group Name Search"];

  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
      *buf = 138412290;
      v49 = v33;
      _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Finished group name search in %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v34 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [v37 count];
      *buf = 138412802;
      v49 = v43;
      v50 = 2048;
      v51 = v35;
      v52 = 2112;
      v53 = v37;
      _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_INFO, "Group name search for text: %@ found %ld results. Results: %@", buf, 0x20u);
    }
  }

  return v37;
}

- (id)zkwGroupSuggestions
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [v2 startTimingForKey:@"ContactSearchAutocomplete - ZKW Group Search"];

  v28 = [MEMORY[0x1E695DF70] array];
  if ([(CKContactsSearchManager *)self zkwGroupSuggestionsEnabled])
  {
    v3 = [(CKContactsSearchManager *)self searchText];
    v4 = [v3 isEqualToString:&stru_1F04268F8];

    if (v4)
    {
      v5 = [(CKContactsSearchManager *)self delegate];
      v6 = [v5 conversationCacheForContactsSearchManager:self];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = v6;
      v31 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v31)
      {
        v30 = *v34;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v34 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v8 = [*(*(&v33 + 1) + 8 * i) objectForKey:@"CKConversationGUIDKey"];
            v9 = [(CKContactsSearchManager *)self matchingConversationWithGuid:v8];
            v10 = v9;
            if (v9)
            {
              v11 = [v9 chat];
              v12 = [v11 lastFinishedMessageDate];
              v13 = [(CKContactsSearchManager *)self shouldIncludeGroupInResults:v12];

              if (v13)
              {
                v14 = objc_alloc(MEMORY[0x1E69963E0]);
                v15 = [v10 chat];
                v16 = [v15 guid];
                v17 = [v10 displayName];
                v18 = [v10 chat];
                v19 = [v18 participants];
                v20 = [(CKContactsSearchManager *)self createAutocompelteGroupMembersFromParticipants:v19];
                v21 = [v14 initWithIdentifier:v16 title:v17 members:v20];

                [v28 addObject:v21];
              }
            }
          }

          v31 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v31);
      }
    }
  }

  v22 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [v22 stopTimingForKey:@"ContactSearchAutocomplete - ZKW Group Search"];

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
      *buf = 138412290;
      v38 = v24;
      _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Finished ZKW group search in %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v28 count];
      *buf = 134218242;
      v38 = v26;
      v39 = 2112;
      v40 = v28;
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Group ZKW search for found %ld results. Results: %@", buf, 0x16u);
    }
  }

  return v28;
}

- (id)matchingConversationWithGuid:(id)a3
{
  v3 = a3;
  v4 = +[CKConversationList sharedConversationList];
  v5 = [v4 conversationForExistingChatWithGUID:v3];

  return v5;
}

- (BOOL)shouldIncludeGroupInResults:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v5 components:24 fromDate:v4 toDate:v6 options:0];

  LOBYTE(v4) = [v7 month] < 3;
  return v4;
}

- (id)participantMatchGroupResults
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [v3 startTimingForKey:@"ContactSearchAutocomplete - Group Participant Match Group Search"];

  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(CKContactsSearchManager *)self searchText];
  if (v5)
  {
    v6 = [(CKContactsSearchManager *)self participantMatchResultsForSearchTerm:v5];

    v4 = v6;
  }

  v7 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
  [v7 stopTimingForKey:@"ContactSearchAutocomplete - Group Participant Match Group  Search"];

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [MEMORY[0x1E69A6170] globalTimingCollectionForKey:@"CKAutocompleteTimingKey"];
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Finished group participant match search in %@", &v13, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v4 count];
      v13 = 138412802;
      v14 = v5;
      v15 = 2048;
      v16 = v11;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Participant Match for search text: %@ found %ld results. Results: %@", &v13, 0x20u);
    }
  }

  return v4;
}

- (id)participantMatchResultsForSearchTerm:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29 = [MEMORY[0x1E695DF70] array];
  v5 = [(CKContactsSearchManager *)self delegate];
  v33 = self;
  v6 = [v5 conversationCacheForContactsSearchManager:self];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v6;
  v31 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v31)
  {
    v30 = *v40;
    do
    {
      v7 = 0;
      do
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v7;
        v8 = *(*(&v39 + 1) + 8 * v7);
        v9 = [v8 objectForKey:@"CKConversationEntityNamesKey"];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v34 = v9;
        v10 = [v34 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v36;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v36 != v12)
              {
                objc_enumerationMutation(v34);
              }

              if ([*(*(&v35 + 1) + 8 * i) rangeOfString:v4 options:393] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v14 = [v8 objectForKey:@"CKConversationGUIDKey"];
                v15 = [(CKContactsSearchManager *)v33 matchingConversationWithGuid:v14];
                v16 = [v15 chat];
                v17 = [v16 lastFinishedMessageDate];
                v18 = [(CKContactsSearchManager *)v33 shouldIncludeGroupInResults:v17];

                if (v18)
                {
                  v19 = objc_alloc(MEMORY[0x1E69963E0]);
                  v20 = [v15 chat];
                  v21 = [v20 guid];
                  v22 = [v15 displayName];
                  v23 = [v15 chat];
                  v24 = [v23 participants];
                  v25 = [(CKContactsSearchManager *)v33 createAutocompelteGroupMembersFromParticipants:v24];
                  v26 = [v19 initWithIdentifier:v21 title:v22 members:v25];

                  [v29 addObject:v26];
                  goto LABEL_18;
                }
              }
            }

            v11 = [v34 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:

        v7 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v31);
  }

  return v29;
}

- (id)createAutocompelteGroupMembersFromParticipants:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 ID];
        v12 = MEMORY[0x193AF5D40]();

        if (v12)
        {
          v13 = 2;
        }

        else
        {
          v14 = [v10 ID];
          IsEmail = IMStringIsEmail();

          if (IsEmail)
          {
            v13 = 1;
          }

          else
          {
            v13 = 3;
          }
        }

        v16 = objc_opt_new();
        v17 = [v10 firstName];
        [v16 setGivenName:v17];

        v18 = [v10 lastName];
        [v16 setFamilyName:v18];

        v19 = [v10 nickname];
        [v16 setNickname:v19];

        v20 = objc_alloc(MEMORY[0x1E69963E8]);
        v21 = [v10 ID];
        v22 = [v20 initWithNameComponents:v16 address:v21 addressType:v13];

        [v4 addObject:v22];
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  return v4;
}

- (CKContactsSearchManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end