@interface ICFolderCoreDataIndexer
- (BOOL)hideUnmigratedLocalLegacyAccounts;
- (BOOL)includeMigratedICloudLegacyAccounts;
- (BOOL)includeMigratedLocalLegacyAccounts;
- (BOOL)isCustomFolder:(id)a3;
- (BOOL)isDefaultFolder:(id)a3;
- (BOOL)itemIdentifiersContainCustomFolder:(id)a3;
- (ICFolderCoreDataIndexer)initWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4 overrideContainerIdentifier:(id)a5;
- (NSSet)allSmartFolderObjectIDs;
- (NSSet)allVirtualSmartFolderIdentifiers;
- (id)activeFetchedResultsControllers;
- (id)expansionStateContext;
- (id)firstRelevantItemIdentifier;
- (id)indexObjectsInSection:(id)a3 sectionIndex:(unint64_t)a4 fetchedResultsController:(id)a5;
- (id)legacyFolderFetchPredicate;
- (id)modernDescendantsPredicate;
- (id)modernFolderFetchPredicate;
- (id)newSnapshotFromIndexWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4;
- (id)nextRelevantItemIdentifierAfter:(id)a3;
- (id)rootFolderListSectionIdentifiersForSection:(id)a3;
- (id)sectionIdentifierForHeaderInSection:(int64_t)a3;
- (id)sectionIdentifiersForSectionType:(unint64_t)a3;
- (id)sectionSnapshotsForSectionType:(unint64_t)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5;
- (id)sortedFolderItemIdentifiersForItemIdentifiers:(id)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5;
- (unint64_t)countOfLegacyAccounts;
- (unint64_t)countOfModernAccounts;
- (unint64_t)totalFolderCount;
- (void)addAccountItemsIfNeededForFolderSectionIdentifier:(id)a3;
- (void)addChildFoldersOfParentFolder:(id)a3 toSectionSnapshot:(id)a4;
- (void)addSystemSectionIfNeeded;
- (void)deleteObjectWithIDFromIndex:(id)a3 inSection:(id)a4;
- (void)deleteWithDecisionController:(id)a3 completion:(id)a4;
- (void)didIndex;
- (void)setAncestorObjectID:(id)a3;
- (void)setShouldIncludeSmartFolders:(BOOL)a3;
- (void)sortIdentifiersWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4;
- (void)willIndex;
@end

@implementation ICFolderCoreDataIndexer

- (id)legacyFolderFetchPredicate
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  if (![(ICFolderCoreDataIndexer *)self includeMigratedLocalLegacyAccounts]|| ![(ICFolderCoreDataIndexer *)self includeMigratedICloudLegacyAccounts])
  {
    v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"account.didChooseToMigrate == nil OR account.didChooseToMigrate == NO"];
    if ([(ICFolderCoreDataIndexer *)self includeMigratedLocalLegacyAccounts]|| [(ICFolderCoreDataIndexer *)self includeMigratedICloudLegacyAccounts])
    {
      v5 = [(ICFolderCoreDataIndexer *)self includeMigratedLocalLegacyAccounts];
      v6 = MEMORY[0x1E696AE18];
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:!v5];
      v8 = [v6 predicateWithFormat:@"account.type == %@", v7];

      v9 = MEMORY[0x1E696AB28];
      v23[0] = v4;
      v23[1] = v8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
      v11 = [v9 orPredicateWithSubpredicates:v10];

      v12 = MEMORY[0x1E696AB28];
      v22[0] = v3;
      v22[1] = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
      v14 = [v12 andPredicateWithSubpredicates:v13];

      v3 = v11;
    }

    else
    {
      v15 = MEMORY[0x1E696AB28];
      v24[0] = v3;
      v24[1] = v4;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
      v14 = [v15 andPredicateWithSubpredicates:v8];
    }

    if (![(ICFolderCoreDataIndexer *)self includeMigratedLocalLegacyAccounts]&& [(ICFolderCoreDataIndexer *)self hideUnmigratedLocalLegacyAccounts])
    {
      v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"account.type != %@", &unk_1F4FC3F48];
      v17 = MEMORY[0x1E696AB28];
      v21[0] = v14;
      v21[1] = v16;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
      v19 = [v17 andPredicateWithSubpredicates:v18];

      v14 = v19;
    }

    v3 = v14;
  }

  return v3;
}

- (BOOL)includeMigratedLocalLegacyAccounts
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:*MEMORY[0x1E69B7B30]];

  return v3;
}

- (BOOL)includeMigratedICloudLegacyAccounts
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:*MEMORY[0x1E69B7B28]];

  return v3;
}

- (BOOL)hideUnmigratedLocalLegacyAccounts
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v2 BOOLForKey:*MEMORY[0x1E69B7AF0]])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 BOOLForKey:*MEMORY[0x1E69B7AE8]];
  }

  return v3;
}

- (id)modernFolderFetchPredicate
{
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"         isHiddenNoteContainer != YES AND          owner.didChooseToMigrate == YES AND          markedForDeletion != YES AND          needsInitialFetchFromCloud != YES AND          (folderType != %d || SUBQUERY(notes, $n, $n.markedForDeletion != YES).@count > 0)", 1];
  v4 = [MEMORY[0x1E695DF70] arrayWithObject:v3];
  if (![(ICFolderCoreDataIndexer *)self shouldIncludeSmartFolders])
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"folderType != %d", 2];
    [v4 addObject:v5];
  }

  v6 = [(ICFolderCoreDataIndexer *)self accountObjectID];

  if (v6)
  {
    v7 = MEMORY[0x1E696AE18];
    v8 = [(ICFolderCoreDataIndexer *)self accountObjectID];
    v9 = [v7 predicateWithFormat:@"account == %@", v8];
    [v4 addObject:v9];
  }

  v10 = [(ICFolderCoreDataIndexer *)self ancestorObjectID];

  if (v10)
  {
    v11 = [(ICFolderCoreDataIndexer *)self modernDescendantsPredicate];
    [v4 addObject:v11];
  }

  v12 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];

  return v12;
}

- (id)modernDescendantsPredicate
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__ICFolderCoreDataIndexer_modernDescendantsPredicate__block_invoke;
  v5[3] = &unk_1E846C080;
  v5[4] = self;
  v2 = [MEMORY[0x1E69B7760] ancestorFolderPredicatesWithBlock:v5];
  v3 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v2];

  return v3;
}

id __53__ICFolderCoreDataIndexer_modernDescendantsPredicate__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 ancestorObjectID];
  v6 = [v2 predicateWithFormat:@"%K == %@", v4, v5];

  return v6;
}

- (unint64_t)totalFolderCount
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiersToFolderItemIdentifiers];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) count];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)activeFetchedResultsControllers
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(ICFolderCoreDataIndexer *)self modernFetchedResultsController];
  if (v4)
  {
    v5 = v4;
    v6 = [(ICFolderCoreDataIndexer *)self ancestorObjectID];
    if (v6)
    {
      v7 = v6;
      v8 = [(ICFolderCoreDataIndexer *)self ancestorObjectID];
      v9 = [v8 ic_isModernContainerType];

      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v10 = [(ICFolderCoreDataIndexer *)self modernFetchedResultsController];
    [v3 addObject:v10];
  }

LABEL_7:
  v11 = [(ICFolderCoreDataIndexer *)self legacyFetchedResultsController];
  if (!v11 || ![(ICFolderCoreDataIndexer *)self shouldIncludeLegacyAccounts])
  {
    goto LABEL_14;
  }

  v12 = [(ICFolderCoreDataIndexer *)self ancestorObjectID];
  if (!v12)
  {

    goto LABEL_13;
  }

  v13 = v12;
  v14 = [(ICFolderCoreDataIndexer *)self ancestorObjectID];
  v15 = [v14 ic_isLegacyContainerType];

  if (v15)
  {
LABEL_13:
    v11 = [(ICFolderCoreDataIndexer *)self legacyFetchedResultsController];
    [v3 addObject:v11];
LABEL_14:
  }

  if ([(ICFolderCoreDataIndexer *)self shouldIncludeTags])
  {
    v16 = [(ICFolderCoreDataIndexer *)self tagIndexer];
    v17 = [v16 activeFetchedResultsControllers];
    v18 = [v17 allObjects];
    [v3 addObjectsFromArray:v18];
  }

  v19 = [v3 copy];

  return v19;
}

