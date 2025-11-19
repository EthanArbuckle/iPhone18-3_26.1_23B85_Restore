@interface MADManagedSpotlightEntry
+ (BOOL)deleteEntryWithUniqueIdentifier:(id)a3 error:(id *)a4;
+ (id)entryWithURL:(id)a3 uniqueIdentifier:(id)a4 bundleIdentifier:(id)a5 typeIdentifier:(id)a6 sandboxToken:(id)a7 mediaType:(unint64_t)a8 error:(id *)a9;
+ (id)fetchEntriesWithMediaType:(unint64_t)a3 fetchLimit:(unint64_t)a4 error:(id *)a5;
+ (id)fetchEntryWithUniqueIdentifier:(id)a3 error:(id *)a4;
+ (unint64_t)countForMediaType:(unint64_t)a3 error:(id *)a4;
- (id)description;
@end

@implementation MADManagedSpotlightEntry

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  v6 = [objc_opt_class() urlColumnName];
  v7 = [(MADManagedSpotlightEntry *)self url];
  [v3 appendFormat:@"%@: %@, ", v6, v7];

  v8 = [objc_opt_class() uniqueIdentifierColumnName];
  v9 = [(MADManagedSpotlightEntry *)self uniqueIdentifier];
  [v3 appendFormat:@"%@: %@, ", v8, v9];

  v10 = [objc_opt_class() bundleIdentifierColumnName];
  v11 = [(MADManagedSpotlightEntry *)self bundleIdentifier];
  [v3 appendFormat:@"%@: %@, ", v10, v11];

  v12 = [objc_opt_class() typeIdentifierColumnName];
  v13 = [(MADManagedSpotlightEntry *)self typeIdentifier];
  [v3 appendFormat:@"%@: %@, ", v12, v13];

  v14 = [objc_opt_class() sandboxTokenColumnName];
  v15 = [(MADManagedSpotlightEntry *)self sandboxToken];
  [v3 appendFormat:@"%@: %@, ", v14, v15];

  v16 = [objc_opt_class() mediaTypeColumnName];
  [v3 appendFormat:@"%@: %d, ", v16, -[MADManagedSpotlightEntry mediaType](self, "mediaType")];

  v17 = [objc_opt_class() attemptCountColumnName];
  [v3 appendFormat:@"%@: %d, ", v17, -[MADManagedSpotlightEntry attemptCount](self, "attemptCount")];

  v18 = [objc_opt_class() nextAttemptDateColumnName];
  v19 = [(MADManagedSpotlightEntry *)self nextAttemptDate];
  [v3 appendFormat:@"%@: %@, ", v18, v19];

  v20 = [objc_opt_class() statusColumnName];
  [v3 appendFormat:@"%@: %d>", v20, -[MADManagedSpotlightEntry status](self, "status")];

  return v3;
}

+ (id)entryWithURL:(id)a3 uniqueIdentifier:(id)a4 bundleIdentifier:(id)a5 typeIdentifier:(id)a6 sandboxToken:(id)a7 mediaType:(unint64_t)a8 error:(id *)a9
{
  v45 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v15 = a4;
  v35 = a5;
  v16 = a6;
  v17 = a7;
  v18 = +[MADSystemDataStore systemDataStore];
  v38 = 0;
  v19 = [a1 fetchEntryWithUniqueIdentifier:v15 error:&v38];
  v20 = v38;
  if (v20)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = *a9;
      *buf = 138412290;
      v40 = v21;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to fetch entry (%@)", buf, 0xCu);
    }

    v22 = 0;
    if (a9)
    {
      *a9 = [v20 copy];
    }

    goto LABEL_32;
  }

  if (!v19)
  {
    v23 = [MADManagedSpotlightEntry alloc];
    v24 = [v18 managedObjectContext];
    v25 = [(MADManagedSpotlightEntry *)v23 initWithContext:v24];

    [(MADManagedSpotlightEntry *)v25 setUrl:v34];
    [(MADManagedSpotlightEntry *)v25 setUniqueIdentifier:v15];
    [(MADManagedSpotlightEntry *)v25 setBundleIdentifier:v35];
    [(MADManagedSpotlightEntry *)v25 setTypeIdentifier:v16];
    [(MADManagedSpotlightEntry *)v25 setSandboxToken:v17];
    [(MADManagedSpotlightEntry *)v25 setMediaType:a8];
    [(MADManagedSpotlightEntry *)v25 setStatus:0];
    [(MADManagedSpotlightEntry *)v25 setAttemptCount:0];
    v26 = [MEMORY[0x1E695DF00] now];
    [(MADManagedSpotlightEntry *)v25 setNextAttemptDate:v26];

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v40 = v15;
      v41 = 2112;
      v42 = v35;
      v43 = 2112;
      v44 = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADSystemDataStore][%@] Registering new asset - %@ %@", buf, 0x20u);
    }

    v37 = 0;
    v27 = [v18 commitChangesOrRollbackAndResetContext:&v37];
    v28 = v37;
    v20 = v28;
    if (v27)
    {
      v36 = v28;
      v29 = [a1 fetchEntryWithUniqueIdentifier:v15 error:&v36];
      v30 = v36;

      v25 = v29;
      v20 = v30;
      if (!a9 || !v30)
      {
        v25 = v29;
        v22 = v25;
        goto LABEL_31;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v31 = *a9;
        *buf = 138412290;
        v40 = v31;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to fetch entry (%@)", buf, 0xCu);
      }

      v32 = [v30 copy];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = v20;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to register asset (%@)", buf, 0xCu);
      }

      if (!a9)
      {
        v22 = 0;
        goto LABEL_31;
      }

      v32 = [v20 copy];
    }

    v22 = 0;
    *a9 = v32;
