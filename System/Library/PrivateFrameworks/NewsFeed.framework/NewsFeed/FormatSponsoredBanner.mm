@interface FormatSponsoredBanner
- (_TtC8NewsFeed21FormatSponsoredBanner)initWithCoder:(id)a3;
- (_TtC8NewsFeed21FormatSponsoredBanner)initWithFrame:(CGRect)a3;
@end

@implementation FormatSponsoredBanner

- (_TtC8NewsFeed21FormatSponsoredBanner)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed21FormatSponsoredBanner_identifier);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed21FormatSponsoredBanner_adIdentifier);
  *v10 = 0;
  v10[1] = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(FormatSponsoredBanner *)&v12 initWithFrame:x, y, width, height];
}

- (_TtC8NewsFeed21FormatSponsoredBanner)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed21FormatSponsoredBanner_identifier);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed21FormatSponsoredBanner_adIdentifier);
  *v7 = 0;
  v7[1] = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v8 = a3;
  v9 = [(FormatSponsoredBanner *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end