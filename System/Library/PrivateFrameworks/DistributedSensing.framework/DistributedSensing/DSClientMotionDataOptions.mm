@interface DSClientMotionDataOptions
- (DSClientMotionDataOptions)init;
@end

@implementation DSClientMotionDataOptions

- (DSClientMotionDataOptions)init
{
  v3.receiver = self;
  v3.super_class = DSClientMotionDataOptions;
  result = [(DSClientMotionDataOptions *)&v3 init];
  if (result)
  {
    *&result->_deviceType = 0;
  }

  return result;
}

@end