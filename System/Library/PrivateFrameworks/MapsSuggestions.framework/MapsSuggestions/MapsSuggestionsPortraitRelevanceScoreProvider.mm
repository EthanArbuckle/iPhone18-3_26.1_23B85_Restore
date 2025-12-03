@interface MapsSuggestionsPortraitRelevanceScoreProvider
- (MapsSuggestionsPortraitRelevanceScoreProvider)initWithPortrait:(id)portrait;
- (NSString)uniqueName;
- (char)relevanceScoreForNames:(id)names addresses:(id)addresses mapItems:(id)items completion:(id)completion;
- (id).cxx_construct;
- (uint64_t)_searchForName:(uint64_t)name;
- (void)_fetchStringsFromPortrait;
- (void)preLoad;
@end

@implementation MapsSuggestionsPortraitRelevanceScoreProvider

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (MapsSuggestionsPortraitRelevanceScoreProvider)initWithPortrait:(id)portrait
{
  portraitCopy = portrait;
  v26.receiver = self;
  v26.super_class = MapsSuggestionsPortraitRelevanceScoreProvider;
  v6 = [(MapsSuggestionsPortraitRelevanceScoreProvider *)&v26 init];
  if (v6)
  {
    GEOConfigGetDouble();
    v8 = MapsSuggestionsNowWithOffset(-v7);
    fetchEntriesFromDate = v6->_fetchEntriesFromDate;
    v6->_fetchEntriesFromDate = v8;

    portraitData = v6->_portraitData;
    v6->_portraitData = MEMORY[0x1E695E0F0];

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(&v24, @"MapsSuggestionsPortraitRelevanceScoreProviderQueue", v11);
    v12 = v24;
    v24 = 0;
    innerQueue = v6->_queue._innerQueue;
    v6->_queue._innerQueue = v12;

    v14 = v25;
    v25 = 0;
    name = v6->_queue._name;
    v6->_queue._name = v14;

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    currentLocale = v6->_currentLocale;
    v6->_currentLocale = currentLocale;

    v18 = [(NSLocale *)v6->_currentLocale objectForKey:*MEMORY[0x1E695D9B0]];
    languageCode = v6->_languageCode;
    v6->_languageCode = v18;

    mEMORY[0x1E69A1CD8] = [MEMORY[0x1E69A1CD8] sharedConfiguration];
    countryCode = [mEMORY[0x1E69A1CD8] countryCode];
    currentCountryCode = v6->_currentCountryCode;
    v6->_currentCountryCode = countryCode;

    objc_storeStrong(&v6->_portrait, portrait);
  }

  return v6;
}

- (char)relevanceScoreForNames:(id)names addresses:(id)addresses mapItems:(id)items completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  addressesCopy = addresses;
  completionCopy = completion;
  if (MapsSuggestionsLoggingIsVerbose())
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v29 = "[MapsSuggestionsPortraitRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }
  }

  if (!completionCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitRelevanceScoreProvider.mm";
      v30 = 1024;
      v31 = 81;
      v32 = 2082;
      v33 = "[MapsSuggestionsPortraitRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
      v34 = 2082;
      v35 = "nil == (completion)";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. nil completion", buf, 0x26u);
    }

    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitRelevanceScoreProvider.mm";
        v30 = 1024;
        v31 = 83;
        v32 = 2082;
        v33 = "[MapsSuggestionsPortraitRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
        v34 = 2082;
        v35 = "[addresses isKindOfClass:[NSMutableArray class]]";
        _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Passing a mutable array for addresses results in undefined behaviour", buf, 0x26u);
      }

      goto LABEL_25;
    }

    if (!+[MapsSuggestionsSiri isEnabled])
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "User turned off Siri: we're not using Siri Portrait", buf, 2u);
      }

      goto LABEL_25;
    }

    v14 = [namesCopy copy];

    v15 = [addressesCopy copy];
    if (v15)
    {
      v16 = [v14 count];
      if (v16 != [v15 count])
      {
        v17 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitRelevanceScoreProvider.mm";
          v30 = 1024;
          v31 = 96;
          v32 = 2082;
          v33 = "[MapsSuggestionsPortraitRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
          v34 = 2082;
          v35 = "[names count] != [addresses count]";
          _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Inconsistent array counts for name and address", buf, 0x26u);
        }

        goto LABEL_33;
      }
    }

    else if (!v14)
    {
      namesCopy = GEOFindOrCreateLog();
      if (os_log_type_enabled(namesCopy, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitRelevanceScoreProvider.mm";
        v30 = 1024;
        v31 = 98;
        v32 = 2082;
        v33 = "[MapsSuggestionsPortraitRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
        v34 = 2082;
        v35 = "(nil == names) && (nil == addresses)";
        _os_log_impl(&dword_1C5126000, namesCopy, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. names and addresses can't both be nil", buf, 0x26u);
      }

      goto LABEL_26;
    }

    v20 = [v14 count];
    if (v20)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __102__MapsSuggestionsPortraitRelevanceScoreProvider_relevanceScoreForNames_addresses_mapItems_completion___block_invoke;
      v22[3] = &unk_1E8203C10;
      v27 = v20;
      v23 = v14;
      selfCopy = self;
      v25 = v15;
      v26 = completionCopy;
      v21 = v15;
      namesCopy = v14;
      MSg::Queue::async<MapsSuggestionsPortraitRelevanceScoreProvider>(&self->_queue, self, v22);

      v18 = 1;
      goto LABEL_27;
    }

    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "0 names passed", buf, 2u);
    }

