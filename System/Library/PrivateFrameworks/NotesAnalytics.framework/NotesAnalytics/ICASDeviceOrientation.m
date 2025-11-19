@interface ICASDeviceOrientation
- (ICASDeviceOrientation)initWithDeviceOrientation:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASDeviceOrientation

- (ICASDeviceOrientation)initWithDeviceOrientation:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASDeviceOrientation;
  result = [(ICASDeviceOrientation *)&v5 init];
  if (result)
  {
    result->_deviceOrientation = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASDeviceOrientation *)self deviceOrientation];
  if ((v3 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFFB8[v3 - 1];
  }
}

@end