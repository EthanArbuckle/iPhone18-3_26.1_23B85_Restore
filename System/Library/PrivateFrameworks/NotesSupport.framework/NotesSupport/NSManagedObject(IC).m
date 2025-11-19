@interface NSManagedObject(IC)
+ (id)ic_existingObjectWithID:()IC context:;
+ (id)ic_objectIDsFromObjects:()IC;
+ (id)ic_objectsFromObjectIDs:()IC relationshipKeyPathsForPrefetching:context:;
+ (id)ic_permanentObjectIDsFromObjects:()IC;
+ (id)ic_resultsMatchingPredicate:()IC sortDescriptors:resultType:relationshipKeyPathsForPrefetching:fetchLimit:context:;
+ (void)ic_enumerateObjectsMatchingPredicate:()IC sortDescriptors:relationshipKeyPathsForPrefetching:context:batchSize:saveAfterBatch:usingBlock:;
- (id)ic_postNotificationOnMainThreadAfterSaveWithName:()IC;
- (uint64_t)ic_isTransitioning;
- (uint64_t)ic_obtainPermanentObjectIDIfNecessary;
- (uint64_t)ic_permanentObjectID;
- (void)ic_obtainPermanentObjectIDIfNecessary;
- (void)ic_postNotificationOnMainThreadWithName:()IC;
@end

@implementation NSManagedObject(IC)

- (uint64_t)ic_isTransitioning
{
  if (([a1 _isDeallocating] & 1) != 0 || (objc_msgSend(a1, "faultingState") & 2) != 0)
  {
    return 1;
  }

  v2 = [a1 managedObjectContext];
  if ([v2 _isDeallocating])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 managedObjectContext];
    v5 = [v4 persistentStoreCoordinator];
    v6 = [v5 persistentStores];
    v3 = [v6 count] == 0;
  }

  return v3;
}

- (uint64_t)ic_obtainPermanentObjectIDIfNecessary
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 objectID];
  v3 = [v2 isTemporaryID];

  if (!v3)
  {
    return 1;
  }

  v4 = [a1 managedObjectContext];
  v11[0] = a1;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v10 = 0;
  v6 = [v4 obtainPermanentIDsForObjects:v5 error:&v10];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    v8 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NSManagedObject(IC) ic_obtainPermanentObjectIDIfNecessary];
    }
  }

  return v6;
}

- (uint64_t)ic_permanentObjectID
{
  [a1 ic_obtainPermanentObjectIDIfNecessary];

  return [a1 objectID];
}

+ (id)ic_existingObjectWithID:()IC context:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = objc_opt_class();
    v15 = 0;
    v8 = [v6 existingObjectWithID:v5 error:&v15];
    v9 = v15;
    v10 = ICDynamicCast(v7, v8);

    if (!v9)
    {
      goto LABEL_12;
    }

    v11 = [v9 code];
    v12 = os_log_create("com.apple.notes", "CoreData");
    v13 = v12;
    if (v11 == 133000)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        +[NSManagedObject(IC) ic_existingObjectWithID:context:];
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1D4576000, v13, OS_LOG_TYPE_DEFAULT, "Error finding object from objectID: %@, %@", buf, 0x16u);
    }
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [NSManagedObject(IC) ic_existingObjectWithID:v13 context:?];
    }

    v10 = 0;
    v9 = v13;
  }

LABEL_12:

  return v10;
}

+ (id)ic_objectsFromObjectIDs:()IC relationshipKeyPathsForPrefetching:context:
{
  v8 = a3;
  v9 = MEMORY[0x1E695D5E0];
  v10 = a5;
  v11 = a4;
  v12 = [a1 entity];
  v13 = [v12 name];
  v14 = [v9 fetchRequestWithEntityName:v13];

  [v14 setIncludesSubentities:1];
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF in %@", v8];
  [v14 setPredicate:v15];

  [v14 setRelationshipKeyPathsForPrefetching:v11];
  v20 = 0;
  v16 = [v10 executeFetchRequest:v14 error:&v20];

  v17 = v20;
  if (v17)
  {
    v18 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [NSManagedObject(IC) ic_objectsFromObjectIDs:v8 relationshipKeyPathsForPrefetching:? context:?];
    }
  }

  return v16;
}

