@interface MapsSuggestionsBaseTitleFormatter
- (BOOL)resetTitlesForEntry:(id)a3;
- (NSString)uniqueName;
- (uint64_t)updateMyChangedTitlesForEntry:(void *)a3 title:(void *)a4 subtitle:(int)a5 includeLockedVersions:;
@end

@implementation MapsSuggestionsBaseTitleFormatter

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)resetTitlesForEntry:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "resetTitlesForEntry", v10, 2u);
  }

  v6 = [v4 undecoratedTitle];
  v7 = [v4 undecoratedSubtitle];
  v8 = [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:v4 title:v6 subtitle:v7 includeLockedVersions:1];

  return v8;
}

- (uint64_t)updateMyChangedTitlesForEntry:(void *)a3 title:(void *)a4 subtitle:(int)a5 includeLockedVersions:
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (!a1)
  {
    goto LABEL_20;
  }

  if (v9)
  {
    if (v10 && ([v9 title], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v10, "isEqualToString:", v12), v12, (v13 & 1) == 0))
    {
      [v9 setTitle:v10];
      a1 = 1;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      a1 = 0;
      if (!v11)
      {
LABEL_13:
        if (a5)
        {
          if (v10)
          {
            v17 = [v9 titleWhenLocked];
            v18 = [v10 isEqualToString:v17];

            if ((v18 & 1) == 0)
            {
              [v9 setTitleWhenLocked:v10];
              a1 = 1;
            }
          }

          if (v11)
          {
            v19 = [v9 subtitleWhenLocked];
            v20 = [v11 isEqualToString:v19];

            if ((v20 & 1) == 0)
            {
              [v9 setSubtitleWhenLocked:v11];
              a1 = 1;
            }
          }
        }

        goto LABEL_20;
      }
    }

    v15 = [v9 subtitle];
    v16 = [v11 isEqualToString:v15];

    if ((v16 & 1) == 0)
    {
      [v9 setSubtitle:v11];
      a1 = 1;
    }

    goto LABEL_13;
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v22 = 136446978;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBaseTitleFormatter.m";
    v24 = 1024;
    v25 = 51;
    v26 = 2082;
    v27 = "[MapsSuggestionsBaseTitleFormatter updateMyChangedTitlesForEntry:title:subtitle:includeLockedVersions:]";
    v28 = 2082;
    v29 = "nil == (entry)";
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", &v22, 0x26u);
  }

  a1 = 0;
LABEL_20:

  return a1;
}

@end