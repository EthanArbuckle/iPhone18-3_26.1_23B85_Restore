@interface PuzzleEmbedShowSettingsMessageHandler
- (_TtC7NewsUI237PuzzleEmbedShowSettingsMessageHandler)init;
- (void)didReceiveMessage:(id)message securityOrigin:(id)origin;
@end

@implementation PuzzleEmbedShowSettingsMessageHandler

- (_TtC7NewsUI237PuzzleEmbedShowSettingsMessageHandler)init
{
  *&self->delegate[OBJC_IVAR____TtC7NewsUI237PuzzleEmbedShowSettingsMessageHandler_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for PuzzleEmbedShowSettingsMessageHandler();
  return [(PuzzleEmbedShowSettingsMessageHandler *)&v4 init];
}

- (void)didReceiveMessage:(id)message securityOrigin:(id)origin
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_218AA1128(message);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end