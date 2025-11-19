@interface MapsSuggestionsRealMapsSyncConnector
- (BOOL)allContentOfType:(int64_t)a3 handler:(id)a4;
- (BOOL)allContentOfType:(int64_t)a3 withPredicate:(id)a4 handler:(id)a5;
- (BOOL)queryMapsSyncWithRTMapItemMuid:(unint64_t)a3 name:(id)a4 address:(id)a5 completion:(id)a6;
- (MapsSuggestionsMapsSyncConnectorDelegate)delegate;
- (MapsSuggestionsRealMapsSyncConnector)init;
- (NSString)uniqueName;
- (id)MapsSyncReviewedPlace_fetchWithMuids:(id)a3;
- (id)_predicateForRTMapItemQueryWithMuid:(void *)a3 name:(void *)a4 address:;
- (id)saveNewReviewedPlaceWithMuid:(unint64_t)a3 lastSuggestedReviewDate:(id)a4;
- (void)deleteObjects:(id)a3 completion:(id)a4;
- (void)storeDidChange:(id)a3;
@end

@implementation MapsSuggestionsRealMapsSyncConnector

- (MapsSuggestionsRealMapsSyncConnector)init
{
  v8[6] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MapsSuggestionsRealMapsSyncConnector;
  v2 = [(MapsSuggestionsRealMapsSyncConnector *)&v7 init];
  if (v2)
  {
    v8[0] = objc_opt_class();
    v8[1] = objc_opt_class();
    v8[2] = objc_opt_class();
    v8[3] = objc_opt_class();
    v8[4] = objc_opt_class();
    v8[5] = objc_opt_class();
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:6];
    storeSubscriptionTypes = v2->storeSubscriptionTypes;
    v2->storeSubscriptionTypes = v3;

    v5 = [MEMORY[0x1E69AE100] sharedStore];
    [v5 subscribe:v2];
  }

  return v2;
}

- (MapsSuggestionsMapsSyncConnectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)MapsSyncReviewedPlace_fetchWithMuids:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69AE0F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithOffset:0 limit:1];
  v6 = MEMORY[0x1E69AE110];
  v15[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v8 = [v6 queryPredicateWithFormat:@"muid IN %@" argumentArray:v7];

  v9 = [objc_alloc(MEMORY[0x1E69AE108]) initWithPredicate:v8 sortDescriptors:0 range:v5];
  v10 = objc_alloc_init(MEMORY[0x1E69AE0F0]);
  v14 = 0;
  v11 = [v10 fetchSyncWithOptions:v9 error:&v14];
  v12 = [v11 firstObject];

  return v12;
}

- (id)saveNewReviewedPlaceWithMuid:(unint64_t)a3 lastSuggestedReviewDate:(id)a4
{
  v5 = MEMORY[0x1E69AE0E8];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  v8 = objc_alloc_init(MEMORY[0x1E69AE090]);
  [v7 setAnonymousCredential:v8];

  [v7 setMuid:a3];
  [v7 setLastSuggestedReviewDate:v6];

  if (v7)
  {
    v9 = v7;
  }

  return v7;
}

- (BOOL)allContentOfType:(int64_t)a3 withPredicate:(id)a4 handler:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if (!v8)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v27 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealMapsSyncConnector.m";
      v28 = 1024;
      v29 = 84;
      v30 = 2082;
      v31 = "[MapsSuggestionsRealMapsSyncConnector allContentOfType:withPredicate:handler:]";
      v32 = 2082;
      v33 = "nil == (handler)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_18:
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x26u);
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v27 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealMapsSyncConnector.m";
        v28 = 1024;
        v29 = 115;
        v30 = 2082;
        v31 = "[MapsSuggestionsRealMapsSyncConnector allContentOfType:withPredicate:handler:]";
        v32 = 2082;
        v33 = "YES";
        v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. MapsSuggestionsMapsSyncTypeUnknown does not make sense";
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (a3 == 1)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69AE0D0]);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __79__MapsSuggestionsRealMapsSyncConnector_allContentOfType_withPredicate_handler___block_invoke;
      v23[3] = &unk_1E81F5230;
      v24 = v8;
      [v9 fetchWithCompletionHandler:v23];

      v10 = 1;
      v11 = v24;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (a3 == 2)
  {
    v17 = objc_alloc_init(MEMORY[0x1E69AE0A0]);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __79__MapsSuggestionsRealMapsSyncConnector_allContentOfType_withPredicate_handler___block_invoke_2;
    v21[3] = &unk_1E81F5230;
    v22 = v8;
    [v17 fetchWithCompletionHandler:v21];

    v10 = 1;
    v11 = v22;
    goto LABEL_20;
  }

  if (a3 != 3)
  {
LABEL_14:
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v27 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealMapsSyncConnector.m";
      v28 = 1024;
      v29 = 118;
      v30 = 2082;
      v31 = "[MapsSuggestionsRealMapsSyncConnector allContentOfType:withPredicate:handler:]";
      v32 = 2082;
      v33 = "YES";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Missing a MapsSuggestionsMapsSyncType in allContentOfType:";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (MapsSuggestionsMyPlacesEnabled_onceToken != -1)
  {
    [MapsSuggestionsRealMapsSyncConnector allContentOfType:withPredicate:handler:];
  }

  if (MapsSuggestionsMyPlacesEnabled_result == 1)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"positionIndex" ascending:1];
    v14 = objc_alloc(MEMORY[0x1E69AE108]);
    v25 = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v11 = [v14 initWithPredicate:v7 sortDescriptors:v15 range:0];
  }

  else
  {
    v11 = 0;
  }

  v18 = objc_alloc_init(MEMORY[0x1E69AE0B0]);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__MapsSuggestionsRealMapsSyncConnector_allContentOfType_withPredicate_handler___block_invoke_3;
  v19[3] = &unk_1E81F5230;
  v20 = v8;
  [v18 fetchWithOptions:v11 completionHandler:v19];

  v10 = 1;
