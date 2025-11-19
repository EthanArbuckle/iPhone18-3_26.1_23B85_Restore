@interface HMBLocalSQLContextRowQuery
- (HMBLocalSQLContextRowQuery)initWithRecordRow:(unint64_t)a3 tuples:(id)a4;
@end

@implementation HMBLocalSQLContextRowQuery

- (HMBLocalSQLContextRowQuery)initWithRecordRow:(unint64_t)a3 tuples:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMBLocalSQLContextRowQuery;
  v8 = [(HMBLocalSQLContextRowQuery *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_recordRow = a3;
    objc_storeStrong(&v8->_tuples, a4);
  }

  return v9;
}

@end