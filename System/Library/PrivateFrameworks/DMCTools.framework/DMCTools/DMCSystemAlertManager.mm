@interface DMCSystemAlertManager
+ (void)displayAlert:(id)alert;
- (DMCSystemAlertManager)init;
@end

@implementation DMCSystemAlertManager

+ (void)displayAlert:(id)alert
{
  swift_getObjCClassMetadata();
  alertCopy = alert;
  static DMCSystemAlertManager.display(_:)(alertCopy);
}

- (DMCSystemAlertManager)init
{
  v3.receiver = self;
  v3.super_class = DMCSystemAlertManager;
  return [(DMCSystemAlertManager *)&v3 init];
}

@end