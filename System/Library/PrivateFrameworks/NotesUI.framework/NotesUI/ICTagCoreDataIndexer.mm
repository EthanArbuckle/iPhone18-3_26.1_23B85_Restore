@interface ICTagCoreDataIndexer
+ (BOOL)isTagItemIdentifier:(id)identifier;
- (ICTagCoreDataIndexer)initWithModernManagedObjectContext:(id)context sectionIdentifier:(id)identifier;
- (NSArray)leadingVisibleObjectIDs;
- (id)activeFetchedResultsControllers;
- (id)indexObjectsInSection:(id)section sectionIndex:(unint64_t)index fetchedResultsController:(id)controller;
- (id)newSnapshotFromIndexWithLegacyManagedObjectContext:(id)context modernManagedObjectContext:(id)objectContext;
- (id)sectionIdentifiersForSectionType:(unint64_t)type;
- (id)sectionSnapshotsForSectionType:(unint64_t)type legacyManagedObjectContext:(id)context modernManagedObjectContext:(id)objectContext;
- (unint64_t)hiddenTagCount;
- (void)willIndex;
@end

@implementation ICTagCoreDataIndexer

- (id)activeFetchedResultsControllers
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = MEMORY[0x1E695DEC8];
  fetchedResultsController = [(ICTagCoreDataIndexer *)self fetchedResultsController];
  v5 = [v3 ic_arrayFromNonNilObject:fetchedResultsController];
  v6 = [v2 setWithArray:v5];

  return v6;
}

- (void)willIndex
{
  accessQueue = [(ICTagCoreDataIndexer *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__ICTagCoreDataIndexer_willIndex__block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (ICTagCoreDataIndexer)initWithModernManagedObjectContext:(id)context sectionIdentifier:(id)identifier
{
  v29[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  identifierCopy = identifier;
  v28.receiver = self;
  v28.super_class = ICTagCoreDataIndexer;
  v8 = [(ICCoreDataIndexer *)&v28 initWithLegacyManagedObjectContext:0 modernManagedObjectContext:contextCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sectionIdentifier, identifier);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.notes.tag-index-access-queue", v10);
    accessQueue = v9->_accessQueue;
    v9->_accessQueue = v11;

    *&v9->_includesAllTagsItem = 1;
    v9->_visibleTagLimit = -1;
    v13 = MEMORY[0x1E695D5E0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 fetchRequestWithEntityName:v15];

    predicateForVisibleObjects = [MEMORY[0x1E69B7768] predicateForVisibleObjects];
    [v16 setPredicate:predicateForVisibleObjects];

    [v16 setReturnsObjectsAsFaults:0];
    v18 = MEMORY[0x1E696AEB0];
    v19 = NSStringFromSelector(sel_standardizedContent);
    v20 = [v18 sortDescriptorWithKey:v19 ascending:1];
    v29[0] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [v16 setSortDescriptors:v21];

    if (contextCopy)
    {
      v22 = [objc_alloc(MEMORY[0x1E695D600]) initWithFetchRequest:v16 managedObjectContext:contextCopy sectionNameKeyPath:0 cacheName:0];
      fetchedResultsController = v9->_fetchedResultsController;
      v9->_fetchedResultsController = v22;
    }

    hashtags = v9->_hashtags;
    v25 = MEMORY[0x1E695E0F0];
    v9->_hashtags = MEMORY[0x1E695E0F0];

    objectIDs = v9->_objectIDs;
    v9->_objectIDs = v25;
  }

  return v9;
}

+ (BOOL)isTagItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  v4 = ICDynamicCast();
  if ([v4 ic_isHashtagType] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (unint64_t)hiddenTagCount
{
  objectIDs = [(ICTagCoreDataIndexer *)self objectIDs];
  v4 = [objectIDs count];
  leadingVisibleObjectIDs = [(ICTagCoreDataIndexer *)self leadingVisibleObjectIDs];
  v6 = v4 - [leadingVisibleObjectIDs count];

  return v6;
}

- (id)newSnapshotFromIndexWithLegacyManagedObjectContext:(id)context modernManagedObjectContext:(id)objectContext
{
  v5 = objc_alloc_init(MEMORY[0x1E69955A0]);
  accessQueue = [(ICTagCoreDataIndexer *)self accessQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__ICTagCoreDataIndexer_newSnapshotFromIndexWithLegacyManagedObjectContext_modernManagedObjectContext___block_invoke;
  v11[3] = &unk_1E8468F80;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  dispatch_sync(accessQueue, v11);

  v8 = v12;
  v9 = v7;

  return v9;
}

void __102__ICTagCoreDataIndexer_newSnapshotFromIndexWithLegacyManagedObjectContext_modernManagedObjectContext___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) sectionIdentifier];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) sectionIdentifier];
    v19[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v3 appendSectionsWithIdentifiers:v5];

    if ([*(a1 + 32) includesNewTagItem])
    {
      v6 = *(a1 + 40);
      v7 = +[ICTagNewTagItemIdentifier sharedItemIdentifier];
      v18 = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
      v9 = [*(a1 + 32) sectionIdentifier];
      [v6 appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:v9];
    }

    if ([*(a1 + 32) includesAllTagsItem])
    {
      v10 = *(a1 + 40);
      v11 = +[ICTagAllTagsItemIdentifier sharedItemIdentifier];
      v17 = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      v13 = [*(a1 + 32) sectionIdentifier];
      [v10 appendItemsWithIdentifiers:v12 intoSectionWithIdentifier:v13];
    }

    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) leadingVisibleObjectIDs];
    v16 = [*(a1 + 32) sectionIdentifier];
    [v14 appendItemsWithIdentifiers:v15 intoSectionWithIdentifier:v16];
  }
}

