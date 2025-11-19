@interface ICModernSearchIndexerDataSource
- (BOOL)isFolderWithServerShareChanged:(id)a3;
- (BOOL)isPaperKitOrSynapseAttachment:(id)a3;
- (ICModernSearchIndexerDataSource)initWithPersistentContainer:(id)a3;
- (ICPersistentContainer)persistentContainer;
- (id)addNotesFromSubtree:(id)a3;
- (id)additionalItemsForObject:(id)a3;
- (id)additionalUniqueIdentifiersToDeleteForObject:(id)a3;
- (id)allIndexableObjectIDsInReversedReindexingOrderWithContext:(id)a3;
- (id)newManagedObjectContext;
- (id)persistentStoreCoordinator;
- (id)searchableItemForSynapseContentItem:(id)a3 note:(id)a4 attachment:(id)a5;
- (id)searchableItemResultForObject:(id)a3;
- (id)synapseItemsForObject:(id)a3;
- (void)contextWillSave:(id)a3;
@end

@implementation ICModernSearchIndexerDataSource

- (ICModernSearchIndexerDataSource)initWithPersistentContainer:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICModernSearchIndexerDataSource;
  v5 = [(ICBaseSearchIndexerDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_persistentContainer, v4);
  }

  return v6;
}

- (ICPersistentContainer)persistentContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_persistentContainer);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
  }

  else
  {
    v5 = +[ICNoteContext sharedContext];
    v4 = [v5 persistentContainer];
  }

  return v4;
}

- (id)persistentStoreCoordinator
{
  v2 = [(ICModernSearchIndexerDataSource *)self persistentContainer];
  v3 = [v2 persistentStoreCoordinator];

  return v3;
}

- (id)newManagedObjectContext
{
  v2 = [(ICModernSearchIndexerDataSource *)self persistentContainer];
  v3 = [ICNoteContext workerManagedObjectContextForContainer:v2];

  return v3;
}

- (id)allIndexableObjectIDsInReversedReindexingOrderWithContext:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (ICVerboseSearchLogging())
  {
    v5 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(ICModernSearchIndexerDataSource *)self allIndexableObjectIDsInReversedReindexingOrderWithContext:v5];
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__ICModernSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke;
  v9[3] = &unk_2781961E0;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v6 performBlockAndWait:v9];
  v7 = [v13[5] copy];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __93__ICModernSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (ICVerboseSearchLogging())
  {
    v2 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __93__ICModernSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_1(a1, v2);
    }
  }

  v3 = +[(ICCloudSyncingObject *)ICAccount];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
  v33[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v6 = [ICAccount ic_objectIDsMatchingPredicate:v3 sortDescriptors:v5 context:*(a1 + 40)];

  if (ICVerboseSearchLogging())
  {
    v7 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __93__ICModernSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_2();
    }
  }

  v8 = +[ICFolder predicateForVisibleObjects];
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateForLastTitleModification" ascending:1];
  v32 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v11 = [ICFolder ic_objectIDsMatchingPredicate:v8 sortDescriptors:v10 context:*(a1 + 40)];

  if (ICVerboseSearchLogging())
  {
    v12 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __93__ICModernSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_3();
    }
  }

  v13 = +[(ICCloudSyncingObject *)ICHashtag];
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v31 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v16 = [ICHashtag ic_objectIDsMatchingPredicate:v13 sortDescriptors:v15 context:*(a1 + 40)];

  if (ICVerboseSearchLogging())
  {
    v17 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __93__ICModernSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_4();
    }
  }

  v18 = [ICNote predicateForSearchableNotesInContext:*(a1 + 40)];
  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"modificationDate" ascending:1];
  v30 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v21 = [ICNote ic_objectIDsMatchingPredicate:v18 sortDescriptors:v20 context:*(a1 + 40)];

  if (ICVerboseSearchLogging())
  {
    v22 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __93__ICModernSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_5();
    }
  }

  v23 = [ICAttachment predicateForSearchableAttachmentsInContext:*(a1 + 40)];
  v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"modificationDate" ascending:1];
  v29 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v26 = [ICAttachment ic_objectIDsMatchingPredicate:v23 sortDescriptors:v25 context:*(a1 + 40)];

  if (ICVerboseSearchLogging())
  {
    v27 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      __93__ICModernSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_6();
    }
  }

  [*(*(*(a1 + 48) + 8) + 40) ic_addObjectsFromNonNilArray:v26];
  [*(*(*(a1 + 48) + 8) + 40) ic_addObjectsFromNonNilArray:v21];
  [*(*(*(a1 + 48) + 8) + 40) ic_addObjectsFromNonNilArray:v16];
  [*(*(*(a1 + 48) + 8) + 40) ic_addObjectsFromNonNilArray:v11];
  [*(*(*(a1 + 48) + 8) + 40) ic_addObjectsFromNonNilArray:v6];
  if (ICVerboseSearchLogging())
  {
    v28 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      __93__ICModernSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_7();
    }
  }
}

