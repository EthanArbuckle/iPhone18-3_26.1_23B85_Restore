@interface MicaPlayer
- (_TtC14ContinuitySing10MicaPlayer)init;
- (id)copyWithZone:(void *)zone;
- (void)dealloc;
@end

@implementation MicaPlayer

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer);
  selfCopy = self;
  if (v4)
  {
    [v4 invalidate];
    v6 = *(&self->super.isa + v3);
    *(&self->super.isa + v3) = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for MicaPlayer();
  [(MicaPlayer *)&v7 dealloc];
}

- (id)copyWithZone:(void *)zone
{
  v4 = sub_244257318();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(&self->super.isa + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);
  selfCopy = self;
  sub_244250008();
  v12 = v11;
  v13 = sub_244254D00(*(&selfCopy->super.isa + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_publishedObjects));
  (*(v5 + 16))(v8, selfCopy + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_url, v4);
  v14 = objc_allocWithZone(type metadata accessor for MicaPlayer());
  v15 = sub_244254AC8(v8, v12, v13);

  return v15;
}

- (_TtC14ContinuitySing10MicaPlayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end