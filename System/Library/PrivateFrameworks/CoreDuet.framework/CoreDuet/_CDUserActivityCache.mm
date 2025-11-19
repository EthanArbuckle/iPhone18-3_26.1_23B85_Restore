@interface _CDUserActivityCache
- (BOOL)containsObjectForSourceID:(id)a3 bundleID:(id)a4 itemID:(id)a5;
- (_CDUserActivityCache)initWithKnowledgeStore:(id)a3;
- (id)hashArrayForSourceID:(id)a3 bundleID:(id)a4 itemID:(id)a5;
- (unsigned)count;
- (void)_populateAppActivityStream;
- (void)_populateAppLocationActivityStream;
- (void)addSourceID:(id)a3 bundleID:(id)a4 itemID:(id)a5;
- (void)populateCache;
@end

@implementation _CDUserActivityCache

- (_CDUserActivityCache)initWithKnowledgeStore:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _CDUserActivityCache;
  v6 = [(_CDUserActivityCache *)&v12 init];
  if (v6)
  {
    LODWORD(v7) = 953267991;
    v8 = [MEMORY[0x1E69C5CC8] bloomFilterInMemoryWithNumberOfValuesN:13355 errorRateP:v7];
    v9 = [objc_alloc(MEMORY[0x1E69C5D60]) initWithGuardedData:v8];
    deletionCache = v6->_deletionCache;
    v6->_deletionCache = v9;

    objc_storeStrong(&v6->_knowledgeStore, a3);
    v6->_count = 0;
  }

  return v6;
}

- (unsigned)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  deletionCache = self->_deletionCache;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29___CDUserActivityCache_count__block_invoke;
  v5[3] = &unk_1E7369A60;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)deletionCache runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)hashArrayForSourceID:(id)a3 bundleID:(id)a4 itemID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = &stru_1F05B9908;
  }

  v12 = v11;
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = &stru_1F05B9908;
  }

  v14 = v13;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__16;
  v30 = __Block_byref_object_dispose__16;
  v31 = 0;
  deletionCache = self->_deletionCache;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61___CDUserActivityCache_hashArrayForSourceID_bundleID_itemID___block_invoke;
  v21[3] = &unk_1E7369A88;
  v25 = &v26;
  v16 = v12;
  v22 = v16;
  v17 = v14;
  v23 = v17;
  v18 = v10;
  v24 = v18;
  [(_PASLock *)deletionCache runWithLockAcquired:v21];
  v19 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v19;
}

- (void)addSourceID:(id)a3 bundleID:(id)a4 itemID:(id)a5
{
  v6 = [(_CDUserActivityCache *)self hashArrayForSourceID:a3 bundleID:a4 itemID:a5];
  deletionCache = self->_deletionCache;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52___CDUserActivityCache_addSourceID_bundleID_itemID___block_invoke;
  v9[3] = &unk_1E7369AB0;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [(_PASLock *)deletionCache runWithLockAcquired:v9];
}

- (BOOL)containsObjectForSourceID:(id)a3 bundleID:(id)a4 itemID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_CDUserActivityCache *)self hashArrayForSourceID:v8 bundleID:v9 itemID:v10];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  deletionCache = self->_deletionCache;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66___CDUserActivityCache_containsObjectForSourceID_bundleID_itemID___block_invoke;
  v15[3] = &unk_1E7369A60;
  v17 = &v18;
  v13 = v11;
  v16 = v13;
  [(_PASLock *)deletionCache runWithLockAcquired:v15];
  LOBYTE(deletionCache) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return deletionCache;
}

- (void)_populateAppActivityStream
{
  v2 = 0;
  v37[1] = *MEMORY[0x1E69E9840];
  do
  {
    context = objc_autoreleasePoolPush();
    v3 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    v4 = +[_DKSystemEventStreams appActivityStream];
    v37[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    v29 = v2;
    v6 = [_DKEventQuery eventQueryWithPredicate:v3 eventStreams:v5 offset:v2 limit:100 sortDescriptors:0];

    knowledgeStore = self->_knowledgeStore;
    v35 = 0;
    v27 = v6;
    v8 = [(_DKKnowledgeQuerying *)knowledgeStore executeQuery:v6 error:&v35];
    v25 = v35;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = 0;
    if (isKindOfClass)
    {
      v10 = v8;
    }

    v26 = v8;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          v17 = [v16 source];
          v18 = [v17 sourceID];
          v19 = [v16 source];
          v20 = [v19 bundleID];
          v21 = [v16 source];
          v22 = [v21 itemID];
          [(_CDUserActivityCache *)self addSourceID:v18 bundleID:v20 itemID:v22];
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v13);
    }

    v2 = v29 + 100;

    v23 = [v11 count];
    objc_autoreleasePoolPop(context);
  }

  while (v23 > 0x63);
  v24 = *MEMORY[0x1E69E9840];
}

- (void)_populateAppLocationActivityStream
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v4 = +[_DKSystemEventStreams appLocationActivityStream];
  v15[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v6 = [_DKEventQuery eventQueryWithPredicate:v3 eventStreams:v5 offset:0 limit:0 sortDescriptors:0];

  v7 = [[_DKBiomeQuery alloc] initWithDKEventQuery:v6];
  v14 = 0;
  v8 = [(_DKBiomeQuery *)v7 publisherForQueryWithError:&v14];
  v9 = v14;
  v10 = objc_autoreleasePoolPush();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58___CDUserActivityCache__populateAppLocationActivityStream__block_invoke_2;
  v13[3] = &unk_1E7369AD8;
  v13[4] = self;
  v11 = [v8 sinkWithCompletion:&__block_literal_global_49 receiveInput:v13];
  objc_autoreleasePoolPop(v10);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)populateCache
{
  v3 = objc_autoreleasePoolPush();
  [(_CDUserActivityCache *)self _populateAppActivityStream];
  [(_CDUserActivityCache *)self _populateAppLocationActivityStream];

  objc_autoreleasePoolPop(v3);
}

@end