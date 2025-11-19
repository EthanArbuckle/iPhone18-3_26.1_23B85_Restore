@interface PuzzleProgressMessageHandler
- (_TtC8NewsFeed28PuzzleProgressMessageHandler)init;
- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4;
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

- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = self;
  sub_1D5F151B4(a3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end