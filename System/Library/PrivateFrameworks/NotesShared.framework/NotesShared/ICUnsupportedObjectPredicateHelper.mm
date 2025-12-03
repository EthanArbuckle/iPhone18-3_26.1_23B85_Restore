@interface ICUnsupportedObjectPredicateHelper
+ (id)predicateForSupportedAttachmentsInContext:(id)context;
+ (id)predicateForSupportedFoldersInContext:(id)context;
+ (id)predicateForSupportedInlineAttachmentsInContext:(id)context;
+ (id)predicateForSupportedNotesInContext:(id)context;
+ (id)unsupportedAttachmentIdentifiersWithContext:(id)context;
+ (id)unsupportedFolderIdentifiersWithContext:(id)context;
+ (id)unsupportedInlineAttachmentIdentifiersWithContext:(id)context;
+ (void)recursivelyAddAttachment:(id)attachment toMutableSet:(id)set;
+ (void)recursivelyAddFolder:(id)folder toMutableSet:(id)set;
@end

@implementation ICUnsupportedObjectPredicateHelper

+ (id)predicateForSupportedFoldersInContext:(id)context
{
  v3 = MEMORY[0x277CCAC30];
  v4 = [self unsupportedFolderIdentifiersWithContext:context];
  v5 = [v3 predicateWithFormat:@"NOT (identifier IN %@)", v4];

  return v5;
}

+ (id)predicateForSupportedNotesInContext:(id)context
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC30];
  contextCopy = context;
  v6 = [v4 predicateWithFormat:@"minimumSupportedNotesVersion <= %d", +[ICCloudSyncingObject currentNotesVersion](ICCloudSyncingObject, "currentNotesVersion")];
  v7 = MEMORY[0x277CCAC30];
  v8 = [self unsupportedFolderIdentifiersWithContext:contextCopy];

  v9 = [v7 predicateWithFormat:@"NOT (folder.identifier IN %@)", v8];

  v10 = MEMORY[0x277CCA920];
  v14[0] = v6;
  v14[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  return v12;
}

+ (id)predicateForSupportedAttachmentsInContext:(id)context
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC30];
  contextCopy = context;
  v6 = [self unsupportedAttachmentIdentifiersWithContext:contextCopy];
  v7 = [v4 predicateWithFormat:@"NOT (identifier IN %@)", v6];

  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"note.minimumSupportedNotesVersion <= %d", +[ICCloudSyncingObject currentNotesVersion](ICCloudSyncingObject, "currentNotesVersion")];
  v9 = MEMORY[0x277CCAC30];
  v10 = [self unsupportedFolderIdentifiersWithContext:contextCopy];

  v11 = [v9 predicateWithFormat:@"NOT (note.folder.identifier IN %@)", v10];

  v12 = MEMORY[0x277CCA920];
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  return v14;
}

+ (id)predicateForSupportedInlineAttachmentsInContext:(id)context
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC30];
  contextCopy = context;
  v6 = [self unsupportedInlineAttachmentIdentifiersWithContext:contextCopy];
  v7 = [v4 predicateWithFormat:@"NOT (identifier IN %@)", v6];

  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"note.minimumSupportedNotesVersion <= %d", +[ICCloudSyncingObject currentNotesVersion](ICCloudSyncingObject, "currentNotesVersion")];
  v9 = MEMORY[0x277CCAC30];
  v10 = [self unsupportedFolderIdentifiersWithContext:contextCopy];

  v11 = [v9 predicateWithFormat:@"NOT (note.folder.identifier IN %@)", v10];

  v12 = MEMORY[0x277CCA920];
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  return v14;
}

+ (void)recursivelyAddFolder:(id)folder toMutableSet:(id)set
{
  v18 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  setCopy = set;
  if (([folderCopy markedForDeletion] & 1) == 0 && (objc_msgSend(folderCopy, "needsInitialFetchFromCloud") & 1) == 0)
  {
    [setCopy addObject:folderCopy];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    children = [folderCopy children];
    v9 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(children);
          }

          [self recursivelyAddFolder:*(*(&v13 + 1) + 8 * v12++) toMutableSet:setCopy];
        }

        while (v10 != v12);
        v10 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

