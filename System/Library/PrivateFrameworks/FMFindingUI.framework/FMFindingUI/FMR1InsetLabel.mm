@interface FMR1InsetLabel
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC11FMFindingUI14FMR1InsetLabel)initWithCoder:(id)coder;
- (_TtC11FMFindingUI14FMR1InsetLabel)initWithFrame:(CGRect)frame;
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation FMR1InsetLabel

- (void)drawTextInRect:(CGRect)rect
{
  v4 = sub_24A61FC88(rect.origin.x);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for FMR1InsetLabel();
  selfCopy = self;
  [(FMR1InsetLabel *)&v12 drawTextInRect:v4, v6, v8, v10];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

- (_TtC11FMFindingUI14FMR1InsetLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super + OBJC_IVAR____TtC11FMFindingUI14FMR1InsetLabel_style) = xmmword_24A63C220;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMR1InsetLabel();
  return [(FMR1InsetLabel *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11FMFindingUI14FMR1InsetLabel)initWithCoder:(id)coder
{
  *(&self->super.super.super + OBJC_IVAR____TtC11FMFindingUI14FMR1InsetLabel_style) = xmmword_24A63C220;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMR1InsetLabel();
  coderCopy = coder;
  v5 = [(FMR1InsetLabel *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end