- (void)willIndex
{
  v3 = [(ICFolderCoreDataIndexer *)self indexAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ICFolderCoreDataIndexer_willIndex__block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __36__ICFolderCoreDataIndexer_willIndex__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tagIndexer];
  [v2 willIndex];

  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  [*(a1 + 32) setFolderListSectionIdentifiers:v3];

  v4 = [MEMORY[0x1E695DF90] dictionary];
  [*(a1 + 32) setFolderListSectionIdentifiersToButtonIdentifiers:v4];

  v5 = [MEMORY[0x1E695DF90] dictionary];
  [*(a1 + 32) setFolderListSectionIdentifiersToVirtualSmartFolderIdentifiers:v5];

  v6 = [MEMORY[0x1E695DF90] dictionary];
  [*(a1 + 32) setFolderListSectionIdentifiersToFolderItemIdentifiers:v6];

  v7 = [MEMORY[0x1E695DF90] dictionary];
  [*(a1 + 32) setFolderItemIdentifiersToParentFolderItemIdentifier:v7];

  v8 = [MEMORY[0x1E695DF90] dictionary];
  [*(a1 + 32) setFolderItemIdentifiersToChildFolderItemIdentifiers:v8];

  v9 = [MEMORY[0x1E695DFA8] set];
  [*(a1 + 32) setLegacyAccountManagedObjectIDs:v9];

  v10 = [MEMORY[0x1E695DFA8] set];
  [*(a1 + 32) setModernAccountManagedObjectIDs:v10];

  v11 = [MEMORY[0x1E695DFA8] set];
  [*(a1 + 32) setSmartFolderManagedObjectIDs:v11];

  v12 = [MEMORY[0x1E695DFA8] set];
  [*(a1 + 32) setVirtualSmartFolderIdentifiers:v12];
}

- (void)didIndex
{
  v3 = [(ICFolderCoreDataIndexer *)self indexAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__ICFolderCoreDataIndexer_didIndex__block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __35__ICFolderCoreDataIndexer_didIndex__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tagIndexer];
  [v1 didIndex];
}

void __51__ICFolderCoreDataIndexer_addSystemSectionIfNeeded__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) overrideContainerIdentifier];
  v35 = ICDynamicCast();

  if (v35)
  {
    [*(a1 + 40) addObject:v35];
    objc_opt_class();
    v3 = [*(a1 + 32) virtualSmartFolderIdentifiers];
    v4 = ICCheckedDynamicCast();
    [v4 addObject:v35];
LABEL_20:

    goto LABEL_21;
  }

  if (![*(a1 + 32) shouldIncludeSystemPaper])
  {
    v5 = [MEMORY[0x1E69B7658] globalVirtualSystemPaperFolder];
    v6 = [*(a1 + 32) modernManagedObjectContext];
    v7 = [v5 isHiddenInContext:v6];

    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 40);
      v9 = [MEMORY[0x1E69B7658] globalVirtualSystemPaperFolder];
      [v8 addObject:v9];
    }

    objc_opt_class();
    v10 = [*(a1 + 32) virtualSmartFolderIdentifiers];
    v11 = ICCheckedDynamicCast();
    v12 = [MEMORY[0x1E69B7658] globalVirtualSystemPaperFolder];
    [v11 addObject:v12];
  }

  if (![*(a1 + 32) shouldIncludeMathNotes])
  {
    v13 = [MEMORY[0x1E69B7658] globalVirtualMathNotesFolder];
    v14 = [*(a1 + 32) modernManagedObjectContext];
    v15 = [v13 isHiddenInContext:v14];

    if ((v15 & 1) == 0)
    {
      v16 = *(a1 + 40);
      v17 = [MEMORY[0x1E69B7658] globalVirtualMathNotesFolder];
      [v16 addObject:v17];
    }

    objc_opt_class();
    v18 = [*(a1 + 32) virtualSmartFolderIdentifiers];
    v19 = ICCheckedDynamicCast();
    v20 = [MEMORY[0x1E69B7658] globalVirtualMathNotesFolder];
    [v19 addObject:v20];
  }

  if (![*(a1 + 32) shouldIncludeCallNotes])
  {
    v21 = [MEMORY[0x1E69B7658] globalVirtualCallNotesFolder];
    v22 = [*(a1 + 32) modernManagedObjectContext];
    v23 = [v21 isHiddenInContext:v22];

    if ((v23 & 1) == 0)
    {
      v24 = *(a1 + 40);
      v25 = [MEMORY[0x1E69B7658] globalVirtualCallNotesFolder];
      [v24 addObject:v25];
    }

    objc_opt_class();
    v26 = [*(a1 + 32) virtualSmartFolderIdentifiers];
    v27 = ICCheckedDynamicCast();
    v28 = [MEMORY[0x1E69B7658] globalVirtualCallNotesFolder];
    [v27 addObject:v28];
  }

  if ([*(a1 + 32) shouldIncludeSharedWithYou] != 2)
  {
    if ([*(a1 + 32) shouldIncludeSharedWithYou] == 1 || (objc_msgSend(MEMORY[0x1E69B7658], "globalVirtualSharedWithYouFolder"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "modernManagedObjectContext"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v29, "isHiddenInContext:", v30), v30, v29, (v31 & 1) == 0))
    {
      v32 = *(a1 + 40);
      v33 = [MEMORY[0x1E69B7658] globalVirtualSharedWithYouFolder];
      [v32 addObject:v33];
    }

    objc_opt_class();
    v3 = [*(a1 + 32) virtualSmartFolderIdentifiers];
    v4 = ICCheckedDynamicCast();
    v34 = [MEMORY[0x1E69B7658] globalVirtualSharedWithYouFolder];
    [v4 addObject:v34];

    goto LABEL_20;
  }

LABEL_21:
}

