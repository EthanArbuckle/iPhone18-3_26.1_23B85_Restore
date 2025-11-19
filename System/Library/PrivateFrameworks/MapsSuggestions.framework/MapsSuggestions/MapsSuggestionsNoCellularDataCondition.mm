@interface MapsSuggestionsNoCellularDataCondition
- (BOOL)isTrue;
- (MapsSuggestionsNoCellularDataCondition)init;
@end

@implementation MapsSuggestionsNoCellularDataCondition

- (MapsSuggestionsNoCellularDataCondition)init
{
  v3.receiver = self;
  v3.super_class = MapsSuggestionsNoCellularDataCondition;
  return [(MapsSuggestionsBaseCondition *)&v3 initWithName:@"MapsSuggestionsNoCellularDataCondition"];
}

- (BOOL)isTrue
{
  v2 = [MEMORY[0x1E69A22B0] sharedNetworkObserver];
  v3 = [v2 isCellConnection];

  return v3 ^ 1;
}

@end