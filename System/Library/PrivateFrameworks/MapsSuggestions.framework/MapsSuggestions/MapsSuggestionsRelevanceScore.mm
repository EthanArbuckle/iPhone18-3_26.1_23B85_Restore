@interface MapsSuggestionsRelevanceScore
- (MapsSuggestionsRelevanceScore)initWithConfidence:(double)confidence;
@end

@implementation MapsSuggestionsRelevanceScore

- (MapsSuggestionsRelevanceScore)initWithConfidence:(double)confidence
{
  v5.receiver = self;
  v5.super_class = MapsSuggestionsRelevanceScore;
  result = [(MapsSuggestionsRelevanceScore *)&v5 init];
  if (result)
  {
    result->_confidence = confidence;
  }

  return result;
}

@end