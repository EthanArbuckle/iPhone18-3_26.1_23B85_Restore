@interface AttributionViewWrapperView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC12NewsArticlesP33_AB2C07DEED72E6BCD424DDADA40C3A3026AttributionViewWrapperView)initWithCoder:(id)coder;
- (_TtC12NewsArticlesP33_AB2C07DEED72E6BCD424DDADA40C3A3026AttributionViewWrapperView)initWithFrame:(CGRect)frame;
- (_TtC12NewsArticlesP33_D28D6015DE731BE624B02DB54B95AB0426AttributionViewWrapperView)initWithCoder:(id)coder;
- (_TtC12NewsArticlesP33_D28D6015DE731BE624B02DB54B95AB0426AttributionViewWrapperView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
- (void)updateStyle;
@end

@implementation AttributionViewWrapperView

- (_TtC12NewsArticlesP33_AB2C07DEED72E6BCD424DDADA40C3A3026AttributionViewWrapperView)initWithCoder:(id)coder
{
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticlesP33_D28D6015DE731BE624B02DB54B95AB0426AttributionViewWrapperView_attributionView);
  swift_getObjectType();
  selfCopy = self;
  sub_1D7D2F76C();
  [*v6 bounds];
  v9 = v8;

  if (v9 > height)
  {
    v10 = v9;
  }

  else
  {
    v10 = height;
  }

  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D7BB6C20();
}

- (void)traitCollectionDidChange:(id)change
{
  v5 = sub_1D7D2FBCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributionViewWrapperView();
  v14.receiver = self;
  v14.super_class = v10;
  changeCopy = change;
  selfCopy = self;
  [(AttributionViewWrapperView *)&v14 traitCollectionDidChange:changeCopy];
  traitCollection = [(AttributionViewWrapperView *)selfCopy traitCollection];
  sub_1D7B12670(traitCollection, v9);

  swift_getObjectType();
  sub_1D7D2F77C();

  (*(v6 + 8))(v9, v5);
}

- (_TtC12NewsArticlesP33_AB2C07DEED72E6BCD424DDADA40C3A3026AttributionViewWrapperView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12NewsArticlesP33_D28D6015DE731BE624B02DB54B95AB0426AttributionViewWrapperView)initWithCoder:(id)coder
{
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)updateStyle
{
  selfCopy = self;
  sub_1D7BB6D3C();
}

- (_TtC12NewsArticlesP33_D28D6015DE731BE624B02DB54B95AB0426AttributionViewWrapperView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end