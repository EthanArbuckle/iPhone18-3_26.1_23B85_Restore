@interface MapsSuggestionsBaseDeduper
+ (BOOL)isEnabled;
- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry;
- (NSString)uniqueName;
@end

@implementation MapsSuggestionsBaseDeduper

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry
{
  entryCopy = entry;
  withEntryCopy = withEntry;
  result = [(MapsSuggestionsBaseDeduper *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

+ (BOOL)isEnabled
{
  result = [self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

@end