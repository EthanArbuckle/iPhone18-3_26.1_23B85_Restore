@interface MapsSuggestionsRoutineShortcutSuggestor
- (MapsSuggestionsRoutineShortcutSuggestor)initWithRoutine:(id)a3;
- (char)suggestShortcutsOfType:(int64_t)a3 handler:(id)a4;
- (id)initFromResourceDepot:(id)a3;
@end

@implementation MapsSuggestionsRoutineShortcutSuggestor

- (MapsSuggestionsRoutineShortcutSuggestor)initWithRoutine:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = MapsSuggestionsRoutineShortcutSuggestor;
    v6 = [(MapsSuggestionsRoutineShortcutSuggestor *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_routine, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutineShortcutSuggestor.mm";
      v14 = 1024;
      v15 = 31;
      v16 = 2082;
      v17 = "[MapsSuggestionsRoutineShortcutSuggestor initWithRoutine:]";
      v18 = 2082;
      v19 = "nil == (routine)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an instance of MapsSuggestionsRoutine.", buf, 0x26u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)initFromResourceDepot:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutineShortcutSuggestor.mm";
      v13 = 1024;
      v14 = 42;
      v15 = 2082;
      v16 = "[MapsSuggestionsRoutineShortcutSuggestor initFromResourceDepot:]";
      v17 = 2082;
      v18 = "nil == (resourceDepot)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to build from!", &v11, 0x26u);
    }

    goto LABEL_9;
  }

  v6 = [v4 oneRoutine];

  if (!v6)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutineShortcutSuggestor.mm";
      v13 = 1024;
      v14 = 43;
      v15 = 2082;
      v16 = "[MapsSuggestionsRoutineShortcutSuggestor initFromResourceDepot:]";
      v17 = 2082;
      v18 = "nil == (resourceDepot.oneRoutine)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires One Routine!", &v11, 0x26u);
    }

LABEL_9:

    v8 = 0;
    goto LABEL_10;
  }

  v7 = [v5 oneRoutine];
  self = [(MapsSuggestionsRoutineShortcutSuggestor *)self initWithRoutine:v7];

  v8 = self;
LABEL_10:

  return v8;
}

- (char)suggestShortcutsOfType:(int64_t)a3 handler:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromMapsSuggestionsShortcutType(a3);
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "suggestShortcutsOfType:%@", &v15, 0xCu);
    }

    if (+[MapsSuggestionsSiri isEnabled])
    {
      routine = self->_routine;
      if (_minVisitsForProposedShortcuts(void)::s_onceToken != -1)
      {
        [MapsSuggestionsRoutineShortcutSuggestor suggestShortcutsOfType:handler:];
      }

      v10 = _minVisitsForProposedShortcuts(void)::s_value;
      if (_maxAgeForProposedShortcuts(void)::s_onceToken != -1)
      {
        [MapsSuggestionsRoutineShortcutSuggestor suggestShortcutsOfType:handler:];
      }

      v11 = [(MapsSuggestionsRoutine *)routine fetchSuggestedShortcutsForType:a3 minVisits:v10 maxAge:v6 handler:*&_maxAgeForProposedShortcuts(void)::s_value];
    }

    else
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "Siri Suggestions for Maps disabled", &v15, 2u);
      }

      (*(v6 + 2))(v6, MEMORY[0x1E695E0F0], 0);
      v11 = 1;
    }
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutineShortcutSuggestor.mm";
      v17 = 1024;
      v18 = 71;
      v19 = 2082;
      v20 = "[MapsSuggestionsRoutineShortcutSuggestor suggestShortcutsOfType:handler:]";
      v21 = 2082;
      v22 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", &v15, 0x26u);
    }

    v11 = 0;
  }

  return v11;
}

@end