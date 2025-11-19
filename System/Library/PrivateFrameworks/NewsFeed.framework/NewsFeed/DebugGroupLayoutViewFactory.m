@interface DebugGroupLayoutViewFactory
- (_TtC8NewsFeed27DebugGroupLayoutViewFactory)init;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
@end

@implementation DebugGroupLayoutViewFactory

- (_TtC8NewsFeed27DebugGroupLayoutViewFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_1D7070A6C();

  swift_unknownObjectRelease();
  sub_1D5B5A498(0, &qword_1EC899B10);
  v7 = sub_1D726265C();

  return v7;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = sub_1D7070C28(v7);

  swift_unknownObjectRelease();

  return v10;
}

@end