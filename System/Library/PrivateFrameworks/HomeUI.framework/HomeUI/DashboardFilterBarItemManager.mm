@interface DashboardFilterBarItemManager
- (_TtC6HomeUI29DashboardFilterBarItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (void)dealloc;
- (void)executionEnvironmentDidBecomeActive:(id)active;
- (void)homeDidUpdateHomeEnergyManagerEnabled:(id)enabled;
- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home;
@end

@implementation DashboardFilterBarItemManager

- (_TtC6HomeUI29DashboardFilterBarItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  swift_unknownObjectRetain();
  itemCopy = item;
  return sub_20CF5AF3C(delegate, item);
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for DashboardFilterBarItemManager();
  [(HFItemManager *)&v6 dealloc];
}

- (id)_buildItemProvidersForHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  sub_20CF5B544(homeCopy);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
  v6 = sub_20D567A58();

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  sub_20D567D08();
  selfCopy = self;
  sub_20CF5B6AC();

  sub_20CECF940(0, &unk_28111FFD0);
  v5 = sub_20D567A58();

  return v5;
}

- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home
{
  dispatcherCopy = dispatcher;
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  sub_20CF5BFA0(dispatcherCopy, managerCopy, home);
}

- (void)homeDidUpdateHomeEnergyManagerEnabled:(id)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  sub_20CF5E098();
}

- (void)executionEnvironmentDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_20CF5C350(activeCopy);
}

@end