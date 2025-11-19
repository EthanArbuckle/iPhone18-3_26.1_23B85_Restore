@interface InsetLabel
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC14CloudSharingUI10InsetLabel)initWithCoder:(id)a3;
- (_TtC14CloudSharingUI10InsetLabel)initWithFrame:(CGRect)a3;
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation InsetLabel

- (void)drawTextInRect:(CGRect)a3
{
  v4 = UIEdgeInsetsInsetRect(a3.origin.x);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for InsetLabel();
  v11 = self;
  [(InsetLabel *)&v12 drawTextInRect:v4, v6, v8, v10];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = a3.width + -40.0;
  v4 = a3.height + -20.0;
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

- (_TtC14CloudSharingUI10InsetLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (self + OBJC_IVAR____TtC14CloudSharingUI10InsetLabel_insets);
  *v7 = xmmword_243B729A0;
  v7[1] = xmmword_243B729A0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for InsetLabel();
  return [(InsetLabel *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC14CloudSharingUI10InsetLabel)initWithCoder:(id)a3
{
  v4 = (self + OBJC_IVAR____TtC14CloudSharingUI10InsetLabel_insets);
  *v4 = xmmword_243B729A0;
  v4[1] = xmmword_243B729A0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for InsetLabel();
  v5 = a3;
  v6 = [(InsetLabel *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end