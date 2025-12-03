@interface AccessoryDetailsSuggestedAutomationsItemManager
- (_TtC6HomeUI47AccessoryDetailsSuggestedAutomationsItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_itemsToHideInSet:(id)set;
@end

@implementation AccessoryDetailsSuggestedAutomationsItemManager

- (id)_buildItemModulesForHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  sub_20D0E36A0();

  sub_20CECF940(0, &qword_28111FFE0);
  v6 = sub_20D567A58();

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  sub_20D567D08();
  selfCopy = self;
  sub_20D0E2D54();

  sub_20CECF940(0, &unk_28111FFD0);
  v5 = sub_20D567A58();

  return v5;
}

- (id)_itemsToHideInSet:(id)set
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v4 = sub_20D567D08();
  selfCopy = self;
  sub_20D0E30D4(v4);

  v6 = sub_20D567CD8();

  return v6;
}

- (_TtC6HomeUI47AccessoryDetailsSuggestedAutomationsItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end