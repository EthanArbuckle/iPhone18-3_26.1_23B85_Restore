@interface ICAudioAttachmentPlaybackAdaptor
- (_TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor)init;
- (void)playPauseToggled:(id)a3;
- (void)timeChanged:(id)a3;
@end

@implementation ICAudioAttachmentPlaybackAdaptor

- (void)timeChanged:(id)a3
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  v8 = self;
  sub_2153C5718();

  (*(v5 + 8))(v7, v4);
}

- (void)playPauseToggled:(id)a3
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  v8 = self;
  sub_2153C5B00();

  (*(v5 + 8))(v7, v4);
}

- (_TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end