- (id)indexObjectsInSection:(id)section sectionIndex:(unint64_t)index fetchedResultsController:(id)controller
{
  v6 = [(ICTagCoreDataIndexer *)self accessQueue:section];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__ICTagCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_sync(v6, block);

  objectIDs = [(ICTagCoreDataIndexer *)self objectIDs];

  return objectIDs;
}

void __84__ICTagCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69B7768];
  v3 = [*(a1 + 32) modernManagedObjectContext];
  v5 = [v2 canonicalHashtagsInContext:v3];

  v4 = [v5 ic_map:&__block_literal_global_41];
  [*(a1 + 32) setObjectIDs:v4];
}

- (id)sectionIdentifiersForSectionType:(unint64_t)type
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__34;
  v13 = __Block_byref_object_dispose__34;
  v14 = 0;
  accessQueue = [(ICTagCoreDataIndexer *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__ICTagCoreDataIndexer_sectionIdentifiersForSectionType___block_invoke;
  block[3] = &unk_1E846B6B8;
  block[5] = &v9;
  block[6] = type;
  block[4] = self;
  dispatch_sync(accessQueue, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __57__ICTagCoreDataIndexer_sectionIdentifiersForSectionType___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (v3 == 4)
  {
    v1 = [*(a1 + 32) sectionIdentifier];
    v5[0] = v1;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (v3 == 4)
  {
  }
}

- (NSArray)leadingVisibleObjectIDs
{
  objectIDs = [(ICTagCoreDataIndexer *)self objectIDs];
  v4 = [objectIDs copy];

  if ([(ICTagCoreDataIndexer *)self visibleTagLimit])
  {
    objectIDs2 = [(ICTagCoreDataIndexer *)self objectIDs];
    v6 = [objectIDs2 count];
    visibleTagLimit = [(ICTagCoreDataIndexer *)self visibleTagLimit];

    if (v6 > visibleTagLimit)
    {
      v8 = [v4 subarrayWithRange:{0, -[ICTagCoreDataIndexer visibleTagLimit](self, "visibleTagLimit")}];

      v4 = v8;
    }
  }

  return v4;
}

- (id)sectionSnapshotsForSectionType:(unint64_t)type legacyManagedObjectContext:(id)context modernManagedObjectContext:(id)objectContext
{
  if (type == 4)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
    accessQueue = [(ICTagCoreDataIndexer *)self accessQueue];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __109__ICTagCoreDataIndexer_sectionSnapshotsForSectionType_legacyManagedObjectContext_modernManagedObjectContext___block_invoke;
    v17 = &unk_1E8468F80;
    v9 = v7;
    v18 = v9;
    selfCopy = self;
    dispatch_sync(accessQueue, &v14);

    v10 = [(ICTagCoreDataIndexer *)self sectionIdentifier:v14];

    if (v10)
    {
      sectionIdentifier = [(ICTagCoreDataIndexer *)self sectionIdentifier];
      [dictionary setObject:v9 forKeyedSubscript:sectionIdentifier];
    }

    v12 = [dictionary copy];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F8];
  }

  return v12;
}

void __109__ICTagCoreDataIndexer_sectionSnapshotsForSectionType_legacyManagedObjectContext_modernManagedObjectContext___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = +[ICTagAllTagsItemIdentifier sharedItemIdentifier];
  v3 = *(a1 + 32);
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 appendItems:v4];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) leadingVisibleObjectIDs];
  [v5 appendItems:v6];
}

@end