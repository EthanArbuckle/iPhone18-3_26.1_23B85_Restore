@interface MapsSuggestionsCache
+ (BOOL)loadFromFilePath:(id)a3 storage:(id *)a4 ETAValidUntilDate:(id *)a5;
+ (BOOL)saveToFilePath:(id)a3 storage:(id)a4 ETAValidUntilDate:(id)a5;
@end

@implementation MapsSuggestionsCache

+ (BOOL)loadFromFilePath:(id)a3 storage:(id *)a4 ETAValidUntilDate:(id *)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
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

  if (!a4)
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

  if (a5)
  {
    v30 = 0;
    v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v7 options:0 error:&v30];
    v9 = v30;
    if (!v8)
    {
      v25 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = [v9 localizedDescription];
        *buf = 138412290;
        v32 = v26;
        _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_DEBUG, "Error parsing file. %@", buf, 0xCu);
      }

      v14 = [v9 localizedDescription];
      printf("Error parsing file. %s", [v14 UTF8String]);
      v23 = 0;
      goto LABEL_28;
    }

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v10 initWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
    v15 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v8 error:0];
    v16 = [v15 decodeIntegerForKey:@"MapsSuggestionsCacheVersionKey"];
    *a4 = [v15 decodeObjectOfClasses:v14 forKey:@"MapsSuggestionsCacheStorageKey"];
    *a5 = [v15 decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsCacheETAValidUntilKey"];
    [v15 finishDecoding];
    v17 = [v15 error];

    if (v17)
    {
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = [v15 error];
        *buf = 138412546;
        v32 = v7;
        v33 = 2112;
        *v34 = v19;
        _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_DEBUG, "%@ failed with error: %@", buf, 0x16u);
      }

      v20 = [v7 UTF8String];
      v21 = [v15 error];
      v22 = [v21 description];
      printf("%s failed with exception: %s", v20, [v22 UTF8String]);
    }

    else
    {
      if (v16 != 19)
      {
        v27 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v32 = v7;
          v33 = 1024;
          *v34 = v16;
          *&v34[4] = 1024;
          *&v34[6] = 19;
          _os_log_impl(&dword_1C5126000, v27, OS_LOG_TYPE_ERROR, "%@ was of version %u instead of %u.", buf, 0x18u);
        }

        v23 = 0;
        *a4 = 0;
        *a5 = 0;
        goto LABEL_27;
      }

      if (*a4)
      {
        v23 = 1;
        goto LABEL_27;
      }

      v29 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v7;
        _os_log_impl(&dword_1C5126000, v29, OS_LOG_TYPE_DEBUG, "%@ returned nil storage.", buf, 0xCu);
      }

      printf("%s returned nil storage.", [v7 UTF8String]);
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

+ (BOOL)saveToFilePath:(id)a3 storage:(id)a4 ETAValidUntilDate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v10 encodeInteger:19 forKey:@"MapsSuggestionsCacheVersionKey"];
  [v10 encodeObject:v8 forKey:@"MapsSuggestionsCacheStorageKey"];
  [v10 encodeObject:v9 forKey:@"MapsSuggestionsCacheETAValidUntilKey"];
  v11 = [v10 encodedData];
  v12 = [v11 writeToFile:v7 atomically:0];

  return v12;
}

@end