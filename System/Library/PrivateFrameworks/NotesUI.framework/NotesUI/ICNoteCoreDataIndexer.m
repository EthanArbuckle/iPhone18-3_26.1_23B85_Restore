@interface ICNoteCoreDataIndexer
- (BOOL)dateHeadersAreStaleForNote:(id)a3;
- (BOOL)isShowingDateHeaders;
- (BOOL)sortsByPinned;
- (ICNoteCoreDataIndexer)initWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4;
- (NSArray)sortedNoteIdentifiers;
- (id)activeFetchedResultsControllers;
- (id)dateHeadersValueForNote:(id)a3;
- (id)expansionStateContext;
- (id)firstRelevantItemIdentifier;
- (id)indexObjectsInSection:(id)a3 sectionIndex:(unint64_t)a4 fetchedResultsController:(id)a5;
- (id)modernDateHeadersAttribute;
- (id)newSnapshotFromIndexWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4;
- (id)nextRelevantItemIdentifierAfter:(id)a3;
- (id)sectionForObjectID:(id)a3;
- (id)sectionIdentifierForHeaderInSection:(int64_t)a3;
- (id)sectionIdentifiersForSectionType:(unint64_t)a3;
- (id)sectionSnapshotsForSectionType:(unint64_t)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5;
- (id)unpinnedNoteIdentifiers;
- (id)unpinnedSectionIdentifierForObject:(id)a3;
- (int64_t)resolvedDateHeadersType;
- (unint64_t)totalFolderCount;
- (unint64_t)totalInvitationsCount;
- (unint64_t)totalNoteCount;
- (void)addObjectIDs:(id)a3 toIndexInSection:(id)a4;
- (void)deleteObjectWithIDFromIndex:(id)a3 inSection:(id)a4;
- (void)deleteWithDecisionController:(id)a3 completion:(id)a4;
- (void)didIndex;
- (void)mergePinnedNotesAndNotesSectionIfNeeded;
- (void)prependObjectIDs:(id)a3 toIndexInSection:(id)a4;
- (void)removeObjectIDs:(id)a3 fromIndexInSection:(id)a4;
- (void)removeUnpinnedNoteObjectIds:(id)a3;
- (void)setNoteCollection:(id)a3;
- (void)setNoteContainer:(id)a3;
- (void)setNoteQuery:(id)a3;
- (void)setShouldIncludeOutlineParentItems:(BOOL)a3;
- (void)setSortType:(id)a3 force:(BOOL)a4;
- (void)setVirtualSmartFolder:(id)a3;
- (void)sortSection:(id)a3;
- (void)togglePinnedForNote:(id)a3;
- (void)unmergePinnedNotesAndNotesSectionIfNeeded;
- (void)updateContainerPredicate;
- (void)updateLegacyFetchedResultsControllers;
- (void)updateModernFetchedResultsControllers;
- (void)updateSectionIdentifiers;
- (void)willIndex;
@end

@implementation ICNoteCoreDataIndexer

- (id)expansionStateContext
{
  v3 = [(ICNoteCoreDataIndexer *)self noteContainer];
  v4 = [v3 objectID];
  v5 = [v4 URIRepresentation];
  v6 = [v5 absoluteString];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(ICNoteCoreDataIndexer *)self noteCollection];
    v10 = [v9 objectID];
    v11 = [v10 URIRepresentation];
    v12 = [v11 absoluteString];
    v13 = v12;
    if (v12)
    {
      v8 = v12;
    }

    else
    {
      v14 = [(ICNoteCoreDataIndexer *)self virtualSmartFolder];
      v8 = [v14 identifier];
    }
  }

  return v8;
}

- (unint64_t)totalNoteCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__ICNoteCoreDataIndexer_totalNoteCount__block_invoke;
  v5[3] = &unk_1E846B200;
  v5[4] = &v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)totalFolderCount
{
  if (![(ICNoteCoreDataIndexer *)self shouldIncludeSubfolders])
  {
    return 0;
  }

  v3 = [(ICNoteCoreDataIndexer *)self folderIndexer];
  v4 = [v3 totalFolderCount];

  return v4;
}

- (unint64_t)totalInvitationsCount
{
  if (![(ICNoteCoreDataIndexer *)self shouldIncludeInvitations])
  {
    return 0;
  }

  v3 = [(ICNoteCoreDataIndexer *)self invitationsIndexer];
  v4 = [v3 totalInvitationsCount];

  return v4;
}

- (void)updateModernFetchedResultsControllers
{
  v3 = [(ICNoteCoreDataIndexer *)self indexAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__ICNoteCoreDataIndexer_updateModernFetchedResultsControllers__block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __62__ICNoteCoreDataIndexer_updateModernFetchedResultsControllers__block_invoke(uint64_t a1)
{
  v63[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) noteContainer];
  if (v2 || ([*(a1 + 32) noteQuery], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_4;
  }

  v35 = [*(a1 + 32) virtualSmartFolder];

  if (v35)
  {
LABEL_4:
    v3 = MEMORY[0x1E69B7A88];
    v4 = [*(a1 + 32) sortType];
    v5 = [v3 sortDescriptorsForCurrentTypeIncludingPinnedNotes:0 folderNoteSortType:v4];

    v6 = [*(a1 + 32) noteContainer];

    if (v6)
    {
      objc_opt_class();
      v7 = [*(a1 + 32) modernManagedObjectContext];
      v8 = [*(a1 + 32) noteContainer];
      v9 = [v8 objectID];
      v10 = [v7 ic_existingObjectWithID:v9];
      v11 = ICCheckedDynamicCast();
      v12 = [v11 predicateForVisibleNotes];
    }

    else
    {
      v13 = [*(a1 + 32) noteQuery];

      if (!v13)
      {
        v37 = [*(a1 + 32) virtualSmartFolder];

        if (v37)
        {
          v38 = [*(a1 + 32) virtualSmartFolder];
          v39 = [*(a1 + 32) modernManagedObjectContext];
          v12 = [v38 predicateForContext:v39];
        }

        else
        {
          v12 = 0;
        }

LABEL_9:
        if ([*(a1 + 32) sortsByPinned])
        {
          v15 = MEMORY[0x1E696AB28];
          v62[0] = v12;
          v16 = [MEMORY[0x1E69B77F0] predicateForPinnedNotes];
          v62[1] = v16;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
          v18 = [v15 andPredicateWithSubpredicates:v17];

          v19 = MEMORY[0x1E696AB28];
          v20 = [MEMORY[0x1E69B77F0] predicateForPinnedNotes];
          v21 = [v19 notPredicateWithSubpredicate:v20];

          v22 = MEMORY[0x1E696AB28];
          v61[0] = v12;
          v61[1] = v21;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
          v24 = [v22 andPredicateWithSubpredicates:v23];
        }

        else
        {
          v18 = [MEMORY[0x1E696AE18] predicateWithValue:0];
          v24 = v12;
        }

        v25 = [*(a1 + 32) noteQuery];
        v26 = [v25 entityName];
        v27 = v26;
        if (v26)
        {
          v28 = v26;
        }

        else
        {
          v58 = v18;
          v59 = v24;
          v29 = v12;
          v30 = v5;
          v31 = [*(a1 + 32) virtualSmartFolder];
          v32 = [v31 query];
          v33 = [v32 entityName];
          v34 = v33;
          if (v33)
          {
            v28 = v33;
          }

          else
          {
            v40 = [MEMORY[0x1E69B77F0] entity];
            v28 = [v40 name];
          }

          v5 = v30;
          v12 = v29;
          v18 = v58;
          v24 = v59;
        }

        v41 = [*(a1 + 32) modernPinnedNoteFetchedResultsController];

        if (v41)
        {
          v42 = [*(a1 + 32) modernPinnedNoteFetchedResultsController];
          v43 = [v42 fetchRequest];
          [v43 setPredicate:v18];

          v44 = [*(a1 + 32) modernPinnedNoteFetchedResultsController];
          v45 = [v44 fetchRequest];
          [v45 setSortDescriptors:v5];
        }

        else
        {
          v44 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v28];
          [v44 setPredicate:v18];
          [v44 setSortDescriptors:v5];
          v46 = objc_alloc(MEMORY[0x1E695D600]);
          v45 = [*(a1 + 32) modernManagedObjectContext];
          v47 = [v46 initWithFetchRequest:v44 managedObjectContext:v45 sectionNameKeyPath:0 cacheName:0];
          [*(a1 + 32) setModernPinnedNoteFetchedResultsController:v47];
        }

        v48 = [*(a1 + 32) modernNoteFetchedResultsController];

        if (v48)
        {
          v49 = [*(a1 + 32) modernNoteFetchedResultsController];
          v50 = [v49 fetchRequest];
          [v50 setPredicate:v24];

          v51 = [*(a1 + 32) modernNoteFetchedResultsController];
          v52 = [v51 fetchRequest];
          [v52 setSortDescriptors:v5];
        }

        else
        {
          v51 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v28];
          [v51 setPredicate:v24];
          [v51 setSortDescriptors:v5];
          v53 = [*(a1 + 32) modernDateHeadersAttribute];

          if (v53)
          {
            v54 = [*(a1 + 32) modernDateHeadersAttribute];
            v60 = v54;
            v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
            [v51 setPropertiesToFetch:v55];
          }

          v56 = objc_alloc(MEMORY[0x1E695D600]);
          v52 = [*(a1 + 32) modernManagedObjectContext];
          v57 = [v56 initWithFetchRequest:v51 managedObjectContext:v52 sectionNameKeyPath:0 cacheName:0];
          [*(a1 + 32) setModernNoteFetchedResultsController:v57];
        }

        return;
      }

      v14 = MEMORY[0x1E696AB28];
      v7 = [*(a1 + 32) noteQuery];
      v8 = [v7 predicate];
      v63[0] = v8;
      v9 = [MEMORY[0x1E69B77F0] predicateForFetchedFromCloudObjects];
      v63[1] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
      v12 = [v14 andPredicateWithSubpredicates:v10];
    }

    goto LABEL_9;
  }

  [*(a1 + 32) setModernPinnedNoteFetchedResultsController:0];
  v36 = *(a1 + 32);

  [v36 setModernNoteFetchedResultsController:0];
}

