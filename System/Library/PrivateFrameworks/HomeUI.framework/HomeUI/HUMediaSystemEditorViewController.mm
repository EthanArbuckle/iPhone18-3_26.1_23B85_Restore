@interface HUMediaSystemEditorViewController
- (HUMediaSystemEditorViewController)initWithAccessories:(id)a3 home:(id)a4;
- (HUMediaSystemEditorViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (HUMediaSystemEditorViewController)initWithMediaSystemBuilder:(id)a3 staticAccessories:(id)a4;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)createMediaSystem;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (id)listContentConfigurationForSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4;
- (void)cancelWithSender:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)createMediaSystemWithAccessory:(id)a3;
- (void)doneWithSender:(id)a3;
- (void)mediaSystemEditorHelper:(id)a3 didAbortForAccessoryNeedingUpdate:(id)a4;
- (void)mediaSystemEditorHelper:(id)a3 didModifyMediaSystemBuilder:(id)a4;
- (void)mediaSystemEditorHelper:(id)a3 needsToPresentViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)mediaSystemEditorHelperDidBeginCommitting:(id)a3;
- (void)mediaSystemEditorHelperDidEndCommitting:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUMediaSystemEditorViewController

- (HUMediaSystemEditorViewController)initWithAccessories:(id)a3 home:(id)a4
{
  sub_20CECF940(0, &qword_28111FFF0);
  sub_20CEF7F74(&qword_27C820660, &qword_28111FFF0);
  v5 = sub_20D567D08();
  MediaSystemEditorViewController.init(accessories:home:)(v5, a4);
  return result;
}

- (HUMediaSystemEditorViewController)initWithMediaSystemBuilder:(id)a3 staticAccessories:(id)a4
{
  sub_20CECF940(0, &qword_28111FFF0);
  sub_20CEF7F74(&qword_27C820660, &qword_28111FFF0);
  v5 = sub_20D567D08();
  return MediaSystemEditorViewController.init(mediaSystemBuilder:staticAccessories:)(a3, v5);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20D114B0C();
}

- (void)createMediaSystemWithAccessory:(id)a3
{
  v4 = a3;
  v9 = self;
  v5 = sub_20D114074();
  v6 = [v5 createMediaSystemWithAccessory_];

  if (v6)
  {
    v7 = [v6 asGeneric];
    v8 = sub_20D115150(v7);
  }
}

- (id)createMediaSystem
{
  v2 = self;
  v3 = sub_20D114074();
  v4 = [v3 createMediaSystem];

  v5 = [v4 asGeneric];
  v6 = sub_20D115150(v5);

  return v6;
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20D117284(v4);

  return v6;
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
  v13 = type metadata accessor for MediaSystemEditorViewController();
  v14.receiver = v11;
  v14.super_class = v13;
  [(HUItemCollectionViewController *)&v14 collectionView:v10 didSelectItemAtIndexPath:v12];

  sub_20D1159C0();
  (*(v7 + 8))(v9, v6);
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
      v22 = type metadata accessor for MediaSystemEditorViewController();
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

- (HUMediaSystemEditorViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
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

- (void)doneWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  v5 = sub_20D114074();
  v6 = [v5 createMediaSystem];

  v7 = [v6 asGeneric];
  v8 = sub_20D115150(v7);

  __swift_destroy_boxed_opaque_existential_1(&v9);
}

- (void)mediaSystemEditorHelperDidBeginCommitting:(id)a3
{
  v4 = a3;
  v5 = self;
  _s6HomeUI31MediaSystemEditorViewControllerC05mediadE24HelperDidBeginCommittingyySo07HUMediadeI0CF_0();
}

- (void)mediaSystemEditorHelperDidEndCommitting:(id)a3
{
  v5 = self;
  sub_20D114D80();
  v3 = [(HUMediaSystemEditorViewController *)v5 view];
  if (v3)
  {
    v4 = v3;
    [v3 setUserInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }
}

- (void)mediaSystemEditorHelper:(id)a3 didModifyMediaSystemBuilder:(id)a4
{
  v5 = self;
  v4 = [(HUItemCollectionViewController *)v5 itemManager];
  [(HFItemManager *)v4 recalculateVisibilityAndSortAllItems];
}

- (void)mediaSystemEditorHelper:(id)a3 needsToPresentViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v9 = _Block_copy(a6);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_20D117828;
    v16[4] = sub_20D117828;
    v16[5] = v10;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_20CFFFE8C;
    v16[3] = &block_descriptor_28_1;
    v11 = _Block_copy(v16);
    v12 = a4;
    v13 = self;
  }

  else
  {
    v14 = a4;
    v15 = self;
    v11 = 0;
  }

  [(HUMediaSystemEditorViewController *)self presentViewController:a4 animated:v6 completion:v11];

  sub_20CEC8164(v9);
  _Block_release(v11);
}

- (void)mediaSystemEditorHelper:(id)a3 didAbortForAccessoryNeedingUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20D117548(v7);
}

@end