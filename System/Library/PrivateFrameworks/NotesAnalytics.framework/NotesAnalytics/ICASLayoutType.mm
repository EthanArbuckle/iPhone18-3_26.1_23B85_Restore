@interface ICASLayoutType
- (ICASLayoutType)initWithLayoutType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASLayoutType

- (ICASLayoutType)initWithLayoutType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASLayoutType;
  result = [(ICASLayoutType *)&v5 init];
  if (result)
  {
    result->_layoutType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  layoutType = [(ICASLayoutType *)self layoutType];
  v4 = @"unknown";
  if (layoutType == 1)
  {
    v4 = @"list";
  }

  if (layoutType == 2)
  {
    return @"grid";
  }

  else
  {
    return v4;
  }
}

@end