- (BOOL)sortsByPinned
{
  v3 = [(ICNoteCoreDataIndexer *)self noteQuery];
  if (!v3)
  {
    v6 = [(ICNoteCoreDataIndexer *)self virtualSmartFolder];

    if (v6)
    {
      LOBYTE(v5) = 1;
      return v5;
    }

    v8 = [MEMORY[0x1E696AF00] isMainThread];
    v9 = [(ICNoteCoreDataIndexer *)self noteContainer];
    v4 = v9;
    if (v8)
    {
      if (v9)
      {
        v10 = [(ICNoteCoreDataIndexer *)self noteContainer];
        v5 = [v10 isTrashFolder] ^ 1;

        goto LABEL_3;
      }
    }

    else
    {
      objc_opt_class();
      v11 = ICClassAndProtocolCast();

      v12 = [(ICNoteCoreDataIndexer *)self noteContainer];

      if (!v12)
      {
        LOBYTE(v5) = 0;
        v4 = v11;
        goto LABEL_3;
      }

      v13 = [(ICCoreDataIndexer *)self modernManagedObjectContext];
      v14 = [v11 objectID];
      v15 = [v13 ic_existingObjectWithID:v14];
      objc_opt_class();
      v4 = ICClassAndProtocolCast();

      if (v4)
      {
        v5 = [v4 isTrashFolder] ^ 1;
        goto LABEL_3;
      }
    }

    LOBYTE(v5) = 0;
    goto LABEL_3;
  }

  v4 = v3;
  LOBYTE(v5) = 1;
LABEL_3:

  return v5;
}

- (id)modernDateHeadersAttribute
{
  v2 = [(ICNoteCoreDataIndexer *)self resolvedDateHeadersType];
  v3 = @"creationDate";
  if (v2 != 2)
  {
    v3 = 0;
  }

  if (v2 == 1)
  {
    return @"modificationDate";
  }

  else
  {
    return v3;
  }
}

- (int64_t)resolvedDateHeadersType
{
  if (![(ICNoteCoreDataIndexer *)self isShowingDateHeaders])
  {
    return 0;
  }

  v3 = [(ICNoteCoreDataIndexer *)self sortType];
  v4 = [v3 resolvedCustomSortTypeOrder];

  if (v4 > 3)
  {
    return 1;
  }

  else
  {
    return qword_1D4434290[v4];
  }
}

- (BOOL)isShowingDateHeaders
{
  if ([(ICNoteCoreDataIndexer *)self dateHeadersType]== 2)
  {
    return 1;
  }

  v4 = [(ICNoteCoreDataIndexer *)self noteContainer];
  if (!v4 || -[ICNoteCoreDataIndexer dateHeadersType](self, "dateHeadersType") || [MEMORY[0x1E69B7A50] defaultDateHeadersType] == 1)
  {
    v5 = [(ICNoteCoreDataIndexer *)self virtualSmartFolder];
    if (!v5 || -[ICNoteCoreDataIndexer dateHeadersType](self, "dateHeadersType") || [MEMORY[0x1E69B7A50] defaultDateHeadersType] == 1)
    {
      v6 = [(ICNoteCoreDataIndexer *)self noteQuery];
      if (v6 && ![(ICNoteCoreDataIndexer *)self dateHeadersType])
      {
        v3 = [MEMORY[0x1E69B7A50] showsQueryDateHeaders];
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)updateLegacyFetchedResultsControllers
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = [(ICNoteCoreDataIndexer *)self noteCollection];

  if (v3)
  {
    v4 = [(ICNoteCoreDataIndexer *)self noteCollection];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = @"store";
    if (isKindOfClass)
    {
      v6 = @"store.account";
    }

    v7 = v6;

    v8 = MEMORY[0x1E696AE18];
    v9 = [(ICNoteCoreDataIndexer *)self noteCollection];
    v10 = [v8 predicateWithFormat:@"%K == %@ AND deletedFlag == NO AND isBookkeepingEntry == NO AND body.content != nil", v7, v9];

    v11 = [MEMORY[0x1E69B7A88] legacySortDescriptorsForType:{objc_msgSend(MEMORY[0x1E69B7A88], "currentNoteListSortType")}];
    v12 = [(ICNoteCoreDataIndexer *)self legacyNoteFetchedResultsController];

    if (v12)
    {
      v13 = [(ICNoteCoreDataIndexer *)self legacyNoteFetchedResultsController];
      v14 = [v13 fetchRequest];
      [v14 setPredicate:v10];

      v15 = [(ICNoteCoreDataIndexer *)self legacyNoteFetchedResultsController];
      v16 = [v15 fetchRequest];
      [v16 setSortDescriptors:v11];
    }

    else
    {
      v15 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Note"];
      [v15 setPredicate:v10];
      [v15 setSortDescriptors:v11];
      v17 = objc_alloc(MEMORY[0x1E695D600]);
      v16 = [(ICCoreDataIndexer *)self legacyManagedObjectContext];
      v18 = [v17 initWithFetchRequest:v15 managedObjectContext:v16 sectionNameKeyPath:0 cacheName:0];
      [(ICNoteCoreDataIndexer *)self setLegacyNoteFetchedResultsController:v18];
    }

    v19 = [(ICNoteCoreDataIndexer *)self legacyDateHeadersAttribute];

    if (v19)
    {
      v20 = [(ICNoteCoreDataIndexer *)self legacyDateHeadersAttribute];
      v24[0] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      v22 = [(ICNoteCoreDataIndexer *)self legacyNoteFetchedResultsController];
      v23 = [v22 fetchRequest];
      [v23 setPropertiesToFetch:v21];
    }
  }

  else
  {

    [(ICNoteCoreDataIndexer *)self setLegacyNoteFetchedResultsController:0];
  }
}

- (id)activeFetchedResultsControllers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__28;
  v11 = __Block_byref_object_dispose__28;
  v12 = [MEMORY[0x1E695DFA8] set];
  v3 = [(ICNoteCoreDataIndexer *)self indexAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__ICNoteCoreDataIndexer_activeFetchedResultsControllers__block_invoke;
  v6[3] = &unk_1E846B1D8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __56__ICNoteCoreDataIndexer_activeFetchedResultsControllers__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldIncludeInvitations])
  {
    v2 = *(*(*(a1 + 40) + 8) + 40);
    v3 = [*(a1 + 32) invitationsIndexer];
    v4 = [v3 activeFetchedResultsControllers];
    v5 = [v4 allObjects];
    [v2 ic_addObjectsFromNonNilArray:v5];
  }

  if ([*(a1 + 32) shouldIncludeSubfolders])
  {
    v6 = [*(a1 + 32) folderIndexer];
    v7 = [v6 ancestorObjectID];

    if (v7)
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);
      v9 = [*(a1 + 32) folderIndexer];
      v10 = [v9 activeFetchedResultsControllers];
      v11 = [v10 allObjects];
      [v8 addObjectsFromArray:v11];
    }
  }

  v12 = [*(a1 + 32) noteContainer];
  if (v12 || ([*(a1 + 32) noteQuery], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v24 = [*(a1 + 32) virtualSmartFolder];

    if (!v24)
    {
      goto LABEL_13;
    }
  }

  v13 = [*(a1 + 32) modernPinnedNoteFetchedResultsController];

  if (v13)
  {
    v14 = *(*(*(a1 + 40) + 8) + 40);
    v15 = [*(a1 + 32) modernPinnedNoteFetchedResultsController];
    [v14 addObject:v15];
  }

  v16 = [*(a1 + 32) modernNoteFetchedResultsController];

  if (v16)
  {
    v17 = *(*(*(a1 + 40) + 8) + 40);
    v18 = [*(a1 + 32) modernNoteFetchedResultsController];
    [v17 addObject:v18];
  }

LABEL_13:
  v19 = [*(a1 + 32) noteCollection];
  if (v19)
  {
    v20 = v19;
    v21 = [*(a1 + 32) legacyNoteFetchedResultsController];

    if (v21)
    {
      v22 = *(a1 + 32);
      v23 = *(*(*(a1 + 40) + 8) + 40);
      v25 = [v22 legacyNoteFetchedResultsController];
      [v23 addObject:v25];
    }
  }
}

