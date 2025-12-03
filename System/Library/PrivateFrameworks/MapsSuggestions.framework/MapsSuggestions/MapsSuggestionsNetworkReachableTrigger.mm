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
  mEMORY[0x1E69A22B0] = [MEMORY[0x1E69A22B0] sharedNetworkObserver];
  [mEMORY[0x1E69A22B0] addNetworkReachableObserver:self selector:sel__reachabilityChanged];
}

- (void)didRemoveLastObserver
{
  mEMORY[0x1E69A22B0] = [MEMORY[0x1E69A22B0] sharedNetworkObserver];
  [mEMORY[0x1E69A22B0] removeNetworkReachableObserver:self];
}

- (BOOL)isTrue
{
  mEMORY[0x1E69A22B0] = [MEMORY[0x1E69A22B0] sharedNetworkObserver];
  isNetworkReachable = [mEMORY[0x1E69A22B0] isNetworkReachable];

  return isNetworkReachable;
}

- (id)objectForJSON
{
  isTrue = [(MapsSuggestionsNetworkReachableTrigger *)self isTrue];

  return MSg::jsonFor(isTrue);
}

@end