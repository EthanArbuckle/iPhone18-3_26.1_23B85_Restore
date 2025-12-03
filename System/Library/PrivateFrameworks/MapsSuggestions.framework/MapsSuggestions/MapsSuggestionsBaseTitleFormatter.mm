@interface MapsSuggestionsBaseTitleFormatter
- (BOOL)resetTitlesForEntry:(id)entry;
- (NSString)uniqueName;
- (uint64_t)updateMyChangedTitlesForEntry:(void *)entry title:(void *)title subtitle:(int)subtitle includeLockedVersions:;
@end

@implementation MapsSuggestionsBaseTitleFormatter

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)resetTitlesForEntry:(id)entry
{
  entryCopy = entry;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "resetTitlesForEntry", v10, 2u);
  }

  undecoratedTitle = [entryCopy undecoratedTitle];
  undecoratedSubtitle = [entryCopy undecoratedSubtitle];
  v8 = [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:entryCopy title:undecoratedTitle subtitle:undecoratedSubtitle includeLockedVersions:1];

  return v8;
}

- (uint64_t)updateMyChangedTitlesForEntry:(void *)entry title:(void *)title subtitle:(int)subtitle includeLockedVersions:
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a2;
  entryCopy = entry;
  titleCopy = title;
  if (!self)
  {
    goto LABEL_20;
  }

  if (v9)
  {
    if (entryCopy && ([v9 title], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(entryCopy, "isEqualToString:", v12), v12, (v13 & 1) == 0))
    {
      [v9 setTitle:entryCopy];
      self = 1;
      if (!titleCopy)
      {
        goto LABEL_13;
      }
    }

    else
    {
      self = 0;
      if (!titleCopy)
      {
LABEL_13:
        if (subtitle)
        {
          if (entryCopy)
          {
            titleWhenLocked = [v9 titleWhenLocked];
            v18 = [entryCopy isEqualToString:titleWhenLocked];

            if ((v18 & 1) == 0)
            {
              [v9 setTitleWhenLocked:entryCopy];
              self = 1;
            }
          }

          if (titleCopy)
          {
            subtitleWhenLocked = [v9 subtitleWhenLocked];
            v20 = [titleCopy isEqualToString:subtitleWhenLocked];

            if ((v20 & 1) == 0)
            {
              [v9 setSubtitleWhenLocked:titleCopy];
              self = 1;
            }
          }
        }

        goto LABEL_20;
      }
    }

    subtitle = [v9 subtitle];
    v16 = [titleCopy isEqualToString:subtitle];

    if ((v16 & 1) == 0)
    {
      [v9 setSubtitle:titleCopy];
      self = 1;
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

  self = 0;
LABEL_20:

  return self;
}

@end