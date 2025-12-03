@interface CKSearchTokenFilter
+ (id)_conditionalForHandles:(id)handles usingKey:(id)key;
+ (id)conversationTokensFromTokenFilters:(id)filters;
+ (id)queryStringForMessageTypeSearch:(id)search;
- (CKConversation)conversation;
- (CKSearchTokenFilter)initWithContentType:(unint64_t)type filterOptions:(unint64_t)options itemIdentifier:(id)identifier tokenAddresses:(id)addresses;
- (NSString)queryStringForConversationSearch;
- (NSString)queryStringForDateTypeSearch;
- (NSString)queryStringForMessageTypeSearch;
@end

@implementation CKSearchTokenFilter

- (CKSearchTokenFilter)initWithContentType:(unint64_t)type filterOptions:(unint64_t)options itemIdentifier:(id)identifier tokenAddresses:(id)addresses
{
  identifierCopy = identifier;
  addressesCopy = addresses;
  v15.receiver = self;
  v15.super_class = CKSearchTokenFilter;
  v12 = [(CKSearchTokenFilter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(CKSearchTokenFilter *)v12 setContentType:type];
    [(CKSearchTokenFilter *)v13 setFilterOptions:options];
    [(CKSearchTokenFilter *)v13 setItemIdentifier:identifierCopy];
    [(CKSearchTokenFilter *)v13 setTokenAddresses:addressesCopy];
  }

  return v13;
}

- (NSString)queryStringForConversationSearch
{
  v23 = *MEMORY[0x1E69E9840];
  queryStringForConversationSearch = self->_queryStringForConversationSearch;
  if (!queryStringForConversationSearch)
  {
    array = [MEMORY[0x1E695DF70] array];
    itemIdentifier = [(CKSearchTokenFilter *)self itemIdentifier];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E6963BA8], itemIdentifier];
    [array addObject:v6];

    if (![(CKSearchTokenFilter *)self hasFilterOption:2])
    {
      v17 = itemIdentifier;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      tokenAddresses = [(CKSearchTokenFilter *)self tokenAddresses];
      v8 = [tokenAddresses countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        v11 = *MEMORY[0x1E69649E0];
        do
        {
          v12 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(tokenAddresses);
            }

            v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == *%@", v11, *(*(&v18 + 1) + 8 * v12)];
            [array addObject:v13];

            ++v12;
          }

          while (v9 != v12);
          v9 = [tokenAddresses countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }

      itemIdentifier = v17;
    }

    v14 = [CKSpotlightQueryUtilities queryStringFromSubqueries:array combineOperator:0];
    v15 = self->_queryStringForConversationSearch;
    self->_queryStringForConversationSearch = v14;

    queryStringForConversationSearch = self->_queryStringForConversationSearch;
  }

  return queryStringForConversationSearch;
}

+ (id)queryStringForMessageTypeSearch:(id)search
{
  searchCopy = search;
  if ([searchCopy count] == 1)
  {
    firstObject = [searchCopy firstObject];
    queryStringForMessageTypeSearch = [firstObject queryStringForMessageTypeSearch];
  }

  else
  {
    firstObject = [searchCopy __imArrayByFilteringWithBlock:&__block_literal_global_294];
    v6 = [searchCopy arrayByExcludingObjectsInArray:firstObject];
    v7 = [v6 __imArrayByApplyingBlock:&__block_literal_global_429_1];
    v8 = [MEMORY[0x1E69A5BD0] me];
    cnContact = [v8 cnContact];

    v10 = [CKSpotlightQueryUtilities tokenAddressesForFilteringWithContact:cnContact];
    if ([v10 count])
    {
      v11 = [v7 arrayByAddingObject:v10];

      v7 = v11;
    }

    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__81;
    v22 = __Block_byref_object_dispose__81;
    v23 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__CKSearchTokenFilter_queryStringForMessageTypeSearch___block_invoke_432;
    v15[3] = &unk_1E72F8730;
    v17 = &v18;
    v12 = v7;
    v16 = v12;
    [v12 enumerateObjectsUsingBlock:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__CKSearchTokenFilter_queryStringForMessageTypeSearch___block_invoke_3;
    v14[3] = &unk_1E72F8758;
    v14[4] = &v18;
    [firstObject enumerateObjectsUsingBlock:v14];
    queryStringForMessageTypeSearch = v19[5];

    _Block_object_dispose(&v18, 8);
  }

  return queryStringForMessageTypeSearch;
}

uint64_t __55__CKSearchTokenFilter_queryStringForMessageTypeSearch___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 conversation];
  v3 = [v2 isGroupConversation];

  return v3;
}

