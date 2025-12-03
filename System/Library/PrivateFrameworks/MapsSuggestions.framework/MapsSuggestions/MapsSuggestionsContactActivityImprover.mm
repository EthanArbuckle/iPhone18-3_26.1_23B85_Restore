@interface MapsSuggestionsContactActivityImprover
- (BOOL)improveEntry:(id)entry;
- (_TtC15MapsSuggestions38MapsSuggestionsContactActivityImprover)init;
@end

@implementation MapsSuggestionsContactActivityImprover

- (_TtC15MapsSuggestions38MapsSuggestionsContactActivityImprover)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MapsSuggestionsContactActivityImprover();
  return [(MapsSuggestionsContactActivityImprover *)&v3 init];
}

- (BOOL)improveEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  LOBYTE(self) = sub_1C5136F08(entryCopy);

  return self & 1;
}

@end