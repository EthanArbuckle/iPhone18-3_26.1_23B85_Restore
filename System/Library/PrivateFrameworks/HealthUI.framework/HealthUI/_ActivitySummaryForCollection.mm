@interface _ActivitySummaryForCollection
- (_ActivitySummaryForCollection)initWithActivitySummary:(id)summary timeScope:(int64_t)scope hasNoData:(BOOL)data;
@end

@implementation _ActivitySummaryForCollection

- (_ActivitySummaryForCollection)initWithActivitySummary:(id)summary timeScope:(int64_t)scope hasNoData:(BOOL)data
{
  summaryCopy = summary;
  v13.receiver = self;
  v13.super_class = _ActivitySummaryForCollection;
  v10 = [(_ActivitySummaryForCollection *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_summaryResult, summary);
    v11->_timeScope = scope;
    v11->_hasNoData = data;
  }

  return v11;
}

@end