@interface ICASStyleType
- (ICASStyleType)initWithStyleType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASStyleType

- (ICASStyleType)initWithStyleType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASStyleType;
  result = [(ICASStyleType *)&v5 init];
  if (result)
  {
    result->_styleType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  styleType = [(ICASStyleType *)self styleType];
  if ((styleType - 1) > 0xF)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF540[styleType - 1];
  }
}

@end