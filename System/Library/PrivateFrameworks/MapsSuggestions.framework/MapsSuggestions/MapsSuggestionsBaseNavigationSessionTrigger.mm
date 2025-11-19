@interface MapsSuggestionsBaseNavigationSessionTrigger
- (BOOL)isTrue;
- (MapsSuggestionsBaseNavigationSessionTrigger)initWithName:(id)a3;
- (id)objectForJSON;
- (void)didAddFirstObserver;
- (void)didRemoveLastObserver;
@end

@implementation MapsSuggestionsBaseNavigationSessionTrigger

- (id)objectForJSON
{
  v2 = [(MapsSuggestionsBaseNavigationSessionTrigger *)self isTrue];

  return MSg::jsonFor(v2);
}

- (MapsSuggestionsBaseNavigationSessionTrigger)initWithName:(id)a3
{
  v4.receiver = self;
  v4.super_class = MapsSuggestionsBaseNavigationSessionTrigger;
  return [(MapsSuggestionsBaseTrigger *)&v4 initWithName:a3];
}

- (void)didAddFirstObserver
{
  v3 = [MEMORY[0x1E69B3748] sharedUpdater];
  [v3 registerObserver:self];
}

- (void)didRemoveLastObserver
{
  v3 = [MEMORY[0x1E69B3748] sharedUpdater];
  [v3 unregisterObserver:self];
}

- (BOOL)isTrue
{
  result = [(MapsSuggestionsBaseNavigationSessionTrigger *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

@end