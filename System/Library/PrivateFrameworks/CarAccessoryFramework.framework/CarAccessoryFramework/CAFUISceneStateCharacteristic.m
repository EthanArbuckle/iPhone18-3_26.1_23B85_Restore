@interface CAFUISceneStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFUISceneStateCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFUISceneStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFUISceneStateCharacteristic *)self uiSceneStateValue];

  return NSStringFromUISceneState(v2);
}

@end