@interface MapsSuggestionsDOoMEngineWrapper
- (MapsSuggestionsDOoMEngineWrapper)initWithResourceDepot:(id)depot conditions:(id)conditions;
- (MapsSuggestionsDOoMEngineWrapperStatusUpdateDelegate)statusUpdateDelegate;
- (void)commuteWindowChangedWithWindow:(id)window nextDestination:(id)destination travelTime:(double)time haveBudgetForCommuteRequest:(BOOL)request exitTime:(id)exitTime routeSet:(id)set;
- (void)dealloc;
- (void)getCurrentCommuteStatus;
@end

@implementation MapsSuggestionsDOoMEngineWrapper

- (MapsSuggestionsDOoMEngineWrapper)initWithResourceDepot:(id)depot conditions:(id)conditions
{
  v17 = *MEMORY[0x1E69E9840];
  depotCopy = depot;
  conditionsCopy = conditions;
  v14.receiver = self;
  v14.super_class = MapsSuggestionsDOoMEngineWrapper;
  v8 = [(MapsSuggestionsDOoMEngineWrapper *)&v14 init];
  if (v8)
  {
    v9 = [[_TtC15MapsSuggestions25MapsSuggestionsDOoMEngine alloc] initWithResourceDepot:depotCopy conditions:conditionsCopy];
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

- (void)commuteWindowChangedWithWindow:(id)window nextDestination:(id)destination travelTime:(double)time haveBudgetForCommuteRequest:(BOOL)request exitTime:(id)exitTime routeSet:(id)set
{
  v25 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  destinationCopy = destination;
  exitTimeCopy = exitTime;
  setCopy = set;
  statusUpdateDelegate = [(MapsSuggestionsDOoMEngineWrapper *)self statusUpdateDelegate];
  if (statusUpdateDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [statusUpdateDelegate commuteWindowIs:windowCopy forNextDestination:destinationCopy travelTime:setCopy commuteRouteSet:time];
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