@interface TriggerActionPickerViewController.ConvertToShortcutModuleController
- (BOOL)shouldShowHeaderForSection:(id)section;
- (Class)collectionCellClassForItem:(id)item;
- (_TtCC6HomeUI33TriggerActionPickerViewController33ConvertToShortcutModuleController)initWithModule:(id)module;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment;
- (id)displayedItemsInSection:(id)section;
- (unint64_t)didSelectItem:(id)item;
- (void)configureCell:(id)cell forItem:(id)item;
@end

@implementation TriggerActionPickerViewController.ConvertToShortcutModuleController

- (Class)collectionCellClassForItem:(id)item
{
  sub_20CECF940(0, &qword_28111FEA0);

  return swift_getObjCClassFromMetadata();
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment
{
  v6 = sub_20D567838();
  v8 = v7;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_20CFA44FC();
  v15[0] = 0;
  v15[1] = 0;
  v16 = 2;
  sub_20CEFA3C8(v6, v8, v15, environment);
  v12 = v11;

  [v12 contentInsets];
  [v12 setContentInsets_];
  swift_unknownObjectRelease();

  return v12;
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_20CFA46C4(itemCopy);

  return 0;
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  sub_20CFA4838(cellCopy, itemCopy);
}

- (id)displayedItemsInSection:(id)section
{
  sub_20D567838();
  selfCopy = self;
  module = [(HUItemModuleController *)selfCopy module];
  itemUpdater = [(HFItemModule *)module itemUpdater];

  if (itemUpdater)
  {
    v7 = sub_20D5677F8();
    v8 = [(HFItemUpdating *)itemUpdater displayedItemsInSectionWithIdentifier:v7];

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

- (BOOL)shouldShowHeaderForSection:(id)section
{
  module = [(HUItemModuleController *)self module];
  v4 = *(&module->_itemProviders + OBJC_IVAR____TtCC6HomeUI33TriggerActionPickerViewController23ConvertToShortcutModule_sectionHeader);
  sub_20D5663C8();

  if (v4)
  {
  }

  return v4 != 0;
}

- (_TtCC6HomeUI33TriggerActionPickerViewController33ConvertToShortcutModuleController)initWithModule:(id)module
{
  *(&self->super.super.isa + OBJC_IVAR____TtCC6HomeUI33TriggerActionPickerViewController33ConvertToShortcutModuleController____lazy_storage___collectionLayoutManager) = 0;
  v5.receiver = self;
  v5.super_class = _s33ConvertToShortcutModuleControllerCMa();
  return [(HUItemModuleController *)&v5 initWithModule:module];
}

@end