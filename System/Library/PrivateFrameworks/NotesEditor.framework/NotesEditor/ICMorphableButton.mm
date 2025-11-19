@interface ICMorphableButton
- (_TtC11NotesEditor17ICMorphableButton)initWithCoder:(id)a3;
- (_TtC11NotesEditor17ICMorphableButton)initWithFrame:(CGRect)a3;
@end

@implementation ICMorphableButton

- (_TtC11NotesEditor17ICMorphableButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor17ICMorphableButton_ic_morphContainer) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ICMorphableButton();
  return [(ICMorphableButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11NotesEditor17ICMorphableButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor17ICMorphableButton_ic_morphContainer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ICMorphableButton();
  v4 = a3;
  v5 = [(ICMorphableButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end