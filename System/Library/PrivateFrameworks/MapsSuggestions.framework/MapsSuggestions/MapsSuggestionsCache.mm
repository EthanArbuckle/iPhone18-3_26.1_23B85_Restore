@interface MapsSuggestionsCache
+ (BOOL)loadFromFilePath:(id)path storage:(id *)storage ETAValidUntilDate:(id *)date;
+ (BOOL)saveToFilePath:(id)path storage:(id)storage ETAValidUntilDate:(id)date;
@end

@implementation MapsSuggestionsCache

+ (BOOL)loadFromFilePath:(id)path storage:(id *)storage ETAValidUntilDate:(id *)date
{
  v37 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136446978;
    v32 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCache.m";
    v33 = 1024;
    *v34 = 161;
    *&v34[4] = 2082;
    *&v34[6] = "+[MapsSuggestionsCache loadFromFilePath:storage:ETAValidUntilDate:]";
    v35 = 2082;
    v36 = "nil == (path)";
    v24 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires path";
LABEL_16:
    _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, v24, buf, 0x26u);
    goto LABEL_17;
  }

  if (!storage)
  {
    v9 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136446978;
    v32 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCache.m";
    v33 = 1024;
    *v34 = 162;
    *&v34[4] = 2082;
    *&v34[6] = "+[MapsSuggestionsCache loadFromFilePath:storage:ETAValidUntilDate:]";
    v35 = 2082;
    v36 = "NULL == storage";
    v24 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires out parameter for storage";
    goto LABEL_16;
  }

  if (date)
  {
    v30 = 0;
    v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:pathCopy options:0 error:&v30];
    v9 = v30;
    if (!v8)
    {
      v25 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        localizedDescription = [v9 localizedDescription];
        *buf = 138412290;
        v32 = localizedDescription;
        _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_DEBUG, "Error parsing file. %@", buf, 0xCu);
      }

      localizedDescription2 = [v9 localizedDescription];
      printf("Error parsing file. %s", [localizedDescription2 UTF8String]);
      v23 = 0;
      goto LABEL_28;
    }

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    localizedDescription2 = [v10 initWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
    v15 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v8 error:0];
    v16 = [v15 decodeIntegerForKey:@"MapsSuggestionsCacheVersionKey"];
    *storage = [v15 decodeObjectOfClasses:localizedDescription2 forKey:@"MapsSuggestionsCacheStorageKey"];
    *date = [v15 decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsCacheETAValidUntilKey"];
    [v15 finishDecoding];
    error = [v15 error];

    if (error)
    {
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        error2 = [v15 error];
        *buf = 138412546;
        v32 = pathCopy;
        v33 = 2112;
        *v34 = error2;
        _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_DEBUG, "%@ failed with error: %@", buf, 0x16u);
      }

      uTF8String = [pathCopy UTF8String];
      error3 = [v15 error];
      v22 = [error3 description];
      printf("%s failed with exception: %s", uTF8String, [v22 UTF8String]);
    }

    else
    {
      if (v16 != 19)
      {
        v27 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v32 = pathCopy;
          v33 = 1024;
          *v34 = v16;
          *&v34[4] = 1024;
          *&v34[6] = 19;
          _os_log_impl(&dword_1C5126000, v27, OS_LOG_TYPE_ERROR, "%@ was of version %u instead of %u.", buf, 0x18u);
        }

        v23 = 0;
        *storage = 0;
        *date = 0;
        goto LABEL_27;
      }

      if (*storage)
      {
        v23 = 1;
        goto LABEL_27;
      }

      v29 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = pathCopy;
        _os_log_impl(&dword_1C5126000, v29, OS_LOG_TYPE_DEBUG, "%@ returned nil storage.", buf, 0xCu);
      }

      printf("%s returned nil storage.", [pathCopy UTF8String]);
    }

    v23 = 0;
LABEL_27:

LABEL_28:
    goto LABEL_29;
  }

  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v32 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCache.m";
    v33 = 1024;
    *v34 = 163;
    *&v34[4] = 2082;
    *&v34[6] = "+[MapsSuggestionsCache loadFromFilePath:storage:ETAValidUntilDate:]";
    v35 = 2082;
    v36 = "NULL == date";
    v24 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires out parameter for date";
    goto LABEL_16;
  }

LABEL_17:
  v23 = 0;
LABEL_29:

  return v23;
}

+ (BOOL)saveToFilePath:(id)path storage:(id)storage ETAValidUntilDate:(id)date
{
  pathCopy = path;
  storageCopy = storage;
  dateCopy = date;
  v10 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v10 encodeInteger:19 forKey:@"MapsSuggestionsCacheVersionKey"];
  [v10 encodeObject:storageCopy forKey:@"MapsSuggestionsCacheStorageKey"];
  [v10 encodeObject:dateCopy forKey:@"MapsSuggestionsCacheETAValidUntilKey"];
  encodedData = [v10 encodedData];
  v12 = [encodedData writeToFile:pathCopy atomically:0];

  return v12;
}

@end