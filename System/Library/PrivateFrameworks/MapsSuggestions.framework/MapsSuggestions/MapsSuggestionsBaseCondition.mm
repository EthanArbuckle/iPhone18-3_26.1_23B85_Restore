@interface MapsSuggestionsBaseCondition
- (BOOL)isTrue;
- (MapsSuggestionsBaseCondition)initWithName:(id)name;
- (id)objectForJSON;
@end

@implementation MapsSuggestionsBaseCondition

- (id)objectForJSON
{
  isTrue = [(MapsSuggestionsBaseCondition *)self isTrue];

  return MSg::jsonFor(isTrue);
}

- (MapsSuggestionsBaseCondition)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = MapsSuggestionsBaseCondition;
  v5 = [(MapsSuggestionsBaseCondition *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (BOOL)isTrue
{
  result = [(MapsSuggestionsBaseCondition *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

@end