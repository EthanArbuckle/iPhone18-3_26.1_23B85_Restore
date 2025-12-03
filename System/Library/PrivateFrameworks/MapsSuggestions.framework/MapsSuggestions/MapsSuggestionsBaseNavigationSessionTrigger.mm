@interface MapsSuggestionsBaseNavigationSessionTrigger
- (BOOL)isTrue;
- (MapsSuggestionsBaseNavigationSessionTrigger)initWithName:(id)name;
- (id)objectForJSON;
- (void)didAddFirstObserver;
- (void)didRemoveLastObserver;
@end

@implementation MapsSuggestionsBaseNavigationSessionTrigger

- (id)objectForJSON
{
  isTrue = [(MapsSuggestionsBaseNavigationSessionTrigger *)self isTrue];

  return MSg::jsonFor(isTrue);
}

- (MapsSuggestionsBaseNavigationSessionTrigger)initWithName:(id)name
{
  v4.receiver = self;
  v4.super_class = MapsSuggestionsBaseNavigationSessionTrigger;
  return [(MapsSuggestionsBaseTrigger *)&v4 initWithName:name];
}

- (void)didAddFirstObserver
{
  mEMORY[0x1E69B3748] = [MEMORY[0x1E69B3748] sharedUpdater];
  [mEMORY[0x1E69B3748] registerObserver:self];
}

- (void)didRemoveLastObserver
{
  mEMORY[0x1E69B3748] = [MEMORY[0x1E69B3748] sharedUpdater];
  [mEMORY[0x1E69B3748] unregisterObserver:self];
}

- (BOOL)isTrue
{
  result = [(MapsSuggestionsBaseNavigationSessionTrigger *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

@end