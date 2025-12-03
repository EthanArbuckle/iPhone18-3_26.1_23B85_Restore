@interface EMFQueryResult
+ (__EmojiTokenWrapper)_emojiTokenForDocumentID:(id)d usingLocaleData:(__EmojiLocaleDataWrapper *)data;
+ (id)_emojiStringForDocumentID:(id)d usingLocaleData:(__EmojiLocaleDataWrapper *)data;
- (BOOL)_matchingDocumentWeightsContainsOnlyBlackLivesMatterResults;
- (EMFQueryResult)initWithQuery:(id)query matchingDocumentWeights:(id)weights resultOverride:(id)override;
- (NSArray)documentMatches;
- (id)_handleOverrideResultInterpolationForStandardResults:(id)results;
- (id)_interpolateOverriddenResultsByAppending:(id)appending;
- (id)_interpolateOverriddenResultsByAppendingAndMoving:(id)moving;
- (id)_interpolateOverriddenResultsByFiltering:(id)filtering;
- (id)_interpolateOverriddenResultsByPrepending:(id)prepending;
- (id)description;
- (id)emojiMatchesAndDocumentWeightsUsingEmojiLocaleData:(__EmojiLocaleDataWrapper *)data;
- (id)emojiMatchesForOverriddenResultsUsingEmojiLocaleData:(__EmojiLocaleDataWrapper *)data;
- (id)emojiStringMatchesUsingEmojiLocaleData:(__EmojiLocaleDataWrapper *)data;
@end

@implementation EMFQueryResult

- (EMFQueryResult)initWithQuery:(id)query matchingDocumentWeights:(id)weights resultOverride:(id)override
{
  queryCopy = query;
  weightsCopy = weights;
  overrideCopy = override;
  v12 = [(EMFQueryResult *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_query, query);
    v14 = [weightsCopy copy];
    matchingDocumentWeights = v13->_matchingDocumentWeights;
    v13->_matchingDocumentWeights = v14;

    objc_storeStrong(&v13->_resultOverride, override);
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
      resultOverride = [(EMFQueryResult *)self resultOverride];
      if (resultOverride)
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

- (id)emojiStringMatchesUsingEmojiLocaleData:(__EmojiLocaleDataWrapper *)data
{
  v22 = *MEMORY[0x1E69E9840];
  if (data)
  {
    sortedResultSet = self->_sortedResultSet;
    if (sortedResultSet)
    {
      array = [(NSOrderedSet *)sortedResultSet array];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      documentMatches = [(EMFQueryResult *)self documentMatches];
      v9 = [documentMatches countByEnumeratingWithState:&v17 objects:v21 count:16];
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
              objc_enumerationMutation(documentMatches);
            }

            v13 = [objc_opt_class() _emojiStringForDocumentID:*(*(&v17 + 1) + 8 * i) usingLocaleData:data];
            if (v13)
            {
              [v7 addObject:v13];
            }
          }

          v10 = [documentMatches countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }

      array = [EMFQueryResultSorter sortResults:v7 withLocaleData:data sortType:1];
      v14 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:array];
      v15 = self->_sortedResultSet;
      self->_sortedResultSet = v14;
    }
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (id)emojiMatchesAndDocumentWeightsUsingEmojiLocaleData:(__EmojiLocaleDataWrapper *)data
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
        v8 = [objc_opt_class() _emojiStringForDocumentID:v13 usingLocaleData:data];

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

- (id)emojiMatchesForOverriddenResultsUsingEmojiLocaleData:(__EmojiLocaleDataWrapper *)data
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  results = [(EMFQueryResultOverride *)self->_resultOverride results];
  v7 = [results countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(results);
        }

        v11 = [objc_opt_class() _emojiStringForDocumentID:*(*(&v14 + 1) + 8 * i) usingLocaleData:data];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [results countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)description
{
  documentMatches = [(EMFQueryResult *)self documentMatches];
  tokens = [(EMFQuery *)self->_query tokens];
  v5 = [tokens componentsJoinedByString:@" "];

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"<%@: query tokens: '%@', matches: %lu>", v8, v5, objc_msgSend(documentMatches, "count")];

  return v9;
}

