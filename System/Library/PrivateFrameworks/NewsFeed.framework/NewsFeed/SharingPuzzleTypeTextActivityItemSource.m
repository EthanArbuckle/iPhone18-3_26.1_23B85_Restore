@interface SharingPuzzleTypeTextActivityItemSource
- (_TtC8NewsFeed39SharingPuzzleTypeTextActivityItemSource)init;
- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation SharingPuzzleTypeTextActivityItemSource

- (_TtC8NewsFeed39SharingPuzzleTypeTextActivityItemSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = self;
  _s8NewsFeed39SharingPuzzleTypeTextActivityItemSourceC22activityViewController_010subjectForgE0SSSo010UIActivitykL0C_So0oE0aSgtF_0();

  v4 = sub_1D726490C();

  return v4;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  SharingPuzzleTypeTextActivityItemSource.activityViewController(_:itemForActivityType:)(a4, v17);

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
  v4 = self;
  _s8NewsFeed39SharingPuzzleTypeTextActivityItemSourceC22activityViewController_010subjectForgE0SSSo010UIActivitykL0C_So0oE0aSgtF_0();

  v5 = sub_1D726203C();

  return v5;
}

@end