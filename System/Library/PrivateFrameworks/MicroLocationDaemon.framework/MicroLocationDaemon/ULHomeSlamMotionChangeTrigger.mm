@interface ULHomeSlamMotionChangeTrigger
- (ULHomeSlamMotionChangeTrigger)initWithdate:(id)a3 andTrigger:(int64_t)a4;
@end

@implementation ULHomeSlamMotionChangeTrigger

- (ULHomeSlamMotionChangeTrigger)initWithdate:(id)a3 andTrigger:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = ULHomeSlamMotionChangeTrigger;
  v7 = [(ULHomeSlamMotionChangeTrigger *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ULHomeSlamMotionChangeTrigger *)v7 setDate:v6];
    [(ULHomeSlamMotionChangeTrigger *)v8 setTrigger:a4];
  }

  return v8;
}

@end