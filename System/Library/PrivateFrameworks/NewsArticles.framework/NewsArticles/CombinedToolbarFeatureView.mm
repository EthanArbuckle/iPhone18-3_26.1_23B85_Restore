@interface CombinedToolbarFeatureView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC12NewsArticles26CombinedToolbarFeatureView)initWithCoder:(id)coder;
- (_TtC12NewsArticles26CombinedToolbarFeatureView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CombinedToolbarFeatureView

- (_TtC12NewsArticles26CombinedToolbarFeatureView)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_coverModel);
  *v3 = 0u;
  v3[1] = 0u;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_issueCoverButton) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_newsPlusLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView____lazy_storage___animator) = 0;
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D7BA9650();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_coverModel))
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_issueCoverButton);
    if (v3)
    {
      selfCopy = self;
      v5 = v3;
      [v5 frame];
      Height = CGRectGetHeight(v10);

      v7 = Height + 38.0;
    }

    else
    {
      v7 = 38.0;
    }
  }

  else
  {
    v7 = 38.0;
  }

  v8 = 72.0;
  result.height = v7;
  result.width = v8;
  return result;
}

- (_TtC12NewsArticles26CombinedToolbarFeatureView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end