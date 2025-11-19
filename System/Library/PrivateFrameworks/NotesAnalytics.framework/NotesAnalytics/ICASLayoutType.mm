@interface ICASLayoutType
- (ICASLayoutType)initWithLayoutType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASLayoutType

- (ICASLayoutType)initWithLayoutType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASLayoutType;
  result = [(ICASLayoutType *)&v5 init];
  if (result)
  {
    result->_layoutType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASLayoutType *)self layoutType];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"list";
  }

  if (v3 == 2)
  {
    return @"grid";
  }

  else
  {
    return v4;
  }
}

@end