- (void)contextWillSave:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = ICModernSearchIndexerDataSource;
  [(ICBaseSearchIndexerDataSource *)&v26 contextWillSave:v4];
  v5 = [v4 object];
  v6 = [v5 persistentStoreCoordinator];
  v7 = [(ICModernSearchIndexerDataSource *)self persistentStoreCoordinator];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [v5 updatedObjects];
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v21 = self;
      v12 = *v23;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 changedValues];
            v16 = [v15 objectForKeyedSubscript:@"didChooseToMigrate"];

            if (v16)
            {
              v17 = 0;
              goto LABEL_13;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v17 = 1;
LABEL_13:
      self = v21;
    }

    else
    {
      v17 = 1;
    }

    v18 = ICUseCoreDataCoreSpotlightIntegration();
    if ((v17 & 1) == 0 && (v18 & 1) == 0)
    {
      v19 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [ICModernSearchIndexerDataSource contextWillSave:v19];
      }

      [(ICBaseSearchIndexerDataSource *)self setNeedsReindexing:1];
      v20 = [MEMORY[0x277CCAB98] defaultCenter];
      [v20 postNotificationName:*MEMORY[0x277D36150] object:self];
    }
  }
}

- (id)searchableItemForSynapseContentItem:(id)a3 note:(id)a4 attachment:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (([v8 isDeletedOrInTrash] & 1) != 0 || !objc_msgSend(v8, "isSystemPaper"))
  {
    v16 = 0;
  }

  else
  {
    v10 = [v9 metadata];
    if (v10)
    {
      v11 = [v9 metadata];
      v12 = [v11 objectForKeyedSubscript:@"is_synthetic_synapse_item"];
      v13 = [v12 BOOLValue];

      if (v13)
      {
        v14 = MEMORY[0x277CCACA8];
        v15 = [v9 identifier];
        v10 = [v14 stringWithFormat:@"sy_%@", v15];
      }

      else
      {
        v10 = 0;
      }
    }

    v17 = MEMORY[0x277D6B7D0];
    v18 = [v8 identifier];
    v19 = [v9 searchIndexingIdentifier];
    v20 = [v9 searchDomainIdentifier];
    v16 = [v17 searchableItemLinkingContentItem:v7 toContainerIdentifier:v18 uniqueIdentifier:v10 relatedIdentifier:v19 domainIdentifier:v20];
  }

  return v16;
}

- (id)searchableItemResultForObject:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ICModernSearchIndexerDataSource;
  v5 = [(ICBaseSearchIndexerDataSource *)&v15 searchableItemResultForObject:v4];
  v6 = [v5 searchableItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 managedObjectContext];
    v8 = [v4 objectID];
    v9 = [v7 objectWithID:v8];

    v10 = [v9 lastOpenedDate];
    v11 = [v6 attributeSet];
    [v11 setLastUsedDate:v10];
  }

  v12 = [(ICModernSearchIndexerDataSource *)self additionalItemsForObject:v4];
  v13 = objc_alloc_init(MEMORY[0x277D36250]);
  [v13 setSearchableItem:v6];
  [v13 setAdditionalSearchableItems:v12];

  return v13;
}

