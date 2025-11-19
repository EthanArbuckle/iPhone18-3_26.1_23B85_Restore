@interface HKSleepStageDayCoordinate
- (HKSleepStageDayCoordinate)initWithXValueStart:(double)a3 xValueEnd:(double)a4 sleepStage:(int64_t)a5 userInfo:(id)a6;
- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
@end

@implementation HKSleepStageDayCoordinate

- (HKSleepStageDayCoordinate)initWithXValueStart:(double)a3 xValueEnd:(double)a4 sleepStage:(int64_t)a5 userInfo:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = HKSleepStageDayCoordinate;
  v12 = [(HKSleepStageDayCoordinate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_xValueStart = a3;
    v12->_xValueEnd = a4;
    v12->_sleepStage = a5;
    objc_storeStrong(&v12->_userInfo, a6);
  }

  return v13;
}

- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  xValueStart = self->_xValueStart;
  xValueEnd = self->_xValueEnd;
  tx = a3->tx;
  v8 = a3->c * 0.0;
  v9 = tx + v8 + a3->a * xValueStart;
  v10 = tx + v8 + a3->a * xValueEnd;
  if (a4)
  {
    ty = a3->ty;
    b = a3->b;
    v13 = a3->d * 0.0;
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