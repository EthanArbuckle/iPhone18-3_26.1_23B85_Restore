@interface AutoClimateModel
- (_TtC13HomeDataModel16AutoClimateModel)init;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)home:(id)home didUpdateRoom:(id)room forAccessory:(id)accessory;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
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

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  sub_1D1D50FD4(homeCopy);
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  AutoClimateModel.home(_:didRemove:)(homeCopy, accessoryCopy);
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  _s13HomeDataModel011AutoClimateC0C4home_6didAddySo6HMHomeC_So11HMAccessoryCtF_0(homeCopy, accessory);
}

- (void)home:(id)home didUpdateRoom:(id)room forAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  _s13HomeDataModel011AutoClimateC0C4home_6didAddySo6HMHomeC_So11HMAccessoryCtF_0(homeCopy, accessory);
}

@end