@interface PuzzleProgressMessageHandler
- (_TtC8NewsFeed28PuzzleProgressMessageHandler)init;
- (void)didReceiveMessage:(id)message securityOrigin:(id)origin;
@end

@implementation PuzzleProgressMessageHandler

- (_TtC8NewsFeed28PuzzleProgressMessageHandler)init
{
  ObjectType = swift_getObjectType();
  *&self->delegate[OBJC_IVAR____TtC8NewsFeed28PuzzleProgressMessageHandler_delegate] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(PuzzleProgressMessageHandler *)&v5 init];
}

- (void)didReceiveMessage:(id)message securityOrigin:(id)origin
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D5F151B4(message);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end