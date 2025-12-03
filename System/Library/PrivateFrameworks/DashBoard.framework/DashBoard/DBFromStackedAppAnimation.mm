@interface DBFromStackedAppAnimation
+ (id)animationWithSettings:(id)settings;
- (void)startAnimationWithCompletion:(id)completion;
@end

@implementation DBFromStackedAppAnimation

+ (id)animationWithSettings:(id)settings
{
  v3 = _Block_copy(settings);
  v4 = [objc_allocWithZone(type metadata accessor for DBFromStackedAppAnimationSettings()) init];
  v3[2](v3, v4);
  _Block_release(v3);
  v5 = objc_allocWithZone(type metadata accessor for DBFromStackedAppAnimation());
  v6 = DBDashboardAnimation.init(settings:)(v4);

  return v6;
}

- (void)startAnimationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_248260D2C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  DBFromStackedAppAnimation.startAnimation(completion:)(v7, v6);
  sub_248167864(v7);
}

@end