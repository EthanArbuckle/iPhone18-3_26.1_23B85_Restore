@interface HUServiceGroupEditorViewController
+ (id)forCreatingNewServiceGroupWithServices:(id)a3 inHome:(id)a4;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)shouldShowHeaderForSection:(id)a3;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUServiceGroupEditorViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)displayedItemsInSection:(id)a3;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4;
- (id)listContentConfigurationForSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4;
- (void)cancelWithSender:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)doneWithSender:(id)a3;
- (void)itemManagerDidUpdate:(id)a3;
- (void)textDidChange:(id)a3 forTextField:(id)a4 item:(id)a5;
- (void)textFieldDidEndEditing:(id)a3 item:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HUServiceGroupEditorViewController

+ (id)forCreatingNewServiceGroupWithServices:(id)a3 inHome:(id)a4
{
  sub_20CECF940(0, &qword_27C81AEC0);
  v5 = sub_20D567A78();
  v6 = a4;
  v7 = _s6HomeUI32ServiceGroupEditorViewControllerC014forCreatingNewcD04with2inACXDSaySo9HMServiceCG_So6HMHomeCtFZ_0(v5, v6);

  return v7;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20CED1564();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_20CED17C0(a3);
}

- (void)doneWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20CED1BA4(v5);

  __swift_destroy_boxed_opaque_existential_1(v5);
}

- (void)cancelWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = [Strong finishPresentation:v4 animated:1];

    swift_unknownObjectRelease();
    v4 = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(v7);
}

- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_20CED257C(a3, a4);
  swift_unknownObjectRelease();

  return v8;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v10 = a3;
  v11 = self;
  sub_20CED26C8(v10);

  (*(v7 + 8))(v9, v6);
  return swift_getObjCClassFromMetadata();
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20CED3BE0(v4);

  return v6;
}

- (void)textDidChange:(id)a3 forTextField:(id)a4 item:(id)a5
{
  v6 = sub_20D567838();
  v7 = (self + OBJC_IVAR___HUServiceGroupEditorViewController_editingName);
  *v7 = v6;
  v7[1] = v8;
  v9 = self;

  sub_20D5663C8();
  sub_20CED18F4();
}

- (void)textFieldDidEndEditing:(id)a3 item:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20CED3DA4(v6);
}

- (void)itemManagerDidUpdate:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ServiceGroupEditorViewController();
  v4 = a3;
  v5 = v6.receiver;
  [(HUItemCollectionViewController *)&v6 itemManagerDidUpdate:v4];
  sub_20CED18F4();
}

- (id)listContentConfigurationForSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4
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
    v18 = a3;
    v19 = self;
  }

  else
  {
    v15 = sub_20D568BF8();
    v16 = a3;
    v17 = self;

    if ((v15 & 1) == 0)
    {
      v21 = sub_20D563868();
      v22 = type metadata accessor for ServiceGroupEditorViewController();
      v24.receiver = v17;
      v24.super_class = v22;
      v20 = [(HUItemCollectionViewController *)&v24 listContentConfigurationForSupplementaryElementOfKind:v16 atIndexPath:v21];

      self = v16;
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v10 = a3;
  v11 = self;
  v12 = sub_20D563868();
  v13 = type metadata accessor for ServiceGroupEditorViewController();
  v14.receiver = v11;
  v14.super_class = v13;
  [(HUItemCollectionViewController *)&v14 collectionView:v10 didSelectItemAtIndexPath:v12];

  sub_20CED18F4();
  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_20CED3FAC();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (id)displayedItemsInSection:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(HUItemCollectionViewController *)v5 itemManager];
  v7 = [(HUItemCollectionViewController *)v5 itemManager];
  v8 = [(HFItemManager *)v7 sectionIndexForDisplayedSectionIdentifier:v4];

  v9 = [(HFItemManager *)v6 displayedItemsInSection:v8];
  if (!v9)
  {
    sub_20CECF940(0, &qword_281120AC0);
    sub_20D567A78();
    v9 = sub_20D567A58();
  }

  return v9;
}

- (BOOL)shouldShowHeaderForSection:(id)a3
{
  sub_20D567838();
  v4 = self;
  v5 = sub_20CED3114();

  return v5;
}

- (HUServiceGroupEditorViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end