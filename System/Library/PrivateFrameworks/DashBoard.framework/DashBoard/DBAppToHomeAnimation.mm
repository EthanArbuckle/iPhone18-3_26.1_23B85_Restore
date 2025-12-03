@interface DBAppToHomeAnimation
+ (id)animationWithSettings:(id)settings;
@end

@implementation DBAppToHomeAnimation

+ (id)animationWithSettings:(id)settings
{
  v3 = _Block_copy(settings);
  v4 = sub_248261380(v3);
  _Block_release(v3);

  return v4;
}

@end