LABEL_31:

    goto LABEL_32;
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v40 = v15;
    v41 = 2112;
    v42 = v35;
    v43 = 2112;
    v44 = v16;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADSystemDataStore][%@] Returning existing entry - %@ %@", buf, 0x20u);
  }

  v22 = v19;
  v20 = 0;
LABEL_32:

  return v22;
}

+ (id)fetchEntriesWithMediaType:(unint64_t)a3 fetchLimit:(unint64_t)a4 error:(id *)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = +[MADSystemDataStore systemDataStore];
  v9 = +[MADManagedSpotlightEntry fetchRequest];
  v10 = MEMORY[0x1E696AE18];
  v11 = [objc_opt_class() mediaTypeColumnName];
  v12 = [objc_opt_class() nextAttemptDateColumnName];
  v13 = [MEMORY[0x1E695DF00] now];
  v14 = [v10 predicateWithFormat:@"(%K == %d) AND (%K <= %@)", v11, a3, v12, v13];
  [v9 setPredicate:v14];

  if (a4)
  {
    [v9 setFetchLimit:a4];
  }

  v15 = [v8 managedObjectContext];
  v19 = 0;
  v16 = [v15 executeFetchRequest:v9 error:&v19];
  v17 = v19;

  if (v17)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v17;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to fetch asset (%@)", buf, 0xCu);
    }

    if (a5)
    {
      *a5 = [v17 copy];
    }
  }

  return v16;
}

+ (id)fetchEntryWithUniqueIdentifier:(id)a3 error:(id *)a4
{
  *&v26[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v26 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADSystemDataStore] Querying with uniqueIdentifier:%@", buf, 0xCu);
  }

  v6 = +[MADSystemDataStore systemDataStore];
  v7 = +[MADManagedSpotlightEntry fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  v9 = [objc_opt_class() uniqueIdentifierColumnName];
  v10 = [v8 predicateWithFormat:@"%K == %@", v9, v5];
  [v7 setPredicate:v10];

  v11 = [v6 managedObjectContext];
  v22 = 0;
  v12 = [v11 executeFetchRequest:v7 error:&v22];
  v13 = v22;

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v14 = [v12 count];
    v15 = [v12 firstObject];
    *buf = 67109378;
    v26[0] = v14;
    LOWORD(v26[1]) = 2112;
    *(&v26[1] + 2) = v15;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADSystemDataStore] Query returns %d results ... firstObject:%@", buf, 0x12u);
  }

  if (v13)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v26 = v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to fetch asset (%@)", buf, 0xCu);
    }

    if (a4)
    {
      v16 = 0;
      *a4 = [v13 copy];
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if ([v12 count] >= 2)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADSystemDataStore] Fetch %lu assets (expected 1)", objc_msgSend(v12, "count")];
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v26 = v17;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (a4)
    {
      v18 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v17];
      v24 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      *a4 = [v18 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v20];
    }

LABEL_20:
    v16 = 0;
    goto LABEL_22;
  }

  v16 = [v12 firstObject];
LABEL_22:

  return v16;
}

+ (BOOL)deleteEntryWithUniqueIdentifier:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[MADSystemDataStore systemDataStore];
  v7 = +[MADManagedSpotlightEntry fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  v9 = [objc_opt_class() uniqueIdentifierColumnName];
  v10 = [v8 predicateWithFormat:@"%K == %@", v9, v5];
  [v7 setPredicate:v10];

  v11 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v7];
  v12 = [v6 managedObjectContext];
  v16 = 0;
  v13 = [v12 executeRequest:v11 error:&v16];
  v14 = v16;

  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to remove entry (%@)", buf, 0xCu);
    }

    if (a4)
    {
      *a4 = [v14 copy];
    }
  }

  return v14 == 0;
}

+ (unint64_t)countForMediaType:(unint64_t)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = +[MADSystemDataStore systemDataStore];
  v7 = +[MADManagedSpotlightEntry fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  v9 = [objc_opt_class() mediaTypeColumnName];
  v10 = [objc_opt_class() nextAttemptDateColumnName];
  v11 = [MEMORY[0x1E695DF00] now];
  v12 = [v8 predicateWithFormat:@"(%K == %d) AND (%K <= %@)", v9, a3, v10, v11];
  [v7 setPredicate:v12];

  v13 = [v6 managedObjectContext];
  v17 = 0;
  v14 = [v13 countForFetchRequest:v7 error:&v17];
  v15 = v17;

  if (v15)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to fetch count (%@)", buf, 0xCu);
    }

    if (a4)
    {
      *a4 = [v15 copy];
    }
  }

  return v14;
}

@end