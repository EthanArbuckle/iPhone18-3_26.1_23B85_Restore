@interface BrandBar
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC12NewsArticles8BrandBar)initWithFrame:(CGRect)frame;
- (void)contentSizeCategoryDidChange;
- (void)layoutSubviews;
@end

@implementation BrandBar

- (void)contentSizeCategoryDidChange
{
  __swift_project_boxed_opaque_existential_1((&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles8BrandBar_renderer), *(&self->super._cachedTraitCollection + OBJC_IVAR____TtC12NewsArticles8BrandBar_renderer));
  selfCopy = self;
  sub_1D7C75640(selfCopy);
  [(BrandBar *)selfCopy setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1D7C75C44(selfCopy, width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(BrandBar *)&v3 layoutSubviews];
  sub_1D7C757C0(v2);
}

- (_TtC12NewsArticles8BrandBar)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end