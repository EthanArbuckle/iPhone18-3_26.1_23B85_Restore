@interface ICASSelectedResultAccountType
- (ICASSelectedResultAccountType)initWithSelectedResultAccountType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASSelectedResultAccountType

- (ICASSelectedResultAccountType)initWithSelectedResultAccountType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASSelectedResultAccountType;
  result = [(ICASSelectedResultAccountType *)&v5 init];
  if (result)
  {
    result->_selectedResultAccountType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASSelectedResultAccountType *)self selectedResultAccountType];
  if ((v3 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF710[v3 - 1];
  }
}

@end