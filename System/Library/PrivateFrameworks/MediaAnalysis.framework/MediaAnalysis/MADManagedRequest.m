@interface MADManagedRequest
+ (BOOL)removeRequest:(id)a3 error:(id *)a4;
+ (id)entryWithRequestID:(id)a3 bundleIdentifier:(id)a4 sourceIdentifier:(id)a5 assetIdentifier:(id)a6 assetURL:(id)a7 assetURLExtension:(id)a8 resultDirectoryURL:(id)a9 resultDirectoryURLExtension:(id)a10 request:(id)a11 error:(id *)a12;
+ (id)fetchTaskScheduleWithPredicate:(id)a3 error:(id *)a4;
- (id)description;
@end

@implementation MADManagedRequest

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@", v5];

  v6 = [objc_opt_class() requestIDColumnName];
  v7 = [(MADManagedRequest *)self requestID];
  [v3 appendFormat:@", %@: %@, ", v6, v7];

  v8 = [objc_opt_class() requestDateColumnName];
  v9 = [(MADManagedRequest *)self requestDate];
  [v3 appendFormat:@", %@: %@, ", v8, v9];

  v10 = [(MADManagedRequest *)self bundleIdentifier];
  [v3 appendFormat:@", bundle: %@, ", v10];

  v11 = [(MADManagedRequest *)self assetIdentifier];
  v12 = [(MADManagedRequest *)self sourceIdentifier];
  v13 = [(MADManagedRequest *)self assetURL];
  [v3 appendFormat:@", asset: id-%@, source-%@, url-%@, ", v11, v12, v13];

  v14 = [objc_opt_class() resultDirectoryURLColumnName];
  v15 = [(MADManagedRequest *)self resultDirectoryURL];
  [v3 appendFormat:@", %@: %@, ", v14, v15];

  v16 = [objc_opt_class() statusColumnName];
  [v3 appendFormat:@", %@: %d, ", v16, -[MADManagedRequest status](self, "status")];

  v17 = [objc_opt_class() attemptsColumnName];
  [v3 appendFormat:@", %@: %d, ", v17, -[MADManagedRequest attempts](self, "attempts")];

  v18 = [objc_opt_class() previousAttemptDateColumnName];
  v19 = [(MADManagedRequest *)self previousAttemptDate];
  [v3 appendFormat:@", %@: %@, ", v18, v19];

  v20 = [objc_opt_class() nextAttemptDateColumnName];
  v21 = [(MADManagedRequest *)self nextAttemptDate];
  [v3 appendFormat:@", %@: %@, ", v20, v21];

  [v3 appendFormat:@">"];

  return v3;
}

