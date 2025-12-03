@interface NowPlayingArtworkMirrorReplicatorLayer
- (_TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer)init;
- (_TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer)initWithCoder:(id)coder;
- (_TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer)initWithLayer:(id)layer;
- (void)layoutSublayers;
@end

@implementation NowPlayingArtworkMirrorReplicatorLayer

- (void)layoutSublayers
{
  selfCopy = self;
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

- (_TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer)initWithLayer:(id)layer
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

- (_TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_image) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_imageLayer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for NowPlayingArtworkMirrorReplicatorLayer();
  coderCopy = coder;
  v5 = [(NowPlayingArtworkMirrorReplicatorLayer *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end