- (BOOL)isPaperKitOrSynapseAttachment:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = ICDynamicCast();

  if (v4)
  {
    if ([v4 attachmentType] == 13)
    {
      v5 = 1;
    }

    else
    {
      v6 = [v4 synapseData];
      v5 = v6 != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)synapseItemsForObject:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 managedObjectContext];
    v5 = [v3 objectID];
    v6 = [v4 objectWithID:v5];

    v7 = [v6 synapseData];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277D6B790]);
      v9 = [v6 synapseData];
      v28 = 0;
      v10 = [v8 initWithData:v9 error:&v28];
      v11 = v28;

      if (v11)
      {
        v12 = os_log_create("com.apple.notes", "SearchIndexer");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(ICModernSearchIndexerDataSource *)v11 synapseItemsForObject:v12];
        }

        v13 = 0;
      }

      else
      {
        v30[0] = v10;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
      }
    }

    else if ([v6 attachmentType] == 8)
    {
      v14 = [v6 URL];

      if (v14)
      {
        v15 = objc_alloc(MEMORY[0x277D6B790]);
        v16 = [v6 title];
        v17 = *MEMORY[0x277D6B800];
        v18 = __ICLocalizedFrameworkString_impl(@"Web", @"Web", 0, 1);
        v19 = [v6 URL];
        v20 = [v15 initWithDisplayTitle:v16 sourceIdentifier:v17 sourceName:v18 itemURL:v19 identifier:0];

        v21 = [v6 metadata];
        v22 = v21;
        if (!v21)
        {
          v21 = MEMORY[0x277CBEC10];
        }

        v23 = [v21 mutableCopy];

        [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"is_synthetic_synapse_item"];
        v24 = [v23 copy];
        [v6 setMetadata:v24];

        v29 = v20;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      }

      else
      {
        v26 = MEMORY[0x277D36198];
        v27 = [v6 ic_loggingIdentifier];
        [v26 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICModernSearchIndexerDataSource synapseItemsForObject:]" simulateCrash:1 showAlert:0 format:{@"attachment %@ was of type ICAttachmentTypeWeb, but didn't have a URL or synapse data. Not providing any SYContentItems for this. ", v27}];

        v13 = MEMORY[0x277CBEBF8];
      }
    }

    else if ([v6 attachmentType] == 13)
    {
      v13 = [ICPaperSynapseContentItemProvider contentItemsForAttachment:v6];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)additionalUniqueIdentifiersToDeleteForObject:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(ICModernSearchIndexerDataSource *)self synapseItemsForObject:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) itemIdentifier];
          v11 = [v10 UUIDString];
          [v4 addObject:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v12 = [v4 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)additionalItemsForObject:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICModernSearchIndexerDataSource *)self synapseItemsForObject:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 managedObjectContext];
      v41 = v4;
      v7 = [v4 objectID];
      v8 = [v6 objectWithID:v7];

      v9 = [v8 note];
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v40 = v5;
      v11 = v5;
      v12 = [v11 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v51;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v51 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [(ICModernSearchIndexerDataSource *)self searchableItemForSynapseContentItem:*(*(&v50 + 1) + 8 * i) note:v9 attachment:v8, v40];
            [v10 ic_addNonNilObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v13);
      }

      v17 = [v10 copy];