- (ICFolderCoreDataIndexer)initWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4 overrideContainerIdentifier:(id)a5
{
  v41[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v39.receiver = self;
  v39.super_class = ICFolderCoreDataIndexer;
  v11 = [(ICCoreDataIndexer *)&v39 initWithLegacyManagedObjectContext:v8 modernManagedObjectContext:v9];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_overrideContainerIdentifier, a5);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.notes.folder-list-index-access-queue", v13);
    indexAccessQueue = v12->_indexAccessQueue;
    v12->_indexAccessQueue = v14;

    v12->_shouldIncludeTags = 0;
    v12->_shouldIncludeTagOperator = 0;
    v12->_shouldIncludeSystemPaper = 0;
    v12->_shouldIncludeMathNotes = 0;
    v12->_shouldIncludeCallNotes = 0;
    v12->_shouldIncludeSmartFolders = 1;
    v12->_shouldIncludeSharedWithYou = 0;
    v12->_shouldIncludeAccount = 0;
    v12->_shouldIncludeDefaultFolder = 1;
    *&v12->_shouldIncludeTrash = 1;
    v12->_shouldIncludeSubfolders = 1;
    v12->_shouldIncludeLegacyAccounts = 1;
    v12->_shouldAutoExpandSingleSection = 1;
    if (v8)
    {
      v16 = MEMORY[0x1E695D5E0];
      v17 = ICLegacyEntityNameFolder();
      v18 = [v16 fetchRequestWithEntityName:v17];

      v19 = [(ICFolderCoreDataIndexer *)v12 legacyFolderFetchPredicate];
      [v18 setPredicate:v19];

      v20 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"name" ascending:1];
      v41[0] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
      [v18 setSortDescriptors:v21];

      v22 = [objc_alloc(MEMORY[0x1E695D600]) initWithFetchRequest:v18 managedObjectContext:v8 sectionNameKeyPath:0 cacheName:0];
      legacyFetchedResultsController = v12->_legacyFetchedResultsController;
      v12->_legacyFetchedResultsController = v22;
    }

    if (v9)
    {
      v24 = MEMORY[0x1E695D5E0];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v24 fetchRequestWithEntityName:v26];

      [v27 setReturnsObjectsAsFaults:0];
      v28 = [(ICFolderCoreDataIndexer *)v12 modernFolderFetchPredicate];
      [v27 setPredicate:v28];

      v29 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"folderType" ascending:1];
      v40[0] = v29;
      v30 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:1];
      v40[1] = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
      [v27 setSortDescriptors:v31];

      v32 = [objc_alloc(MEMORY[0x1E695D600]) initWithFetchRequest:v27 managedObjectContext:v9 sectionNameKeyPath:0 cacheName:0];
      modernFetchedResultsController = v12->_modernFetchedResultsController;
      v12->_modernFetchedResultsController = v32;

      v34 = [ICTagCoreDataIndexer alloc];
      v35 = +[ICFolderListSectionIdentifier tagSectionIdentifier];
      v36 = [(ICTagCoreDataIndexer *)v34 initWithModernManagedObjectContext:v9 sectionIdentifier:v35];
      tagIndexer = v12->_tagIndexer;
      v12->_tagIndexer = v36;
    }
  }

  return v12;
}

- (unint64_t)countOfLegacyAccounts
{
  v2 = [(ICFolderCoreDataIndexer *)self legacyAccountManagedObjectIDs];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)countOfModernAccounts
{
  v2 = [(ICFolderCoreDataIndexer *)self modernAccountManagedObjectIDs];
  v3 = [v2 count];

  return v3;
}

- (void)setAncestorObjectID:(id)a3
{
  objc_storeStrong(&self->_ancestorObjectID, a3);
  v4 = [(ICFolderCoreDataIndexer *)self modernFolderFetchPredicate];
  v5 = [(ICFolderCoreDataIndexer *)self modernFetchedResultsController];
  v6 = [v5 fetchRequest];
  [v6 setPredicate:v4];

  v9 = [(ICFolderCoreDataIndexer *)self legacyFolderFetchPredicate];
  v7 = [(ICFolderCoreDataIndexer *)self legacyFetchedResultsController];
  v8 = [v7 fetchRequest];
  [v8 setPredicate:v9];
}

- (void)setShouldIncludeSmartFolders:(BOOL)a3
{
  self->_shouldIncludeSmartFolders = a3;
  v6 = [(ICFolderCoreDataIndexer *)self modernFolderFetchPredicate];
  v4 = [(ICFolderCoreDataIndexer *)self modernFetchedResultsController];
  v5 = [v4 fetchRequest];
  [v5 setPredicate:v6];
}

- (NSSet)allSmartFolderObjectIDs
{
  v2 = [(ICFolderCoreDataIndexer *)self smartFolderManagedObjectIDs];
  v3 = [v2 copy];

  return v3;
}

- (NSSet)allVirtualSmartFolderIdentifiers
{
  v2 = [(ICFolderCoreDataIndexer *)self virtualSmartFolderIdentifiers];
  v3 = [v2 copy];

  return v3;
}

- (id)firstRelevantItemIdentifier
{
  v3 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiers];
  v4 = [v3 firstObject];

  if (![v4 sectionType])
  {
    v5 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiers];
    v6 = [v5 count];

    if (v6 >= 2)
    {
      v7 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiers];
      v8 = [v7 objectAtIndex:1];

      v4 = v8;
    }
  }

  v9 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiersToVirtualSmartFolderIdentifiers];
  v10 = [v9 objectForKeyedSubscript:v4];
  v11 = [v10 firstObject];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = [(ICFolderCoreDataIndexer *)self rootFolderListSectionIdentifiersForSection:v4];
    v13 = [v14 firstObject];
  }

  return v13;
}

- (void)addSystemSectionIfNeeded
{
  v3 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiersToVirtualSmartFolderIdentifiers];
  v4 = +[ICFolderListSectionIdentifier systemSectionIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E695DFA0] orderedSet];
  }

  v8 = v7;

  v9 = [(ICCoreDataIndexer *)self modernManagedObjectContext];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __51__ICFolderCoreDataIndexer_addSystemSectionIfNeeded__block_invoke;
  v18 = &unk_1E8468F80;
  v19 = self;
  v10 = v8;
  v20 = v10;
  [v9 performBlockAndWait:&v15];

  if ([v10 count])
  {
    v11 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiers];
    v12 = +[ICFolderListSectionIdentifier systemSectionIdentifier];
    [v11 addObject:v12];

    v13 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiersToVirtualSmartFolderIdentifiers];
    v14 = +[ICFolderListSectionIdentifier systemSectionIdentifier];
    [v13 setObject:v10 forKeyedSubscript:v14];
  }
}

