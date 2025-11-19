@interface CNAutocompleteSuggestedResultPrioritizer
+ (id)passthroughPrioritizer;
+ (id)peopleSuggesterPrioritizer;
@end

@implementation CNAutocompleteSuggestedResultPrioritizer

+ (id)peopleSuggesterPrioritizer
{
  v2 = objc_alloc_init(_CNAPeopleSuggesterResultPrioritizer);

  return v2;
}

+ (id)passthroughPrioritizer
{
  v2 = objc_alloc_init(_CNAPassthroughResultPrioritizer);

  return v2;
}

@end