void __55__CKSearchTokenFilter_queryStringForMessageTypeSearch___block_invoke_432(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(*(a1 + 40) + 8) + 40) length])
  {
    [*(*(*(a1 + 40) + 8) + 40) appendString:@" || "];
  }

  v4 = [CKSearchTokenFilter _conditionalForHandles:v3 usingKey:*MEMORY[0x1E6963CE8]];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__81;
  v19 = __Block_byref_object_dispose__81;
  v20 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __55__CKSearchTokenFilter_queryStringForMessageTypeSearch___block_invoke_2_436;
  v12 = &unk_1E72F8708;
  v6 = v3;
  v13 = v6;
  v14 = &v15;
  [v5 enumerateObjectsUsingBlock:&v9];
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"((%@) && (%@))", v4, v16[5], v9, v10, v11, v12];
  [v7 appendString:v8];

  _Block_object_dispose(&v15, 8);
}

void __55__CKSearchTokenFilter_queryStringForMessageTypeSearch___block_invoke_2_436(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([v7 isEqualToArray:*(a1 + 32)] & 1) == 0)
  {
    if ([*(*(*(a1 + 40) + 8) + 40) length])
    {
      [*(*(*(a1 + 40) + 8) + 40) appendString:@" && "];
    }

    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = MEMORY[0x1E696AEC0];
    v5 = [CKSearchTokenFilter _conditionalForHandles:v7 usingKey:*MEMORY[0x1E69649E0]];
    v6 = [v4 stringWithFormat:@"(%@)", v5];
    [v3 appendString:v6];
  }
}

void __55__CKSearchTokenFilter_queryStringForMessageTypeSearch___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(*(*(a1 + 32) + 8) + 40) length])
  {
    [*(*(*(a1 + 32) + 8) + 40) appendString:@" || "];
  }

  v3 = [v6 itemIdentifier];
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@ == \"%@\"", *MEMORY[0x1E6963F88], v3, *MEMORY[0x1E6963BA8], v3];
  [v4 appendString:v5];
}

