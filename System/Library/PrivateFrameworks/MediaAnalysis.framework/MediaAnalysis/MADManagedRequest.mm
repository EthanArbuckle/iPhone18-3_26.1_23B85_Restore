@interface MADManagedRequest
+ (BOOL)removeRequest:(id)request error:(id *)error;
+ (id)entryWithRequestID:(id)d bundleIdentifier:(id)identifier sourceIdentifier:(id)sourceIdentifier assetIdentifier:(id)assetIdentifier assetURL:(id)l assetURLExtension:(id)extension resultDirectoryURL:(id)rL resultDirectoryURLExtension:(id)self0 request:(id)self1 error:(id *)self2;
+ (id)fetchTaskScheduleWithPredicate:(id)predicate error:(id *)error;
- (id)description;
@end

@implementation MADManagedRequest

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@", v5];

  requestIDColumnName = [objc_opt_class() requestIDColumnName];
  requestID = [(MADManagedRequest *)self requestID];
  [string appendFormat:@", %@: %@, ", requestIDColumnName, requestID];

  requestDateColumnName = [objc_opt_class() requestDateColumnName];
  requestDate = [(MADManagedRequest *)self requestDate];
  [string appendFormat:@", %@: %@, ", requestDateColumnName, requestDate];

  bundleIdentifier = [(MADManagedRequest *)self bundleIdentifier];
  [string appendFormat:@", bundle: %@, ", bundleIdentifier];

  assetIdentifier = [(MADManagedRequest *)self assetIdentifier];
  sourceIdentifier = [(MADManagedRequest *)self sourceIdentifier];
  assetURL = [(MADManagedRequest *)self assetURL];
  [string appendFormat:@", asset: id-%@, source-%@, url-%@, ", assetIdentifier, sourceIdentifier, assetURL];

  resultDirectoryURLColumnName = [objc_opt_class() resultDirectoryURLColumnName];
  resultDirectoryURL = [(MADManagedRequest *)self resultDirectoryURL];
  [string appendFormat:@", %@: %@, ", resultDirectoryURLColumnName, resultDirectoryURL];

  statusColumnName = [objc_opt_class() statusColumnName];
  [string appendFormat:@", %@: %d, ", statusColumnName, -[MADManagedRequest status](self, "status")];

  attemptsColumnName = [objc_opt_class() attemptsColumnName];
  [string appendFormat:@", %@: %d, ", attemptsColumnName, -[MADManagedRequest attempts](self, "attempts")];

  previousAttemptDateColumnName = [objc_opt_class() previousAttemptDateColumnName];
  previousAttemptDate = [(MADManagedRequest *)self previousAttemptDate];
  [string appendFormat:@", %@: %@, ", previousAttemptDateColumnName, previousAttemptDate];

  nextAttemptDateColumnName = [objc_opt_class() nextAttemptDateColumnName];
  nextAttemptDate = [(MADManagedRequest *)self nextAttemptDate];
  [string appendFormat:@", %@: %@, ", nextAttemptDateColumnName, nextAttemptDate];

  [string appendFormat:@">"];

  return string;
}

