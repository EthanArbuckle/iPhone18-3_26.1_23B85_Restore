@interface CNAutocompleteObservableBuilderBatchingHelperFactory
+ (id)batchingHelperForSearchType:(unint64_t)a3;
+ (id)calendarBatchingHelper;
+ (id)standardBatchingHelper;
@end

@implementation CNAutocompleteObservableBuilderBatchingHelperFactory

+ (id)standardBatchingHelper
{
  v2 = objc_alloc_init(_CNAutocompleteStandardObservableBuilderBatchingHelper);

  return v2;
}

+ (id)batchingHelperForSearchType:(unint64_t)a3
{
  if (a3 == 3)
  {
    [a1 calendarBatchingHelper];
  }

  else
  {
    [a1 standardBatchingHelper];
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