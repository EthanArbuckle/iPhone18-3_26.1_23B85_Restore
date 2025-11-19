@interface CNAutocompleteCalendarServerOperationFactory
- (id)eventKitDirectorySearchOperationForSource:(id)a3 query:(id)a4 resultsBlock:(id)a5;
@end

@implementation CNAutocompleteCalendarServerOperationFactory

- (id)eventKitDirectorySearchOperationForSource:(id)a3 query:(id)a4 resultsBlock:(id)a5
{
  v7 = getEKDirectorySearchOperationClass;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_alloc(v7()) initWithSource:v10 query:v9 resultsBlock:v8];

  return v11;
}

@end