@interface EngagementBannerView
- (_TtC8NewsFeed20EngagementBannerView)initWithFrame:(CGRect)frame;
@end

@implementation EngagementBannerView

- (_TtC8NewsFeed20EngagementBannerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed20EngagementBannerView_borderColor) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed20EngagementBannerView_traitChangeRegistration) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed20EngagementBannerView_engagementView) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(EngagementBannerView *)&v10 initWithFrame:x, y, width, height];
}

@end