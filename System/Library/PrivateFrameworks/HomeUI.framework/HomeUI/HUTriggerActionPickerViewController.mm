@interface HUTriggerActionPickerViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUTriggerActionPickerViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (HUTriggerActionPickerViewController)initWithTriggerBuilder:(id)a3 flow:(id)a4 delegate:(id)a5;
- (HUTriggerActionPickerViewController)initWithTriggerBuilder:(id)a3 mode:(unint64_t)a4 delegate:(id)a5;
- (HUTriggerEditorDelegate)delegate;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (id)listContentConfigurationForSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4;
- (void)cancelWithSender:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)homeWorkflowEditorViewController:(id)a3 didFinishWithHomeWorkflow:(id)a4 includesSecureAccessory:(BOOL)a5;
- (void)itemManagerDidUpdate:(id)a3;
- (void)nextWithSender:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUTriggerActionPickerViewController

- (HUTriggerEditorDelegate)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (HUTriggerActionPickerViewController)initWithTriggerBuilder:(id)a3 mode:(unint64_t)a4 delegate:(id)a5
{
  v9 = objc_allocWithZone(HUTriggerActionFlow);
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = [v9 initWithEditorMode_];
  v12 = [(HUTriggerActionPickerViewController *)self initWithTriggerBuilder:v10 flow:v11 delegate:a5];

  swift_unknownObjectRelease();
  return v12;
}

- (HUTriggerActionPickerViewController)initWithTriggerBuilder:(id)a3 flow:(id)a4 delegate:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  return TriggerActionPickerViewController.init(triggerBuilder:flow:delegate:)(v7, v8, a5);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20CF35A74();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TriggerActionPickerViewController();
  v4 = v7.receiver;
  [(HUItemCollectionViewController *)&v7 viewDidAppear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    if (([v5 isBeingDismissed] & 1) == 0)
    {
      sub_20CF364F4();
    }
  }

  sub_20CF366D4();
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
  sub_20CF35CE8(v10);

  (*(v7 + 8))(v9, v6);
  return swift_getObjCClassFromMetadata();
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20CF36008(v4);

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
  v13 = type metadata accessor for TriggerActionPickerViewController();
  v14.receiver = v11;
  v14.super_class = v13;
  [(HUItemCollectionViewController *)&v14 collectionView:v10 didSelectItemAtIndexPath:v12];

  sub_20CF366D4();
  (*(v7 + 8))(v9, v6);
}

- (void)cancelWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  [*(&v4->super.super.super.super.super.super.isa + OBJC_IVAR___HUTriggerActionPickerViewController_delegate) triggerEditor:v4 didFinishWithTriggerBuilder:0];
  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (void)nextWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20CF36A50();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (void)itemManagerDidUpdate:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TriggerActionPickerViewController();
  v4 = a3;
  v5 = v6.receiver;
  [(HUItemCollectionViewController *)&v6 itemManagerDidUpdate:v4];
  sub_20CF366D4();
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
      v22 = type metadata accessor for TriggerActionPickerViewController();
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

- (HUTriggerActionPickerViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
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

- (void)homeWorkflowEditorViewController:(id)a3 didFinishWithHomeWorkflow:(id)a4 includesSecureAccessory:(BOOL)a5
{
  v6 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUTriggerActionPickerViewController_triggerBuilder);
  v7 = a4;
  v9 = self;
  v8 = [v6 triggerActionSets];
  [v8 setHomeWorkflow_];

  sub_20CF36FE4();
}

@end