@interface PhotosGridQuickLookDataSource
- (_TtC20CommunicationDetails29PhotosGridQuickLookDataSource)init;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller;
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

- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  numberOfItemsInSection_ = [*(&self->super.isa + OBJC_IVAR____TtC20CommunicationDetails29PhotosGridQuickLookDataSource_assetsDataSource) numberOfItemsInSection_];

  return numberOfItemsInSection_;
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v7 = PhotosGridQuickLookDataSource.item(at:)(index);

  return v7;
}

@end