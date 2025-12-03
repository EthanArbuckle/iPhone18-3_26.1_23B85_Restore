@interface TriggerActionPickerViewController.ConvertToShortcutModule
- (_TtCC6HomeUI33TriggerActionPickerViewController23ConvertToShortcutModule)initWithItemUpdater:(id)updater;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
@end

@implementation TriggerActionPickerViewController.ConvertToShortcutModule

- (id)buildItemProviders
{
  selfCopy = self;
  v3 = sub_20CFA3C00();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
    sub_20CEF9114();
    v4 = sub_20D567CD8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v4 = sub_20D567D08();
  selfCopy = self;
  sub_20CFA4060(v4);

  sub_20CECF940(0, &unk_28111FFD0);
  v6 = sub_20D567A58();

  return v6;
}

- (_TtCC6HomeUI33TriggerActionPickerViewController23ConvertToShortcutModule)initWithItemUpdater:(id)updater
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end