+ (id)unsupportedFolderIdentifiersWithContext:(id)context
{
  contextCopy = context;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__49;
  v16 = __Block_byref_object_dispose__49;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__ICUnsupportedObjectPredicateHelper_unsupportedFolderIdentifiersWithContext___block_invoke;
  v8[3] = &unk_278196870;
  v5 = contextCopy;
  v10 = &v12;
  selfCopy = self;
  v9 = v5;
  [v5 performBlockAndWait:v8];
  v6 = [v13[5] copy];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __78__ICUnsupportedObjectPredicateHelper_unsupportedFolderIdentifiersWithContext___block_invoke(uint64_t a1)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v2 = +[ICFolder predicateForVisibleObjects];
  v30[0] = v2;
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"minimumSupportedNotesVersion > %d", +[ICCloudSyncingObject currentNotesVersion](ICCloudSyncingObject, "currentNotesVersion")];
  v30[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];

  v5 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v4];
  v6 = [ICFolder ic_objectsMatchingPredicate:v5 context:*(a1 + 32)];

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(a1 + 48) recursivelyAddFolder:*(*(&v24 + 1) + 8 * v12++) toMutableSet:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(*(a1 + 40) + 8) + 40);
        v19 = [*(*(&v20 + 1) + 8 * v17) identifier];
        [v18 addObject:v19];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }
}

+ (void)recursivelyAddAttachment:(id)attachment toMutableSet:(id)set
{
  v20 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  setCopy = set;
  if (([attachmentCopy markedForDeletion] & 1) == 0 && (objc_msgSend(attachmentCopy, "needsInitialFetchFromCloud") & 1) == 0)
  {
    note = [attachmentCopy note];
    needsInitialFetchFromCloud = [note needsInitialFetchFromCloud];

    if ((needsInitialFetchFromCloud & 1) == 0)
    {
      [setCopy addObject:attachmentCopy];
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      subAttachments = [attachmentCopy subAttachments];
      v11 = [subAttachments countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          v14 = 0;
          do
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(subAttachments);
            }

            [self recursivelyAddAttachment:*(*(&v15 + 1) + 8 * v14++) toMutableSet:setCopy];
          }

          while (v12 != v14);
          v12 = [subAttachments countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v12);
      }
    }
  }
}

+ (id)unsupportedAttachmentIdentifiersWithContext:(id)context
{
  contextCopy = context;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__49;
  v16 = __Block_byref_object_dispose__49;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__ICUnsupportedObjectPredicateHelper_unsupportedAttachmentIdentifiersWithContext___block_invoke;
  v8[3] = &unk_278196870;
  v5 = contextCopy;
  v10 = &v12;
  selfCopy = self;
  v9 = v5;
  [v5 performBlockAndWait:v8];
  v6 = [v13[5] copy];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __82__ICUnsupportedObjectPredicateHelper_unsupportedAttachmentIdentifiersWithContext___block_invoke(uint64_t a1)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v2 = +[(ICBaseAttachment *)ICAttachment];
  v30[0] = v2;
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"minimumSupportedNotesVersion > %d", +[ICCloudSyncingObject currentNotesVersion](ICCloudSyncingObject, "currentNotesVersion")];
  v30[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];

  v5 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v4];
  v6 = [ICAttachment ic_objectsMatchingPredicate:v5 context:*(a1 + 32)];

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(a1 + 48) recursivelyAddAttachment:*(*(&v24 + 1) + 8 * v12++) toMutableSet:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(*(a1 + 40) + 8) + 40);
        v19 = [*(*(&v20 + 1) + 8 * v17) identifier];
        [v18 addObject:v19];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }
}

+ (id)unsupportedInlineAttachmentIdentifiersWithContext:(id)context
{
  contextCopy = context;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__49;
  v17 = __Block_byref_object_dispose__49;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __88__ICUnsupportedObjectPredicateHelper_unsupportedInlineAttachmentIdentifiersWithContext___block_invoke;
  v10 = &unk_278194D68;
  v4 = contextCopy;
  v11 = v4;
  v12 = &v13;
  [v4 performBlockAndWait:&v7];
  v5 = [v14[5] copy];

  _Block_object_dispose(&v13, 8);

  return v5;
}

void __88__ICUnsupportedObjectPredicateHelper_unsupportedInlineAttachmentIdentifiersWithContext___block_invoke(uint64_t a1)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = +[(ICBaseAttachment *)ICInlineAttachment];
  v19[0] = v2;
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"minimumSupportedNotesVersion > %d", +[ICCloudSyncingObject currentNotesVersion](ICCloudSyncingObject, "currentNotesVersion")];
  v19[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

  v5 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v4];
  v6 = [ICInlineAttachment ic_objectsMatchingPredicate:v5 context:*(a1 + 32)];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(*(a1 + 40) + 8) + 40);
        v13 = [*(*(&v14 + 1) + 8 * v11) identifier];
        [v12 addObject:v13];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

@end