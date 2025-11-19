@interface ICASOperationType
- (ICASOperationType)initWithOperationType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASOperationType

- (ICASOperationType)initWithOperationType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASOperationType;
  result = [(ICASOperationType *)&v5 init];
  if (result)
  {
    result->_operationType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASOperationType *)self operationType];
  if ((v3 - 1) > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFA08[v3 - 1];
  }
}

@end