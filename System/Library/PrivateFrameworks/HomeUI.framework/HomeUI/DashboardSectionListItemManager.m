@interface DashboardSectionListItemManager
- (HMHome)home;
- (_TtC6HomeUI31DashboardSectionListItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_itemsToHideInSet:(id)a3;
- (void)setHome:(id)a3;
@end

@implementation DashboardSectionListItemManager

- (HMHome)home
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DashboardSectionListItemManager();
  v2 = [(HFItemManager *)&v4 home];

  return v2;
}

- (void)setHome:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DashboardSectionListItemManager();
  v4 = a3;
  v5 = v6.receiver;
  [(HFItemManager *)&v6 setHome:v4];
  sub_20CF88974();
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20CF88D68(v4);

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
  sub_20CF894FC(v4);

  sub_20CECF940(0, &unk_28111FFD0);
  v6 = sub_20D567A58();

  return v6;
}

- (id)_itemsToHideInSet:(id)a3
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  sub_20D567D08();
  v4 = self;
  sub_20CF8971C();

  v5 = sub_20D567CD8();

  return v5;
}

- (_TtC6HomeUI31DashboardSectionListItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end