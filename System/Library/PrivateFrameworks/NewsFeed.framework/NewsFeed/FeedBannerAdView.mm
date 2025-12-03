@interface FeedBannerAdView
- (_TtC8NewsFeed16FeedBannerAdView)initWithCoder:(id)coder;
- (_TtC8NewsFeed16FeedBannerAdView)initWithFrame:(CGRect)frame;
@end

@implementation FeedBannerAdView

- (_TtC8NewsFeed16FeedBannerAdView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView);
  *v9 = 0;
  v9[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(FeedBannerAdView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC8NewsFeed16FeedBannerAdView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView);
  *v6 = 0;
  v6[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(FeedBannerAdView *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end