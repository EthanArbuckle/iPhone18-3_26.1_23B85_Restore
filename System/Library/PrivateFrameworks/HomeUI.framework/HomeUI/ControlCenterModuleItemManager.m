@interface ControlCenterModuleItemManager
- (HMHome)home;
- (_TtC6HomeUI30ControlCenterModuleItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildItemProvidersWithoutHome;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
- (id)_itemsToHideInSet:(id)a3;
- (id)_updateResultsForItems:(id)a3 context:(id)a4;
- (void)executionEnvironmentDidEnterBackground:(id)a3;
- (void)executionEnvironmentWillEnterForeground:(id)a3;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)home:(id)a3 didRemoveActionSet:(id)a4;
- (void)home:(id)a3 didRemoveMediaSystem:(id)a4;
- (void)home:(id)a3 didRemoveServiceGroup:(id)a4;
- (void)homeManagerDidFinishInitialDatabaseLoad:(id)a3;
- (void)setHome:(id)a3;
@end

@implementation ControlCenterModuleItemManager

- (id)_buildItemProvidersWithoutHome
{
  sub_20D0C1568();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
  v2 = sub_20D567A58();

  return v2;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20D0BAE9C(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
  v6 = sub_20D567A58();

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v4 = sub_20D567D08();
  v5 = self;
  sub_20D0BB950(v4);

  sub_20CECF940(0, &unk_28111FFD0);
  v6 = sub_20D567A58();

  return v6;
}

- (id)_itemsToHideInSet:(id)a3
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v4 = sub_20D567D08();
  v5 = self;
  sub_20D0BBC18(v4);

  v6 = sub_20D567CD8();

  return v6;
}

- (HMHome)home
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedDispatcher];
  v6 = [v5 homeManager];

  if (v6)
  {

    v8.receiver = v4;
    v8.super_class = type metadata accessor for ControlCenterModuleItemManager();
    v6 = [(HFItemManager *)&v8 home];
  }

  return v6;
}

- (void)setHome:(id)a3
{
  v5 = objc_opt_self();
  v9 = self;
  v6 = a3;
  v7 = [v5 sharedDispatcher];
  v8 = [v7 homeManager];

  if (v8)
  {

    v10.receiver = v9;
    v10.super_class = type metadata accessor for ControlCenterModuleItemManager();
    [(HFItemManager *)&v10 setHome:v6];
  }

  else
  {
  }
}

- (id)_homeFuture
{
  v2 = self;
  v3 = sub_20D0BD54C();

  return v3;
}

- (void)homeManagerDidFinishInitialDatabaseLoad:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20D0BD80C(v4);
}

- (id)_updateResultsForItems:(id)a3 context:(id)a4
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v6 = sub_20D567D08();
  v7 = a4;
  v8 = self;
  v9 = sub_20D0BE868(v6, v7);

  return v9;
}

- (void)executionEnvironmentWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20D0BED58(v4);
}

- (void)executionEnvironmentDidEnterBackground:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = a3;
  v9 = self;
  sub_20D563788();
  v10 = sub_20D5637A8();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  v11 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_lastBackgroundTime;
  swift_beginAccess();
  sub_20CFAF29C(v7, v9 + v11);
  swift_endAccess();
  v12 = type metadata accessor for ControlCenterModuleItemManager();
  v14.receiver = v9;
  v14.super_class = v12;
  [(HFItemManager *)&v14 executionEnvironmentDidEnterBackground:v8];
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20D0BF2C4(v6, v7);
}

- (void)home:(id)a3 didRemoveMediaSystem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20D0BF808(v6, v7, &selRef_home_didRemoveMediaSystem_);
}

- (void)home:(id)a3 didRemoveServiceGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20D0BF808(v6, v7, &selRef_home_didRemoveServiceGroup_);
}

- (void)home:(id)a3 didRemoveActionSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20D0BFD08(v6, v7);
}

- (_TtC6HomeUI30ControlCenterModuleItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end