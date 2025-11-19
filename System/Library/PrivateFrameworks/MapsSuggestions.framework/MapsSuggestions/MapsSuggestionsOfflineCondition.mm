@interface MapsSuggestionsOfflineCondition
- (BOOL)isTrue;
- (MapsSuggestionsOfflineCondition)init;
@end

@implementation MapsSuggestionsOfflineCondition

- (MapsSuggestionsOfflineCondition)init
{
  v3.receiver = self;
  v3.super_class = MapsSuggestionsOfflineCondition;
  return [(MapsSuggestionsBaseCondition *)&v3 initWithName:@"MapsSuggestionsOfflineCondition"];
}

- (BOOL)isTrue
{
  v2 = [MEMORY[0x1E69A22E8] shared];
  v3 = [v2 isUsingOffline];

  return v3;
}

@end