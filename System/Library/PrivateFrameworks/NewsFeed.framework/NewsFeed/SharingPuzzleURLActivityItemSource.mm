@interface SharingPuzzleURLActivityItemSource
- (_TtC8NewsFeed34SharingPuzzleURLActivityItemSource)init;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerLinkMetadata:(id)a3;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation SharingPuzzleURLActivityItemSource

- (_TtC8NewsFeed34SharingPuzzleURLActivityItemSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v4 = a3;
  v5 = self;
  SharingPuzzleURLActivityItemSource.activityViewControllerPlaceholderItem(_:)(v8);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = sub_1D72646AC();
  __swift_destroy_boxed_opaque_existential_1(v8);

  return v6;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  SharingPuzzleURLActivityItemSource.activityViewController(_:itemForActivityType:)(a4, v17);

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

- (id)activityViewControllerLinkMetadata:(id)a3
{
  if (*(&self->super.isa + OBJC_IVAR____TtC8NewsFeed34SharingPuzzleURLActivityItemSource_linkPresentationSource))
  {
    v3 = self;
    sub_1D725B77C();
    v4 = [v6 linkMetadata];
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end