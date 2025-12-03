@interface SharingTagTextActivityItemSource
- (_TtC8NewsFeed32SharingTagTextActivityItemSource)init;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation SharingTagTextActivityItemSource

- (id)activityViewControllerPlaceholderItem:(id)item
{

  v3 = sub_1D726490C();

  return v3;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  SharingTagTextActivityItemSource.activityViewController(_:itemForActivityType:)(type, v17);

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

  v4 = sub_1D726203C();

  return v4;
}

- (_TtC8NewsFeed32SharingTagTextActivityItemSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end