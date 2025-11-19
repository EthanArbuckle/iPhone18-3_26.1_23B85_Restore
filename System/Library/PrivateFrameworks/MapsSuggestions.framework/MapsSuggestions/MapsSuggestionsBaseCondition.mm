@interface MapsSuggestionsBaseCondition
- (BOOL)isTrue;
- (MapsSuggestionsBaseCondition)initWithName:(id)a3;
- (id)objectForJSON;
@end

@implementation MapsSuggestionsBaseCondition

- (id)objectForJSON
{
  v2 = [(MapsSuggestionsBaseCondition *)self isTrue];

  return MSg::jsonFor(v2);
}

- (MapsSuggestionsBaseCondition)initWithName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MapsSuggestionsBaseCondition;
  v5 = [(MapsSuggestionsBaseCondition *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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