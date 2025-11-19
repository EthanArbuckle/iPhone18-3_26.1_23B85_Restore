@interface ActionGridViewController
- (BOOL)allowsEditing;
- (BOOL)hasDetailsActionForPresentationCoordinator:(id)a3 item:(id)a4;
- (BOOL)presentationCoordinator:(id)a3 shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)a4 view:(id)a5;
- (BOOL)presentationCoordinator:(id)a3 shouldBeginPresentationWithContext:(id)a4;
- (NSArray)allowlistedAccessories;
- (NSArray)denylistedAccessories;
- (_TtC6HomeUI24ActionGridViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)detailsViewControllerForPresentationCoordinator:(id)a3 item:(id)a4;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (id)tappableAreaForPoint:(CGPoint)a3 inItem:(id)a4 atIndexPath:(id)a5;
- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)a3 tileItem:(HFItem *)a4 completionHandler:(id)a5;
- (void)configureWithAccessoryControlViewController:(id)a3;
- (void)setAllowsEditing:(BOOL)a3;
- (void)willDismissWithViewController:(id)a3;
@end

@implementation ActionGridViewController

- (BOOL)allowsEditing
{
  v2 = self + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig;
  swift_beginAccess();
  return v2[16];
}

- (void)setAllowsEditing:(BOOL)a3
{
  v4 = self;
  sub_20D0DCEB4(a3);
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

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20D0DE0D0(v4);

  return v6;
}

- (id)tappableAreaForPoint:(CGPoint)a3 inItem:(id)a4 atIndexPath:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = sub_20D5638C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v13 = a4;
  v14 = self;
  v15 = sub_20D0DE234(v13, x, y);

  (*(v10 + 8))(v12, v9);

  return v15;
}

- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)a3 tileItem:(HFItem *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
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
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_20D11C1C8(0, 0, v11, &unk_20D5BCD00, v16);
}

- (void)configureWithAccessoryControlViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20D0DE848(v4);
}

- (void)willDismissWithViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20D0E0048();
}

- (BOOL)presentationCoordinator:(id)a3 shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)a4 view:(id)a5
{
  y = a4.y;
  x = a4.x;
  v10 = *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModuleController);
  if (!v10)
  {
    v16 = a3;
    v17 = a5;
    v18 = self;
    goto LABEL_5;
  }

  v11 = a3;
  v12 = a5;
  v13 = self;
  v14 = v10;
  v15 = sub_20CECF6B0();

  if (v15 == 2)
  {
LABEL_5:
    v20.receiver = self;
    v20.super_class = type metadata accessor for ActionGridViewController();
    v15 = [(HUControllableItemCollectionViewController *)&v20 presentationCoordinator:a3 shouldBeginInteractivePresentationWithTouchLocation:a5 view:x, y];

    goto LABEL_6;
  }

LABEL_6:
  return v15 & 1;
}

- (BOOL)presentationCoordinator:(id)a3 shouldBeginPresentationWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_20D0DEC64(v6, v7);

  return v9 & 1;
}

- (BOOL)hasDetailsActionForPresentationCoordinator:(id)a3 item:(id)a4
{
  v4 = *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModuleController);
  if (v4)
  {
    v6 = a4;
    v7 = self;
    v8 = v4;
    v9 = sub_20CECAF8C(v6);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (id)detailsViewControllerForPresentationCoordinator:(id)a3 item:(id)a4
{
  v4 = *(self + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModuleController);
  if (v4)
  {
    v5 = self;
    v6 = a4;
    v7 = v5;
    v8 = v4;
    v9 = sub_20CECB338(v6);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (_TtC6HomeUI24ActionGridViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
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