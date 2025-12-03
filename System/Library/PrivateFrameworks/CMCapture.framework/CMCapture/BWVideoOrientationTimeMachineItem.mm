@interface BWVideoOrientationTimeMachineItem
- (BWVideoOrientationTimeMachineItem)initWithPTSSeconds:(double)seconds exifOrientation:(signed __int16)orientation;
- (id)description;
@end

@implementation BWVideoOrientationTimeMachineItem

- (BWVideoOrientationTimeMachineItem)initWithPTSSeconds:(double)seconds exifOrientation:(signed __int16)orientation
{
  v7.receiver = self;
  v7.super_class = BWVideoOrientationTimeMachineItem;
  result = [(BWVideoOrientationTimeMachineItem *)&v7 init];
  if (result)
  {
    result->_ptsSeconds = seconds;
    result->_exifOrientation = orientation;
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