- (void)willIndex
{
  v3 = [(ICNoteCoreDataIndexer *)self indexAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__ICNoteCoreDataIndexer_willIndex__block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __34__ICNoteCoreDataIndexer_willIndex__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) folderIndexer];
  [v2 willIndex];

  v3 = [*(a1 + 32) invitationsIndexer];
  [v3 willIndex];

  v4 = [MEMORY[0x1E695DF90] dictionary];
  [*(a1 + 32) setSectionIdentifiersToManagedObjectIDs:v4];

  v5 = [MEMORY[0x1E695DFA0] orderedSet];
  [*(a1 + 32) setSectionIdentifiers:v5];
}

- (void)mergePinnedNotesAndNotesSectionIfNeeded
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v3 = [(ICCoreDataIndexer *)self modernManagedObjectContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__ICNoteCoreDataIndexer_mergePinnedNotesAndNotesSectionIfNeeded__block_invoke;
  v16[3] = &unk_1E8468FA8;
  v16[4] = self;
  v16[5] = &v17;
  [v3 performBlockAndWait:v16];

  if (v18[3])
  {
    v4 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
    v5 = [(ICNoteCoreDataIndexer *)self pinnedNoteSectionIdentifier];
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = [v6 array];
    v8 = [v7 copy];

    if (v8)
    {
      v9 = [v8 count];
      if (v9 < [(ICNoteCoreDataIndexer *)self pinnedNotesSectionMinimumCount])
      {
        v10 = [(ICNoteCoreDataIndexer *)self pinnedNoteSectionIdentifier];
        [(ICNoteCoreDataIndexer *)self removeObjectIDs:v8 fromIndexInSection:v10];

        if ([(ICNoteCoreDataIndexer *)self resolvedDateHeadersType])
        {
          v11 = [(ICCoreDataIndexer *)self modernManagedObjectContext];
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __64__ICNoteCoreDataIndexer_mergePinnedNotesAndNotesSectionIfNeeded__block_invoke_2;
          v13[3] = &unk_1E8468F80;
          v14 = v8;
          v15 = self;
          [v11 performBlockAndWait:v13];

          v12 = v14;
        }

        else
        {
          v12 = [(ICNoteCoreDataIndexer *)self noteSectionIdentifier];
          [(ICNoteCoreDataIndexer *)self prependObjectIDs:v8 toIndexInSection:v12];
        }
      }
    }
  }

  _Block_object_dispose(&v17, 8);
}

uint64_t __64__ICNoteCoreDataIndexer_mergePinnedNotesAndNotesSectionIfNeeded__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) sortsByPinned];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)updateSectionIdentifiers
{
  v3 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
  v4 = [v3 allKeys];
  v13 = [v4 mutableCopy];

  if ([(ICNoteCoreDataIndexer *)self shouldIncludeTags]|| [(ICNoteCoreDataIndexer *)self shouldIncludeTagDetail])
  {
    v5 = [(ICNoteCoreDataIndexer *)self tagSectionIdentifier];
    v6 = [v13 containsObject:v5];

    if ((v6 & 1) == 0)
    {
      v7 = [(ICNoteCoreDataIndexer *)self tagSectionIdentifier];
      [v13 insertObject:v7 atIndex:0];
    }
  }

  v8 = [MEMORY[0x1E695DF70] array];
  v9 = +[ICNoteSectionIdentifier sortDescriptors];
  [v8 addObjectsFromArray:v9];

  if ([(ICNoteCoreDataIndexer *)self resolvedDateHeadersType])
  {
    v10 = [(ICNoteCoreDataIndexer *)self sortType];
    v11 = +[ICNoteTimelineSectionIdentifier sortDescriptorsWithDirection:](ICNoteTimelineSectionIdentifier, "sortDescriptorsWithDirection:", [v10 direction]);
    [v8 addObjectsFromArray:v11];
  }

  [v13 sortUsingDescriptors:v8];
  v12 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v13];
  [(ICNoteCoreDataIndexer *)self setSectionIdentifiers:v12];
}

- (void)didIndex
{
  v3 = [(ICNoteCoreDataIndexer *)self indexAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__ICNoteCoreDataIndexer_didIndex__block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __33__ICNoteCoreDataIndexer_didIndex__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) invitationsIndexer];
  [v2 didIndex];

  v3 = [*(a1 + 32) folderIndexer];
  [v3 didIndex];
}

- (ICNoteCoreDataIndexer)initWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = ICNoteCoreDataIndexer;
  v8 = [(ICCoreDataIndexer *)&v32 initWithLegacyManagedObjectContext:v6 modernManagedObjectContext:v7];
  v9 = v8;
  if (v8)
  {
    v8->_shouldIncludeSubfolders = 0;
    v8->_shouldIncludeTags = 0;
    v8->_shouldIncludeTagDetail = 0;
    v8->_shouldIncludeInvitations = 0;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.notes.note-index-access-queue", v10);
    indexAccessQueue = v9->_indexAccessQueue;
    v9->_indexAccessQueue = v11;

    v13 = [MEMORY[0x1E69B7A68] noteSortTypeDefaultAscending];
    sortType = v9->_sortType;
    v9->_sortType = v13;

    v9->_pinnedNotesSectionMinimumCount = 1;
    v15 = [[ICNoteSectionIdentifier alloc] initWithNoteSectionType:0];
    tagSectionIdentifier = v9->_tagSectionIdentifier;
    v9->_tagSectionIdentifier = v15;

    v17 = objc_alloc_init(ICNoteFolderSectionIdentifier);
    folderSectionIdentifier = v9->_folderSectionIdentifier;
    v9->_folderSectionIdentifier = v17;

    v19 = [[ICNoteSectionIdentifier alloc] initWithNoteSectionType:1];
    invitationsSectionIdentifier = v9->_invitationsSectionIdentifier;
    v9->_invitationsSectionIdentifier = v19;

    v21 = [[ICNoteSectionIdentifier alloc] initWithNoteSectionType:3];
    pinnedNoteSectionIdentifier = v9->_pinnedNoteSectionIdentifier;
    v9->_pinnedNoteSectionIdentifier = v21;

    v23 = [[ICNoteSectionIdentifier alloc] initWithNoteSectionType:4];
    noteSectionIdentifier = v9->_noteSectionIdentifier;
    v9->_noteSectionIdentifier = v23;

    v25 = [ICInvitationsCoreDataIndexer alloc];
    v26 = [(ICNoteCoreDataIndexer *)v9 invitationsSectionIdentifier];
    v27 = [(ICInvitationsCoreDataIndexer *)v25 initWithModernManagedObjectContext:v7 sectionIdentifier:v26];
    invitationsIndexer = v9->_invitationsIndexer;
    v9->_invitationsIndexer = v27;

    v29 = [[ICFolderCoreDataIndexer alloc] initWithLegacyManagedObjectContext:v6 modernManagedObjectContext:v7];
    folderIndexer = v9->_folderIndexer;
    v9->_folderIndexer = v29;

    [(ICCoreDataIndexer *)v9->_folderIndexer setShouldIncludeOutlineParentItems:1];
    [(ICFolderCoreDataIndexer *)v9->_folderIndexer setShouldIncludeAccount:2];
    [(ICFolderCoreDataIndexer *)v9->_folderIndexer setShouldIncludeSharedWithYou:2];
    [(ICFolderCoreDataIndexer *)v9->_folderIndexer setShouldIncludeSystemPaper:2];
    [(ICFolderCoreDataIndexer *)v9->_folderIndexer setShouldIncludeMathNotes:2];
    [(ICFolderCoreDataIndexer *)v9->_folderIndexer setShouldIncludeCallNotes:2];
    [(ICFolderCoreDataIndexer *)v9->_folderIndexer setShouldAutoExpandSingleSection:0];
  }

  return v9;
}

- (void)setShouldIncludeOutlineParentItems:(BOOL)a3
{
  v3 = a3;
  self->_shouldIncludeOutlineParentItems = a3;
  v5 = [(ICNoteCoreDataIndexer *)self folderIndexer];
  [v5 setShouldIncludeOutlineParentItems:v3];

  v6 = [(ICNoteCoreDataIndexer *)self invitationsIndexer];
  [v6 setShouldIncludeOutlineParentItems:v3];
}

