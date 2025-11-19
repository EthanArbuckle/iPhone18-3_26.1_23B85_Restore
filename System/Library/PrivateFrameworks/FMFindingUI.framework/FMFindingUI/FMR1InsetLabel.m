@interface FMR1InsetLabel
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC11FMFindingUI14FMR1InsetLabel)initWithCoder:(id)a3;
- (_TtC11FMFindingUI14FMR1InsetLabel)initWithFrame:(CGRect)a3;
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation FMR1InsetLabel

- (void)drawTextInRect:(CGRect)a3
{
  v4 = sub_24A61FC88(a3.origin.x);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for FMR1InsetLabel();
  v11 = self;
  [(FMR1InsetLabel *)&v12 drawTextInRect:v4, v6, v8, v10];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMR1InsetLabel();
  [(FMR1InsetLabel *)&v9 sizeThatFits:width, height];
  v6 = v5 + 8.0;
  v8 = v7 + 0.0;
  result.height = v8;
  result.width = v6;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMR1InsetLabel();
  [(FMR1InsetLabel *)&v6 intrinsicContentSize];
  v3 = v2 + 8.0;
  v5 = v4 + 0.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (_TtC11FMFindingUI14FMR1InsetLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super + OBJC_IVAR____TtC11FMFindingUI14FMR1InsetLabel_style) = xmmword_24A63C220;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMR1InsetLabel();
  return [(FMR1InsetLabel *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11FMFindingUI14FMR1InsetLabel)initWithCoder:(id)a3
{
  *(&self->super.super.super + OBJC_IVAR____TtC11FMFindingUI14FMR1InsetLabel_style) = xmmword_24A63C220;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMR1InsetLabel();
  v4 = a3;
  v5 = [(FMR1InsetLabel *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end