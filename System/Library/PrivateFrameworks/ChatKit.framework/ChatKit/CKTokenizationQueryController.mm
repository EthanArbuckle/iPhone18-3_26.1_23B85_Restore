@interface CKTokenizationQueryController
- (BOOL)_hasCategoryTokenStaged;
- (BOOL)shouldShowConversationTokenSuggestionForConversationGUID:(id)d;
- (BOOL)shouldShowFilterTokenSuggestion:(id)suggestion;
- (NSArray)searchTokens;
- (id)_tokenAddressesForSearchableItem:(id)item inConversation:(id)conversation;
- (id)appropriateCategoryTokensForSearchText:(id)text;
- (id)chatGUIDForSearchableItem:(id)item;
- (id)tokenizedQueryResultsForItems:(id)items;
- (void)_prependTokenClarificationOptionsToResults:(id)results;
- (void)searchWithText:(id)text;
@end

@implementation CKTokenizationQueryController

- (void)searchWithText:(id)text
{
  textCopy = text;
  if ([(CKQueryController *)self mode])
  {
    [(CKConversationQueryController *)self searchEnded];
  }

  else
  {
    [(CKConversationQueryController *)self searchSpotlightWithText:textCopy];
  }
}

- (id)chatGUIDForSearchableItem:(id)item
{
  attributeSet = [item attributeSet];
  accountIdentifier = [attributeSet accountIdentifier];

  return accountIdentifier;
}

- (id)tokenizedQueryResultsForItems:(id)items
{
  v76 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
  v56 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v60 = [(CKTokenizationQueryController *)self maxResultsForMode:[(CKQueryController *)self mode]];
  [(CKTokenizationQueryController *)self _prependTokenClarificationOptionsToResults:array];
  currentSearchText = [(CKQueryController *)self currentSearchText];
  v7 = [(CKTokenizationQueryController *)self appropriateCategoryTokensForSearchText:currentSearchText];

  currentSearchText2 = [(CKQueryController *)self currentSearchText];
  v9 = [CKTokenizationDateParser appropriateDateTokensForSearchText:currentSearchText2];

  v10 = [v7 count];
  v54 = v9;
  v11 = [v9 count];
  currentSearchText3 = [(CKQueryController *)self currentSearchText];
  v13 = [currentSearchText3 length];

  v55 = itemsCopy;
  if (v13)
  {
    v53 = v7;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v14 = itemsCopy;
    v15 = [v14 countByEnumeratingWithState:&v69 objects:v75 count:16];
    if (v15)
    {
      v16 = v15;
      v57 = v60 - v10 - v11;
      v58 = *v70;
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v70 != v58)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v69 + 1) + 8 * v17);
        v19 = [(CKTokenizationQueryController *)self chatGUIDForSearchableItem:v18];
        delegate = [(CKQueryController *)self delegate];
        v21 = [delegate queryController:self conversationForChatGUID:v19];

        if (v21 && ([v21 isBlockedByCommunicationLimits] & 1) == 0)
        {
          chat = [v21 chat];
          guid = [chat guid];

          if (([v56 containsObject:guid] & 1) == 0 && -[CKTokenizationQueryController shouldShowConversationTokenSuggestionForConversationGUID:](self, "shouldShowConversationTokenSuggestionForConversationGUID:", guid))
          {
            v24 = [(CKTokenizationQueryController *)self _tokenAddressesForSearchableItem:v18 inConversation:v21];
            v25 = [[CKSearchTokenQueryResult alloc] initWithContentType:0 filterOptions:0 conversation:v21 itemIdentifier:guid tokenAddresses:v24];
            [array addObject:v25];
            [v56 addObject:guid];
          }
        }

        v26 = [array count];

        if (v26 >= v57)
        {
          break;
        }

        if (v16 == ++v17)
        {
          v16 = [v14 countByEnumeratingWithState:&v69 objects:v75 count:16];
          if (v16)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v7 = v53;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v27 = v7;
  v28 = [v27 countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v66;
LABEL_19:
    v31 = 0;
    while (1)
    {
      if (*v66 != v30)
      {
        objc_enumerationMutation(v27);
      }

      v32 = *(*(&v65 + 1) + 8 * v31);
      if ([array count] >= v60)
      {
        break;
      }

      v33 = [CKSearchTokenQueryResult alloc];
      contentType = [v32 contentType];
      filterOptions = [v32 filterOptions];
      itemIdentifier = [v32 itemIdentifier];
      tokenAddresses = [v32 tokenAddresses];
      v38 = [(CKSearchTokenQueryResult *)v33 initWithContentType:contentType filterOptions:filterOptions conversation:0 itemIdentifier:itemIdentifier tokenAddresses:tokenAddresses];

      [array addObject:v38];
      if (v29 == ++v31)
      {
        v29 = [v27 countByEnumeratingWithState:&v65 objects:v74 count:16];
        if (v29)
        {
          goto LABEL_19;
        }

        break;
      }
    }
  }

  v59 = v27;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v39 = v54;
  v40 = [v39 countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v62;
LABEL_27:
    v43 = 0;
    while (1)
    {
      if (*v62 != v42)
      {
        objc_enumerationMutation(v39);
      }

      v44 = *(*(&v61 + 1) + 8 * v43);
      if ([array count] >= v60)
      {
        break;
      }

      v45 = [CKSearchTokenQueryResult alloc];
      contentType2 = [v44 contentType];
      filterOptions2 = [v44 filterOptions];
      itemIdentifier2 = [v44 itemIdentifier];
      tokenAddresses2 = [v44 tokenAddresses];
      v50 = [(CKSearchTokenQueryResult *)v45 initWithContentType:contentType2 filterOptions:filterOptions2 conversation:0 itemIdentifier:itemIdentifier2 tokenAddresses:tokenAddresses2];

      [array addObject:v50];
      if (v41 == ++v43)
      {
        v41 = [v39 countByEnumeratingWithState:&v61 objects:v73 count:16];
        if (v41)
        {
          goto LABEL_27;
        }

        break;
      }
    }
  }

  v51 = [array copy];

  return v51;
}

