@interface PhotosGridViewControllerAvatarDecorationDataSource
- (_TtC20CommunicationDetails50PhotosGridViewControllerAvatarDecorationDataSource)init;
- (id)userDataForAsset:(id)a3;
@end

@implementation PhotosGridViewControllerAvatarDecorationDataSource

- (id)userDataForAsset:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v4 = self;
  v5 = PhotosGridViewControllerAvatarDecorationDataSource.userData(for:)();

  swift_unknownObjectRelease();

  return v5;
}

- (_TtC20CommunicationDetails50PhotosGridViewControllerAvatarDecorationDataSource)init
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

@end