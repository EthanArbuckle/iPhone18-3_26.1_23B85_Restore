@interface DynamicLabel
- (UIFont)font;
- (_TtC5JetUI12DynamicLabel)initWithCoder:(id)a3;
- (_TtC5JetUI12DynamicLabel)initWithFrame:(CGRect)a3;
- (void)setFont:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DynamicLabel

- (_TtC5JetUI12DynamicLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC5JetUI12DynamicLabel_customTextStyle;
  v9 = type metadata accessor for DynamicLabel();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  v10 = [(DynamicLabel *)&v12 initWithFrame:x, y, width, height];
  [(DynamicLabel *)v10 setAdjustsFontForContentSizeCategory:1];
  return v10;
}

- (_TtC5JetUI12DynamicLabel)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC5JetUI12DynamicLabel_customTextStyle;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_1BAD9D8B8();
  __break(1u);
  return result;
}

- (UIFont)font
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DynamicLabel();
  v2 = [(DynamicLabel *)&v4 font];

  return v2;
}

- (void)setFont:(id)a3
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.isa) + 0x60);
  v5 = a3;
  v6 = self;
  v4(v8);
  v7.receiver = v6;
  v7.super_class = type metadata accessor for DynamicLabel();
  [(DynamicLabel *)&v7 setFont:v5];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BAD32960(a3);
}

@end