- (id)indexObjectsInSection:(id)a3 sectionIndex:(unint64_t)a4 fetchedResultsController:(id)a5
{
  v8 = a3;
  v9 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__46;
  v24 = __Block_byref_object_dispose__46;
  v25 = [MEMORY[0x1E695DF70] array];
  v10 = [(ICFolderCoreDataIndexer *)self indexAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__ICFolderCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke;
  block[3] = &unk_1E846C008;
  block[4] = self;
  v11 = v9;
  v16 = v11;
  v12 = v8;
  v18 = &v20;
  v19 = a4;
  v17 = v12;
  dispatch_sync(v10, block);

  v13 = [v21[5] copy];
  _Block_object_dispose(&v20, 8);

  return v13;
}

void __87__ICFolderCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke(uint64_t a1)
{
  v146 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) tagIndexer];
  v3 = [v2 activeFetchedResultsControllers];
  v4 = [v3 containsObject:*(a1 + 40)];

  if (v4)
  {
    v5 = [*(a1 + 32) tagIndexer];
    v6 = [v5 indexObjectsInSection:*(a1 + 48) sectionIndex:*(a1 + 64) fetchedResultsController:*(a1 + 40)];

    [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v6];
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) modernFetchedResultsController];

  if (v7 == v8)
  {
    [*(a1 + 32) addSystemSectionIfNeeded];
    if ([*(a1 + 32) shouldIncludeNewFolderButton])
    {
      v9 = MEMORY[0x1E69B7658];
      v10 = [*(a1 + 32) modernManagedObjectContext];
      v11 = [v9 defaultAccountInContext:v10];

      if (!v11)
      {
        v12 = [[ICFolderListSectionIdentifier alloc] initWithSectionType:6];
        v13 = [*(a1 + 32) folderListSectionIdentifiers];
        [v13 addObject:v12];

        v14 = [*(a1 + 32) folderListSectionIdentifiersToButtonIdentifiers];
        v15 = [v14 objectForKeyedSubscript:v12];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = [MEMORY[0x1E695DFA0] orderedSet];
        }

        v18 = v17;

        v19 = [[ICButtonItemIdentifier alloc] initWithType:0 parentIdentifier:v12];
        [v18 addObject:v19];
        v20 = [[ICButtonItemIdentifier alloc] initWithType:1 parentIdentifier:v12];
        [v18 addObject:v20];
        v21 = [*(a1 + 32) folderListSectionIdentifiersToButtonIdentifiers];
        [v21 setObject:v18 forKeyedSubscript:v12];
      }
    }
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  obj = [*(a1 + 48) objects];
  v135 = [obj countByEnumeratingWithState:&v139 objects:v145 count:16];
  if (v135)
  {
    v134 = *v140;
    v22 = off_1E8466000;
    do
    {
      for (i = 0; i != v135; ++i)
      {
        if (*v140 != v134)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v139 + 1) + 8 * i);
        v25 = [v24 objectID];
        v26 = [objc_alloc(v22[16]) initWithObject:v24];
        if (v26)
        {
          v27 = [*(a1 + 32) folderListSectionIdentifiersToButtonIdentifiers];
          v28 = [v27 objectForKeyedSubscript:v26];
          v29 = v28;
          if (v28)
          {
            v30 = v28;
          }

          else
          {
            v30 = [MEMORY[0x1E695DFA0] orderedSet];
          }

          v138 = v30;

          v32 = [*(a1 + 32) folderListSectionIdentifiersToVirtualSmartFolderIdentifiers];
          v33 = [v32 objectForKeyedSubscript:v26];
          v34 = v33;
          v137 = v25;
          if (v33)
          {
            v35 = v33;
          }

          else
          {
            v35 = [MEMORY[0x1E695DFA0] orderedSet];
          }

          v136 = v35;

          v36 = [*(a1 + 32) folderListSectionIdentifiersToFolderItemIdentifiers];
          v37 = [v36 objectForKeyedSubscript:v26];
          v38 = v37;
          if (v37)
          {
            v39 = v37;
          }

          else
          {
            v39 = [MEMORY[0x1E695DFA0] orderedSet];
          }

          v40 = v39;
          v31 = v138;

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v41 = v24;
            if ([v41 isVisible] && ((objc_msgSend(*(a1 + 32), "shouldIncludeTrash") & 1) != 0 || (objc_msgSend(v41, "isTrashFolder") & 1) == 0) && ((objc_msgSend(*(a1 + 32), "shouldIncludeDefaultFolder") & 1) != 0 || (objc_msgSend(v41, "isDefaultFolderForAccount") & 1) == 0))
            {
              v131 = v40;
              v42 = [*(a1 + 32) modernAccountManagedObjectIDs];
              v43 = [v26 accountObjectID];
              [v42 ic_addNonNilObject:v43];

              if ([*(a1 + 32) shouldIncludeNewFolderButton] && objc_msgSend(v26, "sectionType"))
              {
                v44 = [[ICButtonItemIdentifier alloc] initWithType:0 parentIdentifier:v26];
                [v138 addObject:v44];
              }

              if ([*(a1 + 32) shouldIncludeSystemPaper] == 1)
              {
                v45 = [v41 account];
                v46 = [v45 virtualSystemPaperFolder];
                [v136 addObject:v46];

                objc_opt_class();
                v47 = [*(a1 + 32) virtualSmartFolderIdentifiers];
                v48 = ICCheckedDynamicCast();
                v49 = [v41 account];
                v50 = [v49 virtualSystemPaperFolder];
                [v48 addObject:v50];

                v31 = v138;
                v22 = off_1E8466000;
              }

              if ([*(a1 + 32) shouldIncludeMathNotes] == 1)
              {
                v51 = [v41 account];
                v52 = [v51 virtualMathNotesFolder];
                [v136 addObject:v52];

                objc_opt_class();
                v53 = [*(a1 + 32) virtualSmartFolderIdentifiers];
                v54 = ICCheckedDynamicCast();
                v55 = [v41 account];
                v56 = [v55 virtualMathNotesFolder];
                [v54 addObject:v56];

                v22 = off_1E8466000;
                v31 = v138;
              }

              if ([*(a1 + 32) shouldIncludeCallNotes] == 1)
              {
                v57 = [v41 account];
                v58 = [v57 virtualCallNotesFolder];
                [v136 addObject:v58];

                objc_opt_class();
                v59 = [*(a1 + 32) virtualSmartFolderIdentifiers];
                v60 = ICCheckedDynamicCast();
                v61 = [v41 account];
                v62 = [v61 virtualCallNotesFolder];
                [v60 addObject:v62];

                v22 = off_1E8466000;
                v31 = v138;
              }

              v63 = [v41 parent];
              if (v63)
              {
                v64 = v63;
                v65 = [v41 parent];
                v66 = [v65 objectID];
                v67 = [*(a1 + 32) ancestorObjectID];
                v68 = [v66 isEqual:v67];

                v22 = off_1E8466000;
                v31 = v138;

                if ((v68 & 1) == 0)
                {
                  v69 = [*(a1 + 32) folderItemIdentifiersToChildFolderItemIdentifiers];
                  v70 = [v41 parent];
                  v71 = [v70 objectID];
                  v72 = [v69 objectForKeyedSubscript:v71];
                  v73 = v72;
                  if (v72)
                  {
                    v74 = v72;
                  }

                  else
                  {
                    v74 = [MEMORY[0x1E695DFA0] orderedSet];
                  }

                  v96 = v74;

                  v97 = [v41 objectID];
                  [v96 addObject:v97];

                  v98 = [*(a1 + 32) folderItemIdentifiersToChildFolderItemIdentifiers];
                  v99 = [v41 parent];
                  v100 = [v99 objectID];
                  [v98 setObject:v96 forKeyedSubscript:v100];

                  v101 = [v41 parent];
                  v102 = [v101 objectID];
                  v103 = [*(a1 + 32) folderItemIdentifiersToParentFolderItemIdentifier];
                  v104 = [v41 objectID];
                  [v103 setObject:v102 forKeyedSubscript:v104];

                  v22 = off_1E8466000;
                  v31 = v138;
                }
              }

              if ([v41 isSmartFolder])
              {
                v105 = [*(a1 + 32) smartFolderManagedObjectIDs];
                v106 = [v41 objectID];
                [v105 ic_addNonNilObject:v106];

                v31 = v138;
              }

              v78 = [*(a1 + 32) modernManagedObjectContext];
              [v78 ic_refreshObject:v41 mergeChanges:1];
              v40 = v131;
LABEL_70:

LABEL_71:
              v75 = v22;
              v117 = [v26 accountObjectID];

              if (v117)
              {
                v118 = [*(a1 + 32) folderListSectionIdentifiers];
                [v118 ic_addNonNilObject:v26];
              }

              [v40 ic_addNonNilObject:v137];
              v119 = [*(a1 + 32) folderListSectionIdentifiersToButtonIdentifiers];
              [v119 setObject:v31 forKeyedSubscript:v26];

              v120 = [*(a1 + 32) folderListSectionIdentifiersToVirtualSmartFolderIdentifiers];
              v76 = v136;
              [v120 setObject:v136 forKeyedSubscript:v26];

              v121 = [*(a1 + 32) folderListSectionIdentifiersToFolderItemIdentifiers];
              [v121 setObject:v40 forKeyedSubscript:v26];

              [*(a1 + 32) addAccountItemsIfNeededForFolderSectionIdentifier:v26];
              v122 = *(*(*(a1 + 56) + 8) + 40);
              v41 = [v24 objectID];
              [v122 addObject:v41];
LABEL_74:

              v25 = v137;
              v22 = v75;
              goto LABEL_75;
            }

LABEL_51:
            v75 = v22;
          }

          else
          {
            if (![v24 conformsToProtocol:&unk_1F50918C0])
            {
              goto LABEL_71;
            }

            objc_opt_class();
            v41 = ICClassAndProtocolCast();
            if ([*(a1 + 32) shouldIncludeTrash] & 1) == 0 && (objc_msgSend(v41, "isTrashFolder") & 1) != 0 || (objc_msgSend(*(a1 + 32), "shouldIncludeDefaultFolder") & 1) == 0 && (objc_msgSend(v41, "isDefaultFolder"))
            {
              goto LABEL_51;
            }

            v77 = [v41 ancestorFolders];
            v78 = [v77 valueForKey:@"objectID"];

            v79 = [*(a1 + 32) ancestorObjectID];
            if (!v79 || (v80 = v79, [*(a1 + 32) ancestorObjectID], v81 = objc_claimAutoreleasedReturnValue(), v82 = objc_msgSend(v78, "containsObject:", v81), v81, v80, v82))
            {
              v83 = [*(a1 + 32) legacyAccountManagedObjectIDs];
              v84 = [v26 accountObjectID];
              [v83 ic_addNonNilObject:v84];

              v85 = [v41 parentFolder];
              if (v85)
              {
                v86 = v85;
                v130 = v78;
                v132 = v40;
                v87 = [v41 parentFolder];
                v88 = [v87 objectID];
                v89 = [*(a1 + 32) ancestorObjectID];
                v90 = [v88 isEqual:v89];

                if (v90)
                {
                  v22 = off_1E8466000;
                  v31 = v138;
                  v40 = v132;
                }

                else
                {
                  v91 = [*(a1 + 32) folderItemIdentifiersToChildFolderItemIdentifiers];
                  v92 = [v41 parentFolder];
                  v128 = [v92 objectID];
                  v93 = [v91 objectForKeyedSubscript:?];
                  v94 = v93;
                  v40 = v132;
                  if (v93)
                  {
                    v95 = v93;
                  }

                  else
                  {
                    v95 = [MEMORY[0x1E695DFA0] orderedSet];
                  }

                  v107 = v95;

                  v108 = [v41 objectID];
                  [v107 addObject:v108];

                  v109 = [*(a1 + 32) folderItemIdentifiersToChildFolderItemIdentifiers];
                  [v41 parentFolder];
                  v110 = v107;
                  v111 = v129 = v107;
                  v112 = [v111 objectID];
                  [v109 setObject:v110 forKeyedSubscript:v112];

                  v113 = [v41 parentFolder];
                  v114 = [v113 objectID];
                  v115 = [*(a1 + 32) folderItemIdentifiersToParentFolderItemIdentifier];
                  v116 = [v41 objectID];
                  [v115 setObject:v114 forKeyedSubscript:v116];

                  v22 = off_1E8466000;
                  v31 = v138;
                }

                v78 = v130;
              }

              else
              {
                v22 = off_1E8466000;
                v31 = v138;
              }

              goto LABEL_70;
            }

            v75 = 0x1E8466000;
            v31 = v138;
          }

          v76 = v136;
          goto LABEL_74;
        }

        v31 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v144 = v24;
          _os_log_debug_impl(&dword_1D4171000, v31, OS_LOG_TYPE_DEBUG, "Cannot create folder list section identifier from object %@", buf, 0xCu);
        }

