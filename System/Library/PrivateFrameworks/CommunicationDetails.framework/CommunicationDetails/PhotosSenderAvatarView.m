@interface PhotosSenderAvatarView
- (CGRect)clippingRect;
- (NSCopying)userData;
- (_TtC20CommunicationDetails22PhotosSenderAvatarView)initWithCoder:(id)a3;
- (_TtC20CommunicationDetails22PhotosSenderAvatarView)initWithFrame:(CGRect)a3;
- (unint64_t)decorationOptions;
- (void)layoutSubviews;
- (void)setClippingRect:(CGRect)a3;
- (void)setDecorationOptions:(unint64_t)a3;
- (void)setUserData:(id)a3;
@end

@implementation PhotosSenderAvatarView

- (_TtC20CommunicationDetails22PhotosSenderAvatarView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = PhotosSenderAvatarView.init(frame:)(x, y, width, height);

  return v7;
}

- (_TtC20CommunicationDetails22PhotosSenderAvatarView)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_userData) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_decorationOptions) = 0;
  v4 = (self + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_clippingRect);
  v5 = *(MEMORY[0x1E695F040] + 16);
  *v4 = *MEMORY[0x1E695F040];
  v4[1] = v5;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSCopying)userData
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_userData;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  swift_unknownObjectRetain();

  return v4;
}

- (void)setUserData:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_userData;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain_n();
  v6 = self;
  swift_unknownObjectRelease();
  PhotosSenderAvatarView.userData.didset();

  swift_unknownObjectRelease();
}

- (unint64_t)decorationOptions
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_decorationOptions;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);

  return v4;
}

- (void)setDecorationOptions:(unint64_t)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_decorationOptions;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (CGRect)clippingRect
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = (self + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_clippingRect);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)setClippingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (self + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_clippingRect);
  swift_beginAccess();
  *v8 = x;
  v8[1] = y;
  v8[2] = width;
  v8[3] = height;
}

- (void)layoutSubviews
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  PhotosSenderAvatarView.layoutSubviews()();
}

@end