@interface MapsSuggestionsDOoMWrapper
- (MapsSuggestionsDOoMWrapper)initWithResourceDepot:(id)depot triggers:(id)triggers conditions:(id)conditions engine:(id)engine;
- (MapsSuggestionsDOoMWrapperNotificationDelegate)notificationDelegate;
- (void)commuteWindowUpdated;
- (void)doomNotificationReadyWith:(id)with forLOI:(id)i;
@end

@implementation MapsSuggestionsDOoMWrapper

- (MapsSuggestionsDOoMWrapper)initWithResourceDepot:(id)depot triggers:(id)triggers conditions:(id)conditions engine:(id)engine
{
  v25 = *MEMORY[0x1E69E9840];
  depotCopy = depot;
  triggersCopy = triggers;
  conditionsCopy = conditions;
  engineCopy = engine;
  v22.receiver = self;
  v22.super_class = MapsSuggestionsDOoMWrapper;
  v14 = [(MapsSuggestionsDOoMWrapper *)&v22 init];
  if (v14)
  {
    v15 = [_TtC15MapsSuggestions19MapsSuggestionsDOoM alloc];
    doomEngine = [engineCopy doomEngine];
    v17 = [(MapsSuggestionsDOoM *)v15 initWithResourceDepot:depotCopy triggers:triggersCopy conditions:conditionsCopy engine:doomEngine];
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

- (void)doomNotificationReadyWith:(id)with forLOI:(id)i
{
  v16 = *MEMORY[0x1E69E9840];
  withCopy = with;
  iCopy = i;
  notificationDelegate = [(MapsSuggestionsDOoMWrapper *)self notificationDelegate];
  if (notificationDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [notificationDelegate doomNotificationReceivedWithDetails:withCopy forLOI:iCopy];
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
  notificationDelegate = [(MapsSuggestionsDOoMWrapper *)self notificationDelegate];
  if (notificationDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [notificationDelegate commuteWindowUpdated];
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