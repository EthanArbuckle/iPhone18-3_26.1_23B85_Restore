@interface SmartActionsBannerView
- (CGSize)intrinsicContentSize;
- (_TtC10CallsAppUI22SmartActionsBannerView)initWithCoder:(id)a3;
@end

@implementation SmartActionsBannerView

- (_TtC10CallsAppUI22SmartActionsBannerView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_banner;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E6999338]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_model) = 0;
  result = sub_1CFCA01D8();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_banner) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

@end