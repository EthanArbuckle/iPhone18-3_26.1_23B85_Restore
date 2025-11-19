@interface MapsSuggestionsVirtualGarageImprover
- (BOOL)improveEntry:(id)a3;
@end

@implementation MapsSuggestionsVirtualGarageImprover

- (BOOL)improveEntry:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVirtualGarageImprover.m";
      v21 = 1024;
      v22 = 23;
      v23 = 2082;
      v24 = "[MapsSuggestionsVirtualGarageImprover improveEntry:]";
      v25 = 2082;
      v26 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an Entry", &v19, 0x26u);
    }

    goto LABEL_12;
  }

  if ([v4 type] != 20)
  {
LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  v6 = MapsSuggestionsLocalizedSubtitleForVehicleSetup();
  v7 = [v5 stringForKey:@"MapsSuggestionsVehicleSetupManufacturerKey"];
  v8 = MapsSuggestionsLocalizedTitleFormatForVehicleSetup(v7);
  if (!v7 || ![v7 length])
  {
    v9 = MapsSuggestionsLocalizedBackupTitleFormatForVehicleSetup();

    v8 = v9;
  }

  v10 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedTitle:v8 forEntry:v5];
  v11 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v6 forEntry:v5];
  [v5 weight];
  v13 = v12;
  GEOConfigGetDouble();
  v15 = v14;
  if (v13 != v14)
  {
    [v5 setWeight:0.85];
  }

  v16 = v10 | v11 | (v13 != v15);

LABEL_13:
  return v16 & 1;
}

@end