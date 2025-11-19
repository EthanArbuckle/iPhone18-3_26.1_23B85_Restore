@interface MapsSuggestionsSimpleTrigger
- (MapsSuggestionsSimpleTrigger)initWithName:(id)a3;
- (MapsSuggestionsSimpleTrigger)initWithName:(id)a3 queue:(id)a4;
@end

@implementation MapsSuggestionsSimpleTrigger

- (MapsSuggestionsSimpleTrigger)initWithName:(id)a3
{
  v4.receiver = self;
  v4.super_class = MapsSuggestionsSimpleTrigger;
  return [(MapsSuggestionsBaseTrigger *)&v4 initWithName:a3];
}

- (MapsSuggestionsSimpleTrigger)initWithName:(id)a3 queue:(id)a4
{
  v5.receiver = self;
  v5.super_class = MapsSuggestionsSimpleTrigger;
  return [(MapsSuggestionsBaseTrigger *)&v5 initWithName:a3 queue:a4];
}

@end