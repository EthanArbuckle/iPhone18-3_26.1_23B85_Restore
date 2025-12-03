@interface CAMAnalyticsSharedLibraryModeEvent
- (CAMAnalyticsSharedLibraryModeEvent)initWithLibrarySelectionController:(id)controller;
- (void)publish;
@end

@implementation CAMAnalyticsSharedLibraryModeEvent

- (CAMAnalyticsSharedLibraryModeEvent)initWithLibrarySelectionController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = CAMAnalyticsSharedLibraryModeEvent;
  v6 = [(CAMAnalyticsEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_librarySelectionController, controller);
  }

  return v7;
}

- (void)publish
{
  v14 = *MEMORY[0x1E69E9840];
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  v4 = CAMSharedLibraryModeDescription([(CAMLibrarySelectionController *)self->_librarySelectionController sharedLibraryMode]);
  [_eventMap setObject:v4 forKeyedSubscript:@"currentMode"];

  v5 = CAMSharedLibraryModeDescription([(CAMLibrarySelectionController *)self->_librarySelectionController sharedLibraryInitialMode]);
  [_eventMap setObject:v5 forKeyedSubscript:@"initialMode"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMLibrarySelectionController userInteractionsCount](self->_librarySelectionController, "userInteractionsCount")}];
  [_eventMap setObject:v6 forKeyedSubscript:@"userInteractionCount"];

  v9.receiver = self;
  v9.super_class = CAMAnalyticsSharedLibraryModeEvent;
  [(CAMAnalyticsEvent *)&v9 publish];
  v7 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    eventName = [(CAMAnalyticsSharedLibraryModeEvent *)self eventName];
    *buf = 138543618;
    v11 = eventName;
    v12 = 2114;
    v13 = _eventMap;
    _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "CoreAnalytics: %{public}@: %{public}@", buf, 0x16u);
  }
}

@end