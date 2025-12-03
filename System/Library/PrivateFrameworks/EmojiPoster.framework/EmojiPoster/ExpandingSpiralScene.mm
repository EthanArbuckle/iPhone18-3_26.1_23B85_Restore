@interface ExpandingSpiralScene
- (_TtC11EmojiPoster20ExpandingSpiralScene)init;
- (void)didMoveToView:(id)view;
@end

@implementation ExpandingSpiralScene

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_249FF8628();
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for ExpandingSpiralScene();
  [(SKScene *)&v6 didMoveToView:viewCopy];
}

- (_TtC11EmojiPoster20ExpandingSpiralScene)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end