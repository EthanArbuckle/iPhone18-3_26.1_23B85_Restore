@interface _ActivitySummaryForCollection
- (_ActivitySummaryForCollection)initWithActivitySummary:(id)a3 timeScope:(int64_t)a4 hasNoData:(BOOL)a5;
@end

@implementation _ActivitySummaryForCollection

- (_ActivitySummaryForCollection)initWithActivitySummary:(id)a3 timeScope:(int64_t)a4 hasNoData:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = _ActivitySummaryForCollection;
  v10 = [(_ActivitySummaryForCollection *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_summaryResult, a3);
    v11->_timeScope = a4;
    v11->_hasNoData = a5;
  }

  return v11;
}

@end