LABEL_20:

  return v10;
}

void __79__MapsSuggestionsRealMapsSyncConnector_allContentOfType_withPredicate_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = MEMORY[0x1E695E0F0];
    v6 = *(a1 + 32);

    v4(v6, v5);
  }

  else
  {
    v7 = [a2 copy];
    (*(v3 + 16))(v3, v7);
  }
}

void __79__MapsSuggestionsRealMapsSyncConnector_allContentOfType_withPredicate_handler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = MEMORY[0x1E695E0F0];
    v6 = *(a1 + 32);

    v4(v6, v5);
  }

  else
  {
    v7 = [a2 copy];
    (*(v3 + 16))(v3, v7);
  }
}

void __79__MapsSuggestionsRealMapsSyncConnector_allContentOfType_withPredicate_handler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = MEMORY[0x1E695E0F0];
    v6 = *(a1 + 32);

    v4(v6, v5);
  }

  else
  {
    v7 = [a2 copy];
    (*(v3 + 16))(v3, v7);
  }
}

- (BOOL)allContentOfType:(int64_t)a3 handler:(id)a4
{
  v6 = a4;
  if (a3 == 3)
  {
    v7 = [MEMORY[0x1E69AE110] mapsFavoritesPredicateWithHidden:0 includeNearbyTransit:0];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MapsSuggestionsRealMapsSyncConnector *)self allContentOfType:a3 withPredicate:v7 handler:v6];

  return v8;
}

- (void)deleteObjects:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x1E69AE100];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedStore];
  [v8 deleteWithObjects:v7 completionHandler:v6];
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)storeDidChange:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "queryContentsDidChangeWithTypes: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    if (v7)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = v4;
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v9)
      {
        goto LABEL_23;
      }

      v10 = v9;
      v11 = *v16;
      while (1)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([v13 isSubclassOfClass:{objc_opt_class(), v15}])
          {
            v14 = 1;
          }

          else if (v13 == objc_opt_class())
          {
            v14 = 2;
          }

          else
          {
            if (v13 != objc_opt_class())
            {
              continue;
            }

            v14 = 3;
          }

          [v7 mapsSyncDidChangeForType:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (!v10)
        {
          goto LABEL_23;
        }
      }
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "MapsSuggestionsRealMapsSyncConnector.m";
      v22 = 1026;
      v23 = 148;
      v24 = 2082;
      v25 = "[MapsSuggestionsRealMapsSyncConnector storeDidChange:]";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: delegate went away in %{public}s", buf, 0x1Cu);
    }

LABEL_23:
  }
}

void __95__MapsSuggestionsRealMapsSyncConnector_queryMapsSyncWithRTMapItemMuid_name_address_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0);
  }

  else
  {
    v7 = [a2 firstObject];
    v6 = [v7 mapItemStorage];
    (*(v3 + 16))(v3, v6);
  }
}

- (id)_predicateForRTMapItemQueryWithMuid:(void *)a3 name:(void *)a4 address:
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a1)
  {
    if (a2)
    {
      v10 = MEMORY[0x1E69AE110];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
      v16[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      a1 = [v10 queryPredicateWithFormat:@"muid == %@" argumentArray:v12];

LABEL_7:
      goto LABEL_8;
    }

    a1 = 0;
    if (v7 && v8)
    {
      v13 = MEMORY[0x1E69AE110];
      v15[0] = v7;
      v15[1] = v8;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
      a1 = [v13 queryPredicateWithFormat:@"mapItemName == %@ AND mapItemAddress == %@" argumentArray:v11];
      goto LABEL_7;
    }
  }

LABEL_8:

  return a1;
}

- (BOOL)queryMapsSyncWithRTMapItemMuid:(unint64_t)a3 name:(id)a4 address:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = MEMORY[0x1E69AE0F8];
  v12 = a5;
  v13 = a4;
  v14 = [[v11 alloc] initWithOffset:0 limit:1];
  v15 = [(MapsSuggestionsRealMapsSyncConnector *)self _predicateForRTMapItemQueryWithMuid:a3 name:v13 address:v12];

  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E69AE108]) initWithPredicate:v15 sortDescriptors:0 range:v14];
    v17 = objc_alloc_init(MEMORY[0x1E69AE0B0]);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __95__MapsSuggestionsRealMapsSyncConnector_queryMapsSyncWithRTMapItemMuid_name_address_completion___block_invoke;
    v19[3] = &unk_1E81F5230;
    v20 = v10;
    [v17 fetchWithOptions:v16 completionHandler:v19];
  }

  return v15 != 0;
}

@end