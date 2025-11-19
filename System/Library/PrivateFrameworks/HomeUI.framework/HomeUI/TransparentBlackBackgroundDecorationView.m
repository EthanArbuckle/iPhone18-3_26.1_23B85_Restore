@interface TransparentBlackBackgroundDecorationView
- (_TtC6HomeUI40TransparentBlackBackgroundDecorationView)initWithCoder:(id)a3;
- (_TtC6HomeUI40TransparentBlackBackgroundDecorationView)initWithFrame:(CGRect)a3;
@end

@implementation TransparentBlackBackgroundDecorationView

- (_TtC6HomeUI40TransparentBlackBackgroundDecorationView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for TransparentBlackBackgroundDecorationView();
  v7 = [(SolidColorSectionBackgroundDecorationView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_allocWithZone(MEMORY[0x277D75348]);
  v9 = v7;
  v10 = [v8 initWithWhite:0.0 alpha:0.5];
  [(TransparentBlackBackgroundDecorationView *)v9 setBackgroundColor:v10];

  return v9;
}

- (_TtC6HomeUI40TransparentBlackBackgroundDecorationView)initWithCoder:(id)a3
{
  result = sub_20D568A58();
  __break(1u);
  return result;
}

@end