- (void)setNoteCollection:(id)a3
{
  objc_storeStrong(&self->_noteCollection, a3);
  v5 = a3;
  noteContainer = self->_noteContainer;
  self->_noteContainer = 0;

  noteQuery = self->_noteQuery;
  self->_noteQuery = 0;

  virtualSmartFolder = self->_virtualSmartFolder;
  self->_virtualSmartFolder = 0;

  v9 = [v5 objectID];

  v10 = [(ICNoteCoreDataIndexer *)self folderIndexer];
  [v10 setAncestorObjectID:v9];

  v11 = [(ICNoteCoreDataIndexer *)self expansionStateContext];
  v12 = [(ICNoteCoreDataIndexer *)self invitationsIndexer];
  [v12 setExpansionStateContext:v11];

  v13 = [(ICNoteCoreDataIndexer *)self invitationsIndexer];
  [v13 setAccount:0];

  [(ICCoreDataIndexer *)self setNeedsFetchedResultsControllerUpdate:1];
}

- (void)setNoteContainer:(id)a3
{
  v4 = a3;
  noteCollection = self->_noteCollection;
  self->_noteCollection = 0;

  noteContainer = self->_noteContainer;
  self->_noteContainer = v4;
  v7 = v4;

  noteQuery = self->_noteQuery;
  self->_noteQuery = 0;

  virtualSmartFolder = self->_virtualSmartFolder;
  self->_virtualSmartFolder = 0;

  objc_opt_class();
  v10 = ICDynamicCast();
  v11 = [v10 objectID];
  v12 = [(ICNoteCoreDataIndexer *)self folderIndexer];
  [v12 setAncestorObjectID:v11];

  v13 = [(ICNoteCoreDataIndexer *)self expansionStateContext];
  v14 = [(ICNoteCoreDataIndexer *)self invitationsIndexer];
  [v14 setExpansionStateContext:v13];

  objc_opt_class();
  v15 = ICDynamicCast();

  v16 = [(ICNoteCoreDataIndexer *)self invitationsIndexer];
  [v16 setAccount:v15];

  [(ICCoreDataIndexer *)self setNeedsFetchedResultsControllerUpdate:1];
}

- (void)setNoteQuery:(id)a3
{
  v4 = a3;
  noteCollection = self->_noteCollection;
  self->_noteCollection = 0;

  noteContainer = self->_noteContainer;
  self->_noteContainer = 0;

  noteQuery = self->_noteQuery;
  self->_noteQuery = v4;
  v8 = v4;

  virtualSmartFolder = self->_virtualSmartFolder;
  self->_virtualSmartFolder = 0;

  v10 = [(ICNoteCoreDataIndexer *)self folderIndexer];
  [v10 setAncestorObjectID:0];

  v11 = [(ICNoteCoreDataIndexer *)self expansionStateContext];
  v12 = [(ICNoteCoreDataIndexer *)self invitationsIndexer];
  [v12 setExpansionStateContext:v11];

  v13 = [(ICNoteCoreDataIndexer *)self invitationsIndexer];
  [v13 setAccount:0];

  [(ICCoreDataIndexer *)self setNeedsFetchedResultsControllerUpdate:1];
}

- (void)setVirtualSmartFolder:(id)a3
{
  v4 = a3;
  noteCollection = self->_noteCollection;
  self->_noteCollection = 0;

  noteContainer = self->_noteContainer;
  self->_noteContainer = 0;

  noteQuery = self->_noteQuery;
  self->_noteQuery = 0;

  virtualSmartFolder = self->_virtualSmartFolder;
  self->_virtualSmartFolder = v4;

  v9 = [(ICNoteCoreDataIndexer *)self folderIndexer];
  [v9 setAncestorObjectID:0];

  v10 = [(ICNoteCoreDataIndexer *)self expansionStateContext];
  v11 = [(ICNoteCoreDataIndexer *)self invitationsIndexer];
  [v11 setExpansionStateContext:v10];

  v12 = [(ICNoteCoreDataIndexer *)self invitationsIndexer];
  [v12 setAccount:0];

  [(ICCoreDataIndexer *)self setNeedsFetchedResultsControllerUpdate:1];
}

- (void)setSortType:(id)a3 force:(BOOL)a4
{
  v8 = a3;
  if (a4 || ([(ICFolderCustomNoteSortType *)self->_sortType isEqual:v8]& 1) == 0)
  {
    objc_storeStrong(&self->_sortType, a3);
    v7 = [(ICNoteCoreDataIndexer *)self invitationsIndexer];
    [v7 setSortType:v8];

    [(ICCoreDataIndexer *)self setNeedsFetchedResultsControllerUpdate:1];
  }
}

void __39__ICNoteCoreDataIndexer_totalNoteCount__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (([a2 sectionType] - 3) <= 2)
  {
    *(*(*(a1 + 32) + 8) + 24) += [v5 count];
  }
}

- (void)togglePinnedForNote:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();
  v6 = v5;
  if (v5 && [v5 isPinnable])
  {
    if ([(ICNoteCoreDataIndexer *)self sortsByPinned])
    {
      v7 = [(ICNoteCoreDataIndexer *)self indexAccessQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__ICNoteCoreDataIndexer_togglePinnedForNote___block_invoke;
      block[3] = &unk_1E8468D98;
      block[4] = self;
      v10 = v4;
      v11 = v6;
      dispatch_sync(v7, block);
    }

    else
    {
      [v6 changePinStatusIfPossible];
      v8 = [v6 managedObjectContext];
      [v8 ic_save];
    }
  }
}

