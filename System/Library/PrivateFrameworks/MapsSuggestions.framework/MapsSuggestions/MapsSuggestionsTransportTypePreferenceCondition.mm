@interface MapsSuggestionsTransportTypePreferenceCondition
- (MapsSuggestionsTransportTypePreferenceCondition)initWithName:(id)a3 requiresTransportType:(int64_t)a4;
@end

@implementation MapsSuggestionsTransportTypePreferenceCondition

- (MapsSuggestionsTransportTypePreferenceCondition)initWithName:(id)a3 requiresTransportType:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = MapsSuggestionsTransportTypePreferenceCondition;
  result = [(MapsSuggestionsBaseCondition *)&v6 initWithName:a3];
  if (result)
  {
    result->_requiredTransportTypePreference = a4;
  }

  return result;
}

@end