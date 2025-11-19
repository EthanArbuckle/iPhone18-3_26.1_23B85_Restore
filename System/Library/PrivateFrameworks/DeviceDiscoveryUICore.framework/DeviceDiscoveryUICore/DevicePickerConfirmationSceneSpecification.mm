@interface DevicePickerConfirmationSceneSpecification
- (Class)settingsClass;
- (NSString)uiSceneSessionRole;
- (_TtC21DeviceDiscoveryUICore42DevicePickerConfirmationSceneSpecification)init;
@end

@implementation DevicePickerConfirmationSceneSpecification

- (Class)settingsClass
{
  v2 = type metadata accessor for DDUIConfirmationDialogSceneSettings();

  return MEMORY[0x2821FEA48](v2);
}

- (NSString)uiSceneSessionRole
{
  v2 = sub_230F395D8();

  return v2;
}

- (_TtC21DeviceDiscoveryUICore42DevicePickerConfirmationSceneSpecification)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DevicePickerConfirmationSceneSpecification();
  return [(DevicePickerConfirmationSceneSpecification *)&v3 init];
}

@end