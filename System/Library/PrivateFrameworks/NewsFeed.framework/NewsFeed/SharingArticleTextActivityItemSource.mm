@interface SharingArticleTextActivityItemSource
- (_TtC8NewsFeed36SharingArticleTextActivityItemSource)init;
- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation SharingArticleTextActivityItemSource

- (id)activityViewControllerPlaceholderItem:(id)a3
{

  v3 = sub_1D726490C();

  return v3;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  SharingArticleTextActivityItemSource.activityViewController(_:itemForActivityType:)(a4, v17);

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

- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D607A9A8(a4);

  v9 = sub_1D726203C();

  return v9;
}

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s8NewsFeed36SharingArticleTextActivityItemSourceC22activityViewController_010subjectForF4TypeSSSo010UIActivityjK0C_So0oN0aSgtF_0();

  v9 = sub_1D726203C();

  return v9;
}

- (_TtC8NewsFeed36SharingArticleTextActivityItemSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end