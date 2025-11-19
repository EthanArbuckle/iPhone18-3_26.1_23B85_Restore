@interface NSOperationQueue
@end

@implementation NSOperationQueue

uint64_t __64__NSOperationQueue_CloudKit__existingOperationToDeleteRecordID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 recordIDsToDelete];
    v5 = [v4 containsObject:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __63__NSOperationQueue_CloudKit__existingOperationToFetchRecordID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 recordIDs];
    v5 = [v4 containsObject:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __62__NSOperationQueue_CloudKit__existingOperationToSaveRecordID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 recordsToSave];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__NSOperationQueue_CloudKit__existingOperationToSaveRecordID___block_invoke_2;
    v7[3] = &unk_1E8485758;
    v8 = *(a1 + 32);
    v5 = [v4 ic_containsObjectPassingTest:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __62__NSOperationQueue_CloudKit__existingOperationToSaveRecordID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

@end