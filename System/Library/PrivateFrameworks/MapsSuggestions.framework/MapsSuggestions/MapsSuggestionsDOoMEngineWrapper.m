@interface MapsSuggestionsDOoMEngineWrapper
- (MapsSuggestionsDOoMEngineWrapper)initWithResourceDepot:(id)a3 conditions:(id)a4;
- (MapsSuggestionsDOoMEngineWrapperStatusUpdateDelegate)statusUpdateDelegate;
- (void)commuteWindowChangedWithWindow:(id)a3 nextDestination:(id)a4 travelTime:(double)a5 haveBudgetForCommuteRequest:(BOOL)a6 exitTime:(id)a7 routeSet:(id)a8;
- (void)dealloc;
- (void)getCurrentCommuteStatus;
@end

@implementation MapsSuggestionsDOoMEngineWrapper

- (MapsSuggestionsDOoMEngineWrapper)initWithResourceDepot:(id)a3 conditions:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MapsSuggestionsDOoMEngineWrapper;
  v8 = [(MapsSuggestionsDOoMEngineWrapper *)&v14 init];
  if (v8)
  {
    v9 = [[_TtC15MapsSuggestions25MapsSuggestionsDOoMEngine alloc] initWithResourceDepot:v6 conditions:v7];
    doomEngine = v8->_doomEngine;
    v8->_doomEngine = v9;

    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = v8->_doomEngine;
      *buf = 138412290;
      v16 = v12;
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "Instantiated MSgDOoMEngine: %@", buf, 0xCu);
    }
  }

  return v8;
}

- (void)dealloc
{
  if (self->_doomEngine)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Deallocing doomEngineWrapper", buf, 2u);
    }

    [(MapsSuggestionsDOoMEngine *)self->_doomEngine unregisterObserver:self];
  }

  v4.receiver = self;
  v4.super_class = MapsSuggestionsDOoMEngineWrapper;
  [(MapsSuggestionsDOoMEngineWrapper *)&v4 dealloc];
}

- (void)commuteWindowChangedWithWindow:(id)a3 nextDestination:(id)a4 travelTime:(double)a5 haveBudgetForCommuteRequest:(BOOL)a6 exitTime:(id)a7 routeSet:(id)a8
{
  v25 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = [(MapsSuggestionsDOoMEngineWrapper *)self statusUpdateDelegate];
  if (v17)
  {
    if (objc_opt_respondsToSelector())
    {
      [v17 commuteWindowIs:v13 forNextDestination:v14 travelTime:v16 commuteRouteSet:a5];
      [(MapsSuggestionsDOoMEngine *)self->_doomEngine unregisterObserver:self];
    }
  }

  else
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446722;
      v20 = "MapsSuggestionsDOoMWrapper.m";
      v21 = 1026;
      v22 = 57;
      v23 = 2082;
      v24 = "[MapsSuggestionsDOoMEngineWrapper commuteWindowChangedWithWindow:nextDestination:travelTime:haveBudgetForCommuteRequest:exitTime:routeSet:]";
      _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongDelegate went away in %{public}s", &v19, 0x1Cu);
    }
  }
}

- (void)getCurrentCommuteStatus
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "getCurrentCommuteStatus message sent to DOoMEngine", v4, 2u);
  }

  [(MapsSuggestionsDOoMEngine *)self->_doomEngine registerObserver:self];
  [(MapsSuggestionsDOoMEngine *)self->_doomEngine checkForCurrentPredictions];
}

- (MapsSuggestionsDOoMEngineWrapperStatusUpdateDelegate)statusUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_statusUpdateDelegate);

  return WeakRetained;
}

@end