- (void)_prependTokenClarificationOptionsToResults:(id)results
{
  v32 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  delegate = [(CKQueryController *)self delegate];
  v6 = [delegate searchTokenFiltersForQueryController:self];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v8)
  {
    v10 = 0;
    guid = v7;
    goto LABEL_15;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = *v28;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v27 + 1) + 8 * i);
      if (![v14 contentType])
      {
        v15 = v14;

        ++v11;
        v10 = v15;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v9);

  if (v11 == 1)
  {
    conversation = [v10 conversation];
    isGroupConversation = [conversation isGroupConversation];

    if ((isGroupConversation & 1) == 0 && ([v10 hasFilterOption:2] & 1) == 0)
    {
      conversation2 = [v10 conversation];
      chat = [conversation2 chat];
      guid = [chat guid];

      v21 = [CKSearchTokenQueryResult alloc];
      contentType = [v10 contentType];
      filterOptions = [v10 filterOptions];
      conversation3 = [v10 conversation];
      tokenAddresses = [v10 tokenAddresses];
      v26 = [(CKSearchTokenQueryResult *)v21 initWithContentType:contentType filterOptions:filterOptions conversation:conversation3 itemIdentifier:guid tokenAddresses:tokenAddresses];

      [(CKSearchTokenQueryResult *)v26 addFilterOption:2];
      [(CKSearchTokenQueryResult *)v26 setAssociatedStagedFilter:v10];
      [resultsCopy insertObject:v26 atIndex:0];

LABEL_15:
    }
  }
}

