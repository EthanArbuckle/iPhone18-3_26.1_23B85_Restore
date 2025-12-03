@interface CNAutocompleteObservableBuilderBatchingHelperFactory
+ (id)batchingHelperForSearchType:(unint64_t)type;
+ (id)calendarBatchingHelper;
+ (id)standardBatchingHelper;
@end

@implementation CNAutocompleteObservableBuilderBatchingHelperFactory

+ (id)standardBatchingHelper
{
  v2 = objc_alloc_init(_CNAutocompleteStandardObservableBuilderBatchingHelper);

  return v2;
}

+ (id)batchingHelperForSearchType:(unint64_t)type
{
  if (type == 3)
  {
    [self calendarBatchingHelper];
  }

  else
  {
    [self standardBatchingHelper];
  }
  v3 = ;

  return v3;
}

+ (id)calendarBatchingHelper
{
  v2 = objc_alloc_init(_CNAutocompleteCalendarObservableBuilderBatchingHelper);

  return v2;
}

@end