@interface ICASInterfaceOrientation
- (ICASInterfaceOrientation)initWithInterfaceOrientation:(int64_t)orientation;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASInterfaceOrientation

- (ICASInterfaceOrientation)initWithInterfaceOrientation:(int64_t)orientation
{
  v5.receiver = self;
  v5.super_class = ICASInterfaceOrientation;
  result = [(ICASInterfaceOrientation *)&v5 init];
  if (result)
  {
    result->_interfaceOrientation = orientation;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  interfaceOrientation = [(ICASInterfaceOrientation *)self interfaceOrientation];
  if ((interfaceOrientation - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFA60[interfaceOrientation - 1];
  }
}

@end