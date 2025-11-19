@interface HBXUnitSupport
- (HBXUnitSupport)initWithUnitPreferenceController:(id)a3 displayTypeController:(id)a4;
- (id)localizedDisplayNameForUnit:(id)a3 nameContext:(int64_t)a4;
- (id)localizedPreferredUnitDisplayNameForType:(id)a3 nameContext:(int64_t)a4;
- (id)preferredUnitForType:(id)a3;
- (void)updatePreferredUnit:(id)a3 forType:(id)a4;
@end

@implementation HBXUnitSupport

- (HBXUnitSupport)initWithUnitPreferenceController:(id)a3 displayTypeController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HBXUnitSupport;
  v9 = [(HBXUnitSupport *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_unitPreferenceController, a3);
    objc_storeStrong(&v10->_displayTypeController, a4);
  }

  return v10;
}

- (id)localizedDisplayNameForUnit:(id)a3 nameContext:(int64_t)a4
{
  v6 = a3;
  v7 = [(HBXUnitSupport *)self unitPreferenceController];
  v8 = [v7 localizedDisplayNameForUnit:v6 value:0 nameContext:a4];

  return v8;
}

- (id)localizedPreferredUnitDisplayNameForType:(id)a3 nameContext:(int64_t)a4
{
  v6 = [(HBXUnitSupport *)self preferredUnitForType:a3];
  v7 = [(HBXUnitSupport *)self localizedDisplayNameForUnit:v6 nameContext:a4];

  return v7;
}

- (id)preferredUnitForType:(id)a3
{
  v4 = a3;
  v5 = [(HBXUnitSupport *)self displayTypeController];
  v6 = [v5 displayTypeForObjectType:v4];

  v7 = [(HBXUnitSupport *)self unitPreferenceController];
  v8 = [v7 unitForDisplayType:v6];

  return v8;
}

- (void)updatePreferredUnit:(id)a3 forType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HBXUnitSupport *)self displayTypeController];
  v10 = [v8 displayTypeForObjectType:v6];

  v9 = [(HBXUnitSupport *)self unitPreferenceController];
  [v9 updatePreferredUnit:v7 forDisplayType:v10];
}

@end