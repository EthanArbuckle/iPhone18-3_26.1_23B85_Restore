@interface NoteContext(ICLegacyContext)
- (BOOL)nonEmptyNoteExistsForLegacyAccountWithObjectID:()ICLegacyContext;
- (id)allVisibleNotesForAccountWithObjectID:()ICLegacyContext;
- (id)allVisibleNotesInFolder:()ICLegacyContext;
- (id)attachmentForIdentifier:()ICLegacyContext;
- (id)existingObjectWithID:()ICLegacyContext error:;
- (id)ic_objectsWithIDs:()ICLegacyContext;
- (id)objectWithID:()ICLegacyContext;
- (uint64_t)countOfVisibleNotesForAccount:()ICLegacyContext;
- (uint64_t)countOfVisibleNotesForAccountWithObjectID:()ICLegacyContext;
- (void)allVisibleNoteObjectIDsForAccountWithObjectID:()ICLegacyContext;
- (void)performBlock:()ICLegacyContext;
- (void)performBlockAndWait:()ICLegacyContext;
- (void)reset;
@end

@implementation NoteContext(ICLegacyContext)

- (BOOL)nonEmptyNoteExistsForLegacyAccountWithObjectID:()ICLegacyContext
{
  v1 = [a1 allVisibleNotesForAccountWithObjectID:?];
  v2 = [v1 count] != 0;

  return v2;
}

- (id)allVisibleNotesForAccountWithObjectID:()ICLegacyContext
{
  v4 = a3;
  v5 = [a1 collectionForObjectID:v4];
  if (v5)
  {
    v6 = [a1 allVisibleNotesInCollection:v5 sorted:1];
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(NoteContext(ICLegacyContext) *)v4 allVisibleNotesForAccountWithObjectID:v7];
    }

    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)allVisibleNotesInFolder:()ICLegacyContext
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (!v5)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((noteCollectionObject) != nil)" functionName:"-[NoteContext(ICLegacyContext) allVisibleNotesInFolder:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "noteCollectionObject"}];
  }

  v6 = [a1 allVisibleNotesInCollection:v5];

  return v6;
}

- (uint64_t)countOfVisibleNotesForAccountWithObjectID:()ICLegacyContext
{
  v2 = [a1 collectionForObjectID:?];
  if (!v2)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((noteCollectionObject) != nil)" functionName:"-[NoteContext(ICLegacyContext) countOfVisibleNotesForAccountWithObjectID:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "noteCollectionObject"}];
  }

  v3 = [a1 countOfVisibleNotesInCollection:v2];

  return v3;
}

- (uint64_t)countOfVisibleNotesForAccount:()ICLegacyContext
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (!v5)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((accountObject) != nil)" functionName:"-[NoteContext(ICLegacyContext) countOfVisibleNotesForAccount:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "accountObject"}];
  }

  v6 = [a1 countOfVisibleNotesInCollection:v5];

  return v6;
}

- (void)allVisibleNoteObjectIDsForAccountWithObjectID:()ICLegacyContext
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 collectionForObjectID:v4];
  if (v5)
  {
    v6 = [a1 newFetchRequestForNotes];
    v7 = [MEMORY[0x277D35930] visibleNotesPredicate];
    v21[0] = v7;
    v8 = [v5 predicateForNotes];
    v21[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];

    v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v9];
    [v6 setPredicate:v10];

    [v6 setResultType:1];
    v11 = [a1 managedObjectContext];
    v18 = 0;
    v12 = [v11 executeFetchRequest:v6 error:&v18];
    v13 = v18;

    if (v13)
    {
      v14 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(NoteContext(ICLegacyContext) *)v4 allVisibleNoteObjectIDsForAccountWithObjectID:v13, v14];
      }
    }
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Collection is nil fetching note IDs for account %@", buf, 0xCu);
    }

    v12 = 0;
  }

  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  v16 = v15;

  return v15;
}

- (void)performBlock:()ICLegacyContext
{
  v4 = a3;
  v5 = [a1 managedObjectContext];
  v6 = [v5 concurrencyType];

  if (v6)
  {
    v8 = [a1 managedObjectContext];
    [v8 performBlock:v4];
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NoteContext(ICLegacyContext) performBlock:];
    }

    v4[2](v4);
  }
}

- (void)performBlockAndWait:()ICLegacyContext
{
  v4 = a3;
  v5 = [a1 managedObjectContext];
  v6 = [v5 concurrencyType];

  if (v6)
  {
    v8 = [a1 managedObjectContext];
    [v8 performBlockAndWait:v4];
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NoteContext(ICLegacyContext) performBlockAndWait:];
    }

    v4[2](v4);
  }
}

- (id)objectWithID:()ICLegacyContext
{
  v4 = a3;
  v5 = [a1 managedObjectContext];
  v6 = [v5 objectWithID:v4];

  return v6;
}

- (id)existingObjectWithID:()ICLegacyContext error:
{
  v6 = a3;
  v7 = [a1 managedObjectContext];
  v8 = [v7 existingObjectWithID:v6 error:a4];

  return v8;
}

- (id)ic_objectsWithIDs:()ICLegacyContext
{
  v4 = a3;
  v5 = [a1 managedObjectContext];
  v6 = [v5 ic_objectsWithIDs:v4];

  return v6;
}

- (void)reset
{
  v1 = [a1 managedObjectContext];
  [v1 reset];
}

- (id)attachmentForIdentifier:()ICLegacyContext
{
  v4 = a3;
  v5 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"NoteAttachment"];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(contentID ==[c] %@)", v4];
  [v5 setPredicate:v6];
  v7 = [a1 managedObjectContext];
  v13 = 0;
  v8 = [v7 executeFetchRequest:v5 error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(NoteContext(ICLegacyContext) *)v4 attachmentForIdentifier:v9, v10];
    }
  }

  v11 = [v8 firstObject];

  return v11;
}

- (void)allVisibleNotesForAccountWithObjectID:()ICLegacyContext .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NoteContext(ICLegacyContext) allVisibleNotesForAccountWithObjectID:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "%s: noteCollectionObject is unexpectedly nil, objectID = %@", &v2, 0x16u);
}

- (void)allVisibleNoteObjectIDsForAccountWithObjectID:()ICLegacyContext .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Error fetching visible note object IDs for account %@: %@", &v3, 0x16u);
}

- (void)performBlock:()ICLegacyContext .cold.1()
{
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v1, v2, "Trying to call performBlock on a legacy context with confinement concurrency type: %@", v3, v4, v5, v6, 2u);
}

- (void)performBlockAndWait:()ICLegacyContext .cold.1()
{
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v1, v2, "Trying to call performBlockAndWait on a legacy context with confinement concurrency type: %@", v3, v4, v5, v6, 2u);
}

- (void)attachmentForIdentifier:()ICLegacyContext .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = [a2 userInfo];
  v7 = 138412802;
  v8 = a1;
  v9 = 2112;
  v10 = a2;
  v11 = 2112;
  v12 = v6;
  _os_log_fault_impl(&dword_214D51000, a3, OS_LOG_TYPE_FAULT, "Error getting attachment with content ID (%@):  %@, %@", &v7, 0x20u);
}

@end