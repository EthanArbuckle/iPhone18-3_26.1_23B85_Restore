@interface CircularScene
- (_TtC11EmojiPoster13CircularScene)init;
- (void)didMoveToView:(id)view;
@end

@implementation CircularScene

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_249FE8BB4();
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for CircularScene();
  [(SKScene *)&v6 didMoveToView:viewCopy];
}

- (_TtC11EmojiPoster13CircularScene)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end