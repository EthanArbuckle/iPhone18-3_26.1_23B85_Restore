@interface ICASSelectedResultAccountType
- (ICASSelectedResultAccountType)initWithSelectedResultAccountType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASSelectedResultAccountType

- (ICASSelectedResultAccountType)initWithSelectedResultAccountType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASSelectedResultAccountType;
  result = [(ICASSelectedResultAccountType *)&v5 init];
  if (result)
  {
    result->_selectedResultAccountType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  selectedResultAccountType = [(ICASSelectedResultAccountType *)self selectedResultAccountType];
  if ((selectedResultAccountType - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF710[selectedResultAccountType - 1];
  }
}

@end