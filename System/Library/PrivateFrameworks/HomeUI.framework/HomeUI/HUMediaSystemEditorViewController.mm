@interface HUMediaSystemEditorViewController
- (HUMediaSystemEditorViewController)initWithAccessories:(id)accessories home:(id)home;
- (HUMediaSystemEditorViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (HUMediaSystemEditorViewController)initWithMediaSystemBuilder:(id)builder staticAccessories:(id)accessories;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)createMediaSystem;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
- (id)listContentConfigurationForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)cancelWithSender:(id)sender;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)createMediaSystemWithAccessory:(id)accessory;
- (void)doneWithSender:(id)sender;
- (void)mediaSystemEditorHelper:(id)helper didAbortForAccessoryNeedingUpdate:(id)update;
- (void)mediaSystemEditorHelper:(id)helper didModifyMediaSystemBuilder:(id)builder;
- (void)mediaSystemEditorHelper:(id)helper needsToPresentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)mediaSystemEditorHelperDidBeginCommitting:(id)committing;
- (void)mediaSystemEditorHelperDidEndCommitting:(id)committing;
- (void)viewDidLoad;
@end

@implementation HUMediaSystemEditorViewController

- (HUMediaSystemEditorViewController)initWithAccessories:(id)accessories home:(id)home
{
  sub_20CECF940(0, &qword_28111FFF0);
  sub_20CEF7F74(&qword_27C820660, &qword_28111FFF0);
  v5 = sub_20D567D08();
  MediaSystemEditorViewController.init(accessories:home:)(v5, home);
  return result;
}

- (HUMediaSystemEditorViewController)initWithMediaSystemBuilder:(id)builder staticAccessories:(id)accessories
{
  sub_20CECF940(0, &qword_28111FFF0);
  sub_20CEF7F74(&qword_27C820660, &qword_28111FFF0);
  v5 = sub_20D567D08();
  return MediaSystemEditorViewController.init(mediaSystemBuilder:staticAccessories:)(builder, v5);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20D114B0C();
}

- (void)createMediaSystemWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  selfCopy = self;
  v5 = sub_20D114074();
  createMediaSystemWithAccessory_ = [v5 createMediaSystemWithAccessory_];

  if (createMediaSystemWithAccessory_)
  {
    asGeneric = [createMediaSystemWithAccessory_ asGeneric];
    v8 = sub_20D115150(asGeneric);
  }
}

- (id)createMediaSystem
{
  selfCopy = self;
  v3 = sub_20D114074();
  createMediaSystem = [v3 createMediaSystem];

  asGeneric = [createMediaSystem asGeneric];
  v6 = sub_20D115150(asGeneric);

  return v6;
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  selfCopy = self;
  v6 = sub_20D117284(moduleCopy);

  return v6;
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
  v13 = type metadata accessor for MediaSystemEditorViewController();
  v14.receiver = selfCopy;
  v14.super_class = v13;
  [(HUItemCollectionViewController *)&v14 collectionView:viewCopy didSelectItemAtIndexPath:v12];

  sub_20D1159C0();
  (*(v7 + 8))(v9, v6);
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
      v22 = type metadata accessor for MediaSystemEditorViewController();
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

- (HUMediaSystemEditorViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
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

- (void)doneWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  v5 = sub_20D114074();
  createMediaSystem = [v5 createMediaSystem];

  asGeneric = [createMediaSystem asGeneric];
  v8 = sub_20D115150(asGeneric);

  __swift_destroy_boxed_opaque_existential_1(&v9);
}

- (void)mediaSystemEditorHelperDidBeginCommitting:(id)committing
{
  committingCopy = committing;
  selfCopy = self;
  _s6HomeUI31MediaSystemEditorViewControllerC05mediadE24HelperDidBeginCommittingyySo07HUMediadeI0CF_0();
}

- (void)mediaSystemEditorHelperDidEndCommitting:(id)committing
{
  selfCopy = self;
  sub_20D114D80();
  view = [(HUMediaSystemEditorViewController *)selfCopy view];
  if (view)
  {
    v4 = view;
    [view setUserInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }
}

- (void)mediaSystemEditorHelper:(id)helper didModifyMediaSystemBuilder:(id)builder
{
  selfCopy = self;
  itemManager = [(HUItemCollectionViewController *)selfCopy itemManager];
  [(HFItemManager *)itemManager recalculateVisibilityAndSortAllItems];
}

- (void)mediaSystemEditorHelper:(id)helper needsToPresentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v9 = _Block_copy(completion);
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
    controllerCopy = controller;
    selfCopy = self;
  }

  else
  {
    controllerCopy2 = controller;
    selfCopy2 = self;
    v11 = 0;
  }

  [(HUMediaSystemEditorViewController *)self presentViewController:controller animated:animatedCopy completion:v11];

  sub_20CEC8164(v9);
  _Block_release(v11);
}

- (void)mediaSystemEditorHelper:(id)helper didAbortForAccessoryNeedingUpdate:(id)update
{
  helperCopy = helper;
  updateCopy = update;
  selfCopy = self;
  sub_20D117548(updateCopy);
}

@end