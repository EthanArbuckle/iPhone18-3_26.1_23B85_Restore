@interface ICASSelectedResultType
- (ICASSelectedResultType)initWithSelectedResultType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASSelectedResultType

- (ICASSelectedResultType)initWithSelectedResultType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASSelectedResultType;
  result = [(ICASSelectedResultType *)&v5 init];
  if (result)
  {
    result->_selectedResultType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  selectedResultType = [(ICASSelectedResultType *)self selectedResultType];
  v4 = @"unknown";
  if (selectedResultType == 1)
  {
    v4 = @"note";
  }

  if (selectedResultType == 2)
  {
    return @"attachment";
  }

  else
  {
    return v4;
  }
}

@end