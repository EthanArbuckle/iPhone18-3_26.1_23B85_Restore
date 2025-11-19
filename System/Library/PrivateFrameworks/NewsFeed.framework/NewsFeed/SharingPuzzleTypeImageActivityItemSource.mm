@interface SharingPuzzleTypeImageActivityItemSource
- (_TtC8NewsFeed40SharingPuzzleTypeImageActivityItemSource)init;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation SharingPuzzleTypeImageActivityItemSource

- (_TtC8NewsFeed40SharingPuzzleTypeImageActivityItemSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  SharingPuzzleTypeImageActivityItemSource.activityViewControllerPlaceholderItem(_:)(v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_1D72646AC();
  __swift_destroy_boxed_opaque_existential_1(v5);

  return v3;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  SharingPuzzleTypeImageActivityItemSource.activityViewController(_:itemForActivityType:)(a4, v17);

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

@end