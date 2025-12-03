@interface ContainedSpeakersItemManager
- (_TtC6HomeUI28ContainedSpeakersItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
@end

@implementation ContainedSpeakersItemManager

- (id)_buildItemProvidersForHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  sub_20CF8BF7C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
  v6 = sub_20D567A58();

  return v6;
}

- (id)_buildItemModulesForHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  sub_20CF8B8DC();

  sub_20CECF940(0, &qword_28111FFE0);
  v6 = sub_20D567A58();

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  sub_20D567D08();
  selfCopy = self;
  sub_20CF8BB30();

  sub_20CECF940(0, &unk_28111FFD0);
  v5 = sub_20D567A58();

  return v5;
}

- (_TtC6HomeUI28ContainedSpeakersItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end