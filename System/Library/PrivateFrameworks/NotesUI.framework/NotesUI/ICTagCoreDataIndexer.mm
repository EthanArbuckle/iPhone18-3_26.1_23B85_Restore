@interface ICTagCoreDataIndexer
+ (BOOL)isTagItemIdentifier:(id)a3;
- (ICTagCoreDataIndexer)initWithModernManagedObjectContext:(id)a3 sectionIdentifier:(id)a4;
- (NSArray)leadingVisibleObjectIDs;
- (id)activeFetchedResultsControllers;
- (id)indexObjectsInSection:(id)a3 sectionIndex:(unint64_t)a4 fetchedResultsController:(id)a5;
- (id)newSnapshotFromIndexWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4;
- (id)sectionIdentifiersForSectionType:(unint64_t)a3;
- (id)sectionSnapshotsForSectionType:(unint64_t)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5;
- (unint64_t)hiddenTagCount;
- (void)willIndex;
@end

@implementation ICTagCoreDataIndexer

- (id)activeFetchedResultsControllers
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = MEMORY[0x1E695DEC8];
  v4 = [(ICTagCoreDataIndexer *)self fetchedResultsController];
  v5 = [v3 ic_arrayFromNonNilObject:v4];
  v6 = [v2 setWithArray:v5];

  return v6;
}

- (void)willIndex
{
  v3 = [(ICTagCoreDataIndexer *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__ICTagCoreDataIndexer_willIndex__block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (ICTagCoreDataIndexer)initWithModernManagedObjectContext:(id)a3 sectionIdentifier:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = ICTagCoreDataIndexer;
  v8 = [(ICCoreDataIndexer *)&v28 initWithLegacyManagedObjectContext:0 modernManagedObjectContext:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sectionIdentifier, a4);
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

    v17 = [MEMORY[0x1E69B7768] predicateForVisibleObjects];
    [v16 setPredicate:v17];

    [v16 setReturnsObjectsAsFaults:0];
    v18 = MEMORY[0x1E696AEB0];
    v19 = NSStringFromSelector(sel_standardizedContent);
    v20 = [v18 sortDescriptorWithKey:v19 ascending:1];
    v29[0] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [v16 setSortDescriptors:v21];

    if (v6)
    {
      v22 = [objc_alloc(MEMORY[0x1E695D600]) initWithFetchRequest:v16 managedObjectContext:v6 sectionNameKeyPath:0 cacheName:0];
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

+ (BOOL)isTagItemIdentifier:(id)a3
{
  v3 = a3;
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
  v3 = [(ICTagCoreDataIndexer *)self objectIDs];
  v4 = [v3 count];
  v5 = [(ICTagCoreDataIndexer *)self leadingVisibleObjectIDs];
  v6 = v4 - [v5 count];

  return v6;
}

- (id)newSnapshotFromIndexWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v6 = [(ICTagCoreDataIndexer *)self accessQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__ICTagCoreDataIndexer_newSnapshotFromIndexWithLegacyManagedObjectContext_modernManagedObjectContext___block_invoke;
  v11[3] = &unk_1E8468F80;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  dispatch_sync(v6, v11);

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

- (id)indexObjectsInSection:(id)a3 sectionIndex:(unint64_t)a4 fetchedResultsController:(id)a5
{
  v6 = [(ICTagCoreDataIndexer *)self accessQueue:a3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__ICTagCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_sync(v6, block);

  v7 = [(ICTagCoreDataIndexer *)self objectIDs];

  return v7;
}

void __84__ICTagCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69B7768];
  v3 = [*(a1 + 32) modernManagedObjectContext];
  v5 = [v2 canonicalHashtagsInContext:v3];

  v4 = [v5 ic_map:&__block_literal_global_41];
  [*(a1 + 32) setObjectIDs:v4];
}

- (id)sectionIdentifiersForSectionType:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__34;
  v13 = __Block_byref_object_dispose__34;
  v14 = 0;
  v5 = [(ICTagCoreDataIndexer *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__ICTagCoreDataIndexer_sectionIdentifiersForSectionType___block_invoke;
  block[3] = &unk_1E846B6B8;
  block[5] = &v9;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(v5, block);

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
  v3 = [(ICTagCoreDataIndexer *)self objectIDs];
  v4 = [v3 copy];

  if ([(ICTagCoreDataIndexer *)self visibleTagLimit])
  {
    v5 = [(ICTagCoreDataIndexer *)self objectIDs];
    v6 = [v5 count];
    v7 = [(ICTagCoreDataIndexer *)self visibleTagLimit];

    if (v6 > v7)
    {
      v8 = [v4 subarrayWithRange:{0, -[ICTagCoreDataIndexer visibleTagLimit](self, "visibleTagLimit")}];

      v4 = v8;
    }
  }

  return v4;
}

- (id)sectionSnapshotsForSectionType:(unint64_t)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5
{
  if (a3 == 4)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
    v8 = [(ICTagCoreDataIndexer *)self accessQueue];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __109__ICTagCoreDataIndexer_sectionSnapshotsForSectionType_legacyManagedObjectContext_modernManagedObjectContext___block_invoke;
    v17 = &unk_1E8468F80;
    v9 = v7;
    v18 = v9;
    v19 = self;
    dispatch_sync(v8, &v14);

    v10 = [(ICTagCoreDataIndexer *)self sectionIdentifier:v14];

    if (v10)
    {
      v11 = [(ICTagCoreDataIndexer *)self sectionIdentifier];
      [v6 setObject:v9 forKeyedSubscript:v11];
    }

    v12 = [v6 copy];
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