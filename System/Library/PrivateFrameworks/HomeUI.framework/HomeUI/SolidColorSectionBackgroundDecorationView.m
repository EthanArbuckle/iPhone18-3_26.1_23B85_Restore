@interface SolidColorSectionBackgroundDecorationView
- (_TtC6HomeUI41SolidColorSectionBackgroundDecorationView)initWithCoder:(id)a3;
- (_TtC6HomeUI41SolidColorSectionBackgroundDecorationView)initWithFrame:(CGRect)a3;
@end

@implementation SolidColorSectionBackgroundDecorationView

- (_TtC6HomeUI41SolidColorSectionBackgroundDecorationView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for SolidColorSectionBackgroundDecorationView();
  v7 = [(SolidColorSectionBackgroundDecorationView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 blackColor];
  [(SolidColorSectionBackgroundDecorationView *)v9 setBackgroundColor:v10];

  return v9;
}

- (_TtC6HomeUI41SolidColorSectionBackgroundDecorationView)initWithCoder:(id)a3
{
  result = sub_20D568A58();
  __break(1u);
  return result;
}

@end