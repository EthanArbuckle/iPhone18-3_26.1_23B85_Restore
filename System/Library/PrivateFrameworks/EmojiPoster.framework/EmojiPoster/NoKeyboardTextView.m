@interface NoKeyboardTextView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (_TtC11EmojiPoster18NoKeyboardTextView)initWithCoder:(id)a3;
- (_TtC11EmojiPoster18NoKeyboardTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (void)buildMenuWithBuilder:(id)a3;
@end

@implementation NoKeyboardTextView

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    swift_unknownObjectRetain();
    sub_24A021948();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  if (sub_24A021508() & 1) != 0 || (sub_24A021508())
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24A021508();
  }

  sub_249FF7B54(v6);
  return v4 & 1;
}

- (void)buildMenuWithBuilder:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NoKeyboardTextView();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(NoKeyboardTextView *)&v5 buildMenuWithBuilder:a3];
  [a3 removeMenuForIdentifier_];
  swift_unknownObjectRelease();
}

- (_TtC11EmojiPoster18NoKeyboardTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for NoKeyboardTextView();
  return [(NoKeyboardTextView *)&v10 initWithFrame:a4 textContainer:x, y, width, height];
}

- (_TtC11EmojiPoster18NoKeyboardTextView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NoKeyboardTextView();
  v4 = a3;
  v5 = [(NoKeyboardTextView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end