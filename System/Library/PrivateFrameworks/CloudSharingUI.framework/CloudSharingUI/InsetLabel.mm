@interface InsetLabel
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC14CloudSharingUI10InsetLabel)initWithCoder:(id)coder;
- (_TtC14CloudSharingUI10InsetLabel)initWithFrame:(CGRect)frame;
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation InsetLabel

- (void)drawTextInRect:(CGRect)rect
{
  v4 = UIEdgeInsetsInsetRect(rect.origin.x);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for InsetLabel();
  selfCopy = self;
  [(InsetLabel *)&v12 drawTextInRect:v4, v6, v8, v10];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = fits.width + -40.0;
  v4 = fits.height + -20.0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for InsetLabel();
  [(InsetLabel *)&v9 sizeThatFits:v3, v4];
  v6 = v5 + 40.0;
  v8 = v7 + 20.0;
  result.height = v8;
  result.width = v6;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for InsetLabel();
  [(InsetLabel *)&v6 intrinsicContentSize];
  v3 = v2 + 40.0;
  v5 = v4 + 20.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (_TtC14CloudSharingUI10InsetLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = (self + OBJC_IVAR____TtC14CloudSharingUI10InsetLabel_insets);
  *v7 = xmmword_243B729A0;
  v7[1] = xmmword_243B729A0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for InsetLabel();
  return [(InsetLabel *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC14CloudSharingUI10InsetLabel)initWithCoder:(id)coder
{
  v4 = (self + OBJC_IVAR____TtC14CloudSharingUI10InsetLabel_insets);
  *v4 = xmmword_243B729A0;
  v4[1] = xmmword_243B729A0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for InsetLabel();
  coderCopy = coder;
  v6 = [(InsetLabel *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end