uint64_t __45__ICNoteCoreDataIndexer_togglePinnedForNote___block_invoke(id *a1)
{
  v34[1] = *MEMORY[0x1E69E9840];
  [a1[4] unmergePinnedNotesAndNotesSectionIfNeeded];
  v2 = [a1[4] sectionIdentifiersToManagedObjectIDs];
  v3 = [a1[4] pinnedNoteSectionIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [a1[5] objectID];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    [a1[6] setIsPinned:0];
    [a1[6] updateChangeCountWithReason:@"Toggled pin state"];
    v7 = [a1[6] managedObjectContext];
    [v7 ic_save];

    v8 = [a1[4] unpinnedSectionIdentifierForObject:a1[6]];
    v9 = a1[4];
    v10 = [a1[5] objectID];
    v34[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    v12 = [a1[4] pinnedNoteSectionIdentifier];
    [v9 removeObjectIDs:v11 fromIndexInSection:v12];

    v13 = a1[4];
    v14 = [a1[5] objectID];
    v33 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    [v13 addObjectIDs:v15 toIndexInSection:v8];

    [a1[4] sortSection:v8];
  }

  else
  {
    v8 = [a1[4] unpinnedSectionIdentifierForObject:a1[6]];
    v16 = [a1[4] sectionIdentifiersToManagedObjectIDs];
    v17 = [v16 objectForKeyedSubscript:v8];
    v18 = [a1[5] objectID];
    v19 = [v17 containsObject:v18];

    if (v19)
    {
      [a1[6] setIsPinned:1];
      [a1[6] updateChangeCountWithReason:@"Toggled pin state"];
      v20 = [a1[6] managedObjectContext];
      [v20 ic_save];

      v21 = a1[4];
      v22 = [a1[5] objectID];
      v32 = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      v24 = [a1[4] pinnedNoteSectionIdentifier];
      [v21 addObjectIDs:v23 toIndexInSection:v24];

      v25 = a1[4];
      v26 = [a1[5] objectID];
      v31 = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
      [v25 removeObjectIDs:v27 fromIndexInSection:v8];

      v28 = a1[4];
      v29 = [v28 pinnedNoteSectionIdentifier];
      [v28 sortSection:v29];
    }
  }

  [a1[4] mergePinnedNotesAndNotesSectionIfNeeded];
  return [a1[4] updateSectionIdentifiers];
}

- (void)updateContainerPredicate
{
  v3 = [(ICNoteCoreDataIndexer *)self noteCollection];

  if (v3)
  {
    v7 = [(ICNoteCoreDataIndexer *)self noteCollection];
    [(ICNoteCoreDataIndexer *)self setNoteCollection:?];
  }

  else
  {
    v4 = [(ICNoteCoreDataIndexer *)self noteContainer];

    if (v4)
    {
      v7 = [(ICNoteCoreDataIndexer *)self noteContainer];
      [(ICNoteCoreDataIndexer *)self setNoteContainer:?];
    }

    else
    {
      v5 = [(ICNoteCoreDataIndexer *)self noteQuery];

      if (v5)
      {
        v7 = [(ICNoteCoreDataIndexer *)self noteQuery];
        [(ICNoteCoreDataIndexer *)self setNoteQuery:?];
      }

      else
      {
        v6 = [(ICNoteCoreDataIndexer *)self virtualSmartFolder];

        if (!v6)
        {
          return;
        }

        v7 = [(ICNoteCoreDataIndexer *)self virtualSmartFolder];
        [(ICNoteCoreDataIndexer *)self setVirtualSmartFolder:?];
      }
    }
  }
}

- (id)indexObjectsInSection:(id)a3 sectionIndex:(unint64_t)a4 fetchedResultsController:(id)a5
{
  v8 = a3;
  v9 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__28;
  v25 = __Block_byref_object_dispose__28;
  v26 = 0;
  v10 = [(ICNoteCoreDataIndexer *)self indexAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__ICNoteCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke;
  block[3] = &unk_1E846B228;
  v16 = v9;
  v17 = v8;
  v18 = self;
  v19 = &v21;
  v20 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_sync(v10, block);

  v13 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v13;
}

void __85__ICNoteCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) managedObjectContext];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __85__ICNoteCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke_2;
  v68[3] = &unk_1E8468FA8;
  v70 = *(a1 + 56);
  v69 = *(a1 + 40);
  [v3 performBlockAndWait:v68];

  v4 = [*(a1 + 48) folderIndexer];
  v5 = [v4 activeFetchedResultsControllers];
  LODWORD(v2) = [v5 containsObject:*v2];

  v6 = *(a1 + 48);
  if (v2)
  {
    v7 = [v6 folderIndexer];
    v8 = [v7 indexObjectsInSection:*(a1 + 40) sectionIndex:*(a1 + 64) fetchedResultsController:*(a1 + 32)];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(a1 + 48);
    v12 = *(*(*(a1 + 56) + 8) + 40);
    v13 = [v11 folderSectionIdentifier];
    [v11 addObjectIDs:v12 toIndexInSection:v13];

    goto LABEL_24;
  }

  v14 = [v6 invitationsIndexer];
  v15 = [v14 activeFetchedResultsControllers];
  v16 = [v15 containsObject:*(a1 + 32)];

  if (v16)
  {
    v17 = [*(a1 + 48) invitationsIndexer];
    v18 = [v17 indexObjectsInSection:*(a1 + 40) sectionIndex:*(a1 + 64) fetchedResultsController:*(a1 + 32)];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = *(a1 + 48);
    v22 = *(*(*(a1 + 56) + 8) + 40);
    v23 = [v21 invitationsSectionIdentifier];
    [v21 addObjectIDs:v22 toIndexInSection:v23];

    goto LABEL_24;
  }

  v24 = *(a1 + 32);
  v25 = [*(a1 + 48) modernPinnedNoteFetchedResultsController];
  LODWORD(v24) = v24 == v25;

  if (v24)
  {
    v30 = *(a1 + 48);
    v31 = *(*(*(a1 + 56) + 8) + 40);
    v32 = [v30 pinnedNoteSectionIdentifier];
    [v30 addObjectIDs:v31 toIndexInSection:v32];

    goto LABEL_24;
  }

  v26 = *(a1 + 32);
  v27 = [*(a1 + 48) modernNoteFetchedResultsController];
  LODWORD(v26) = v26 == v27;

  if (!v26)
  {
    v28 = *(a1 + 32);
    v29 = [*(a1 + 48) legacyNoteFetchedResultsController];
    LODWORD(v28) = v28 == v29;

    if (!v28)
    {
      goto LABEL_24;
    }

LABEL_23:
    v51 = *(a1 + 48);
    v52 = *(*(*(a1 + 56) + 8) + 40);
    v53 = [v51 noteSectionIdentifier];
    [v51 addObjectIDs:v52 toIndexInSection:v53];

    goto LABEL_24;
  }

  if (![*(a1 + 48) resolvedDateHeadersType])
  {
    goto LABEL_23;
  }

  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__28;
  v66 = __Block_byref_object_dispose__28;
  v67 = 0;
  v33 = [*(a1 + 32) managedObjectContext];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __85__ICNoteCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke_3;
  v58[3] = &unk_1E8469640;
  v61 = &v62;
  v34 = *(a1 + 40);
  v35 = *(a1 + 48);
  v59 = v34;
  v60 = v35;
  [v33 performBlockAndWait:v58];

  v36 = [*(*(*(a1 + 56) + 8) + 40) count];
  if (v36 != [v63[5] count])
  {
    v37 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      __85__ICNoteCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke_cold_1(v37);
    }
  }

  v38 = [MEMORY[0x1E695DF00] now];
  v39 = *(*(*(a1 + 56) + 8) + 40);
  v40 = v63[5];
  v41 = [*(a1 + 48) sortType];
  v42 = +[ICNoteTimelineController timelineSectionsForNoteObjectIDs:dates:referenceDate:direction:](ICNoteTimelineController, "timelineSectionsForNoteObjectIDs:dates:referenceDate:direction:", v39, v40, v38, [v41 direction]);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v43 = v42;
  v44 = [v43 countByEnumeratingWithState:&v54 objects:v71 count:16];
  if (v44)
  {
    v45 = *v55;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v55 != v45)
        {
          objc_enumerationMutation(v43);
        }

        v47 = *(*(&v54 + 1) + 8 * i);
        v48 = *(a1 + 48);
        v49 = [v47 objectIDs];
        v50 = [v47 identifier];
        [v48 addObjectIDs:v49 toIndexInSection:v50];
      }

      v44 = [v43 countByEnumeratingWithState:&v54 objects:v71 count:16];
    }

    while (v44);
  }

  _Block_object_dispose(&v62, 8);
LABEL_24:
  [*(a1 + 48) mergePinnedNotesAndNotesSectionIfNeeded];
  [*(a1 + 48) updateSectionIdentifiers];
}

void __85__ICNoteCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) objects];
  v2 = [v5 valueForKey:@"objectID"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __85__ICNoteCoreDataIndexer_indexObjectsInSection_sectionIndex_fetchedResultsController___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) objects];
  v2 = [*(a1 + 40) modernDateHeadersAttribute];
  v3 = [v6 valueForKey:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)newSnapshotFromIndexWithLegacyManagedObjectContext:(id)a3 modernManagedObjectContext:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v6 = [(ICNoteCoreDataIndexer *)self indexAccessQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __103__ICNoteCoreDataIndexer_newSnapshotFromIndexWithLegacyManagedObjectContext_modernManagedObjectContext___block_invoke;
  v11[3] = &unk_1E8468F80;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  dispatch_sync(v6, v11);

  v8 = v12;
  v9 = v7;

  return v9;
}

void __103__ICNoteCoreDataIndexer_newSnapshotFromIndexWithLegacyManagedObjectContext_modernManagedObjectContext___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) sectionIdentifiers];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) sectionIdentifiers];
    v5 = [v4 array];
    [v3 appendSectionsWithIdentifiers:v5];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [*(a1 + 32) sectionIdentifiers];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          v12 = [*(a1 + 32) sectionIdentifiersToManagedObjectIDs];
          v13 = [v12 objectForKeyedSubscript:v11];

          if (v13)
          {
            v14 = *(a1 + 40);
            v15 = [v13 array];
            [v14 appendItemsWithIdentifiers:v15 intoSectionWithIdentifier:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }
}

- (id)sectionIdentifiersForSectionType:(unint64_t)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695E0F0];
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v9 = [(ICNoteCoreDataIndexer *)self sectionIdentifiers];
      v10 = [v9 array];
      v11 = v10;
      v12 = &__block_literal_global_41;
    }

    else
    {
      if (a3 != 5)
      {
        goto LABEL_16;
      }

      v9 = [(ICNoteCoreDataIndexer *)self sectionIdentifiers];
      v10 = [v9 array];
      v11 = v10;
      v12 = &__block_literal_global_43;
    }

    v4 = [v10 ic_objectsPassingTest:v12];
  }

  else
  {
    if (a3 == 1)
    {
      v13 = [(ICNoteCoreDataIndexer *)self sectionIdentifiers];
      v14 = [v13 array];
      v15 = [v14 ic_objectsPassingTest:&__block_literal_global_34];

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __58__ICNoteCoreDataIndexer_sectionIdentifiersForSectionType___block_invoke_2;
      v22[3] = &unk_1E846B270;
      v22[4] = self;
      v4 = [v15 ic_map:v22];

      goto LABEL_16;
    }

    if (a3 != 2)
    {
      goto LABEL_16;
    }

    v5 = [(ICNoteCoreDataIndexer *)self sectionIdentifiers];
    v6 = [v5 array];
    v4 = [v6 ic_objectsPassingTest:&__block_literal_global_35];

    v7 = [(ICNoteCoreDataIndexer *)self shouldIncludeTags];
    if (v7 || ([(ICNoteCoreDataIndexer *)self noteQuery], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      if ([v4 count])
      {
        v8 = 0;
        if (v7)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = [(ICNoteCoreDataIndexer *)self totalInvitationsCount]== 0;
        if (v7)
        {
LABEL_8:
          if (!v8)
          {
            goto LABEL_16;
          }

          goto LABEL_21;
        }
      }

      if (!v8)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    v19 = [(ICNoteCoreDataIndexer *)self virtualSmartFolder];
    if (v19)
    {
      v20 = v19;
      if ([v4 count])
      {
      }

      else
      {
        v21 = [(ICNoteCoreDataIndexer *)self totalInvitationsCount];

        if (!v21)
        {
LABEL_21:
          v17 = [[ICNoteSectionIdentifier alloc] initWithNoteSectionType:4];
          v23[0] = v17;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];

          v4 = v18;
        }
      }
    }
  }

LABEL_16:

  return v4;
}

