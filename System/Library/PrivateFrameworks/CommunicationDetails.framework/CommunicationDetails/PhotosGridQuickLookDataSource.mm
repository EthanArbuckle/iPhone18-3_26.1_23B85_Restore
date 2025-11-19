@interface PhotosGridQuickLookDataSource
- (_TtC20CommunicationDetails29PhotosGridQuickLookDataSource)init;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3;
@end

@implementation PhotosGridQuickLookDataSource

- (_TtC20CommunicationDetails29PhotosGridQuickLookDataSource)init
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [*(&self->super.isa + OBJC_IVAR____TtC20CommunicationDetails29PhotosGridQuickLookDataSource_assetsDataSource) numberOfItemsInSection_];

  return v4;
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = self;
  v7 = PhotosGridQuickLookDataSource.item(at:)(a4);

  return v7;
}

@end