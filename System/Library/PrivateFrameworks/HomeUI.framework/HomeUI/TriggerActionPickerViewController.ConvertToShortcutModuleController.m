@interface TriggerActionPickerViewController.ConvertToShortcutModuleController
- (BOOL)shouldShowHeaderForSection:(id)a3;
- (Class)collectionCellClassForItem:(id)a3;
- (_TtCC6HomeUI33TriggerActionPickerViewController33ConvertToShortcutModuleController)initWithModule:(id)a3;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4;
- (id)displayedItemsInSection:(id)a3;
- (unint64_t)didSelectItem:(id)a3;
- (void)configureCell:(id)a3 forItem:(id)a4;
@end

@implementation TriggerActionPickerViewController.ConvertToShortcutModuleController

- (Class)collectionCellClassForItem:(id)a3
{
  sub_20CECF940(0, &qword_28111FEA0);

  return swift_getObjCClassFromMetadata();
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4
{
  v6 = sub_20D567838();
  v8 = v7;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = sub_20CFA44FC();
  v15[0] = 0;
  v15[1] = 0;
  v16 = 2;
  sub_20CEFA3C8(v6, v8, v15, a4);
  v12 = v11;

  [v12 contentInsets];
  [v12 setContentInsets_];
  swift_unknownObjectRelease();

  return v12;
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20CFA46C4(v4);

  return 0;
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20CFA4838(v6, v7);
}

- (id)displayedItemsInSection:(id)a3
{
  sub_20D567838();
  v4 = self;
  v5 = [(HUItemModuleController *)v4 module];
  v6 = [(HFItemModule *)v5 itemUpdater];

  if (v6)
  {
    v7 = sub_20D5677F8();
    v8 = [(HFItemUpdating *)v6 displayedItemsInSectionWithIdentifier:v7];

    swift_unknownObjectRelease();
    sub_20CECF940(0, &qword_281120AC0);
    sub_20D567A78();
  }

  else
  {
  }

  sub_20CECF940(0, &qword_281120AC0);
  v9 = sub_20D567A58();

  return v9;
}

- (BOOL)shouldShowHeaderForSection:(id)a3
{
  v3 = [(HUItemModuleController *)self module];
  v4 = *(&v3->_itemProviders + OBJC_IVAR____TtCC6HomeUI33TriggerActionPickerViewController23ConvertToShortcutModule_sectionHeader);
  sub_20D5663C8();

  if (v4)
  {
  }

  return v4 != 0;
}

- (_TtCC6HomeUI33TriggerActionPickerViewController33ConvertToShortcutModuleController)initWithModule:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtCC6HomeUI33TriggerActionPickerViewController33ConvertToShortcutModuleController____lazy_storage___collectionLayoutManager) = 0;
  v5.receiver = self;
  v5.super_class = _s33ConvertToShortcutModuleControllerCMa();
  return [(HUItemModuleController *)&v5 initWithModule:a3];
}

@end