ICNoteFolderSectionIdentifier *__58__ICNoteCoreDataIndexer_sectionIdentifiersForSectionType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = ICDynamicCast();
  if (v4)
  {
    v5 = [ICNoteFolderSectionIdentifier alloc];
    v6 = [*(a1 + 32) folderIndexer];
    v7 = [v6 ancestorObjectID];
    v8 = [(ICNoteFolderSectionIdentifier *)v5 initWithNoteContainerObjectID:v7];
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

BOOL __58__ICNoteCoreDataIndexer_sectionIdentifiersForSectionType___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 sectionType] == 4 || objc_msgSend(v2, "sectionType") == 3 || objc_msgSend(v2, "sectionType") == 5;

  return v3;
}

- (id)sectionSnapshotsForSectionType:(unint64_t)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695E0F8];
  if (a3 <= 5 && ((1 << a3) & 0x36) != 0)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = [(ICNoteCoreDataIndexer *)self indexAccessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __110__ICNoteCoreDataIndexer_sectionSnapshotsForSectionType_legacyManagedObjectContext_modernManagedObjectContext___block_invoke;
    block[3] = &unk_1E846B298;
    v19 = a3;
    block[4] = self;
    v16 = v11;
    v17 = v8;
    v18 = v9;
    v13 = v11;
    dispatch_sync(v12, block);

    v10 = [v13 copy];
  }

  return v10;
}

void __110__ICNoteCoreDataIndexer_sectionSnapshotsForSectionType_legacyManagedObjectContext_modernManagedObjectContext___block_invoke(uint64_t a1)
{
  v1 = a1;
  v85 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  if (v2 <= 3)
  {
    if (v2 != 1)
    {
      if (v2 != 2)
      {
        return;
      }

      v3 = [*(a1 + 32) sectionIdentifiersForSectionType:2];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v59 = [v3 countByEnumeratingWithState:&v61 objects:v79 count:16];
      if (v59)
      {
        v57 = *v62;
        v58 = v3;
        do
        {
          for (i = 0; i != v59; ++i)
          {
            if (*v62 != v57)
            {
              objc_enumerationMutation(v3);
            }

            v5 = *(*(&v61 + 1) + 8 * i);
            v60 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
            v6 = [v3 count];
            v7 = [*(v1 + 32) invitationsIndexer];
            v8 = [v7 newSnapshotFromIndex];
            v9 = [v8 sectionIdentifiers];
            v10 = [v9 count];
            v11 = v1;
            v12 = v10 + v6;
            v13 = v11;
            v14 = [*(v11 + 32) folderIndexer];
            v15 = [v14 newSnapshotFromIndex];
            v16 = [v15 sectionIdentifiers];
            v17 = v12 + [v16 count];

            v18 = v17 <= 1 && [v5 sectionType] == 4;
            v1 = v13;
            v3 = v58;
            if (![*(v13 + 32) shouldIncludeOutlineParentItems] || v18)
            {
              v21 = [*(v13 + 32) sectionIdentifiersToManagedObjectIDs];
              v25 = [v21 objectForKeyedSubscript:v5];
              v26 = [v25 array];
              v20 = v60;
              [v60 appendItems:v26];
            }

            else
            {
              v78 = v5;
              v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
              v20 = v60;
              [v60 appendItems:v19];

              v21 = +[ICExpansionState sharedExpansionState];
              v22 = [*(v1 + 32) expansionStateContext];
              v23 = [v21 isSectionIdentiferExpanded:v5 inContext:v22];

              if (v23)
              {
                v77 = v5;
                v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
                [v60 expandItems:v24];
              }

              v25 = [*(v1 + 32) sectionIdentifiersToManagedObjectIDs];
              v26 = [v25 objectForKeyedSubscript:v5];
              v27 = [v26 array];
              [v60 appendItems:v27 intoParent:v5];
            }

            [*(v1 + 40) setObject:v20 forKeyedSubscript:v5];
          }

          v59 = [v58 countByEnumeratingWithState:&v61 objects:v79 count:16];
        }

        while (v59);
      }

      goto LABEL_53;
    }

    v40 = [*(a1 + 32) folderIndexer];
    v3 = [v40 sectionSnapshotsForSectionType:1 legacyManagedObjectContext:*(v1 + 48) modernManagedObjectContext:*(v1 + 56)];

    v41 = [*(v1 + 32) sectionIdentifiersForSectionType:*(v1 + 64)];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v42 = [v41 countByEnumeratingWithState:&v69 objects:v81 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v70;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v70 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v69 + 1) + 8 * j);
          v47 = [v3 allValues];
          v48 = [v47 firstObject];
          [*(v1 + 40) setObject:v48 forKeyedSubscript:v46];
        }

        v43 = [v41 countByEnumeratingWithState:&v69 objects:v81 count:16];
      }

      while (v43);
    }

    goto LABEL_52;
  }

  if (v2 == 5)
  {
    v49 = [*(a1 + 32) invitationsIndexer];
    v3 = [v49 sectionSnapshotsForSectionType:5 legacyManagedObjectContext:*(v1 + 48) modernManagedObjectContext:*(v1 + 56)];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v41 = [*(v1 + 32) sectionIdentifiersForSectionType:*(v1 + 64)];
    v50 = [v41 countByEnumeratingWithState:&v65 objects:v80 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v66;
      do
      {
        for (k = 0; k != v51; ++k)
        {
          if (*v66 != v52)
          {
            objc_enumerationMutation(v41);
          }

          v54 = *(*(&v65 + 1) + 8 * k);
          v55 = [v3 allValues];
          v56 = [v55 firstObject];
          [*(v1 + 40) setObject:v56 forKeyedSubscript:v54];
        }

        v51 = [v41 countByEnumeratingWithState:&v65 objects:v80 count:16];
      }

      while (v51);
    }

LABEL_52:

    goto LABEL_53;
  }

  if (v2 != 4)
  {
    return;
  }

  v3 = [*(a1 + 32) sectionIdentifiersForSectionType:4];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v28 = [v3 countByEnumeratingWithState:&v73 objects:v84 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v74;
    do
    {
      v31 = v3;
      for (m = 0; m != v29; ++m)
      {
        if (*v74 != v30)
        {
          objc_enumerationMutation(v31);
        }

        v33 = *(*(&v73 + 1) + 8 * m);
        objc_opt_class();
        v34 = ICDynamicCast();
        if (![v34 sectionType])
        {
          v35 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
          if ([*(v1 + 32) shouldIncludeTags])
          {
            v36 = +[ICTagContainerItemIdentifier sharedItemIdentifier];
            v83 = v36;
            v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
            [v35 appendItems:v37];
          }

          if ([*(v1 + 32) shouldIncludeTagDetail])
          {
            v38 = +[ICTagDetailItemIdentifier sharedItemIdentifier];
            v82 = v38;
            v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
            [v35 appendItems:v39];
          }

          [*(v1 + 40) setObject:v35 forKeyedSubscript:v33];
        }
      }

      v3 = v31;
      v29 = [v31 countByEnumeratingWithState:&v73 objects:v84 count:16];
    }

    while (v29);
  }

LABEL_53:
}

- (id)sectionIdentifierForHeaderInSection:(int64_t)a3
{
  v5 = [(ICNoteCoreDataIndexer *)self sectionIdentifiers];
  v6 = [v5 count];

  v7 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
  v8 = [(ICNoteCoreDataIndexer *)self pinnedNoteSectionIdentifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [(ICNoteCoreDataIndexer *)self sectionIdentifiers];
  if ([v10 count] >= a3)
  {

    if (v6 <= 1 && !v9)
    {
      v11 = 0;
      goto LABEL_8;
    }

    v10 = [(ICNoteCoreDataIndexer *)self sectionIdentifiers];
    v11 = [v10 objectAtIndexedSubscript:a3];
  }

  else
  {
    v11 = 0;
  }

LABEL_8:

  return v11;
}

- (id)firstRelevantItemIdentifier
{
  v3 = [(ICNoteCoreDataIndexer *)self sectionIdentifiers];
  v4 = [v3 ic_objectPassingTest:&__block_literal_global_49];

  v5 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v6 firstObject];

  return v7;
}

