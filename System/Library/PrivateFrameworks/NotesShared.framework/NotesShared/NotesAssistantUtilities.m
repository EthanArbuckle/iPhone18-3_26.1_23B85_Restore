@interface NotesAssistantUtilities
+ (id)folderForGroupName:(id)a3 withNoteContext:(id)a4 htmlNoteContext:(id)a5;
+ (id)folderOptionsForModernContext:(id)a3 htmlContext:(id)a4;
+ (id)legacyFolderForGroupName:(id)a3 withContext:(id)a4;
+ (id)modernFolderForGroupName:(id)a3 withContext:(id)a4;
+ (id)objectForIDURL:(id)a3 inContext:(id)a4;
@end

@implementation NotesAssistantUtilities

+ (id)folderOptionsForModernContext:(id)a3 htmlContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__NotesAssistantUtilities_folderOptionsForModernContext_htmlContext___block_invoke;
  v21[3] = &unk_278194AD8;
  v22 = v5;
  v8 = v7;
  v23 = v8;
  v9 = v5;
  [v9 performBlockAndWait:v21];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __69__NotesAssistantUtilities_folderOptionsForModernContext_htmlContext___block_invoke_2;
  v18 = &unk_278194AD8;
  v19 = v6;
  v10 = v8;
  v20 = v10;
  v11 = v6;
  [v11 performBlockAndWait:&v15];
  [NotesAssistantFolderOption disambiguateFolderOptions:v10, v15, v16, v17, v18];
  v12 = v20;
  v13 = v10;

  return v10;
}

void __69__NotesAssistantUtilities_folderOptionsForModernContext_htmlContext___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [ICFolder visibleFoldersInContext:*(a1 + 32)];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (![v7 folderType])
        {
          v8 = *(a1 + 40);
          v9 = [[NotesAssistantFolderOption alloc] initWithModernFolder:v7];
          [v8 addObject:v9];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __69__NotesAssistantUtilities_folderOptionsForModernContext_htmlContext___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D35940] ic_objectsMatchingPredicate:0 context:*(a1 + 32)];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 account];
        v9 = [v8 didChooseToMigrate];

        if ((v9 & 1) == 0)
        {
          v10 = *(a1 + 40);
          v11 = [[NotesAssistantFolderOption alloc] initWithLegacyFolder:v7];
          [v10 addObject:v11];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

+ (id)folderForGroupName:(id)a3 withNoteContext:(id)a4 htmlNoteContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 modernFolderForGroupName:v8 withContext:a4];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [a1 legacyFolderForGroupName:v8 withContext:v9];
  }

  v13 = v12;

  return v13;
}

+ (id)legacyFolderForGroupName:(id)a3 withContext:(id)a4
{
  v5 = MEMORY[0x277CBEBC0];
  v6 = a4;
  v7 = [a3 vocabularyIdentifier];
  v8 = [v5 URLWithString:v7];

  v9 = [NotesAssistantUtilities objectForIDURL:v8 inContext:v6];

  objc_opt_class();
  v10 = ICDynamicCast();

  return v10;
}

+ (id)modernFolderForGroupName:(id)a3 withContext:(id)a4
{
  v5 = MEMORY[0x277CBEBC0];
  v6 = a4;
  v7 = [a3 vocabularyIdentifier];
  v8 = [v5 URLWithString:v7];

  v9 = [NotesAssistantUtilities objectForIDURL:v8 inContext:v6];

  if (v9)
  {
    objc_opt_class();
    v10 = ICDynamicCast();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)objectForIDURL:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__64;
  v19 = __Block_byref_object_dispose__64;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__NotesAssistantUtilities_objectForIDURL_inContext___block_invoke;
  v11[3] = &unk_2781961E0;
  v7 = v6;
  v12 = v7;
  v8 = v5;
  v13 = v8;
  v14 = &v15;
  [v7 performBlockAndWait:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __52__NotesAssistantUtilities_objectForIDURL_inContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v7 = [v2 managedObjectIDForURIRepresentation:*(a1 + 40)];

  v3 = v7;
  if (v7)
  {
    v4 = [*(a1 + 32) objectWithID:v7];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v7;
  }
}

@end