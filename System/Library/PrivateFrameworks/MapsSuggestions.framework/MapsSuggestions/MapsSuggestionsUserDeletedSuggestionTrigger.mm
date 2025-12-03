@interface MapsSuggestionsUserDeletedSuggestionTrigger
- (MapsSuggestionsUserDeletedSuggestionTrigger)initWithName:(id)name;
- (MapsSuggestionsUserDeletedSuggestionTrigger)initWithNotificationName:(const char *)name triggerName:(id)triggerName;
@end

@implementation MapsSuggestionsUserDeletedSuggestionTrigger

- (MapsSuggestionsUserDeletedSuggestionTrigger)initWithNotificationName:(const char *)name triggerName:(id)triggerName
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 136446978;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsUserDeletedSuggestionTrigger.m";
    v9 = 1024;
    v10 = 20;
    v11 = 2082;
    v12 = "[MapsSuggestionsUserDeletedSuggestionTrigger initWithNotificationName:triggerName:]";
    v13 = 2082;
    v14 = "YES";
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You should call -init", &v7, 0x26u);
  }

  return [(MapsSuggestionsUserDeletedSuggestionTrigger *)self init];
}

- (MapsSuggestionsUserDeletedSuggestionTrigger)initWithName:(id)name
{
  v4.receiver = self;
  v4.super_class = MapsSuggestionsUserDeletedSuggestionTrigger;
  return [(MapsSuggestionsDarwinNotificationTrigger *)&v4 initWithNotificationName:"com.apple.maps.userdeleted" triggerName:name];
}

@end