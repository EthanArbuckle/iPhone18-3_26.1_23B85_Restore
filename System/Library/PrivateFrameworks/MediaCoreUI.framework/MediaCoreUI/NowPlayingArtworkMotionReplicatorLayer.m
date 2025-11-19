@interface NowPlayingArtworkMotionReplicatorLayer
- (_TtC11MediaCoreUI38NowPlayingArtworkMotionReplicatorLayer)init;
- (_TtC11MediaCoreUI38NowPlayingArtworkMotionReplicatorLayer)initWithCoder:(id)a3;
- (_TtC11MediaCoreUI38NowPlayingArtworkMotionReplicatorLayer)initWithLayer:(id)a3;
- (void)layoutSublayers;
@end

@implementation NowPlayingArtworkMotionReplicatorLayer

- (_TtC11MediaCoreUI38NowPlayingArtworkMotionReplicatorLayer)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMotionReplicatorLayer_originalContent) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for NowPlayingArtworkMotionReplicatorLayer();
  v2 = [(CAReplicatorLayer *)&v4 init];
  [(CAReplicatorLayer *)v2 setInstanceCount:2];
  return v2;
}

- (_TtC11MediaCoreUI38NowPlayingArtworkMotionReplicatorLayer)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMotionReplicatorLayer_originalContent) = 0;
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

- (void)layoutSublayers
{
  v2 = self;
  sub_1C5AFB1B4();
}

- (_TtC11MediaCoreUI38NowPlayingArtworkMotionReplicatorLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end