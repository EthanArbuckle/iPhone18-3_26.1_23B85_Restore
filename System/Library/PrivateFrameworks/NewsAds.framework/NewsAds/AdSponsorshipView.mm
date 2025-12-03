@interface AdSponsorshipView
- (_TtC7NewsAds17AdSponsorshipView)initWithCoder:(id)coder;
- (_TtC7NewsAds17AdSponsorshipView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation AdSponsorshipView

- (_TtC7NewsAds17AdSponsorshipView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsAds17AdSponsorshipView_metricsView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AdSponsorshipView();
  return [(AdSponsorshipView *)&v8 initWithFrame:x, y, width, height];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D7680D74();
}

- (_TtC7NewsAds17AdSponsorshipView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsAds17AdSponsorshipView_metricsView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AdSponsorshipView();
  coderCopy = coder;
  v5 = [(AdSponsorshipView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end