@interface ApertureTemplateView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (_TtC16CommunicationsUI20ApertureTemplateView)init;
- (_TtC16CommunicationsUI20ApertureTemplateView)initWithCoder:(id)coder;
- (_TtC16CommunicationsUI20ApertureTemplateView)initWithFrame:(CGRect)frame;
@end

@implementation ApertureTemplateView

- (_TtC16CommunicationsUI20ApertureTemplateView)init
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for ApertureTemplateView();
  v3 = [(ApertureTemplateView *)&v8 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v4 = objc_opt_self();
  v5 = v3;
  blueColor = [v4 blueColor];
  [(ApertureTemplateView *)v5 setBackgroundColor:blueColor];

  [(ApertureTemplateView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v5;
}

- (_TtC16CommunicationsUI20ApertureTemplateView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1C2DD5F08(mode, width, height);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1C2DD615C(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_1C2DD6334();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_TtC16CommunicationsUI20ApertureTemplateView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end