LABEL_75:
      }

      v135 = [obj countByEnumeratingWithState:&v139 objects:v145 count:16];
    }

    while (v135);
  }

  if ([*(a1 + 32) shouldIncludeTags])
  {
    v123 = [*(a1 + 32) tagIndexer];
    v124 = [v123 objectIDs];
    v125 = [v124 count];

    if (v125)
    {
      v126 = [*(a1 + 32) folderListSectionIdentifiers];
      v127 = +[ICFolderListSectionIdentifier tagSectionIdentifier];
      [v126 ic_addNonNilObject:v127];
    }
  }
}

- (void)addAccountItemsIfNeededForFolderSectionIdentifier:(id)a3
{
  v11 = a3;
  if ([(ICFolderCoreDataIndexer *)self shouldIncludeAccount]!= 2)
  {
    v4 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiersToFolderItemIdentifiers];
    v5 = [v4 objectForKeyedSubscript:v11];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E695DFA0] orderedSet];
    }

    v8 = v7;

    if ([(ICFolderCoreDataIndexer *)self shouldIncludeAccount]== 1 || [(ICFolderCoreDataIndexer *)self itemIdentifiersContainCustomFolder:v8])
    {
      v9 = [v11 accountObjectID];
      [v8 ic_addNonNilObject:v9];
    }

    v10 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiersToFolderItemIdentifiers];
    [v10 setObject:v8 forKeyedSubscript:v11];
  }
}

- (id)newSnapshotFromIndexWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v9 = [(ICFolderCoreDataIndexer *)self indexAccessQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __105__ICFolderCoreDataIndexer_newSnapshotFromIndexWithLegacyManagedObjectContext_modernManagedObjectContext___block_invoke;
  v16[3] = &unk_1E846A3A0;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v10 = v8;
  v19 = v10;
  v11 = v7;
  v12 = v6;
  dispatch_sync(v9, v16);

  v13 = v19;
  v14 = v10;

  return v14;
}

void __105__ICFolderCoreDataIndexer_newSnapshotFromIndexWithLegacyManagedObjectContext_modernManagedObjectContext___block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) sortIdentifiersWithLegacyManagedObjectContext:*(a1 + 40) modernManagedObjectContext:*(a1 + 48)];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [*(a1 + 32) folderListSectionIdentifiers];
  v2 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v2)
  {
    v3 = v2;
    v55 = *v66;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v66 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(a1 + 56);
        v73 = *(*(&v65 + 1) + 8 * i);
        v5 = v73;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
        [v6 appendSectionsWithIdentifiers:v7];

        v8 = [*(a1 + 32) folderListSectionIdentifiersToButtonIdentifiers];
        v9 = [v8 objectForKeyedSubscript:v5];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = [MEMORY[0x1E695DFB8] orderedSet];
        }

        v12 = v11;

        v13 = *(a1 + 56);
        v14 = [v12 array];
        [v13 appendItemsWithIdentifiers:v14 intoSectionWithIdentifier:v5];

        v15 = [*(a1 + 32) folderListSectionIdentifiersToVirtualSmartFolderIdentifiers];
        v16 = [v15 objectForKeyedSubscript:v5];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = [MEMORY[0x1E695DFB8] orderedSet];
        }

        v19 = v18;

        v20 = *(a1 + 56);
        v21 = [v19 array];
        [v20 appendItemsWithIdentifiers:v21 intoSectionWithIdentifier:v5];

        v22 = [*(a1 + 32) folderListSectionIdentifiersToFolderItemIdentifiers];
        v23 = [v22 objectForKeyedSubscript:v5];
        v24 = v23;
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = [MEMORY[0x1E695DFB8] orderedSet];
        }

        v26 = v25;

        v27 = *(a1 + 56);
        v28 = [v26 array];
        [v27 appendItemsWithIdentifiers:v28 intoSectionWithIdentifier:v5];
      }

      v3 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
    }

    while (v3);
  }

  v29 = [MEMORY[0x1E695DF70] array];
  if ([*(a1 + 32) shouldIncludeTags])
  {
    v30 = [*(a1 + 32) tagIndexer];
    v31 = [v30 newSnapshotFromIndexWithLegacyManagedObjectContext:*(a1 + 40) modernManagedObjectContext:*(a1 + 48)];

    if ([*(a1 + 32) shouldIncludeTagOperator])
    {
      v32 = *(a1 + 56);
      v33 = +[ICTagOperatorItemIdentifier sharedItemIdentifier];
      v72 = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
      v35 = [*(a1 + 56) itemIdentifiers];
      v36 = [v35 firstObject];
      [v32 insertItemsWithIdentifiers:v34 beforeItemWithIdentifier:v36];
    }

    [v29 ic_addNonNilObject:v31];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v51 = v29;
  obja = [v51 countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (obja)
  {
    v52 = *v62;
    do
    {
      v37 = 0;
      do
      {
        if (*v62 != v52)
        {
          objc_enumerationMutation(v51);
        }

        v56 = v37;
        v38 = *(*(&v61 + 1) + 8 * v37);
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v39 = [v38 sectionIdentifiers];
        v40 = [v39 countByEnumeratingWithState:&v57 objects:v70 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v58;
          do
          {
            for (j = 0; j != v41; ++j)
            {
              if (*v58 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v57 + 1) + 8 * j);
              v45 = [*(a1 + 56) sectionIdentifiers];
              v46 = [v45 containsObject:v44];

              if ((v46 & 1) == 0)
              {
                v47 = *(a1 + 56);
                v69 = v44;
                v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
                [v47 appendSectionsWithIdentifiers:v48];
              }

              v49 = *(a1 + 56);
              v50 = [v38 itemIdentifiersInSectionWithIdentifier:v44];
              [v49 appendItemsWithIdentifiers:v50 intoSectionWithIdentifier:v44];
            }

            v41 = [v39 countByEnumeratingWithState:&v57 objects:v70 count:16];
          }

          while (v41);
        }

        v37 = v56 + 1;
      }

      while ((v56 + 1) != obja);
      obja = [v51 countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (obja);
  }
}

- (id)sectionIdentifiersForSectionType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiers];
    v4 = [v3 array];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)sectionSnapshotsForSectionType:(unint64_t)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 == 1)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = [(ICFolderCoreDataIndexer *)self indexAccessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __112__ICFolderCoreDataIndexer_sectionSnapshotsForSectionType_legacyManagedObjectContext_modernManagedObjectContext___block_invoke;
    block[3] = &unk_1E846B298;
    block[4] = self;
    v16 = v8;
    v18 = v10;
    v19 = 1;
    v17 = v9;
    v12 = v10;
    dispatch_sync(v11, block);

    v13 = [v12 copy];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F8];
  }

  return v13;
}

