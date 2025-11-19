@interface FormatVideoView
+ (Class)layerClass;
- (_TtC8NewsFeed15FormatVideoView)initWithCoder:(id)a3;
- (void)didMoveToWindow;
@end

@implementation FormatVideoView

+ (Class)layerClass
{
  sub_1D6EC2BC8();

  return swift_getObjCClassFromMetadata();
}

- (_TtC8NewsFeed15FormatVideoView)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed15FormatVideoView_identifier);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtC8NewsFeed15FormatVideoView_assets;
  v6 = type metadata accessor for FormatVideoData.Assets(0);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC8NewsFeed15FormatVideoView_displayStateCoordinator;
  type metadata accessor for LayeredMediaViewDisplayStateCoordinator();
  swift_allocObject();
  *(&self->super.super.super.isa + v7) = LayeredMediaViewDisplayStateCoordinator.init()();
  v8 = (self + OBJC_IVAR____TtC8NewsFeed15FormatVideoView_playerProperties);
  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(FormatVideoView *)&v3 didMoveToWindow];
  LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
}

@end