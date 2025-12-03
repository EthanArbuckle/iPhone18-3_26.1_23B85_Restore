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
  operations = [self operations];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__NSOperationQueue_CloudKit__existingOperationToDeleteRecordID___block_invoke;
  v9[3] = &unk_1E8485498;
  v10 = v4;
  v6 = v4;
  v7 = [operations ic_objectPassingTest:v9];

  return v7;
}

- (BOOL)containsOperationToDeleteRecordID:()CloudKit
{
  v1 = [self existingOperationToDeleteRecordID:?];
  v2 = v1 != 0;

  return v2;
}

- (id)existingOperationToFetchRecordID:()CloudKit
{
  v4 = a3;
  operations = [self operations];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__NSOperationQueue_CloudKit__existingOperationToFetchRecordID___block_invoke;
  v9[3] = &unk_1E8485498;
  v10 = v4;
  v6 = v4;
  v7 = [operations ic_objectPassingTest:v9];

  return v7;
}

- (BOOL)containsOperationToFetchRecordID:()CloudKit
{
  v1 = [self existingOperationToFetchRecordID:?];
  v2 = v1 != 0;

  return v2;
}

- (id)existingOperationToSaveRecordID:()CloudKit
{
  v4 = a3;
  operations = [self operations];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__NSOperationQueue_CloudKit__existingOperationToSaveRecordID___block_invoke;
  v9[3] = &unk_1E8485498;
  v10 = v4;
  v6 = v4;
  v7 = [operations ic_objectPassingTest:v9];

  return v7;
}

- (BOOL)containsOperationToSaveRecordID:()CloudKit
{
  v1 = [self existingOperationToSaveRecordID:?];
  v2 = v1 != 0;

  return v2;
}

- (id)iterativelyCancelDependentOperations:()CloudKit
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithObject:v4];
  operations = [self operations];
  v7 = [operations mutableCopy];

  array = [MEMORY[0x1E695DF70] array];
  v29 = v5;
  lastObject = [v5 lastObject];
  if (lastObject)
  {
    v9 = lastObject;
    v26 = v7;
    while (1)
    {
      if (![v7 count])
      {
        goto LABEL_23;
      }

      [v29 removeLastObject];
      lastObject2 = [v29 lastObject];

      array2 = [MEMORY[0x1E695DF70] array];
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
          dependencies = [v16 dependencies];
          if (![dependencies containsObject:v4])
          {
            goto LABEL_15;
          }

          isCancelled = [v16 isCancelled];

          if (isCancelled)
          {
            goto LABEL_16;
          }

          ic_resistsCancellation = [v16 ic_resistsCancellation];
          dependencies = os_log_create("com.apple.notes", "Cloud");
          v20 = os_log_type_enabled(dependencies, OS_LOG_TYPE_INFO);
          if (ic_resistsCancellation)
          {
            if (v20)
            {
              ic_loggingDescription = [v16 ic_loggingDescription];
              *buf = 138412290;
              v35 = ic_loggingDescription;
              _os_log_impl(&dword_1D4576000, dependencies, OS_LOG_TYPE_INFO, "Operation resisted cancellation: %@", buf, 0xCu);
            }

LABEL_15:
            goto LABEL_16;
          }

          if (v20)
          {
            ic_loggingDescription2 = [v16 ic_loggingDescription];
            *buf = 138412290;
            v35 = ic_loggingDescription2;
            _os_log_impl(&dword_1D4576000, dependencies, OS_LOG_TYPE_INFO, "Canceling operation: %@", buf, 0xCu);
          }

          [v16 cancel];
          [v29 addObject:v16];
          [array2 addObject:v16];
          [array addObject:v16];
LABEL_16:
          ++v15;
        }

        while (v13 != v15);
        v23 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
        v13 = v23;
      }

      while (v23);
LABEL_22:

      [v11 removeObjectsInArray:array2];
      v7 = v26;
      v9 = lastObject2;
      if (!lastObject2)
      {
LABEL_23:

        break;
      }
    }
  }

  v24 = [array copy];

  return v24;
}

@end