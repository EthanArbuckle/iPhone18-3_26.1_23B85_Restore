@interface MapsSuggestionsTriggeringToggle
- (BOOL)state;
- (MapsSuggestionsTriggeringToggle)initWithName:(id)a3 startState:(BOOL)a4 behavior:(unint64_t)a5;
- (NSString)description;
- (id)objectForJSON;
- (void)setState:(BOOL)a3;
@end

@implementation MapsSuggestionsTriggeringToggle

- (id)objectForJSON
{
  v2 = [(MapsSuggestionsTriggeringToggle *)self isTrue];

  return MSg::jsonFor(v2);
}

- (BOOL)state
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(MapsSuggestionsBaseTrigger *)self uniqueName];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Reading state for TriggeringToggle: %@", &v7, 0xCu);
  }

  v5 = atomic_load(&self->_state);
  return v5 & 1;
}

- (MapsSuggestionsTriggeringToggle)initWithName:(id)a3 startState:(BOOL)a4 behavior:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = MapsSuggestionsTriggeringToggle;
  result = [(MapsSuggestionsBaseTrigger *)&v8 initWithName:a3];
  if (result)
  {
    result->_behavior = a5;
    atomic_store(a4, &result->_state);
  }

  return result;
}

- (void)setState:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(MapsSuggestionsBaseTrigger *)self uniqueName];
    *buf = 67109378;
    *&buf[4] = v3;
    *&buf[8] = 2112;
    *&buf[10] = v6;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Setting state %d for TriggeringToggle: %@", buf, 0x12u);
  }

  v7 = [(MapsSuggestionsBaseTrigger *)self dispatchQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__MapsSuggestionsTriggeringToggle_setState___block_invoke;
  v12[3] = &unk_1E81F7D30;
  v12[4] = self;
  v12[5] = &v14;
  v13 = v3;
  v8 = v12;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN3MSg13dispatch_syncIjEET_PU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFS1_vE_block_invoke;
  v21 = &unk_1E81F5E78;
  v22 = v8;
  v23 = v18;
  dispatch_sync(v7, buf);

  _Block_object_dispose(v18, 8);
  behavior = self->_behavior;
  if (((behavior & 4) != 0 || (v15[3] & 1) == 0) && ((behavior & 1) != 0 && v3 || (behavior & 2) != 0 && !v3))
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(MapsSuggestionsBaseTrigger *)self uniqueName];
      *buf = 138412290;
      *&buf[4] = v11;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "Triggering observers for TriggeringToggle: %@", buf, 0xCu);
    }

    [(MapsSuggestionsBaseTrigger *)self triggerMyObservers];
  }

  _Block_object_dispose(&v14, 8);
}

uint64_t __44__MapsSuggestionsTriggeringToggle_setState___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = atomic_load((*(a1 + 32) + 40));
  *(*(*(a1 + 40) + 8) + 24) = *(a1 + 48) == (v2 & 1);
  atomic_store(*(a1 + 48), (*(a1 + 32) + 40));
  add = atomic_fetch_add((*(a1 + 32) + 44), 1u);
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) uniqueName];
    v8[0] = 67109378;
    v8[1] = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Set state %d for TriggeringToggle: %@", v8, 0x12u);
  }

  return add + 1;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(MapsSuggestionsBaseTrigger *)self uniqueName];
  v5 = [(MapsSuggestionsTriggeringToggle *)self state];
  v6 = [(MapsSuggestionsTriggeringToggle *)self timesUpdated];
  v7 = "NO";
  if (v5)
  {
    v7 = "YES";
  }

  v8 = [v3 initWithFormat:@"%@ state=%s (%u updates)", v4, v7, v6];

  return v8;
}

@end