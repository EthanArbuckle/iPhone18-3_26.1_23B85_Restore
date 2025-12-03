@interface CollectionHeaderWithIconReusableView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18HealthExperienceUI36CollectionHeaderWithIconReusableView)initWithCoder:(id)coder;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
@end

@implementation CollectionHeaderWithIconReusableView

- (_TtC18HealthExperienceUI36CollectionHeaderWithIconReusableView)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC18HealthExperienceUI36CollectionHeaderWithIconReusableView_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI36CollectionHeaderWithIconReusableView____lazy_storage___contentView) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CollectionHeaderWithIconReusableView();
  v2 = v5.receiver;
  [(CollectionHeaderWithIconReusableView *)&v5 layoutSubviews];
  v3 = sub_1BA2E6E38();
  [v2 bounds];
  Width = CGRectGetWidth(v6);
  [v2 bounds];
  [v3 setFrame_];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1BA2E6E38();
  [v6 sizeThatFits_];
  v8 = v7;
  v10 = v9;

  v11 = v10 + 8.0 + 4.0;
  v12 = v8;
  result.height = v11;
  result.width = v12;
  return result;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  [attributesCopy size];
  [(CollectionHeaderWithIconReusableView *)selfCopy sizeThatFits:?];
  [attributesCopy setSize_];

  return attributesCopy;
}

@end