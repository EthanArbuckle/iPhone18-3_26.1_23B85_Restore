@interface HUServiceGroupEditorViewController
+ (id)forCreatingNewServiceGroupWithServices:(id)services inHome:(id)home;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)shouldShowHeaderForSection:(id)section;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUServiceGroupEditorViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)displayedItemsInSection:(id)section;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment;
- (id)listContentConfigurationForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)cancelWithSender:(id)sender;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)doneWithSender:(id)sender;
- (void)itemManagerDidUpdate:(id)update;
- (void)textDidChange:(id)change forTextField:(id)field item:(id)item;
- (void)textFieldDidEndEditing:(id)editing item:(id)item;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HUServiceGroupEditorViewController

+ (id)forCreatingNewServiceGroupWithServices:(id)services inHome:(id)home
{
  sub_20CECF940(0, &qword_27C81AEC0);
  v5 = sub_20D567A78();
  homeCopy = home;
  v7 = _s6HomeUI32ServiceGroupEditorViewControllerC014forCreatingNewcD04with2inACXDSaySo9HMServiceCG_So6HMHomeCtFZ_0(v5, homeCopy);

  return v7;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20CED1564();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20CED17C0(appear);
}

- (void)doneWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20CED1BA4(v5);

  __swift_destroy_boxed_opaque_existential_1(v5);
}

- (void)cancelWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = [Strong finishPresentation:selfCopy animated:1];

    swift_unknownObjectRelease();
    selfCopy = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(v7);
}

- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_20CED257C(section, environment);
  swift_unknownObjectRelease();

  return v8;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  itemCopy = item;
  selfCopy = self;
  sub_20CED26C8(itemCopy);

  (*(v7 + 8))(v9, v6);
  return swift_getObjCClassFromMetadata();
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  selfCopy = self;
  v6 = sub_20CED3BE0(moduleCopy);

  return v6;
}

- (void)textDidChange:(id)change forTextField:(id)field item:(id)item
{
  v6 = sub_20D567838();
  v7 = (self + OBJC_IVAR___HUServiceGroupEditorViewController_editingName);
  *v7 = v6;
  v7[1] = v8;
  selfCopy = self;

  sub_20D5663C8();
  sub_20CED18F4();
}

- (void)textFieldDidEndEditing:(id)editing item:(id)item
{
  editingCopy = editing;
  itemCopy = item;
  selfCopy = self;
  sub_20CED3DA4(editingCopy);
}

- (void)itemManagerDidUpdate:(id)update
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ServiceGroupEditorViewController();
  updateCopy = update;
  v5 = v6.receiver;
  [(HUItemCollectionViewController *)&v6 itemManagerDidUpdate:updateCopy];
  sub_20CED18F4();
}

- (id)listContentConfigurationForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D567838();
  v12 = v11;
  sub_20D563878();
  if (v10 == sub_20D567838() && v12 == v13)
  {
    kindCopy = kind;
    selfCopy = self;
  }

  else
  {
    v15 = sub_20D568BF8();
    kindCopy2 = kind;
    selfCopy2 = self;

    if ((v15 & 1) == 0)
    {
      v21 = sub_20D563868();
      v22 = type metadata accessor for ServiceGroupEditorViewController();
      v24.receiver = selfCopy2;
      v24.super_class = v22;
      v20 = [(HUItemCollectionViewController *)&v24 listContentConfigurationForSupplementaryElementOfKind:kindCopy2 atIndexPath:v21];

      self = kindCopy2;
      goto LABEL_12;
    }
  }

  if (qword_27C81A1D0 != -1)
  {
    swift_once();
  }

  v20 = qword_27C81C340;
LABEL_12:

  (*(v7 + 8))(v9, v6);

  return v20;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_20D563868();
  v13 = type metadata accessor for ServiceGroupEditorViewController();
  v14.receiver = selfCopy;
  v14.super_class = v13;
  [(HUItemCollectionViewController *)&v14 collectionView:viewCopy didSelectItemAtIndexPath:v12];

  sub_20CED18F4();
  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_20CED3FAC();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (id)displayedItemsInSection:(id)section
{
  sectionCopy = section;
  selfCopy = self;
  itemManager = [(HUItemCollectionViewController *)selfCopy itemManager];
  itemManager2 = [(HUItemCollectionViewController *)selfCopy itemManager];
  v8 = [(HFItemManager *)itemManager2 sectionIndexForDisplayedSectionIdentifier:sectionCopy];

  v9 = [(HFItemManager *)itemManager displayedItemsInSection:v8];
  if (!v9)
  {
    sub_20CECF940(0, &qword_281120AC0);
    sub_20D567A78();
    v9 = sub_20D567A58();
  }

  return v9;
}

- (BOOL)shouldShowHeaderForSection:(id)section
{
  sub_20D567838();
  selfCopy = self;
  v5 = sub_20CED3114();

  return v5;
}

- (HUServiceGroupEditorViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)manager
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end