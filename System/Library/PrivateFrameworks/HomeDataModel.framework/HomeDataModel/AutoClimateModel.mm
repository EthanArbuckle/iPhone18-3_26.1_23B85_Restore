@interface AutoClimateModel
- (_TtC13HomeDataModel16AutoClimateModel)init;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)home:(id)a3 didUpdateRoom:(id)a4 forAccessory:(id)a5;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
@end

@implementation AutoClimateModel

- (_TtC13HomeDataModel16AutoClimateModel)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers) = sub_1D18DBFB0(MEMORY[0x1E69E7CC0]);
  *(&self->super.isa + OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__isTestMode) = 0;
  sub_1D1E66CDC();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(AutoClimateModel *)&v5 init];
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1D50FD4(v7);
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  AutoClimateModel.home(_:didRemove:)(v6, v7);
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s13HomeDataModel011AutoClimateC0C4home_6didAddySo6HMHomeC_So11HMAccessoryCtF_0(v6, a4);
}

- (void)home:(id)a3 didUpdateRoom:(id)a4 forAccessory:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = self;
  _s13HomeDataModel011AutoClimateC0C4home_6didAddySo6HMHomeC_So11HMAccessoryCtF_0(v7, a5);
}

@end