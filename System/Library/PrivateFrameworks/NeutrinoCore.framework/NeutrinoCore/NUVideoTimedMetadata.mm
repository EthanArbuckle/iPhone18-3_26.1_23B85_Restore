@interface NUVideoTimedMetadata
- (CGVector)estimatedCenterMotion;
- (CGVector)estimatedMotionBlur;
- (__n128)setTrajectoryHomography:(__n128)homography;
- (void)setTime:(id *)time;
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

- (__n128)setTrajectoryHomography:(__n128)homography
{
  result[5] = a2;
  result[6] = homography;
  result[7] = a4;
  return result;
}

- (void)setTime:(id *)time
{
  v3 = *&time->var0;
  self->_time.epoch = time->var3;
  *&self->_time.value = v3;
}

@end