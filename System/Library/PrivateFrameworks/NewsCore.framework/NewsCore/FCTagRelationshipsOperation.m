@interface FCTagRelationshipsOperation
- (FCTagRelationshipsOperation)initWithContext:(id)a3 tag:(id)a4;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCTagRelationshipsOperation

- (FCTagRelationshipsOperation)initWithContext:(id)a3 tag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = FCTagRelationshipsOperation;
  v9 = [(FCOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    v11 = [v8 copy];
    tag = v10->_tag;
    v10->_tag = v11;
  }

  return v10;
}

- (void)performOperation
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = @"relatedChannelTagIDsForOnboarding";
  v4 = +[FCAppleAccount sharedAccount];
  v5 = [v4 contentStoreFrontID];
  v6 = FCCKLocalizedRecordKey(v3, v5);

  v7 = objc_alloc_init(FCCKContentFetchOperation);
  v8 = [(FCTagRelationshipsOperation *)self context];
  v9 = [v8 internalContentContext];
  v10 = [v9 contentDatabase];
  [(FCCKContentFetchOperation *)v7 setDatabase:v10];

  v11 = objc_alloc(MEMORY[0x1E695BA70]);
  v12 = [(FCTagRelationshipsOperation *)self tag];
  v13 = [v12 identifier];
  v14 = [v11 initWithRecordName:v13];
  v36[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v15, v16, 384);
  }

  v35[0] = v3;
  v35[1] = v6;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v17, v18, 400);
  }

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__97;
  v33[4] = __Block_byref_object_dispose__97;
  v34 = 0;
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __47__FCTagRelationshipsOperation_performOperation__block_invoke;
  newValue[3] = &unk_1E7C39CA8;
  newValue[4] = v33;
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v19, newValue, 416);
  }

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __47__FCTagRelationshipsOperation_performOperation__block_invoke_2;
  v27 = &unk_1E7C47A80;
  v28 = self;
  v31 = v33;
  v20 = v6;
  v29 = v20;
  v22 = v3;
  v30 = v22;
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v21, &v24, 424);
  }

  [(FCOperation *)self associateChildOperation:v7, v24, v25, v26, v27, v28];
  [(FCOperation *)v7 start];

  _Block_object_dispose(v33, 8);
  v23 = *MEMORY[0x1E69E9840];
}

void __47__FCTagRelationshipsOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __47__FCTagRelationshipsOperation_performOperation__block_invoke_3;
    v23 = &unk_1E7C36C58;
    v24 = *(a1 + 32);
    v25 = v3;
    [v24 finishedPerformingOperationWithError:v25];
  }

  else
  {
    v5 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:*(a1 + 40)];
    v6 = [v5 count];
    v7 = *(*(*(a1 + 56) + 8) + 40);
    v8 = 40;
    if (!v6)
    {
      v8 = 48;
    }

    v9 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:*(a1 + v8)];

    v10 = [*(a1 + 32) context];
    v11 = [v10 tagController];
    v12 = [v11 fetchOperationForTagsWithIDs:v9];

    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __47__FCTagRelationshipsOperation_performOperation__block_invoke_4;
    v17 = &unk_1E7C36CD0;
    v18 = *(a1 + 32);
    v19 = v9;
    v13 = v9;
    [v12 setFetchCompletionBlock:&v14];
    [*(a1 + 32) associateChildOperation:{v12, v14, v15, v16, v17, v18}];
    [v12 start];
  }
}

void __47__FCTagRelationshipsOperation_performOperation__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status])
  {
    v9 = MEMORY[0x1E69E9820];
    v4 = *(a1 + 32);
    v10 = v3;
    v5 = [v10 error];
    [v4 finishedPerformingOperationWithError:v5];
  }

  else
  {
    v6 = [v3 fetchedObject];
    v7 = [v6 nf_objectsForKeysWithoutMarker:*(a1 + 40)];
    v8 = [[FCTagRelationships alloc] initWithRelatedChannelsForOnboarding:v7];
    [*(a1 + 32) setResultTagRelationships:v8];

    [*(a1 + 32) finishedPerformingOperationWithError:0];
  }
}

void __47__FCTagRelationshipsOperation_performOperation__block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) error];
  [v1 finishedPerformingOperationWithError:v2];
}

- (void)operationWillFinishWithError:(id)a3
{
  v7 = a3;
  v4 = [(FCTagRelationshipsOperation *)self completionHandler];

  if (v4)
  {
    v5 = [(FCTagRelationshipsOperation *)self completionHandler];
    v6 = [(FCTagRelationshipsOperation *)self resultTagRelationships];
    (v5)[2](v5, v6, v7);
  }
}

@end