LABEL_30:

      v5 = v40;
      v4 = v41;
      goto LABEL_31;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0;
    goto LABEL_32;
  }

  objc_opt_class();
  v8 = ICDynamicCast();
  if (([v8 isHiddenFromIndexing] & 1) == 0)
  {
    v40 = v5;
    v41 = v4;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v18 = [v8 inlineAttachments];
    v19 = [v18 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v47;
      v42 = *MEMORY[0x277CE1E90];
      v43 = v18;
      v44 = *v47;
      v45 = v8;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v47 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v46 + 1) + 8 * j);
          if ([v23 attachmentType] == 3)
          {
            v24 = [v23 tokenContentIdentifier];
            if (v24)
            {
              v25 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v24];
              v26 = [v25 scheme];
              if (v26)
              {
                v27 = v26;
                v28 = [v25 scheme];
                v29 = ICIsNotesURLScheme(v28);

                v21 = v44;
                if ((v29 & 1) == 0)
                {
                  v30 = objc_alloc(MEMORY[0x277CC34B8]);
                  v31 = [v42 identifier];
                  v32 = [v30 initWithItemContentType:v31];

                  [v32 setIc_dataSourceIdentifier:@"Modern"];
                  [v32 setIc_searchResultType:2];
                  v33 = [v45 account];
                  v34 = [v33 identifier];
                  [v32 setDomainIdentifier:v34];

                  [v32 ic_setURLString:v24];
                  v35 = objc_alloc_init(MEMORY[0x277CC34B0]);
                  [v35 setAttributeSet:v32];
                  v36 = [v23 objectID];
                  v37 = [v36 URIRepresentation];
                  v38 = [v37 absoluteString];

                  v21 = v44;
                  [v35 setUniqueIdentifier:v38];
                  [v9 addObject:v35];

                  v18 = v43;
                }
              }

              v8 = v45;
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v20);
    }

    v17 = [v9 copy];
    goto LABEL_30;
  }

  v17 = 0;
LABEL_31:

LABEL_32:

  return v17;
}

- (BOOL)isFolderWithServerShareChanged:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 changedValues];
    v5 = [v4 allKeys];
    v6 = [v5 containsObject:@"serverShareData"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)addNotesFromSubtree:(id)a3
{
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__12;
  v17 = __Block_byref_object_dispose__12;
  v18 = [MEMORY[0x277CBEB18] array];
  v4 = [v3 managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__ICModernSearchIndexerDataSource_addNotesFromSubtree___block_invoke;
  v9[3] = &unk_2781961E0;
  v5 = v3;
  v10 = v5;
  v6 = v4;
  v11 = v6;
  v12 = &v13;
  [v6 performBlockAndWait:v9];
  v7 = [v14[5] copy];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __55__ICModernSearchIndexerDataSource_addNotesFromSubtree___block_invoke(void *a1)
{
  v60[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  [v2 addObject:a1[4]];
  if ([v2 count])
  {
    v4 = @"ICNote";
    v5 = 0x277CBE000uLL;
    v6 = 0x278192000uLL;
    *&v3 = 138412546;
    v35 = v3;
    do
    {
      v7 = [v2 lastObject];
      [v2 removeLastObject];
      v8 = [objc_alloc(*(v5 + 1064)) initWithEntityName:v4];
      v9 = [*(v6 + 3296) predicateForNotesInFolder:v7];
      v10 = +[ICCloudSyncingObject predicateForVisibleObjects];
      v11 = MEMORY[0x277CCA920];
      v40 = v10;
      v41 = v9;
      v60[0] = v9;
      v60[1] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
      v13 = v11;
      v14 = v8;
      v15 = [v13 andPredicateWithSubpredicates:v12];

      v39 = v15;
      [v14 setPredicate:v15];
      [v14 setResultType:1];
      v16 = a1[5];
      v53 = 0;
      v17 = [v16 executeFetchRequest:v14 error:&v53];
      v42 = v53;
      v38 = v17;
      if (v42)
      {
        v18 = os_log_create("com.apple.notes", "SearchIndexer");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = v35;
          v57 = v7;
          v58 = 2112;
          v59 = v42;
          _os_log_error_impl(&dword_214D51000, v18, OS_LOG_TYPE_ERROR, "Error fetching notes of the folder %@. %@", buf, 0x16u);
        }
      }

      else
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v49 objects:v55 count:16];
        if (v19)
        {
          v20 = v19;
          v36 = v14;
          v21 = v4;
          v22 = v7;
          v23 = *v50;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v50 != v23)
              {
                objc_enumerationMutation(v18);
              }

              [*(*(a1[6] + 8) + 40) addObject:*(*(&v49 + 1) + 8 * i)];
            }

            v20 = [v18 countByEnumeratingWithState:&v49 objects:v55 count:16];
          }

          while (v20);
          v7 = v22;
          v4 = v21;
          v14 = v36;
        }
      }

      v25 = [objc_alloc(*(v5 + 1064)) initWithEntityName:@"ICFolder"];
      v43 = v7;
      v26 = [*(v6 + 3296) predicateForFoldersInFolder:v7];
      [v25 setPredicate:v26];
      v27 = a1[5];
      v48 = 0;
      v28 = [v27 executeFetchRequest:v14 error:&v48];
      v29 = v48;
      if (v29)
      {
        v30 = os_log_create("com.apple.notes", "SearchIndexer");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = v35;
          v57 = v43;
          v58 = 2112;
          v59 = v29;
          _os_log_error_impl(&dword_214D51000, v30, OS_LOG_TYPE_ERROR, "Error fetching folders of the folder %@. %@", buf, 0x16u);
        }
      }

      else
      {
        v37 = v14;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v30 = v28;
        v31 = [v30 countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v45;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v45 != v33)
              {
                objc_enumerationMutation(v30);
              }

              [v2 addObject:*(*(&v44 + 1) + 8 * j)];
            }

            v32 = [v30 countByEnumeratingWithState:&v44 objects:v54 count:16];
          }

          while (v32);
          v4 = @"ICNote";
        }

        v14 = v37;
      }

      v5 = 0x277CBE000;
      v6 = 0x278192000;
    }

    while ([v2 count]);
  }
}

