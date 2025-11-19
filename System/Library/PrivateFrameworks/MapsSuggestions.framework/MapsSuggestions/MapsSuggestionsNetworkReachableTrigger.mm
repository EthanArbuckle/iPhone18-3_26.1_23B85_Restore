@interface MapsSuggestionsNetworkReachableTrigger
- (BOOL)isTrue;
- (MapsSuggestionsNetworkReachableTrigger)init;
- (id)objectForJSON;
- (void)_reachabilityChanged;
- (void)didAddFirstObserver;
- (void)didRemoveLastObserver;
@end

@implementation MapsSuggestionsNetworkReachableTrigger

- (MapsSuggestionsNetworkReachableTrigger)init
{
  v3.receiver = self;
  v3.super_class = MapsSuggestionsNetworkReachableTrigger;
  return [(MapsSuggestionsBaseTrigger *)&v3 initWithName:@"MapsSuggestionsNetworkReachableTrigger"];
}

- (void)_reachabilityChanged
{
  if ([(MapsSuggestionsNetworkReachableTrigger *)self isTrue])
  {

    [(MapsSuggestionsBaseTrigger *)self triggerMyObservers];
  }
}

- (void)didAddFirstObserver
{
  v3 = [MEMORY[0x1E69A22B0] sharedNetworkObserver];
  [v3 addNetworkReachableObserver:self selector:sel__reachabilityChanged];
}

- (void)didRemoveLastObserver
{
  v3 = [MEMORY[0x1E69A22B0] sharedNetworkObserver];
  [v3 removeNetworkReachableObserver:self];
}

- (BOOL)isTrue
{
  v2 = [MEMORY[0x1E69A22B0] sharedNetworkObserver];
  v3 = [v2 isNetworkReachable];

  return v3;
}

- (id)objectForJSON
{
  v2 = [(MapsSuggestionsNetworkReachableTrigger *)self isTrue];

  return MSg::jsonFor(v2);
}

@end