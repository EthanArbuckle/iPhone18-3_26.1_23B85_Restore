@interface BadgedLabel
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC16CommunicationsUI11BadgedLabel)initWithCoder:(id)coder;
- (_TtC16CommunicationsUI11BadgedLabel)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation BadgedLabel

- (_TtC16CommunicationsUI11BadgedLabel)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge) = 0;
  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1C2DF5FB0();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1C2DF63A4(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (_TtC16CommunicationsUI11BadgedLabel)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end