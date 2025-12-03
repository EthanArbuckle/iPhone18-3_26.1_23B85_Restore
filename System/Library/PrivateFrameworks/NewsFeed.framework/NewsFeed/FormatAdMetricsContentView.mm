@interface FormatAdMetricsContentView
- (_TtC8NewsFeed26FormatAdMetricsContentView)initWithCoder:(id)coder;
- (_TtC8NewsFeed26FormatAdMetricsContentView)initWithFrame:(CGRect)frame;
@end

@implementation FormatAdMetricsContentView

- (_TtC8NewsFeed26FormatAdMetricsContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed26FormatAdMetricsContentView_privacyMarkerPosition) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(FormatAdMetricsContentView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC8NewsFeed26FormatAdMetricsContentView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed26FormatAdMetricsContentView_privacyMarkerPosition) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(FormatAdMetricsContentView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end