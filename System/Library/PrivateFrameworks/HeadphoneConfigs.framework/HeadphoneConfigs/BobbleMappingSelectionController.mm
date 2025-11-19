@interface BobbleMappingSelectionController
- (_TtC16HeadphoneConfigs32BobbleMappingSelectionController)initWithCoder:(id)a3;
- (_TtC16HeadphoneConfigs32BobbleMappingSelectionController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)listItemSelected:(id)a3;
@end

@implementation BobbleMappingSelectionController

- (_TtC16HeadphoneConfigs32BobbleMappingSelectionController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_25121179C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return BobbleMappingSelectionController.init(nibName:bundle:)(v5, v7, a4);
}

- (_TtC16HeadphoneConfigs32BobbleMappingSelectionController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_mapingUseCase) = 2;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController____lazy_storage___headGestureMappingSection) = 0;
  result = sub_251211C4C();
  __break(1u);
  return result;
}

- (id)specifiers
{
  v2 = self;
  v3 = BobbleMappingSelectionController.specifiers()();

  if (v3)
  {
    v4 = sub_25121186C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_251210E3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251210E0C();
  v11 = a3;
  v12 = self;
  v13 = BobbleMappingSelectionController.tableView(_:cellForRowAt:)(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)listItemSelected:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4230D8, &qword_251219A98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  if (a3)
  {
    sub_251210E0C();
    v9 = sub_251210E3C();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_251210E3C();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = self;
  BobbleMappingSelectionController.listItemSelected(_:)(v8);

  sub_2511CCD34(v8, &qword_27F4230D8, &qword_251219A98);
}

@end