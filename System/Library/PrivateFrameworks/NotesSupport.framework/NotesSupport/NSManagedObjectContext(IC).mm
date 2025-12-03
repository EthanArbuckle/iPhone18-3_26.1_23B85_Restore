@interface NSManagedObjectContext(IC)
- (id)ic_objectIDFromURL:()IC;
- (id)ic_objectsWithIDs:()IC;
- (uint64_t)ic_saveWithLogDescription:()IC arguments:;
- (void)ic_performBlock:()IC andPerformBlockOnMainThread:;
- (void)ic_performBlockAndWait:()IC andPerformBlockAndWaitOnMainThread:;
- (void)ic_refreshObject:()IC mergeChanges:;
@end

@implementation NSManagedObjectContext(IC)

- (uint64_t)ic_saveWithLogDescription:()IC arguments:
{
  v6 = a3;
  if ([v6 length])
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v6 arguments:a4];
  }

  else
  {
    v7 = 0;
  }

  persistentStoreCoordinator = [self persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  v10 = [persistentStores count];

  if (v10)
  {
    if ([self hasChanges])
    {
      v15 = 0;
      v11 = [self save:&v15];
      v12 = v15;
      if (v11)
      {
        v13 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [NSManagedObjectContext(IC) ic_saveWithLogDescription:arguments:];
        }
      }

      else
      {
        [ICTelemetryManager postBasicEvent:5];
        v13 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [NSManagedObjectContext(IC) ic_saveWithLogDescription:arguments:];
        }
      }
    }

    else
    {
      v12 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [NSManagedObjectContext(IC) ic_saveWithLogDescription:arguments:];
      }

      v11 = 1;
    }
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [NSManagedObjectContext(IC) ic_saveWithLogDescription:arguments:];
    }

    v11 = 0;
  }

  return v11;
}

- (void)ic_performBlock:()IC andPerformBlockOnMainThread:
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__NSManagedObjectContext_IC__ic_performBlock_andPerformBlockOnMainThread___block_invoke;
  v10[3] = &unk_1E8485730;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [self performBlock:v10];
}

- (void)ic_performBlockAndWait:()IC andPerformBlockAndWaitOnMainThread:
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__NSManagedObjectContext_IC__ic_performBlockAndWait_andPerformBlockAndWaitOnMainThread___block_invoke;
  v9[3] = &unk_1E8485128;
  v10 = v6;
  v7 = v6;
  v8 = a4;
  [self performBlockAndWait:v9];
  performBlockOnMainThreadAndWait(v8);
}

- (id)ic_objectsWithIDs:()IC
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self objectWithID:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (void)ic_refreshObject:()IC mergeChanges:
{
  v6 = a3;
  persistentStoreCoordinator = [self persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  objectID = [v6 objectID];
  persistentStore = [objectID persistentStore];
  v11 = [persistentStores containsObject:persistentStore];

  if (v11)
  {
    [self refreshObject:v6 mergeChanges:a4];
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [NSManagedObjectContext(IC) ic_refreshObject:v6 mergeChanges:v12];
    }
  }
}

- (id)ic_objectIDFromURL:()IC
{
  v4 = a3;
  persistentStoreCoordinator = [self persistentStoreCoordinator];
  v6 = [persistentStoreCoordinator ic_managedObjectIDForURIRepresentation:v4];

  return v6;
}

- (void)ic_saveWithLogDescription:()IC arguments:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1D4576000, v0, OS_LOG_TYPE_DEBUG, "Not saving context because it has no changes {description: %@}", v1, 0xCu);
}

- (void)ic_saveWithLogDescription:()IC arguments:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1D4576000, v1, OS_LOG_TYPE_ERROR, "Cannot save context {error: %@, description: %@}", v2, 0x16u);
}

- (void)ic_saveWithLogDescription:()IC arguments:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1D4576000, v0, OS_LOG_TYPE_DEBUG, "Saved context {description: %@}", v1, 0xCu);
}

- (void)ic_saveWithLogDescription:()IC arguments:.cold.4()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1D4576000, v0, OS_LOG_TYPE_FAULT, "Cannot save context because it doesn't have any persistent stores {description: %@}", v1, 0xCu);
}

- (void)ic_refreshObject:()IC mergeChanges:.cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 objectID];
  v5 = [a1 objectID];
  v6 = [v5 persistentStore];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_1D4576000, a2, OS_LOG_TYPE_DEBUG, "Not refreshing object because persistent store is not reachable {objectID: %@, persistentStore: %@}", &v7, 0x16u);
}

@end