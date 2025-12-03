@interface CKGlassPlatterView
- (_TtC7ChatKit18CKGlassPlatterView)initWithCoder:(id)coder;
- (_TtC7ChatKit18CKGlassPlatterView)initWithFrame:(CGRect)frame;
@end

@implementation CKGlassPlatterView

- (_TtC7ChatKit18CKGlassPlatterView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CKGlassPlatterView();
  height = [(CKGlassPlatterView *)&v9 initWithFrame:x, y, width, height];
  [(UIView *)height ck_applyGlassBackground];
  return height;
}

- (_TtC7ChatKit18CKGlassPlatterView)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for CKGlassPlatterView();
  coderCopy = coder;
  v5 = [(CKGlassPlatterView *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    [(UIView *)v7 ck_applyGlassBackground:v9.receiver];
  }

  return v6;
}

@end