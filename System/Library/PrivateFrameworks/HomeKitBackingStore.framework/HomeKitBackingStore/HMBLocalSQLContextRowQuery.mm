@interface HMBLocalSQLContextRowQuery
- (HMBLocalSQLContextRowQuery)initWithRecordRow:(unint64_t)row tuples:(id)tuples;
@end

@implementation HMBLocalSQLContextRowQuery

- (HMBLocalSQLContextRowQuery)initWithRecordRow:(unint64_t)row tuples:(id)tuples
{
  tuplesCopy = tuples;
  v11.receiver = self;
  v11.super_class = HMBLocalSQLContextRowQuery;
  v8 = [(HMBLocalSQLContextRowQuery *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_recordRow = row;
    objc_storeStrong(&v8->_tuples, tuples);
  }

  return v9;
}

@end