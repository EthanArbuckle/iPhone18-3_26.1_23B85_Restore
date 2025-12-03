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
  mEMORY[0x1E69A22E8] = [MEMORY[0x1E69A22E8] shared];
  isUsingOffline = [mEMORY[0x1E69A22E8] isUsingOffline];

  return isUsingOffline;
}

@end