void __112__ICFolderCoreDataIndexer_sectionSnapshotsForSectionType_legacyManagedObjectContext_modernManagedObjectContext___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) sortIdentifiersWithLegacyManagedObjectContext:*(a1 + 40) modernManagedObjectContext:*(a1 + 48)];
  v2 = [*(a1 + 32) sectionIdentifiersForSectionType:*(a1 + 64)];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v44 = [v2 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v44)
  {
    v42 = v2;
    v43 = *v50;
    v3 = 0x1E695D000uLL;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v50 != v43)
        {
          objc_enumerationMutation(v2);
        }

        v5 = *(*(&v49 + 1) + 8 * i);
        v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
        v7 = [*(a1 + 32) folderListSectionIdentifiersToButtonIdentifiers];
        v8 = [v7 objectForKeyedSubscript:v5];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = [MEMORY[0x1E695DFB8] orderedSet];
        }

        v11 = v10;

        v12 = [*(a1 + 32) folderListSectionIdentifiersToVirtualSmartFolderIdentifiers];
        v13 = [v12 objectForKeyedSubscript:v5];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = [MEMORY[0x1E695DFB8] orderedSet];
        }

        v16 = v15;

        if ([v5 sectionType])
        {
          if ([v5 sectionType] == 8)
          {
            v58 = v5;
            v17 = [*(v3 + 3784) arrayWithObjects:&v58 count:1];
            [v6 appendItems:v17];

            if ([*(a1 + 32) shouldIncludeTagOperator])
            {
              v18 = +[ICTagOperatorItemIdentifier sharedItemIdentifier];
              v57 = v18;
              v19 = [*(v3 + 3784) arrayWithObjects:&v57 count:1];
              [v6 appendItems:v19 intoParent:v5];
            }

            v20 = [v11 array];
            [v6 appendItems:v20 intoParent:v5];

            v21 = [v16 array];
            [v6 appendItems:v21 intoParent:v5];

            v22 = +[ICTagContainerItemIdentifier sharedItemIdentifier];
            v56 = v22;
            v23 = [*(v3 + 3784) arrayWithObjects:&v56 count:1];
            [v6 appendItems:v23 intoParent:v5];
          }

          else
          {
            v22 = [*(a1 + 32) rootFolderListSectionIdentifiersForSection:v5];
            if ([*(a1 + 32) shouldIncludeOutlineParentItems])
            {
              v55 = v5;
              v25 = [*(v3 + 3784) arrayWithObjects:&v55 count:1];
              [v6 appendItems:v25];

              v26 = [v11 array];
              [v6 appendItems:v26 intoParent:v5];

              v27 = [v16 array];
              [v6 appendItems:v27 intoParent:v5];

              v28 = [v22 array];
              [v6 appendItems:v28 intoParent:v5];
            }

            else
            {
              v29 = [v11 array];
              [v6 appendItems:v29];

              v30 = [v16 array];
              [v6 appendItems:v30];

              v28 = [v22 array];
              [v6 appendItems:v28];
            }

            if ([*(a1 + 32) shouldIncludeSubfolders])
            {
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v22 = v22;
              v31 = [v22 countByEnumeratingWithState:&v45 objects:v54 count:16];
              if (v31)
              {
                v32 = v31;
                v33 = *v46;
                do
                {
                  for (j = 0; j != v32; ++j)
                  {
                    if (*v46 != v33)
                    {
                      objc_enumerationMutation(v22);
                    }

                    [*(a1 + 32) addChildFoldersOfParentFolder:*(*(&v45 + 1) + 8 * j) toSectionSnapshot:v6];
                  }

                  v32 = [v22 countByEnumeratingWithState:&v45 objects:v54 count:16];
                }

                while (v32);
              }

              v2 = v42;
              v3 = 0x1E695D000;
            }
          }
        }

        else
        {
          v24 = [v11 array];
          [v6 appendItems:v24];

          v22 = [v16 array];
          [v6 appendItems:v22];
        }

        if ([*(a1 + 32) shouldIncludeOutlineParentItems])
        {
          v35 = +[ICExpansionState sharedExpansionState];
          v36 = [*(a1 + 32) expansionStateContext];
          v37 = [v35 isSectionIdentiferExpanded:v5 inContext:v36];

          if ([*(a1 + 32) shouldAutoExpandSingleSection] && !((objc_msgSend(v2, "count") != 1) | v37 & 1))
          {
            v38 = [*(a1 + 32) expansionStateContext];
            [v35 expandItemIdentifier:v5 context:v38];
          }

          else if (!v37)
          {
LABEL_38:

            v3 = 0x1E695D000;
            goto LABEL_39;
          }

          v39 = [v6 items];
          v40 = [v39 containsObject:v5];

          if (v40)
          {
            v53 = v5;
            v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
            [v6 expandItems:v41];
          }

          goto LABEL_38;
        }

LABEL_39:
        [*(a1 + 56) setObject:v6 forKeyedSubscript:v5];
      }

      v44 = [v2 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v44);
  }
}

- (id)sectionIdentifierForHeaderInSection:(int64_t)a3
{
  v5 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiers];
  if ([v5 count] <= a3)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v6 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiers];
  v7 = [v6 count];

  if (v7 >= 2)
  {
    v5 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiers];
    v8 = [v5 objectAtIndexedSubscript:a3];
LABEL_5:

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)nextRelevantItemIdentifierAfter:(id)a3
{
  v4 = a3;
  v5 = [(ICFolderCoreDataIndexer *)self firstRelevantItemIdentifier];
  objc_opt_class();
  v6 = [v4 lastObject];
  v7 = ICDynamicCast();

  if (v7)
  {
    v8 = v7;
    v9 = v8;
    do
    {
      v10 = v8;
      v8 = v9;

      v11 = [(ICFolderCoreDataIndexer *)self folderItemIdentifiersToParentFolderItemIdentifier];
      v9 = [v11 objectForKeyedSubscript:v8];
    }

    while (v9);
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__46;
    v30 = __Block_byref_object_dispose__46;
    v31 = 0;
    v12 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiersToFolderItemIdentifiers];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __59__ICFolderCoreDataIndexer_nextRelevantItemIdentifierAfter___block_invoke;
    v23 = &unk_1E846C030;
    v13 = v8;
    v24 = v13;
    v25 = &v26;
    [v12 enumerateKeysAndObjectsUsingBlock:&v20];

    if (v27[5])
    {
      v14 = [(ICFolderCoreDataIndexer *)self rootFolderListSectionIdentifiersForSection:v20, v21, v22, v23];
      v15 = [v14 indexOfObject:v13];
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v14 count] > (v15 + 1))
        {
          v16 = v15 + 1;
        }

        else
        {
          v16 = 0;
        }

        v17 = [v14 objectAtIndex:v16];

        v5 = v17;
      }
    }

    v18 = v5;

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v18 = v5;
  }

  return v18;
}

