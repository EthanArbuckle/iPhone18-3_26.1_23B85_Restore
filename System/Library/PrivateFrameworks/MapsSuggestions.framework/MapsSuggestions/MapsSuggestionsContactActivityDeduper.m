@interface MapsSuggestionsContactActivityDeduper
- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4;
- (_TtC15MapsSuggestions37MapsSuggestionsContactActivityDeduper)init;
@end

@implementation MapsSuggestionsContactActivityDeduper

- (_TtC15MapsSuggestions37MapsSuggestionsContactActivityDeduper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MapsSuggestionsContactActivityDeduper();
  return [(MapsSuggestionsContactActivityDeduper *)&v3 init];
}

- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1C526697C(v6, v7);

  return v9 & 1;
}

@end