@interface PuzzleEmbedHapticFeedbackMessageHandler
- (_TtC7NewsUI239PuzzleEmbedHapticFeedbackMessageHandler)init;
- (void)didReceiveMessage:(id)message securityOrigin:(id)origin;
@end

@implementation PuzzleEmbedHapticFeedbackMessageHandler

- (_TtC7NewsUI239PuzzleEmbedHapticFeedbackMessageHandler)init
{
  *&self->delegate[OBJC_IVAR____TtC7NewsUI239PuzzleEmbedHapticFeedbackMessageHandler_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for PuzzleEmbedHapticFeedbackMessageHandler();
  return [(PuzzleEmbedHapticFeedbackMessageHandler *)&v4 init];
}

- (void)didReceiveMessage:(id)message securityOrigin:(id)origin
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_218C86C44(message);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end