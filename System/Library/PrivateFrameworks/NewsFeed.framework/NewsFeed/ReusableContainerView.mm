@interface ReusableContainerView
- (_TtC8NewsFeed21ReusableContainerView)initWithCoder:(id)coder;
- (_TtC8NewsFeed21ReusableContainerView)initWithFrame:(CGRect)frame;
@end

@implementation ReusableContainerView

- (_TtC8NewsFeed21ReusableContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8NewsFeed21ReusableContainerView_onReuse;
  sub_1D5BFDBB4();
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(v10) init];
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(ReusableContainerView *)&v12 initWithFrame:x, y, width, height];
}

- (_TtC8NewsFeed21ReusableContainerView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC8NewsFeed21ReusableContainerView_onReuse;
  sub_1D5BFDBB4();
  v8 = objc_allocWithZone(v7);
  coderCopy = coder;
  *(&self->super.super.super.isa + v6) = [v8 init];
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(ReusableContainerView *)&v12 initWithCoder:coderCopy];

  if (v10)
  {
  }

  return v10;
}

@end