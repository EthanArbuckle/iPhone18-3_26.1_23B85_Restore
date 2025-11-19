@interface NowPlayingArtworkMirrorReplicatorLayer
- (_TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer)init;
- (_TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer)initWithCoder:(id)a3;
- (_TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer)initWithLayer:(id)a3;
- (void)layoutSublayers;
@end

@implementation NowPlayingArtworkMirrorReplicatorLayer

- (void)layoutSublayers
{
  v2 = self;
  sub_1C5BB9D40();
}

- (_TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_image) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_imageLayer) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for NowPlayingArtworkMirrorReplicatorLayer();
  return [(CAReplicatorLayer *)&v3 init];
}

- (_TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_image) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_imageLayer) = 0;
  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v4 = sub_1C5BCBDD4();
  v7.receiver = self;
  v7.super_class = type metadata accessor for NowPlayingArtworkMirrorReplicatorLayer();
  v5 = [(NowPlayingArtworkMirrorReplicatorLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

- (_TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_image) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_imageLayer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for NowPlayingArtworkMirrorReplicatorLayer();
  v4 = a3;
  v5 = [(NowPlayingArtworkMirrorReplicatorLayer *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end