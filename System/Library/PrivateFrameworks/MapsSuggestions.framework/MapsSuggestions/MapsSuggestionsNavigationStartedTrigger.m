@interface MapsSuggestionsNavigationStartedTrigger
- (BOOL)isTrue;
- (MapsSuggestionsNavigationStartedTrigger)init;
- (void)didNavigationStateChange;
@end

@implementation MapsSuggestionsNavigationStartedTrigger

- (MapsSuggestionsNavigationStartedTrigger)init
{
  v3.receiver = self;
  v3.super_class = MapsSuggestionsNavigationStartedTrigger;
  return [(MapsSuggestionsBaseNavigationSessionTrigger *)&v3 initWithName:@"MapsSuggestionsNavigationStartedTrigger"];
}

- (BOOL)isTrue
{
  v2 = [MEMORY[0x1E69B3748] sharedUpdater];
  v3 = [v2 isNavigatingOrPredictingDestination];

  return v3;
}

- (void)didNavigationStateChange
{
  if ([(MapsSuggestionsNavigationStartedTrigger *)self isTrue])
  {

    [(MapsSuggestionsBaseTrigger *)self triggerMyObservers];
  }
}

@end