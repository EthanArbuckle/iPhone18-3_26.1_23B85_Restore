@interface CNAutocompleteCalendarServerOperationFactory
- (id)eventKitDirectorySearchOperationForSource:(id)source query:(id)query resultsBlock:(id)block;
@end

@implementation CNAutocompleteCalendarServerOperationFactory

- (id)eventKitDirectorySearchOperationForSource:(id)source query:(id)query resultsBlock:(id)block
{
  v7 = getEKDirectorySearchOperationClass;
  blockCopy = block;
  queryCopy = query;
  sourceCopy = source;
  v11 = [objc_alloc(v7()) initWithSource:sourceCopy query:queryCopy resultsBlock:blockCopy];

  return v11;
}

@end