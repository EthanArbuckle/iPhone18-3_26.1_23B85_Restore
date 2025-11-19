@interface DMCSystemAlertManager
+ (void)displayAlert:(id)a3;
- (DMCSystemAlertManager)init;
@end

@implementation DMCSystemAlertManager

+ (void)displayAlert:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  static DMCSystemAlertManager.display(_:)(v4);
}

- (DMCSystemAlertManager)init
{
  v3.receiver = self;
  v3.super_class = DMCSystemAlertManager;
  return [(DMCSystemAlertManager *)&v3 init];
}

@end