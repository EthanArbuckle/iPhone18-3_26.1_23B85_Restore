@interface DebugGroupLayoutViewFactory
- (_TtC8NewsFeed27DebugGroupLayoutViewFactory)init;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
@end

@implementation DebugGroupLayoutViewFactory

- (_TtC8NewsFeed27DebugGroupLayoutViewFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D7070A6C();

  swift_unknownObjectRelease();
  sub_1D5B5A498(0, &qword_1EC899B10);
  v7 = sub_1D726265C();

  return v7;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  interactionCopy = interaction;
  itemCopy = item;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_1D7070C28(interactionCopy);

  swift_unknownObjectRelease();

  return v10;
}

@end