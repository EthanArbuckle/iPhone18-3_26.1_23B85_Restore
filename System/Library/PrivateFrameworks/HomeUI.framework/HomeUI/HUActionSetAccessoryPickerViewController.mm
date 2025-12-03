@interface HUActionSetAccessoryPickerViewController
- (HUActionSetAccessoryPickerViewController)initWithActionSetBuilder:(id)builder delegate:(id)delegate;
- (HUActionSetAccessoryPickerViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
- (id)listContentConfigurationForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)cancelWithSender:(id)sender;
- (void)doneWithSender:(id)sender;
- (void)viewDidLoad;
@end

@implementation HUActionSetAccessoryPickerViewController

- (HUActionSetAccessoryPickerViewController)initWithActionSetBuilder:(id)builder delegate:(id)delegate
{
  builderCopy = builder;
  swift_unknownObjectRetain();
  return ActionSetAccessoryPickerViewController.init(actionSetBuilder:delegate:)(builderCopy);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20D026ED0();
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  selfCopy = self;
  v6 = sub_20D027B44(moduleCopy);

  return v6;
}

- (void)cancelWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
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

- (void)doneWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20D027290();

  __swift_destroy_boxed_opaque_existential_1(&v5);
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
      v22 = type metadata accessor for ActionSetAccessoryPickerViewController();
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

- (HUActionSetAccessoryPickerViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
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