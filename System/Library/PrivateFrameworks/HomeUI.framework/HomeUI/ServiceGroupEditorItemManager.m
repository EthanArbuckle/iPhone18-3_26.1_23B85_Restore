@interface ServiceGroupEditorItemManager
- (_TtC6HomeUI29ServiceGroupEditorItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
@end

@implementation ServiceGroupEditorItemManager

- (id)_buildItemProvidersForHome:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20D11F3CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
  v6 = sub_20D567A58();

  return v6;
}

- (id)_buildItemModulesForHome:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20D11EBAC();

  sub_20CECF940(0, &qword_28111FFE0);
  v6 = sub_20D567A58();

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  sub_20D567D08();
  v4 = self;
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
  v5 = self;
  v6 = [v4 home];
  v7 = [objc_opt_self() futureWithResult_];

  return v7;
}

- (_TtC6HomeUI29ServiceGroupEditorItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end