- (void)allIndexableObjectIDsInReversedReindexingOrderWithContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "allIndexableObjectIDsInReversedReindexingOrderWithContext: will performBlockAndWait for data source %@", &v2, 0xCu);
}

void __93__ICModernSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "allIndexableObjectIDsInReversedReindexingOrderWithContext: will retrieve accountObjectIDs, folderObjectIDs, tagObjectIDs, noteObjectIDs, and attachmentObjectIDs for data source %@", &v3, 0xCu);
}

void __93__ICModernSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_4(v0, v1);
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_5(&dword_214D51000, v2, v3, "allIndexableObjectIDsInReversedReindexingOrderWithContext: data source %@ retrieved %lu account IDs: %@", v4, v5, v6, v7, v8);
}

void __93__ICModernSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_4(v0, v1);
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_5(&dword_214D51000, v2, v3, "allIndexableObjectIDsInReversedReindexingOrderWithContext: data source %@ retrieved %lu folder IDs: %@", v4, v5, v6, v7, v8);
}

void __93__ICModernSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_4(v0, v1);
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_5(&dword_214D51000, v2, v3, "allIndexableObjectIDsInReversedReindexingOrderWithContext: data source %@ retrieved %lu tag IDs: %@", v4, v5, v6, v7, v8);
}

void __93__ICModernSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_4(v0, v1);
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_5(&dword_214D51000, v2, v3, "allIndexableObjectIDsInReversedReindexingOrderWithContext: data source %@ retrieved %lu note IDs: %@", v4, v5, v6, v7, v8);
}

void __93__ICModernSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_4(v0, v1);
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_5(&dword_214D51000, v2, v3, "allIndexableObjectIDsInReversedReindexingOrderWithContext: data source %@ retrieved %lu attachment IDs: %@", v4, v5, v6, v7, v8);
}

void __93__ICModernSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_7()
{
  OUTLINED_FUNCTION_10();
  [*(*(*v0 + 8) + 40) count];
  OUTLINED_FUNCTION_1_5(&dword_214D51000, v1, v2, "allIndexableObjectIDsInReversedReindexingOrderWithContext: data source %@ retrieved %lu indexableObjectIDs: %@", v3, v4, v5, v6, 2u);
}

- (void)synapseItemsForObject:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Encountered error while trying to deserialize synapse content item: %@", &v2, 0xCu);
}

@end