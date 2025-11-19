@interface NUVideoTimedMetadata
- (CGVector)estimatedCenterMotion;
- (CGVector)estimatedMotionBlur;
- (__n128)setTrajectoryHomography:(__n128)a3;
- (void)setTime:(id *)a3;
@end

@implementation NUVideoTimedMetadata

- (CGVector)estimatedMotionBlur
{
  objc_copyStruct(v4, &self->_estimatedMotionBlur, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.dy = v3;
  result.dx = v2;
  return result;
}

- (CGVector)estimatedCenterMotion
{
  objc_copyStruct(v4, &self->_estimatedCenterMotion, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.dy = v3;
  result.dx = v2;
  return result;
}

- (__n128)setTrajectoryHomography:(__n128)a3
{
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  return result;
}

- (void)setTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_time.epoch = a3->var3;
  *&self->_time.value = v3;
}

@end