void __59__ICFolderCoreDataIndexer_nextRelevantItemIdentifierAfter___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 containsObject:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)deleteObjectWithIDFromIndex:(id)a3 inSection:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = ICDynamicCast();
  if (v8)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [(ICFolderCoreDataIndexer *)self folderItemIdentifiersToChildFolderItemIdentifiers];
    v10 = [v9 objectForKeyedSubscript:v6];

    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(ICFolderCoreDataIndexer *)self deleteObjectWithIDFromIndex:*(*(&v20 + 1) + 8 * i) inSection:v8];
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    v15 = [(ICFolderCoreDataIndexer *)self indexAccessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__ICFolderCoreDataIndexer_deleteObjectWithIDFromIndex_inSection___block_invoke;
    block[3] = &unk_1E8468D98;
    block[4] = self;
    v18 = v6;
    v19 = v8;
    dispatch_sync(v15, block);
  }

  else
  {
    v16 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(ICFolderCoreDataIndexer *)v6 deleteObjectWithIDFromIndex:v7 inSection:v16];
    }
  }
}

void __65__ICFolderCoreDataIndexer_deleteObjectWithIDFromIndex_inSection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) folderItemIdentifiersToParentFolderItemIdentifier];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) folderItemIdentifiersToChildFolderItemIdentifiers];
  [v3 removeObjectForKey:*(a1 + 40)];

  v4 = [*(a1 + 32) folderListSectionIdentifiersToFolderItemIdentifiers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 48)];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E695DFA0] orderedSet];
  }

  v10 = v7;

  [v10 removeObject:*(a1 + 40)];
  if (([*(a1 + 32) itemIdentifiersContainCustomFolder:v10] & 1) == 0)
  {
    v8 = [*(a1 + 48) accountObjectID];
    [v10 removeObject:v8];
  }

  v9 = [*(a1 + 32) folderListSectionIdentifiersToFolderItemIdentifiers];
  [v9 setObject:v10 forKeyedSubscript:*(a1 + 48)];
}

- (void)deleteWithDecisionController:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 sourceObjects];
  v9 = [v8 valueForKey:@"objectID"];

  v10 = [v7 sourceObjects];
  v11 = [v10 ic_compactMap:&__block_literal_global_52];

  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v9];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__ICFolderCoreDataIndexer_deleteWithDecisionController_completion___block_invoke_2;
  v16[3] = &unk_1E846C058;
  v17 = v9;
  v18 = v12;
  v19 = self;
  v20 = v6;
  v13 = v12;
  v14 = v9;
  v15 = v6;
  [v7 performDecisionWithCompletion:v16];
}

ICFolderListSectionIdentifier *__67__ICFolderCoreDataIndexer_deleteWithDecisionController_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ICFolderListSectionIdentifier alloc] initWithObject:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v5 = v4;

  return v5;
}

uint64_t __67__ICFolderCoreDataIndexer_deleteWithDecisionController_completion___block_invoke_2(uint64_t a1, char a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [*(a1 + 40) objectForKeyedSubscript:{v8, v13}];
          if ([v8 ic_isFolderType])
          {
            v10 = v9 == 0;
          }

          else
          {
            v10 = 1;
          }

          if (!v10)
          {
            [*(a1 + 48) deleteObjectWithIDFromIndex:v8 inSection:v9];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    result = *(a1 + 56);
    if (result)
    {
      return (*(result + 16))(result, 1);
    }
  }

  else
  {
    result = *(a1 + 56);
    if (result)
    {
      v12 = *(result + 16);

      return v12();
    }
  }

  return result;
}

- (id)expansionStateContext
{
  v2 = [(ICFolderCoreDataIndexer *)self ancestorObjectID];
  v3 = [v2 URIRepresentation];
  v4 = [v3 absoluteString];

  return v4;
}

- (void)addChildFoldersOfParentFolder:(id)a3 toSectionSnapshot:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(ICFolderCoreDataIndexer *)self folderItemIdentifiersToChildFolderItemIdentifiers];
  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = [v9 array];
  [v7 appendItems:v10 intoParent:v6];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(ICFolderCoreDataIndexer *)self addChildFoldersOfParentFolder:*(*(&v16 + 1) + 8 * v15++) toSectionSnapshot:v7, v16];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)sortIdentifiersWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v36 = a3;
  v6 = a4;
  v7 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiers];
  v8 = +[ICFolderListSectionIdentifier sortDescriptors];
  [v7 sortUsingDescriptors:v8];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiersToFolderItemIdentifiers];
  v10 = [v9 copy];

  obj = v10;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v45;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v44 + 1) + 8 * i);
        v16 = [v15 accountObjectID];

        if (v16)
        {
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __100__ICFolderCoreDataIndexer_sortIdentifiersWithLegacyManagedObjectContext_modernManagedObjectContext___block_invoke;
          v41[3] = &unk_1E8468F80;
          v42 = v6;
          v43 = v15;
          [v42 performBlockAndWait:v41];
        }

        v17 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiersToFolderItemIdentifiers];
        v18 = [v17 objectForKeyedSubscript:v15];

        v19 = [(ICFolderCoreDataIndexer *)self sortedFolderItemIdentifiersForItemIdentifiers:v18 legacyManagedObjectContext:v36 modernManagedObjectContext:v6];
        v20 = [v19 mutableCopy];
        v21 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiersToFolderItemIdentifiers];
        [v21 setObject:v20 forKeyedSubscript:v15];
      }

      v12 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v12);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = [(ICFolderCoreDataIndexer *)self folderItemIdentifiersToChildFolderItemIdentifiers];
  v23 = [v22 copy];

  v35 = v23;
  v24 = [v23 countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v38;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(v35);
        }

        v28 = *(*(&v37 + 1) + 8 * j);
        v29 = [(ICFolderCoreDataIndexer *)self folderItemIdentifiersToChildFolderItemIdentifiers];
        v30 = [v29 objectForKeyedSubscript:v28];

        v31 = [(ICFolderCoreDataIndexer *)self sortedFolderItemIdentifiersForItemIdentifiers:v30 legacyManagedObjectContext:v36 modernManagedObjectContext:v6];
        v32 = [v31 mutableCopy];
        v33 = [(ICFolderCoreDataIndexer *)self folderItemIdentifiersToChildFolderItemIdentifiers];
        [v33 setObject:v32 forKeyedSubscript:v28];
      }

      v25 = [v35 countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v25);
  }
}

void __100__ICFolderCoreDataIndexer_sortIdentifiersWithLegacyManagedObjectContext_modernManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) accountObjectID];
  v4 = [v2 ic_existingObjectWithID:v3];

  [*(a1 + 32) ic_refreshObject:v4 mergeChanges:1];
}

