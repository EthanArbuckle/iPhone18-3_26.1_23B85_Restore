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
  mEMORY[0x1E69A22B0] = [MEMORY[0x1E69A22B0] sharedNetworkObserver];
  isCellConnection = [mEMORY[0x1E69A22B0] isCellConnection];

  return isCellConnection ^ 1;
}

@end