@interface CNKHUDActivityManager
+ (CNKHUDActivityManager)sharedManager;
@end

@implementation CNKHUDActivityManager

+ (CNKHUDActivityManager)sharedManager
{
  v2 = static HUDActivityManager.shared.getter();

  return v2;
}

@end