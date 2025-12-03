@interface ICASLinkAddApproach
- (ICASLinkAddApproach)initWithLinkAddApproach:(int64_t)approach;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASLinkAddApproach

- (ICASLinkAddApproach)initWithLinkAddApproach:(int64_t)approach
{
  v5.receiver = self;
  v5.super_class = ICASLinkAddApproach;
  result = [(ICASLinkAddApproach *)&v5 init];
  if (result)
  {
    result->_linkAddApproach = approach;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  linkAddApproach = [(ICASLinkAddApproach *)self linkAddApproach];
  if ((linkAddApproach - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF908[linkAddApproach - 1];
  }
}

@end