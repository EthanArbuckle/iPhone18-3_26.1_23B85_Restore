@interface MapsSuggestionsRangeTrigger
- (BOOL)withinRange:(id)range;
- (MapsSuggestionsRangeTrigger)initWithLocation:(id)location radius:(double)radius onEnter:(BOOL)enter minUpdateTime:(double)time locationUpdater:(id)updater forcingLocationUpdater:(id)locationUpdater;
- (void)didAddFirstObserver;
- (void)didUpdateLocation:(id)location;
- (void)stop;
@end

@implementation MapsSuggestionsRangeTrigger

- (MapsSuggestionsRangeTrigger)initWithLocation:(id)location radius:(double)radius onEnter:(BOOL)enter minUpdateTime:(double)time locationUpdater:(id)updater forcingLocationUpdater:(id)locationUpdater
{
  locationCopy = location;
  updaterCopy = updater;
  locationUpdaterCopy = locationUpdater;
  v22.receiver = self;
  v22.super_class = MapsSuggestionsRangeTrigger;
  v18 = [(MapsSuggestionsBaseTrigger *)&v22 initWithName:@"MapsSuggestionsRangeTrigger"];
  if (v18)
  {
    v19 = [[MapsSuggestionsQueue alloc] initSerialQueueWithName:@"MapsSuggestionsRangeTriggerQueue"];
    queue = v18->_queue;
    v18->_queue = v19;

    objc_storeStrong(&v18->_destinationLocation, location);
    v18->_radius = radius;
    v18->_onEnter = enter;
    v18->_forceUpdateTime = time;
    objc_storeStrong(&v18->_locationUpdater, updater);
    objc_storeStrong(&v18->_forcingLocationUpdater, locationUpdater);
  }

  return v18;
}

- (void)stop
{
  queue = self->_queue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__MapsSuggestionsRangeTrigger_stop__block_invoke;
  v3[3] = &unk_1E81F6168;
  v3[4] = self;
  [(MapsSuggestionsQueue *)queue syncBlock:v3];
}

uint64_t __35__MapsSuggestionsRangeTrigger_stop__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 80) cancel];
  [*(*(a1 + 32) + 64) stopLocationUpdatesForDelegate:?];
  v2 = *(*(a1 + 32) + 72);

  return [v2 stopLocationUpdatesForDelegate:?];
}

- (void)didUpdateLocation:(id)location
{
  locationCopy = location;
  if (locationCopy)
  {
    v8 = locationCopy;
    [locationCopy horizontalAccuracy];
    locationCopy = v8;
    if (v5 <= 100.0)
    {
      [(MapsSuggestionsCanKicker *)self->_locationForceUpdate kickCanByTime:self->_forceUpdateTime];
      [(MapsSuggestionsLocationUpdater *)self->_forcingLocationUpdater stopLocationUpdatesForDelegate:self];
      onEnter = self->_onEnter;
      v7 = onEnter == [(MapsSuggestionsRangeTrigger *)self withinRange:v8];
      locationCopy = v8;
      if (v7)
      {
        [(MapsSuggestionsLocationUpdater *)self->_locationUpdater stopLocationUpdatesForDelegate:self];
        [(MapsSuggestionsBaseTrigger *)self triggerMyObservers];
        locationCopy = v8;
      }
    }
  }
}

- (BOOL)withinRange:(id)range
{
  radius = self->_radius;
  [range distanceFromLocation:self->_destinationLocation];
  return radius > v4;
}

- (void)didAddFirstObserver
{
  objc_initWeak(&location, self);
  v3 = [MapsSuggestionsCanKicker alloc];
  innerQueue = [(MapsSuggestionsQueue *)self->_queue innerQueue];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __50__MapsSuggestionsRangeTrigger_didAddFirstObserver__block_invoke;
  v11 = &unk_1E81F53E8;
  objc_copyWeak(&v12, &location);
  v5 = [(MapsSuggestionsCanKicker *)v3 initWithName:@"MapsSuggestionsRangeTriggerCanKicker" queue:innerQueue block:&v8];
  locationForceUpdate = self->_locationForceUpdate;
  self->_locationForceUpdate = v5;

  v7 = [(MapsSuggestionsLocationUpdater *)self->_locationUpdater startLocationUpdatesForDelegate:self, v8, v9, v10, v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __50__MapsSuggestionsRangeTrigger_didAddFirstObserver__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[9] startLocationUpdatesForDelegate:WeakRetained];
    v4 = [v2[8] startLocationUpdatesForDelegate:v2];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsRangeTrigger.m";
      v8 = 1026;
      v9 = 86;
      v10 = 2082;
      v11 = "[MapsSuggestionsRangeTrigger didAddFirstObserver]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

@end