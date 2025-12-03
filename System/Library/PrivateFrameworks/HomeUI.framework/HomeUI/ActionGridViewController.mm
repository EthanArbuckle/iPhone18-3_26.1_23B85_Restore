@interface ActionGridViewController
- (BOOL)allowsEditing;
- (BOOL)hasDetailsActionForPresentationCoordinator:(id)coordinator item:(id)item;
- (BOOL)presentationCoordinator:(id)coordinator shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)location view:(id)view;
- (BOOL)presentationCoordinator:(id)coordinator shouldBeginPresentationWithContext:(id)context;
- (NSArray)allowlistedAccessories;
- (NSArray)denylistedAccessories;
- (_TtC6HomeUI24ActionGridViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)detailsViewControllerForPresentationCoordinator:(id)coordinator item:(id)item;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
- (id)tappableAreaForPoint:(CGPoint)point inItem:(id)item atIndexPath:(id)path;
- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)for tileItem:(HFItem *)item completionHandler:(id)handler;
- (void)configureWithAccessoryControlViewController:(id)controller;
- (void)setAllowsEditing:(BOOL)editing;
- (void)willDismissWithViewController:(id)controller;
@end

@implementation ActionGridViewController

- (BOOL)allowsEditing
{
  v2 = self + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig;
  swift_beginAccess();
  return v2[16];
}

- (void)setAllowsEditing:(BOOL)editing
{
  selfCopy = self;
  sub_20D0DCEB4(editing);
}

- (NSArray)denylistedAccessories
{
  v3 = OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig;
  swift_beginAccess();
  if (*(&self->super.super.super.super.super.super.super.isa + v3))
  {
    sub_20D5663C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F040);
    v4 = sub_20D567A58();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)allowlistedAccessories
{
  v2 = self + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig;
  swift_beginAccess();
  if (*(v2 + 1))
  {
    sub_20D5663C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F040);
    v3 = sub_20D567A58();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  selfCopy = self;
  v6 = sub_20D0DE0D0(moduleCopy);

  return v6;
}

- (id)tappableAreaForPoint:(CGPoint)point inItem:(id)item atIndexPath:(id)path
{
  y = point.y;
  x = point.x;
  v9 = sub_20D5638C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  itemCopy = item;
  selfCopy = self;
  v15 = sub_20D0DE234(itemCopy, x, y);

  (*(v10 + 8))(v12, v9);

  return v15;
}

- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)for tileItem:(HFItem *)item completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = for;
  v13[3] = item;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_20D567C58();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20D5C8EF8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20D5C5200;
  v16[5] = v15;
  forCopy = for;
  itemCopy = item;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v11, &unk_20D5BCD00, v16);
}

- (void)configureWithAccessoryControlViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_20D0DE848(controllerCopy);
}

- (void)willDismissWithViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_20D0E0048();
}

- (BOOL)presentationCoordinator:(id)coordinator shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)location view:(id)view
{
  y = location.y;
  x = location.x;
  v10 = *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModuleController);
  if (!v10)
  {
    coordinatorCopy = coordinator;
    viewCopy = view;
    selfCopy = self;
    goto LABEL_5;
  }

  coordinatorCopy2 = coordinator;
  viewCopy2 = view;
  selfCopy2 = self;
  v14 = v10;
  v15 = sub_20CECF6B0();

  if (v15 == 2)
  {
LABEL_5:
    v20.receiver = self;
    v20.super_class = type metadata accessor for ActionGridViewController();
    v15 = [(HUControllableItemCollectionViewController *)&v20 presentationCoordinator:coordinator shouldBeginInteractivePresentationWithTouchLocation:view view:x, y];

    goto LABEL_6;
  }

LABEL_6:
  return v15 & 1;
}

- (BOOL)presentationCoordinator:(id)coordinator shouldBeginPresentationWithContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  selfCopy = self;
  v9 = sub_20D0DEC64(coordinatorCopy, contextCopy);

  return v9 & 1;
}

- (BOOL)hasDetailsActionForPresentationCoordinator:(id)coordinator item:(id)item
{
  v4 = *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModuleController);
  if (v4)
  {
    itemCopy = item;
    selfCopy = self;
    v8 = v4;
    v9 = sub_20CECAF8C(itemCopy);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (id)detailsViewControllerForPresentationCoordinator:(id)coordinator item:(id)item
{
  v4 = *(self + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModuleController);
  if (v4)
  {
    selfCopy = self;
    itemCopy = item;
    v7 = selfCopy;
    v8 = v4;
    v9 = sub_20CECB338(itemCopy);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (_TtC6HomeUI24ActionGridViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
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