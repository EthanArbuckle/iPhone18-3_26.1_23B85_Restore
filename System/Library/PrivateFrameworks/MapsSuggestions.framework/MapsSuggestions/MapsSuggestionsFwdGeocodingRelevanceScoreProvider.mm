@interface MapsSuggestionsFwdGeocodingRelevanceScoreProvider
- (BOOL)relevanceScoreForNames:(id)names addresses:(id)addresses mapItems:(id)items completion:(id)completion;
- (NSString)uniqueName;
- (id)initDecoratingRelevanceScoreProvider:(id)provider networkRequester:(id)requester;
@end

@implementation MapsSuggestionsFwdGeocodingRelevanceScoreProvider

- (id)initDecoratingRelevanceScoreProvider:(id)provider networkRequester:(id)requester
{
  providerCopy = provider;
  requesterCopy = requester;
  v12.receiver = self;
  v12.super_class = MapsSuggestionsFwdGeocodingRelevanceScoreProvider;
  v9 = [(MapsSuggestionsFwdGeocodingRelevanceScoreProvider *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_networkRequester, requester);
    objc_storeStrong(p_isa + 2, provider);
  }

  return p_isa;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)relevanceScoreForNames:(id)names addresses:(id)addresses mapItems:(id)items completion:(id)completion
{
  v56 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  addressesCopy = addresses;
  itemsCopy = items;
  completionCopy = completion;
  if (!completionCopy)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v49 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFwdGeocodingRelevanceScoreProvider.m";
      v50 = 1024;
      v51 = 55;
      v52 = 2082;
      v53 = "[MapsSuggestionsFwdGeocodingRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
      v54 = 2082;
      v55 = "nil == (completion)";
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. nil completion", buf, 0x26u);
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v49 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFwdGeocodingRelevanceScoreProvider.m";
        v50 = 1024;
        v51 = 57;
        v52 = 2082;
        v53 = "[MapsSuggestionsFwdGeocodingRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
        v54 = 2082;
        v55 = "[addresses isKindOfClass:[NSMutableArray class]]";
        _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Passing a mutable array for addresses results in undefined behaviour", buf, 0x26u);
      }

      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v49 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFwdGeocodingRelevanceScoreProvider.m";
        v50 = 1024;
        v51 = 58;
        v52 = 2082;
        v53 = "[MapsSuggestionsFwdGeocodingRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
        v54 = 2082;
        v55 = "[mapItems isKindOfClass:[NSMutableArray class]]";
        _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Passing a mutable array for mapItems results in undefined behaviour", buf, 0x26u);
      }

      goto LABEL_16;
    }

    v17 = [namesCopy copy];

    v18 = [addressesCopy copy];
    v19 = [itemsCopy copy];

    if (v19)
    {
      v15 = [(MapsSuggestionsRelevanceScoreProvider *)self->_wrappedScoreProvider relevanceScoreForNames:v17 addresses:v18 mapItems:v19 completion:completionCopy];
      itemsCopy = v19;
LABEL_36:
      addressesCopy = v18;
      namesCopy = v17;
      goto LABEL_17;
    }

    v20 = [v17 count];
    if (v20 != [v18 count])
    {
      itemsCopy = GEOFindOrCreateLog();
      if (os_log_type_enabled(itemsCopy, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v49 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFwdGeocodingRelevanceScoreProvider.m";
        v50 = 1024;
        v51 = 72;
        v52 = 2082;
        v53 = "[MapsSuggestionsFwdGeocodingRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
        v54 = 2082;
        v55 = "[names count] != [addresses count]";
        _os_log_impl(&dword_1C5126000, itemsCopy, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Name and Address count did not match.", buf, 0x26u);
      }

      v15 = 0;
      goto LABEL_36;
    }

    group = dispatch_group_create();
    v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSObject count](v18, "count")}];
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    addressesCopy = v18;
    v21 = [addressesCopy countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v21)
    {
      v22 = *v40;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(addressesCopy);
          }

          v24 = *(*(&v39 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v30 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446978;
              v49 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFwdGeocodingRelevanceScoreProvider.m";
              v50 = 1024;
              v51 = 78;
              v52 = 2082;
              v53 = "[MapsSuggestionsFwdGeocodingRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
              v54 = 2082;
              v55 = "! [address isKindOfClass:[CNPostalAddress class]]";
              _os_log_impl(&dword_1C5126000, v30, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Address is not of type CNPostalAddress!", buf, 0x26u);
            }

            v31 = addressesCopy;
            goto LABEL_40;
          }

          dispatch_group_enter(group);
          networkRequester = self->_networkRequester;
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __106__MapsSuggestionsFwdGeocodingRelevanceScoreProvider_relevanceScoreForNames_addresses_mapItems_completion___block_invoke;
          v35[3] = &unk_1E81F6FD8;
          v36 = v33;
          v37 = group;
          v38 = &v43;
          [(MapsSuggestionsNetworkRequester *)networkRequester forwardGeocodePostalAddress:v24 completion:v35];
        }

        v21 = [addressesCopy countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    GEOConfigGetDouble();
    v27 = dispatch_time(0, (v26 * 1000000000.0));
    if (dispatch_group_wait(group, v27))
    {
      v28 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v28, OS_LOG_TYPE_ERROR, "Timeout on getting mapItems from Fwd Geo", buf, 2u);
      }

      itemsCopy = 0;
      *(v44 + 24) = 0;
      v29 = v17;
    }

    else
    {
      v29 = v17;
      if (v44[3])
      {
        v32 = [v33 count];
        if (v32 != [v17 count])
        {
          v31 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            v49 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFwdGeocodingRelevanceScoreProvider.m";
            v50 = 1024;
            v51 = 111;
            v52 = 2082;
            v53 = "[MapsSuggestionsFwdGeocodingRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
            v54 = 2082;
            v55 = "[mutablemapItems count] != [names count]";
            _os_log_impl(&dword_1C5126000, v31, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Count of mapItems is not the same as input", buf, 0x26u);
          }

LABEL_40:

          itemsCopy = 0;
          v15 = 0;
          goto LABEL_46;
        }

        itemsCopy = [v33 copy];
      }

      else
      {
        itemsCopy = 0;
      }
    }

    v15 = [(MapsSuggestionsRelevanceScoreProvider *)self->_wrappedScoreProvider relevanceScoreForNames:v29 addresses:addressesCopy mapItems:itemsCopy completion:completionCopy];
