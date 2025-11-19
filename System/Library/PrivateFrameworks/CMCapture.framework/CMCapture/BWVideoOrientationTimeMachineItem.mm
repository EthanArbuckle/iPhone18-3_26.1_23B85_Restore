@interface BWVideoOrientationTimeMachineItem
- (BWVideoOrientationTimeMachineItem)initWithPTSSeconds:(double)a3 exifOrientation:(signed __int16)a4;
- (id)description;
@end

@implementation BWVideoOrientationTimeMachineItem

- (BWVideoOrientationTimeMachineItem)initWithPTSSeconds:(double)a3 exifOrientation:(signed __int16)a4
{
  v7.receiver = self;
  v7.super_class = BWVideoOrientationTimeMachineItem;
  result = [(BWVideoOrientationTimeMachineItem *)&v7 init];
  if (result)
  {
    result->_ptsSeconds = a3;
    result->_exifOrientation = a4;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p> ptsSeconds: %.4f, exifOrientation: %d", NSStringFromClass(v4), self, *&self->_ptsSeconds, self->_exifOrientation];
}

@end