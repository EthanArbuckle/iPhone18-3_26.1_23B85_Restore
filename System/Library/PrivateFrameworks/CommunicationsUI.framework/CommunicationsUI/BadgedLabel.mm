@interface BadgedLabel
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC16CommunicationsUI11BadgedLabel)initWithCoder:(id)a3;
- (_TtC16CommunicationsUI11BadgedLabel)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation BadgedLabel

- (_TtC16CommunicationsUI11BadgedLabel)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge) = 0;
  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1C2DF5FB0();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1C2DF63A4(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (_TtC16CommunicationsUI11BadgedLabel)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end