@interface MapsSuggestionsBaseFilter
+ (BOOL)isEnabled;
- (BOOL)shouldKeepEntry:(id)a3;
- (NSString)uniqueName;
@end

@implementation MapsSuggestionsBaseFilter

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)shouldKeepEntry:(id)a3
{
  v5 = a3;
  result = [(MapsSuggestionsBaseFilter *)self doesNotRecognizeSelector:a2];
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