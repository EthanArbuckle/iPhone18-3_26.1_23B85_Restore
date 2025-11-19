@interface ICHashtagSuggestionItem
+ (id)sortedItems:(id)a3 context:(id)a4;
+ (id)sortedSuggestionItemsWithHashtagsIncludingHashtagsFromOtherApps:(id)a3 context:(id)a4;
+ (id)suggestionItemsWithHashtagsIncludingHashtagsFromOtherApps:(id)a3;
- (BOOL)isEqual:(id)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation ICHashtagSuggestionItem

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(ICHashtagSuggestionItem *)self lastUsedDate];
  if (!v5 || (v6 = v5, [v4 lastUsedDate], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v12 = [(ICHashtagSuggestionItem *)self lastUsedDate];
    if (v12)
    {
    }

    else
    {
      v13 = [v4 lastUsedDate];

      if (!v13)
      {
        v16 = [(ICHashtagSuggestionItem *)self tokenContentIdentifier];
        if (v16)
        {
          v17 = v16;
          v18 = [v4 tokenContentIdentifier];

          if (v18)
          {
            v8 = [(ICHashtagSuggestionItem *)self tokenContentIdentifier];
            v9 = [v4 tokenContentIdentifier];
            goto LABEL_4;
          }
        }

        v19 = [(ICHashtagSuggestionItem *)self tokenContentIdentifier];
        if (v19)
        {
        }

        else
        {
          v20 = [v4 tokenContentIdentifier];

          if (!v20)
          {
            v11 = 0;
            goto LABEL_13;
          }
        }

        v14 = [(ICHashtagSuggestionItem *)self tokenContentIdentifier];
LABEL_9:
        v8 = v14;
        if (v14)
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

    v14 = [(ICHashtagSuggestionItem *)self lastUsedDate];
    goto LABEL_9;
  }

  v8 = [v4 lastUsedDate];
  v9 = [(ICHashtagSuggestionItem *)self lastUsedDate];
LABEL_4:
  v10 = v9;
  v11 = [v8 compare:v9];

LABEL_12:
LABEL_13:

  return v11;
}

+ (id)sortedItems:(id)a3 context:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v5;
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

        v13 = [*(*(&v30 + 1) + 8 * i) tokenContentIdentifier];
        [v7 ic_addNonNilObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  v14 = [v7 allObjects];
  v15 = [ICInlineAttachment recentlyUsedDatesForHashtagsStandardizedContents:v14 context:v6];

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
        v22 = [v21 tokenContentIdentifier];
        v23 = [v15 objectForKeyedSubscript:v22];
        [v21 setLastUsedDate:v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  v24 = [v16 sortedArrayUsingComparator:&__block_literal_global_7];

  return v24;
}

+ (id)sortedSuggestionItemsWithHashtagsIncludingHashtagsFromOtherApps:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = [a1 suggestionItemsWithHashtagsIncludingHashtagsFromOtherApps:a3];
  v8 = [a1 sortedItems:v7 context:v6];

  return v8;
}

+ (id)suggestionItemsWithHashtagsIncludingHashtagsFromOtherApps:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v3;
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
        v13 = [v11 standardizedContent];
        [(ICHashtagSuggestionItem *)v12 setTokenContentIdentifier:v13];

        v14 = [v11 displayText];
        [(ICHashtagSuggestionItem *)v12 setDisplayText:v14];

        [v5 addObject:v12];
        v15 = [(ICHashtagSuggestionItem *)v12 displayText];
        [v4 ic_addNonNilObject:v15];
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
  v2 = [(ICHashtagSuggestionItem *)self tokenContentIdentifier];
  v3 = [v2 hash];
  v11 = ICHashWithHashKeys(v3, v4, v5, v6, v7, v8, v9, v10, 0);

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();
  if (!v5)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v6 = [(ICHashtagSuggestionItem *)self tokenContentIdentifier];
  if (!v6 || (v7 = v6, [v5 tokenContentIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v12 = [(ICHashtagSuggestionItem *)self tokenContentIdentifier];
    if (v12)
    {
    }

    else
    {
      v13 = [v5 tokenContentIdentifier];

      if (!v13)
      {
        v11 = 1;
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v9 = [(ICHashtagSuggestionItem *)self tokenContentIdentifier];
  v10 = [v5 tokenContentIdentifier];
  v11 = [v9 isEqualToString:v10];

LABEL_9:
  return v11;
}

@end