+ (id)ic_objectIDsFromObjects:()IC
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) objectID];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)ic_permanentObjectIDsFromObjects:()IC
{
  v4 = a3;
  v5 = [v4 firstObject];
  if (v5)
  {
    v6 = [v4 ic_objectsPassingTest:&__block_literal_global_10_2];
    v7 = [v5 managedObjectContext];
    v13 = 0;
    v8 = [v7 obtainPermanentIDsForObjects:v6 error:&v13];
    v9 = v13;

    if ((v8 & 1) == 0)
    {
      v10 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[NSManagedObject(IC) ic_permanentObjectIDsFromObjects:];
      }
    }
  }

  v11 = [a1 ic_objectIDsFromObjects:v4];

  return v11;
}

- (void)ic_postNotificationOnMainThreadWithName:()IC
{
  v4 = a3;
  objc_initWeak(&location, a1);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v5 = [a1 managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__NSManagedObject_IC__ic_postNotificationOnMainThreadWithName___block_invoke;
  v9[3] = &unk_1E84856B8;
  objc_copyWeak(&v10, &location);
  v9[4] = &v11;
  [v5 performBlockAndWait:v9];

  if (v12[5])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__NSManagedObject_IC__ic_postNotificationOnMainThreadWithName___block_invoke_2;
    block[3] = &unk_1E84856E0;
    v7 = v4;
    v8 = &v11;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  objc_destroyWeak(&v10);
  _Block_object_dispose(&v11, 8);

  objc_destroyWeak(&location);
}

- (id)ic_postNotificationOnMainThreadAfterSaveWithName:()IC
{
  v4 = a3;
  objc_initWeak(&location, a1);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3042000000;
  v19 = __Block_byref_object_copy__14;
  v20 = __Block_byref_object_dispose__15;
  v21 = 0;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = [a1 managedObjectContext];
  v7 = *MEMORY[0x1E695D358];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__NSManagedObject_IC__ic_postNotificationOnMainThreadAfterSaveWithName___block_invoke;
  v12[3] = &unk_1E8485708;
  objc_copyWeak(&v15, &location);
  v8 = v4;
  v13 = v8;
  v14 = &v16;
  v9 = [v5 addObserverForName:v7 object:v6 queue:0 usingBlock:v12];
  objc_storeWeak(v17 + 5, v9);

  WeakRetained = objc_loadWeakRetained(v17 + 5);
  _Block_object_dispose(&v16, 8);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return WeakRetained;
}

+ (id)ic_resultsMatchingPredicate:()IC sortDescriptors:resultType:relationshipKeyPathsForPrefetching:fetchLimit:context:
{
  v35 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = a6;
  v18 = [a1 fetchRequest];
  [v18 setPredicate:v14];
  [v18 setResultType:a5];
  [v18 setSortDescriptors:v15];
  [v18 setRelationshipKeyPathsForPrefetching:v17];

  [v18 setFetchLimit:a7];
  v26 = 0;
  v19 = [v16 executeFetchRequest:v18 error:&v26];
  v20 = v26;
  if (v20)
  {
    v21 = os_log_create("com.apple.notes", "CoreData");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

      goto LABEL_5;
    }

    v25 = objc_opt_class();
    *buf = 138413058;
    v28 = v25;
    v29 = 2112;
    v30 = v14;
    v31 = 2112;
    v32 = v15;
    v33 = 2112;
    v34 = v20;
    v24 = v25;
    _os_log_error_impl(&dword_1D4576000, v21, OS_LOG_TYPE_ERROR, "Error fetching %@ (predicate=%@ sortDescriptors=%@): %@", buf, 0x2Au);
LABEL_11:

    goto LABEL_3;
  }

  if (!v19)
  {
    v21 = os_log_create("com.apple.notes", "CoreData");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_3;
    }

    v23 = objc_opt_class();
    *buf = 138413058;
    v28 = v23;
    v29 = 2112;
    v30 = v14;
    v31 = 2112;
    v32 = v15;
    v33 = 2112;
    v34 = v16;
    v24 = v23;
    _os_log_impl(&dword_1D4576000, v21, OS_LOG_TYPE_INFO, "Nil objects array fetching %@ (predicate=%@ sortDescriptors=%@ context=%@)", buf, 0x2Au);
    goto LABEL_11;
  }

