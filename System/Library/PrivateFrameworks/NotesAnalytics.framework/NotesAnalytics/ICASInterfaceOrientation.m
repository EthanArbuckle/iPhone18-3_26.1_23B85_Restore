@interface ICASInterfaceOrientation
- (ICASInterfaceOrientation)initWithInterfaceOrientation:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASInterfaceOrientation

- (ICASInterfaceOrientation)initWithInterfaceOrientation:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASInterfaceOrientation;
  result = [(ICASInterfaceOrientation *)&v5 init];
  if (result)
  {
    result->_interfaceOrientation = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASInterfaceOrientation *)self interfaceOrientation];
  if ((v3 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFA60[v3 - 1];
  }
}

@end