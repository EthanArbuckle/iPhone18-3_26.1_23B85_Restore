@interface ICASShareFlowType
- (ICASShareFlowType)initWithShareFlowType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASShareFlowType

- (ICASShareFlowType)initWithShareFlowType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASShareFlowType;
  result = [(ICASShareFlowType *)&v5 init];
  if (result)
  {
    result->_shareFlowType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  shareFlowType = [(ICASShareFlowType *)self shareFlowType];
  if ((shareFlowType - 1) > 2)
  {
    return @"initiate";
  }

  else
  {
    return off_2799AF6B8[shareFlowType - 1];
  }
}

@end