@interface AccessoryDetailsSuggestedAutomationsItemManager
- (_TtC6HomeUI47AccessoryDetailsSuggestedAutomationsItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_itemsToHideInSet:(id)a3;
@end

@implementation AccessoryDetailsSuggestedAutomationsItemManager

- (id)_buildItemModulesForHome:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20D0E36A0();

  sub_20CECF940(0, &qword_28111FFE0);
  v6 = sub_20D567A58();

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  sub_20D567D08();
  v4 = self;
  sub_20D0E2D54();

  sub_20CECF940(0, &unk_28111FFD0);
  v5 = sub_20D567A58();

  return v5;
}

- (id)_itemsToHideInSet:(id)a3
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v4 = sub_20D567D08();
  v5 = self;
  sub_20D0E30D4(v4);

  v6 = sub_20D567CD8();

  return v6;
}

- (_TtC6HomeUI47AccessoryDetailsSuggestedAutomationsItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end