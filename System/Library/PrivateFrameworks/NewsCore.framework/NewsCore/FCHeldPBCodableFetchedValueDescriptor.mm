@interface FCHeldPBCodableFetchedValueDescriptor
- (BOOL)isValue:(id)a3 equalToValue:(id)a4;
- (FCHeldPBCodableFetchedValueDescriptor)init;
- (FCHeldPBCodableFetchedValueDescriptor)initWithCodableClass:(Class)a3 contentContext:(id)a4 resourceConfigurationManager:(id)a5;
- (id)fastCachedValue;
- (id)inputManagers;
- (void)_processFetchOperationResult:(id)a3 withBlock:(id)a4;
- (void)fetchValueWithCachePolicy:(unint64_t)a3 qualityOfService:(int64_t)a4 completion:(id)a5;
@end

@implementation FCHeldPBCodableFetchedValueDescriptor

- (id)fastCachedValue
{
  v20[1] = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__63;
  v18 = __Block_byref_object_dispose__63;
  v19 = 0;
  v3 = [(FCHeldPBCodableFetchedValueDescriptor *)self resourceConfigurationManager];
  v4 = [v3 value];

  if (v4)
  {
    v5 = [FCResourcesFetchOperation alloc];
    v6 = [(FCHeldPBCodableFetchedValueDescriptor *)self contentContext];
    v7 = [v4 resourceID];
    v20[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v9 = [(FCResourcesFetchOperation *)v5 initWithContext:v6 resourceIDs:v8 downloadAssets:0];

    [(FCFetchOperation *)v9 setCachePolicy:3];
    [(FCFetchOperation *)v9 setCanSendFetchCompletionSynchronously:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__FCHeldPBCodableFetchedValueDescriptor_fastCachedValue__block_invoke;
    v13[3] = &unk_1E7C44468;
    v13[4] = self;
    v13[5] = &v14;
    [(FCFetchOperation *)v9 setFetchCompletionBlock:v13];
    [(FCOperation *)v9 start];
    [(FCResourcesFetchOperation *)v9 waitUntilFinished];
  }

  v10 = v15[5];

  _Block_object_dispose(&v14, 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

uint64_t __56__FCHeldPBCodableFetchedValueDescriptor_fastCachedValue__block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__FCHeldPBCodableFetchedValueDescriptor_fastCachedValue__block_invoke_2;
  v4[3] = &unk_1E7C44440;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [v2 _processFetchOperationResult:a2 withBlock:v4];
}

uint64_t __56__FCHeldPBCodableFetchedValueDescriptor_fastCachedValue__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (id)inputManagers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(FCHeldPBCodableFetchedValueDescriptor *)self resourceConfigurationManager];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (FCHeldPBCodableFetchedValueDescriptor)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCHeldPBCodableFetchedValueDescriptor init]";
    v10 = 2080;
    v11 = "FCHeldPBCodableFetchedValueDescriptor.m";
    v12 = 1024;
    v13 = 28;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCHeldPBCodableFetchedValueDescriptor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCHeldPBCodableFetchedValueDescriptor)initWithCodableClass:(Class)a3 contentContext:(id)a4 resourceConfigurationManager:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  if (!a3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "codableClass"];
    *buf = 136315906;
    v20 = "[FCHeldPBCodableFetchedValueDescriptor initWithCodableClass:contentContext:resourceConfigurationManager:]";
    v21 = 2080;
    v22 = "FCHeldPBCodableFetchedValueDescriptor.m";
    v23 = 1024;
    v24 = 35;
    v25 = 2114;
    v26 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
    *buf = 136315906;
    v20 = "[FCHeldPBCodableFetchedValueDescriptor initWithCodableClass:contentContext:resourceConfigurationManager:]";
    v21 = 2080;
    v22 = "FCHeldPBCodableFetchedValueDescriptor.m";
    v23 = 1024;
    v24 = 36;
    v25 = 2114;
    v26 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "resourceConfigurationManager"];
    *buf = 136315906;
    v20 = "[FCHeldPBCodableFetchedValueDescriptor initWithCodableClass:contentContext:resourceConfigurationManager:]";
    v21 = 2080;
    v22 = "FCHeldPBCodableFetchedValueDescriptor.m";
    v23 = 1024;
    v24 = 37;
    v25 = 2114;
    v26 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v18.receiver = self;
  v18.super_class = FCHeldPBCodableFetchedValueDescriptor;
  v11 = [(FCFetchedValueDescriptor *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_codableClass = a3;
    objc_storeStrong(&v11->_contentContext, a4);
    objc_storeStrong(&v12->_resourceConfigurationManager, a5);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)fetchValueWithCachePolicy:(unint64_t)a3 qualityOfService:(int64_t)a4 completion:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (a3)
  {
    v9 = a3 == 1;
  }

  else
  {
    v9 = 5;
  }

  v10 = [(FCHeldPBCodableFetchedValueDescriptor *)self resourceConfigurationManager];
  v11 = [v10 value];

  v12 = [FCResourcesFetchOperation alloc];
  v13 = [(FCHeldPBCodableFetchedValueDescriptor *)self contentContext];
  v14 = [v11 resourceID];
  v25[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v16 = [(FCResourcesFetchOperation *)v12 initWithContext:v13 resourceIDs:v15 downloadAssets:1];

  [(FCOperation *)v16 setQualityOfService:a4];
  [(FCFetchOperation *)v16 setCachePolicy:v9];
  -[FCFetchOperation setMaximumCachedAge:](v16, "setMaximumCachedAge:", [v11 refreshRate]);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __95__FCHeldPBCodableFetchedValueDescriptor_fetchValueWithCachePolicy_qualityOfService_completion___block_invoke;
  v22 = &unk_1E7C37B98;
  v23 = self;
  v24 = v8;
  v17 = v8;
  [(FCFetchOperation *)v16 setFetchCompletionBlock:&v19];
  [(FCOperation *)v16 start:v19];

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)isValue:(id)a3 equalToValue:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "left"];
    *buf = 136315906;
    v15 = "[FCHeldPBCodableFetchedValueDescriptor isValue:equalToValue:]";
    v16 = 2080;
    v17 = "FCHeldPBCodableFetchedValueDescriptor.m";
    v18 = 1024;
    v19 = 121;
    v20 = 2114;
    v21 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "right"];
    *buf = 136315906;
    v15 = "[FCHeldPBCodableFetchedValueDescriptor isValue:equalToValue:]";
    v16 = 2080;
    v17 = "FCHeldPBCodableFetchedValueDescriptor.m";
    v18 = 1024;
    v19 = 122;
    v20 = 2114;
    v21 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v7 = [v5 first];
  v8 = [v6 first];
  v9 = [v7 isEqual:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_processFetchOperationResult:(id)a3 withBlock:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "result"];
    *buf = 136315906;
    v22 = "[FCHeldPBCodableFetchedValueDescriptor _processFetchOperationResult:withBlock:]";
    v23 = 2080;
    v24 = "FCHeldPBCodableFetchedValueDescriptor.m";
    v25 = 1024;
    v26 = 130;
    v27 = 2114;
    v28 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    v22 = "[FCHeldPBCodableFetchedValueDescriptor _processFetchOperationResult:withBlock:]";
    v23 = 2080;
    v24 = "FCHeldPBCodableFetchedValueDescriptor.m";
    v25 = 1024;
    v26 = 131;
    v27 = 2114;
    v28 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v8 = [v6 error];
  if (v8)
  {
    v7[2](v7, 0, v8);
  }

  else
  {
    v9 = [v6 fetchedObject];
    v10 = [v9 fc_onlyObject];
    v11 = objc_alloc(MEMORY[0x1E695DEF0]);
    v12 = [v10 fileURL];
    v13 = [v11 initWithContentsOfURL:v12];

    v14 = [objc_alloc(-[FCHeldPBCodableFetchedValueDescriptor codableClass](self "codableClass"))];
    v15 = [FCShallowCopyPair alloc];
    v16 = [v10 assetHandle];
    v17 = [(FCPair *)v15 initWithFirst:v14 second:v16];

    (v7)[2](v7, v17, 0);
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end