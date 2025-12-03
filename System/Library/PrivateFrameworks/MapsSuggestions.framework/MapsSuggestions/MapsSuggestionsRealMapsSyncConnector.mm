@interface MapsSuggestionsRealMapsSyncConnector
- (BOOL)allContentOfType:(int64_t)type handler:(id)handler;
- (BOOL)allContentOfType:(int64_t)type withPredicate:(id)predicate handler:(id)handler;
- (BOOL)queryMapsSyncWithRTMapItemMuid:(unint64_t)muid name:(id)name address:(id)address completion:(id)completion;
- (MapsSuggestionsMapsSyncConnectorDelegate)delegate;
- (MapsSuggestionsRealMapsSyncConnector)init;
- (NSString)uniqueName;
- (id)MapsSyncReviewedPlace_fetchWithMuids:(id)muids;
- (id)_predicateForRTMapItemQueryWithMuid:(void *)muid name:(void *)name address:;
- (id)saveNewReviewedPlaceWithMuid:(unint64_t)muid lastSuggestedReviewDate:(id)date;
- (void)deleteObjects:(id)objects completion:(id)completion;
- (void)storeDidChange:(id)change;
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

    mEMORY[0x1E69AE100] = [MEMORY[0x1E69AE100] sharedStore];
    [mEMORY[0x1E69AE100] subscribe:v2];
  }

  return v2;
}

- (MapsSuggestionsMapsSyncConnectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)MapsSyncReviewedPlace_fetchWithMuids:(id)muids
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69AE0F8];
  muidsCopy = muids;
  v5 = [[v3 alloc] initWithOffset:0 limit:1];
  v6 = MEMORY[0x1E69AE110];
  v15[0] = muidsCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v8 = [v6 queryPredicateWithFormat:@"muid IN %@" argumentArray:v7];

  v9 = [objc_alloc(MEMORY[0x1E69AE108]) initWithPredicate:v8 sortDescriptors:0 range:v5];
  v10 = objc_alloc_init(MEMORY[0x1E69AE0F0]);
  v14 = 0;
  v11 = [v10 fetchSyncWithOptions:v9 error:&v14];
  firstObject = [v11 firstObject];

  return firstObject;
}

- (id)saveNewReviewedPlaceWithMuid:(unint64_t)muid lastSuggestedReviewDate:(id)date
{
  v5 = MEMORY[0x1E69AE0E8];
  dateCopy = date;
  v7 = objc_alloc_init(v5);
  v8 = objc_alloc_init(MEMORY[0x1E69AE090]);
  [v7 setAnonymousCredential:v8];

  [v7 setMuid:muid];
  [v7 setLastSuggestedReviewDate:dateCopy];

  if (v7)
  {
    v9 = v7;
  }

  return v7;
}

- (BOOL)allContentOfType:(int64_t)type withPredicate:(id)predicate handler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  handlerCopy = handler;
  if (!handlerCopy)
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

  if (type <= 1)
  {
    if (!type)
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

    if (type == 1)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69AE0D0]);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __79__MapsSuggestionsRealMapsSyncConnector_allContentOfType_withPredicate_handler___block_invoke;
      v23[3] = &unk_1E81F5230;
      v24 = handlerCopy;
      [v9 fetchWithCompletionHandler:v23];

      v10 = 1;
      v11 = v24;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (type == 2)
  {
    v17 = objc_alloc_init(MEMORY[0x1E69AE0A0]);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __79__MapsSuggestionsRealMapsSyncConnector_allContentOfType_withPredicate_handler___block_invoke_2;
    v21[3] = &unk_1E81F5230;
    v22 = handlerCopy;
    [v17 fetchWithCompletionHandler:v21];

    v10 = 1;
    v11 = v22;
    goto LABEL_20;
  }

  if (type != 3)
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
    v11 = [v14 initWithPredicate:predicateCopy sortDescriptors:v15 range:0];
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
  v20 = handlerCopy;
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

- (BOOL)allContentOfType:(int64_t)type handler:(id)handler
{
  handlerCopy = handler;
  if (type == 3)
  {
    v7 = [MEMORY[0x1E69AE110] mapsFavoritesPredicateWithHidden:0 includeNearbyTransit:0];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MapsSuggestionsRealMapsSyncConnector *)self allContentOfType:type withPredicate:v7 handler:handlerCopy];

  return v8;
}

- (void)deleteObjects:(id)objects completion:(id)completion
{
  v5 = MEMORY[0x1E69AE100];
  completionCopy = completion;
  objectsCopy = objects;
  sharedStore = [v5 sharedStore];
  [sharedStore deleteWithObjects:objectsCopy completionHandler:completionCopy];
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)storeDidChange:(id)change
{
  v26 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = changeCopy;
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
      v8 = changeCopy;
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

- (id)_predicateForRTMapItemQueryWithMuid:(void *)muid name:(void *)name address:
{
  v16[1] = *MEMORY[0x1E69E9840];
  muidCopy = muid;
  nameCopy = name;
  v9 = nameCopy;
  if (self)
  {
    if (a2)
    {
      v10 = MEMORY[0x1E69AE110];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
      v16[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      self = [v10 queryPredicateWithFormat:@"muid == %@" argumentArray:v12];

LABEL_7:
      goto LABEL_8;
    }

    self = 0;
    if (muidCopy && nameCopy)
    {
      v13 = MEMORY[0x1E69AE110];
      v15[0] = muidCopy;
      v15[1] = nameCopy;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
      self = [v13 queryPredicateWithFormat:@"mapItemName == %@ AND mapItemAddress == %@" argumentArray:v11];
      goto LABEL_7;
    }
  }

LABEL_8:

  return self;
}

- (BOOL)queryMapsSyncWithRTMapItemMuid:(unint64_t)muid name:(id)name address:(id)address completion:(id)completion
{
  completionCopy = completion;
  v11 = MEMORY[0x1E69AE0F8];
  addressCopy = address;
  nameCopy = name;
  v14 = [[v11 alloc] initWithOffset:0 limit:1];
  v15 = [(MapsSuggestionsRealMapsSyncConnector *)self _predicateForRTMapItemQueryWithMuid:muid name:nameCopy address:addressCopy];

  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E69AE108]) initWithPredicate:v15 sortDescriptors:0 range:v14];
    v17 = objc_alloc_init(MEMORY[0x1E69AE0B0]);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __95__MapsSuggestionsRealMapsSyncConnector_queryMapsSyncWithRTMapItemMuid_name_address_completion___block_invoke;
    v19[3] = &unk_1E81F5230;
    v20 = completionCopy;
    [v17 fetchWithOptions:v16 completionHandler:v19];
  }

  return v15 != 0;
}

@end