+ (id)entryWithRequestID:(id)a3 bundleIdentifier:(id)a4 sourceIdentifier:(id)a5 assetIdentifier:(id)a6 assetURL:(id)a7 assetURLExtension:(id)a8 resultDirectoryURL:(id)a9 resultDirectoryURLExtension:(id)a10 request:(id)a11 error:(id *)a12
{
  v60 = *MEMORY[0x1E69E9840];
  v44 = a3;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  v52 = a7;
  v45 = a8;
  v46 = a9;
  v47 = a10;
  v18 = a11;
  v48 = +[MADSystemDataStore systemDataStore];
  v19 = [objc_opt_class() description];
  v20 = MEMORY[0x1E696AE18];
  v21 = [objc_opt_class() bundleIdentifierColumnName];
  v22 = [objc_opt_class() sourceIdentifierColumnName];
  v23 = [objc_opt_class() assetIdentifierColumnName];
  v24 = [objc_opt_class() assetURLColumnName];
  v25 = [objc_opt_class() requestTypeColumnName];
  v26 = [v20 predicateWithFormat:@"%K = %@ AND %K = %@ AND %K = %@ AND %K = %@ AND %K = %@", v21, v49, v22, v50, v23, v51, v24, v52, v25, v19];

  v55 = 0;
  v27 = [a1 fetchTaskScheduleWithPredicate:v26 error:&v55];
  v28 = v55;
  v29 = [v27 firstObject];

  if (!v28)
  {
    v43 = [v48 managedObjectContext];
    if (v29)
    {
      v32 = v29;
    }

    else
    {
      v32 = [[MADManagedRequest alloc] initWithContext:v43];
      if (!v32)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v57 = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to allocate new entry (%@)", buf, 0xCu);
        }

        if (a12)
        {
          v37 = [0 copy];
          v32 = 0;
          v28 = 0;
          goto LABEL_37;
        }

        v32 = 0;
        v28 = 0;
LABEL_39:
        v31 = 0;
        goto LABEL_40;
      }
    }

    [(MADManagedRequest *)v32 setRequestID:v44];
    v33 = [MEMORY[0x1E695DF00] now];
    [(MADManagedRequest *)v32 setRequestDate:v33];

    [(MADManagedRequest *)v32 setAssetIdentifier:v51];
    [(MADManagedRequest *)v32 setSourceIdentifier:v50];
    [(MADManagedRequest *)v32 setAssetURL:v52];
    [(MADManagedRequest *)v32 setAssetURLExtension:v45];
    [(MADManagedRequest *)v32 setResultDirectoryURL:v46];
    [(MADManagedRequest *)v32 setResultDirectoryURLExtension:v47];
    [(MADManagedRequest *)v32 setBundleIdentifier:v49];
    [(MADManagedRequest *)v32 setStatus:0];
    [(MADManagedRequest *)v32 setAttempts:0];
    v34 = [MEMORY[0x1E695DF00] distantPast];
    [(MADManagedRequest *)v32 setPreviousAttemptDate:v34];

    v35 = [MEMORY[0x1E695DF00] now];
    [(MADManagedRequest *)v32 setNextAttemptDate:v35];

    [(MADManagedRequest *)v32 setRequestType:v19];
    v54 = 0;
    v36 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v54];
    v28 = v54;
    [(MADManagedRequest *)v32 setRequestData:v36];

    if (v28)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v57 = v28;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to parse request (%@)", buf, 0xCu);
      }

      if (a12)
      {
        v37 = [(MADManagedRequest *)v28 copy];
LABEL_37:
        v31 = 0;
        *a12 = v37;
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (v29)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v57 = v29;
        v58 = 2112;
        v59 = v32;
        v38 = MEMORY[0x1E69E9C10];
        v39 = "[MADSystemDataStore] Updating existing entry %@ to %@";
        v40 = 22;
LABEL_29:
        _os_log_impl(&dword_1C9B70000, v38, OS_LOG_TYPE_DEBUG, v39, buf, v40);
      }
    }

    else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v57 = v32;
      v38 = MEMORY[0x1E69E9C10];
      v39 = "[MADSystemDataStore] Adding new entry - %@";
      v40 = 12;
      goto LABEL_29;
    }

    v53 = 0;
    v41 = [v48 commitChangesOrRollback:&v53];
    v28 = v53;
    if (v41)
    {
      v32 = v32;
      v31 = v32;
LABEL_40:

      goto LABEL_41;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v57 = v28;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to register asset (%@)", buf, 0xCu);
    }

    if (a12)
    {
      v37 = [(MADManagedRequest *)v28 copy];
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = *a12;
    *buf = 138412290;
    v57 = v30;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to fetch entry (%@)", buf, 0xCu);
  }

  v31 = 0;
  if (a12)
  {
    *a12 = [(MADManagedRequest *)v28 copy];
  }

LABEL_41:

  return v31;
}

+ (id)fetchTaskScheduleWithPredicate:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[MADSystemDataStore systemDataStore];
  v7 = +[MADManagedRequest fetchRequest];
  v8 = v7;
  if (v5)
  {
    [v7 setPredicate:v5];
  }

  v9 = [v6 managedObjectContext];
  v13 = 0;
  v10 = [v9 executeFetchRequest:v8 error:&v13];
  v11 = v13;

  if (v11)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedTaskSchedule] Failed to fetch processing status - %@", buf, 0xCu);
    }

    if (a4)
    {
      *a4 = [v11 copy];
    }
  }

  return v10;
}

+ (BOOL)removeRequest:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[MADSystemDataStore systemDataStore];
  v7 = +[MADManagedRequest fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  v9 = [objc_opt_class() requestIDColumnName];
  v10 = [v8 predicateWithFormat:@"%K == %@", v9, v5];
  [v7 setPredicate:v10];

  v11 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v7];
  v12 = [v6 managedObjectContext];
  v20 = 0;
  v13 = [v12 executeRequest:v11 error:&v20];
  v14 = v20;

  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedRequest][removeRequest] Failed to remove entry (%@)", buf, 0xCu);
    }

    if (a4)
    {
      v15 = [v14 copy];
LABEL_17:
      v17 = 0;
      *a4 = v15;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v19 = 0;
  v16 = [v6 commitChangesOrRollback:&v19];
  v14 = v19;
  if ((v16 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedRequest][removeRequest] Failed to commit changes (%@)", buf, 0xCu);
    }

    if (a4)
    {
      v15 = [v14 copy];
      goto LABEL_17;
    }

LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v22 = v5;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedRequest][removeRequest] Removed request %@ - %@", buf, 0x16u);
  }

  v17 = 1;
LABEL_19:

  return v17;
}

@end