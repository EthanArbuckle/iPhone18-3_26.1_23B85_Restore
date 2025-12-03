@interface ICASLinkContentType
- (ICASLinkContentType)initWithLinkContentType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASLinkContentType

- (ICASLinkContentType)initWithLinkContentType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASLinkContentType;
  result = [(ICASLinkContentType *)&v5 init];
  if (result)
  {
    result->_linkContentType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  linkContentType = [(ICASLinkContentType *)self linkContentType];
  if ((linkContentType - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF0C8[linkContentType - 1];
  }
}

@end