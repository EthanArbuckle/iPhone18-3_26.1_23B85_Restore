@interface NSManagedObjectContext
@end

@implementation NSManagedObjectContext

void __73__NSManagedObjectContext_MediaAnalysis__mad_performAndSaveChanges_error___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = *(a1[7] + 8);
  obj = *(v3 + 40);
  v4 = (*(v2 + 16))();
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[6] + 8) + 24) = v4;
  if (*(*(a1[6] + 8) + 24))
  {
    v6 = (a1 + 4);
    v5 = a1[4];
    v7 = *(a1[7] + 8);
    v11 = *(v7 + 40);
    v8 = [v5 mad_saveChangesWithError:&v11];
    objc_storeStrong((v7 + 40), v11);
    *(*(a1[6] + 8) + 24) = v8;
    if (*(*(a1[6] + 8) + 24))
    {
      return;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = *(*(a1[7] + 8) + 40);
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Error saving changes: %@", buf, 0xCu);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(a1[7] + 8) + 40);
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Error running block before saving changes: %@", buf, 0xCu);
    }

    v6 = (a1 + 4);
  }

  [*v6 rollback];
}

BOOL __82__NSManagedObjectContext_MediaAnalysis__mad_insertBatch_entityName_insertedCount___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v6 = [v5 result];
    v7 = *(a1[7] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return v5 != 0;
}

uint64_t __55__NSManagedObjectContext_MediaAnalysis__mad_hasChanges__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) hasChanges];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end