@interface ICHashtagSuggestionItem
+ (id)sortedItems:(id)items context:(id)context;
+ (id)sortedSuggestionItemsWithHashtagsIncludingHashtagsFromOtherApps:(id)apps context:(id)context;
+ (id)suggestionItemsWithHashtagsIncludingHashtagsFromOtherApps:(id)apps;
- (BOOL)isEqual:(id)equal;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation ICHashtagSuggestionItem

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  lastUsedDate = [(ICHashtagSuggestionItem *)self lastUsedDate];
  if (!lastUsedDate || (v6 = lastUsedDate, [compareCopy lastUsedDate], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    lastUsedDate2 = [(ICHashtagSuggestionItem *)self lastUsedDate];
    if (lastUsedDate2)
    {
    }

    else
    {
      lastUsedDate3 = [compareCopy lastUsedDate];

      if (!lastUsedDate3)
      {
        tokenContentIdentifier = [(ICHashtagSuggestionItem *)self tokenContentIdentifier];
        if (tokenContentIdentifier)
        {
          v17 = tokenContentIdentifier;
          tokenContentIdentifier2 = [compareCopy tokenContentIdentifier];

          if (tokenContentIdentifier2)
          {
            tokenContentIdentifier3 = [(ICHashtagSuggestionItem *)self tokenContentIdentifier];
            tokenContentIdentifier4 = [compareCopy tokenContentIdentifier];
            goto LABEL_4;
          }
        }

        tokenContentIdentifier5 = [(ICHashtagSuggestionItem *)self tokenContentIdentifier];
        if (tokenContentIdentifier5)
        {
        }

        else
        {
          tokenContentIdentifier6 = [compareCopy tokenContentIdentifier];

          if (!tokenContentIdentifier6)
          {
            v11 = 0;
            goto LABEL_13;
          }
        }

        tokenContentIdentifier7 = [(ICHashtagSuggestionItem *)self tokenContentIdentifier];
LABEL_9:
        tokenContentIdentifier3 = tokenContentIdentifier7;
        if (tokenContentIdentifier7)
        {
          v11 = -1;
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    tokenContentIdentifier7 = [(ICHashtagSuggestionItem *)self lastUsedDate];
    goto LABEL_9;
  }

  tokenContentIdentifier3 = [compareCopy lastUsedDate];
  tokenContentIdentifier4 = [(ICHashtagSuggestionItem *)self lastUsedDate];
LABEL_4:
  v10 = tokenContentIdentifier4;
  v11 = [tokenContentIdentifier3 compare:tokenContentIdentifier4];

LABEL_12:
LABEL_13:

  return v11;
}

+ (id)sortedItems:(id)items context:(id)context
{
  v36 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  contextCopy = context;
  v7 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        tokenContentIdentifier = [*(*(&v30 + 1) + 8 * i) tokenContentIdentifier];
        [v7 ic_addNonNilObject:tokenContentIdentifier];
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  allObjects = [v7 allObjects];
  v15 = [ICInlineAttachment recentlyUsedDatesForHashtagsStandardizedContents:allObjects context:contextCopy];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        tokenContentIdentifier2 = [v21 tokenContentIdentifier];
        v23 = [v15 objectForKeyedSubscript:tokenContentIdentifier2];
        [v21 setLastUsedDate:v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  v24 = [v16 sortedArrayUsingComparator:&__block_literal_global_7];

  return v24;
}

+ (id)sortedSuggestionItemsWithHashtagsIncludingHashtagsFromOtherApps:(id)apps context:(id)context
{
  contextCopy = context;
  v7 = [self suggestionItemsWithHashtagsIncludingHashtagsFromOtherApps:apps];
  v8 = [self sortedItems:v7 context:contextCopy];

  return v8;
}

+ (id)suggestionItemsWithHashtagsIncludingHashtagsFromOtherApps:(id)apps
{
  v37 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = appsCopy;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = objc_alloc_init(ICHashtagSuggestionItem);
        standardizedContent = [v11 standardizedContent];
        [(ICHashtagSuggestionItem *)v12 setTokenContentIdentifier:standardizedContent];

        displayText = [v11 displayText];
        [(ICHashtagSuggestionItem *)v12 setDisplayText:displayText];

        [v5 addObject:v12];
        displayText2 = [(ICHashtagSuggestionItem *)v12 displayText];
        [v4 ic_addNonNilObject:displayText2];
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  v26 = v6;

  v16 = +[ICCrossAppHashtagManager hashtagDisplayTextsFromOtherApps];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        if (([v4 containsObject:v21] & 1) == 0)
        {
          v22 = objc_alloc_init(ICHashtagSuggestionItem);
          v23 = [ICHashtag standardizedHashtagRepresentationForDisplayText:v21];
          [(ICHashtagSuggestionItem *)v22 setTokenContentIdentifier:v23];

          [(ICHashtagSuggestionItem *)v22 setDisplayText:v21];
          [v5 addObject:v22];
          [v4 ic_addNonNilObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v18);
  }

  v24 = [v5 copy];

  return v24;
}

- (unint64_t)hash
{
  tokenContentIdentifier = [(ICHashtagSuggestionItem *)self tokenContentIdentifier];
  v3 = [tokenContentIdentifier hash];
  v11 = ICHashWithHashKeys(v3, v4, v5, v6, v7, v8, v9, v10, 0);

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = ICDynamicCast();
  if (!v5)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  tokenContentIdentifier = [(ICHashtagSuggestionItem *)self tokenContentIdentifier];
  if (!tokenContentIdentifier || (v7 = tokenContentIdentifier, [v5 tokenContentIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    tokenContentIdentifier2 = [(ICHashtagSuggestionItem *)self tokenContentIdentifier];
    if (tokenContentIdentifier2)
    {
    }

    else
    {
      tokenContentIdentifier3 = [v5 tokenContentIdentifier];

      if (!tokenContentIdentifier3)
      {
        v11 = 1;
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  tokenContentIdentifier4 = [(ICHashtagSuggestionItem *)self tokenContentIdentifier];
  tokenContentIdentifier5 = [v5 tokenContentIdentifier];
  v11 = [tokenContentIdentifier4 isEqualToString:tokenContentIdentifier5];

LABEL_9:
  return v11;
}

@end