@interface DBHomeToAppAnimation
+ (id)animationWithSettings:(id)settings;
@end

@implementation DBHomeToAppAnimation

+ (id)animationWithSettings:(id)settings
{
  v3 = _Block_copy(settings);
  v4 = sub_24831466C(v3);
  _Block_release(v3);

  return v4;
}

@end