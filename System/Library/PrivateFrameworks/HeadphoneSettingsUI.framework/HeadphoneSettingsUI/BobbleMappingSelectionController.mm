@interface BobbleMappingSelectionController
- (_TtC19HeadphoneSettingsUI32BobbleMappingSelectionController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)listItemSelected:(id)selected;
@end

@implementation BobbleMappingSelectionController

- (_TtC19HeadphoneSettingsUI32BobbleMappingSelectionController)initWithNibName:(id)name bundle:(id)bundle
{
  MEMORY[0x1E69E5928](name);
  MEMORY[0x1E69E5928](bundle);
  if (name)
  {
    v6 = sub_1AC30A92C();
    v7 = v4;
    MEMORY[0x1E69E5920](name);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return BobbleMappingSelectionController.init(nibName:bundle:)(v8, v9, bundle);
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  viewCopy = view;
  pathCopy = path;
  v12 = sub_1AC3090EC();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](viewCopy);
  v13 = &v8 - v9;
  MEMORY[0x1E69E5928](v5);
  MEMORY[0x1E69E5928](pathCopy);
  MEMORY[0x1E69E5928](self);
  sub_1AC3090BC();
  v17 = sub_1AC2730DC(viewCopy, v13);
  (*(v10 + 8))(v13, v12);
  MEMORY[0x1E69E5920](pathCopy);
  MEMORY[0x1E69E5920](selfCopy);
  MEMORY[0x1E69E5920](viewCopy);
  v6 = v17;

  return v6;
}

- (void)listItemSelected:(id)selected
{
  selfCopy = self;
  selectedCopy = selected;
  v8 = sub_1AC3090EC();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v5 - v11;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C650) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](selectedCopy);
  v14 = &v5 - v13;
  MEMORY[0x1E69E5928](v3);
  v4 = MEMORY[0x1E69E5928](selfCopy);
  if (selectedCopy)
  {
    v7 = selectedCopy;
    v6 = selectedCopy;
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
  MEMORY[0x1E69E5920](selfCopy);
}

@end