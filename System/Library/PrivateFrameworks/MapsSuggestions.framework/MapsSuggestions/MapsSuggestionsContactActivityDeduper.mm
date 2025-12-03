@interface MapsSuggestionsContactActivityDeduper
- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry;
- (_TtC15MapsSuggestions37MapsSuggestionsContactActivityDeduper)init;
@end

@implementation MapsSuggestionsContactActivityDeduper

- (_TtC15MapsSuggestions37MapsSuggestionsContactActivityDeduper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MapsSuggestionsContactActivityDeduper();
  return [(MapsSuggestionsContactActivityDeduper *)&v3 init];
}

- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry
{
  entryCopy = entry;
  withEntryCopy = withEntry;
  selfCopy = self;
  v9 = sub_1C526697C(entryCopy, withEntryCopy);

  return v9 & 1;
}

@end