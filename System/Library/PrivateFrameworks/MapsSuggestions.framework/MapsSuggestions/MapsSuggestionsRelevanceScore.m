@interface MapsSuggestionsRelevanceScore
- (MapsSuggestionsRelevanceScore)initWithConfidence:(double)a3;
@end

@implementation MapsSuggestionsRelevanceScore

- (MapsSuggestionsRelevanceScore)initWithConfidence:(double)a3
{
  v5.receiver = self;
  v5.super_class = MapsSuggestionsRelevanceScore;
  result = [(MapsSuggestionsRelevanceScore *)&v5 init];
  if (result)
  {
    result->_confidence = a3;
  }

  return result;
}

@end