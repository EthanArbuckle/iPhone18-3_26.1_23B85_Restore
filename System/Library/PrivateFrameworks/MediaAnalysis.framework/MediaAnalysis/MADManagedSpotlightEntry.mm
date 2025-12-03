@interface MADManagedSpotlightEntry
+ (BOOL)deleteEntryWithUniqueIdentifier:(id)identifier error:(id *)error;
+ (id)entryWithURL:(id)l uniqueIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier typeIdentifier:(id)typeIdentifier sandboxToken:(id)token mediaType:(unint64_t)type error:(id *)error;
+ (id)fetchEntriesWithMediaType:(unint64_t)type fetchLimit:(unint64_t)limit error:(id *)error;
+ (id)fetchEntryWithUniqueIdentifier:(id)identifier error:(id *)error;
+ (unint64_t)countForMediaType:(unint64_t)type error:(id *)error;
- (id)description;
@end

@implementation MADManagedSpotlightEntry

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  urlColumnName = [objc_opt_class() urlColumnName];
  v7 = [(MADManagedSpotlightEntry *)self url];
  [string appendFormat:@"%@: %@, ", urlColumnName, v7];

  uniqueIdentifierColumnName = [objc_opt_class() uniqueIdentifierColumnName];
  uniqueIdentifier = [(MADManagedSpotlightEntry *)self uniqueIdentifier];
  [string appendFormat:@"%@: %@, ", uniqueIdentifierColumnName, uniqueIdentifier];

  bundleIdentifierColumnName = [objc_opt_class() bundleIdentifierColumnName];
  bundleIdentifier = [(MADManagedSpotlightEntry *)self bundleIdentifier];
  [string appendFormat:@"%@: %@, ", bundleIdentifierColumnName, bundleIdentifier];

  typeIdentifierColumnName = [objc_opt_class() typeIdentifierColumnName];
  typeIdentifier = [(MADManagedSpotlightEntry *)self typeIdentifier];
  [string appendFormat:@"%@: %@, ", typeIdentifierColumnName, typeIdentifier];

  sandboxTokenColumnName = [objc_opt_class() sandboxTokenColumnName];
  sandboxToken = [(MADManagedSpotlightEntry *)self sandboxToken];
  [string appendFormat:@"%@: %@, ", sandboxTokenColumnName, sandboxToken];

  mediaTypeColumnName = [objc_opt_class() mediaTypeColumnName];
  [string appendFormat:@"%@: %d, ", mediaTypeColumnName, -[MADManagedSpotlightEntry mediaType](self, "mediaType")];

  attemptCountColumnName = [objc_opt_class() attemptCountColumnName];
  [string appendFormat:@"%@: %d, ", attemptCountColumnName, -[MADManagedSpotlightEntry attemptCount](self, "attemptCount")];

  nextAttemptDateColumnName = [objc_opt_class() nextAttemptDateColumnName];
  nextAttemptDate = [(MADManagedSpotlightEntry *)self nextAttemptDate];
  [string appendFormat:@"%@: %@, ", nextAttemptDateColumnName, nextAttemptDate];

  statusColumnName = [objc_opt_class() statusColumnName];
  [string appendFormat:@"%@: %d>", statusColumnName, -[MADManagedSpotlightEntry status](self, "status")];

  return string;
}

+ (id)entryWithURL:(id)l uniqueIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier typeIdentifier:(id)typeIdentifier sandboxToken:(id)token mediaType:(unint64_t)type error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  typeIdentifierCopy = typeIdentifier;
  tokenCopy = token;
  v18 = +[MADSystemDataStore systemDataStore];
  v38 = 0;
  v19 = [self fetchEntryWithUniqueIdentifier:identifierCopy error:&v38];
  v20 = v38;
  if (v20)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = *error;
      *buf = 138412290;
      v40 = v21;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to fetch entry (%@)", buf, 0xCu);
    }

    v22 = 0;
    if (error)
    {
      *error = [v20 copy];
    }

    goto LABEL_32;
  }

  if (!v19)
  {
    v23 = [MADManagedSpotlightEntry alloc];
    managedObjectContext = [v18 managedObjectContext];
    v25 = [(MADManagedSpotlightEntry *)v23 initWithContext:managedObjectContext];

    [(MADManagedSpotlightEntry *)v25 setUrl:lCopy];
    [(MADManagedSpotlightEntry *)v25 setUniqueIdentifier:identifierCopy];
    [(MADManagedSpotlightEntry *)v25 setBundleIdentifier:bundleIdentifierCopy];
    [(MADManagedSpotlightEntry *)v25 setTypeIdentifier:typeIdentifierCopy];
    [(MADManagedSpotlightEntry *)v25 setSandboxToken:tokenCopy];
    [(MADManagedSpotlightEntry *)v25 setMediaType:type];
    [(MADManagedSpotlightEntry *)v25 setStatus:0];
    [(MADManagedSpotlightEntry *)v25 setAttemptCount:0];
    v26 = [MEMORY[0x1E695DF00] now];
    [(MADManagedSpotlightEntry *)v25 setNextAttemptDate:v26];

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v40 = identifierCopy;
      v41 = 2112;
      v42 = bundleIdentifierCopy;
      v43 = 2112;
      v44 = typeIdentifierCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADSystemDataStore][%@] Registering new asset - %@ %@", buf, 0x20u);
    }

    v37 = 0;
    v27 = [v18 commitChangesOrRollbackAndResetContext:&v37];
    v28 = v37;
    v20 = v28;
    if (v27)
    {
      v36 = v28;
      v29 = [self fetchEntryWithUniqueIdentifier:identifierCopy error:&v36];
      v30 = v36;

      v25 = v29;
      v20 = v30;
      if (!error || !v30)
      {
        v25 = v29;
        v22 = v25;
        goto LABEL_31;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v31 = *error;
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

      if (!error)
      {
        v22 = 0;
        goto LABEL_31;
      }

      v32 = [v20 copy];
    }

    v22 = 0;
    *error = v32;
LABEL_31:

    goto LABEL_32;
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v40 = identifierCopy;
    v41 = 2112;
    v42 = bundleIdentifierCopy;
    v43 = 2112;
    v44 = typeIdentifierCopy;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADSystemDataStore][%@] Returning existing entry - %@ %@", buf, 0x20u);
  }

  v22 = v19;
  v20 = 0;
