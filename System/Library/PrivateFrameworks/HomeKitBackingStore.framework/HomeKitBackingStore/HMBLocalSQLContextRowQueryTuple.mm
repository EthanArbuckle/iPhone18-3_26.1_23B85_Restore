@interface HMBLocalSQLContextRowQueryTuple
- (HMBLocalSQLContextRowQueryTuple)initWithQueryRow:(unint64_t)row data:(id)data;
@end

@implementation HMBLocalSQLContextRowQueryTuple

- (HMBLocalSQLContextRowQueryTuple)initWithQueryRow:(unint64_t)row data:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = HMBLocalSQLContextRowQueryTuple;
  v8 = [(HMBLocalSQLContextRowQueryTuple *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_queryRow = row;
    objc_storeStrong(&v8->_queryData, data);
  }

  return v9;
}

@end