@interface GapView
- (_TtC8NewsFeed7GapView)initWithCoder:(id)coder;
- (_TtC8NewsFeed7GapView)initWithFrame:(CGRect)frame;
@end

@implementation GapView

- (_TtC8NewsFeed7GapView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8NewsFeed7GapView_activityIndicatorView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(GapView *)&v12 initWithFrame:x, y, width, height];
  [(GapView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed7GapView_activityIndicatorView)];
  return height;
}

- (_TtC8NewsFeed7GapView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC8NewsFeed7GapView_activityIndicatorView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

@end