- (id)nextRelevantItemIdentifierAfter:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteCoreDataIndexer *)self sortedNoteIdentifiers];
  v6 = [v5 mutableCopy];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __57__ICNoteCoreDataIndexer_nextRelevantItemIdentifierAfter___block_invoke;
  v20[3] = &unk_1E846A378;
  v7 = v4;
  v21 = v7;
  v8 = [v5 indexesOfObjectsPassingTest:v20];
  [v6 removeObjectsAtIndexes:v8];
  v9 = [v5 count];
  if (v9 == [v6 count])
  {
    v10 = 0;
    goto LABEL_17;
  }

  v11 = [v6 firstObject];
  v12 = [v5 indexOfObject:v11];

  v13 = [v6 lastObject];
  v14 = [v5 indexOfObject:v13];

  v15 = MEMORY[0x1E695E0F0];
  if (v12 != 0x7FFFFFFFFFFFFFFFLL && v14 != 0x7FFFFFFFFFFFFFFFLL && [v5 count] > v14)
  {
    v15 = [v5 subarrayWithRange:{v12, v14 - v12}];
  }

  v16 = [v15 mutableCopy];
  [v16 removeObjectsInArray:v7];
  if ([v16 count])
  {
    v17 = [v16 firstObject];
  }

  else
  {
    if ([v5 count] > v14 + 1)
    {
      v18 = v14 + 1;
    }

    else
    {
      v18 = v12 - 1;
    }

    if ([v5 count] <= v18)
    {
      goto LABEL_15;
    }

    v17 = [v5 objectAtIndexedSubscript:v18];
  }

  v10 = v17;
  if (!v17)
  {
LABEL_15:
    v10 = [(ICNoteCoreDataIndexer *)self firstRelevantItemIdentifier];
  }

LABEL_17:

  return v10;
}

- (void)deleteObjectWithIDFromIndex:(id)a3 inSection:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = ICDynamicCast();
  if (v8)
  {
    v9 = [(ICNoteCoreDataIndexer *)self folderSectionIdentifier];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__28;
      v31 = __Block_byref_object_dispose__28;
      v32 = 0;
      v11 = [(ICCoreDataIndexer *)self modernManagedObjectContext];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __63__ICNoteCoreDataIndexer_deleteObjectWithIDFromIndex_inSection___block_invoke;
      v24[3] = &unk_1E8469640;
      v26 = &v27;
      v24[4] = self;
      v12 = v6;
      v25 = v12;
      [v11 performBlockAndWait:v24];

      v13 = [(ICNoteCoreDataIndexer *)self folderIndexer];
      [v13 deleteObjectWithIDFromIndex:v12 inSection:v28[5]];

      [(ICNoteCoreDataIndexer *)self updateSectionIdentifiers];
      _Block_object_dispose(&v27, 8);
      v14 = v32;
LABEL_10:

      goto LABEL_11;
    }

    v16 = [(ICNoteCoreDataIndexer *)self invitationsSectionIdentifier];
    v17 = [v8 isEqual:v16];

    if (!v17)
    {
      v20 = [(ICNoteCoreDataIndexer *)self indexAccessQueue];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __63__ICNoteCoreDataIndexer_deleteObjectWithIDFromIndex_inSection___block_invoke_2;
      v21[3] = &unk_1E8468D98;
      v21[4] = self;
      v22 = v6;
      v23 = v8;
      dispatch_sync(v20, v21);

      v14 = v22;
      goto LABEL_10;
    }

    v18 = [(ICNoteCoreDataIndexer *)self invitationsIndexer];
    v19 = [(ICNoteCoreDataIndexer *)self invitationsSectionIdentifier];
    [v18 deleteObjectWithIDFromIndex:v6 inSection:v19];

    [(ICNoteCoreDataIndexer *)self updateSectionIdentifiers];
  }

  else
  {
    v15 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(ICNoteCoreDataIndexer *)v6 deleteObjectWithIDFromIndex:v7 inSection:v15];
    }
  }

LABEL_11:
}

void __63__ICNoteCoreDataIndexer_deleteObjectWithIDFromIndex_inSection___block_invoke(uint64_t a1)
{
  v2 = [ICFolderListSectionIdentifier alloc];
  v7 = [*(a1 + 32) modernManagedObjectContext];
  v3 = [v7 ic_existingObjectWithID:*(a1 + 40)];
  v4 = [(ICFolderListSectionIdentifier *)v2 initWithObject:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __63__ICNoteCoreDataIndexer_deleteObjectWithIDFromIndex_inSection___block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v5[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 removeObjectIDs:v3 fromIndexInSection:*(a1 + 48)];

  [*(a1 + 32) mergePinnedNotesAndNotesSectionIfNeeded];
  return [*(a1 + 32) updateSectionIdentifiers];
}

- (void)deleteWithDecisionController:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 sourceObjects];
  v9 = [v8 valueForKey:@"objectID"];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__ICNoteCoreDataIndexer_deleteWithDecisionController_completion___block_invoke;
  v12[3] = &unk_1E846B2C0;
  v14 = self;
  v15 = v6;
  v13 = v9;
  v10 = v9;
  v11 = v6;
  [v7 performDecisionWithCompletion:v12];
}

uint64_t __65__ICNoteCoreDataIndexer_deleteWithDecisionController_completion___block_invoke(uint64_t a1, char a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v27;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v26 + 1) + 8 * i);
          if ([v8 ic_isFolderType])
          {
            v9 = [*(a1 + 40) sectionIdentifiersToManagedObjectIDs];
            v10 = [*(a1 + 40) folderSectionIdentifier];
            v11 = [v9 objectForKeyedSubscript:v10];
            v12 = [v11 containsObject:v8];

            if (v12)
            {
              v13 = *(a1 + 40);
              v14 = [v13 folderSectionIdentifier];
              goto LABEL_13;
            }
          }

          if ([v8 ic_isNoteType])
          {
            v15 = [*(a1 + 40) sectionIdentifiersToManagedObjectIDs];
            v16 = [*(a1 + 40) pinnedNoteSectionIdentifier];
            v17 = [v15 objectForKeyedSubscript:v16];
            v18 = [v17 containsObject:v8];

            if (v18)
            {
              v13 = *(a1 + 40);
              v14 = [v13 pinnedNoteSectionIdentifier];
LABEL_13:
              v19 = v14;
              v20 = v13;
LABEL_14:
              [v20 deleteObjectWithIDFromIndex:v8 inSection:v19];
              goto LABEL_19;
            }
          }

          v19 = [*(a1 + 40) sectionForObjectID:v8];
          if (v19)
          {
            if ([v8 ic_isNoteType])
            {
              v21 = [*(a1 + 40) sectionIdentifiersToManagedObjectIDs];
              v22 = [v21 objectForKeyedSubscript:v19];
              v23 = [v22 containsObject:v8];

              if (v23)
              {
                v20 = *(a1 + 40);
                goto LABEL_14;
              }
            }
          }

LABEL_19:
        }

        v5 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v5);
    }

    result = *(a1 + 48);
    if (result)
    {
      return (*(result + 16))(result, 1);
    }
  }

  else
  {
    result = *(a1 + 48);
    if (result)
    {
      v25 = *(result + 16);

      return v25();
    }
  }

  return result;
}

- (void)unmergePinnedNotesAndNotesSectionIfNeeded
{
  if ([(ICNoteCoreDataIndexer *)self sortsByPinned])
  {
    v3 = [(ICCoreDataIndexer *)self modernManagedObjectContext];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __66__ICNoteCoreDataIndexer_unmergePinnedNotesAndNotesSectionIfNeeded__block_invoke;
    v4[3] = &unk_1E8468BA0;
    v4[4] = self;
    [v3 performBlockAndWait:v4];
  }
}

void __66__ICNoteCoreDataIndexer_unmergePinnedNotesAndNotesSectionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) unpinnedNoteIdentifiers];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DEC8] array];
  }

  v5 = v4;

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__ICNoteCoreDataIndexer_unmergePinnedNotesAndNotesSectionIfNeeded__block_invoke_2;
  v9[3] = &unk_1E846B2E8;
  v9[4] = *(a1 + 32);
  v6 = [v5 ic_objectsPassingTest:v9];
  v7 = *(a1 + 32);
  v8 = [v7 pinnedNoteSectionIdentifier];
  [v7 addObjectIDs:v6 toIndexInSection:v8];

  [*(a1 + 32) removeUnpinnedNoteObjectIds:v6];
}

uint64_t __66__ICNoteCoreDataIndexer_unmergePinnedNotesAndNotesSectionIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [*(a1 + 32) modernManagedObjectContext];
  v5 = [v4 ic_existingObjectWithID:v3];

  v6 = ICDynamicCast();
  v7 = [v6 isPinned];

  return v7;
}

void __64__ICNoteCoreDataIndexer_mergePinnedNotesAndNotesSectionIfNeeded__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__ICNoteCoreDataIndexer_mergePinnedNotesAndNotesSectionIfNeeded__block_invoke_3;
  v17[3] = &unk_1E846B310;
  v17[4] = *(a1 + 40);
  v3 = [v2 ic_compactMap:v17];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
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
        v9 = *(a1 + 40);
        v10 = [v8 objectID];
        v18 = v10;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
        v12 = [*(a1 + 40) unpinnedSectionIdentifierForObject:v8];
        [v9 addObjectIDs:v11 toIndexInSection:v12];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }
}

