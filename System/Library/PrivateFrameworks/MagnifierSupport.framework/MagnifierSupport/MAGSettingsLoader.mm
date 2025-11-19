@interface MAGSettingsLoader
+ (Class)internalSettingsViewControllerClass;
- (MAGSettingsLoader)init;
@end

@implementation MAGSettingsLoader

+ (Class)internalSettingsViewControllerClass
{
  type metadata accessor for MAGInternalSettingsViewController();

  return swift_getObjCClassFromMetadata();
}

- (MAGSettingsLoader)init
{
  v3.receiver = self;
  v3.super_class = MAGSettingsLoader;
  return [(MAGSettingsLoader *)&v3 init];
}

@end