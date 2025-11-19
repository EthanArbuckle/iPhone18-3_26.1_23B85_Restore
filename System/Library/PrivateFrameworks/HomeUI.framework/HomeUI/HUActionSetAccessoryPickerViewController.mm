@interface HUActionSetAccessoryPickerViewController
- (HUActionSetAccessoryPickerViewController)initWithActionSetBuilder:(id)a3 delegate:(id)a4;
- (HUActionSetAccessoryPickerViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (id)listContentConfigurationForSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4;
- (void)cancelWithSender:(id)a3;
- (void)doneWithSender:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUActionSetAccessoryPickerViewController

- (HUActionSetAccessoryPickerViewController)initWithActionSetBuilder:(id)a3 delegate:(id)a4
{
  v4 = a3;
  swift_unknownObjectRetain();
  return ActionSetAccessoryPickerViewController.init(actionSetBuilder:delegate:)(v4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20D026ED0();
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20D027B44(v4);

  return v6;
}

- (void)cancelWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong actionSetAccessoryPickerDidFinish_];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(&v6);
}

- (void)doneWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20D027290();

  __swift_destroy_boxed_opaque_existential_1(&v5);
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
      v22 = type metadata accessor for ActionSetAccessoryPickerViewController();
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

- (HUActionSetAccessoryPickerViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
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