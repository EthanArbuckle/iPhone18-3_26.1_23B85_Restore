@interface HBXUnitSupport
- (HBXUnitSupport)initWithUnitPreferenceController:(id)controller displayTypeController:(id)typeController;
- (id)localizedDisplayNameForUnit:(id)unit nameContext:(int64_t)context;
- (id)localizedPreferredUnitDisplayNameForType:(id)type nameContext:(int64_t)context;
- (id)preferredUnitForType:(id)type;
- (void)updatePreferredUnit:(id)unit forType:(id)type;
@end

@implementation HBXUnitSupport

- (HBXUnitSupport)initWithUnitPreferenceController:(id)controller displayTypeController:(id)typeController
{
  controllerCopy = controller;
  typeControllerCopy = typeController;
  v12.receiver = self;
  v12.super_class = HBXUnitSupport;
  v9 = [(HBXUnitSupport *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_unitPreferenceController, controller);
    objc_storeStrong(&v10->_displayTypeController, typeController);
  }

  return v10;
}

- (id)localizedDisplayNameForUnit:(id)unit nameContext:(int64_t)context
{
  unitCopy = unit;
  unitPreferenceController = [(HBXUnitSupport *)self unitPreferenceController];
  v8 = [unitPreferenceController localizedDisplayNameForUnit:unitCopy value:0 nameContext:context];

  return v8;
}

- (id)localizedPreferredUnitDisplayNameForType:(id)type nameContext:(int64_t)context
{
  v6 = [(HBXUnitSupport *)self preferredUnitForType:type];
  v7 = [(HBXUnitSupport *)self localizedDisplayNameForUnit:v6 nameContext:context];

  return v7;
}

- (id)preferredUnitForType:(id)type
{
  typeCopy = type;
  displayTypeController = [(HBXUnitSupport *)self displayTypeController];
  v6 = [displayTypeController displayTypeForObjectType:typeCopy];

  unitPreferenceController = [(HBXUnitSupport *)self unitPreferenceController];
  v8 = [unitPreferenceController unitForDisplayType:v6];

  return v8;
}

- (void)updatePreferredUnit:(id)unit forType:(id)type
{
  typeCopy = type;
  unitCopy = unit;
  displayTypeController = [(HBXUnitSupport *)self displayTypeController];
  v10 = [displayTypeController displayTypeForObjectType:typeCopy];

  unitPreferenceController = [(HBXUnitSupport *)self unitPreferenceController];
  [unitPreferenceController updatePreferredUnit:unitCopy forDisplayType:v10];
}

@end