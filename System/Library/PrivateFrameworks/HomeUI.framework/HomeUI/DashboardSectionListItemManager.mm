@interface DashboardSectionListItemManager
- (HMHome)home;
- (_TtC6HomeUI31DashboardSectionListItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_itemsToHideInSet:(id)set;
- (void)setHome:(id)home;
@end

@implementation DashboardSectionListItemManager

- (HMHome)home
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DashboardSectionListItemManager();
  home = [(HFItemManager *)&v4 home];

  return home;
}

- (void)setHome:(id)home
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DashboardSectionListItemManager();
  homeCopy = home;
  v5 = v6.receiver;
  [(HFItemManager *)&v6 setHome:homeCopy];
  sub_20CF88974();
}

- (id)_buildItemProvidersForHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  sub_20CF88D68(homeCopy);

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
  sub_20CF894FC(v4);

  sub_20CECF940(0, &unk_28111FFD0);
  v6 = sub_20D567A58();

  return v6;
}

- (id)_itemsToHideInSet:(id)set
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  sub_20D567D08();
  selfCopy = self;
  sub_20CF8971C();

  v5 = sub_20D567CD8();

  return v5;
}

- (_TtC6HomeUI31DashboardSectionListItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end