- (id)_tokenAddressesForSearchableItem:(id)item inConversation:(id)conversation
{
  v18[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  conversationCopy = conversation;
  if ([conversationCopy isGroupConversation])
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else if ([conversationCopy isBusinessConversation] && (objc_msgSend(conversationCopy, "businessHandle"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "ID"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    businessHandle = [conversationCopy businessHandle];
    v11 = [businessHandle ID];
    v18[0] = v11;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  }

  else
  {
    attributeSet = [itemCopy attributeSet];
    recipientAddresses = [attributeSet recipientAddresses];
    firstObject = [recipientAddresses firstObject];

    mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
    v16 = [mEMORY[0x1E69A7FD0] fetchCNContactForHandleWithID:firstObject];

    v7 = [CKSpotlightQueryUtilities tokenAddressesForFilteringWithContact:v16];
  }

  return v7;
}

- (id)appropriateCategoryTokensForSearchText:(id)text
{
  v22 = *MEMORY[0x1E69E9840];
  searchSafeText = [text searchSafeText];
  v5 = [searchSafeText length];
  if ([(CKTokenizationQueryController *)self _hasCategoryTokenStaged])
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    searchTokens = [(CKTokenizationQueryController *)self searchTokens];
    v8 = [searchTokens countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(searchTokens);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          itemIdentifier = [v12 itemIdentifier];
          searchSafeText2 = [itemIdentifier searchSafeText];

          if ((!v5 || [searchSafeText2 hasPrefix:searchSafeText]) && -[CKTokenizationQueryController shouldShowFilterTokenSuggestion:](self, "shouldShowFilterTokenSuggestion:", v12))
          {
            [v16 addObject:v12];
          }
        }

        v9 = [searchTokens countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v6 = [v16 copy];
  }

  return v6;
}

- (BOOL)shouldShowFilterTokenSuggestion:(id)suggestion
{
  v22 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  delegate = [(CKQueryController *)self delegate];
  v6 = [delegate searchTokenFiltersForQueryController:self];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        itemIdentifier = [*(*(&v17 + 1) + 8 * i) itemIdentifier];
        itemIdentifier2 = [suggestionCopy itemIdentifier];
        v14 = [itemIdentifier isEqualToString:itemIdentifier2];

        if (v14)
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  return v15;
}

- (BOOL)_hasCategoryTokenStaged
{
  v16 = *MEMORY[0x1E69E9840];
  delegate = [(CKQueryController *)self delegate];
  v4 = [delegate searchTokenFiltersForQueryController:self];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 contentType] && objc_msgSend(v9, "contentType") != 8)
        {
          LOBYTE(v6) = 1;
          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (BOOL)shouldShowConversationTokenSuggestionForConversationGUID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  delegate = [(CKQueryController *)self delegate];
  v6 = [delegate searchTokenFiltersForQueryController:self];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        itemIdentifier = [*(*(&v16 + 1) + 8 * i) itemIdentifier];
        v13 = [dCopy isEqualToString:itemIdentifier];

        if (v13)
        {
          v14 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  return v14;
}

- (NSArray)searchTokens
{
  v30[4] = *MEMORY[0x1E69E9840];
  searchTokens = self->_searchTokens;
  if (!searchTokens)
  {
    v26 = objc_alloc(MEMORY[0x1E695DF70]);
    v4 = [CKSearchTokenFilter alloc];
    v29 = CKFrameworkBundle();
    v28 = [v29 localizedStringForKey:@"SEARCH_LINK_TOKEN" value:&stru_1F04268F8 table:@"ChatKit"];
    v27 = [(CKSearchTokenFilter *)v4 initWithContentType:2 itemIdentifier:v28];
    v30[0] = v27;
    v5 = [CKSearchTokenFilter alloc];
    v25 = CKFrameworkBundle();
    v24 = [v25 localizedStringForKey:@"SEARCH_PHOTO_TOKEN" value:&stru_1F04268F8 table:@"ChatKit"];
    v23 = [(CKSearchTokenFilter *)v5 initWithContentType:3 itemIdentifier:v24];
    v30[1] = v23;
    v6 = [CKSearchTokenFilter alloc];
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"SEARCH_LOCATION_TOKEN" value:&stru_1F04268F8 table:@"ChatKit"];
    v9 = [(CKSearchTokenFilter *)v6 initWithContentType:4 itemIdentifier:v8];
    v30[2] = v9;
    v10 = [CKSearchTokenFilter alloc];
    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"SEARCH_DOCUMENT_TOKEN" value:&stru_1F04268F8 table:@"ChatKit"];
    v13 = [(CKSearchTokenFilter *)v10 initWithContentType:6 itemIdentifier:v12];
    v30[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    v15 = [v26 initWithArray:v14];

    if (+[CKSpotlightQueryUtilities shouldDisplayWalletSearchController])
    {
      v16 = [CKSearchTokenFilter alloc];
      v17 = CKFrameworkBundle();
      v18 = [v17 localizedStringForKey:@"SEARCH_WALLET_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
      v19 = [(CKSearchTokenFilter *)v16 initWithContentType:5 itemIdentifier:v18];
      [v15 addObject:v19];
    }

    v20 = [v15 copy];
    v21 = self->_searchTokens;
    self->_searchTokens = v20;

    searchTokens = self->_searchTokens;
  }

  return searchTokens;
}

@end