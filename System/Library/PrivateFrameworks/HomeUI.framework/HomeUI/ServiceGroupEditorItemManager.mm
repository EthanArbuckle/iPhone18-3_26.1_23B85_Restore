@interface ServiceGroupEditorItemManager
- (_TtC6HomeUI29ServiceGroupEditorItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
@end

@implementation ServiceGroupEditorItemManager

- (id)_buildItemProvidersForHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  sub_20D11F3CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
  v6 = sub_20D567A58();

  return v6;
}

- (id)_buildItemModulesForHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  sub_20D11EBAC();

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
  sub_20D11EE80();

  sub_20CECF940(0, &unk_28111FFD0);
  v5 = sub_20D567A58();

  return v5;
}

- (id)_homeFuture
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_selectionController);
  swift_beginAccess();
  v4 = *(v3 + 16);
  selfCopy = self;
  home = [v4 home];
  futureWithResult_ = [objc_opt_self() futureWithResult_];

  return futureWithResult_;
}

- (_TtC6HomeUI29ServiceGroupEditorItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end