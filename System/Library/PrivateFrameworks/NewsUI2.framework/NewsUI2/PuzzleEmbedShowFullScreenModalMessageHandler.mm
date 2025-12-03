@interface PuzzleEmbedShowFullScreenModalMessageHandler
- (_TtC7NewsUI244PuzzleEmbedShowFullScreenModalMessageHandler)init;
- (void)didReceiveMessage:(id)message securityOrigin:(id)origin;
@end

@implementation PuzzleEmbedShowFullScreenModalMessageHandler

- (_TtC7NewsUI244PuzzleEmbedShowFullScreenModalMessageHandler)init
{
  *&self->delegate[OBJC_IVAR____TtC7NewsUI244PuzzleEmbedShowFullScreenModalMessageHandler_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for PuzzleEmbedShowFullScreenModalMessageHandler();
  return [(PuzzleEmbedShowFullScreenModalMessageHandler *)&v4 init];
}

- (void)didReceiveMessage:(id)message securityOrigin:(id)origin
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_219A10024(message);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end