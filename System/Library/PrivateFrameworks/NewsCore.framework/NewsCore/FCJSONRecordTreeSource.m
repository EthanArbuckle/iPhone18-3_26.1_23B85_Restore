@interface FCJSONRecordTreeSource
- (FCJSONRecordTreeSource)initWithContext:(id)a3 jsonRecordSources:(id)a4;
- (void)fetchRecordTreeWithRootIDs:(id)a3 branchKeysByRecordType:(id)a4 cachePolicy:(id)a5 edgeCacheHint:(id)a6 completion:(id)a7;
@end

@implementation FCJSONRecordTreeSource

- (FCJSONRecordTreeSource)initWithContext:(id)a3 jsonRecordSources:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = FCJSONRecordTreeSource;
  v9 = [(FCJSONRecordTreeSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    v11 = [v8 copy];
    jsonRecordSources = v10->_jsonRecordSources;
    v10->_jsonRecordSources = v11;
  }

  return v10;
}

- (void)fetchRecordTreeWithRootIDs:(id)a3 branchKeysByRecordType:(id)a4 cachePolicy:(id)a5 edgeCacheHint:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_alloc_init(FCRecordChainFetchOperation);
  HIDWORD(v18) = qos_class_self() - 9;
  LODWORD(v18) = HIDWORD(v18);
  v19 = 8 * (v18 >> 3) + 9;
  if ((v18 >> 3) >= 4)
  {
    v20 = -1;
  }

  else
  {
    v20 = v19;
  }

  [(FCOperation *)v17 setQualityOfService:v20];
  v21 = [(FCJSONRecordTreeSource *)self context];
  [(FCRecordChainFetchOperation *)v17 setContext:v21];

  v22 = [(FCJSONRecordTreeSource *)self jsonRecordSources];
  [(FCRecordChainFetchOperation *)v17 setAdditionalRecordSources:v22];

  [(FCRecordChainFetchOperation *)v17 setTopLevelRecordIDs:v16];
  [(FCRecordChainFetchOperation *)v17 setLinkKeysByRecordType:v15];

  [(FCRecordChainFetchOperation *)v17 setEdgeCacheHint:v13];
  [(FCRecordChainFetchOperation *)v17 setCachePolicy:v14];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __113__FCJSONRecordTreeSource_fetchRecordTreeWithRootIDs_branchKeysByRecordType_cachePolicy_edgeCacheHint_completion___block_invoke;
  v25[3] = &unk_1E7C379A0;
  v26 = v12;
  v23 = v12;
  [(FCRecordChainFetchOperation *)v17 setRecordChainCompletionHandler:v25];
  v24 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [v24 addOperation:v17];
}

void __113__FCJSONRecordTreeSource_fetchRecordTreeWithRootIDs_branchKeysByRecordType_cachePolicy_edgeCacheHint_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v12[1] = MEMORY[0x1E69E9820];
    v12[2] = 3221225472;
    v12[3] = __113__FCJSONRecordTreeSource_fetchRecordTreeWithRootIDs_branchKeysByRecordType_cachePolicy_edgeCacheHint_completion___block_invoke_2;
    v12[4] = &unk_1E7C37778;
    v7 = &v14;
    v8 = *(a1 + 32);
    v14 = v8;
    v13 = v6;
    v8[2](v8, MEMORY[0x1E695E0F8], v13);
    v9 = v13;
  }

  else
  {
    v10 = MEMORY[0x1E695DF20];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __113__FCJSONRecordTreeSource_fetchRecordTreeWithRootIDs_branchKeysByRecordType_cachePolicy_edgeCacheHint_completion___block_invoke_3;
    v11[3] = &unk_1E7C36EC8;
    v7 = v12;
    v12[0] = v5;
    v9 = [v10 fc_dictionary:v11];
    (*(*(a1 + 32) + 16))();
  }
}

void __113__FCJSONRecordTreeSource_fetchRecordTreeWithRootIDs_branchKeysByRecordType_cachePolicy_edgeCacheHint_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 integerValue] == 9)
        {
          v10 = [*(a1 + 32) objectForKeyedSubscript:v9];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __113__FCJSONRecordTreeSource_fetchRecordTreeWithRootIDs_branchKeysByRecordType_cachePolicy_edgeCacheHint_completion___block_invoke_4;
          v12[3] = &unk_1E7C39628;
          v13 = v3;
          [v10 enumerateRecordsAndInterestTokensWithBlock:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __113__FCJSONRecordTreeSource_fetchRecordTreeWithRootIDs_branchKeysByRecordType_cachePolicy_edgeCacheHint_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 json];
  v4 = *(a1 + 32);
  v5 = [v3 base];

  v6 = [v5 identifier];
  [v4 setObject:v7 forKeyedSubscript:v6];
}

@end