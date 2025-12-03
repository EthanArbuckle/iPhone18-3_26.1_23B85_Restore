@interface HKSleepStageDayCoordinate
- (HKSleepStageDayCoordinate)initWithXValueStart:(double)start xValueEnd:(double)end sleepStage:(int64_t)stage userInfo:(id)info;
- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
@end

@implementation HKSleepStageDayCoordinate

- (HKSleepStageDayCoordinate)initWithXValueStart:(double)start xValueEnd:(double)end sleepStage:(int64_t)stage userInfo:(id)info
{
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = HKSleepStageDayCoordinate;
  v12 = [(HKSleepStageDayCoordinate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_xValueStart = start;
    v12->_xValueEnd = end;
    v12->_sleepStage = stage;
    objc_storeStrong(&v12->_userInfo, info);
  }

  return v13;
}

- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  xValueStart = self->_xValueStart;
  xValueEnd = self->_xValueEnd;
  tx = transform->tx;
  v8 = transform->c * 0.0;
  v9 = tx + v8 + transform->a * xValueStart;
  v10 = tx + v8 + transform->a * xValueEnd;
  if (scale)
  {
    ty = transform->ty;
    b = transform->b;
    v13 = transform->d * 0.0;
    v14 = ty + v13 + b * xValueEnd;
    v9 = HKUIFloorCGPointToScreenScale(v9, ty + v13 + b * xValueStart);
    v10 = HKUIFloorCGPointToScreenScale(v10, v14);
  }

  v15 = [HKSleepStageDayCoordinate alloc];
  sleepStage = self->_sleepStage;
  userInfo = self->_userInfo;

  return [(HKSleepStageDayCoordinate *)v15 initWithXValueStart:sleepStage xValueEnd:userInfo sleepStage:v9 userInfo:v10];
}

@end