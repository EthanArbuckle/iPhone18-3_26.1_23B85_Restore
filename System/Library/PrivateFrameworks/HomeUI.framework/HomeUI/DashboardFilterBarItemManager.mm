@interface DashboardFilterBarItemManager
- (_TtC6HomeUI29DashboardFilterBarItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (void)dealloc;
- (void)executionEnvironmentDidBecomeActive:(id)a3;
- (void)homeDidUpdateHomeEnergyManagerEnabled:(id)a3;
- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5;
@end

@implementation DashboardFilterBarItemManager

- (_TtC6HomeUI29DashboardFilterBarItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  return sub_20CF5AF3C(a3, a4);
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedInstance];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for DashboardFilterBarItemManager();
  [(HFItemManager *)&v6 dealloc];
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20CF5B544(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
  v6 = sub_20D567A58();

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  sub_20D567D08();
  v4 = self;
  sub_20CF5B6AC();

  sub_20CECF940(0, &unk_28111FFD0);
  v5 = sub_20D567A58();

  return v5;
}

- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_20CF5BFA0(v8, v9, a5);
}

- (void)homeDidUpdateHomeEnergyManagerEnabled:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20CF5E098();
}

- (void)executionEnvironmentDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20CF5C350(v4);
}

@end