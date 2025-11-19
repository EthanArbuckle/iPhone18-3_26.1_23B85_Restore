@interface ICASLinkContentType
- (ICASLinkContentType)initWithLinkContentType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASLinkContentType

- (ICASLinkContentType)initWithLinkContentType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASLinkContentType;
  result = [(ICASLinkContentType *)&v5 init];
  if (result)
  {
    result->_linkContentType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASLinkContentType *)self linkContentType];
  if ((v3 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF0C8[v3 - 1];
  }
}

@end