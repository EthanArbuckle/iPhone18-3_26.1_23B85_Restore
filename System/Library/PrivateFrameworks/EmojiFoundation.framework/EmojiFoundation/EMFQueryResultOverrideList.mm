@interface EMFQueryResultOverrideList
- (EMFQueryResultOverrideList)initWithOverrideListURL:(id)l;
- (id)_overriddenResultsRawStringExactMatchForQuery:(id)query;
- (id)_overriddenResultsRawStringExactMatchForRawString:(id)string andSearchType:(unint64_t)type;
- (id)_overriddenResultsRawStringPrefixMatchForQuery:(id)query;
- (id)_overriddenResultsTokenExactMatchForQuery:(id)query;
- (id)_overriddenResultsTokenPrefixMatchForQuery:(id)query;
- (id)overriddenResultsForQuery:(id)query;
- (id)overriddenResultsForQuery:(id)query searchType:(unint64_t)type;
@end

@implementation EMFQueryResultOverrideList

- (EMFQueryResultOverrideList)initWithOverrideListURL:(id)l
{
  lCopy = l;
  if (lCopy && (v12.receiver = self, v12.super_class = EMFQueryResultOverrideList, (self = [(EMFQueryResultOverrideList *)&v12 init]) != 0))
  {
    v11 = 0;
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:lCopy error:&v11];
    v7 = v11;
    if (v7)
    {
      v8 = emf_logging_get_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(EMFQueryResultOverrideList *)lCopy initWithOverrideListURL:v7, v8];
      }

      selfCopy = 0;
    }

    else
    {
      objc_storeStrong(&self->_overrideListURLForTesting, l);
      objc_storeStrong(&self->_overrideMap, v6);
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)overriddenResultsForQuery:(id)query
{
  queryCopy = query;
  v5 = queryCopy;
  if (queryCopy)
  {
    queryString = [queryCopy queryString];

    if (queryString)
    {
      v7 = 0;
      do
      {
        v8 = [(EMFQueryResultOverrideList *)self overriddenResultsForQuery:v5 searchType:kEMFSearchTypeFallbackOrdering[v7]];
        if (v8)
        {
          v9 = 1;
        }

        else
        {
          v9 = v7 == 3;
        }

        ++v7;
      }

      while (!v9);
      queryString = v8;
    }
  }

  else
  {
    queryString = 0;
  }

  return queryString;
}

- (id)overriddenResultsForQuery:(id)query searchType:(unint64_t)type
{
  queryCopy = query;
  v7 = queryCopy;
  if (!queryCopy)
  {
    queryString = 0;
    goto LABEL_14;
  }

  queryString = [queryCopy queryString];

  if (!queryString)
  {
    goto LABEL_14;
  }

  queryString = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      v9 = [(EMFQueryResultOverrideList *)self _overriddenResultsTokenExactMatchForQuery:v7];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_14;
      }

      v9 = [(EMFQueryResultOverrideList *)self _overriddenResultsTokenPrefixMatchForQuery:v7];
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_14;
    }

    v9 = [(EMFQueryResultOverrideList *)self _overriddenResultsRawStringPrefixMatchForQuery:v7];
  }

  else
  {
    v9 = [(EMFQueryResultOverrideList *)self _overriddenResultsRawStringExactMatchForQuery:v7];
  }

  queryString = v9;
LABEL_14:

  return queryString;
}

- (id)_overriddenResultsRawStringExactMatchForRawString:(id)string andSearchType:(unint64_t)type
{
  v5 = [(EMFQueryResultOverrideList *)self _metadataForString:string];
  v6 = v5;
  if (v5 && _searchTypeForEntryMetadata(v5) == type)
  {
    v7 = v6;
    v8 = [EMFQueryResultOverride alloc];
    v9 = [v7 objectForKey:@"results"];
    v10 = v9;
    v11 = MEMORY[0x1E695E0F0];
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = _searchTypeForEntryMetadata(v7);
    v14 = [v7 objectForKey:@"overrideBehaviorType"];

    if (v14)
    {
      unsignedIntegerValue = [v14 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v16 = [(EMFQueryResultOverride *)v8 initWithOverridesArray:v12 searchType:v13 behavior:unsignedIntegerValue];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_overriddenResultsRawStringExactMatchForQuery:(id)query
{
  normalizedQueryString = [query normalizedQueryString];
  v5 = [(EMFQueryResultOverrideList *)self _overriddenResultsRawStringExactMatchForRawString:normalizedQueryString andSearchType:0];

  return v5;
}

- (id)_overriddenResultsTokenExactMatchForQuery:(id)query
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  tokens = [query tokens];
  v5 = [tokens countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(tokens);
        }

        v9 = [(EMFQueryResultOverrideList *)self _overriddenResultsRawStringExactMatchForRawString:*(*(&v12 + 1) + 8 * i) andSearchType:2];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [tokens countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_overriddenResultsRawStringPrefixMatchForQuery:(id)query
{
  queryCopy = query;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  normalizedQueryString = [queryCopy normalizedQueryString];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__EMFQueryResultOverrideList__overriddenResultsRawStringPrefixMatchForQuery___block_invoke;
  v8[3] = &unk_1E7A5F828;
  v8[4] = self;
  v8[5] = &v9;
  _enumeratePrefixesInStringUsingBlock(normalizedQueryString, v8);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __77__EMFQueryResultOverrideList__overriddenResultsRawStringPrefixMatchForQuery___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) _overriddenResultsRawStringExactMatchForRawString:a2 andSearchType:1];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (id)_overriddenResultsTokenPrefixMatchForQuery:(id)query
{
  v24 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  tokens = [queryCopy tokens];
  v6 = [tokens countByEnumeratingWithState:&v13 objects:v23 count:16];
  if (v6)
  {
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(tokens);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __73__EMFQueryResultOverrideList__overriddenResultsTokenPrefixMatchForQuery___block_invoke;
      v12[3] = &unk_1E7A5F828;
      v12[4] = self;
      v12[5] = &v17;
      _enumeratePrefixesInStringUsingBlock(v9, v12);
      if (v18[5])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [tokens countByEnumeratingWithState:&v13 objects:v23 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v10;
}

void __73__EMFQueryResultOverrideList__overriddenResultsTokenPrefixMatchForQuery___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) _overriddenResultsRawStringExactMatchForRawString:a2 andSearchType:3];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (void)initWithOverrideListURL:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 localizedDescription];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1AF04E000, a3, OS_LOG_TYPE_ERROR, "Override list '%@' could not be loaded: %@", &v6, 0x16u);
}

@end