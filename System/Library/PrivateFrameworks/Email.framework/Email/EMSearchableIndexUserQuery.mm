@interface EMSearchableIndexUserQuery
- (EMSearchableIndexUserQuery)initWithExpression:(id)a3 builder:(id)a4;
@end

@implementation EMSearchableIndexUserQuery

- (EMSearchableIndexUserQuery)initWithExpression:(id)a3 builder:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__EMSearchableIndexUserQuery_initWithExpression_builder___block_invoke;
  aBlock[3] = &unk_1E826F970;
  v8 = v6;
  v23 = v8;
  v9 = self;
  v24 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [v8 updatedSuggestion];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [MEMORY[0x1E6964EA8] emptySuggestion];
  }

  v14 = v13;

  v15 = [MEMORY[0x1E6964ED0] userQueryContextWithCurrentSuggestion:v14];
  v16 = +[EMSearchableIndexQuery log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v8 ef_publicDescription];
    *buf = 138478083;
    v26 = v17;
    v27 = 2113;
    v28 = v15;
    _os_log_impl(&dword_1C6655000, v16, OS_LOG_TYPE_DEFAULT, "Setting user query with expression: %{private}@ context: %{private}@", buf, 0x16u);
  }

  v21.receiver = v9;
  v21.super_class = EMSearchableIndexUserQuery;
  v18 = [(EMSearchableIndexQuery *)&v21 initWithExpression:v8 builder:v7 queryContext:v15 querySetup:v10];

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

id __57__EMSearchableIndexUserQuery_initWithExpression_builder___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) searchString];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F45FD218;
  }

  [v3 setUserQuery:v6];

  [v3 setLowPriority:0];
  v7 = [*(a1 + 32) queryString];
  v19[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v3 setFilterQueries:v8];

  v9 = objc_alloc(MEMORY[0x1E6964EC8]);
  v10 = [*(a1 + 32) searchString];
  v11 = [v9 initWithUserQueryString:v10 queryContext:v3];

  v12 = [*(a1 + 40) embeddingBlock];
  if (v12)
  {
    objc_initWeak(&location, *(a1 + 40));
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__EMSearchableIndexUserQuery_initWithExpression_builder___block_invoke_2;
    v15[3] = &unk_1E826F948;
    objc_copyWeak(&v17, &location);
    v16 = v12;
    [v11 setAttributedQueryHandler:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  [*(a1 + 40) setEmbeddingBlock:0];

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

void __57__EMSearchableIndexUserQuery_initWithExpression_builder___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained query];
    v7 = [v6 queryContext];
    v8 = [v7 queryEmbedding];

    v9 = +[EMSearchableIndexQuery log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 logPrefixString];
      *buf = 138543874;
      v16 = v10;
      v17 = 1024;
      v18 = v8 != 0;
      v19 = 1024;
      v20 = [v3 isUnsafeQuery];
      _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ hasQueryEmbedding: %{BOOL}d, isUnsafeQuery: %{BOOL}d", buf, 0x18u);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__EMSearchableIndexUserQuery_initWithExpression_builder___block_invoke_486;
    v12[3] = &unk_1E826E770;
    v13 = *(a1 + 32);
    v14 = v8 != 0;
    [v5 _performClientWork:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end