LABEL_46:
    _Block_object_dispose(&v43, 8);

    namesCopy = v17;
    goto LABEL_17;
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v49 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFwdGeocodingRelevanceScoreProvider.m";
    v50 = 1024;
    v51 = 56;
    v52 = 2082;
    v53 = "[MapsSuggestionsFwdGeocodingRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
    v54 = 2082;
    v55 = "[names isKindOfClass:[NSMutableArray class]]";
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Passing a mutable array for names results in undefined behaviour", buf, 0x26u);
  }

LABEL_16:

  v15 = 0;
LABEL_17:

  return v15;
}

void __106__MapsSuggestionsFwdGeocodingRelevanceScoreProvider_relevanceScoreForNames_addresses_mapItems_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v6;
      v8 = "Error in forwardGeocodePostalAddress:%@";
      v9 = v7;
      v10 = 12;
LABEL_4:
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, v8, &v15, v10);
    }
  }

  else
  {
    if ([v5 count])
    {
      v13 = *(a1 + 32);
      v14 = [v5 firstObject];
      [v13 addObject:v14];

      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_8;
    }

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      v8 = "Recieved 0 mapItems in forwardGeocodePostalAddress";
      v9 = v7;
      v10 = 2;
      goto LABEL_4;
    }
  }

  v11 = *(a1 + 32);
  v12 = [MEMORY[0x1E695DFB0] null];
  [v11 addObject:v12];

LABEL_8:
  dispatch_group_leave(*(a1 + 40));
}

@end