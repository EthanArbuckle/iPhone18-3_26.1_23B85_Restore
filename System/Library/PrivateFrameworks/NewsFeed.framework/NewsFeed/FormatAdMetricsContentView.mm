@interface FormatAdMetricsContentView
- (_TtC8NewsFeed26FormatAdMetricsContentView)initWithCoder:(id)a3;
- (_TtC8NewsFeed26FormatAdMetricsContentView)initWithFrame:(CGRect)a3;
@end

@implementation FormatAdMetricsContentView

- (_TtC8NewsFeed26FormatAdMetricsContentView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed26FormatAdMetricsContentView_privacyMarkerPosition) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(FormatAdMetricsContentView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC8NewsFeed26FormatAdMetricsContentView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed26FormatAdMetricsContentView_privacyMarkerPosition) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(FormatAdMetricsContentView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end