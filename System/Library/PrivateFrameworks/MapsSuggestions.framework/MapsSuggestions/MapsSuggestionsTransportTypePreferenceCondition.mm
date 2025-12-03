@interface MapsSuggestionsTransportTypePreferenceCondition
- (MapsSuggestionsTransportTypePreferenceCondition)initWithName:(id)name requiresTransportType:(int64_t)type;
@end

@implementation MapsSuggestionsTransportTypePreferenceCondition

- (MapsSuggestionsTransportTypePreferenceCondition)initWithName:(id)name requiresTransportType:(int64_t)type
{
  v6.receiver = self;
  v6.super_class = MapsSuggestionsTransportTypePreferenceCondition;
  result = [(MapsSuggestionsBaseCondition *)&v6 initWithName:name];
  if (result)
  {
    result->_requiredTransportTypePreference = type;
  }

  return result;
}

@end