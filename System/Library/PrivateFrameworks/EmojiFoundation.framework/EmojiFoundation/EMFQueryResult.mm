@interface EMFQueryResult
+ (__EmojiTokenWrapper)_emojiTokenForDocumentID:(id)a3 usingLocaleData:(__EmojiLocaleDataWrapper *)a4;
+ (id)_emojiStringForDocumentID:(id)a3 usingLocaleData:(__EmojiLocaleDataWrapper *)a4;
- (BOOL)_matchingDocumentWeightsContainsOnlyBlackLivesMatterResults;
- (EMFQueryResult)initWithQuery:(id)a3 matchingDocumentWeights:(id)a4 resultOverride:(id)a5;
- (NSArray)documentMatches;
- (id)_handleOverrideResultInterpolationForStandardResults:(id)a3;
- (id)_interpolateOverriddenResultsByAppending:(id)a3;
- (id)_interpolateOverriddenResultsByAppendingAndMoving:(id)a3;
- (id)_interpolateOverriddenResultsByFiltering:(id)a3;
- (id)_interpolateOverriddenResultsByPrepending:(id)a3;
- (id)description;
- (id)emojiMatchesAndDocumentWeightsUsingEmojiLocaleData:(__EmojiLocaleDataWrapper *)a3;
- (id)emojiMatchesForOverriddenResultsUsingEmojiLocaleData:(__EmojiLocaleDataWrapper *)a3;
- (id)emojiStringMatchesUsingEmojiLocaleData:(__EmojiLocaleDataWrapper *)a3;
@end

@implementation EMFQueryResult

- (EMFQueryResult)initWithQuery:(id)a3 matchingDocumentWeights:(id)a4 resultOverride:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(EMFQueryResult *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_query, a3);
    v14 = [v10 copy];
    matchingDocumentWeights = v13->_matchingDocumentWeights;
    v13->_matchingDocumentWeights = v14;

    objc_storeStrong(&v13->_resultOverride, a5);
  }

  return v13;
}

- (NSArray)documentMatches
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_matchingDocumentWeights)
  {
    documentMatches = self->_documentMatches;
    if (!documentMatches)
    {
      if ([(EMFQueryResult *)self _matchingDocumentWeightsContainsOnlyBlackLivesMatterResults])
      {
        v4 = &unk_1F24DF3D0;
      }

      else
      {
        v4 = [(NSDictionary *)self->_matchingDocumentWeights keysSortedByValueUsingComparator:&__block_literal_global_0];
      }

      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v18 + 1) + 8 * i), "integerValue", v18)}];
            [v6 addObject:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }

      v13 = [v6 copy];
      v14 = [(EMFQueryResult *)self resultOverride];
      if (v14)
      {
        v15 = [(EMFQueryResult *)self _handleOverrideResultInterpolationForStandardResults:v13];
      }

      else
      {
        v15 = v13;
      }

      v16 = self->_documentMatches;
      self->_documentMatches = v15;

      documentMatches = self->_documentMatches;
    }

    v5 = documentMatches;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)emojiStringMatchesUsingEmojiLocaleData:(__EmojiLocaleDataWrapper *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    sortedResultSet = self->_sortedResultSet;
    if (sortedResultSet)
    {
      v5 = [(NSOrderedSet *)sortedResultSet array];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = [(EMFQueryResult *)self documentMatches];
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [objc_opt_class() _emojiStringForDocumentID:*(*(&v17 + 1) + 8 * i) usingLocaleData:a3];
            if (v13)
            {
              [v7 addObject:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }

      v5 = [EMFQueryResultSorter sortResults:v7 withLocaleData:a3 sortType:1];
      v14 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v5];
      v15 = self->_sortedResultSet;
      self->_sortedResultSet = v14;
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)emojiMatchesAndDocumentWeightsUsingEmojiLocaleData:(__EmojiLocaleDataWrapper *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(EMFQueryResult *)self documentMatches];
  v6 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v21;
    do
    {
      v11 = 0;
      v12 = v8;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * v11);
        v8 = [objc_opt_class() _emojiStringForDocumentID:v13 usingLocaleData:a3];

        if (v8)
        {
          v14 = [(NSDictionary *)self->_matchingDocumentWeights objectForKeyedSubscript:v13];

          v15 = &unk_1F24DF658;
          if (v14)
          {
            v15 = v14;
          }

          v24[0] = v8;
          v24[1] = v15;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
          [v5 addObject:v16];

          v9 = v14;
        }

        ++v11;
        v12 = v8;
      }

      while (v7 != v11);
      v7 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0;
  }

  v17 = [v5 copy];

  return v17;
}

