@interface MapsSuggestionsAirportArrivalBudget
- (MapsSuggestionsAirportArrivalBudget)init;
@end

@implementation MapsSuggestionsAirportArrivalBudget

- (MapsSuggestionsAirportArrivalBudget)init
{
  v5.receiver = self;
  v5.super_class = MapsSuggestionsAirportArrivalBudget;
  v2 = [(MapsSuggestionsBudget *)&v5 initWithDelegate:self name:@"MapsSuggestionsAirportArrivalBudget"];
  if (v2)
  {
    Integer = GEOConfigGetInteger();
    GEOConfigGetDouble();
    [(MapsSuggestionsBudget *)v2 addRollingWindowOfCount:Integer perTimeInterval:@"window" name:?];
  }

  return v2;
}

@end