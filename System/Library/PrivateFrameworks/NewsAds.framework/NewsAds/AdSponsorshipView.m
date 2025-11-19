@interface AdSponsorshipView
- (_TtC7NewsAds17AdSponsorshipView)initWithCoder:(id)a3;
- (_TtC7NewsAds17AdSponsorshipView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AdSponsorshipView

- (_TtC7NewsAds17AdSponsorshipView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsAds17AdSponsorshipView_metricsView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AdSponsorshipView();
  return [(AdSponsorshipView *)&v8 initWithFrame:x, y, width, height];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D7680D74();
}

- (_TtC7NewsAds17AdSponsorshipView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsAds17AdSponsorshipView_metricsView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AdSponsorshipView();
  v4 = a3;
  v5 = [(AdSponsorshipView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end