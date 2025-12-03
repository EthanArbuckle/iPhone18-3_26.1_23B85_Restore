@interface CAFUISceneStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFUISceneStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFUISceneStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  uiSceneStateValue = [(CAFUISceneStateCharacteristic *)self uiSceneStateValue];

  return NSStringFromUISceneState(uiSceneStateValue);
}

@end