+ (__EmojiTokenWrapper)_emojiTokenForDocumentID:(id)d usingLocaleData:(__EmojiLocaleDataWrapper *)data
{
  if ([d unsignedIntValue] != 1263 || (EMFIsDeviceInGreaterChina() & 1) == 0)
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

+ (id)_emojiStringForDocumentID:(id)d usingLocaleData:(__EmojiLocaleDataWrapper *)data
{
  dCopy = d;
  v7 = [self _emojiTokenForDocumentID:dCopy usingLocaleData:data];
  String = CEMEmojiTokenGetString();
  if (String)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], String);
    CFRelease(v7);
  }

  else
  {
    [dCopy unsignedIntValue];
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
  allKeys = [(NSDictionary *)self->_matchingDocumentWeights allKeys];
  if ([allKeys count] == 3)
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

- (id)_handleOverrideResultInterpolationForStandardResults:(id)results
{
  resultsCopy = results;
  overrideBehavior = [(EMFQueryResultOverride *)self->_resultOverride overrideBehavior];
  if (overrideBehavior <= 1)
  {
    if (!overrideBehavior)
    {
      _interpolateOverriddenResultsByOverwriting = [(EMFQueryResult *)self _interpolateOverriddenResultsByOverwriting];
      goto LABEL_13;
    }

    if (overrideBehavior == 1)
    {
      _interpolateOverriddenResultsByOverwriting = [(EMFQueryResult *)self _interpolateOverriddenResultsByPrepending:resultsCopy];
      goto LABEL_13;
    }
  }

  else
  {
    switch(overrideBehavior)
    {
      case 2:
        _interpolateOverriddenResultsByOverwriting = [(EMFQueryResult *)self _interpolateOverriddenResultsByAppending:resultsCopy];
        goto LABEL_13;
      case 3:
        _interpolateOverriddenResultsByOverwriting = [(EMFQueryResult *)self _interpolateOverriddenResultsByAppendingAndMoving:resultsCopy];
        goto LABEL_13;
      case 4:
        _interpolateOverriddenResultsByOverwriting = [(EMFQueryResult *)self _interpolateOverriddenResultsByFiltering:resultsCopy];
        goto LABEL_13;
    }
  }

  _interpolateOverriddenResultsByOverwriting = resultsCopy;
LABEL_13:
  v7 = _interpolateOverriddenResultsByOverwriting;

  return v7;
}

- (id)_interpolateOverriddenResultsByPrepending:(id)prepending
{
  v4 = MEMORY[0x1E695DFA0];
  prependingCopy = prepending;
  v6 = [v4 alloc];
  results = [(EMFQueryResultOverride *)self->_resultOverride results];
  v8 = [v6 initWithArray:results];

  [v8 addObjectsFromArray:prependingCopy];
  array = [v8 array];

  return array;
}

- (id)_interpolateOverriddenResultsByAppending:(id)appending
{
  v4 = MEMORY[0x1E695DFA0];
  appendingCopy = appending;
  v6 = [[v4 alloc] initWithArray:appendingCopy];

  results = [(EMFQueryResultOverride *)self->_resultOverride results];
  [v6 addObjectsFromArray:results];

  array = [v6 array];

  return array;
}

- (id)_interpolateOverriddenResultsByAppendingAndMoving:(id)moving
{
  v4 = MEMORY[0x1E695DFA0];
  movingCopy = moving;
  v6 = [[v4 alloc] initWithArray:movingCopy];

  results = [(EMFQueryResultOverride *)self->_resultOverride results];
  [v6 removeObjectsInArray:results];

  results2 = [(EMFQueryResultOverride *)self->_resultOverride results];
  [v6 addObjectsFromArray:results2];

  array = [v6 array];

  return array;
}

- (id)_interpolateOverriddenResultsByFiltering:(id)filtering
{
  v4 = MEMORY[0x1E695DFA0];
  filteringCopy = filtering;
  v6 = [[v4 alloc] initWithArray:filteringCopy];

  results = [(EMFQueryResultOverride *)self->_resultOverride results];
  [v6 removeObjectsInArray:results];

  array = [v6 array];

  return array;
}

@end