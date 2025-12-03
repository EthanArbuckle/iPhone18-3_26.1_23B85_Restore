@interface DynamicLabel
- (UIFont)font;
- (_TtC5JetUI12DynamicLabel)initWithCoder:(id)coder;
- (_TtC5JetUI12DynamicLabel)initWithFrame:(CGRect)frame;
- (void)setFont:(id)font;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DynamicLabel

- (_TtC5JetUI12DynamicLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC5JetUI12DynamicLabel_customTextStyle;
  v9 = type metadata accessor for DynamicLabel();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  height = [(DynamicLabel *)&v12 initWithFrame:x, y, width, height];
  [(DynamicLabel *)height setAdjustsFontForContentSizeCategory:1];
  return height;
}

- (_TtC5JetUI12DynamicLabel)initWithCoder:(id)coder
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
  font = [(DynamicLabel *)&v4 font];

  return font;
}

- (void)setFont:(id)font
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.isa) + 0x60);
  fontCopy = font;
  selfCopy = self;
  v4(v8);
  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for DynamicLabel();
  [(DynamicLabel *)&v7 setFont:fontCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1BAD32960(change);
}

@end