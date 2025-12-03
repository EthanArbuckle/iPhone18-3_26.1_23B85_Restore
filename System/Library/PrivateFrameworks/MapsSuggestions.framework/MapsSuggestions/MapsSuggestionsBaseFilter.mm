@interface MapsSuggestionsBaseFilter
+ (BOOL)isEnabled;
- (BOOL)shouldKeepEntry:(id)entry;
- (NSString)uniqueName;
@end

@implementation MapsSuggestionsBaseFilter

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)shouldKeepEntry:(id)entry
{
  entryCopy = entry;
  result = [(MapsSuggestionsBaseFilter *)self doesNotRecognizeSelector:a2];
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