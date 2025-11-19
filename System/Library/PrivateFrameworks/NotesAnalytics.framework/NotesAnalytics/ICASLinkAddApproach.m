@interface ICASLinkAddApproach
- (ICASLinkAddApproach)initWithLinkAddApproach:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASLinkAddApproach

- (ICASLinkAddApproach)initWithLinkAddApproach:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASLinkAddApproach;
  result = [(ICASLinkAddApproach *)&v5 init];
  if (result)
  {
    result->_linkAddApproach = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASLinkAddApproach *)self linkAddApproach];
  if ((v3 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF908[v3 - 1];
  }
}

@end