LABEL_33:

    v18 = 0;
    namesCopy = v14;
    goto LABEL_27;
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitRelevanceScoreProvider.mm";
    v30 = 1024;
    v31 = 82;
    v32 = 2082;
    v33 = "[MapsSuggestionsPortraitRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
    v34 = 2082;
    v35 = "[names isKindOfClass:[NSMutableArray class]]";
    _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Passing a mutable array for names results in undefined behaviour", buf, 0x26u);
  }

LABEL_25:

LABEL_26:
  v18 = 0;
LABEL_27:

  return v18;
}

void __102__MapsSuggestionsPortraitRelevanceScoreProvider_relevanceScoreForNames_addresses_mapItems_completion___block_invoke(void *a1, void *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v41 = a2;
  v37 = objc_alloc_init(MapsSuggestionsRelevanceScore);
  v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a1[8]];
  v2 = -1;
  while (++v2 < a1[8])
  {
    [v40 addObject:v37];
  }

  if (![v41[2] count])
  {
    goto LABEL_48;
  }

  if (MapsSuggestionsLoggingIsVerbose())
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "User Portrait Data:", buf, 2u);
    }
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v4 = v41[2];
  v5 = [v4 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v5)
  {
    v6 = *v51;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v51 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v50 + 1) + 8 * i);
        if (MapsSuggestionsLoggingIsVerbose())
        {
          v9 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v10 = [v8 name];
            v11 = [v8 lastInteractionTime];
            *buf = 138412546;
            v55 = v10;
            v56 = 2112;
            *v57 = v11;
            _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "%@, %@\n", buf, 0x16u);
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v5);
  }

  v12 = a1[4];
  if (v12)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v46 objects:v61 count:16];
    if (v14)
    {
      v15 = 0;
      v16 = *v47;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v47 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [(MapsSuggestionsPortraitRelevanceScoreProvider *)v41 _searchForName:?];
          if (v18 <= 0x7FFFFFFFFFFFFFFELL)
          {
            v19 = [[MapsSuggestionsRelevanceScore alloc] initWithConfidence:MapsSuggestionsConfidenceDefinitelyTrue()];
            v20 = [*(a1[5] + 16) objectAtIndexedSubscript:v18];
            v21 = [v20 lastInteractionTime];
            [(MapsSuggestionsRelevanceScore *)v19 setLastInteractionTime:v21];

            [v40 setObject:v19 atIndexedSubscript:v15];
          }

          ++v15;
        }

        v14 = [v13 countByEnumeratingWithState:&v46 objects:v61 count:16];
      }

      while (v14);
    }
  }

  v22 = a1[6];
  if (v22)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v22;
    v23 = [obj countByEnumeratingWithState:&v42 objects:v60 count:16];
    if (v23)
    {
      v24 = 0;
      v25 = *v43;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v43 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = [objc_alloc(MEMORY[0x1E69A1B40]) initWithCNPostalAddress:*(*(&v42 + 1) + 8 * k) language:v41[6] country:v41[7] phoneticLocale:v41[6]];
          v28 = [v27 shortAddress];
          if (MapsSuggestionsLoggingIsVerbose())
          {
            v29 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v55 = v28;
              _os_log_impl(&dword_1C5126000, v29, OS_LOG_TYPE_DEBUG, "Converted Address is %@", buf, 0xCu);
            }
          }

          v30 = [v40 objectAtIndexedSubscript:v24];
          [v30 confidence];
          if (v31 < MapsSuggestionsConfidenceDefinitelyTrue())
          {
            v32 = [(MapsSuggestionsPortraitRelevanceScoreProvider *)a1[5] _searchForName:v28];
            if (v32 <= 0x7FFFFFFFFFFFFFFELL)
            {
              v33 = [[MapsSuggestionsRelevanceScore alloc] initWithConfidence:MapsSuggestionsConfidenceDefinitelyTrue()];
              v34 = [*(a1[5] + 16) objectAtIndexedSubscript:v32];
              v35 = [v34 lastInteractionTime];
              [(MapsSuggestionsRelevanceScore *)v33 setLastInteractionTime:v35];

              [v40 setObject:v33 atIndexedSubscript:v24];
            }
          }

          ++v24;
        }

        v23 = [obj countByEnumeratingWithState:&v42 objects:v60 count:16];
      }

      while (v23);
    }
  }

  if ([v40 count] != a1[8])
  {
    v36 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v55 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitRelevanceScoreProvider.mm";
      v56 = 1024;
      *v57 = 166;
      *&v57[4] = 2082;
      *&v57[6] = "[MapsSuggestionsPortraitRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]_block_invoke";
      v58 = 2082;
      v59 = "[confidences count] != count";
      _os_log_impl(&dword_1C5126000, v36, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Return count must be same as input count!", buf, 0x26u);
    }
  }

  else
  {
LABEL_48:
    (*(a1[7] + 16))();
  }
}

