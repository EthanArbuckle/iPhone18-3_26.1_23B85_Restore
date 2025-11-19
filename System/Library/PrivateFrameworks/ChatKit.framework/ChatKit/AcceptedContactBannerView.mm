@interface AcceptedContactBannerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC7ChatKit25AcceptedContactBannerView)initWithCoder:(id)a3;
- (_TtC7ChatKit25AcceptedContactBannerView)initWithFrame:(CGRect)a3;
- (_TtC7ChatKit25AcceptedContactBannerView)initWithTitle:(id)a3 subtitle:(id)a4 update:(id)a5 actionButtonHandler:(id)a6 actionButtonMenuItems:(id)a7 xButtonHandler:(id)a8;
- (void)layoutSubviews;
@end

@implementation AcceptedContactBannerView

- (_TtC7ChatKit25AcceptedContactBannerView)initWithTitle:(id)a3 subtitle:(id)a4 update:(id)a5 actionButtonHandler:(id)a6 actionButtonMenuItems:(id)a7 xButtonHandler:(id)a8
{
  v10 = _Block_copy(a6);
  v11 = _Block_copy(a8);
  v12 = sub_190D56F10();
  v14 = v13;
  v15 = sub_190D56F10();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  sub_1908C0318();
  v19 = sub_190D57180();
  v20 = swift_allocObject();
  *(v20 + 16) = v11;
  AcceptedContactBannerView.init(title:subtitle:update:actionButtonHandler:actionButtonMenuItems:xButtonHandler:)(v12, v14, v15, v17, a5, sub_1908C04AC, v18, v19, sub_190841A8C, v20);
  return result;
}

- (_TtC7ChatKit25AcceptedContactBannerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit25AcceptedContactBannerView_banner) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit25AcceptedContactBannerView_banner);
  if (v3)
  {
    [v3 sizeThatFits_];
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1908C0014();
}

- (_TtC7ChatKit25AcceptedContactBannerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end