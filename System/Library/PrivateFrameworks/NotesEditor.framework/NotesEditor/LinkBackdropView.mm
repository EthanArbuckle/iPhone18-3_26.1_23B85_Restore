@interface LinkBackdropView
- (_TtC11NotesEditor16LinkBackdropView)initWithCoder:(id)coder;
- (_TtC11NotesEditor16LinkBackdropView)initWithFrame:(CGRect)frame;
@end

@implementation LinkBackdropView

- (_TtC11NotesEditor16LinkBackdropView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for LinkBackdropView();
  height = [(LinkBackdropView *)&v9 initWithFrame:x, y, width, height];
  [(LinkBackdropView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  return height;
}

- (_TtC11NotesEditor16LinkBackdropView)initWithCoder:(id)coder
{
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

@end