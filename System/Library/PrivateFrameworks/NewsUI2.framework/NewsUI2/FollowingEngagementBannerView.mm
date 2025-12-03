@interface FollowingEngagementBannerView
- (_TtC7NewsUI229FollowingEngagementBannerView)initWithCoder:(id)coder;
- (_TtC7NewsUI229FollowingEngagementBannerView)initWithFrame:(CGRect)frame;
@end

@implementation FollowingEngagementBannerView

- (_TtC7NewsUI229FollowingEngagementBannerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI229FollowingEngagementBannerView_engagementView) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(FollowingEngagementBannerView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC7NewsUI229FollowingEngagementBannerView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI229FollowingEngagementBannerView_engagementView) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(FollowingEngagementBannerView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end