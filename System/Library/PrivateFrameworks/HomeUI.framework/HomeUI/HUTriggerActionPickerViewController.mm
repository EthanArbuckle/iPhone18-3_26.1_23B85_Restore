@interface HUTriggerActionPickerViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUTriggerActionPickerViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (HUTriggerActionPickerViewController)initWithTriggerBuilder:(id)builder flow:(id)flow delegate:(id)delegate;
- (HUTriggerActionPickerViewController)initWithTriggerBuilder:(id)builder mode:(unint64_t)mode delegate:(id)delegate;
- (HUTriggerEditorDelegate)delegate;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
- (id)listContentConfigurationForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)cancelWithSender:(id)sender;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)homeWorkflowEditorViewController:(id)controller didFinishWithHomeWorkflow:(id)workflow includesSecureAccessory:(BOOL)accessory;
- (void)itemManagerDidUpdate:(id)update;
- (void)nextWithSender:(id)sender;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUTriggerActionPickerViewController

- (HUTriggerEditorDelegate)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (HUTriggerActionPickerViewController)initWithTriggerBuilder:(id)builder mode:(unint64_t)mode delegate:(id)delegate
{
  v9 = objc_allocWithZone(HUTriggerActionFlow);
  builderCopy = builder;
  swift_unknownObjectRetain();
  initWithEditorMode_ = [v9 initWithEditorMode_];
  v12 = [(HUTriggerActionPickerViewController *)self initWithTriggerBuilder:builderCopy flow:initWithEditorMode_ delegate:delegate];

  swift_unknownObjectRelease();
  return v12;
}

- (HUTriggerActionPickerViewController)initWithTriggerBuilder:(id)builder flow:(id)flow delegate:(id)delegate
{
  builderCopy = builder;
  flowCopy = flow;
  swift_unknownObjectRetain();
  return TriggerActionPickerViewController.init(triggerBuilder:flow:delegate:)(builderCopy, flowCopy, delegate);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20CF35A74();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TriggerActionPickerViewController();
  v4 = v7.receiver;
  [(HUItemCollectionViewController *)&v7 viewDidAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    if (([navigationController isBeingDismissed] & 1) == 0)
    {
      sub_20CF364F4();
    }
  }

  sub_20CF366D4();
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
  sub_20CF35CE8(itemCopy);

  (*(v7 + 8))(v9, v6);
  return swift_getObjCClassFromMetadata();
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  selfCopy = self;
  v6 = sub_20CF36008(moduleCopy);

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
  v13 = type metadata accessor for TriggerActionPickerViewController();
  v14.receiver = selfCopy;
  v14.super_class = v13;
  [(HUItemCollectionViewController *)&v14 collectionView:viewCopy didSelectItemAtIndexPath:v12];

  sub_20CF366D4();
  (*(v7 + 8))(v9, v6);
}

- (void)cancelWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  [*(&selfCopy->super.super.super.super.super.super.isa + OBJC_IVAR___HUTriggerActionPickerViewController_delegate) triggerEditor:selfCopy didFinishWithTriggerBuilder:0];
  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (void)nextWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20CF36A50();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (void)itemManagerDidUpdate:(id)update
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TriggerActionPickerViewController();
  updateCopy = update;
  v5 = v6.receiver;
  [(HUItemCollectionViewController *)&v6 itemManagerDidUpdate:updateCopy];
  sub_20CF366D4();
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
      v22 = type metadata accessor for TriggerActionPickerViewController();
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

- (HUTriggerActionPickerViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
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

- (void)homeWorkflowEditorViewController:(id)controller didFinishWithHomeWorkflow:(id)workflow includesSecureAccessory:(BOOL)accessory
{
  v6 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUTriggerActionPickerViewController_triggerBuilder);
  workflowCopy = workflow;
  selfCopy = self;
  triggerActionSets = [v6 triggerActionSets];
  [triggerActionSets setHomeWorkflow_];

  sub_20CF36FE4();
}

@end