@interface BMUserFocusInferredMode_v1
- (int)modeType;
- (int)origin;
@end

@implementation BMUserFocusInferredMode_v1

- (int)origin
{
  v4.receiver = self;
  v4.super_class = BMUserFocusInferredMode_v1;
  origin = [(BMUserFocusInferredMode *)&v4 origin];
  if (origin < 0x11)
  {
    return origin + 1;
  }

  else
  {
    return 0;
  }
}

- (int)modeType
{
  v4.receiver = self;
  v4.super_class = BMUserFocusInferredMode_v1;
  modeType = [(BMUserFocusInferredMode *)&v4 modeType];
  if (modeType < 0x11)
  {
    return modeType + 1;
  }

  else
  {
    return 0;
  }
}

@end