- (NSString)queryStringForMessageTypeSearch
{
  queryStringForMessageTypeSearch = self->_queryStringForMessageTypeSearch;
  if (!queryStringForMessageTypeSearch)
  {
    conversation = [(CKSearchTokenFilter *)self conversation];
    isGroupConversation = [conversation isGroupConversation];

    if (isGroupConversation)
    {
      itemIdentifier = [(CKSearchTokenFilter *)self itemIdentifier];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@ == \"%@\"", *MEMORY[0x1E6963F88], itemIdentifier, *MEMORY[0x1E6963BA8], itemIdentifier];
      v8 = self->_queryStringForMessageTypeSearch;
      self->_queryStringForMessageTypeSearch = v7;
      v9 = v7;

      v10 = self->_queryStringForMessageTypeSearch;
      goto LABEL_12;
    }

    v11 = [(CKSearchTokenFilter *)self hasFilterOption:2];
    tokenAddresses = [(CKSearchTokenFilter *)self tokenAddresses];
    v13 = [CKSearchTokenFilter _conditionalForHandles:tokenAddresses usingKey:*MEMORY[0x1E6963CE8]];

    if (v11)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E69644C8], MEMORY[0x1E695E110]];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) && (%@)", v13, v14];
    }

    else
    {
      v16 = [MEMORY[0x1E69A5BD0] me];
      cnContact = [v16 cnContact];

      v29 = cnContact;
      v28 = [CKSpotlightQueryUtilities tokenAddressesForFilteringWithContact:cnContact];
      v18 = [CKSearchTokenFilter _conditionalForHandles:"_conditionalForHandles:usingKey:" usingKey:?];
      tokenAddresses2 = [(CKSearchTokenFilter *)self tokenAddresses];
      v20 = [CKSearchTokenFilter _conditionalForHandles:tokenAddresses2 usingKey:*MEMORY[0x1E69649E0]];

      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E69644C8], MEMORY[0x1E695E110]];
      if (v18)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) && (%@) && (%@)", v18, v20, v21];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) && (%@)", v20, v21, v27];
      }
      v22 = ;
      tokenAddresses3 = [(CKSearchTokenFilter *)self tokenAddresses];
      v24 = [CKSearchTokenFilter _conditionalForHandles:tokenAddresses3 usingKey:@"com_apple_mobilesms_mentionedAddresses"];

      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) || (%@) || (%@)", v13, v22, v24];

      v14 = v13;
      v13 = v22;
    }

    v25 = self->_queryStringForMessageTypeSearch;
    self->_queryStringForMessageTypeSearch = v15;

    queryStringForMessageTypeSearch = self->_queryStringForMessageTypeSearch;
  }

  v10 = queryStringForMessageTypeSearch;
LABEL_12:

  return v10;
}

- (NSString)queryStringForDateTypeSearch
{
  queryStringForDateTypeSearch = self->_queryStringForDateTypeSearch;
  if (!queryStringForDateTypeSearch)
  {
    v4 = self->_tokenAddresses;
    v5 = +[CKTokenizationDateParser serializationDateFormatter];
    v6 = [(NSArray *)v4 objectAtIndexedSubscript:0];
    v7 = [v5 dateFromString:v6];

    v8 = +[CKTokenizationDateParser serializationDateFormatter];
    v9 = [(NSArray *)v4 objectAtIndexedSubscript:1];
    v10 = [v8 dateFromString:v9];

    [v7 timeIntervalSinceReferenceDate];
    v12 = v11;
    [v10 timeIntervalSinceReferenceDate];
    filterOptions = self->_filterOptions;
    if ((filterOptions & 4) != 0)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"kMDItemContentCreationDate > %f", v13, v18];
    }

    else if ((filterOptions & 8) != 0)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"kMDItemContentCreationDate < %f", v12, v18];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"(kMDItemContentCreationDate >= %f) && (kMDItemContentCreationDate <= %f)", v12, v13];
    }
    v15 = ;
    v16 = self->_queryStringForDateTypeSearch;
    self->_queryStringForDateTypeSearch = v15;

    queryStringForDateTypeSearch = self->_queryStringForDateTypeSearch;
  }

  return queryStringForDateTypeSearch;
}

+ (id)_conditionalForHandles:(id)handles usingKey:(id)key
{
  v21 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  keyCopy = key;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = handlesCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == *%@", keyCopy, *(*(&v16 + 1) + 8 * i), v16];
        [array addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [CKSpotlightQueryUtilities queryStringFromSubqueries:array combineOperator:0];

  return v14;
}

+ (id)conversationTokensFromTokenFilters:(id)filters
{
  v18 = *MEMORY[0x1E69E9840];
  filtersCopy = filters;
  if ([filtersCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = filtersCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (![v10 contentType])
          {
            [array addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = [array copy];
  }

  else
  {
    v11 = filtersCopy;
  }

  return v11;
}

- (CKConversation)conversation
{
  WeakRetained = objc_loadWeakRetained(&self->_conversation);

  return WeakRetained;
}

@end