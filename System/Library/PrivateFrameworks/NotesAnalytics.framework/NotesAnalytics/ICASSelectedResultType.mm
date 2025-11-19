@interface ICASSelectedResultType
- (ICASSelectedResultType)initWithSelectedResultType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASSelectedResultType

- (ICASSelectedResultType)initWithSelectedResultType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASSelectedResultType;
  result = [(ICASSelectedResultType *)&v5 init];
  if (result)
  {
    result->_selectedResultType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASSelectedResultType *)self selectedResultType];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"note";
  }

  if (v3 == 2)
  {
    return @"attachment";
  }

  else
  {
    return v4;
  }
}

@end