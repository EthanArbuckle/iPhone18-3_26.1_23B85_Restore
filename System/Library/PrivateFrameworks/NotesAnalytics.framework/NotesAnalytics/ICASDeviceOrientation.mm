@interface ICASDeviceOrientation
- (ICASDeviceOrientation)initWithDeviceOrientation:(int64_t)orientation;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASDeviceOrientation

- (ICASDeviceOrientation)initWithDeviceOrientation:(int64_t)orientation
{
  v5.receiver = self;
  v5.super_class = ICASDeviceOrientation;
  result = [(ICASDeviceOrientation *)&v5 init];
  if (result)
  {
    result->_deviceOrientation = orientation;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  deviceOrientation = [(ICASDeviceOrientation *)self deviceOrientation];
  if ((deviceOrientation - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFFB8[deviceOrientation - 1];
  }
}

@end