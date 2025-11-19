@interface MapsSuggestionsContactActivityImprover
- (BOOL)improveEntry:(id)a3;
- (_TtC15MapsSuggestions38MapsSuggestionsContactActivityImprover)init;
@end

@implementation MapsSuggestionsContactActivityImprover

- (_TtC15MapsSuggestions38MapsSuggestionsContactActivityImprover)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MapsSuggestionsContactActivityImprover();
  return [(MapsSuggestionsContactActivityImprover *)&v3 init];
}

- (BOOL)improveEntry:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1C5136F08(v4);

  return self & 1;
}

@end