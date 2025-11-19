@interface MapsSuggestionsRecentHistoryImprover
- (BOOL)improveEntry:(id)a3;
- (id)_titleFromMapItem:(uint64_t)a1;
@end

@implementation MapsSuggestionsRecentHistoryImprover

- (BOOL)improveEntry:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRecentHistoryImprover.m";
      v16 = 1024;
      v17 = 23;
      v18 = 2082;
      v19 = "[MapsSuggestionsRecentHistoryImprover improveEntry:]";
      v20 = 2082;
      v21 = "entry == nil";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry", &v14, 0x26u);
    }

    goto LABEL_7;
  }

  if ([v4 type] != 5)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v6 = [v5 geoMapItem];
  v7 = [(MapsSuggestionsRecentHistoryImprover *)self _titleFromMapItem:v6];
  v8 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedTitle:v7 forEntry:v5];

  v9 = MapsSuggestionsLocalizedRecentlyViewedString();
  v10 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v9 forEntry:v5];

  v11 = v8 | v10;
LABEL_8:

  return v11 & 1;
}

- (id)_titleFromMapItem:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = [v3 eventName];
    v7 = [v6 length];

    if (v7)
    {
      v5 = [v4 eventName];
      goto LABEL_11;
    }

    v8 = MapsSuggestionsMapItemHomeWorkSchoolName(v4);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = [v4 contactName];
      v12 = [v11 length];

      if (v12)
      {
        v10 = [v4 contactName];
      }

      else
      {
        v14 = [v4 name];
        v15 = [v14 length];

        if (v15)
        {
          v16 = [v4 name];
          v18 = 0;
          v19 = &v18;
          v20 = 0x3032000000;
          v21 = __Block_byref_object_copy__12;
          v22 = __Block_byref_object_dispose__12;
          v23 = 0;
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = ___firstLineOfString_block_invoke_0;
          v17[3] = &unk_1E81F6000;
          v17[4] = &v18;
          [v16 enumerateLinesUsingBlock:v17];
          v5 = v19[5];
          _Block_object_dispose(&v18, 8);

          goto LABEL_10;
        }

        v10 = MapsSuggestionsMapItemShortAddress(v4);
      }
    }

    v5 = v10;
LABEL_10:
  }

LABEL_11:

  return v5;
}

@end