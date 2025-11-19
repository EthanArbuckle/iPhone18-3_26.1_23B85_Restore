@interface CPLDropAllRecordsExtractionStep
- (BOOL)extractToBatch:(id)a3 maximumCount:(unint64_t)a4 maximumResourceSize:(unint64_t)a5 error:(id *)a6;
@end

@implementation CPLDropAllRecordsExtractionStep

- (BOOL)extractToBatch:(id)a3 maximumCount:(unint64_t)a4 maximumResourceSize:(unint64_t)a5 error:(id *)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = [(CPLBatchExtractionStep *)self storage:a3];
  v9 = [(CPLBatchExtractionStep *)self storage];
  v10 = [(CPLBatchExtractionStep *)self scopeIdentifier];
  v11 = [v9 allChangesWithScopeIdentifier:v10];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v27;
    while (2)
    {
      v17 = 0;
      v18 = v15;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v26 + 1) + 8 * v17);
        v25 = v18;
        v20 = [v8 removeChange:v19 error:&v25];
        v15 = v25;

        if (!v20)
        {

          if (a6)
          {
            v21 = v15;
            v22 = 0;
            *a6 = v15;
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_15;
        }

        ++v17;
        v18 = v15;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

  v22 = 1;
LABEL_15:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

@end