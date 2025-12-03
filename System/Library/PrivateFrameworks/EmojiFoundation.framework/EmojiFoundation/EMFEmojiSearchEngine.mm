@interface EMFEmojiSearchEngine
- (EMFEmojiSearchEngine)initWithLocale:(id)locale;
- (EMFEmojiSearchEngine)initWithLocale:(id)locale andAssetBundle:(id)bundle;
- (EMFEmojiSearchEngine)initWithLocale:(id)locale andIndexManager:(id)manager andStringStemmer:(id)stemmer andAutocompleteProvider:(id)provider;
- (id)_performAutocompletedQueryForQuery:(id)query usingIndex:(id)index;
- (id)_performStringQuery:(id)query usingIndex:(id)index shouldAutocomplete:(BOOL)autocomplete shouldStem:(BOOL)stem;
- (id)_performStringQueryOverride:(id)override usingIndex:(id)index;
- (id)_performStringQueryUntokenized:(id)untokenized usingIndex:(id)index;
- (id)performQuery:(id)query usingIndex:(id)index;
- (id)performStringQuery:(id)query;
- (void)dealloc;
- (void)preheat;
@end

@implementation EMFEmojiSearchEngine

- (EMFEmojiSearchEngine)initWithLocale:(id)locale
{
  localeCopy = locale;
  v5 = [EMFSearchEngineBundleLoader assetBundleForLocale:localeCopy];
  if (v5)
  {
    self = [(EMFEmojiSearchEngine *)self initWithLocale:localeCopy andAssetBundle:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (EMFEmojiSearchEngine)initWithLocale:(id)locale andAssetBundle:(id)bundle
{
  localeCopy = locale;
  selfCopy = 0;
  if (localeCopy && bundle)
  {
    bundleCopy = bundle;
    v9 = [[EMFIndexManager alloc] initWithBundle:bundleCopy];
    v10 = [[EMFDefaultAutocompleteCandidateProvider alloc] initWithBundle:bundleCopy];

    if ([EMFStringStemmer supportsLocale:localeCopy])
    {
      v11 = [[EMFStringStemmer alloc] initWithLocale:localeCopy];
    }

    else
    {
      v11 = 0;
    }

    self = [(EMFEmojiSearchEngine *)self initWithLocale:localeCopy andIndexManager:v9 andStringStemmer:v11 andAutocompleteProvider:v10];

    selfCopy = self;
  }

  return selfCopy;
}

- (EMFEmojiSearchEngine)initWithLocale:(id)locale andIndexManager:(id)manager andStringStemmer:(id)stemmer andAutocompleteProvider:(id)provider
{
  localeCopy = locale;
  managerCopy = manager;
  stemmerCopy = stemmer;
  providerCopy = provider;
  v22.receiver = self;
  v22.super_class = EMFEmojiSearchEngine;
  v15 = [(EMFEmojiSearchEngine *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_indexManager, manager);
    objc_storeStrong(&v16->_locale, locale);
    objc_storeStrong(&v16->_stringStemmer, stemmer);
    objc_storeStrong(&v16->_autocompleteProvider, provider);
    [localeCopy localeIdentifier];
    v16->_localeData = CEMCreateEmojiLocaleData();
    v17 = [[EMFQueryLogger alloc] initWithEmojiLocaleData:v16->_localeData];
    queryLogger = v16->_queryLogger;
    v16->_queryLogger = v17;

    v19 = [EMFQueryResultOverrideListLoader overrideListForLocale:localeCopy];
    overrideList = v16->_overrideList;
    v16->_overrideList = v19;

    v16->_enableAutocomplete = 1;
  }

  return v16;
}

- (void)dealloc
{
  localeData = self->_localeData;
  if (localeData)
  {
    CFRelease(localeData);
  }

  v4.receiver = self;
  v4.super_class = EMFEmojiSearchEngine;
  [(EMFEmojiSearchEngine *)&v4 dealloc];
}

- (void)preheat
{
  indexManager = [(EMFEmojiSearchEngine *)self indexManager];
  [indexManager preheatIndexes];
}

- (id)performStringQuery:(id)query
{
  queryCopy = query;
  v5 = emf_signpost_get_log();
  v6 = os_signpost_id_generate(v5);

  v7 = emf_signpost_get_log();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AF04E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PerformSearchEngineQuery", &unk_1AF0BC4C3, buf, 2u);
  }

  indexManager = [(EMFEmojiSearchEngine *)self indexManager];
  stemmedIndex = [indexManager stemmedIndex];

  indexManager2 = [(EMFEmojiSearchEngine *)self indexManager];
  defaultIndex = [indexManager2 defaultIndex];
  if (stemmedIndex)
  {
    v13 = [(EMFEmojiSearchEngine *)self _performStringQueryUntokenized:queryCopy usingIndex:defaultIndex];

    if ([v13 count])
    {
      v13 = v13;
      v14 = 0;
      v15 = v13;
    }

    else
    {
      indexManager3 = [(EMFEmojiSearchEngine *)self indexManager];
      defaultIndex2 = [indexManager3 defaultIndex];
      v18 = [(EMFEmojiSearchEngine *)self _performStringQueryOverride:queryCopy usingIndex:defaultIndex2];

      v14 = v18 != 0;
      if (v18)
      {
        v15 = v18;
      }

      else
      {
        indexManager4 = [(EMFEmojiSearchEngine *)self indexManager];
        defaultIndex3 = [indexManager4 defaultIndex];
        v15 = [(EMFEmojiSearchEngine *)self _performStringQuery:queryCopy usingIndex:defaultIndex3 shouldAutocomplete:1 shouldStem:0];
      }
    }
  }

  else
  {
    v15 = [(EMFEmojiSearchEngine *)self _performStringQuery:queryCopy usingIndex:defaultIndex shouldAutocomplete:1 shouldStem:1];

    v14 = 0;
    v13 = indexManager2;
  }

  v21 = v15;
  v22 = [v21 count];
  v23 = v21;
  if (!v14)
  {
    v23 = v21;
    if (!v22)
    {
      indexManager5 = [(EMFEmojiSearchEngine *)self indexManager];
      stemmedIndex2 = [indexManager5 stemmedIndex];
      v23 = [(EMFEmojiSearchEngine *)self _performStringQuery:queryCopy usingIndex:stemmedIndex2 shouldAutocomplete:0 shouldStem:1];
    }
  }

  v26 = emf_signpost_get_log();
  v27 = v26;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *v31 = 0;
    _os_signpost_emit_with_name_impl(&dword_1AF04E000, v27, OS_SIGNPOST_INTERVAL_END, v6, "PerformSearchEngineQuery", &unk_1AF0BC4C3, v31, 2u);
  }

  v28 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v23];
  array = [v28 array];

  return array;
}

