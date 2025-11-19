@interface HMBLocalSQLContextRowQueryTuple
- (HMBLocalSQLContextRowQueryTuple)initWithQueryRow:(unint64_t)a3 data:(id)a4;
@end

@implementation HMBLocalSQLContextRowQueryTuple

- (HMBLocalSQLContextRowQueryTuple)initWithQueryRow:(unint64_t)a3 data:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMBLocalSQLContextRowQueryTuple;
  v8 = [(HMBLocalSQLContextRowQueryTuple *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_queryRow = a3;
    objc_storeStrong(&v8->_queryData, a4);
  }

  return v9;
}

@end