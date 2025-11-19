@interface ICASShareFlowType
- (ICASShareFlowType)initWithShareFlowType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASShareFlowType

- (ICASShareFlowType)initWithShareFlowType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASShareFlowType;
  result = [(ICASShareFlowType *)&v5 init];
  if (result)
  {
    result->_shareFlowType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASShareFlowType *)self shareFlowType];
  if ((v3 - 1) > 2)
  {
    return @"initiate";
  }

  else
  {
    return off_2799AF6B8[v3 - 1];
  }
}

@end