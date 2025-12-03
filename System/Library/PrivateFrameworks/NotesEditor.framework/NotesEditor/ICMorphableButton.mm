@interface ICMorphableButton
- (_TtC11NotesEditor17ICMorphableButton)initWithCoder:(id)coder;
- (_TtC11NotesEditor17ICMorphableButton)initWithFrame:(CGRect)frame;
@end

@implementation ICMorphableButton

- (_TtC11NotesEditor17ICMorphableButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor17ICMorphableButton_ic_morphContainer) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ICMorphableButton();
  return [(ICMorphableButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11NotesEditor17ICMorphableButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor17ICMorphableButton_ic_morphContainer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ICMorphableButton();
  coderCopy = coder;
  v5 = [(ICMorphableButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end