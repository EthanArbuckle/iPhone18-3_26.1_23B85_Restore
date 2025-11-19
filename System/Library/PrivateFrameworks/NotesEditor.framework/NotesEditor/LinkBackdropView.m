@interface LinkBackdropView
- (_TtC11NotesEditor16LinkBackdropView)initWithCoder:(id)a3;
- (_TtC11NotesEditor16LinkBackdropView)initWithFrame:(CGRect)a3;
@end

@implementation LinkBackdropView

- (_TtC11NotesEditor16LinkBackdropView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for LinkBackdropView();
  v7 = [(LinkBackdropView *)&v9 initWithFrame:x, y, width, height];
  [(LinkBackdropView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v7;
}

- (_TtC11NotesEditor16LinkBackdropView)initWithCoder:(id)a3
{
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

@end