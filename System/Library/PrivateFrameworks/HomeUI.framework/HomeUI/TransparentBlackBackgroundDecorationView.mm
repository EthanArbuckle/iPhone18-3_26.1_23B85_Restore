@interface TransparentBlackBackgroundDecorationView
- (_TtC6HomeUI40TransparentBlackBackgroundDecorationView)initWithCoder:(id)coder;
- (_TtC6HomeUI40TransparentBlackBackgroundDecorationView)initWithFrame:(CGRect)frame;
@end

@implementation TransparentBlackBackgroundDecorationView

- (_TtC6HomeUI40TransparentBlackBackgroundDecorationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for TransparentBlackBackgroundDecorationView();
  height = [(SolidColorSectionBackgroundDecorationView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_allocWithZone(MEMORY[0x277D75348]);
  v9 = height;
  v10 = [v8 initWithWhite:0.0 alpha:0.5];
  [(TransparentBlackBackgroundDecorationView *)v9 setBackgroundColor:v10];

  return v9;
}

- (_TtC6HomeUI40TransparentBlackBackgroundDecorationView)initWithCoder:(id)coder
{
  result = sub_20D568A58();
  __break(1u);
  return result;
}

@end