@interface EDSpotlightDaemonClient
- (EDSpotlightDaemonClient)initWithSearchableIndex:(id)a3 persistence:(id)a4;
- (id)fetchRepresentationForSearchableItemId:(id)a3 typeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)provideDataForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)provideFileURLForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)reindexAllItemsForBundleID:(id)a3 protectionClass:(id)a4 acknowledgementHandler:(id)a5;
- (void)reindexItemsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 acknowledgementHandler:(id)a6;
- (void)searchableItemsDidUpdate:(id)a3 mask:(int64_t)a4;
@end

@implementation EDSpotlightDaemonClient

void ___ef_log_EDSpotlightDaemonClient_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDSpotlightDaemonClient");
  v1 = _ef_log_EDSpotlightDaemonClient_log;
  _ef_log_EDSpotlightDaemonClient_log = v0;
}

- (EDSpotlightDaemonClient)initWithSearchableIndex:(id)a3 persistence:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = EDSpotlightDaemonClient;
  v8 = [(EDSpotlightDaemonClient *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(EDSpotlightDaemonClient *)v8 setSearchableIndex:v6];
    [(EDSpotlightDaemonClient *)v9 setPersistence:v7];
    SpotlightDaemonClientRegister();
  }

  return v9;
}

- (void)reindexAllItemsForBundleID:(id)a3 protectionClass:(id)a4 acknowledgementHandler:(id)a5
{
  v7 = a5;
  v6 = [(EDSpotlightDaemonClient *)self searchableIndex];
  [v6 reindexAllSearchableItemsWithAcknowledgementHandler:v7];
}

- (void)reindexItemsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 acknowledgementHandler:(id)a6
{
  v10 = a3;
  v8 = a6;
  v9 = [(EDSpotlightDaemonClient *)self searchableIndex];
  [v9 reindexSearchableItemsWithIdentifiers:v10 acknowledgementHandler:v8];
}

- (void)provideDataForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v11 = a6;
  v12 = a8;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __122__EDSpotlightDaemonClient_provideDataForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke;
  v16[3] = &unk_1E8257CA8;
  v17 = v11;
  v18 = v12;
  v13 = v11;
  v14 = v12;
  v15 = [(EDSpotlightDaemonClient *)self fetchRepresentationForSearchableItemId:a5 typeIdentifier:v13 completionHandler:v16];
}

void __122__EDSpotlightDaemonClient_provideDataForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    (*(*(a1 + 40) + 16))();
    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(a1 + 32)];
    v12 = [v11 conformsToType:*MEMORY[0x1E6982DA8]];

    if (v12)
    {
      v13 = MEMORY[0x1E695DEF0];
      v14 = [v7 contentURL];
      v10 = [v13 dataWithContentsOfURL:v14];

      v9 = 0;
    }

    else
    {
      v15 = [v8 subject];
      v16 = [v15 subjectString];
      if ([v16 length])
      {
        v17 = [v8 subject];
        v18 = [v17 subjectString];
      }

      else
      {
        v18 = 0;
      }

      v19 = [v7 publicMessageURL];
      if ([v18 length] && v19)
      {
        v23 = *MEMORY[0x1E69DB670];
        v24[0] = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
        v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v18 attributes:v20];
        v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v21 requiringSecureCoding:1 error:0];

        v9 = 0;
      }

      else
      {
        v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EDMailSpotlightIndexErrorDomain" code:11 userInfo:0];
        v10 = 0;
      }
    }

    if (!(v10 | v9))
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EDMailSpotlightIndexErrorDomain" code:13 userInfo:0];
    }

    (*(*(a1 + 40) + 16))();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)provideFileURLForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v11 = a6;
  v12 = a8;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __125__EDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke;
  v16[3] = &unk_1E8257CD0;
  v17 = v11;
  v18 = v12;
  v13 = v12;
  v14 = v11;
  v15 = [(EDSpotlightDaemonClient *)self fetchRepresentationForSearchableItemId:a5 typeIdentifier:v14 completionHandler:v16];
}

void __125__EDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(a1 + 32)];
  if ([v7 conformsToType:*MEMORY[0x1E6982DA8]])
  {
    [v9 contentURL];
  }

  else
  {
    [v9 publicMessageURL];
  }
  v8 = ;

  (*(*(a1 + 40) + 16))();
}

- (void)searchableItemsDidUpdate:(id)a3 mask:(int64_t)a4
{
  v4 = a4;
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v4)
  {
    v7 = _ef_log_EDSpotlightDaemonClient();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "spotlight updated items with summaries: %{public}@", &v12, 0xCu);
    }

    v8 = [(EDSpotlightDaemonClient *)self searchableIndex];
    v9 = [v8 dataSource];
    v10 = [(EDSpotlightDaemonClient *)self searchableIndex];
    [v9 searchableIndex:v10 indexGeneratedSummaries:v6];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)fetchRepresentationForSearchableItemId:(id)a3 typeIdentifier:(id)a4 completionHandler:(id)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if ([v7 length])
  {
    v9 = [(EDSpotlightDaemonClient *)self persistence];
    v26[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v11 = [v9 messageObjectIDsForSearchableItemIdentifiers:v10];

    v12 = [v11 first];
    v13 = [v12 firstObject];

    if (!v13)
    {
      goto LABEL_5;
    }

    v25 = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v15 = [v9 messagesForMessageObjectIDs:v14 missedMessageObjectIDs:0];
    v16 = [v15 firstObject];

    if (v16)
    {
      v17 = [MEMORY[0x1E699AC68] optionsWithRequestedRepresentationType:*MEMORY[0x1E699A710] networkUsage:0];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __99__EDSpotlightDaemonClient_fetchRepresentationForSearchableItemId_typeIdentifier_completionHandler___block_invoke;
      v23[3] = &unk_1E8252228;
      v24 = v8;
      v18 = [v16 requestRepresentationWithOptions:v17 completionHandler:v23];
    }

    else
    {
LABEL_5:
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EDMailSpotlightIndexErrorDomain" code:12 userInfo:0];
      v16 = 0;
      (*(v8 + 2))(v8, 0, 0, v17);
      v18 = 0;
    }

    v19 = v18;
  }

  else
  {
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EDMailSpotlightIndexErrorDomain" code:10 userInfo:0];
    (*(v8 + 2))(v8, 0, 0, v20);

    v19 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v19;
}

@end