- (id)emojiMatchesForOverriddenResultsUsingEmojiLocaleData:(__EmojiLocaleDataWrapper *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(EMFQueryResultOverride *)self->_resultOverride results];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [objc_opt_class() _emojiStringForDocumentID:*(*(&v14 + 1) + 8 * i) usingLocaleData:a3];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)description
{
  v3 = [(EMFQueryResult *)self documentMatches];
  v4 = [(EMFQuery *)self->_query tokens];
  v5 = [v4 componentsJoinedByString:@" "];

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"<%@: query tokens: '%@', matches: %lu>", v8, v5, objc_msgSend(v3, "count")];

  return v9;
}

+ (__EmojiTokenWrapper)_emojiTokenForDocumentID:(id)a3 usingLocaleData:(__EmojiLocaleDataWrapper *)a4
{
  if ([a3 unsignedIntValue] != 1263 || (EMFIsDeviceInGreaterChina() & 1) == 0)
  {
    result = CEMEmojiTokenCreateWithIndex();
    if (result)
    {
      return result;
    }

    log_emoji_token_creation_error();
  }

  return 0;
}

+ (id)_emojiStringForDocumentID:(id)a3 usingLocaleData:(__EmojiLocaleDataWrapper *)a4
{
  v6 = a3;
  v7 = [a1 _emojiTokenForDocumentID:v6 usingLocaleData:a4];
  String = CEMEmojiTokenGetString();
  if (String)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], String);
    CFRelease(v7);
  }

  else
  {
    [v6 unsignedIntValue];
    log_emoji_string_lookup_error();
    if (v7)
    {
      CFRelease(v7);
    }

    Copy = 0;
  }

  return Copy;
}

- (BOOL)_matchingDocumentWeightsContainsOnlyBlackLivesMatterResults
{
  v3 = [(NSDictionary *)self->_matchingDocumentWeights allKeys];
  if ([v3 count] == 3)
  {
    v4 = [(NSDictionary *)self->_matchingDocumentWeights objectForKeyedSubscript:&unk_1F24DF2E0];
    if (v4)
    {
      v5 = [(NSDictionary *)self->_matchingDocumentWeights objectForKeyedSubscript:&unk_1F24DF2F8];
      if (v5)
      {
        v6 = [(NSDictionary *)self->_matchingDocumentWeights objectForKeyedSubscript:&unk_1F24DF310];
        v7 = v6 != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_handleOverrideResultInterpolationForStandardResults:(id)a3
{
  v4 = a3;
  v5 = [(EMFQueryResultOverride *)self->_resultOverride overrideBehavior];
  if (v5 <= 1)
  {
    if (!v5)
    {
      v6 = [(EMFQueryResult *)self _interpolateOverriddenResultsByOverwriting];
      goto LABEL_13;
    }

    if (v5 == 1)
    {
      v6 = [(EMFQueryResult *)self _interpolateOverriddenResultsByPrepending:v4];
      goto LABEL_13;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v6 = [(EMFQueryResult *)self _interpolateOverriddenResultsByAppending:v4];
        goto LABEL_13;
      case 3:
        v6 = [(EMFQueryResult *)self _interpolateOverriddenResultsByAppendingAndMoving:v4];
        goto LABEL_13;
      case 4:
        v6 = [(EMFQueryResult *)self _interpolateOverriddenResultsByFiltering:v4];
        goto LABEL_13;
    }
  }

  v6 = v4;
LABEL_13:
  v7 = v6;

  return v7;
}

- (id)_interpolateOverriddenResultsByPrepending:(id)a3
{
  v4 = MEMORY[0x1E695DFA0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(EMFQueryResultOverride *)self->_resultOverride results];
  v8 = [v6 initWithArray:v7];

  [v8 addObjectsFromArray:v5];
  v9 = [v8 array];

  return v9;
}

- (id)_interpolateOverriddenResultsByAppending:(id)a3
{
  v4 = MEMORY[0x1E695DFA0];
  v5 = a3;
  v6 = [[v4 alloc] initWithArray:v5];

  v7 = [(EMFQueryResultOverride *)self->_resultOverride results];
  [v6 addObjectsFromArray:v7];

  v8 = [v6 array];

  return v8;
}

- (id)_interpolateOverriddenResultsByAppendingAndMoving:(id)a3
{
  v4 = MEMORY[0x1E695DFA0];
  v5 = a3;
  v6 = [[v4 alloc] initWithArray:v5];

  v7 = [(EMFQueryResultOverride *)self->_resultOverride results];
  [v6 removeObjectsInArray:v7];

  v8 = [(EMFQueryResultOverride *)self->_resultOverride results];
  [v6 addObjectsFromArray:v8];

  v9 = [v6 array];

  return v9;
}

- (id)_interpolateOverriddenResultsByFiltering:(id)a3
{
  v4 = MEMORY[0x1E695DFA0];
  v5 = a3;
  v6 = [[v4 alloc] initWithArray:v5];

  v7 = [(EMFQueryResultOverride *)self->_resultOverride results];
  [v6 removeObjectsInArray:v7];

  v8 = [v6 array];

  return v8;
}

@end