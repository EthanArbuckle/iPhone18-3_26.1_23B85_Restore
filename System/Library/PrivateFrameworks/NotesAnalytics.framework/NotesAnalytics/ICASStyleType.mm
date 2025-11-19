@interface ICASStyleType
- (ICASStyleType)initWithStyleType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASStyleType

- (ICASStyleType)initWithStyleType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASStyleType;
  result = [(ICASStyleType *)&v5 init];
  if (result)
  {
    result->_styleType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASStyleType *)self styleType];
  if ((v3 - 1) > 0xF)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF540[v3 - 1];
  }
}

@end