id __64__ICNoteCoreDataIndexer_mergePinnedNotesAndNotesSectionIfNeeded__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [*(a1 + 32) modernManagedObjectContext];
  v5 = [v4 ic_existingObjectWithID:v3];

  v6 = ICDynamicCast();

  return v6;
}

- (void)prependObjectIDs:(id)a3 toIndexInSection:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v11 count])
  {
    v7 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
    v8 = [v7 objectForKeyedSubscript:v6];

    if (!v8)
    {
      v8 = [MEMORY[0x1E695DFA0] orderedSet];
      v9 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
      [v9 setObject:v8 forKeyedSubscript:v6];
    }

    v10 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v11, "count")}];
    [v8 insertObjects:v11 atIndexes:v10];
  }
}

- (void)addObjectIDs:(id)a3 toIndexInSection:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v10 count])
  {
    v7 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
    v8 = [v7 objectForKeyedSubscript:v6];

    if (!v8)
    {
      v8 = [MEMORY[0x1E695DFA0] orderedSet];
      v9 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
      [v9 setObject:v8 forKeyedSubscript:v6];
    }

    [v8 addObjectsFromArray:v10];
  }
}

- (void)removeObjectIDs:(id)a3 fromIndexInSection:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v10 count])
  {
    v7 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
    v8 = [v7 objectForKeyedSubscript:v6];

    if (v8)
    {
      [v8 removeObjectsInArray:v10];
      if (![v8 count])
      {
        v9 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
        [v9 setObject:0 forKeyedSubscript:v6];
      }
    }
  }
}

- (void)sortSection:(id)a3
{
  v4 = a3;
  if ([v4 sectionType] != 2)
  {
    v6 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
    v5 = [v6 objectForKeyedSubscript:v4];

    if (!v5)
    {
      goto LABEL_10;
    }

    v7 = [(ICNoteCoreDataIndexer *)self noteContainer];
    if (v7 || ([(ICNoteCoreDataIndexer *)self noteQuery], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v12 = [(ICNoteCoreDataIndexer *)self virtualSmartFolder];

      if (!v12)
      {
        v13 = [(ICNoteCoreDataIndexer *)self noteCollection];

        if (!v13)
        {
          goto LABEL_10;
        }

        v8 = [(ICCoreDataIndexer *)self legacyManagedObjectContext];
        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __37__ICNoteCoreDataIndexer_sortSection___block_invoke_4;
        v17 = &unk_1E8468D98;
        v18 = self;
        v9 = &v19;
        v19 = v5;
        v10 = &v20;
        v20 = v4;
        v11 = &v14;
        goto LABEL_9;
      }
    }

    v8 = [(ICCoreDataIndexer *)self modernManagedObjectContext];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __37__ICNoteCoreDataIndexer_sortSection___block_invoke;
    v21[3] = &unk_1E8468D98;
    v21[4] = self;
    v9 = &v22;
    v22 = v5;
    v10 = &v23;
    v23 = v4;
    v11 = v21;
LABEL_9:
    [v8 performBlockAndWait:{v11, v14, v15, v16, v17, v18}];

    goto LABEL_10;
  }

  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [ICNoteCoreDataIndexer sortSection:v5];
  }

LABEL_10:
}

void __37__ICNoteCoreDataIndexer_sortSection___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69B7A88];
  v3 = [*(a1 + 32) sortsByPinned];
  v4 = [*(a1 + 32) sortType];
  v5 = [v2 sortDescriptorsForCurrentTypeIncludingPinnedNotes:v3 folderNoteSortType:v4];

  v6 = [*(a1 + 40) array];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__ICNoteCoreDataIndexer_sortSection___block_invoke_2;
  v12[3] = &unk_1E846B338;
  v12[4] = *(a1 + 32);
  v7 = [v6 ic_map:v12];

  v8 = [v7 sortedArrayUsingDescriptors:v5];
  v9 = [v8 ic_map:&__block_literal_global_206];

  v10 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v9];
  v11 = [*(a1 + 32) sectionIdentifiersToManagedObjectIDs];
  [v11 setObject:v10 forKeyedSubscript:*(a1 + 48)];
}

id __37__ICNoteCoreDataIndexer_sortSection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 modernManagedObjectContext];
  v5 = [v4 ic_existingObjectWithID:v3];

  return v5;
}

void __37__ICNoteCoreDataIndexer_sortSection___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B7A88] sortDescriptorsForCurrentTypeIncludingPinnedNotes:{objc_msgSend(*(a1 + 32), "sortsByPinned")}];
  v3 = [*(a1 + 40) array];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__ICNoteCoreDataIndexer_sortSection___block_invoke_5;
  v9[3] = &unk_1E846B338;
  v9[4] = *(a1 + 32);
  v4 = [v3 ic_map:v9];

  v5 = [v4 sortedArrayUsingDescriptors:v2];
  v6 = [v5 ic_map:&__block_literal_global_208];

  v7 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v6];
  v8 = [*(a1 + 32) sectionIdentifiersToManagedObjectIDs];
  [v8 setObject:v7 forKeyedSubscript:*(a1 + 48)];
}

id __37__ICNoteCoreDataIndexer_sortSection___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 legacyManagedObjectContext];
  v5 = [v4 ic_existingObjectWithID:v3];

  return v5;
}

- (NSArray)sortedNoteIdentifiers
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(ICNoteCoreDataIndexer *)self sectionIdentifiers];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
        v11 = [v10 objectForKeyedSubscript:v9];
        v12 = [v11 array];
        [v3 addObjectsFromArray:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [v3 ic_compactMap:&__block_literal_global_211];

  return v13;
}

void *__46__ICNoteCoreDataIndexer_sortedNoteIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 ic_isNoteType])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)unpinnedSectionIdentifierForObject:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteCoreDataIndexer *)self dateHeadersValueForNote:v4];
  if (v5)
  {
    v6 = [v4 objectID];
    v7 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
    v8 = [ICNoteTimelineController timelineSectionIdentifierForNoteObjectID:v6 date:v5 sectionIdentifiersToManagedObjectIDs:v7];
  }

  else
  {
    v8 = [(ICNoteCoreDataIndexer *)self noteSectionIdentifier];
  }

  return v8;
}

- (id)sectionForObjectID:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
        v13 = [v12 objectForKeyedSubscript:v11];
        v14 = [v13 containsObject:v4];

        if (v14)
        {
          v15 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (id)unpinnedNoteIdentifiers
{
  v3 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
  v4 = [v3 allKeys];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__ICNoteCoreDataIndexer_unpinnedNoteIdentifiers__block_invoke;
  v7[3] = &unk_1E846B3A0;
  v7[4] = self;
  v5 = [v4 ic_flatMap:v7];

  return v5;
}

id __48__ICNoteCoreDataIndexer_unpinnedNoteIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) noteSectionIdentifier];
  if ([v4 isEqual:v3])
  {

LABEL_4:
    v6 = [*(a1 + 32) sectionIdentifiersToManagedObjectIDs];
    v7 = [v6 objectForKeyedSubscript:v3];
    v8 = [v7 array];

    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  v8 = MEMORY[0x1E695E0F0];
LABEL_6:

  return v8;
}

- (void)removeUnpinnedNoteObjectIds:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [(ICNoteCoreDataIndexer *)self noteSectionIdentifier];
        if ([v12 isEqual:v11])
        {
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        [(ICNoteCoreDataIndexer *)self removeObjectIDs:v4 fromIndexInSection:v11];
LABEL_10:
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (id)dateHeadersValueForNote:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteCoreDataIndexer *)self resolvedDateHeadersType];
  if (v5 == 2)
  {
    v6 = [v4 creationDate];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = [v4 modificationDate];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (BOOL)dateHeadersAreStaleForNote:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteCoreDataIndexer *)self dateHeadersValueForNote:v4];
  if (v5)
  {
    if ([v4 isPinned])
    {
      v6 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
      v7 = [(ICNoteCoreDataIndexer *)self pinnedNoteSectionIdentifier];
      v8 = v6;
      v9 = v7;
    }

    else
    {
      v11 = [v4 objectID];
      v12 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
      v6 = [ICNoteTimelineController timelineSectionIdentifierForNoteObjectID:v11 date:v5 sectionIdentifiersToManagedObjectIDs:v12];

      v8 = [(ICNoteCoreDataIndexer *)self sectionIdentifiersToManagedObjectIDs];
      v7 = v8;
      v9 = v6;
    }

    v13 = [v8 objectForKeyedSubscript:v9];
    v14 = [v4 objectID];
    v10 = [v13 containsObject:v14] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)deleteObjectWithIDFromIndex:(os_log_t)log inSection:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_1D4171000, log, OS_LOG_TYPE_FAULT, "Invalid note section identifier — not deleting object from index {objectID: %@, section: %@}", &v3, 0x16u);
}

@end