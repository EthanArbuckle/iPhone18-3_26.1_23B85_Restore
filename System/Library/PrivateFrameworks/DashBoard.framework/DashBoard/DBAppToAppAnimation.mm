@interface DBAppToAppAnimation
+ (id)animationWithSettings:(id)settings;
@end

@implementation DBAppToAppAnimation

+ (id)animationWithSettings:(id)settings
{
  v3 = _Block_copy(settings);
  type metadata accessor for DBAnimationSettings();
  v4 = DBAnimationSettings.__allocating_init()();
  v3[2](v3, v4);
  _Block_release(v3);
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v5 = type metadata accessor for _DBAppSwitchReducedMotionAnimation();
  }

  else
  {
    v5 = type metadata accessor for _DBAppSwitchDosidoAnimation();
  }

  v6 = objc_allocWithZone(v5);
  v7 = DBDashboardAnimation.init(settings:)(v4);

  return v7;
}

@end