@interface SharingArticleImageActivityItemSource
- (_TtC8NewsFeed37SharingArticleImageActivityItemSource)init;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation SharingArticleImageActivityItemSource

- (id)activityViewControllerPlaceholderItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  SharingArticleImageActivityItemSource.activityViewControllerPlaceholderItem(_:)(v8);

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
  SharingArticleImageActivityItemSource.activityViewController(_:itemForActivityType:)(type, v17);

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

- (_TtC8NewsFeed37SharingArticleImageActivityItemSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end