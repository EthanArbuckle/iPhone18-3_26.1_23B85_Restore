@interface ControlCenterModuleItemManager
- (HMHome)home;
- (_TtC6HomeUI30ControlCenterModuleItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildItemProvidersWithoutHome;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
- (id)_itemsToHideInSet:(id)set;
- (id)_updateResultsForItems:(id)items context:(id)context;
- (void)executionEnvironmentDidEnterBackground:(id)background;
- (void)executionEnvironmentWillEnterForeground:(id)foreground;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)home:(id)home didRemoveActionSet:(id)set;
- (void)home:(id)home didRemoveMediaSystem:(id)system;
- (void)home:(id)home didRemoveServiceGroup:(id)group;
- (void)homeManagerDidFinishInitialDatabaseLoad:(id)load;
- (void)setHome:(id)home;
@end

@implementation ControlCenterModuleItemManager

- (id)_buildItemProvidersWithoutHome
{
  sub_20D0C1568();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
  v2 = sub_20D567A58();

  return v2;
}

- (id)_buildItemProvidersForHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  sub_20D0BAE9C(homeCopy);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
  v6 = sub_20D567A58();

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v4 = sub_20D567D08();
  selfCopy = self;
  sub_20D0BB950(v4);

  sub_20CECF940(0, &unk_28111FFD0);
  v6 = sub_20D567A58();

  return v6;
}

- (id)_itemsToHideInSet:(id)set
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v4 = sub_20D567D08();
  selfCopy = self;
  sub_20D0BBC18(v4);

  v6 = sub_20D567CD8();

  return v6;
}

- (HMHome)home
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedDispatcher = [v3 sharedDispatcher];
  homeManager = [sharedDispatcher homeManager];

  if (homeManager)
  {

    v8.receiver = selfCopy;
    v8.super_class = type metadata accessor for ControlCenterModuleItemManager();
    homeManager = [(HFItemManager *)&v8 home];
  }

  return homeManager;
}

- (void)setHome:(id)home
{
  v5 = objc_opt_self();
  selfCopy = self;
  homeCopy = home;
  sharedDispatcher = [v5 sharedDispatcher];
  homeManager = [sharedDispatcher homeManager];

  if (homeManager)
  {

    v10.receiver = selfCopy;
    v10.super_class = type metadata accessor for ControlCenterModuleItemManager();
    [(HFItemManager *)&v10 setHome:homeCopy];
  }

  else
  {
  }
}

- (id)_homeFuture
{
  selfCopy = self;
  v3 = sub_20D0BD54C();

  return v3;
}

- (void)homeManagerDidFinishInitialDatabaseLoad:(id)load
{
  loadCopy = load;
  selfCopy = self;
  sub_20D0BD80C(loadCopy);
}

- (id)_updateResultsForItems:(id)items context:(id)context
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v6 = sub_20D567D08();
  contextCopy = context;
  selfCopy = self;
  v9 = sub_20D0BE868(v6, contextCopy);

  return v9;
}

- (void)executionEnvironmentWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_20D0BED58(foregroundCopy);
}

- (void)executionEnvironmentDidEnterBackground:(id)background
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  backgroundCopy = background;
  selfCopy = self;
  sub_20D563788();
  v10 = sub_20D5637A8();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  v11 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_lastBackgroundTime;
  swift_beginAccess();
  sub_20CFAF29C(v7, selfCopy + v11);
  swift_endAccess();
  v12 = type metadata accessor for ControlCenterModuleItemManager();
  v14.receiver = selfCopy;
  v14.super_class = v12;
  [(HFItemManager *)&v14 executionEnvironmentDidEnterBackground:backgroundCopy];
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_20D0BF2C4(homeCopy, accessoryCopy);
}

- (void)home:(id)home didRemoveMediaSystem:(id)system
{
  homeCopy = home;
  systemCopy = system;
  selfCopy = self;
  sub_20D0BF808(homeCopy, systemCopy, &selRef_home_didRemoveMediaSystem_);
}

- (void)home:(id)home didRemoveServiceGroup:(id)group
{
  homeCopy = home;
  groupCopy = group;
  selfCopy = self;
  sub_20D0BF808(homeCopy, groupCopy, &selRef_home_didRemoveServiceGroup_);
}

- (void)home:(id)home didRemoveActionSet:(id)set
{
  homeCopy = home;
  setCopy = set;
  selfCopy = self;
  sub_20D0BFD08(homeCopy, setCopy);
}

- (_TtC6HomeUI30ControlCenterModuleItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end