@interface BrowseTileContentViewImageTextAccessory
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17139BrowseTileContentViewImageTextAccessory)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation BrowseTileContentViewImageTextAccessory

- (_TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17139BrowseTileContentViewImageTextAccessory)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17139BrowseTileContentViewImageTextAccessory____lazy_storage___categoryView) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1BA1CA074();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1BA1CA42C(sub_1BA1C9970, width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end