LABEL_32:

  return v22;
}

+ (id)fetchEntriesWithMediaType:(unint64_t)type fetchLimit:(unint64_t)limit error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = +[MADSystemDataStore systemDataStore];
  v9 = +[MADManagedSpotlightEntry fetchRequest];
  v10 = MEMORY[0x1E696AE18];
  mediaTypeColumnName = [objc_opt_class() mediaTypeColumnName];
  nextAttemptDateColumnName = [objc_opt_class() nextAttemptDateColumnName];
  v13 = [MEMORY[0x1E695DF00] now];
  v14 = [v10 predicateWithFormat:@"(%K == %d) AND (%K <= %@)", mediaTypeColumnName, type, nextAttemptDateColumnName, v13];
  [v9 setPredicate:v14];

  if (limit)
  {
    [v9 setFetchLimit:limit];
  }

  managedObjectContext = [v8 managedObjectContext];
  v19 = 0;
  v16 = [managedObjectContext executeFetchRequest:v9 error:&v19];
  v17 = v19;

  if (v17)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v17;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to fetch asset (%@)", buf, 0xCu);
    }

    if (error)
    {
      *error = [v17 copy];
    }
  }

  return v16;
}

+ (id)fetchEntryWithUniqueIdentifier:(id)identifier error:(id *)error
{
  *&v26[5] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v26 = identifierCopy;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADSystemDataStore] Querying with uniqueIdentifier:%@", buf, 0xCu);
  }

  v6 = +[MADSystemDataStore systemDataStore];
  v7 = +[MADManagedSpotlightEntry fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  uniqueIdentifierColumnName = [objc_opt_class() uniqueIdentifierColumnName];
  identifierCopy = [v8 predicateWithFormat:@"%K == %@", uniqueIdentifierColumnName, identifierCopy];
  [v7 setPredicate:identifierCopy];

  managedObjectContext = [v6 managedObjectContext];
  v22 = 0;
  v12 = [managedObjectContext executeFetchRequest:v7 error:&v22];
  v13 = v22;

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v14 = [v12 count];
    firstObject = [v12 firstObject];
    *buf = 67109378;
    v26[0] = v14;
    LOWORD(v26[1]) = 2112;
    *(&v26[1] + 2) = firstObject;
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

    if (error)
    {
      firstObject2 = 0;
      *error = [v13 copy];
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

    if (error)
    {
      v18 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v17];
      v24 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      *error = [v18 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v20];
    }

LABEL_20:
    firstObject2 = 0;
    goto LABEL_22;
  }

  firstObject2 = [v12 firstObject];
LABEL_22:

  return firstObject2;
}

+ (BOOL)deleteEntryWithUniqueIdentifier:(id)identifier error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = +[MADSystemDataStore systemDataStore];
  v7 = +[MADManagedSpotlightEntry fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  uniqueIdentifierColumnName = [objc_opt_class() uniqueIdentifierColumnName];
  identifierCopy = [v8 predicateWithFormat:@"%K == %@", uniqueIdentifierColumnName, identifierCopy];
  [v7 setPredicate:identifierCopy];

  v11 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v7];
  managedObjectContext = [v6 managedObjectContext];
  v16 = 0;
  v13 = [managedObjectContext executeRequest:v11 error:&v16];
  v14 = v16;

  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to remove entry (%@)", buf, 0xCu);
    }

    if (error)
    {
      *error = [v14 copy];
    }
  }

  return v14 == 0;
}

+ (unint64_t)countForMediaType:(unint64_t)type error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = +[MADSystemDataStore systemDataStore];
  v7 = +[MADManagedSpotlightEntry fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  mediaTypeColumnName = [objc_opt_class() mediaTypeColumnName];
  nextAttemptDateColumnName = [objc_opt_class() nextAttemptDateColumnName];
  v11 = [MEMORY[0x1E695DF00] now];
  v12 = [v8 predicateWithFormat:@"(%K == %d) AND (%K <= %@)", mediaTypeColumnName, type, nextAttemptDateColumnName, v11];
  [v7 setPredicate:v12];

  managedObjectContext = [v6 managedObjectContext];
  v17 = 0;
  v14 = [managedObjectContext countForFetchRequest:v7 error:&v17];
  v15 = v17;

  if (v15)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to fetch count (%@)", buf, 0xCu);
    }

    if (error)
    {
      *error = [v15 copy];
    }
  }

  return v14;
}

@end