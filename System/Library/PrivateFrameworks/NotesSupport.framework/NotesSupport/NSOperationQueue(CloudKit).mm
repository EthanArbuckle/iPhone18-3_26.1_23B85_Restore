@interface NSOperationQueue(CloudKit)
- (BOOL)containsOperationToDeleteRecordID:()CloudKit;
- (BOOL)containsOperationToFetchRecordID:()CloudKit;
- (BOOL)containsOperationToSaveRecordID:()CloudKit;
- (id)existingOperationToDeleteRecordID:()CloudKit;
- (id)existingOperationToFetchRecordID:()CloudKit;
- (id)existingOperationToSaveRecordID:()CloudKit;
- (id)iterativelyCancelDependentOperations:()CloudKit;
@end

@implementation NSOperationQueue(CloudKit)

- (id)existingOperationToDeleteRecordID:()CloudKit
{
  v4 = a3;
  v5 = [a1 operations];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__NSOperationQueue_CloudKit__existingOperationToDeleteRecordID___block_invoke;
  v9[3] = &unk_1E8485498;
  v10 = v4;
  v6 = v4;
  v7 = [v5 ic_objectPassingTest:v9];

  return v7;
}

- (BOOL)containsOperationToDeleteRecordID:()CloudKit
{
  v1 = [a1 existingOperationToDeleteRecordID:?];
  v2 = v1 != 0;

  return v2;
}

- (id)existingOperationToFetchRecordID:()CloudKit
{
  v4 = a3;
  v5 = [a1 operations];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__NSOperationQueue_CloudKit__existingOperationToFetchRecordID___block_invoke;
  v9[3] = &unk_1E8485498;
  v10 = v4;
  v6 = v4;
  v7 = [v5 ic_objectPassingTest:v9];

  return v7;
}

- (BOOL)containsOperationToFetchRecordID:()CloudKit
{
  v1 = [a1 existingOperationToFetchRecordID:?];
  v2 = v1 != 0;

  return v2;
}

- (id)existingOperationToSaveRecordID:()CloudKit
{
  v4 = a3;
  v5 = [a1 operations];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__NSOperationQueue_CloudKit__existingOperationToSaveRecordID___block_invoke;
  v9[3] = &unk_1E8485498;
  v10 = v4;
  v6 = v4;
  v7 = [v5 ic_objectPassingTest:v9];

  return v7;
}

- (BOOL)containsOperationToSaveRecordID:()CloudKit
{
  v1 = [a1 existingOperationToSaveRecordID:?];
  v2 = v1 != 0;

  return v2;
}

- (id)iterativelyCancelDependentOperations:()CloudKit
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithObject:v4];
  v6 = [a1 operations];
  v7 = [v6 mutableCopy];

  v28 = [MEMORY[0x1E695DF70] array];
  v29 = v5;
  v8 = [v5 lastObject];
  if (v8)
  {
    v9 = v8;
    v26 = v7;
    while (1)
    {
      if (![v7 count])
      {
        goto LABEL_23;
      }

      [v29 removeLastObject];
      v27 = [v29 lastObject];

      v10 = [MEMORY[0x1E695DF70] array];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = v12;
      v14 = *v31;
      do
      {
        v15 = 0;
        do
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * v15);
          v17 = [v16 dependencies];
          if (![v17 containsObject:v4])
          {
            goto LABEL_15;
          }

          v18 = [v16 isCancelled];

          if (v18)
          {
            goto LABEL_16;
          }

          v19 = [v16 ic_resistsCancellation];
          v17 = os_log_create("com.apple.notes", "Cloud");
          v20 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
          if (v19)
          {
            if (v20)
            {
              v21 = [v16 ic_loggingDescription];
              *buf = 138412290;
              v35 = v21;
              _os_log_impl(&dword_1D4576000, v17, OS_LOG_TYPE_INFO, "Operation resisted cancellation: %@", buf, 0xCu);
            }

LABEL_15:
            goto LABEL_16;
          }

          if (v20)
          {
            v22 = [v16 ic_loggingDescription];
            *buf = 138412290;
            v35 = v22;
            _os_log_impl(&dword_1D4576000, v17, OS_LOG_TYPE_INFO, "Canceling operation: %@", buf, 0xCu);
          }

          [v16 cancel];
          [v29 addObject:v16];
          [v10 addObject:v16];
          [v28 addObject:v16];
LABEL_16:
          ++v15;
        }

        while (v13 != v15);
        v23 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
        v13 = v23;
      }

      while (v23);
LABEL_22:

      [v11 removeObjectsInArray:v10];
      v7 = v26;
      v9 = v27;
      if (!v27)
      {
LABEL_23:

        break;
      }
    }
  }

  v24 = [v28 copy];

  return v24;
}

@end