+ (id)entryWithRequestID:(id)d bundleIdentifier:(id)identifier sourceIdentifier:(id)sourceIdentifier assetIdentifier:(id)assetIdentifier assetURL:(id)l assetURLExtension:(id)extension resultDirectoryURL:(id)rL resultDirectoryURLExtension:(id)self0 request:(id)self1 error:(id *)self2
{
  v60 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  sourceIdentifierCopy = sourceIdentifier;
  assetIdentifierCopy = assetIdentifier;
  lCopy = l;
  extensionCopy = extension;
  rLCopy = rL;
  lExtensionCopy = lExtension;
  requestCopy = request;
  v48 = +[MADSystemDataStore systemDataStore];
  v19 = [objc_opt_class() description];
  v20 = MEMORY[0x1E696AE18];
  bundleIdentifierColumnName = [objc_opt_class() bundleIdentifierColumnName];
  sourceIdentifierColumnName = [objc_opt_class() sourceIdentifierColumnName];
  assetIdentifierColumnName = [objc_opt_class() assetIdentifierColumnName];
  assetURLColumnName = [objc_opt_class() assetURLColumnName];
  requestTypeColumnName = [objc_opt_class() requestTypeColumnName];
  v26 = [v20 predicateWithFormat:@"%K = %@ AND %K = %@ AND %K = %@ AND %K = %@ AND %K = %@", bundleIdentifierColumnName, identifierCopy, sourceIdentifierColumnName, sourceIdentifierCopy, assetIdentifierColumnName, assetIdentifierCopy, assetURLColumnName, lCopy, requestTypeColumnName, v19];

  v55 = 0;
  v27 = [self fetchTaskScheduleWithPredicate:v26 error:&v55];
  v28 = v55;
  firstObject = [v27 firstObject];

  if (!v28)
  {
    managedObjectContext = [v48 managedObjectContext];
    if (firstObject)
    {
      v32 = firstObject;
    }

    else
    {
      v32 = [[MADManagedRequest alloc] initWithContext:managedObjectContext];
      if (!v32)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v57 = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to allocate new entry (%@)", buf, 0xCu);
        }

        if (error)
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

    [(MADManagedRequest *)v32 setRequestID:dCopy];
    v33 = [MEMORY[0x1E695DF00] now];
    [(MADManagedRequest *)v32 setRequestDate:v33];

    [(MADManagedRequest *)v32 setAssetIdentifier:assetIdentifierCopy];
    [(MADManagedRequest *)v32 setSourceIdentifier:sourceIdentifierCopy];
    [(MADManagedRequest *)v32 setAssetURL:lCopy];
    [(MADManagedRequest *)v32 setAssetURLExtension:extensionCopy];
    [(MADManagedRequest *)v32 setResultDirectoryURL:rLCopy];
    [(MADManagedRequest *)v32 setResultDirectoryURLExtension:lExtensionCopy];
    [(MADManagedRequest *)v32 setBundleIdentifier:identifierCopy];
    [(MADManagedRequest *)v32 setStatus:0];
    [(MADManagedRequest *)v32 setAttempts:0];
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    [(MADManagedRequest *)v32 setPreviousAttemptDate:distantPast];

    v35 = [MEMORY[0x1E695DF00] now];
    [(MADManagedRequest *)v32 setNextAttemptDate:v35];

    [(MADManagedRequest *)v32 setRequestType:v19];
    v54 = 0;
    v36 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:requestCopy requiringSecureCoding:1 error:&v54];
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

      if (error)
      {
        v37 = [(MADManagedRequest *)v28 copy];
LABEL_37:
        v31 = 0;
        *error = v37;
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (firstObject)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v57 = firstObject;
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

    if (error)
    {
      v37 = [(MADManagedRequest *)v28 copy];
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = *error;
    *buf = 138412290;
    v57 = v30;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to fetch entry (%@)", buf, 0xCu);
  }

  v31 = 0;
  if (error)
  {
    *error = [(MADManagedRequest *)v28 copy];
  }

LABEL_41:

  return v31;
}

+ (id)fetchTaskScheduleWithPredicate:(id)predicate error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v6 = +[MADSystemDataStore systemDataStore];
  v7 = +[MADManagedRequest fetchRequest];
  v8 = v7;
  if (predicateCopy)
  {
    [v7 setPredicate:predicateCopy];
  }

  managedObjectContext = [v6 managedObjectContext];
  v13 = 0;
  v10 = [managedObjectContext executeFetchRequest:v8 error:&v13];
  v11 = v13;

  if (v11)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedTaskSchedule] Failed to fetch processing status - %@", buf, 0xCu);
    }

    if (error)
    {
      *error = [v11 copy];
    }
  }

  return v10;
}

+ (BOOL)removeRequest:(id)request error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v6 = +[MADSystemDataStore systemDataStore];
  v7 = +[MADManagedRequest fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  requestIDColumnName = [objc_opt_class() requestIDColumnName];
  requestCopy = [v8 predicateWithFormat:@"%K == %@", requestIDColumnName, requestCopy];
  [v7 setPredicate:requestCopy];

  v11 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v7];
  managedObjectContext = [v6 managedObjectContext];
  v20 = 0;
  v13 = [managedObjectContext executeRequest:v11 error:&v20];
  v14 = v20;

  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedRequest][removeRequest] Failed to remove entry (%@)", buf, 0xCu);
    }

    if (error)
    {
      v15 = [v14 copy];
LABEL_17:
      v17 = 0;
      *error = v15;
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

    if (error)
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
    v22 = requestCopy;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedRequest][removeRequest] Removed request %@ - %@", buf, 0x16u);
  }

  v17 = 1;
LABEL_19:

  return v17;
}

@end