LABEL_5:

  return v19;
}

+ (void)ic_enumerateObjectsMatchingPredicate:()IC sortDescriptors:relationshipKeyPathsForPrefetching:context:batchSize:saveAfterBatch:usingBlock:
{
  v56 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a9;
  v19 = [a1 fetchRequest];
  v45 = v14;
  [v19 setPredicate:v14];
  [v19 setResultType:0];
  v44 = v15;
  [v19 setSortDescriptors:v15];
  v43 = v16;
  [v19 setRelationshipKeyPathsForPrefetching:v16];
  [v19 setReturnsObjectsAsFaults:1];
  [v19 setFetchBatchSize:a7];
  v54 = 0;
  v53 = 0;
  v42 = v19;
  v20 = [v17 executeFetchRequest:v19 error:&v53];
  v40 = v53;
  v21 = [v20 count];
  v47 = v21;
  if (a7)
  {
    v22 = a7;
  }

  else
  {
    v22 = v21;
  }

  v41 = v20;
  [v20 objectEnumerator];
  v48 = v23 = 0;
  do
  {
    if (v23 >= v47)
    {
      break;
    }

    v24 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v22];
    v25 = 1;
    while (1)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = [v48 nextObject];
      if (!v27)
      {
        break;
      }

      v28 = v27;
      v29 = objc_opt_class();
      v30 = ICCheckedDynamicCast(v29, v28);
      if (v30)
      {
        if (v18)
        {
          v18[2](v18, v30, &v54);
        }

        [v24 addObject:v30];
      }

      v31 = v54;
      v23 += v54 ^ 1u;

      objc_autoreleasePoolPop(v26);
      if ((v31 & 1) == 0 && v25++ < v22)
      {
        continue;
      }

      goto LABEL_17;
    }

    v54 = 1;
    objc_autoreleasePoolPop(v26);
LABEL_17:
    if (a8)
    {
      [v17 ic_save];
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v33 = v24;
    v34 = [v33 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v50;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v50 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v49 + 1) + 8 * i);
          if (([v38 hasChanges] & 1) == 0)
          {
            [v17 refreshObject:v38 mergeChanges:0];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v35);
    }

    [v33 removeAllObjects];
    v39 = v54;
  }

  while (v39 != 1);
}

+ (void)ic_existingObjectWithID:()IC context:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1D4576000, v0, OS_LOG_TYPE_DEBUG, "Unable to find object from objectID: %@", v1, 0xCu);
}

+ (void)ic_existingObjectWithID:()IC context:.cold.2(NSObject *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AF00] callStackSymbols];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1D4576000, a1, OS_LOG_TYPE_DEBUG, "Trying to get an object from a nil object ID: %@", v3, 0xCu);
}

+ (void)ic_objectsFromObjectIDs:()IC relationshipKeyPathsForPrefetching:context:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_1D4576000, v1, v2, "Error fetching objects from (%ld) object IDs: %@", v3, v4, v5, v6, v7);
}

+ (void)ic_permanentObjectIDsFromObjects:()IC .cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1D4576000, v0, OS_LOG_TYPE_ERROR, "Error obtaining permanent object ID for objects with error: %@", v1, 0xCu);
}

- (void)ic_obtainPermanentObjectIDIfNecessary
{
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  OUTLINED_FUNCTION_1_2(&dword_1D4576000, v2, v3, "Error obtaining permanent object ID for %@: %@", v4, v5, v6, v7, v8);
}

@end