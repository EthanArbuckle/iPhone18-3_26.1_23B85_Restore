@interface ULHomeSlamMotionChangeTrigger
- (ULHomeSlamMotionChangeTrigger)initWithdate:(id)withdate andTrigger:(int64_t)trigger;
@end

@implementation ULHomeSlamMotionChangeTrigger

- (ULHomeSlamMotionChangeTrigger)initWithdate:(id)withdate andTrigger:(int64_t)trigger
{
  withdateCopy = withdate;
  v10.receiver = self;
  v10.super_class = ULHomeSlamMotionChangeTrigger;
  v7 = [(ULHomeSlamMotionChangeTrigger *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ULHomeSlamMotionChangeTrigger *)v7 setDate:withdateCopy];
    [(ULHomeSlamMotionChangeTrigger *)v8 setTrigger:trigger];
  }

  return v8;
}

@end