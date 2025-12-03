@interface ICASOperationType
- (ICASOperationType)initWithOperationType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASOperationType

- (ICASOperationType)initWithOperationType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASOperationType;
  result = [(ICASOperationType *)&v5 init];
  if (result)
  {
    result->_operationType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  operationType = [(ICASOperationType *)self operationType];
  if ((operationType - 1) > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFA08[operationType - 1];
  }
}

@end