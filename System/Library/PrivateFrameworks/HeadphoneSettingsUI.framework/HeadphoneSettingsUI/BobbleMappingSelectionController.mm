@interface BobbleMappingSelectionController
- (_TtC19HeadphoneSettingsUI32BobbleMappingSelectionController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)listItemSelected:(id)a3;
@end

@implementation BobbleMappingSelectionController

- (_TtC19HeadphoneSettingsUI32BobbleMappingSelectionController)initWithNibName:(id)a3 bundle:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  if (a3)
  {
    v6 = sub_1AC30A92C();
    v7 = v4;
    MEMORY[0x1E69E5920](a3);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return BobbleMappingSelectionController.init(nibName:bundle:)(v8, v9, a4);
}

- (id)specifiers
{
  MEMORY[0x1E69E5928](self);
  v6 = sub_1AC2720F8();
  MEMORY[0x1E69E5920](self);
  if (v6)
  {
    v3 = sub_1AC30AAFC();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v15 = self;
  v16 = a3;
  v14 = a4;
  v12 = sub_1AC3090EC();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v16);
  v13 = &v8 - v9;
  MEMORY[0x1E69E5928](v5);
  MEMORY[0x1E69E5928](v14);
  MEMORY[0x1E69E5928](self);
  sub_1AC3090BC();
  v17 = sub_1AC2730DC(v16, v13);
  (*(v10 + 8))(v13, v12);
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v16);
  v6 = v17;

  return v6;
}

- (void)listItemSelected:(id)a3
{
  v15 = self;
  v16 = a3;
  v8 = sub_1AC3090EC();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v5 - v11;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C650) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v16);
  v14 = &v5 - v13;
  MEMORY[0x1E69E5928](v3);
  v4 = MEMORY[0x1E69E5928](v15);
  if (v16)
  {
    v7 = v16;
    v6 = v16;
    sub_1AC3090BC();
    (*(v9 + 32))(v14, v12, v8);
    (*(v9 + 56))(v14, 0, 1, v8);
    MEMORY[0x1E69E5920](v6);
  }

  else
  {
    (*(v9 + 56))(v14, 1, 1, v8, v4);
  }

  sub_1AC273AA0(v14);
  sub_1AC274B68(v14);
  MEMORY[0x1E69E5920](v15);
}

@end