@interface EngagementBannerView
- (_TtC8NewsFeed20EngagementBannerView)initWithFrame:(CGRect)a3;
@end

@implementation EngagementBannerView

- (_TtC8NewsFeed20EngagementBannerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed20EngagementBannerView_borderColor) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed20EngagementBannerView_traitChangeRegistration) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed20EngagementBannerView_engagementView) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(EngagementBannerView *)&v10 initWithFrame:x, y, width, height];
}

@end