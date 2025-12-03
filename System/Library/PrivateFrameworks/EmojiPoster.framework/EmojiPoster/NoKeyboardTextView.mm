@interface NoKeyboardTextView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (_TtC11EmojiPoster18NoKeyboardTextView)initWithCoder:(id)coder;
- (_TtC11EmojiPoster18NoKeyboardTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)buildMenuWithBuilder:(id)builder;
@end

@implementation NoKeyboardTextView

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
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

- (void)buildMenuWithBuilder:(id)builder
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NoKeyboardTextView();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(NoKeyboardTextView *)&v5 buildMenuWithBuilder:builder];
  [builder removeMenuForIdentifier_];
  swift_unknownObjectRelease();
}

- (_TtC11EmojiPoster18NoKeyboardTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for NoKeyboardTextView();
  return [(NoKeyboardTextView *)&v10 initWithFrame:container textContainer:x, y, width, height];
}

- (_TtC11EmojiPoster18NoKeyboardTextView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NoKeyboardTextView();
  coderCopy = coder;
  v5 = [(NoKeyboardTextView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end