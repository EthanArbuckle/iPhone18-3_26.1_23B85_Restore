@interface ICDatabaseStateHandler
+ (id)miscState;
+ (id)modernDatabaseState;
+ (id)stateDictionary;
+ (id)stateDictionaryFromLoggables:(id)loggables;
+ (void)addLoggable:(id)loggable toDictionary:(id)dictionary;
+ (void)registerStateHandler;
@end

@implementation ICDatabaseStateHandler

+ (void)registerStateHandler
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__ICDatabaseStateHandler_registerStateHandler__block_invoke;
  v2[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v2[4] = self;
  [MEMORY[0x277D36270] addStateHandlerWithName:"Notes Database" stateBlock:v2];
}

+ (id)stateDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = objc_autoreleasePoolPush();
  modernDatabaseState = [self modernDatabaseState];
  [dictionary setObject:modernDatabaseState forKeyedSubscript:@"Modern"];

  objc_autoreleasePoolPop(v4);
  v6 = objc_autoreleasePoolPush();
  miscState = [self miscState];
  [dictionary setObject:miscState forKeyedSubscript:@"Misc"];

  objc_autoreleasePoolPop(v6);

  return dictionary;
}

+ (id)miscState
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = +[ICNoteContext sharedContext];
  managedObjectContext = [v3 managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ICDatabaseStateHandler_miscState__block_invoke;
  v7[3] = &unk_278194B00;
  v5 = dictionary;
  v8 = v5;
  [managedObjectContext performBlockAndWait:v7];

  return v5;
}

void __35__ICDatabaseStateHandler_miscState__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{+[ICNoteContext legacyNotesDisabled](ICNoteContext, "legacyNotesDisabled")}];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"LegacyNotesDisabled"];
}

+ (id)modernDatabaseState
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = +[ICNoteContext sharedContext];
  workerManagedObjectContext = [v4 workerManagedObjectContext];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__ICDatabaseStateHandler_modernDatabaseState__block_invoke;
  v11[3] = &unk_278194F70;
  v12 = workerManagedObjectContext;
  selfCopy = self;
  v6 = dictionary;
  v13 = v6;
  v7 = workerManagedObjectContext;
  [v7 performBlockAndWait:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __45__ICDatabaseStateHandler_modernDatabaseState__block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = [ICAccount allAccountsInContext:*(a1 + 32)];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v67;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v67 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v66 + 1) + 8 * i);
        [*(a1 + 48) addLoggable:v7 toDictionary:*(a1 + 40)];
        v8 = [v7 accountData];
        if (v8)
        {
          [*(a1 + 48) addLoggable:v8 toDictionary:*(a1 + 40)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v4);
  }

  v9 = [ICFolder allFoldersInContext:*(a1 + 32)];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v63;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v63 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(a1 + 48) addLoggable:*(*(&v62 + 1) + 8 * j) toDictionary:*(a1 + 40)];
      }

      v11 = [v9 countByEnumeratingWithState:&v62 objects:v72 count:16];
    }

    while (v11);
  }

  v14 = *(a1 + 32);
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __45__ICDatabaseStateHandler_modernDatabaseState__block_invoke_2;
  v60[3] = &unk_278194E80;
  v36 = *(a1 + 40);
  v15 = v36;
  v61 = v36;
  [ICNote enumerateNotesInContext:v14 batchSize:10 visibleOnly:0 saveAfterBatch:0 usingBlock:v60];
  v16 = *(a1 + 32);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __45__ICDatabaseStateHandler_modernDatabaseState__block_invoke_3;
  v58[3] = &unk_278194EA8;
  v37 = *(a1 + 40);
  v17 = v37;
  v59 = v37;
  [ICAttachment enumerateAttachmentsInContext:v16 batchSize:10 visibleOnly:0 saveAfterBatch:0 usingBlock:v58];
  v18 = *(a1 + 32);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __45__ICDatabaseStateHandler_modernDatabaseState__block_invoke_4;
  v56[3] = &unk_278194ED0;
  v38 = *(a1 + 40);
  v19 = v38;
  v57 = v38;
  [ICMedia enumerateMediaInContext:v18 batchSize:10 saveAfterBatch:0 usingBlock:v56];
  v20 = *(a1 + 32);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __45__ICDatabaseStateHandler_modernDatabaseState__block_invoke_5;
  v54[3] = &unk_278194EF8;
  v39 = *(a1 + 40);
  v21 = v39;
  v55 = v39;
  [ICAttachmentPreviewImage enumerateAttachmentPreviewImagesInContext:v20 batchSize:10 saveAfterBatch:0 usingBlock:v54];
  v22 = *(a1 + 32);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __45__ICDatabaseStateHandler_modernDatabaseState__block_invoke_6;
  v52[3] = &unk_278194F20;
  v40 = *(a1 + 40);
  v23 = v40;
  v53 = v40;
  [ICInlineAttachment enumerateInlineAttachmentsInContext:v22 typeUTI:0 tokenContentIdentifier:0 batchSize:10 visibleOnly:0 saveAfterBatch:0 usingBlock:v52];
  v24 = *(a1 + 32);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __45__ICDatabaseStateHandler_modernDatabaseState__block_invoke_7;
  v50[3] = &unk_278194F48;
  v41 = *(a1 + 40);
  v25 = v41;
  v51 = v41;
  [ICHashtag enumerateHashtagsInContext:v24 batchSize:10 saveAfterBatch:0 usingBlock:v50];
  v26 = [ICDeviceMigrationState allDeviceMigrationStatesInContext:*(a1 + 32)];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v27 = [v26 countByEnumeratingWithState:&v46 objects:v71 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v47;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(a1 + 48) addLoggable:*(*(&v46 + 1) + 8 * k) toDictionary:*(a1 + 40)];
      }

      v28 = [v26 countByEnumeratingWithState:&v46 objects:v71 count:16];
    }

    while (v28);
  }

  v31 = [ICServerChangeToken serverChangeTokensMatchingPredicate:0 inContext:*(a1 + 32)];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v32 = [v31 countByEnumeratingWithState:&v42 objects:v70 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v43;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [*(a1 + 48) addLoggable:*(*(&v42 + 1) + 8 * m) toDictionary:*(a1 + 40)];
      }

      v33 = [v31 countByEnumeratingWithState:&v42 objects:v70 count:16];
    }

    while (v33);
  }
}

+ (id)stateDictionaryFromLoggables:(id)loggables
{
  v17 = *MEMORY[0x277D85DE8];
  loggablesCopy = loggables;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = loggablesCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [self addLoggable:*(*(&v12 + 1) + 8 * i) toDictionary:{dictionary, v12}];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return dictionary;
}

+ (void)addLoggable:(id)loggable toDictionary:(id)dictionary
{
  loggableCopy = loggable;
  dictionaryCopy = dictionary;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  dictionary = [dictionaryCopy objectForKeyedSubscript:v7];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionaryCopy setObject:dictionary forKeyedSubscript:v7];
  }

  ic_loggingIdentifier = [loggableCopy ic_loggingIdentifier];
  if (!ic_loggingIdentifier)
  {
    ic_loggingIdentifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", loggableCopy];
  }

  ic_loggingValues = [loggableCopy ic_loggingValues];
  if (ic_loggingValues)
  {
    [dictionary setObject:ic_loggingValues forKeyedSubscript:ic_loggingIdentifier];
  }
}

@end