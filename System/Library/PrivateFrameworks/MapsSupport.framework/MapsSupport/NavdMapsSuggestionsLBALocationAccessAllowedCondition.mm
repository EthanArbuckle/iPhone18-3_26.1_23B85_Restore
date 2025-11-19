@interface NavdMapsSuggestionsLBALocationAccessAllowedCondition
- (BOOL)isTrue;
- (NavdMapsSuggestionsLBALocationAccessAllowedCondition)init;
@end

@implementation NavdMapsSuggestionsLBALocationAccessAllowedCondition

- (NavdMapsSuggestionsLBALocationAccessAllowedCondition)init
{
  v3.receiver = self;
  v3.super_class = NavdMapsSuggestionsLBALocationAccessAllowedCondition;
  return [(NavdMapsSuggestionsLBALocationAccessAllowedCondition *)&v3 initWithName:@"NavdMapsSuggestionsLBALocationAccessAllowedCondition"];
}

- (BOOL)isTrue
{
  v2 = +[MapsSuggestionsNavdLBALocationManager sharedLocationManager];
  v3 = [v2 hasLocationAccess];

  return v3;
}

@end