- (id)sortedFolderItemIdentifiersForItemIdentifiers:(id)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] array];
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__46;
  v60 = __Block_byref_object_dispose__46;
  v61 = 0;
  v12 = [MEMORY[0x1E695DF70] array];
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__46;
  v54 = __Block_byref_object_dispose__46;
  v55 = 0;
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [MEMORY[0x1E695DF70] array];
  v15 = [MEMORY[0x1E695DF70] array];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __127__ICFolderCoreDataIndexer_sortedFolderItemIdentifiersForItemIdentifiers_legacyManagedObjectContext_modernManagedObjectContext___block_invoke;
  v41[3] = &unk_1E846C0C8;
  v16 = v8;
  v42 = v16;
  v17 = v13;
  v43 = v17;
  v18 = v10;
  v44 = v18;
  v45 = self;
  v19 = v14;
  v46 = v19;
  v20 = v15;
  v47 = v20;
  v21 = v11;
  v48 = v21;
  v49 = &v56;
  [v18 performBlockAndWait:v41];
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __127__ICFolderCoreDataIndexer_sortedFolderItemIdentifiersForItemIdentifiers_legacyManagedObjectContext_modernManagedObjectContext___block_invoke_3;
  v33 = &unk_1E846C0F0;
  v22 = v16;
  v34 = v22;
  v23 = v17;
  v35 = v23;
  v24 = v9;
  v36 = v24;
  v37 = self;
  v25 = v19;
  v38 = v25;
  v26 = v12;
  v39 = v26;
  v40 = &v50;
  [v24 performBlockAndWait:&v30];
  v27 = [MEMORY[0x1E695DFA0] orderedSet];
  [v27 addObjectsFromArray:v23];
  [v27 addObjectsFromArray:v25];
  [v27 addObjectsFromArray:v57[5]];
  [v27 addObjectsFromArray:v51[5]];
  [v27 addObjectsFromArray:v20];
  v28 = [v27 copy];

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  return v28;
}

void __127__ICFolderCoreDataIndexer_sortedFolderItemIdentifiersForItemIdentifiers_legacyManagedObjectContext_modernManagedObjectContext___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if ([v7 ic_isModernAccountType])
        {
          [*(a1 + 40) addObject:v7];
          continue;
        }

        if ([v7 ic_isModernFolderType])
        {
          v8 = [*(a1 + 48) ic_existingObjectWithID:v7];
          if ([*(a1 + 56) isDefaultFolder:v8])
          {
            v9 = *(a1 + 64);
            goto LABEL_13;
          }

          if ([v8 isTrashFolder])
          {
            v9 = *(a1 + 72);
LABEL_13:
            [v9 addObject:v7];
          }

          else
          {
            [*(a1 + 80) ic_addNonNilObject:v8];
          }

          continue;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  [*(a1 + 80) sortUsingSelector:sel_compare_];
  v10 = [*(a1 + 80) ic_map:&__block_literal_global_180];
  v11 = *(*(a1 + 88) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void __127__ICFolderCoreDataIndexer_sortedFolderItemIdentifiersForItemIdentifiers_legacyManagedObjectContext_modernManagedObjectContext___block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        if ([v7 ic_isLegacyAccountType])
        {
          [*(a1 + 40) addObject:v7];
        }

        else if ([v7 ic_isLegacyFolderType])
        {
          v8 = [*(a1 + 48) objectWithID:v7];
          v9 = [*(a1 + 56) isDefaultFolder:v8];
          if (v9)
          {
            v10 = 64;
          }

          else
          {
            v10 = 72;
          }

          if (v9)
          {
            v11 = v7;
          }

          else
          {
            v11 = v8;
          }

          [*(a1 + v10) addObject:v11];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  [*(a1 + 72) sortUsingSelector:sel_compare_];
  v12 = [*(a1 + 72) ic_map:&__block_literal_global_182];
  v13 = *(*(a1 + 80) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

- (id)rootFolderListSectionIdentifiersForSection:(id)a3
{
  v4 = a3;
  v5 = [(ICFolderCoreDataIndexer *)self folderListSectionIdentifiersToFolderItemIdentifiers];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [MEMORY[0x1E695DFB8] orderedSet];
  }

  v8 = v7;

  v9 = MEMORY[0x1E695DFB8];
  v10 = [v8 array];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__ICFolderCoreDataIndexer_rootFolderListSectionIdentifiersForSection___block_invoke;
  v14[3] = &unk_1E846B2E8;
  v14[4] = self;
  v11 = [v10 ic_objectsPassingTest:v14];
  v12 = [v9 orderedSetWithArray:v11];

  return v12;
}

BOOL __70__ICFolderCoreDataIndexer_rootFolderListSectionIdentifiersForSection___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 folderItemIdentifiersToParentFolderItemIdentifier];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5 == 0;
}

- (BOOL)isCustomFolder:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [v3 managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__ICFolderCoreDataIndexer_isCustomFolder___block_invoke;
  v7[3] = &unk_1E846B1D8;
  v5 = v3;
  v8 = v5;
  v9 = &v10;
  [v4 performBlockAndWait:v7];

  LOBYTE(v4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v4;
}

void __42__ICFolderCoreDataIndexer_isCustomFolder___block_invoke(uint64_t a1)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(a1 + 32);
  if (isKindOfClass)
  {
    v5 = v3;
    v4 = [v5 isSystemFolder];
  }

  else
  {
    if (![v3 conformsToProtocol:&unk_1F50918C0])
    {
      return;
    }

    objc_opt_class();
    v5 = ICClassAndProtocolCast();
    v4 = [v5 isDefaultFolder];
  }

  *(*(*(a1 + 40) + 8) + 24) = v4 ^ 1;
}

- (BOOL)isDefaultFolder:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [v3 managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__ICFolderCoreDataIndexer_isDefaultFolder___block_invoke;
  v7[3] = &unk_1E846B1D8;
  v5 = v3;
  v8 = v5;
  v9 = &v10;
  [v4 performBlockAndWait:v7];

  LOBYTE(v4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v4;
}

void __43__ICFolderCoreDataIndexer_isDefaultFolder___block_invoke(uint64_t a1)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(a1 + 32);
  if (isKindOfClass)
  {
    v5 = v3;
    v4 = [v5 isDefaultFolderForAccount];
  }

  else
  {
    if (![v3 conformsToProtocol:&unk_1F50918C0])
    {
      return;
    }

    objc_opt_class();
    v5 = ICClassAndProtocolCast();
    v4 = [v5 isDefaultFolder];
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
}

- (BOOL)itemIdentifiersContainCustomFolder:(id)a3
{
  v4 = [a3 array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__ICFolderCoreDataIndexer_itemIdentifiersContainCustomFolder___block_invoke;
  v6[3] = &unk_1E846B2E8;
  v6[4] = self;
  LOBYTE(self) = [v4 ic_containsObjectPassingTest:v6];

  return self;
}

uint64_t __62__ICFolderCoreDataIndexer_itemIdentifiersContainCustomFolder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ([v3 ic_isModernFolderType])
  {
    v4 = [*(a1 + 32) modernManagedObjectContext];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__ICFolderCoreDataIndexer_itemIdentifiersContainCustomFolder___block_invoke_2;
    v13[3] = &unk_1E8469640;
    v5 = *(a1 + 32);
    v15 = &v16;
    v13[4] = v5;
    v14 = v3;
    [v4 performBlockAndWait:v13];
  }

  if ([v3 ic_isLegacyFolderType])
  {
    v6 = [*(a1 + 32) legacyManagedObjectContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__ICFolderCoreDataIndexer_itemIdentifiersContainCustomFolder___block_invoke_3;
    v10[3] = &unk_1E8469640;
    v7 = *(a1 + 32);
    v12 = &v16;
    v10[4] = v7;
    v11 = v3;
    [v6 performBlockAndWait:v10];
  }

  v8 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v8;
}

void __62__ICFolderCoreDataIndexer_itemIdentifiersContainCustomFolder___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v4 = [v2 modernManagedObjectContext];
  v3 = [v4 ic_existingObjectWithID:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 isCustomFolder:v3];
}

void __62__ICFolderCoreDataIndexer_itemIdentifiersContainCustomFolder___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v4 = [v2 legacyManagedObjectContext];
  v3 = [v4 ic_existingObjectWithID:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 isCustomFolder:v3];
}

- (void)deleteObjectWithIDFromIndex:(os_log_t)log inSection:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_1D4171000, log, OS_LOG_TYPE_FAULT, "Invalid folder list section identifier — not deleting object from index {objectID: %@, section: %@}", &v3, 0x16u);
}

@end