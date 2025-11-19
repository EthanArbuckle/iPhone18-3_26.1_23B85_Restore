@interface CHDView3D
- (CHDView3D)init;
- (id)description;
@end

@implementation CHDView3D

- (CHDView3D)init
{
  v3.receiver = self;
  v3.super_class = CHDView3D;
  result = [(CHDView3D *)&v3 init];
  if (result)
  {
    *&result->mRotationX = xmmword_25D6FE640;
    *&result->mHeightPercent = 0x1EFFFFFFFFLL;
    *&result->mRightAngleAxes = 256;
    result->mAutoscale = 1;
  }

  return result;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDView3D;
  v2 = [(CHDView3D *)&v4 description];

  return v2;
}

@end