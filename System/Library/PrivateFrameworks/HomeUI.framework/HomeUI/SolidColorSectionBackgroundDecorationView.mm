@interface SolidColorSectionBackgroundDecorationView
- (_TtC6HomeUI41SolidColorSectionBackgroundDecorationView)initWithCoder:(id)coder;
- (_TtC6HomeUI41SolidColorSectionBackgroundDecorationView)initWithFrame:(CGRect)frame;
@end

@implementation SolidColorSectionBackgroundDecorationView

- (_TtC6HomeUI41SolidColorSectionBackgroundDecorationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for SolidColorSectionBackgroundDecorationView();
  height = [(SolidColorSectionBackgroundDecorationView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = height;
  blackColor = [v8 blackColor];
  [(SolidColorSectionBackgroundDecorationView *)v9 setBackgroundColor:blackColor];

  return v9;
}

- (_TtC6HomeUI41SolidColorSectionBackgroundDecorationView)initWithCoder:(id)coder
{
  result = sub_20D568A58();
  __break(1u);
  return result;
}

@end