@interface ColorButton
- (_TtC11EmojiPoster11ColorButton)initWithCoder:(id)coder;
- (_TtC11EmojiPoster11ColorButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ColorButton

- (void)layoutSubviews
{
  selfCopy = self;
  sub_249FF47F0();
}

- (_TtC11EmojiPoster11ColorButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ColorButton();
  return [(ColorButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11EmojiPoster11ColorButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ColorButton();
  coderCopy = coder;
  v5 = [(ColorButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end