- (id)performQuery:(id)query usingIndex:(id)index
{
  indexCopy = index;
  queryCopy = query;
  v8 = [[EMFQueryEvaluator alloc] initWithIndex:indexCopy andOverrideList:self->_overrideList];

  v9 = [(EMFQueryEvaluator *)v8 performQuery:queryCopy];

  [(EMFQueryLogger *)self->_queryLogger logQueryResult:v9];

  return v9;
}

- (id)_performStringQueryOverride:(id)override usingIndex:(id)index
{
  indexCopy = index;
  overrideCopy = override;
  v8 = [[EMFQueryEvaluator alloc] initWithIndex:indexCopy andOverrideList:self->_overrideList];

  v9 = [[EMFQuery alloc] initWithQueryString:overrideCopy andLocale:self->_locale];
  v10 = [(EMFQueryEvaluator *)v8 performQuery:v9];
  [(EMFQueryLogger *)self->_queryLogger logQueryResult:v10];
  resultOverride = [v10 resultOverride];
  if (resultOverride)
  {
    v12 = [v10 emojiStringMatchesUsingEmojiLocaleData:self->_localeData];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_performStringQueryUntokenized:(id)untokenized usingIndex:(id)index
{
  indexCopy = index;
  untokenizedCopy = untokenized;
  v8 = [[EMFQueryUntokenized alloc] initWithQueryString:untokenizedCopy andLocale:self->_locale];

  if ([(EMFQueryUntokenized *)v8 hasMultipleConstituentTokens])
  {
    v9 = [(EMFEmojiSearchEngine *)self performQuery:v8 usingIndex:indexCopy];
    v10 = [v9 emojiStringMatchesUsingEmojiLocaleData:self->_localeData];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (id)_performStringQuery:(id)query usingIndex:(id)index shouldAutocomplete:(BOOL)autocomplete shouldStem:(BOOL)stem
{
  stemCopy = stem;
  autocompleteCopy = autocomplete;
  indexCopy = index;
  queryCopy = query;
  v12 = [[EMFQuery alloc] initWithQueryString:queryCopy andLocale:self->_locale];

  if (stemCopy && self->_stringStemmer)
  {
    [(EMFQuery *)v12 setStringStemmer:?];
  }

  v13 = [(EMFEmojiSearchEngine *)self performQuery:v12 usingIndex:indexCopy];
  v14 = [v13 emojiStringMatchesUsingEmojiLocaleData:self->_localeData];
  v15 = v14;
  if (autocompleteCopy && self->_enableAutocomplete)
  {
    v16 = [(EMFEmojiSearchEngine *)self _performAutocompletedQueryForQuery:v12 usingIndex:indexCopy];
    v17 = [v15 count];
    v18 = [v16 count];
    if (v18 + v17)
    {
      if ((v18 + v17) >= 0x12C)
      {
        v19 = 300;
      }

      else
      {
        v19 = v18 + v17;
      }

      v20 = [v15 arrayByAddingObjectsFromArray:v16];
      v21 = [v20 subarrayWithRange:{0, v19}];
    }

    else
    {
      v21 = v15;
    }
  }

  else
  {
    v21 = v14;
  }

  return v21;
}

- (id)_performAutocompletedQueryForQuery:(id)query usingIndex:(id)index
{
  queryCopy = query;
  indexCopy = index;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  tokens = [queryCopy tokens];
  v45 = [tokens mutableCopy];

  if (v41[5])
  {
    finalTokenUnanalyzed = [queryCopy finalTokenUnanalyzed];
    if (finalTokenUnanalyzed)
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v11 = [standardUserDefaults integerForKey:@"com.apple.EmojiFoundation.maxResults"];

      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = 300;
      }

      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy_;
      v38 = __Block_byref_object_dispose_;
      v39 = [queryCopy copy];
      [v35[5] reset];
      v32[0] = 0;
      v32[1] = v32;
      v32[2] = 0x3032000000;
      v32[3] = __Block_byref_object_copy_;
      v32[4] = __Block_byref_object_dispose_;
      v33 = 0;
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy_;
      v30 = __Block_byref_object_dispose_;
      v31 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:v12];
      v24[0] = 0;
      v24[1] = v24;
      v24[2] = 0x3032000000;
      v24[3] = __Block_byref_object_copy_;
      v24[4] = __Block_byref_object_dispose_;
      v25 = [[EMFQuery alloc] initWithLocale:self->_locale];
      v22[0] = 0;
      v22[1] = v22;
      v22[2] = 0x3032000000;
      v22[3] = __Block_byref_object_copy_;
      v22[4] = __Block_byref_object_dispose_;
      v13 = objc_alloc(MEMORY[0x1E695DFA8]);
      tokens2 = [queryCopy tokens];
      firstObject = [tokens2 firstObject];
      v23 = [v13 initWithObjects:{firstObject, 0}];

      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x3032000000;
      v20[3] = __Block_byref_object_copy_;
      v20[4] = __Block_byref_object_dispose_;
      v21 = indexCopy;
      autocompleteProvider = [(EMFEmojiSearchEngine *)self autocompleteProvider];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __70__EMFEmojiSearchEngine__performAutocompletedQueryForQuery_usingIndex___block_invoke;
      v19[3] = &unk_1E7A5F678;
      v19[6] = v32;
      v19[7] = v22;
      v19[8] = &v40;
      v19[9] = v24;
      v19[4] = self;
      v19[5] = &v34;
      v19[10] = v20;
      v19[11] = &v26;
      v19[12] = v12;
      [autocompleteProvider enumerateCandidatesMatchingPrefix:finalTokenUnanalyzed withEnumerationType:0 maxCandidates:20 usingBlock:v19];

      array = [v27[5] array];
      _Block_object_dispose(v20, 8);

      _Block_object_dispose(v22, 8);
      _Block_object_dispose(v24, 8);

      _Block_object_dispose(&v26, 8);
      _Block_object_dispose(v32, 8);

      _Block_object_dispose(&v34, 8);
    }

    else
    {
      array = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v40, 8);

  return array;
}

void __70__EMFEmojiSearchEngine__performAutocompletedQueryForQuery_usingIndex___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  [*(*(*(a1 + 40) + 8) + 40) setQueryString:a2];
  v6 = [*(*(*(a1 + 40) + 8) + 40) tokens];
  v7 = [v6 firstObject];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(*(*(a1 + 48) + 8) + 40) && ([*(*(*(a1 + 56) + 8) + 40) containsObject:?] & 1) == 0)
  {
    [*(*(*(a1 + 64) + 8) + 40) removeLastObject];
    [*(*(*(a1 + 64) + 8) + 40) addObject:*(*(*(a1 + 48) + 8) + 40)];
    [*(*(*(a1 + 72) + 8) + 40) setTokens:*(*(*(a1 + 64) + 8) + 40)];
    v16 = [*(a1 + 32) performQuery:*(*(*(a1 + 72) + 8) + 40) usingIndex:*(*(*(a1 + 80) + 8) + 40)];
    v10 = [v16 emojiStringMatchesUsingEmojiLocaleData:*(*(a1 + 32) + 8)];
    v11 = [v10 count];
    v12 = *(a1 + 96);
    v13 = [*(*(*(a1 + 88) + 8) + 40) count];
    if (v11 >= v12 - v13)
    {
      v14 = v12 - v13;
    }

    else
    {
      v14 = v11;
    }

    v15 = [v10 subarrayWithRange:{0, v14}];
    [*(*(*(a1 + 88) + 8) + 40) addObjectsFromArray:v15];
    [*(*(*(a1 + 56) + 8) + 40) addObject:*(*(*(a1 + 48) + 8) + 40)];
    if ([*(*(*(a1 + 88) + 8) + 40) count] == *(a1 + 96))
    {
      *a4 = 1;
    }
  }
}

@end