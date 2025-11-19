@interface IDVTrailingAccessoryLabel
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC9CoreIDVUI25IDVTrailingAccessoryLabel)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)registerAccessoryWithView:(id)a3 withSize:(CGSize)a4 for:(id)a5;
- (void)unregisterAccessories;
@end

@implementation IDVTrailingAccessoryLabel

- (_TtC9CoreIDVUI25IDVTrailingAccessoryLabel)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_attributedText) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_trailingMargin) = 0x4043000000000000;
  v4 = (self + OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_contentInsets);
  v5 = *(MEMORY[0x277D768C8] + 16);
  *v4 = *MEMORY[0x277D768C8];
  v4[1] = v5;
  v6 = OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_registeredAccessories;
  *(&self->super.super.super.isa + v6) = sub_2458B8F6C(MEMORY[0x277D84F90]);
  v7 = (&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_maxAccessorySize);
  *v7 = 0;
  v7[1] = 0;
  result = sub_2459115D4();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_2458B6870(1, 0.0, 0.0, width, 1.79769313e308);

  v6 = width;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(IDVTrailingAccessoryLabel *)&v7 layoutSubviews];
  [v2 bounds];
  sub_2458B6870(0, v3, v4, v5, v6);
}

- (void)registerAccessoryWithView:(id)a3 withSize:(CGSize)a4 for:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = sub_245910A04();
  v11 = v10;
  v12 = a3;
  v13 = self;
  sub_2458B5CD0(v12, v9, v11, width, height);
}

- (void)unregisterAccessories
{
  v2 = self;
  sub_2458B5B6C();
}

@end