- (uint64_t)_searchForName:(uint64_t)name
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!name)
  {
    v10 = 0;
    goto LABEL_24;
  }

  null = [MEMORY[0x1E695DFB0] null];

  if (null == v3)
  {
    v5 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v13 = "Search String null";
LABEL_20:
    v14 = v5;
    v15 = 2;
    goto LABEL_21;
  }

  if (![*(name + 16) count])
  {
    v5 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v13 = "No portrait data";
    goto LABEL_20;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = *(name + 16);
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v19;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      v7 += v6;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        name = [*(*(&v18 + 1) + 8 * v9) name];
        v12 = [name caseInsensitiveCompare:v3] == 0;

        if (v12)
        {
          v16 = GEOFindOrCreateLog();
          [(MapsSuggestionsPortraitRelevanceScoreProvider *)v16 _searchForName:v3];
          goto LABEL_23;
        }

        ++v10;
        ++v9;
      }

      while (v6 != v9);
      v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (!MapsSuggestionsLoggingIsVerbose())
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_24;
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = v3;
    v13 = "String %@ was not found in Portrait";
    v14 = v5;
    v15 = 12;
LABEL_21:
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, v13, buf, v15);
  }

LABEL_22:
  v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_23:

LABEL_24:
  return v10;
}

- (void)preLoad
{
  v6 = *MEMORY[0x1E69E9840];
  if (MapsSuggestionsLoggingIsVerbose())
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = 136315138;
      v5 = "[MapsSuggestionsPortraitRelevanceScoreProvider preLoad]";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v4, 0xCu);
    }
  }

  [(MapsSuggestionsPortraitRelevanceScoreProvider *)self _fetchStringsFromPortrait];
}

void __74__MapsSuggestionsPortraitRelevanceScoreProvider__fetchStringsFromPortrait__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4[8] fetchNamedEntitiesFromDate:v4[1]];
  v3 = v4[2];
  v4[2] = v2;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (void)_fetchStringsFromPortrait
{
  if (self)
  {
    if (+[MapsSuggestionsSiri isEnabled])
    {

      MSg::Queue::async<MapsSuggestionsPortraitRelevanceScoreProvider>(self + 3, self, &__block_literal_global_42);
    }

    else
    {
      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *v3 = 0;
        _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "User turned off Siri: we're not using Siri Portrait", v3, 2u);
      }
    }
  }
}

- (void)_searchForName:(NSObject *)a1 .cold.1(NSObject *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_DEBUG, "String %@ was found in Portrait. Setting High Confidence", &v4, 0xCu);
  }
}

@end