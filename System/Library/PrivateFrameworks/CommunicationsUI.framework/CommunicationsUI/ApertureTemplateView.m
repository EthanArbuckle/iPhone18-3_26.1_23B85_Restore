@interface ApertureTemplateView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (_TtC16CommunicationsUI20ApertureTemplateView)init;
- (_TtC16CommunicationsUI20ApertureTemplateView)initWithCoder:(id)a3;
- (_TtC16CommunicationsUI20ApertureTemplateView)initWithFrame:(CGRect)a3;
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
  v6 = [v4 blueColor];
  [(ApertureTemplateView *)v5 setBackgroundColor:v6];

  [(ApertureTemplateView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v5;
}

- (_TtC16CommunicationsUI20ApertureTemplateView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  sub_1C2DD5F08(a4, width, height);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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
  v2 = self;
  sub_1C2DD6334();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_TtC16CommunicationsUI20ApertureTemplateView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end