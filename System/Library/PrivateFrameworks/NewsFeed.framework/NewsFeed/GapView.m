@interface GapView
- (_TtC8NewsFeed7GapView)initWithCoder:(id)a3;
- (_TtC8NewsFeed7GapView)initWithFrame:(CGRect)a3;
@end

@implementation GapView

- (_TtC8NewsFeed7GapView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8NewsFeed7GapView_activityIndicatorView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(GapView *)&v12 initWithFrame:x, y, width, height];
  [(GapView *)v10 addSubview:*(&v10->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed7GapView_activityIndicatorView)];
  return v10;
}

- (_TtC8NewsFeed7GapView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC8NewsFeed7GapView_activityIndicatorView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

@end