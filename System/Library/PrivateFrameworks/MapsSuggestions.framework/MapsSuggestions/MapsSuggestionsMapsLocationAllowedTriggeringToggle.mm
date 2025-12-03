@interface MapsSuggestionsMapsLocationAllowedTriggeringToggle
- (BOOL)isTrue;
- (void)dealloc;
- (void)didAddFirstObserver;
- (void)didRemoveLastObserver;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation MapsSuggestionsMapsLocationAllowedTriggeringToggle

- (void)didAddFirstObserver
{
  dispatchQueue = [(MapsSuggestionsBaseTrigger *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (!self->_locationManager)
  {
    v3 = objc_alloc(MEMORY[0x1E695FBE8]);
    dispatchQueue2 = [(MapsSuggestionsBaseTrigger *)self dispatchQueue];
    v4 = [v3 initWithEffectiveBundleIdentifier:@"com.apple.Maps" delegate:self onQueue:?];
    locationManager = self->_locationManager;
    self->_locationManager = v4;
  }
}

- (void)didRemoveLastObserver
{
  dispatchQueue = [(MapsSuggestionsBaseTrigger *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  locationManager = self->_locationManager;
  self->_locationManager = 0;
}

- (void)dealloc
{
  locationManager = self->_locationManager;
  self->_locationManager = 0;

  v4.receiver = self;
  v4.super_class = MapsSuggestionsMapsLocationAllowedTriggeringToggle;
  [(MapsSuggestionsMapsLocationAllowedTriggeringToggle *)&v4 dealloc];
}

- (BOOL)isTrue
{
  if (![(MapsSuggestionsTriggeringToggle *)self timesUpdated])
  {
    [(MapsSuggestionsTriggeringToggle *)self setState:MapsSuggestionsMapsAppIsAllowedLocations()];
  }

  v4.receiver = self;
  v4.super_class = MapsSuggestionsMapsLocationAllowedTriggeringToggle;
  return [(MapsSuggestionsTriggeringToggle *)&v4 isTrue];
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v11 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  authorizationStatus = [authorizationCopy authorizationStatus];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[MapsSuggestionsMapsLocationAllowedTriggeringToggle locationManagerDidChangeAuthorization:]";
    v9 = 1024;
    v10 = authorizationStatus;
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "%s status=%d", &v7, 0x12u);
  }

  [(MapsSuggestionsTriggeringToggle *)self setState:(authorizationStatus - 3) < 2];
}

@end