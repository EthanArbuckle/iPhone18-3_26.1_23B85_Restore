@interface MapsSuggestionsMapsInstalledTriggeringToggle
- (BOOL)isTrue;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)didAddFirstObserver;
- (void)didRemoveLastObserver;
@end

@implementation MapsSuggestionsMapsInstalledTriggeringToggle

- (BOOL)isTrue
{
  if (![(MapsSuggestionsTriggeringToggle *)self timesUpdated])
  {
    [(MapsSuggestionsTriggeringToggle *)self setState:MapsSuggestionsMapsAppIsInstalled()];
  }

  v4.receiver = self;
  v4.super_class = MapsSuggestionsMapsInstalledTriggeringToggle;
  return [(MapsSuggestionsTriggeringToggle *)&v4 isTrue];
}

- (void)didAddFirstObserver
{
  v3 = [(MapsSuggestionsBaseTrigger *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v4 addObserver:self];
}

- (void)didRemoveLastObserver
{
  v3 = [(MapsSuggestionsBaseTrigger *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v4 removeObserver:self];
}

- (void)applicationsDidInstall:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[MapsSuggestionsMapsInstalledTriggeringToggle applicationsDidInstall:]";
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "%s", &v5, 0xCu);
  }

  [(MapsSuggestionsTriggeringToggle *)self setState:MapsSuggestionsMapsAppIsInstalled()];
}

- (void)applicationsDidUninstall:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[MapsSuggestionsMapsInstalledTriggeringToggle applicationsDidUninstall:]";
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "%s", &v5, 0xCu);
  }

  [(MapsSuggestionsTriggeringToggle *)self setState:MapsSuggestionsMapsAppIsInstalled()];
}

@end