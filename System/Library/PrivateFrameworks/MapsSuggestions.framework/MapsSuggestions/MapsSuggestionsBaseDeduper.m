@interface MapsSuggestionsBaseDeduper
+ (BOOL)isEnabled;
- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4;
- (NSString)uniqueName;
@end

@implementation MapsSuggestionsBaseDeduper

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4
{
  v7 = a3;
  v8 = a4;
  result = [(MapsSuggestionsBaseDeduper *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

+ (BOOL)isEnabled
{
  result = [a1 doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

@end