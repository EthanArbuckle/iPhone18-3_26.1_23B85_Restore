@interface BMUserFocusInferredMode_v1
- (int)modeType;
- (int)origin;
@end

@implementation BMUserFocusInferredMode_v1

- (int)origin
{
  v4.receiver = self;
  v4.super_class = BMUserFocusInferredMode_v1;
  v2 = [(BMUserFocusInferredMode *)&v4 origin];
  if (v2 < 0x11)
  {
    return v2 + 1;
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
  v2 = [(BMUserFocusInferredMode *)&v4 modeType];
  if (v2 < 0x11)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

@end