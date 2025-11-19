@interface ColorButton
- (_TtC11EmojiPoster11ColorButton)initWithCoder:(id)a3;
- (_TtC11EmojiPoster11ColorButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ColorButton

- (void)layoutSubviews
{
  v2 = self;
  sub_249FF47F0();
}

- (_TtC11EmojiPoster11ColorButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ColorButton();
  return [(ColorButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11EmojiPoster11ColorButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ColorButton();
  v4 = a3;
  v5 = [(ColorButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end