@interface SharingRecipeTextActivityItemSource
- (_TtC8NewsFeed35SharingRecipeTextActivityItemSource)init;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation SharingRecipeTextActivityItemSource

- (id)activityViewControllerPlaceholderItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  SharingRecipeTextActivityItemSource.activityViewControllerPlaceholderItem(_:)(v8);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = sub_1D72646AC();
  __swift_destroy_boxed_opaque_existential_1(v8);

  return v6;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  SharingRecipeTextActivityItemSource.activityViewController(_:itemForActivityType:)(type, v17);

  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x1EEE9AC00](v10, v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_1D72646AC();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  sub_1D607A9A8(type);

  v9 = sub_1D726203C();

  return v9;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  _s8NewsFeed35SharingRecipeTextActivityItemSourceC22activityViewController_010subjectForF4TypeSSSo010UIActivityjK0C_So0oN0aSgtF_0();

  v9 = sub_1D726203C();

  return v9;
}

- (_TtC8NewsFeed35SharingRecipeTextActivityItemSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end