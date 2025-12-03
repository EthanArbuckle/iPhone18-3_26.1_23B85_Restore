@interface MapsSuggestionsSimpleTrigger
- (MapsSuggestionsSimpleTrigger)initWithName:(id)name;
- (MapsSuggestionsSimpleTrigger)initWithName:(id)name queue:(id)queue;
@end

@implementation MapsSuggestionsSimpleTrigger

- (MapsSuggestionsSimpleTrigger)initWithName:(id)name
{
  v4.receiver = self;
  v4.super_class = MapsSuggestionsSimpleTrigger;
  return [(MapsSuggestionsBaseTrigger *)&v4 initWithName:name];
}

- (MapsSuggestionsSimpleTrigger)initWithName:(id)name queue:(id)queue
{
  v5.receiver = self;
  v5.super_class = MapsSuggestionsSimpleTrigger;
  return [(MapsSuggestionsBaseTrigger *)&v5 initWithName:name queue:queue];
}

@end