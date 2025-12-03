@interface EDSpotlightDaemonClient
- (EDSpotlightDaemonClient)initWithSearchableIndex:(id)index persistence:(id)persistence;
- (id)fetchRepresentationForSearchableItemId:(id)id typeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)provideDataForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler;
- (void)provideFileURLForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler;
- (void)reindexAllItemsForBundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler;
- (void)reindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler;
- (void)searchableItemsDidUpdate:(id)update mask:(int64_t)mask;
@end

@implementation EDSpotlightDaemonClient

void ___ef_log_EDSpotlightDaemonClient_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDSpotlightDaemonClient");
  v1 = _ef_log_EDSpotlightDaemonClient_log;
  _ef_log_EDSpotlightDaemonClient_log = v0;
}

- (EDSpotlightDaemonClient)initWithSearchableIndex:(id)index persistence:(id)persistence
{
  indexCopy = index;
  persistenceCopy = persistence;
  v11.receiver = self;
  v11.super_class = EDSpotlightDaemonClient;
  v8 = [(EDSpotlightDaemonClient *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(EDSpotlightDaemonClient *)v8 setSearchableIndex:indexCopy];
    [(EDSpotlightDaemonClient *)v9 setPersistence:persistenceCopy];
    SpotlightDaemonClientRegister();
  }

  return v9;
}

- (void)reindexAllItemsForBundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler
{
  handlerCopy = handler;
  searchableIndex = [(EDSpotlightDaemonClient *)self searchableIndex];
  [searchableIndex reindexAllSearchableItemsWithAcknowledgementHandler:handlerCopy];
}

- (void)reindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  searchableIndex = [(EDSpotlightDaemonClient *)self searchableIndex];
  [searchableIndex reindexSearchableItemsWithIdentifiers:identifiersCopy acknowledgementHandler:handlerCopy];
}

- (void)provideDataForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler
{
  typeIdentifierCopy = typeIdentifier;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __122__EDSpotlightDaemonClient_provideDataForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke;
  v16[3] = &unk_1E8257CA8;
  v17 = typeIdentifierCopy;
  v18 = handlerCopy;
  v13 = typeIdentifierCopy;
  v14 = handlerCopy;
  v15 = [(EDSpotlightDaemonClient *)self fetchRepresentationForSearchableItemId:identifier typeIdentifier:v13 completionHandler:v16];
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

- (void)provideFileURLForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler
{
  typeIdentifierCopy = typeIdentifier;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __125__EDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke;
  v16[3] = &unk_1E8257CD0;
  v17 = typeIdentifierCopy;
  v18 = handlerCopy;
  v13 = handlerCopy;
  v14 = typeIdentifierCopy;
  v15 = [(EDSpotlightDaemonClient *)self fetchRepresentationForSearchableItemId:identifier typeIdentifier:v14 completionHandler:v16];
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

- (void)searchableItemsDidUpdate:(id)update mask:(int64_t)mask
{
  maskCopy = mask;
  v14 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (maskCopy)
  {
    v7 = _ef_log_EDSpotlightDaemonClient();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = updateCopy;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "spotlight updated items with summaries: %{public}@", &v12, 0xCu);
    }

    searchableIndex = [(EDSpotlightDaemonClient *)self searchableIndex];
    dataSource = [searchableIndex dataSource];
    searchableIndex2 = [(EDSpotlightDaemonClient *)self searchableIndex];
    [dataSource searchableIndex:searchableIndex2 indexGeneratedSummaries:updateCopy];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)fetchRepresentationForSearchableItemId:(id)id typeIdentifier:(id)identifier completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x1E69E9840];
  idCopy = id;
  handlerCopy = handler;
  if ([idCopy length])
  {
    persistence = [(EDSpotlightDaemonClient *)self persistence];
    v26[0] = idCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v11 = [persistence messageObjectIDsForSearchableItemIdentifiers:v10];

    first = [v11 first];
    firstObject = [first firstObject];

    if (!firstObject)
    {
      goto LABEL_5;
    }

    v25 = firstObject;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v15 = [persistence messagesForMessageObjectIDs:v14 missedMessageObjectIDs:0];
    firstObject2 = [v15 firstObject];

    if (firstObject2)
    {
      v17 = [MEMORY[0x1E699AC68] optionsWithRequestedRepresentationType:*MEMORY[0x1E699A710] networkUsage:0];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __99__EDSpotlightDaemonClient_fetchRepresentationForSearchableItemId_typeIdentifier_completionHandler___block_invoke;
      v23[3] = &unk_1E8252228;
      v24 = handlerCopy;
      v18 = [firstObject2 requestRepresentationWithOptions:v17 completionHandler:v23];
    }

    else
    {
LABEL_5:
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EDMailSpotlightIndexErrorDomain" code:12 userInfo:0];
      firstObject2 = 0;
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v17);
      v18 = 0;
    }

    v19 = v18;
  }

  else
  {
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EDMailSpotlightIndexErrorDomain" code:10 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v20);

    v19 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v19;
}

@end