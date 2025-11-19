@interface MapsSuggestionsDOoMWrapper
- (MapsSuggestionsDOoMWrapper)initWithResourceDepot:(id)a3 triggers:(id)a4 conditions:(id)a5 engine:(id)a6;
- (MapsSuggestionsDOoMWrapperNotificationDelegate)notificationDelegate;
- (void)commuteWindowUpdated;
- (void)doomNotificationReadyWith:(id)a3 forLOI:(id)a4;
@end

@implementation MapsSuggestionsDOoMWrapper

- (MapsSuggestionsDOoMWrapper)initWithResourceDepot:(id)a3 triggers:(id)a4 conditions:(id)a5 engine:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = MapsSuggestionsDOoMWrapper;
  v14 = [(MapsSuggestionsDOoMWrapper *)&v22 init];
  if (v14)
  {
    v15 = [_TtC15MapsSuggestions19MapsSuggestionsDOoM alloc];
    v16 = [v13 doomEngine];
    v17 = [(MapsSuggestionsDOoM *)v15 initWithResourceDepot:v10 triggers:v11 conditions:v12 engine:v16];
    doom = v14->_doom;
    v14->_doom = v17;

    [(MapsSuggestionsDOoM *)v14->_doom setNotificationDelegate:v14];
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = v14->_doom;
      *buf = 138412290;
      v24 = v20;
      _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_DEBUG, "Instantiated MSgDOoM: %@", buf, 0xCu);
    }
  }

  return v14;
}

- (void)doomNotificationReadyWith:(id)a3 forLOI:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MapsSuggestionsDOoMWrapper *)self notificationDelegate];
  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      [v8 doomNotificationReceivedWithDetails:v6 forLOI:v7];
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsDOoMWrapper.m";
      v12 = 1026;
      v13 = 107;
      v14 = 2082;
      v15 = "[MapsSuggestionsDOoMWrapper doomNotificationReadyWith:forLOI:]";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongDelegate went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

- (void)commuteWindowUpdated
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [(MapsSuggestionsDOoMWrapper *)self notificationDelegate];
  if (v2)
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 commuteWindowUpdated];
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsDOoMWrapper.m";
      v6 = 1026;
      v7 = 117;
      v8 = 2082;
      v9 = "[MapsSuggestionsDOoMWrapper commuteWindowUpdated]";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongDelegate went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (MapsSuggestionsDOoMWrapperNotificationDelegate)notificationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationDelegate);

  return WeakRetained;
}

@end